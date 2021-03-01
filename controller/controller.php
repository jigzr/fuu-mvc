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

					} else if ($_GET['q'] == 2) { // insert

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
}
?>