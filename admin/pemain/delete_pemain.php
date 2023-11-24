
<?php
<<<<<<< HEAD
include '../../config/koneksi.php';

// Check if id_nama_pemain is set in the URL
if (isset($_GET['id'])) {
    $id_nama_pemain = $_GET['id'];

    // Use mysqli_query for the query and connection
    $query = "DELETE FROM pemain WHERE id='$id_nama_pemain'";
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
=======
// Include the config connection file
include '../../config/koneksi.php';

// Check if the 'id_pemain' parameter is set in the URL
if (isset($_GET['id_nama_pemain'])) {
    // Get the player ID from the URL
    $id_pemain = $_GET['id_nama_pemain'];

    // Prepare and execute the SQL query to delete the player record
    $query = "DELETE FROM `pemain` WHERE `id_nama_pemain`='$id_pemain'";
    $result = mysqli_query($conn, $query);

    if ($result) {
        // If the query is successful, redirect to the player data page
        header("Location: pemain.php");
        exit();
    } else {
        // If the query fails, display an error message
        echo "Error deleting player: " . mysqli_error($conn);
    }
} else {
    // If 'id_pemain' is not set in the URL, display an error message
    echo "Invalid request. Player ID not specified.";
}

// Close the config connection
mysqli_close($conn);
>>>>>>> 3b5f4880b47c0f919fcf13bcc64178929ba7347e
