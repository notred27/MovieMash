<?php
require("./db-connect.php");

include('./components/movieReview.php');


// Get url variable
$target_imdb = htmlspecialchars($_GET["ID"]);


// Get info about this movie
$sql = "SELECT * FROM movie WHERE imdb = ?;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $target_imdb);
$stmt->execute();
$movie = $stmt->get_result()->fetch_assoc();


// Get reviews you've written for this movie
$sql = "SELECT * FROM review WHERE user_id = ? and imdb = ? ORDER BY watch_date DESC;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $_SESSION["user_id"], $target_imdb);
$stmt->execute();
$user_reviews = $stmt->get_result();



$sql = "SELECT * 
        FROM review 
        JOIN (SELECT friend_id as id 
               FROM friends 
               WHERE user_id = ?) as F 
            on F.id = review.user_id WHERE imdb = ? ORDER BY watch_date DESC;";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $_SESSION["user_id"], $target_imdb);
$stmt->execute();
$friend_reviews = $stmt->get_result();




// Get reviews that aren't from you or your friends
// $sql = "SELECT * FROM review WHERE imdb = ? and user_id != ? and user_id NOT IN (SELECT user_id as id FROM friends WHERE friend_id = ? UNION SELECT friend_id as id FROM friends WHERE user_id = ?) ORDER BY watch_date DESC;";

$sql = "SELECT * FROM review WHERE imdb = ? and user_id != ? and user_id NOT IN (SELECT friend_id FROM friends WHERE user_id = ?) ORDER BY watch_date DESC;";


$stmt = $conn->prepare($sql);
$stmt->bind_param("sss", $target_imdb, $_SESSION["user_id"], $_SESSION["user_id"]);
$stmt->execute();
$other_reviews = $stmt->get_result();

// Get the name of clubs you belong to
$sql = "SELECT club_name FROM member_of WHERE user_id = ?;";

$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $_SESSION["user_id"]);
$stmt->execute();
$user_clubs = $stmt->get_result();

// Get the average rating for this movie
$sql = "SELECT AVG(rating) as rating FROM review WHERE imdb = ?;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $target_imdb);
$stmt->execute();
$avg_rating = $stmt->get_result()->fetch_assoc();

$sql = "SELECT AVG(rating) as rating FROM review WHERE imdb = ? and user_id IN (SELECT friend_id FROM friends WHERE user_id = ?);";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $target_imdb, $_SESSION["user_id"]);
$stmt->execute();
$avg_friend_rating = $stmt->get_result()->fetch_assoc();


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <title>Movie Mash</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/moviepage.css">
    <link rel="stylesheet" href="./styles/movieReviewPreview.css">
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
</head>

<body>
    <?php include('./components/web-header.php'); ?>

    <main>

<!-- Create a form to add new reviews -->
    <div id = "reviewMenu" style = "display:none; width:60vw; height:70vh; background-color:#282828; position:absolute; top:15vh; left:20vw; z-index:200;">
        <form  action="./scripts/create-review.php" method="post" >
            <input type="number" min="0" max = "10" id="rating" name="rating" placeholder="Rating" required>
            <br/>
            <input type="text" id="reviewContent" name="reviewContent" placeholder="Review">
            <br/>

            <select name="club" id="club">
                <option value="">No Club</option>

                <?php
                    if ($user_clubs->num_rows > 0) { 
                        while ($club = $user_clubs->fetch_assoc()) {
                            echo '<option value="'. $club["club_name"] .'">' . $club["club_name"] . '</option>';

                        }   
                    }
                ?>

            </select>

            <br/>

            <input type="hidden"  id = "imdb" name="imdb" value="<?php echo $target_imdb; ?>"> </input>

            <button type="submit">Create Review</button>

            <button onclick = "toggleReviewMenu()">Cancel</button>
        </form>
    </div>




    <div class = "movieContainer" >
        <?php
            // Format the runtime
            $runtime = $movie["runtime"];
            $timeParts = explode(":", $runtime);
            if (count($timeParts) == 3) {
                $hours = (int)$timeParts[0];
                $minutes = (int)$timeParts[1];
                $r = $hours . "h " . $minutes . "m";
            } else {
                $r = $runtime;
            }

            if (!function_exists('generate_stars')) {
                include("./components/stars.php");
            }
             

            echo '<img id = "moviePoster" alt = "movieBanner" src="' . $movie["movie_poster"] . '" > 
            <h1 id = "movieTitle">' . $movie["title"] . '<span> (' . $movie["release_year"] . ')</span></h1> 
            <h4 id = "movieRuntime">' . $r . '</h4> 
            <p id = "movieDesc">' . $movie["movie_desc"] . '</p> 
            <h3 id = "overallRating">Overall Rating:</h3> <span id = "overallStars">' .generate_stars($avg_rating["rating"]) . '(' . $avg_rating["rating"] . ')</span> 
            <h3 id = "followingRating">Rating Among Friends:</h3> <span id = "followingStars">' .generate_stars($avg_friend_rating["rating"]) . '(' . $avg_friend_rating["rating"] . ')</span>';
        ?>

        <button id = "reviewBtn" onclick = "toggleReviewMenu()">Create A New Review!</button>
    </div>



    <!-- <h3>You may also like</h3> -->

    <h3> Your reviews </h3>

    <div style="display:grid; grid-template-columns: repeat(auto-fill,540px);column-gap:10px; row-gap:10px;">

        <?php 
            if ($user_reviews->num_rows > 0) { 
                while ($review = $user_reviews->fetch_assoc()) {
                    create_movie_review($review, $conn);
                }
            } else {
                echo "You haven''t reviewed this movie yet!";
            }
        ?>
    </div>

    <h3> Reviews from people you follow </h3>

    <div style="display:grid; grid-template-columns: repeat(auto-fill,540px);column-gap:10px; row-gap:10px;">

        <?php 
            if ($friend_reviews->num_rows > 0) { 
                while ($review = $friend_reviews->fetch_assoc()) {
                    create_movie_review($review, $conn);
                }
            } else {
                echo "No reviews from Friends found :(";
            }
        ?>
    </div>


    <h3> Other reviews</h3>
    <div style="display:grid; grid-template-columns: repeat(auto-fill,540px);column-gap:10px; row-gap:10px;">
        <?php 
            if ($other_reviews->num_rows > 0) { 
                while ($review = $other_reviews->fetch_assoc()) {
                    create_movie_review($review, $conn);
                }
            } else {
                echo "No other reviews found :(";
            }
        ?>
    </div>
        

    </main>
    <footer>
        <p>&copy; 2025 Movie Mash. All rights reserved.</p>
    </footer>

    <script>
        function toggleReviewMenu() {
            var div = document.getElementById("reviewMenu");
            if (div.style.display === "none") {
                div.style.display = "block";
            } else {
                div.style.display = "none";
            }
        }
    </script>



<script src="./scripts/movie-dropdown.js" defer></script>
</body>

</html>