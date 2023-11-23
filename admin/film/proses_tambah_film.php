<?php
include '../../config/koneksi.php';
date_default_timezone_set('Asia/Jakarta');

// get variable from form input
$kode_film = $_POST["kode_film"];
$nama_film = $_POST["nama_film"];
$genre = $_POST["nama_genre"];
$tahun = $_POST["tahun"];
$sinopsis = $_POST["sinopsis"];
$pemain = $_POST["nama_pemain"];
$durasi = $_POST["durasi"];

// Upload Proses
$target_dir = "images/"; // path directory image akan di simpan
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]); // full path dari image yg akan di simpan
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) { // fungsi ini utk memindahkan file dr tempat asal ke target_file
    echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.<br>";
} else {
    echo "Sorry, there was an error uploading your file.<br>";
}

$result = mysqli_query($conn, "INSERT INTO `tb_film` (`id`,`kode_film`,`nama_film`, `gambar`, `id_genre`, `tahun`, `sinopsis`, `id_pemain`, `durasi`) 
VALUES ('','$kode_film', '$nama_film', '$target_file', '$genre', '$tahun', '$sinopsis', '$pemain', '$durasi');");

header("Location:film.php");

echo $result;

?>''