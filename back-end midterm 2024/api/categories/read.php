<?php 
$database = new Database();
$db = $database->connect();

$post = new Category($db);

$result = $category->read();

$num - $result->rowCount();

if($num > 0){
    $categories_arr = array();
    $categories_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);
        $categories_item = array(
            'id' => $id,
            'category' => $categories
        );
    }
        array_push($category_arr['data'], $category_item);

    }else{
        echo json_encode(
            array('message' => 'No categories with that name')
        )
    }
}