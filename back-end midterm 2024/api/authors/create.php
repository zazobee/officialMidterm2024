<?php 
class Create {
    private $conn;
    private $table = 'authors';

    public $id;
    public $author;

    public function __construct($db){
        $this->conn = $db;
    }

    
}