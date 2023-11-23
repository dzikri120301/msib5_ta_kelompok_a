<?php
include 'koneksi.php';

$result = mysqli_query($conn, "DELETE from genre where `id_nama_review` = '$_GET[id_nama_review]'");


header("Location:index.php");
