<?php

require("./../db-connect.php");
include_once('./../config/db.php');

if (!function_exists('create_user_badge')) {
    include("./../components/userBadge.php");
}



$allowedSorts = [
    'recent' => "ORDER BY date_joined DESC",
    'oldest' => "ORDER BY date_joined ASC",
    'az' => "ORDER BY display_name ASC",
    'za' => "ORDER BY display_name DESC",
];

$sort = $_GET['sort'] ?? 'az';
$order = $allowedSorts[$sort] ?? $allowedSorts['az'];


$name = isset($_GET['user_name']) ? '%' .  $_GET['user_name'] . '%' : '%';


$sql = "SELECT * FROM user WHERE display_name LIKE ?  $order;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $name);
$stmt->execute();
$results = $stmt->get_result();



echo '<div style = "display:grid;grid-template-columns:repeat(6, 1fr);width:95vw;">';

if ($results->num_rows > 0){
    while ($result = $results->fetch_assoc()) {
        create_user_badge($result, $conn);
    } 
}

echo '</div>';


?>