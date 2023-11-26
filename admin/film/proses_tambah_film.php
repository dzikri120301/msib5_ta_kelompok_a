<?php
include '../../config/koneksi.php';
date_default_timezone_set('Asia/Jakarta');

// get variable from form input
$kode_film = $_POST["kode_film"];
$trailer = $_POST["trailer"];
$nama_film = $_POST["nama_film"];
$genre = $_POST["nama_genre"];
$tahun = $_POST["tahun"];
$sinopsis = $_POST["sinopsis"];
$durasi = $_POST["durasi"];

// Upload Proses
$target_dir = "images/"; // path directory image akan di simpan
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]); // full path dari image yg akan di simpan
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) { // fungsi ini utk memindahkan file dr tempat asal ke target_file
    echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.<br>";
} else {
    echo "Sorry, there was an error uploading your file.<br>";
}

$target_foto = "banner/"; // path directory image akan di simpan
$target_banner = $target_foto . basename($_FILES["banner"]["name"]); // full path dari image yg akan di simpan
if (move_uploaded_file($_FILES["banner"]["tmp_name"], $target_banner)) { // fungsi ini utk memindahkan file dr tempat asal ke target_file
    echo "The file " . htmlspecialchars(basename($_FILES["banner"]["name"])) . " has been uploaded.<br>";
} else {
    echo "Sorry, there was an error uploading your file.<br>";
}

// Insert to DB
$result = mysqli_query($conn, "INSERT INTO `tb_film` (`id`,`kode_film`, `trailer`, `nama_film`, `gambar`, `banner`, `id_genre`, `tahun`, `sinopsis`,`durasi`) 
VALUES ('','$kode_film', '$trailer', '$nama_film', '$target_file', '$target_banner', '$genre', '$tahun', '$sinopsis', '$durasi');");

header("Location:film.php");

echo $result;

?>''