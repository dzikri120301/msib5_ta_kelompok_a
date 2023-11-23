<?php
    $nama_pemain = $_POST['nama_pemain'];
    $file_gambar = $_FILES['foto']['name'];
    $asal = $_POST['asal'];
    $tanggal_lahir = $_POST['tgl_lahir'];

    include('../../config/koneksi.php');

    $file_gambar = $_FILES['foto']['name'];
    $tmp_file = $_FILES['foto']['tmp_name'];

    $path = "images";
    $target_file = $path . '/' . basename($file_gambar);
    move_uploaded_file($tmp_file, $target_file);



    $result = mysqli_query($conn, "INSERT INTO `pemain` (`nama_pemain`, `foto`, `asal`, `tgl_lahir`) VALUES ('$nama_pemain', '$file_gambar', '$asal', '$tanggal_lahir');");

    header("Location: pemain.php");
?>