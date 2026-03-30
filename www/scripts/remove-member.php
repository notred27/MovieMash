<?php
    require("./../db-connect.php");
    
    // Get data from component 
    $user_id = $_GET['user_id']; 
    $club_name = $_GET['club_name']; 
    

    // This just removes the member, but in the future should update their admin_level to 'BAN' to ban them from hte club
    $sql = "DELETE FROM member_of WHERE club_name = ? AND user_id = ?;";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $club_name, $user_id);
    $stmt->execute();

    // Echo response for alert in current view
    if ($stmt->affected_rows > 0) {
        echo "Successfully kicked member";
    } else {
        http_response_code(403);
        echo "Kicked failed...";
    }
 
?>
