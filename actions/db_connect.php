<?php

$hostname = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "cr12_mounteverest_gregor";

// create connection
$connect = mysqli_connect($hostname, $username, $password, $dbname);

// check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
    /*}else {
    echo "Successfully Connected";*/
}
