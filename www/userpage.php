<?php
require("db-connect.php");

$target_user_id = htmlspecialchars($_GET["USER"]);

$sql = "SELECT * from user where user_id = ?;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $target_user_id);
$stmt->execute();
$target_user = $stmt->get_result()->fetch_assoc();


if (!function_exists('create_user_badge')) {
    include("./components/userBadge.php");
}

// Get followers and following
$sql = "SELECT user.display_name, user.user_id, user.user_img FROM user JOIN friends on user.user_id = friends.user_id where friend_id = ?;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $target_user_id);
$stmt->execute();
$followers = $stmt->get_result();


$sql = "SELECT user.display_name, user.user_id, user.user_img FROM user JOIN friends on user.user_id = friends.friend_id where friends.user_id = ?;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $target_user_id);
$stmt->execute();
$following = $stmt->get_result();



// Get number of reviews for this user

$sql = "SELECT COUNT(*) as review_count FROM review WHERE user_id = ?;";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $target_user_id);
$stmt->execute();
$review_count = $stmt->get_result()->fetch_assoc();
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <title>Movie Mash</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/movieReviewPreview.css">
    <link rel="stylesheet" href="./styles/club.css">
    <link rel="stylesheet" href="./styles/userpage.css">
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
</head>

<body>

    <?php include('./components/web-header.php'); ?>
    <main>

        <!-- Popup menus to display other users -->
        <div class="followPageContainer" id="followersDiv" style="display:none;">
            <div class="adminPopupBody"
                style="display:flex;align-items:center;flex-direction:column;max-width:600px;min-width:460px;max-height:600px;">
                <button onclick="toggleFollowersDiv()" style="position:absolute;left:20px;top:20px;">Back</button>

                <!-- Eventually add a function to format large values (i.e. 100k, 3.4M), but don't need it for this scale-->
                <h2 style="margin:0px;margin-bottom:10px;">Users that follow <span
                        style="color:var(--accent-color);"><?php echo $target_user["display_name"]; ?></span>
                    <?php echo '(' . $followers->num_rows . ')'; ?>: </h2>

                <!-- <input id="followerSearch" placeholder="Search for users:" style="margin:20px;"></input> -->



                <div
                    style="overflow-y:scroll;height:100%;background-color:#282828;padding:10px;border-radius:4px;min-width:300px;">
                    <?php
                    if ($followers->num_rows > 0) {
                        while ($follower = $followers->fetch_assoc()) {
                            create_user_badge($follower, $conn);

                            // echo '<button>Follow</button>';
                        }
                    }
                    ?>
                </div>


            </div>
        </div>


        <div class="followPageContainer" id="followingDiv" style="display:none;">
            <div class="adminPopupBody"
                style="display:flex;align-items:center;flex-direction:column;max-width:600px;min-width:460px;max-height:600px;">
                <button onclick="toggleFollowingDiv()" style="position:absolute;left:20px;top:20px;">Back</button>

                <h2 style="margin:0px;margin-bottom:10px;">Users that <span
                        style="color:var(--accent-color);"><?php echo $target_user["display_name"]; ?></span> follows
                    <?php echo '(' . $following->num_rows . ')'; ?>:
                </h2>



                <div
                    style="overflow-y:scroll;height:100%;background-color:#282828;padding:10px;border-radius:4px;min-width:300px;">

                    <?php
                    if ($following->num_rows > 0) {
                        while ($follow = $following->fetch_assoc()) {
                            create_user_badge($follow, $conn);
                        }
                    }
                    ?>
                </div>
            </div>
        </div>


        <!-- Header that shows info about the user -->
        <div id="userHeader">
            <?php

            echo '<img id="profileImg" src="' . $target_user["user_img"] . '" alt="User icon"> <h1 id="username">' . $target_user["display_name"] . '</h1>';

            if ($target_user["user_id"] != $_SESSION["user_id"]) {

                $sql = "SELECT COUNT(*) AS is_friend FROM friends WHERE user_id = ? and friend_id = ?;";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("ss", $_SESSION["user_id"], $target_user_id);
                $stmt->execute();
                $f = $stmt->get_result()->fetch_assoc();

                if ($f["is_friend"] == 0) {
                    echo '<button id="toggleFollowBtn" class="large-btn follow"> Follow </button>';
                } else {
                    echo '<button id="toggleFollowBtn" class="large-btn following"> Following </button>';
                }

            }
            // else {
            //     echo '<button class="userBtn"> Rename </button>
            //         <div id="editIcon">
            //             <img src="./assets/pencil.svg" alt="User icon" style="width:20px;height:20px;">
            //         </div>';
            // }
            
            echo '<button id="followerStats" class="large-btn" onclick="toggleFollowersDiv()">' . $followers->num_rows . ' followers</button> 
        <button id="followingStats" class="large-btn" onclick="toggleFollowingDiv()">' . $following->num_rows . ' following</button>';

            ?>
        </div>

        <h2>Your Reviews <?php echo '(<span id="numReviews">' . $review_count["review_count"] . '</span>)'; ?></h2>

        <label for="sort-option">Sort by:</label>
        <select name="sort-option" id="sort-option">
            <option value="recent">Recent</option>
            <option value="oldest">Oldest</option>
            <option value="highest">Highest Rating</option>
            <option value="lowest">Lowest Rating</option>
        </select>


        <!-- Contains reviews after query -->
        <div id="row-container" class="reviewContainer"></div>


        <div style="width: 100%;justify-content: center;display: flex;align-items: center;">
            <button id="loadMoreBtn" style="margin:20px;" onclick="lastPage()">Last Page</button>
            <span>Showing Page <span id="current-page" style="color:var(--accent-color);">1</span> of <?php echo ceil($review_count["review_count"] / 10); ?></span>
            <button id="loadMoreBtn" style="margin:20px;" onclick="nextPage()">Next Page</button>
        </div>

    </main>

    <footer>
        <p>&copy; 2025 Movie Mash. All rights reserved.</p>
    </footer>

    <script src="./scripts/movie-dropdown.js" defer></script>

    <script>
        var current_page = 0;

        function sortReviews() {
            const sortOption = this.value;
            current_page = 0;
            document.getElementById('current-page').innerHTML = current_page + 1;


            fetch(`./scripts/load-rows.php?sort=${sortOption}&id=${<?php echo json_encode($target_user_id); ?>}`)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('row-container').innerHTML = data;
                    // document.getElementById('numReviews').innerHTML = document.getElementsByClassName('movieReview ').length;
                })
                .catch(error => console.error('Error fetching sorted data:', error));
        }

        function nextPage() {
            if (current_page >= <?php echo ceil($review_count["review_count"] / 10) - 1; ?>) {
                return;
            }

            current_page++;
            const sortOption = document.getElementById('sort-option').value;
            document.getElementById('current-page').innerHTML = current_page + 1;

            fetch(`./scripts/load-rows.php?sort=${sortOption}&id=${<?php echo json_encode($target_user_id); ?>}&page=${current_page}`)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('row-container').innerHTML = data;
                    // document.getElementById('numReviews').innerHTML = document.getElementsByClassName('movieReview ').length;
                })
                .catch(error => console.error('Error fetching sorted data:', error));
        }

        function lastPage() {
            if (current_page == 0) {
                return;
            }

            current_page--;
            const sortOption = document.getElementById('sort-option').value;
            document.getElementById('current-page').innerHTML = current_page + 1;

            fetch(`./scripts/load-rows.php?sort=${sortOption}&id=${<?php echo json_encode($target_user_id); ?>}&page=${current_page}`)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('row-container').innerHTML = data;
                    // document.getElementById('numReviews').innerHTML = document.getElementsByClassName('movieReview ').length;
                })
                .catch(error => console.error('Error fetching sorted data:', error));
        }

        // Sort reviews when dropdown option is changed
        document.getElementById('sort-option').addEventListener('change', sortReviews);

        // Load reviews initially on redirect
        window.addEventListener('DOMContentLoaded', sortReviews);

        function changeFriend() {
            fetch(`./scripts/toggle-friend.php?friend_id=${<?php echo json_encode($target_user_id); ?>}`)
                .then(response => response.text())
                .then(data => {
                    const btn = document.getElementById('toggleFollowBtn');
                    btn.textContent = data;

                    if (data == "Following") {
                        btn.classList.remove('follow');
                        btn.classList.add('following');
                    } else {
                        btn.classList.remove('following');
                        btn.classList.add('follow');
                    }
                })
                .catch(error => console.error('Error fetching sorted data:', error));
        }

        // Add an event listener to the button to trigger the function on click
        if (document.getElementById('toggleFollowBtn') != null) {
            document.getElementById('toggleFollowBtn').addEventListener('click', changeFriend);
        }

        function toggleFollowingDiv() {
            var div = document.getElementById("followingDiv");
            if (div.style.display === "none") {
                div.style.display = "flex";
                document.body.classList.add("menu-open");

            } else {
                div.style.display = "none";
                document.body.classList.remove("menu-open");

            }

            document.getElementById("followingSearch").value = "";
            const followers = document.querySelectorAll('.userBadge');
            followers.forEach(follower => {
                follower.style.display = 'flex';
            });
        }

        function toggleFollowersDiv() {
            var div = document.getElementById("followersDiv");
            if (div.style.display === "none") {
                div.style.display = "flex";
                document.body.classList.add("menu-open");


            } else {
                div.style.display = "none";
                document.body.classList.remove("menu-open");

            }

            document.getElementById("followerSearch").value = "";
            const followers = document.querySelectorAll('.userBadge');
            followers.forEach(follower => {
                follower.style.display = 'flex';
            });
        }

        function filterResults(event) {
            const search = event.target.value.toLowerCase();
            const followers = document.querySelectorAll('.userBadge');

            followers.forEach(follower => {
                const name = follower.dataset.id.toLowerCase();
                follower.style.display = name.includes(search) ? 'block' : 'none';
            });
        }

        document.addEventListener("DOMContentLoaded", function () {
            console.log("DOM fully loaded");

            document.getElementById("followerSearch").addEventListener("input", filterResults);
            document.getElementById("followingSearch").addEventListener("input", filterResults);
        });
    </script>

</body>

</html>