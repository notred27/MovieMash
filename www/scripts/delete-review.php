<?php
    require("./../db-connect.php");
    
    // Get data from component 
    $imdb = $_POST["imdb"];
    $watch = $_POST["watch"];

    // Delete review from current session owner with this data
    $sql = "DELETE FROM review WHERE imdb = ? AND watch_date = ? AND user_id = ?;";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $imdb, $watch, $_SESSION["user_id"]);
    $stmt->execute();

    // Echo response for alert in current view
    if ($stmt->affected_rows > 0) {
        echo "Success";
    } else {
        http_response_code(403);
        echo "Delete failed (no matching record or not yours)";
    }
 
?>
