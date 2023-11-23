<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="./fontawesome/css/all.css">

</head>

<body>

    <!-- Page Content -->
    <div class="container-fluid mt-5 ">
        <?php
        include "koneksi.php";

        $query = mysqli_query($conn, "SELECT * FROM komentar as k join user as u on k.id_user = u.id join tb_film as f on k.id_film = f.id");
        ?>

        <!-- Table -->
        <div class="table-responsive mt-4">
            <table class="table table-striped table-bordered" id="film" class="display" style="width:100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>User</th>
                        <th>Film</th>
                        <th>Review</th>
                        <th>Rating</th>
                        <th>Aksi</th>
                    </tr>
                </thead>

                <tbody> <?php
                        if (mysqli_num_rows($query) > 0) {
                            while ($data = mysqli_fetch_array($query)) {
                        ?> <tr>
                                <td> <?php echo $data["id_nama_review"] ?></td>
                                <td> <?php echo $data["username"] ?></td>
                                <td> <?php echo $data["nama_film"] ?></td>
                                <td> <?php echo $data["review"] ?></td>
                                <td> <?php echo $data["rating"] ?></td>
                                <td> <a class="btn btn-danger" href="proses_delete.php?id_nama_review=<?php echo $data["id_nama_review"] ?>" onclick="return confirm('Yakin Data Akan Dihapus?')">
                                        <i class="fa-solid fa-trash-can"></i> </a>
                                </td>
                            </tr>
                        <?php
                            } ?>
                    <?php } ?>
                    <!-- Datatables -->
                    <script>
                        $(document).ready(function() {
                            $('#film').DataTable();
                        });
                    </script>
                </tbody>
            </table>
        </div>
        </main>
    </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>