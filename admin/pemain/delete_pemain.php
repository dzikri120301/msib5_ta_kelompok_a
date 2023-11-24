<?php
include '../../config/koneksi.php';

// Check if id_nama_pemain is set in the URL
if (isset($_GET['id_nama_pemain'])) {
    $id_nama_pemain = $_GET['id_nama_pemain'];

    // Use mysqli_query for the query and connection
    $query = "DELETE FROM pemain WHERE id_nama_pemain='$id_nama_pemain'";
    $hasil = mysqli_query($conn, $query);

    if ($hasil) {
        header("location:pemain.php");
    } else {
        echo "Hapus data gagal: " . mysqli_error($conn);
    }
} else {
    echo "ID pemain tidak valid.";
}
?>