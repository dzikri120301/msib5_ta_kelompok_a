<?php
include '../../config/koneksi.php';

$nama_genre = $_POST["nama_genre"];


$result = mysqli_query($conn, "UPDATE `genre` set `nama_genre` = '$nama_genre' where `id_nama_genre` = '$_GET[id_nama_genre]'");



header("Location:genre.php");
