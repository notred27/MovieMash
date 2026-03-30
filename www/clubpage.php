<?php
    require("db-connect.php");

    $target_club = htmlspecialchars($_GET["CLUB"]);

    // Get club data
    $sql = "SELECT * from club where club_name = ?;";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $target_club);
    $stmt->execute();
    $club = $stmt->get_result()->fetch_assoc();

    // Get user data for this club
    $sql = "SELECT * from member_of where club_name = ? AND user_id = ?;";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $target_club, $_SESSION["user_id"]);
    $stmt->execute();
    $mem_status = $stmt->get_result();

    // Make sure I load the badge function
    if (!function_exists('create_user_badge')) {
        include("./components/userBadge.php");
    }

    $is_admin = false;
    $is_owner = false;
    
    if ($mem_status->num_rows > 0) {
        $mem_role = $mem_status->fetch_assoc();
        
        $admin_level = $mem_role["admin_level"];
        $is_admin = in_array($admin_level, ["ADM", "OWN"]);
        $is_owner = $admin_level === "OWN";
    }

// Data for movies that will be injected into the div in the poll menu (for poll_about)
    $sql = "SELECT imdb, title from movie;";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $movies = $stmt->get_result();

    $movie_data = [];
    while ($row = $movies->fetch_assoc()) {
        $movie_data[] = $row;
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Movie Mash</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/userpage.css">
    <link rel="stylesheet" href="./styles/club.css">
    <link rel="stylesheet" href="./styles/movieReviewPreview.css">
    <link rel="stylesheet" href="./styles/poll.css">
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
</head>

<body>
    <?php include('./components/web-header.php'); ?>
    <main>

        <!-- Club admin menu -->
        <?php if ($is_admin): ?>
            <div class="adminPopup" id="adminPopup" style="display:none;">
                <div class="adminPopupBody">
                    <div class="adminPopupHeader">
                        <span>Admin Menu</span>
                        <button onclick="toggleAdminMenu();">Close Menu</button>
                    </div>

                    <h3>Club Members</h3>
                    <div style="display:grid; grid-template-columns: repeat(auto-fill, 225px); gap:10px; padding:5px; background-color:black; border-radius:4px; overflow-y:scroll; height:150px;">
                        <?php 
                        $sql = "SELECT user.display_name, user.user_id, user.user_img, member_of.admin_level, member_of.club_name FROM member_of JOIN user on user.user_id = member_of.user_id where member_of.club_name = ? AND member_of.admin_level LIKE 'MEM';";
                        $stmt = $conn->prepare($sql);
                        $stmt->bind_param("s", $target_club);
                        $stmt->execute();
                        $members = $stmt->get_result();

                        if ($members->num_rows > 0) {
                            while ($member = $members->fetch_assoc()) {
                                echo '<div style="background-color:#282828;padding:5px;border-radius:5px;height:50px;"><span style="display:flex;flex-direction:row;"><div style="width:200px;">';
                                create_user_badge($member, $conn);
                                echo '</div><div class="menuContainer">
                                    <img class="menuIcon" src="./assets/menu.svg" alt="menuIcon">
                                    <div class="dropdownMenu">';
                                echo '<button class="promoteBtn" onclick="toggleAdminLevel('. $member['user_id']. ',\''. $member['club_name'] .'\');">Promote</button>';
                                echo '<button class="kickBtn" onclick="removeMember('. $member['user_id']. ',\''. $member['club_name'] .'\');">Kick</button>';
                                echo '</div></div></span></div>';
                            }
                        }
                        ?>
                    </div>

                    <h3>Club Admin</h3>
                    <div style="display:grid; grid-template-columns: repeat(auto-fill, 225px); gap:10px; padding:5px; background-color:black; border-radius:4px; overflow-y:scroll; height:150px;">
                        <?php 
                        $sql = "SELECT user.display_name, user.user_id, user.user_img, member_of.admin_level, member_of.club_name FROM member_of JOIN user on user.user_id = member_of.user_id where member_of.club_name = ? AND member_of.admin_level NOT LIKE 'MEM';";
                        $stmt = $conn->prepare($sql);
                        $stmt->bind_param("s", $target_club);
                        $stmt->execute();
                        $members = $stmt->get_result();

                        if ($members->num_rows > 0) {
                            while ($member = $members->fetch_assoc()) {
                                echo '<div style="background-color:#282828;padding:5px;border-radius:5px;height:50px;"><span style="display:flex;flex-direction:row;"><div style="width:200px;">';
                                create_user_badge($member, $conn);
                                echo '</div><div class="menuContainer">
                                    <img class="menuIcon" src="./assets/menu.svg" alt="menuIcon">
                                    <div class="dropdownMenu">';
                                echo '<button class="promoteBtn" onclick="toggleAdminLevel('. $member['user_id']. ',\''. $member['club_name'] .'\');">Demote</button>';
                                echo '<button class="kickBtn" onclick="removeMember('. $member['user_id']. ',\''. $member['club_name'] .'\');">Kick</button>';
                                echo '</div></div></span></div>';
                            }
                        }
                        ?>
                    </div>

                    <div style="width:100%; display:flex; flex-direction:row; justify-content:space-evenly;">
                        <div>
                            <h3>Change Club Description</h3>
                            <textarea rows="4" cols="50" placeholder="New Description" id = "newDesc"><?php echo $club["club_description"]; ?></textarea><br>
                            <button onclick = "changeDesc();">Change Club Description</button>
                        </div>

                        <div>
                            <h3>Change Club Topics</h3>
                            <textarea rows="4" cols="50" placeholder="Club Topics" id = "new_topics"><?php 
                                // echo current topics (that can be changed) 
                                $sql = "SELECT topic FROM club_topics WHERE club_name = ?;";
                                $stmt = $conn->prepare($sql);
                                $stmt->bind_param("s", $target_club);
                                $stmt->execute();
                                $topics_res = $stmt->get_result();
                                $tags = [];
                                while ($row = $topics_res->fetch_assoc()) {
                                    $tags[] = $row["topic"];
                                }
                                echo htmlspecialchars(implode(", ", $tags));
                            ?></textarea><br>
                            <button onclick = "changeTopics();">Change Club Topics</button>
                        </div>
                    </div>

                    <br><br>
                    <?php if ($is_owner): ?>
                        <form action="./scripts/delete-club.php" method="post" onsubmit="return confirm('Are you sure you want to delete this club?');">
                            <input type="hidden" name="club_name" value="<?php echo htmlspecialchars($club['club_name']); ?>">
                            <button type="submit" style="background-color: red; color: white; border: none; padding: 8px 12px; border-radius: 4px;">
                                Delete Club
                            </button>
                        </form>

                    <?php endif; ?>

                </div>
            </div>
        <?php endif; ?>

        <!-- Club members pop-up -->
        <?php 
            $sql = "SELECT user.display_name, user.user_id, user.user_img, member_of.admin_level FROM member_of JOIN user on user.user_id = member_of.user_id where member_of.club_name = ?;";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $target_club);
            $stmt->execute();
            $members = $stmt->get_result();

            echo '<div id="memberDiv" style="display:none; background-color:#282828; position:absolute; top:10vh; left:20vw; z-index:200; width:60vw; height:70vh;"><button onclick="toggleMemberDiv()">Cancel</button><br/> SEARCH <input><br/><div style="overflow-y:scroll;height:60vh;">';
            if ($members->num_rows > 0) {
                while ($member = $members->fetch_assoc()) {
                    create_user_badge($member, $conn);
                }
            }
            echo '</div></div>';
         ?>


        <!-- Create Poll Popup -->
        <div id="pollDiv" style="display:none; background-color:#282828; position:absolute; top:10vh; left:20vw; z-index:200; width:60vw; height:70vh;"><button onclick="togglePollDiv()">Cancel</button><br/>
    
        <h1>Create a poll!</h1>

        <form action="./scripts/create-poll.php" method="post" style="display:flex;flex-direction:row;justify-content:center;gap:20px;">

                <div>
                    <h3>Poll Description</h3>
                    <input type="hidden" name="club_name" value="<?php echo htmlspecialchars($club['club_name']); ?>">

                    <textarea  rows="2" cols="50" type="textarea" id="poll_desc" name="poll_desc" placeholder="Poll Description" required></textarea>
                    <br/>
                    <input type="text" id="opt_1" name="opt_1" placeholder="Option 1"></input>
                    <br/>
                    <input type="text" id="opt_2" name="opt_2" placeholder="Option 2"></input>
                    <br/>
                    <input type="text" id="opt_3" name="opt_3" placeholder="Option 3"></input>
                    <br/>
                    <input type="text" id="opt_4" name="opt_4" placeholder="Option 4"></input>
                    <br/>
                    <button type="submit">Create Poll!</button>
                </div>

                <div>
                    <h3>Movies This Poll is About</h3>

                <div class="multi-select-container">
                    <input type="text" class="search-box" placeholder="Search...">
                    <ul class="options-list" id="optionsList">
                        
                    </ul>
                </div>
                </div>
            </form>
        </div>
        
        


        <!-- Club Header -->
        <div class="clubHeader">
            <h1 class = "clubTitleRow"><?php echo $club["club_name"] ?></h1>

            <div class="clubMakePostRow"><button onclick="togglePollDiv()">Create Post</button></div>

            <div class = "clubMemberRow">
                <?php
                echo '<button onclick="toggleMemberDiv()">'. $members->num_rows .' members</button>';
                ?>

                <?php
                    if ($mem_status->num_rows == 0) {
                        echo '<button id="toggleMemberBtn">Join</button>';
                    } else {
                        if ($mem_role["admin_level"] == "OWN") {
                            echo '<button onclick="toggleAdminMenu()">Show Admin Menu</button>';
                            echo '<span>&nbsp;You own this club</span>';
                        } else if ($mem_role["admin_level"] == "ADM") {
                            echo '<button onclick="toggleAdminMenu()">Show Admin Menu</button>';
                            echo '<span>&nbsp;You are an admin in this club</span>';
                        } else {
                            echo '<button id="toggleMemberBtn">Leave</button>';
                        }
                    }
                ?>
            </div>

            <p class = "ClubDescRow"><?php echo $club["club_description"] ?></p> 

            <div class = "clubTagRow">
                <?php 
                $sql = "SELECT * from club_topics where club_name = ?;";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("s", $target_club);
                $stmt->execute();
                $topics = $stmt->get_result();

                if ($topics->num_rows > 0) {
                    echo 'Topics: ';
                    while ($topic = $topics->fetch_assoc()) {
                        echo '<span class="clubTag">' . $topic["topic"] . '</span>';
                    }
                } else {
                    echo "No topics.";
                }
                ?>
            </div>

        </div>

        <!-- Feed that shows all polls and reviews (should be by date, combine these objs tho) -->
        <div style="display:grid; grid-template-columns: repeat(auto-fill, 520px); gap:10px;">
            <?php 
            include('./components/poll.php');

            $sql = "SELECT * from poll where in_club = ?;";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $target_club);
            $stmt->execute();
            $reviews = $stmt->get_result();

            if ($reviews->num_rows > 0) {
                while ($review = $reviews->fetch_assoc()) {
                    create_poll_html($review, $conn);
                }
            }
            ?>

            <?php 
            include('./components/movieReviewPreview.php');

            $sql = "SELECT * from review where in_club = ?;";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $target_club);
            $stmt->execute();
            $reviews = $stmt->get_result();

            if ($reviews->num_rows > 0) {
                while ($review = $reviews->fetch_assoc()) {
                    create_movie_review_preview($review, $conn);
                }
            }
            ?>
        </div>
    </main>

    <footer>
        <p>&copy; 2025 Movie Mash. All rights reserved.</p>
    </footer>

    <script src="./scripts/movie-dropdown.js" defer></script>

    <!-- Poll Dropdown script -->
    <script>
        // Get movie data from SQL
        const movies = <?php echo json_encode($movie_data); ?>;
        const selectedValues = new Set();

        const optionsList = document.getElementById('optionsList');
        const searchBox = document.querySelector('.search-box');
        console.log(movies);

        function filterMovies(filter = '') {
            optionsList.innerHTML = '';
            const filtered = movies.filter(movie =>
                movie.title.toLowerCase().includes(filter.toLowerCase())
            );

            filtered.forEach(movie => {
                const imdb = movie.imdb;
                const li = document.createElement('li');
                li.innerHTML = `
                <label>
                    <input type="checkbox" name="movies[]" value="${imdb}" ${selectedValues.has(imdb) ? 'checked' : ''}>
                    ${movie.title}
                </label>`;
                optionsList.appendChild(li);

                li.querySelector('input').addEventListener('change', function (e) {
                if (e.target.checked) {
                    selectedValues.add(imdb);
                } else {
                    selectedValues.delete(imdb);
                }
                });
            });
        }

        // Make sure this is always triggered when typing
        searchBox.addEventListener('input', (e) => {
            filterMovies(e.target.value);
        });
    </script>

    <!-- Other general scripts and post requests for php -->
    <script>
        // Initial option on a poll
        function selectOption(poll, option) {
            fetch(`./scripts/select-poll-option.php?poll_id=${poll}&opt_id=${option}`)
                .then(response => response.text())
                .then(html => {
                    const pollContainer = document.getElementById(`poll-${poll}`);
                    pollContainer.innerHTML = html;
                })
                .catch(error => console.error("Error updating poll:", error));
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

        // Change if you are joining/leaving this club
        function toggleMember() {
            fetch(`./scripts/toggle-club-member.php?CLUB=<?php echo urlencode($club["club_name"]); ?>`)
                .then(response => response.text())
                .then(data => {
                    const btn = document.getElementById('toggleMemberBtn');
                    btn.textContent = data;
                })
                .catch(error => console.error('Error fetching sorted data:', error));
        }

        const toggleBtn = document.getElementById('toggleMemberBtn');
        if (toggleBtn) {
            toggleBtn.addEventListener('click', toggleMember);
        }

        // ======== Toggle menus ======== //
        function toggleMemberDiv() {
            var div = document.getElementById("memberDiv");
            div.style.display = (div.style.display === "none") ? "block" : "none";
        }

        function togglePollDiv() {
            var div = document.getElementById("pollDiv");
            div.style.display = (div.style.display === "none") ? "block" : "none";
        }

        // Toggle the admin menu showing
        function toggleAdminMenu() {
            var div = document.getElementById("adminPopup");
            if (div.style.display == "none") {
                div.style.display = "block";
                document.body.classList.add("menu-open");
                window.scrollTo(0, 0);
                
            } else {
                div.style.display = "none";
                document.body.classList.remove("menu-open");
            }
        }

        // Change a member's admin status
        function toggleAdminLevel(userId, clubName) {
            fetch(`./scripts/toggle-admin.php?user_id=${userId}&club_name=${clubName}`)
                .then(res => res.text())
                .then(msg => {
                    console.log("Server response:", msg);
                    alert(msg);
                    location.reload();
                })
                .catch(err => console.error("Toggle admin error:", err));
        }

        function removeMember(userId, clubName) {
            fetch(`./scripts/remove-member.php?user_id=${userId}&club_name=${clubName}`)
                .then(res => res.text())
                .then(msg => {
                    console.log("Server response:", msg);
                    alert(msg);
                    location.reload();
                })
                .catch(err => console.error("Toggle admin error:", err));
        }

        // Change the club's description
        function changeDesc() {
            console.log("here!");
            const desc = document.getElementById("newDesc").value;
            const encoded = encodeURIComponent(desc);
            fetch(`./scripts/update-club-desc.php?desc=${encoded}&club_name=${encodeURIComponent("<?php echo $club["club_name"]; ?>")}`)
                .then(res => res.text())
                .then(msg => {
                    console.log("Server response:", msg);
                    alert(msg);
                    location.reload();
                })
                .catch(err => console.error("Toggle admin error:", err));
        }


        function changeTopics(){
            const desc = document.getElementById("new_topics").value;
            const encoded = encodeURIComponent(desc);
            fetch(`./scripts/update-club-topics.php?topics=${encoded}&club_name=${encodeURIComponent("<?php echo $club["club_name"]; ?>")}`)
                .then(res => res.text())
                .then(msg => {
                    console.log("Server response:", msg);
                    alert(msg);
                    location.reload();
                })
                .catch(err => console.error("Toggle admin error:", err));
        }
    </script>
</body>

</html>