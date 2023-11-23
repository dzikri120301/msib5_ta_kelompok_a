<?php
include '../../config/koneksi.php';

$nama_genre = $_POST["nama_genre"];

$result = mysqli_query($conn, "INSERT INTO `genre` ( `nama_genre`) VALUES ( '$nama_genre');");


header("Location:genre.php");
