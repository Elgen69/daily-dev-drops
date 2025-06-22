<?php
// auth.php - Simulated login

$users = [
    "elgen" => "1234",
    "admin" => "adminpass"
];

function login($username, $password) {
    global $users;
    if (isset($users[$username]) && $users[$username] === $password) {
        echo "Welcome, $username!";
    } else {
        echo "Access denied.";
    }
}

login("elgen", "1234");
?>
