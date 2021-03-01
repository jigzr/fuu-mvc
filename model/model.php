<?php
class model
{
	private $DB_server = 'localhost';
	private $DB_name = '';
	private $DB_user = '';
	private $DB_pass = '';
	private $pdo;

	public function __construct(){
	}
	public function connectDB(){
		try {
		    return new PDO("mysql:host=".$this->DB_server.";dbname=". $this->DB_name .";port=3306", $this->DB_user, $this->DB_pass);
		} catch (PDOException $errorMsg) {
		   echo 'Connection failed: ' . $errorMsg->getMessage();
		}
	}
}
