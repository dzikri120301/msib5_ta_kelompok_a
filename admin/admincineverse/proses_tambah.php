<?php
include '../../config/koneksi.php';

$username = $_POST["username"];
$password = $_POST["password"];

$result = mysqli_query($conn, "INSERT INTO `admin` (`username`,`password`) VALUES ('$username', '$password');");


header("Location:admin.php");
?>