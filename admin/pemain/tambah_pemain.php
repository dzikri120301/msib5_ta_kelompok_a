<?php
session_start();
?>
<?php
// Include file utils.php untuk fungsi-fungsi yang dibutuhkan (isUserLoggedIn(), redirectToLoginPage(), dsb)
include '../utils.php';
// Jika user belum login
if (!isAdminLoggedIn()) {
    // Redirect ke halaman login
    redirectToLoginAdminPage();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Cineverse | Add Pemain</title>
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


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">

    <!-- Template Main CSS File -->
    <link href="../assets/css/style.css" rel="stylesheet">
</head>
<?php
include '../../config/koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Proses tambah pemain di sini
    $nama_pemain = $_POST["nama_pemain"];
    $asal = $_POST["asal"];
    $tgl_lahir = $_POST["tgl_lahir"];

    // Pada bagian ini, Anda perlu menyesuaikan sesuai dengan struktur tabel di config Anda
    $query_tambah = "INSERT INTO pemain (nama_pemain, asal, tgl_lahir) VALUES ('$nama_pemain', '$asal', '$tgl_lahir')";

    if (mysqli_query($conn, $query_tambah)) {
        echo "Data pemain berhasil ditambahkan.";
    } else {
        echo "Error: " . $query_tambah . "<br>" . mysqli_error($conn);
    }
}
?>

<body>

    <!-- ======= Header ======= -->
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
                        <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo $_SESSION["username_admin"] ?></span>
                    </a><!-- End Profile Iamge Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                        <li class="dropdown-header">
                            <h6><?php echo $_SESSION["username_admin"] ?></h6>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="../signout.php">
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
                        <a href="../film/film.php">
                            <i class="bi bi-circle"></i><span>Data film</span>
                        </a>
                    </li>
                    <li>
                        <a href="../genre/genre.php">
                            <i class="bi bi-circle"></i><span>Genre Film</span>
                        </a>
                    </li>
                    <li>
                        <a href="pemain.php">
                            <i class="bi bi-circle"></i><span>Daftar Pemain</span>
                        </a>
                    </li>
                    <li>
                        <a href="../pemeran/peran.php">
                            <i class="bi bi-circle"></i><span>Daftar Peran</span>
                        </a>
                    </li>
                    <li>
                        <a href="../like/like.php">
                            <i class="bi bi-circle"></i><span>Film Paling Banyak Disukai</span>
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
                <a class="nav-link" href="../admincineverse/admin.php">
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
                    <li class="breadcrumb-item"><a href="pemain.php">Data Pemain</a></li>
                    <li class="breadcrumb-item active">Add Pemain</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="container-fluid">
                <center>
                    <div class="card text-bg-light mb-3" style="max-width: 50rem;">
                        <div class="card-header">
                            <h3>Tambah Pemain</h3>
                        </div>
                        <div class="card-body">
                            <form action="proses_tambah_pemain.php" method="post" enctype="multipart/form-data">
                                <input type="text" class="form-control mb-3" placeholder="input nama pemain" name="nama_pemain" id="nama_pemain" required>
                                <input type="file" class="form-control mb-3" name="foto">
                                <input type="text" class="form-control mb-3" placeholder="asal/tempat tinggal" name="asal" required>
                                <input type="date" class="form-control mb-3" placeholder="tanggal lahir" name="tgl_lahir" required>
                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                    <input type="submit" id="submitBtn" value="Submit" class="btn btn-success">
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
            Designed by <strong><span>Cineverse</span></strong></a>
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Template Main JS File -->
    <script src="../assets/js/main.js"></script>

    <script src="https://kit.fontawesome.com/6beb2a82fc.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>

    <script>
        $(document).ready(function() {
            // Menonaktifkan tombol submit saat halaman dimuat
            $('#submitBtn').prop('disabled', true);

            // Fungsi untuk memeriksa apakah semua input telah terisi
            function checkInputs() {
                var nama_pemain = $('#nama_pemain').val();
                var foto = $('#foto').val();
                var asal = $('#asal').val();
                var tgl_lahir = $('#tgl_lahir').val();

                // Aktifkan tombol submit jika semua input telah diisi
                if (nama_pemain !== '' && foto !== '' && asal !== '' && tgl_lahir !== '') {
                    $('#submitBtn').prop('disabled', false);
                } else {
                    // Jika ada input yang belum terisi, tombol submit tetap dinonaktifkan
                    $('#submitBtn').prop('disabled', true);
                }
            }

            // Memanggil fungsi checkInputs() saat input berubah
            $('#nama_pemain, #foto, #asal, #tgl_lahir').on('input', function() {
                checkInputs();
            });

            // Menambahkan validasi saat formulir disubmit
            $('form').submit(function(event) {
                var nama_pemain = $('#nama_pemain').val();
                var foto = $('#foto').val();
                var asal = $('#asal').val();
                var tgl_lahir = $('#tgl_lahir').val();

                // Memeriksa apakah semua input telah diisi
                if (nama_pemain === '' || foto === '' || asal === '' || tgl_lahir === '') {
                    // Mencegah formulir disubmit jika ada input yang kosong
                    event.preventDefault();
                    alert('Semua kolom input harus diisi.');
                }
            });
        });
    </script>
</body>

</html>