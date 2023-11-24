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
    ?>

    <div class="container" style="max-width: 700px; margin-top:150px">

        <form action=" proses_tambah.php" method="post" enctype="multipart/form-data" name="formtambah">
            <div class="card mt-5">
                <div class=" card-header text-center">
                    <h3>ADD PAGE</h3>
                </div>
                <div class="card-body">
                    <h6 class="card-title">Data ADMIN</h6>
                    <input class="form-control form-control-sm" type="text" onkeyup="checkform()" name="username" placeholder="Username" aria-label=".form-control-sm example"><br>
                    <input class="form-control form-control-sm" type="text" onkeyup="checkform()" name="password" placeholder="Password" aria-label=".form-control-sm example"><br>
                    <button type="submit" name="Submit" value="Simpan" class="btn btn-success">Submit</button>
                </div>

                </tbody>
                </table>
            </div>
        </form>


    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</html>