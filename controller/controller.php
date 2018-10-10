<?php
require_once "./controller/autoloader.php";

class controller {

	public function __construct() {

		//load the class mvc classes
		$autoloader = new autoloader();

		//initialize the view class
		$view = new view();
	}

	public function initialize() {
		//do app controlling events here
		if($this->sanitizeRequest()){
			//throw 404 or do nothing
			echo 'cant use get request';
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
}
?>