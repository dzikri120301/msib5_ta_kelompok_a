<?php
    // Include the config connection file
    include('../config/koneksi.php');

    // Check if the 'id_pemain' parameter is set in the URL
    if (isset($_GET['id_nama_pemain'])) {
        // Get the player ID from the URL
        $id_pemain = $_GET['id_nama_pemain'];

        // Prepare and execute the SQL query to delete the player record
        $query = "DELETE FROM `pemain` WHERE `id_nama_pemain`='$id_pemain'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            // If the query is successful, redirect to the player data page
            header("Location: data_pemain.php");
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
?>