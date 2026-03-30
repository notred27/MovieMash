
<?php 
// Creates HTML to represent other user's names and profile images (clickable to go to user's page)

    function create_user_badge($user, $conn) {
        $sql = "SELECT COUNT(*) as c FROM friends WHERE user_id = ? AND friend_id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $_SESSION["user_id"], $user["user_id"]);
        $stmt->execute();
        $status = $stmt->get_result()->fetch_assoc();

        $status["color"] =  $status["c"] == 1 ? "#D5FC51" : "#FFFFFF";


        echo '<div class = "profileBadge" style="display:flex;" data-id = "'. $user["display_name"] . '">
        <img alt="profileImg" src="' . $user["user_img"] . '">
        <a href="userpage.php?USER=' . $user["user_id"] . '" style="color:' .  $status["color"] . ';">' .
            $user["display_name"] . 
        '</a>
    </div>';

    }
?>