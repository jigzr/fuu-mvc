<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once "./controller/controller.php";

$controller = new controller();

/*Intialialize application startup*/
$controller->initialize();
?>