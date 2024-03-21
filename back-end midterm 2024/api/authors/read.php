<?php 
$database = new Database();
$db = $database->connect();

$post = new Author($db);

$result = $post->read();

$num - $result->rowCount();

if($num > 0){
    $authors_arr = array();
    $authors_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);
        $authors_item = array(
            'id' => $id,
            'author' => $authors
        );
    }
        array_push($posts_arr['data'], $post_item);

    }else{
        echo json_encode(
            array('message' => 'No authors with that name')
        )
    }
}