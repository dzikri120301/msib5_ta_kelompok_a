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
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Cineverse | Edit Pemeran</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../assets/img/logo.png" rel="icon">
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
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

        <div class="d-flex align-items-center justify-content-between">
            <a class="logo d-flex align-items-center">
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
                            <a class="dropdown-item d-flex align-items-center" href="../index.php">
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
                    <li>
                        <a href="peran.php">
                            <i class="bi bi-circle"></i><span>Daftar Peran</span>
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
                </ul>
            </li><!-- End Forms Nav -->
            <li class="nav-item">
                <a class="nav-link" href="../admincineverse/admin.php">
                    <i class="bi bi-grid"></i>
                    <span>Admin Cineverse</span>
                </a>
            </li>
        </ul>
    </aside><!-- End Sidebar-->

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Cineverse Edit</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../dashboard.php">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="peran.php">Data Pemeran</a></li>
                    <li class="breadcrumb-item active">Edit Data Pemeran</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="container-fluid">
                <center>
                    <div class="card text-bg-light mb-3" style="max-width: 50rem;">
                        <div class="card-header">
                            <h3>EDIT PAGE</h3>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Data Pemeran</h5>
                            <?php
                            include '../../config/koneksi.php';

                            $pemeran = mysqli_query($conn, "SELECT * FROM pemeran as p Join pemain as pn on p.id_pemain = pn.id_nama_pemain Join tb_film as tf on p.id_film = tf.id  where id_pemeran ='$_GET[id_pemeran]'");

                            while ($g = mysqli_fetch_array($pemeran)) {
                                $id_pemeran = $g["id_pemeran"];
                                $nama_aktor = $g["id_pemain"];
                                $film = $g["id_film"];
                                $peran = $g["peran"];
                            }
                            ?>
                            <form action="proses_edit.php?id_pemeran=<?php echo $id_pemeran ?>" method="post" enctype="multipart/form-data" id="tambah_peran">
                                <div class="input-group mb-3">
                                    <select class="form-select" name="id_pemain" id="id_pemain">
                                        <option value='' <?php if ($nama_aktor == '') echo 'selected'; ?>>Aktor yang dipilih tidak ada!</option>
                                        <?php
                                        // Fetch data from the "items" table
                                        $query = mysqli_query($conn, "SELECT * FROM pemain");
                                        if (mysqli_num_rows($query) > 0) {
                                            while ($data = mysqli_fetch_array($query)) {
                                                $selected = ($data['id_nama_pemain'] == $nama_aktor) ? 'selected' : '';
                                                echo "<option value='" . $data["id_nama_pemain"] . "'$selected>" . $data["nama_pemain"] . "</option>";
                                            }
                                        } else {
                                            echo "<option value=''>No items available</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="input-group mb-3">
                                    <select class="form-select" name="nama_film" id="nama_film">
                                        <option value='' <?php if ($film === '') echo 'selected'; ?>>Film yang dipilih tidak ada!</option>
                                        <?php
                                        $query = mysqli_query($conn, "SELECT * FROM tb_film");
                                        if ($query && mysqli_num_rows($query) > 0) {
                                            while ($data = mysqli_fetch_array($query)) {
                                                $selected = ($data['id'] == $film) ? 'selected' : '';
                                                echo "<option value='" . $data["id"] . "' $selected>" . $data["nama_film"] . "</option>";
                                            }
                                        } else {
                                            echo "<option value=''>No films available</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <input class="form-control mb-3" type="text" value="<?php echo $peran ?>" name="peran" id="peran">

                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                    <input type="submit" id="submitBtn" value="Submit" class="btn btn-success" onclick="return confirm('Simpan Perubahan?')">
                                </div>
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

</body>

</html>