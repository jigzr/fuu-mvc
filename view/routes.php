<?php

class routes {

	public function __construct() { 
		$paths   = array('login' => array('path' => '/login/','permission' => '0777'),
					   //'sign-up' => array('path' => '/sign-up/','permission' => '0777'),
					   'not-found' => array('path' => '/not-found/','permission' => '0777')
							);
		$this->createRoutes($paths);
	}
	private function createRoutes($paths){
		$directories = [];
		foreach ($paths as $key => $value) {
			$directoryPath = $_SERVER['DOCUMENT_ROOT'].$value['path'];
			if (!file_exists($directoryPath)) {
			    mkdir($_SERVER['DOCUMENT_ROOT'].$value['path'],$value['permission'],true);
			}
			array_push($directories,implode("",explode("/",$value['path'])));
		}
		foreach ($this->listPath() as $key => $value) {
			in_array($value, $directories) ? '': $this->destroyRoutes($_SERVER['DOCUMENT_ROOT']."/{$value}");
		}
	}
	private function generateIndex(){

	}
	private function listPath(){
		$directory = $_SERVER['DOCUMENT_ROOT'];
		$directory = array_diff(scandir($directory), array('..', '.'));
		$appDirectory = [];
		$permDir = ['controller','model','view','.git','tests','vendor'];
		foreach ($directory as $key => $value) {
			(in_array($value,$permDir) ? '' : is_dir($value)) ? array_push($appDirectory,$value) : '';
		}
		return $appDirectory;
	}
	private function destroyRoutes($path){
		//only works in bash eneable servers
		exec("rm -rf {$path}");
	}	
}

?>