
<?php
// the default header that is used at the top of every page
    echo   '<header> 
                <div style="display:grid;grid-template-columns:1fr 1fr 1fr 1fr 1fr 1fr;"> 
                    <h1 style="margin:0px;">Movie Mash</h1> 
                    <a href = "./home.php">Home</a>
                    <a href = "./search.php">Search</a>
                    <a href = "./clubs.php">Clubs</a>
                    <a href = "userpage.php?USER=' . $_SESSION["user_id"] . '"">Profile</a>
                    <a href = "./landing.php">Logout</a>
                </div>
            </header>';
?>