<?php
    $nama_pemain = $_POST['nama_pemain'];
    $file_gambar = $_FILES['foto']['name'];
    $asal = $_POST['asal'];
    $tanggal_lahir = $_POST['tgl_lahir'];

    include('../config/koneksi.php');

    $file_gambar = $_FILES['foto']['name'];
    $tmp_file = $_FILES['foto']['tmp_name'];

    $path = "../images";
    $target_file = $path . '/' . basename($file_gambar);
    move_uploaded_file($tmp_file, $target_file);

    // Assuming you have an 'id_pemain' field in your form or as a parameter
    $id_pemain = $_POST['id_nama_pemain'];

    // Use SET clause for updating columns and WHERE clause to specify the record
    $result = mysqli_query($conn, "UPDATE `pemain` SET `nama_pemain`='$nama_pemain', `foto`='$file_gambar', `asal`='$asal', `tgl_lahir`='$tanggal_lahir' WHERE `id_nama_pemain`='$id_pemain'");

    header("Location: pemain.php");
?>