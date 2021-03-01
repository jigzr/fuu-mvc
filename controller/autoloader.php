<?php

class autoloader {

	public function __construct() {
		//autoload the view,model,controller classes
		spl_autoload_register('autoloader::autoload_controller');
		spl_autoload_register('autoloader::autoload_view');
		spl_autoload_register('autoloader::autoload_model');
		spl_autoload_register('autoloader::autoload_tests');
	}

	public static function autoload_controller($class) {
		$path = "/yard_bio";
		if (is_readable($_SERVER['DOCUMENT_ROOT'] . $path . "/controller/{$class}.php")) {
			require $_SERVER['DOCUMENT_ROOT'] . $path . "/controller/{$class}.php";
		}
	}
	public static function autoload_view($class) {
		$path = "/yard_bio";
		if (is_readable($_SERVER['DOCUMENT_ROOT'] . $path . "/view/{$class}.php")) {
			require $_SERVER['DOCUMENT_ROOT'] . $path . "/view/{$class}.php";
		}
	}
	public static function autoload_model($class) {
		$path = "/yard_bio";
		if (is_readable($_SERVER['DOCUMENT_ROOT'] . $path . "/model/{$class}.php")) {
			require $_SERVER['DOCUMENT_ROOT'] . $path . "/model/{$class}.php";
		}
	}
	public static function autoload_tests($class) {
		$path = "/yard_bio";
		if (is_readable($_SERVER['DOCUMENT_ROOT'] . $path . "/test/{$class}.php")) {
			require $_SERVER['DOCUMENT_ROOT'] . $path . "/test/{$class}.php";
		}
	}

}

?>
