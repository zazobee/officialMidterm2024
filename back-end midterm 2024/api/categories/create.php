<?php 
class Create {
    private $conn;
    private $table = 'categries';

    public $id;
    public $category;

    public function __construct($db){
        $this->conn = $db;
    }

    
}