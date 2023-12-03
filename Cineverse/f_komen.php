<?php
session_start();
include "../config/koneksi.php";
$review = $_POST['komen'];
$id = $_POST['id'];
$user = $_SESSION['username'];
$rating = $_POST['rating']; // Ubah nama_dropdown sesuai dengan atribut name pada elemen dropdown

$result_user = mysqli_query($conn, "SELECT id_nama_user FROM `user` WHERE username = '$user'");
$row_user = mysqli_fetch_assoc($result_user);
$id_user = $row_user['id_nama_user'];

$result = mysqli_query($conn, "INSERT INTO komentar (id_film, id_user, review, rating) VALUES ('$id', '$id_user', '$review', '$rating')");

header("location:detail_film.php?id=$id");
