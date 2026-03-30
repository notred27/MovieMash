<?php
    require("./../db-connect.php");


    $club = htmlspecialchars(urldecode($_GET['club_name']));
    $topics = $_GET["topics"];


    // Get individual topics
    $tags = array_map('trim', explode(',', $topics));
    $tags = array_filter($tags, fn($tag) => $tag !== '');


    $stmt = $conn->prepare("SELECT * FROM member_of WHERE user_id = ? and club_name = ?");
    $stmt->bind_param("ss", $_SESSION["user_id"], $club);
    $stmt->execute();
    $session_user_role = $stmt->get_result()->fetch_assoc();

    // Extra check for perms
    if(in_array($session_user_role["admin_level"], ["ADM", "OWN"])) {
        try {

            // Delete all old tags
            $stmt = $conn->prepare("DELETE FROM club_topics WHERE club_name = ?;");
            $stmt->bind_param("s", $club);
            $stmt->execute();

            $stmt = $conn->prepare("INSERT INTO club_topics (club_name, topic) VALUES (?, ?)");
            foreach ($tags as $tag) {
                $t = htmlspecialchars($tag);
                $stmt->bind_param("ss", $club, $t);
                $stmt->execute();
            }

            echo "Successfully Updated Topics!";

        } catch (Exception $e) {
            echo "Error updating topics... " . $e;

        }
    }

?>
