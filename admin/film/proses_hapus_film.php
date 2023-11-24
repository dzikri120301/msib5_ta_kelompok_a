<?php
include '../../config/koneksi.php';

$result = mysqli_query($conn, "DELETE from tb_film where `id` = '$_GET[id]'");


header("Location:film.php");
