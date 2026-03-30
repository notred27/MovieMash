<?php
session_start();

// Database connection 
include_once('./config/db.php');


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$user_email = $_POST['email']; 
$user_name = $_POST['username']; 
$user_password = $_POST['password']; 


try {
    $sql = "SELECT COUNT(*) as uname_count FROM user WHERE display_name = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    if ($row['uname_count'] > 0) {
        // echo "This username is already associated with an account. Please use a different username.";
        header("Location: create-account.html?username=in_use");
    } else {

        $sql = "SELECT COUNT(*) as email_count FROM user WHERE email = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $user_email);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();

        if ($row['email_count'] > 0) {
            // If email already exists, show an error message
            // echo "This email is already associated with an account. Please use a different email.";
            header("Location: create-account.html?email=in_use");
        } else {


            // Get the total number of users to generate UID
            $sql = "SELECT COUNT(*) AS total_users FROM user";
            $res = $conn->query($sql);

            if ($res) {
                $row = $res->fetch_assoc();
                $num_users = $row['total_users'];

                $user_id = "U" . str_pad($num_users + 1, 5, '0', STR_PAD_LEFT);

                // Hash the password 
                $hashed_password = password_hash($user_password, PASSWORD_DEFAULT);

                $join_date = date("Y-m-d");
                $stmt = $conn->prepare("INSERT INTO user (user_id, display_name, password_hash, email, date_joined) VALUES (?, ?, ?, ?, ?)");
                $stmt->bind_param("sssss", $user_id, $user_name, $hashed_password, $user_email, $join_date);


                if ($stmt->execute()) {
                    // echo "New user created with ID: $user_id";

                    header("Location: landing.php?success=account_created");
            
                    exit();
                } else {
                    // echo "Error: " . $stmt->error;
                    header("Location: ./../error.html");

                }


                $stmt->close();
            } else {
                // echo "Error executing query: " . $conn->error;
                header("Location: ./../error.html");

            }
        }


    }

    $conn->close();

} catch (Exception $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
