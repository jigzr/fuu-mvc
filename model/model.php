<?php
class model
{
	private $DB_server = 'localhost';
	private $DB_name = 'yard_bio';
	private $DB_user = 'root';
	private $DB_pass = 'ZXc21LKt';
	private $pdo;

	public function __construct(){
	}
    /**
     * SetDB
     *
     * @return db
     **/
    public function setDB()
    {
        $db = $this->connectDB();
        return $db;
    }
	public function connectDB(){
		try {
		    return new PDO("mysql:host=".$this->DB_server.";dbname=". $this->DB_name .";port=3306", $this->DB_user, $this->DB_pass);
		} catch (PDOException $errorMsg) {
		   echo 'Connection failed: ' . $errorMsg->getMessage();
		}
	}
}
