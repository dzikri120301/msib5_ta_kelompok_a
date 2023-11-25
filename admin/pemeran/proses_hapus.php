<?php
include '../../config/koneksi.php';

$result = mysqli_query($conn, "DELETE from pemeran where `id_pemeran` = '$_GET[id_pemeran]'");


header("Location:peran.php");