<?php
include '../../config/koneksi.php';

if (isset($_POST['kode_film'])) {
    $kode_film = $_POST['kode_film'];

    // Lakukan pengecekan di database
    $query = mysqli_query($conn, "SELECT * FROM tb_film WHERE kode_film = '$kode_film'");

    if (mysqli_num_rows($query) > 0) {
        echo "Kode Film sudah ada dalam database";
    } else {
        echo "OK";
    }
} else {
    echo "Parameter 'kode_film' tidak diterima";
}
