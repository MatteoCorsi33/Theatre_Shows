<?php
$hostname = "127.0.0.1";
$username = "root";
$password = "";
$database = "theatre_shows";
$port = "3306";
$conn = new mysqli($hostname, $username, $password, $database, $port);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>