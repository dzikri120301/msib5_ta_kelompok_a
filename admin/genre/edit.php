<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
</head>

<body>
    <?php
    include '../../config/koneksi.php';

    $genre = mysqli_query($conn, "SELECT * FROM genre where id_nama_genre='$_GET[id_nama_genre]'");


    while ($g = mysqli_fetch_array($genre)) {
        $id_nama_genre = $g["id_nama_genre"];
        $nama_genre = $g["nama_genre"];
    }
    ?>

    <div class="container" style="max-width: 700px; margin-top:150px">

        <form action="proses_edit.php?id_nama_genre=<?php echo $id_nama_genre ?>" method="post" enctype="multipart/form-data" name="formtambah">
            <div class="card mt-5" style="margin-bottom: 50px;">
                <div class=" card-header text-center">
                    <h3>EDIT PAGE</h3>
                </div>
                <div class="card-body">
                    <h6 class="card-title">Edit Genre</h6>
                    <input type="text" name="nama_genre" data-name=" Judul" class="required form-control" value="<?php echo $nama_genre ?>"><br>
                    <button type="submit" name="Submit" value="Simpan" onclick="return confirm('Simpan Perubahan?')" class="btn btn-success">Submit</button>
                </div>
                </tbody>
                </table>
            </div>
        </form>


    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</html>