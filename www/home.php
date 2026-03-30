<?php
require("db-connect.php");

// Fetch recent popular movies
$sql = "SELECT m.*, rc.review_count
        FROM movie m
        JOIN (
            SELECT imdb, COUNT(*) AS review_count
            FROM review
            WHERE watch_date >= NOW() - INTERVAL 30 DAY
            GROUP BY imdb
        ) rc ON m.imdb = rc.imdb
        ORDER BY rc.review_count DESC
        LIMIT 10";

$movies = $conn->query($sql);


// Fetch recent reviews from friends
$sql = "SELECT r.* 
        FROM review r
        JOIN friends f ON r.user_id = f.friend_id
        WHERE f.user_id = ?
        ORDER BY r.watch_date DESC
        LIMIT 10;";

$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $_SESSION["user_id"]);
$stmt->execute();
$reviews = $stmt->get_result();


// Fetch recent polls
$sql = "SELECT * FROM poll ORDER BY post_date DESC LIMIT 10";
$polls = $conn->query($sql);

include('./components/movieBanner.php');
include('./components/movieReviewPreview.php');
include('./components/poll.php');


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <title>Movie Mash</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/poll.css">

    <link rel="stylesheet" href="./styles/movieReviewPreview.css">
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
</head>

<body>
    <?php include('./components/web-header.php'); ?>
    <main>


        <h2>Popular movies this month:</h2>

        <div class="horizontalContainer container"> 

            <?php 
                if ($movies->num_rows > 0) { 
                    while ($movie = $movies->fetch_assoc()) {
                        create_movie_html($movie, $conn); 
                    }
                } else {
                    echo "No movies found :(";
                }
            ?>

        </div>



        <h2>Recent reviews from people you follow:</h2>
       
        <div class="reviewContainer container"> 
            

            <?php 
                if ($reviews->num_rows > 0) { 
                    while ($review = $reviews->fetch_assoc()) {
                        create_movie_review_preview($review, $conn); 
                    }
                } else {
                    echo "No movies found :(";
                }
            ?>

        </div>


        <h2>New posts in groups you follow:</h2>
        <div class="horizontalContainer container">


            <?php 
                if ($polls->num_rows > 0) { 
                    while ($poll = $polls->fetch_assoc()) {
                        create_poll_html($poll, $conn); 
                    }
                } else {
                    echo "No polls found :(";
                }
            ?>

        </div>



   


        

    </main>
    <footer>
        <p>&copy; 2025 Movie Mash. All rights reserved.</p>
    </footer>
    <script src="./scripts/movie-dropdown.js" defer></script>

    <script>
        // Initial option on a poll
        function selectOption(poll, option) {
            fetch(`./scripts/select-poll-option.php?poll_id=${poll}&opt_id=${option}`)
                .catch(error => console.error("Error fetching sorted data:", error));
        }

        // Change option on a poll
        function changeOption(poll, option) {
            fetch(`./scripts/change-poll-option.php?poll_id=${poll}&opt_id=${option}`)
                .then(response => response.text())
                .then(html => {
                    const pollContainer = document.getElementById(`poll-${poll}`);
                    pollContainer.innerHTML = html;
                })
                .catch(error => console.error("Error updating poll:", error));
        }

    </script>
</body>

</html>