<?php
include '../../config/koneksi.php';
date_default_timezone_set('Asia/Jakarta');

// get variable from form input
$kode = $_POST["kode_film"];
$film = $_POST["nama_film"];
$nama_genre = $_POST["nama_genre"];
$tahun = $_POST["tahun"];
$sinop = $_POST["sinop"];
$nama_pemain = $_POST["nama_pemain"];
$durasi = $_POST["durasi"];

// Upload Proses
$target_dir = "images/"; // path directory image akan di simpan
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]); // full path dari image yg akan di simpan
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) { // fungsi ini utk memindahkan file dr tempat asal ke target_file
    echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.<br>";
    $result = mysqli_query($conn, "UPDATE `tb_film` set
`kode_film` = '$kode', 
`nama_film` = '$film', 
`gamba` = '$target_file',', 
`id_genre` = '$nama_genre', 
`tahun` = '$tahun', 
`sinopsis` = '$sinop',
`id_pemain` = '$nama_pemain',
`durasi` = '$durasi' WHERE id = '$_GET[id]'");
} else {
    echo "Sorry, there was an error uploading your file.<br>";
}

$result = mysqli_query($conn, "UPDATE `tb_film` set 
`kode_film` = '$kode', 
`nama_film` = '$film',  
`id_genre` = '$nama_genre', 
`tahun` = '$tahun', 
`sinopsis` = '$sinop',
`id_pemain` = '$nama_pemain',
`durasi` = '$durasi' WHERE id = '$_GET[id]'");

header("Location:film.php");
