<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Dashboard Cineverse</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../assets/img/favicon.png" rel="icon">
    <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">

    <!-- Template Main CSS File -->
    <link href="../assets/css/style.css" rel="stylesheet">


    <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Nov 17 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <?php
    include '../../config/koneksi.php';
    $query = mysqli_query($conn, "SELECT * FROM tb_film as f join genre as g ON f.id_genre = g.id_nama_genre join pemain as p ON f.id_pemain = p.id_nama_pemain join komentar as k ON k.id_film = f.id GROUP BY f.id");
    // Query untuk menghitung rata-rata rating berdasarkan film
    $queryRating = "
    SELECT f.id, AVG(k.rating) AS avg_rating
    FROM tb_film AS f
    LEFT JOIN komentar AS k ON f.id = k.id_film
    GROUP BY f.id";

    $resultRating = mysqli_query($conn, $queryRating);

    // Simpan nilai rata-rata rating ke dalam array asosiatif
    $averageRatings = [];
    while ($row = mysqli_fetch_assoc($resultRating)) {
        $filmId = $row['id'];
        $avgRating = $row['avg_rating'];
        $averageRatings[$filmId] = $avgRating;
    }

    // Query untuk menampilkan data film
    $queryFilm = "
    SELECT f.*, g.nama_genre, p.nama_pemain
    FROM tb_film AS f
    JOIN genre AS g ON f.id_genre = g.id_nama_genre
    JOIN pemain AS p ON f.id_pemain = p.id_nama_pemain";

    $resultFilm = mysqli_query($conn, $queryFilm);
    ?>
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

        <div class="d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
                <img src="../assets/img/logo.png" alt="">
                <span class="d-none d-lg-block">Cineverse</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
        </div><!-- End Logo -->

        <div class="search-bar">
            <form class="search-form d-flex align-items-center" method="POST" action="#">
                <input type="text" name="query" placeholder="Search" title="Enter search keyword">
                <button type="submit" title="Search"><i class="bi bi-search"></i></button>
            </form>
        </div><!-- End Search Bar -->

        <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">

                <li class="nav-item d-block d-lg-none">
                    <a class="nav-link nav-icon search-bar-toggle " href="#">
                        <i class="bi bi-search"></i>
                    </a>
                </li><!-- End Search Icon-->

                <li class="nav-item dropdown pe-3">

                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                        <img src="../assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                        <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
                    </a><!-- End Profile Iamge Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                        <li class="dropdown-header">
                            <h6>Kevin Anderson</h6>
                            <span>Web Designer</span>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                <i class="bi bi-person"></i>
                                <span>My Profile</span>
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <i class="bi bi-box-arrow-right"></i>
                                <span>Sign Out</span>
                            </a>
                        </li>

                    </ul><!-- End Profile Dropdown Items -->
                </li><!-- End Profile Nav -->

            </ul>
        </nav><!-- End Icons Navigation -->

    </header><!-- End Header -->

    <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">
        <ul class="sidebar-nav" id="sidebar-nav">
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="dashboard.php">
                    <i class="bi bi-menu-button-wide"></i><span>Menu</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="../dashboard.php">
                            <i class="bi bi-circle"></i><span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="../user/user.php">
                            <i class="bi bi-circle"></i><span>User Cineverse</span>
                        </a>
                    </li>
                    <li>
                        <a href="film.php">
                            <i class="bi bi-circle"></i><span>Film</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="bi bi-circle"></i><span>Genre Film</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="bi bi-circle"></i><span>Daftar Pemain</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="bi bi-circle"></i><span>Review</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="bi bi-circle"></i><span>Admin Cineverse</span>
                        </a>
                    </li>
                </ul>
            </li><!-- End Forms Nav -->
        </ul>

    </aside><!-- End Sidebar-->

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Data Film</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../dashboard.php">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="film.php">Data Film</a></li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <section class="section dashboard">
            <div class="container-fluid">
                <a href="tambah_film.php" class="btn btn-light" style="margin-bottom:5px"><i class="fa-solid fa-user-plus"></i></a>
                <table id="data-tabel" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>
                                Kode Film
                            <th>
                                Nama Film
                            </th>
                            <th>
                                Gambar
                            </th>
                            <th>
                                Genre Film
                            </th>
                            <th>
                                Tahun Rilis
                            </th>
                            <th>
                                Sinopsis
                            </th>
                            <th>
                                Pemeran Film
                            </th>
                            <th>
                                Durasi Film
                            </th>
                            <th>
                                Rating
                            </th>
                            <th>
                                Aksi
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if (mysqli_num_rows($query) > 0) {
                            $no = 1;
                            while ($data = mysqli_fetch_array($query)) {
                                $filmId = $data["id"];
                                $rating = isset($averageRatings[$filmId]) ? round($averageRatings[$filmId], 1) : 'Belum ada rating'; // Mengambil nilai rata-rata rating atau menampilkan pesan jika tidak ada rating
                        ?>
                                <tr>
                                    <td><?php echo $data["kode_film"] ?></td>
                                    <td><?php echo $data["nama_film"] ?></td>
                                    <td><img src="<?php echo $data["gambar"] ?>" width="100"></td>
                                    <td><?php echo $data["nama_genre"] ?></td>
                                    <td><?php echo $data["tahun"] ?></td>
                                    <td><?php echo $data["sinopsis"] ?></td>
                                    <td><?php echo $data["nama_pemain"] ?></td>
                                    <td><?php echo $data["durasi"] ?></td>
                                    <td><?php echo $rating ?></td>
                                    <td><a href="edit_film.php?id=<?php echo $data["id"] ?>"><button type="button" class="btn btn-warning"><i class="fa-regular fa-pen-to-square"></i></button></a>
                                        <br>
                                        <a data-id="<?php echo $data["id"] ?>" class="btn-delete">
                                            <button type="button" class="btn btn-danger"><i class="fa-regular fa-trash-can"></i></button>
                                        </a>
                                    </td>
                                </tr>
                            <?php $no++;
                            } ?>
                        <?php } ?>
                    </tbody>

                </table>
            </div>
        </section>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer fixed-bottom">
        <div class="copyright">
            &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="../assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/vendor/chart.js/chart.umd.js"></script>
    <script src="../assets/vendor/echarts/echarts.min.js"></script>
    <script src="../assets/vendor/quill/quill.min.js"></script>
    <script src="../assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="../assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="../assets/vendor/php-email-form/validate.js"></script>
    <!-- Template Main JS File -->
    <script src="../assets/js/main.js"></script>

    <script src="https://kit.fontawesome.com/6beb2a82fc.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>
    <script>
        new DataTable('#data-tabel');
    </script>
    <script>
        $(document).ready(function() {
            // Menangani klik tombol "Hapus"
            $('.btn-delete').on('click', function(e) {
                e.preventDefault(); // Mencegah tindakan asli tautan

                var id = $(this).data('id');
                var confirmation = confirm("Apakah Anda yakin ingin menghapus produk ini?");

                if (confirmation) {
                    // Jika pengguna mengonfirmasi, arahkan ke halaman proses penghapusan
                    window.location.href = "proses_hapus.php?id=" + id;
                } else {
                    // Jika pengguna membatalkan, tidak terjadi apa-apa
                }
            });
        });
    </script>

</body>

</html>