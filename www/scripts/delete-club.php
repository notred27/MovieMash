<?php
require("../db-connect.php");

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["club_name"])) {
    $club_name = $_POST["club_name"];
    $user_id = $_SESSION["user_id"];

    // Check if the user is the owner of the club
    $stmt = $conn->prepare("SELECT admin_level FROM member_of WHERE club_name = ? AND user_id = ?");
    $stmt->bind_param("ss", $club_name, $user_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 0) {
        die("You are not a member of this club.");
    }

    $row = $result->fetch_assoc();
    if ($row["admin_level"] !== "OWN") {
        die("Only the club owner can delete the club.");
    }

    $stmt = $conn->prepare("DELETE FROM club WHERE club_name = ?");
    $stmt->bind_param("s", $club_name);
    $stmt->execute();


} 

header("Location: ./../clubs.php");
?>
