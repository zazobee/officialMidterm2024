<?php 
class Create {
    private $conn;
    private $table = 'quotes';

    public $id;
    public $quote;

    public $author_id;

    public $categroy_id;

    public function __construct($db){
        $this->conn = $db;
    }

    
}