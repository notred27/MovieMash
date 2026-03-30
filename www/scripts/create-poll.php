<?php
require("../db-connect.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get post data
    $club_name = $_POST["club_name"];
    $poll_desc = $_POST["poll_desc"];
    $optarr = [$_POST["opt_1"], $_POST["opt_2"], $_POST["opt_3"], $_POST["opt_4"]];
    $movies = isset($_POST["movies"]) ? $_POST["movies"] : [];

    // Time for key
    $date = date('Y-m-d H:i:s'); 

    // Create poll
    $stmt = $conn->prepare("INSERT INTO poll (user_id, post_date, content, in_club) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $_SESSION["user_id"], $date, $poll_desc, $club_name);
    $stmt->execute();

    // Get auto-id
    $poll_id = $conn->insert_id;
    echo "Poll ID: $poll_id\n";

    // Create options
    foreach ($optarr as $option) {
        if (!empty($option)) {
            $stmt = $conn->prepare("INSERT INTO poll_option (poll_id, option_desc) VALUES (?, ?)");
            $stmt->bind_param("is", $poll_id, $option); 
            $stmt->execute();
        }
    }

    // Create the about
    foreach ($movies as $movie) {
        if (!empty($movie)) {
            $stmt = $conn->prepare("INSERT INTO poll_about (poll_id, imdb) VALUES (?, ?)");
            $stmt->bind_param("is", $poll_id, $movie); 
            $stmt->execute();
        }
    }

    echo "POLL WAS CREATED";
    $res = urlencode($club_name);
    header("Location: ./../clubpage.php?CLUB=$res");
    exit;
}
?>
