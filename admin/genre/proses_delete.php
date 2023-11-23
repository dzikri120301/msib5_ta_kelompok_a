<?php
include '../../config/koneksi.php';

$result = mysqli_query($conn, "DELETE from genre where `id_nama_genre` = '$_GET[id_nama_genre]'");


header("Location:genre.php");
