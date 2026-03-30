<?php 
// Default config info. Must match info in docker-compose.yml
$servername = "db";
$username = "guest"; 
$password = "password123!";   
$dbname = "moviemingle";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>