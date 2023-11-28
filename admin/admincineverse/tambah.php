<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION["username"])) {
    // Redirect to the login page or perform other actions
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cineverse | Add Admin</title>

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
</head>

<body>
    <?php
    include '../../config/koneksi.php';
    ?>
    <header id="header" class="header fixed-top d-flex align-items-center">

        <div class="d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
                <img src="../assets/img/logo.png" alt="">
                <span class="d-none d-lg-block">Cineverse</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
        </div><!-- End Logo -->
        <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">
                <li class="nav-item dropdown pe-3">

                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                        <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo $_SESSION["username"] ?></span>
                    </a><!-- End Profile Iamge Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                        <li class="dropdown-header">
                            <h6><?php echo $_SESSION["username"] ?></h6>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
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
                <a class="nav-link " href="../dashboard.php">
                    <i class="bi bi-grid"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="dashboard.php">
                    <i class="bi bi-menu-button-wide"></i><span>Film</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="film.php">
                            <i class="bi bi-circle"></i><span>Data film</span>
                        </a>
                    </li>
                    <li>
                        <a href="../genre/genre.php">
                            <i class="bi bi-circle"></i><span>Genre Film</span>
                        </a>
                    </li>
                    <li>
                        <a href="../pemain/pemain.php">
                            <i class="bi bi-circle"></i><span>Daftar Pemain</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="dashboard.php">
                    <i class="bi bi-menu-button-wide"></i><span>User</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="../user/user.php">
                            <i class="bi bi-circle"></i><span>User Cineverse</span>
                        </a>
                    </li>
                    <li>
                        <a href="../komentar/komentar.php">
                            <i class="bi bi-circle"></i><span>Review</span>
                        </a>
                    </li>
                    <li>
                        <a href="../kotaksaran/pesan.php">
                            <i class="bi bi-circle"></i><span>Pesan</span>
                        </a>
                    </li>
                </ul>
            </li><!-- End Forms Nav -->
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="bi bi-grid"></i>
                    <span>Admin Cineverse</span>
                </a>
            </li>
        </ul>
    </aside><!-- End Sidebar-->
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Cineverse Add</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../dashboard.php">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="admin.php">Admin Cineverse</a></li>
                    <li class="breadcrumb-item active">Add Admin</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard">
            <div class="container-fluid">
                <center>
                    <div class="card text-bg-light mb-3" style="max-width: 50rem;">
                        <div class="card-header">
                            <h3>ADD PAGE</h3>
                        </div>

                        <div class="card-body">
                            <h5 class="card-title">Data ADMIN</h5>
                            <form action=" proses_tambah.php" method="post" enctype="multipart/form-data" name="formtambah">
                                <input class="form-control form-control-sm" type="text" id="username" name="username" placeholder="Username" aria-label=".form-control-sm example"><br>
                                <input class="form-control form-control-sm" type="password" id="password" name="password" placeholder="Password" aria-label=".form-control-sm example"><br>
                                <button type="submit" name="Submit" id="submitBtn" value="Simpan" class="btn btn-success" disabled>Submit</button>
                            </form>
                        </div>
                    </div>
                </center>
            </div>
        </section>
    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer fixed-bottom">
        <div class="copyright">
            &copy; Copyright <strong><span>Cineverse Admin</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
            Designed by <strong><span>Cineverse</span></strong>
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
    <!-- Add this script block at the end of your <body> section -->
    <!-- Add this script block at the end of your <body> section -->
    <!-- Add this script block at the end of your <body> section -->
    <script>
        $(document).ready(function() {
            // Menonaktifkan tombol submit saat halaman dimuat
            $('#submitBtn').prop('disabled', true);

            // Fungsi untuk memeriksa apakah semua input telah terisi
            function checkInputs() {
                var username = $('#username').val();
                var password = $('#password').val();

                // Aktifkan tombol submit jika semua input telah diisi
                if (username !== '' && password !== '') {
                    $('#submitBtn').prop('disabled', false);
                } else {
                    // Jika ada input yang belum terisi, tombol submit tetap dinonaktifkan
                    $('#submitBtn').prop('disabled', true);
                }
            }

            // Memanggil fungsi checkInputs() saat input berubah
            $('#username, #password').on('input', function() {
                checkInputs();
            });
        });
    </script>
</body>

</html>