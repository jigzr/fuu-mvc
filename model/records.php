<?php 
class records
{
    public function __construct(){
	}

    public function checkTable($table){
        $pdo = (new model())->setDB();
        $row = [];
        try {
            //code...
            $query = $pdo->prepare(
                "SELECT * 
                FROM information_schema.tables
                WHERE TABLE_SCHEMA = ? 
                AND TABLE_NAME = ?
                LIMIT 1;"
            );
            $query->execute([CERP_DBNAME,$table]);
            $row = $query->fetchAll(PDO::FETCH_ASSOC);
            
        } catch (Exception $e) {
            //do logging events
            utilities::logger($e, "records->checkTable");
        } finally {
            $pdo = null;
            return sizeof($row) > 0 ? true : false;
        }
    }

    public function getPrimaryKeyId($table){
        $pdo = (new model())->setDB();
        $row = [];
        try {
            //code...
            $query = $pdo->prepare(
                "SELECT COLUMN_NAME
                FROM INFORMATION_SCHEMA.COLUMNS
                WHERE TABLE_SCHEMA = ?
                  AND TABLE_NAME = ?
                  AND COLUMN_KEY = 'PRI';"
            );
            $query->execute([CERP_DBNAME,$table]);
            $res = $query->fetchAll(PDO::FETCH_ASSOC);
            
        } catch (Exception $e) {
            //do logging events
            utilities::logger($e, "records->getPrimaryKeyId");
        } finally {
            $pdo = null;
            return $res[0]['COLUMN_NAME'];
        }        
    }

	public function add($table,$data){
        $pdo = (new model())->setDB();
        $message = '';
        $table_header = '';
        $table_data = '';

        try {
            $dataArr = json_decode($data, true);
            foreach ($dataArr as $key => $value) {
                $table_header = array_keys($value);
                $table_data = array_values($value);
            }

            $table_header_split = implode(', ', $table_header);
            $table_data_qm_split = implode(',', array_fill(0, count($table_data), '?'));

            $query = $pdo->prepare(
                "INSERT INTO {$table} ( {$table_header_split} ) VALUES ( {$table_data_qm_split} );"
            );
            
            if ($query->execute($table_data)) {
                $message = 'Success';
            } else {
                $message = 'Failed'; 
            }

        } catch (Exception $e) {
            //do logging events
            utilities::logger($e, "records->add");
        } finally {
            $pdo = null;
            return $message;
        }
    }

    public function update($table,$data,$id){
        $pdo = (new model())->setDB();
        $message = '';
        try {
            $table_header = '';
            $table_data = '';

            $dataArr = json_decode($data, true);
            foreach ($dataArr as $key => $value) {
                $table_header = array_keys($value);
                $table_data = array_values($value);
            }

            array_walk($table_header, function(&$value, $key) { $value .= ' = ?'; } );
            $table_header_split = implode(', ', $table_header);

            $query = $pdo->prepare(
                "UPDATE {$table} set {$table_header_split} WHERE id = ?;"
            );
            
            array_push($table_data, $id);

            if ($query->execute($table_data)) {
                 $message = 'Success'; 
            } else {
                 $message = 'Failed'; 
            }

        } catch (Exception $e) {
            //do logging events
            utilities::logger($e, "records->update");
        } finally {
            $pdo = null;
            return $message;
        }
    }

    public function view($table,$data){
        $pdo = (new model())->setDB();
        $res = [];
        try {
            $addedQuery = '';
            if(isset($data['id'])){
                $priamry_key  = $this->getPrimaryKeyId($table);
                $addedQuery = " WHERE {$priamry_key} = {$data['id']}";
                if(isset($data['patient_id'])){
                    $patient_id  = $data['patient_id'];
                    $addedQuery .= " AND PatientID = {$patient_id}";
                }
            }
            if(!isset($data['id']) && isset($data['patient_id'])){
                $patient_id  = $data['patient_id'];
                $addedQuery = " WHERE PatientID = {$patient_id}";
            }
            if($table == "visits" || $table == "waitinglist"){
                if(isset($data['today']) && $data['today'] == 1){
                    $start_date = date("Y-m-d 00:00:00");
                    $end_date = date("Y-m-d 23:59:59");
                    $addedQuery = " WHERE (VisitDate >= '{$start_date}' AND VisitDate <= '{$end_date}')
                    ";
                }
            }
            $sql = "SELECT * from {$table}".$addedQuery;      
            $query = $pdo->prepare($sql);
            if ($query->execute()) {
                $res =  $query->fetchAll(PDO::FETCH_ASSOC);
            }
        } catch (Exception $e) {
            //do logging events
            utilities::logger($e, "records->view");
        } finally {
            $pdo = null;
            return $res;
        }
    }

}
?>