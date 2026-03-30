<?php
require("./../db-connect.php");

$user_id = $_GET['user_id']; 
$club_name = $_GET['club_name']; 



$stmt = $conn->prepare("SELECT * FROM member_of WHERE user_id = ? and club_name = ?");
$stmt->bind_param("ss", $_SESSION["user_id"], $club_name);
$stmt->execute();
$session_user_role = $stmt->get_result()->fetch_assoc();



$stmt = $conn->prepare("SELECT * FROM member_of WHERE user_id = ? and club_name = ?");
$stmt->bind_param("ss", $user_id, $club_name);
$stmt->execute();
$target_user_role = $stmt->get_result()->fetch_assoc();


if($session_user_role["admin_level"] == 'OWN') {
    if($target_user_role["admin_level"] == 'MEM') {
        // Promote member
        $stmt = $conn->prepare("UPDATE member_of SET admin_level = 'ADM' WHERE user_id = ? AND club_name = ?;");
        $stmt->bind_param("ss", $user_id, $club_name);
        $stmt->execute();
        echo "Successfully Promoted Member";
        
    } else if($target_user_role["admin_level"] = 'OWN') {  
        // Don't let owners demote themselves
        echo "You can't demote yourself!";

    } else {
        // Demote member
        $stmt = $conn->prepare("UPDATE member_of SET admin_level = 'MEM' WHERE user_id = ? AND club_name = ?;");
        $stmt->bind_param("ss", $user_id, $club_name);
        $stmt->execute();
        echo "Successfully Demoted Member";

    }
}

// Only allow admin to promote other members, not demote
if($session_user_role["admin_level"] == 'ADM') {
    if($target_user_role["admin_level"] == 'MEM') {
        // Promote member
        $stmt = $conn->prepare("UPDATE member_of SET admin_level = 'ADM' WHERE user_id = ? AND club_name = ?;");
        $stmt->bind_param("ss", $user_id, $club_name);
        $stmt->execute();
        
        echo "Successfully Promoted Member";

    }
}



?>
