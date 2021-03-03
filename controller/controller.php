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
            $query->execute([$data[0]]);
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
}
?>