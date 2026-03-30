<?php
require("db-connect.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Movie Mash</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/club.css">

</head>

<body>
    <?php include('./components/web-header.php'); ?>

    <main>

        <div style="display:grid;grid-template-columns: 1fr 1fr 1fr;">
            <form id="searchForm">
                <h3 style="margin:2px;">Movies</h3>
                <input type="text" autocomplete="off" id="movie_name" name="movie_name" placeholder="Movie Name"
                    value="<?= htmlspecialchars($_GET['movie_name'] ?? '') ?>">
                <br />

                <input type="text" autocomplete="off" id="release_year" name="release_year" placeholder="Release Year">
                <br />

                <!-- <input type="text" id="genres" name="genres" placeholder="Genres">
            <br />

            <input type="text" id="key_words" name="key_words" placeholder="Key words" value="<?= htmlspecialchars($_GET['key_words'] ?? '') ?>">
            <br /> -->

                <button type="submit">Search</button>
            </form>


            <form id="clubForm">
                <h3 style="margin:2px;">Clubs</h3>
                <input type="text" autocomplete="off" id="club_name" name="club_name" placeholder="Club Name">
                <br />

                <!-- <input type="text" id="club_topics" name="club_topics" placeholder="Club Topics">
            <br /> -->

                <button type="submit">Search</button>
            </form>

            <form id="userForm">
                <h3 style="margin:2px;">Users</h3>
                <input type="text" autocomplete="off" id="user_name" name="user_name" placeholder="Profile name"
                    value="<?= htmlspecialchars($_GET['user_name'] ?? '') ?>">
                <br />

                <button type="submit">Search</button>
            </form>
        </div>


        <h2>Search Results <span id="numResults" style="color:var(--accent-color);"> </span></h2>

        <label for="sort-option">Sort by:</label>
        <select name="sort-option" id="sort-option">
            <option value="recent">Recent</option>
            <option value="oldest">Oldest</option>
            <option value="az">Alphabetical (A-Z)</option>
            <option value="za">Alphabetical (Z-A)</option>
            <option value="highest">Rating (Highest)</option>
            <option value="lowest">Rating (Lowest)</option>
        </select>

        <div style="width: 100%;justify-content: center;display: flex;align-items: center;">
            <button id="loadMoreBtn" style="margin:20px;" onclick="loadLast()">Last Page</button>
            <span>Showing Page <span id="current-page" style="color:var(--accent-color);">1</span> of <span
                    id="total-pages">1</span></span>
            <button id="loadMoreBtn" style="margin:20px;" onclick="loadMore()">Next Page</button>
        </div>
        <div id="results"
            style="display:flex; flex-direction:row; flex-wrap:wrap; gap:10px; justify-content:space-evenly;min-height:300px;margin-top:20px;">

        </div>

        

    </main>

    <footer>
        <p>&copy; 2025 Movie Mash. All rights reserved.</p>
    </footer>

    <script>
        let lastSearchType = 'movies';

        var currentPage = 0;
        var numResults = 0;
        var numPages = 0;

        function get_movies() {

            currentPage = 0;
            document.getElementById('current-page').innerHTML = 1;


            // e.preventDefault();
            document.getElementById('results').innerHTML = "<p>Searching....</p>";

            const formData = new FormData(document.getElementById('searchForm'));
            const params = new URLSearchParams(formData);
            params.append('page', currentPage);

            const sortOption = document.getElementById('sort-option').value;


            fetch(`./scripts/search-movies.php?` + params.toString() + `&sort=${sortOption}`)
                .then(response => response.json())
                .then(data => {
                    document.getElementById('results').innerHTML = data.html;
                    numResults = data.numResults
                    document.getElementById('numResults').innerHTML = "(" + numResults + ")";
                    numPages = Math.ceil(numResults / 20);
                    document.getElementById('total-pages').innerHTML = numPages;


                })
                .catch(error => {
                    console.error('Search error:', error);
                    document.getElementById('results').innerHTML = "<p>Error loading search results.</p>";
                });
        }

        function loadMore() {
            if (currentPage + 1 >= numPages) {
                return;
            }

            currentPage++;
            document.getElementById('results').innerHTML = "<p>Searching....</p>";

            const formData = new FormData(document.getElementById('searchForm'));
            const params = new URLSearchParams(formData);
            params.append('page', currentPage);

            const sortOption = document.getElementById('sort-option').value;
            document.getElementById('current-page').innerHTML = currentPage + 1;

            fetch(`./scripts/search-movies.php?` + params.toString() + `&sort=${sortOption}`)
                .then(response => response.json())
                .then(data => {
                    document.getElementById('results').innerHTML = data.html;
                })
                .catch(error => {
                    console.error('Search error:', error);
                    document.getElementById('results').innerHTML = "<p>Error loading search results.</p>";
                });

        }

        function loadLast() {
            if (currentPage - 1 < 0) {
                return;
            }

            currentPage--;
            document.getElementById('results').innerHTML = "<p>Searching....</p>";

            const formData = new FormData(document.getElementById('searchForm'));
            const params = new URLSearchParams(formData);
            params.append('page', currentPage);

            const sortOption = document.getElementById('sort-option').value;
            document.getElementById('current-page').innerHTML = currentPage + 1;

            fetch(`./scripts/search-movies.php?` + params.toString() + `&sort=${sortOption}`)
                .then(response => response.json())
                .then(data => {
                    document.getElementById('results').innerHTML = data.html;
                })
                .catch(error => {
                    console.error('Search error:', error);
                    document.getElementById('results').innerHTML = "<p>Error loading search results.</p>";
                });
        }

        function get_users() {
            // e.preventDefault();

            const formData = new FormData(document.getElementById('userForm'));
            const params = new URLSearchParams(formData);

            const sortOption = document.getElementById('sort-option').value;


            fetch(`./scripts/search-users.php?` + params.toString() + `&sort=${sortOption}`)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('results').innerHTML = data;
                })
                .catch(error => {
                    console.error('Search error:', error);
                    document.getElementById('results').innerHTML = "<p>Error loading search results.</p>";
                });
        }

        function get_clubs() {
            // e.preventDefault();

            const formData = new FormData(document.getElementById('clubForm'));
            const params = new URLSearchParams(formData);

            const sortOption = document.getElementById('sort-option').value;


            fetch(`./scripts/search-clubs.php?` + params.toString() + `&sort=${sortOption}`)
                .then(response => response.text())
                .then(data => {
                    console.log("HEREHHH")
                    document.getElementById('results').innerHTML = data;
                })
                .catch(error => {
                    console.error('Search error:', error);
                    document.getElementById('results').innerHTML = "<p>Error loading search results.</p>";
                });
        }

        document.getElementById('searchForm').addEventListener('submit', function (e) {
            e.preventDefault();
            get_movies();
            lastSearchType = 'movies';

        });


        document.getElementById('clubForm').addEventListener('submit', function (e) {
            e.preventDefault();
            get_clubs();
            lastSearchType = 'club';

        });

        document.getElementById('userForm').addEventListener('submit', function (e) {
            e.preventDefault();
            get_users();
            lastSearchType = 'users';

        });

        // document.getElementById('sort-option').addEventListener('change', get_movies);

        document.getElementById('sort-option').addEventListener('change', function () {

            if (lastSearchType == "movies") {
                get_movies();
            } else if (lastSearchType == "users") {
                get_users();
            } else if (lastSearchType == "club") {
                get_clubs();
            }
        });


        // window.addEventListener('DOMContentLoaded', get_movies);

    </script>
</body>

</html>