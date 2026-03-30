<?php
session_start();

// Database connection 
// include_once('./config/db.php');
include_once(__DIR__ . '/config/db.php');

if (!isset($_SESSION['user_logged_in']) || $_SESSION['user_logged_in'] !== true) {
    header('Location: landing.php');
    exit;
}

?>