<?php
    class Database{
        public function connect($config = array()){
        try{
            $conn = new PDO($config['type'] . ':host=' . $config['host'] . ';dbname=' . $config['db'], $config['user'], $config['password']);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        echo 'Connection Error:' . $e->getMessage();
    } 

    return $conn;
}
    }

    /*
    private $host = 'localhost';
    private $db_name = 'quotesdb';
    private $username = 'postgres';
    private $password = 'postgres';
    private $conn;

    public function connect(){
        $this->conn = null;

        try{
            $this->conn = newPDO('mysql:host=' . $this->host . ';dbname=' . $this->name,
            $this->username, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            catch(PDOException $e){
                echo 'Connection Error: ' . $e->getMessage();
            }
        }
    }
    */