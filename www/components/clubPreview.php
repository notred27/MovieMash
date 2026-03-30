<?php
// This file formats club data into a clickable HTML element
 
    function create_club_preview($club, $conn) {

        $sql = "SELECT COUNT(*) AS num FROM member_of WHERE club_name = ?;";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $club["club_name"]);
        $stmt->execute();
        $members = $stmt->get_result()->fetch_assoc();

        $sql = "SELECT admin_level FROM member_of WHERE club_name = ? AND user_id = ?;";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $club["club_name"], $_SESSION['user_id']);
        $stmt->execute();
        $admin = $stmt->get_result();


        $html = '<div class="clubPreviewContainer"';
        
        if($admin->num_rows > 0) {
            $a = $admin->fetch_assoc()['admin_level'];
            if($a != "MEM") {
                $html .= 'style = "border: 2px solid #D5FC51;"';
            }
        }
        
        $html .= 'onclick="location.href=\'./clubpage.php?CLUB=' . str_replace(' ', '+', $club["club_name"]) . '\'">
                    <span class="clubTitle"> '. $club["club_name"] .' </span> 
                    <span class="clubNum"> '. $members["num"] .' members</span>
                    </br>
                    <p class="clubText" > '. $club["club_description"] .' </p>
                </div>';

        echo $html;
    }

?>