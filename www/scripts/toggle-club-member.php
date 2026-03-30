<?php
require("./../db-connect.php");

$club_name = htmlspecialchars($_GET['CLUB']); 

$sql = "SELECT * from member_of where club_name = ? AND user_id = ?;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $club_name, $_SESSION["user_id"]);
$stmt->execute();
$mem_status = $stmt->get_result();


if($mem_status->num_rows == 0) {
    // Currently not following, so add follow record

    $stmt = $conn->prepare("INSERT into member_of values (?, ?, 'MEM')");
    $stmt->bind_param("ss", $club_name , $_SESSION["user_id"]);
    $stmt->execute();
    echo 'Leave';

} else {
    $stmt = $conn->prepare("DELETE FROM member_of WHERE user_id = ? AND club_name = ?");
    $stmt->bind_param("ss", $_SESSION["user_id"], $club_name);
    $stmt->execute();
    echo 'Join';

}


?>
