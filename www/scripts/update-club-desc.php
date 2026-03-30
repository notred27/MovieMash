<?php
    require("./../db-connect.php");

    $new_desc = htmlspecialchars(urldecode($_GET['desc']));
    $club = htmlspecialchars(urldecode($_GET['club_name']));



    $stmt = $conn->prepare("SELECT * FROM member_of WHERE user_id = ? and club_name = ?");
    $stmt->bind_param("ss", $_SESSION["user_id"], $club);
    $stmt->execute();
    $session_user_role = $stmt->get_result()->fetch_assoc();

    // Extra check for perms
    if(in_array($session_user_role["admin_level"], ["ADM", "OWN"])) {
        try {
            $stmt = $conn->prepare("UPDATE club SET club_description = ? WHERE club_name = ?;");
            $stmt->bind_param("ss", $new_desc, $club);
            $stmt->execute();
            echo "Successfully Changed Description!";

        } catch (Exception $e) {
            echo "Error updating description... " . $e;

        }
    }

?>
