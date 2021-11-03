<?php
require_once "./controller/autoloader.php";
ini_set('memory_limit','-1');
class controller {

	public function __construct() {

		//load the class mvc classes
		$autoloader = new autoloader();

		//initialize the view class
		//$view = new view();
	}

	public function initialize($type=null) {
		//do app controlling events here
		if($this->_checkPath() || $this->sanitizeRequest()){
			$path = $this->_checkPath()[0];
			if($path == "login") {
				echo $this->validateLogin(@$_POST['username'],@$_POST['password']);
			} else if($path == "auth"){
				echo $this->authenticate();
			} else {
				if ($path == "adds"){	
					echo $this->addRecord(@$_POST['model'],@$_POST['data']);
				} else if ($path == "updates"){	
					echo $this->updateRecord(@$_POST['model'],@$_POST['data'],@$_POST['id']);
				} else if ($path == "views"){	
					echo $this->viewRecord(@$_POST['model'],@$_POST);
				}
			}
		}
	}
	private function validateLogin($user,$pass){
		$pdo = (new model())->setDB();
		$arr = [];
		try{
            $query = $pdo->prepare("SELECT password FROM `users` WHERE username like ?;" );
            $query->execute([$user]);
            while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                    $arr[] = $row;
            }
		} 
		catch(PDOException $e){
            //do logging events
            utilities::logger($e, "userAuth->login");
        }
        finally{
            $pdo = null;
			if((password_verify($pass, @$arr[0]['password']))){
				return json_encode(array("token" => base64_encode($user.":".$pass)));
			} else {
				return json_encode(array("error" => "Unable to authorize!"));;
			}
        }
	}
	//use this to authenticate basic auth or token if present
	private function authenticate(){
		if(isset($_SERVER["PHP_AUTH_USER"]) && isset($_SERVER["PHP_AUTH_PW"])){
			$token = $this->validateLogin($_SERVER["PHP_AUTH_USER"],$_SERVER["PHP_AUTH_PW"]);
		}
		if(isset($_POST['token'])){
			$token = explode(":",base64_decode($_POST['token']));
			$validate = json_decode($this->validateLogin($token[0],$token[1]));
			$token = json_encode($validate);
		}
		$check = json_decode($token);
		if(isset($check->token)) return true; 
		else return false;
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


    /**  
     * Check path of the request url
     *
     * @return return status code if path is correct/wrong
     **/
    private function _checkPath()
    {
        try{
			$arr = array();
			$auth_paths = array("login","auth","add","update","view");
            $path = explode("/",$_SERVER['REQUEST_URI']);
            foreach ($path as $key => $value) {
                (!empty($value) || in_array($value,$auth_paths)) ? array_push($arr, $value) : '';
            }
        }
        catch(Exception $e) {
            //do logging events
            utilities::logger($e, "controller->_checkPath");
        }
        finally{
            return $arr;    
        }
    }	


	/**
	 * Insert a record
	 * 
	 * @return return status code if the record is successfully added or not
	 **/
	private function addRecord($table,$data){
		$model = new records();  
		$result = '';
		try{
			//check if table exist
			if ($model->checkTable($table)){
				$result = $model->add($table,$data);  
			} else {
				$result = "The table does not exist.";
			}               
		} 
		catch(PDOException $e){
            //do logging events
            utilities::logger($e, "controller->addRecord");
        }
        finally{
			return json_encode(array("result" => $result));  
        }
	}

	/**
	 * Update a record
	 * 
	 * @return return status code if the record is successfully added or not
	 **/
	private function updateRecord($table,$data,$id){
		$model = new records();  
		$result = '';
		try{
			//check if table exist
			if ($model->checkTable($table)){
				$result = $model->update($table,$data,$id);  
			} else {
				$result = "The table does not exist.";
			}                 
		} 
		catch(PDOException $e){
            //do logging events
            utilities::logger($e, "controller->updateRecord");
        }
        finally{
			return json_encode(array("result" => $result));   
        }
	}

	/**
	 * View a record/s by default it will fetch all active records if $id has no value
	 * 
	 * @return return status code if the record is successfully added or not
	 **/
	private function viewRecord($table,$data=NULL){
		$model = new records();
		$result = '';
		try {
			//check if table exist
			if ($model->checkTable($table)){
				$result = $model->view($table,$data);  
			} else {
				$result = "The table does not exist.";
			}   
		}
		catch(PDOException $e){
			//do logging events
			utilities::logger($e, "controller->viewRecord");
		}
		finally{
			return json_encode(array("result" => $result));
		}
	}


}
?>