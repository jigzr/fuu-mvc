<?php
require_once "libs/Smarty.class.php";

class view {

	public function __construct() {
		//set routes first
		//$routes = new routes();
		//var_dump($routes);
		$this->setDisplay();
	}
	private function setDisplay(){
		$document_root = $_SERVER['DOCUMENT_ROOT'];
		$document_path = $document_root . $_SERVER['SCRIPT_NAME'];
		$documentPath = explode('index.php', $document_path);

		$smarty = new Smarty;
		$smarty->debugging = false;
		$smarty->caching = 0;
		$smarty->setTemplateDir($documentPath[0] . 'view/smarty/templates')
		          ->setCompileDir($documentPath[0] . 'view/smarty/templates_c')
		          ->setCacheDir($documentPath[0] . 'view/smarty/cache')
		          ->setConfigDir($documentPath[0] . 'view/smarty/configs');      
		$smarty->display('index.tpl');		
	}
}
?>