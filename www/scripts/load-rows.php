<?php
// Script to sort movie rows for a user's page
require("./../db-connect.php");
include_once('./../config/db.php');
include('./../components/movieReviewPreview.php');


$sort = $_GET['sort'] ?? 'recent';
$target_id = $_GET['id'];
$offset = ($_GET['page'] ?? 0) * 10;

switch ($sort) {
  case 'recent':
    $order = "ORDER BY watch_date DESC";
    break;
  case 'oldest':
    $order = "ORDER BY watch_date ASC";
    break;
  case 'highest':
    $order = "ORDER BY rating DESC";
    break;
  case 'lowest':
    $order = "ORDER BY rating ASC";
    break;
  default:
    $order = "ORDER BY watch_date DESC";
}



$sql = "SELECT * FROM review WHERE user_id = ? $order LIMIT 10 OFFSET $offset;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $target_id);
$stmt->execute();
$user_reviews = $stmt->get_result();



while ($review = $user_reviews->fetch_assoc()) {
//   echo "<div class='row'>{$row['imdb']} - {$row['watch_date']}</div>";
  create_movie_review_preview($review, $conn);
}
?>
