<?php
require_once "./controller/autoloader.php";

class controller {

	public function __construct() {

		//load the class mvc classes
		$autoloader = new autoloader();

		//initialize the view class
		
	}

	public function initialize() {
		//do app controlling events here
		if($this->sanitizeRequest()){
			if(sizeof($_GET) > 0){
				if(isset($_GET['q'])){
					if ($_GET['q'] == 1) { // select
						echo json_encode($this->getMembers());
					} else if ($_GET['q'] == 2) { // insert
						echo $this->loggedMember($_GET['u']);
					} else if ($_GET['q'] == 3) { // update
						$this->addMember($_GET['name'],
											$_GET['address'],
											$_GET['registation_date'],
											$_GET['status'],
											$_GET['contact_number'],
											$_GET['scheme'],
											$_GET['date_start'],
											$_GET['date_end'],	
											$_GET['schedule']	
								);
					} else if ($_GET['q'] == 4) { // update
						if($_GET['t'] == "all") {
							echo json_encode($this->leggedInUsers("20"));
						} else {
							$data = date("Y-m-d");
							echo json_encode($this->leggedInUsers($date));
						}
					} else if ($_GET['q'] == 5) { // update
						$this->updateMember($_GET['id'],
											$_GET['name'],
											$_GET['address'],
											$_GET['registation_date'],
											$_GET['status'],
											$_GET['contact_number'],
											$_GET['scheme'],
											$_GET['date_start'],
											$_GET['date_end'],	
											$_GET['schedule']	
								);
					} else {
						// do nothing
					}
				} else {
					// do nothing
				}
				
			} else {
				$view = new view();
			}
		}
		else{
			echo 'post request only';
		}
	}
	private function addMember($name,
								$address,
								$registration_date,
								$status,
								$contact_number,
								$scheme,
								$date_start,
								$date_end,
								$schedule
								){
		$pdo = (new model())->setDB();
		$message = '';									
		$sql = "INSERT INTO `members` (`id`, `name`, `address`, `registration_date`, `status`, `contact_number`, `scheme`, `date_start`, `date_end`, `schedule`) 
		VALUES (NULL, '{$name}', '{$address}', '{$registration_date}', '{$status}', '{$contact_number}', '{$scheme}', '{$date_start}', '{$date_end}', '{$schedule}');";
		$query = $pdo->prepare($sql);
		$query->execute();
		echo 1;
	}
	private function updateMember($id,
								$name,
								$address,
								$registration_date,
								$status,
								$contact_number,
								$scheme,
								$date_start,
								$date_end,
								$schedule
								){
		$pdo = (new model())->setDB();
		$message = '';									
		$sql = "UPDATE `members` SET `name` = '{$name}',
									 `address` = '{$address}',
									 `registration_date` = '{$registration_date}',
									 `status` = '{$status}',
									 `contact_number` = '{$contact_number}',
									 `scheme` = '{$scheme}',
									 `date_start` = '{$date_start}',
									 `date_end` = '{$date_end}',
									 `schedule` = '{$schedule}'	 
		WHERE `members`.`id` = {$id};";
		$query = $pdo->prepare($sql);
		$query->execute();
		echo 1;
	}

	private function sanitizeRequest($active=true,$type=null){
		if($active){
			if(isset($_GET)){
				return $active;
			}
			else{
				return false;
			}
		}
		else{
			return false;
		}
	}

	private function getMembers(){
		$pdo = (new model())->setDB();
        $message = '';
        try{
            //get name
            $query = $pdo->prepare(
                "SELECT * FROM `members`"
            );
            $query->execute();
            $row = $query->fetchAll(PDO::FETCH_ASSOC);
            if ($query->execute() ) {
                 $message = 'Success'; 
            } else {
                 $message = 'Failed'; 
            }
			return $row;
        }
        catch(PDOException $e){
            //do logging events
			var_dump("error".json_encode($e));
        }
	}

	private function loggedMember($user){
		$pdo = (new model())->setDB();
        $message = '';
        try{
            //get name
            $query = $pdo->prepare(
                "SELECT * FROM `members` WHERE id ={$user};"
            );
            $query->execute([$data[0]]);
            $row = $query->fetchAll(PDO::FETCH_ASSOC);
            if ($query->execute() ) {
                 $message = 'Success'; 
            } else {
                 $message = 'Failed'; 
            }
			if(sizeof($row) > 0){
				$query = $pdo->prepare(
                    "INSERT INTO `biologs` (`id`, `member_id`, `log`) VALUES (NULL, '{$user}', CURRENT_TIMESTAMP);"
                );             
                if ($query->execute() ) {
                     $message = 'Success'; 
                } else {
                     $message = 'Failed'; 
                } 
				return 1;  
			} else return 0;
        }
        catch(PDOException $e){
            //do logging events
			var_dump("error".json_encode($e));
        }
	}

	private function leggedInUsers($date){
		$pdo = (new model())->setDB();
        $message = '';
        try{
            //get name
            $query = $pdo->prepare(
                "SELECT * FROM `biologs` b
				 LEFT JOIN members m on m.id = b.member_id
				 WHERE b.log like '{$date}%';
				"
            );
            $query->execute();
            $row = $query->fetchAll(PDO::FETCH_ASSOC);
            if ($query->execute() ) {
                 $message = 'Success'; 
            } else {
                 $message = 'Failed'; 
            }
			return $row;
        }
        catch(PDOException $e){
            //do logging events
			var_dump("error".json_encode($e));
        }
	}	
}
?>