<?php
include '../../config/koneksi.php';

// get variable from form input
$nama_aktor= $_POST["nama_pemain"];
$film = $_POST["nama_film"];
$peran = $_POST["peran"];

$result = mysqli_query($conn, "INSERT INTO `pemeran` (`id_pemeran`,`id_pemain`,`id_film`,`peran`) 
VALUES ('','$nama_aktor','$film','$peran');");

header("Location:peran.php");

echo $result;

?>''