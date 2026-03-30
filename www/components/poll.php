

<?php 
// This file creates a poll 

function create_poll_html($poll, $conn) {

    $sql = "SELECT display_name, user_img FROM user WHERE user_id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $poll["user_id"]);
    $stmt->execute();
    $name = $stmt->get_result()->fetch_assoc();

    $ds = new DateTime($poll["post_date"]);


    $sql = "SELECT * FROM poll_option WHERE poll_id = ?;";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $poll["poll_id"]);
    $stmt->execute();
    $options = $stmt->get_result();


    $sql = "SELECT * FROM poll_vote WHERE user_id = ? AND poll_id = ?;";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss",  $_SESSION['user_id'], $poll["poll_id"]);
    $stmt->execute();
    $vote = $stmt->get_result();


    $is_admin = false;

    $stmt = $conn->prepare("SELECT admin_level FROM member_of WHERE user_id = ? AND club_name = ?");
    $stmt->bind_param("ss", $_SESSION["user_id"], $poll["in_club"]);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $is_admin = in_array($row["admin_level"], ["ADM", "OWN"]); 
    }
    



   if($vote->num_rows == 0) {
    // You have not voted in this poll yet
        $html = '<div id="poll-' . $poll["poll_id"] . '" class="PollContainer" > 
                    
                    <div class=""> 
                        
                        <p class="">' . $poll["content"] .'</p>
                        
                        <form>';
                        

                        // $poll_id = substr(md5($poll["user_id"] . $poll["post_date"]), 0, 10);
                        if ($options->num_rows > 0) { 
                            while ($option = $options->fetch_assoc()) {
                                $html .= '<input type = "radio" id="' .$option["option_id"] .'" name = "'. $poll["poll_id"] .'" 
                                
                                 onclick = "selectOption('. json_encode($poll["poll_id"]) .', ' .json_encode($option["option_id"]) . ')">
                                
                                <label for="'. $option["option_id"] . '"> ' . $option["option_desc"] . '</label>
                                 <br>';

                            }
                        }
                        
        $html .=        '</form>
                    </div>

                    <div class="finalRow">
                            <img class = "profileImg" src="' . $name['user_img'] . '" alt="User icon"> 
                            <a href ="userpage.php?USER=' . $poll["user_id"] . '">' . $name['display_name'] . '</a> 
                            <h6>Posted ' . $ds->format('M d, Y') . '</h6>


                            <div class="menuContainer">
                                <img class="menuIcon" src="./assets/menu.svg" alt="menuIcon">
                                <div class="dropdownMenu">';
    
    if($_SESSION["user_id"] == $poll["user_id"] || $is_admin){
    $html .=                    '<a href="" class = "deletePoll" data-poll-id="' . $poll["poll_id"] . '">Delete</a>';
    }
                            
    $html .=                    '<a href="#">Report</a>

                            </div>
                        </div>

                    </div>

                    
                    
                </div>';

        echo $html;

    } else {
        $user_vote = $vote->fetch_assoc()["option_id"];

        $sql = "SELECT COUNT(*) as num_votes, option_id FROM poll_vote WHERE poll_id = ? GROUP BY option_id;";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s",  $poll["poll_id"]);
        $stmt->execute();
        $all_votes = $stmt->get_result();

        // Store the votes for later
        $total_votes = 0;
        $vote_counts = [];

        while ($row = $all_votes->fetch_assoc()) {
            $vote_counts[$row['option_id']] = $row['num_votes'];
            $total_votes += $row['num_votes'];
        }

        $html = '<div id="poll-' . $poll["poll_id"] . '" class="PollContainer"> 
                    
                    <div class=""> 
                        
                        <p class="">' . $poll["content"] .'</p>
                        
                        <div class="resContainer">';
                        

                        // $poll_id = substr(md5($poll["user_id"] . $poll["post_date"]), 0, 10);
                        if ($options->num_rows > 0) { 
                            while ($option = $options->fetch_assoc()) {
                                // $html .= '<input type = "radio" id="' .$option["option_id"] .'" name = "'. $poll["poll_id"] .'"> <label for="'. $option["option_id"] . '"> ' . $option["option_desc"] . '</label><br>';
                                $num_votes = isset($vote_counts[$option["option_id"]]) ? $vote_counts[$option["option_id"]] : 0;
                                $percent = $total_votes > 0 ? round(($num_votes / $total_votes) * 100, 2) : 0;
                                $color = $option["option_id"] == $user_vote ? 'yourvote' : 'othervote';

                                $html .= '<div class="poll-result">
                                                <div class ="optionText" onclick = "changeOption('. json_encode($poll["poll_id"]) .', ' .json_encode($option["option_id"]) . ')"> <span class="numVotes">(' . $percent . '%)</span>  ' . htmlspecialchars($option["option_desc"]) . '  </div>
                                                
                                                <div class="bar '. $color .'" style="--target-width:' . $percent . '%;">
                                                    
                                                </div>
                                                
                                            </div><br/> ';
                            }
                        }
                        
        $html .=        '</div>
                    </div>

                    <div class="finalRow">
                            <img class = "profileImg" src="' . $name['user_img'] . '" alt="User icon"> 
                            <a href ="userpage.php?USER=' . $poll["user_id"] . '">' . $name['display_name'] . '</a> 
                            <h6>Posted ' . $ds->format('M d, Y') . '</h6>


                                                        <div class="menuContainer">
                                <img class="menuIcon" src="./assets/menu.svg" alt="menuIcon">
                                <div class="dropdownMenu">';
    
    if($_SESSION["user_id"] == $poll["user_id"] || $is_admin){
    $html .=                    '<a href="" class = "deletePoll" data-poll-id="' . $poll["poll_id"] . '">Delete</a>';
    }
                            
    $html .=                    '<a href="#">Report</a>

                            </div>
                        </div>
                    </div>
                </div>';

        echo $html;
    }
}






?>