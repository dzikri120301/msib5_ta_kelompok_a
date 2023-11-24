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

    $admin = mysqli_query($conn, "SELECT * FROM admin where id='$_GET[id]'");


    while ($g = mysqli_fetch_array($admin)) {
        $id= $g["id"];
        $username = $g["username"];
        $password = $g["password"];
    }
    ?>

    <div class="container" style="max-width: 700px; margin-top:150px">

        <form action="proses_edit.php?id=<?php echo $id ?>" method="post" enctype="multipart/form-data" name="formtambah">
            <div class="card mt-5" style="margin-bottom: 50px;">
                <div class=" card-header text-center">
                    <h3>EDIT PAGE</h3>
                </div>
                <div class="card-body">
                    <h6 class="card-title">Edit Admin</h6>
                    <input type="text" name="username" data-name=" Judul" class="required form-control" value="<?php echo $username ?>"><br>
                    <input type="text" name="password" data-name=" Judul" class="required form-control" value="<?php echo $password ?>"><br>
                    <button type="submit" name="Submit" value="Simpan" onclick="return confirm('Simpan Perubahan?')" class="btn btn-success">Submit</button>
                </div>
                </tbody>
                </table>
            </div>
        </form>


    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/6beb2a82fc.js" crossorigin="anonymous"></script>

</html>