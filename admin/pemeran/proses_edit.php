<?php
include '../../config/koneksi.php';

// get variable from form input
$nama_aktor= $_POST["nama_pemain"];
$film = $_POST["nama_film"];
$peran = $_POST["peran"];

$result = mysqli_query($conn, "UPDATE `pemeran` set `id_pemeran` = '$peran' where `id_pemeran` = '$_GET[id_pemeran]'");


header("Location:peran.php");

echo $result;

?>''