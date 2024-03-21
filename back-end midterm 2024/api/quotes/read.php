<?php 
$database = new Database();
$db = $database->connect();

$post = new Quote($db);

$result = $quotes->read();

$num - $result->rowCount();

if($num > 0){
    $quotes_arr = array();
    $quotes_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);
        $quotes_item = array(
            'id' => $id,
            'quote' => $quotes
        );
    }
        array_push($quotes_arr['data'], $quotes_item);

    }else{
        echo json_encode(
            array('message' => 'No quotes match that')
        )
    }
}