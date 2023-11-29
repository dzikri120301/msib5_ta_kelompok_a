<?php
include "../config/koneksi.php";
$review = $_POST['komen'];
$id = $_POST['id'];

$result = mysqli_query($conn, "insert into komentar (id_film, review) values ('$id', '$review')");

header("location:inner-page.php?id=$id#komentar-yuk");
