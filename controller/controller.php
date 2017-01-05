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
	}
}
?>