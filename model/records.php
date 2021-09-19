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

	public function add($table,$data){
        $pdo = (new model())->setDB();
        try {
            $columnString = implode(',', array_keys($data));
            $valueString = implode(',', array_fill(0, count($data), '?'));

            $query = $pdo->prepare("INSERT INTO {$table} ({$columnString}) VALUES ({$valueString})");
            if ($query->execute(array_values($data))) {
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
        try {
            $table_header = array();
            $table_data = array();
          
            foreach ($data as $key => $value) {
                // code...
                $table_header[] = $key . " = ?";
                $table_data[] = $value;
            }

            $table_header_split = implode(', ', $table_header);

            $query = $pdo->prepare(
                "UPDATE {$table} set {$table_header_split} 
                 WHERE id = ?;"
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

    public function view($table,$id){
        $pdo = (new model())->setDB();
        $res = [];
        try {
            $addedQuery = '';
            if($id){
                $addedQuery = " WHERE id = {$id}";
            }
            $sql = "SELECT * from {$table}";      
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