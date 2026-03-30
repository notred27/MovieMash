<?php
    require("db-connect.php");
    // Fetch all clubs

    $stmt = $conn->prepare("SELECT * FROM club JOIN member_of ON club.club_name = member_of.club_name WHERE member_of.user_id = ?");
    $stmt->bind_param("s", $_SESSION["user_id"]);
    $stmt->execute();
    $myclubs = $stmt->get_result();


    $sql = "SELECT * FROM club";
    $clubs = $conn->query($sql);
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <title>Movie Mash</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/movieReviewPreview.css">
    <link rel="stylesheet" href="./styles/club.css">

    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
</head>

<body>
    <?php include('./components/web-header.php'); ?>
    <?php include('./components/clubPreview.php'); ?>

    <main>


    <div class = "adminPopup" id = "adminPopup" style="display:none;">
        <div class = "adminPopupBody" style="display:flex;justify-content:center;">

<div>
        <div>
            <form action="./scripts/create-club.php" method="post" >
                <input type="text" id="club_name" name="club_name" placeholder="Club Name" required>
                <br/>
                <textarea  rows="4" cols="50" type="textarea" id="club_desc" name="club_desc" placeholder="Club Description" required></textarea>
                <br/>
                <textarea  rows="4" cols="50" type="textarea" id="club_topics" name="club_topics" placeholder="Topics (separated by commas)" required></textarea>
                <br/>
                <button type="submit">Create Club!</button>

            </form>
        </div>


        </br>
        <button onclick="toggleAdminMenu()">Close Menu</button>

</div>
        </div>
    </div>

    <button onclick="toggleAdminMenu()">Create a club!</button>


        <h2>My Clubs</h2>

        <div style="display:grid; grid-template-columns: repeat(auto-fill,420px);column-gap:20px; row-gap:20px;"> 

            <?php 
                if ($myclubs->num_rows > 0) { 
                    while ($club = $myclubs->fetch_assoc()) {
                        create_club_preview($club, $conn); 
                    }
                } 
            ?>

        </div>


        <h2>Trending Clubs</h2>

        <div style="display:grid; grid-template-columns: repeat(auto-fill,420px);column-gap:20px; row-gap:20px;"> 

            <?php 
                if ($clubs->num_rows > 0) { 
                    while ($club = $clubs->fetch_assoc()) {
                        // create_movie_html($movie, $conn); 
                        create_club_preview($club, $conn); 

                    }
                } 
            ?>

        </div>


        

    </main>
    <footer>
        <p>&copy; 2025 Movie Mash. All rights reserved.</p>
    </footer>
</body>

<script src="./scripts/movie-dropdown.js" defer></script>


<script>
    function toggleAdminMenu() {
        var div = document.getElementById("adminPopup");
            if (div.style.display !== "none") {
                div.style.display = "none";
                document.body.classList.remove("menu-open");

            } else {
                div.style.display = "block";
                document.body.classList.add("menu-open");

                // Move to top of the page
                window.scrollTo(0, 0);

            }
    }
</script>

</html>