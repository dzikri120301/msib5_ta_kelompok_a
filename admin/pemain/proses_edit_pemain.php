<?php
    include '../../config/koneksi.php';

    // Check if the form is submitted
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        // Get form data
        $id_nama_pemain = $_POST['id_nama_pemain'];
        $nama_pemain = $_POST['nama_pemain'];
        $file_gambar = $_FILES['foto']['name'];
        $asal = $_POST['asal'];
        $tanggal_lahir = $_POST['tgl_lahir'];

        // Check if a file is uploaded
        if (!empty($file_gambar)) {
            $tmp_file = $_FILES['foto']['tmp_name'];
            $path = "images/";
            $target_file = $path . '/' . basename($file_gambar);
            move_uploaded_file($tmp_file, $target_file);
        }

        // Use SET clause for updating columns and WHERE clause to specify the record
        $result = mysqli_query($conn, "UPDATE pemain SET nama_pemain='$nama_pemain', foto='$file_gambar', asal='$asal', tgl_lahir='$tanggal_lahir' WHERE id_nama_pemain='$id_nama_pemain'");

        // Check if the update was successful
        if ($result) {
            header("Location: pemain.php");
            exit;
        } else {
            echo "Error updating player record: " . mysqli_error($conn);
        }
    } else {
        echo "Invalid request.";
    }
?>