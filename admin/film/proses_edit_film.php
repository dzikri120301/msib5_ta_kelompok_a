<?php
include '../../config/koneksi.php';
date_default_timezone_set('Asia/Jakarta');

// get variable from form input
$kode = $_POST["kode_film"];
$trailer = $_POST["trailer"];
$film = $_POST["nama_film"];
$nama_genre = $_POST["nama_genre"];
$tahun = $_POST["tahun"];
$sinop = $_POST["sinop"];
$durasi = $_POST["durasi"];

// Upload Proses
$target_dir = "images/"; // path directory image akan di simpan
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]); // full path dari image yg akan di simpan
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) { // fungsi ini utk memindahkan file dr tempat asal ke target_file
    echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.<br>";
    $result = mysqli_query($conn, "UPDATE `tb_film` set
`kode_film` = '$kode', 
`trailer` = '$trailer', 
`nama_film` = '$film', 
`gambar` = '$target_file',
`id_genre` = '$nama_genre', 
`tahun` = '$tahun', 
`sinopsis` = '$sinop',
`durasi` = '$durasi' WHERE id = '$_GET[id]'");
} else {
    echo "Sorry, there was an error uploading your file.<br>";
}

$target_foto = "banner/"; // path directory image akan di simpan
$target_banner = $target_foto . basename($_FILES["banner"]["name"]); // full path dari image yg akan di simpan
if (move_uploaded_file($_FILES["banner"]["tmp_name"], $target_banner)) { // fungsi ini utk memindahkan file dr tempat asal ke target_file
    echo "The file " . htmlspecialchars(basename($_FILES["banner"]["name"])) . " has been uploaded.<br>";
    $result = mysqli_query($conn, "UPDATE `tb_film` set
`kode_film` = '$kode',
`trailer` = '$trailer', 
`nama_film` = '$film', 
`banner` = '$target_banner',
`id_genre` = '$nama_genre', 
`tahun` = '$tahun', 
`sinopsis` = '$sinop',
`durasi` = '$durasi' WHERE id = '$_GET[id]'");
} else {
    echo "Sorry, there was an error uploading your file.<br>";
}

$result = mysqli_query($conn, "UPDATE `tb_film` set 
`kode_film` = '$kode', 
`trailer` = '$trailer', 
`nama_film` = '$film',  
`id_genre` = '$nama_genre', 
`tahun` = '$tahun', 
`sinopsis` = '$sinop',
`durasi` = '$durasi' WHERE id = '$_GET[id]'");

header("Location:film.php");
