<?php
// Clear session when user logs out
    session_start(); 
    session_unset();  
    session_destroy(); 
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Movie Mash</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles/landing.css">
</head>

<body>
    
    <main>
        <div id="accountCreated" class="toast"></div>

        <div class="landingContainer">

            <div>
                <h1 style="font-size:60px;color:#D5FC51;font-weight:bold;">Movie Mash</h1>
                <p>Connect with fellow movie lovers and find the films people are talking about!</p>
            </div>

            <div>

                Login to your account

                <form action="./scripts/check-credentials.php" method="post" style="display:flex; flex-direction:column; justify-content:center;">
                    <input type="text" id="username" name="username" placeholder="Username" required>
                    <!-- <br/> -->

                    <input type="password" id="password" name="password" placeholder="Password" required>
                    <br/>

                    <!-- <a href="">Forgot password?</a> -->

                    <!-- <br/> -->

                    <button type="submit">Login</button>
                    <br/>

                    <a href="create-account.html">Don't have an account? Create one here.</a>
                </form>
            </div>
        </div>

    </main>

    <script>
        // Show success if account was just created
        function showToast(message) {
            const toast = document.getElementById("accountCreated");
            toast.textContent = message;
            toast.classList.add("show");

            setTimeout(() => {
                toast.classList.remove("show");
            }, 3000);
        }

        // Check if 'success' exists in the URL
        const params = new URLSearchParams(window.location.search);
        if (params.has("success")) {
            showToast("Account successfully created!");

            // Remove the success message from the URL
            window.history.replaceState({}, document.title, window.location.pathname);
        }
    </script>

</body>

</html>