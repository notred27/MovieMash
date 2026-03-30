<?php

require("./../db-connect.php");
include('./../components/poll.php');

$poll_id = $_GET['poll_id'];
$opt_id = $_GET['opt_id'];



$sql = "INSERT INTO poll_vote VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sss",  $_SESSION["user_id"], $poll_id, $opt_id);


if (!$stmt) {
    die("Query preparation failed: " . $conn->error); 
}

$stmt->execute();

// Re-fetch the HTML
$sql = "SELECT * FROM poll WHERE poll_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $poll_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $poll = $result->fetch_assoc();
    create_poll_html($poll, $conn); 
} else {
    echo "<div>Poll not found.</div>";
}



?>