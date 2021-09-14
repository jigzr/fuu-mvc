<?php
class model
{
	private $DB_server = 'localhost';
	private $DB_name = 'philmed';
	private $DB_user = 'cerp_admin';
	private $DB_pass = 'c3RpD33zDB!!';
	private $pdo;

	public function __construct(){
	}
	public function setDB(){
		return $this->connectDB();
	}
	public function connectDB(){
		try {
		   return new PDO("mysql:host=".$this->DB_server.";dbname=". $this->DB_name .";port=3306", $this->DB_user, $this->DB_pass);
		} catch (PDOException $errorMsg) {
		   echo 'Connection failed: ' . $errorMsg->getMessage();
		}
	}
}
?>