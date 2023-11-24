<?php
<<<<<<< HEAD
    include '../../config/koneksi.php';

    $nama_pemain = $_POST['nama_pemain'];
    $file_gambar = $_FILES['foto']['name'];
    $asal = $_POST['asal'];
    $tanggal_lahir = $_POST['tgl_lahir'];

    

    $tmp_file = $_FILES['foto']['tmp_name'];
=======
$nama_pemain = $_POST['nama_pemain'];
$file_gambar = $_FILES['foto']['name'];
$asal = $_POST['asal'];
$tanggal_lahir = $_POST['tgl_lahir'];

include('../../config/koneksi.php');

$file_gambar = $_FILES['foto']['name'];
$tmp_file = $_FILES['foto']['tmp_name'];
>>>>>>> 3b5f4880b47c0f919fcf13bcc64178929ba7347e

$path = "images";
$target_file = $path . '/' . basename($file_gambar);
move_uploaded_file($tmp_file, $target_file);



$result = mysqli_query($conn, "INSERT INTO `pemain` (`nama_pemain`, `foto`, `asal`, `tgl_lahir`) VALUES ('$nama_pemain', '$file_gambar', '$asal', '$tanggal_lahir');");

<<<<<<< HEAD
    header("Location: pemain.php");

?>
=======
header("Location: pemain.php");
>>>>>>> 3b5f4880b47c0f919fcf13bcc64178929ba7347e
