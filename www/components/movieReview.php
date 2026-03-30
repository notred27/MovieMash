<?php
// This file creates HTML for a full version of a review (which doesn't contain a movie poster)

function create_movie_review($review, $conn) {    
       // Get information about the movie
    $sql = "SELECT title, movie_poster FROM movie WHERE imdb = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $review["imdb"]);
    $stmt->execute();
    $result = $stmt->get_result()->fetch_assoc();

    // Get the display name of the user that posted the review
    $sql = "SELECT display_name, user_img FROM user WHERE user_id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $review["user_id"]);
    $stmt->execute();
    $name = $stmt->get_result()->fetch_assoc();

    // Watch date
    $ds = new DateTime($review["watch_date"]);

    // Movie rating
    $rating = (int)$review["rating"];

    if (!function_exists('generate_stars')) {
        include("stars.php");
    }


    $html = '<div class="movieReview FullContainer"> 
                
                <div class="reviewGrid"> 
                    <div class="profileRow">
                        <img class = "profileImg" src="' . $name['user_img'] . '" alt="User icon"> 
                        <a href ="userpage.php?USER=' . $review["user_id"] . '"><h4>' . $name['display_name'] . '</h4></a> 
                        
                        <span style="justify-self:end;">' 
                        . generate_stars($rating) .  
                        '</span>

                        <div class="menuContainer">
                            <img class="menuIcon" src="./assets/menu.svg" alt="menuIcon">
                            <div class="dropdownMenu">';

    if($_SESSION["user_id"] == $review["user_id"]){
    $html .=                    '<a href="" class = "deleteBtn" data-imdb="' . $review["imdb"] . '" data-watch="' . $review["watch_date"] . '">Delete</a>';
    }
                            
    $html .=                    '<a href="#">Report</a>
                            </div>
                        </div>


                    </div>
                    <p class="fullReviewText">' . $review["content"] .'</p>
                    <h6>Watched ' . $ds->format('M d, Y') . '</h6>
                </div>
            </div>';

    echo $html; 
}


    

?>