<?php
include '../../config/koneksi.php';

if (isset($_GET['id_nama_pemain'])) {
    $id_nama_user = $_GET['id_nama_pemain'];

    $result = mysqli_query($conn, "DELETE FROM `pemain` WHERE `id_nama_pemain` = '$id_nama_user'");

    if ($result) {
        header("Location: pemain.php"); // Redirect after successful deletion
        exit();
    } else {
        echo "Error deleting record: " . mysqli_error($conn);
    }
} else {
    echo "ID not specified";
}
