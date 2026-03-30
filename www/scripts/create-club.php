<?php
require("./../db-connect.php");


$name = $_POST['club_name']; 
$desc = $_POST['club_desc']; 
$topics = array_map('trim', explode(",", $_POST['club_topics']));


// Filter empty tags
$topics = array_filter($topics);


//Create the new review
$stmt = $conn->prepare("INSERT INTO club (club_name, club_description) VALUES (?, ?)");
$stmt->bind_param("ss", $name, $desc);





if ($stmt->execute()) {
    // Add tags
    foreach ($topics as $topic) {
        echo "Topic: " . htmlspecialchars($topic) . "<br>";
        $stmt = $conn->prepare("INSERT INTO club_topics (club_name, topic) VALUES (?, ?)");
        $stmt->bind_param("ss", $name, $topic);
        $stmt->execute();
    }



    echo 'Success' . $name . $_SESSION["user_id"] . 'ADM';

    // Make the user who created a club an admin
    $stmt = $conn->prepare("INSERT INTO member_of (club_name, user_id, admin_level) VALUES (?, ?, 'OWN')");
    $stmt->bind_param("ss", $name, $_SESSION["user_id"]);
    $stmt->execute();




    header("Location: ./../clubs.php");
    // exit();

} else {
    echo "Error: " . $stmt->error;
    header("Location: ./../error.html");

}



?>
