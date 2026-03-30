<?php
require("./../db-connect.php");

$friend_id = $_GET['friend_id']; 


$stmt = $conn->prepare("SELECT COUNT(*) as c FROM friends WHERE user_id = ? and friend_id = ?");
$stmt->bind_param("ss", $_SESSION["user_id"], $friend_id);


if ($stmt->execute()) {

    if($stmt->get_result()->fetch_assoc()["c"] == 0) {
        // Currently not following, so add follow record

        date_default_timezone_set('America/New_York');
        $date = date('Y-m-d', time());

        $stmt = $conn->prepare("INSERT into friends values (?, ?, ?)");
        $stmt->bind_param("sss", $_SESSION["user_id"], $friend_id, $date);
        $stmt->execute();
        echo 'Following';

    } else {
        $stmt = $conn->prepare("DELETE FROM friends WHERE user_id = ? AND friend_id = ?");
        $stmt->bind_param("ss", $_SESSION["user_id"], $friend_id);
        $stmt->execute();
        echo 'Follow';

    }

} else {
    echo "Error: " . $stmt->error;
}


?>
