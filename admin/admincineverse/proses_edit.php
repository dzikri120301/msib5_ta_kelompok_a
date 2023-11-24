<?php
include '../../config/koneksi.php';

$username = $_POST["username"];
$password = $_POST["password"];

$result = mysqli_query($conn, "UPDATE `admin` set `username`= '$username',`password`='$password' where `id` = '$_GET[id]'");



header("Location:admin.php");
?>