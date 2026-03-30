<?php

include_once(__DIR__ . '/../db-connect.php');

if (!function_exists('create_club_preview')) {
    include("./../components/clubPreview.php");
}


$allowedSorts = [
    'az' => "ORDER BY club_name ASC",
    'za' => "ORDER BY club_name DESC",
];

$sort = $_GET['sort'] ?? 'az';
$order = $allowedSorts[$sort] ?? $allowedSorts['az'];

$club_name = isset($_GET['club_name']) ? '%' .  $_GET['club_name'] . '%' : '%';

$sql = "SELECT * FROM club WHERE club_name LIKE ?  $order;";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Query preparation failed: " . $conn->error); 
}

$stmt->bind_param("s", $club_name);
$stmt->execute();
$results = $stmt->get_result();


echo '<div style = "display:grid;grid-template-columns:repeat(4, 1fr);width:95vw;column-gap:5px;">';

if ($results->num_rows > 0){
    while ($result = $results->fetch_assoc()) {
        create_club_preview($result, $conn);
    } 
}

echo '</div>';


?>