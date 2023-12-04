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

    <title>Cineverse | Add Film</title>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


    <!-- Template Main CSS File -->
    <link href="../assets/css/style.css" rel="stylesheet">
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: 'textarea'
        });
    </script>
</head>

<body>


    <!-- <?php
            include '../../config/koneksi.php';
            $query = mysqli_query($conn, "SELECT * FROM tb_film as f join genre as g ON f.id_genre = g.id_nama_genre join komentar as k ON k.id_film = f.id")
            ?> -->
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
                        <a href="../pemeran/peran.php">
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
                    <li class="breadcrumb-item"><a href="film.php">Data Film</a></li>
                    <li class="breadcrumb-item active">Add Film</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="container-fluid">
                <center>
                    <div class="card text-bg-light mb-3" style="max-width: 50rem;">
                        <div class="card-header">
                            <h3>ADD PAGE</h3>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Data Film</h5>
                            <form action="proses_tambah_film.php" method="post" enctype="multipart/form-data" id="myform">
                                <input class="form-control mb-3" type="text" placeholder="Kode Film" name="kode_film" id="kode_film">
                                <input class="form-control mb-3" type="text" placeholder="Trailer" name="trailer" id="trailer">
                                <input class="form-control mb-3" type="text" placeholder="Nama Film" name="nama_film" id="nama_film">
                                <div class="input-group mb-3">
                                    <label class="input-group-text" for="inputGroupFile01">Upload Poster</label>
                                    <input type="file" class="form-control" name="fileToUpload" id="gambar">
                                </div>
                                <div class="input-group mb-3">
                                    <label class="input-group-text" for="inputGroupFile02">Upload Banner</label>
                                    <input type="file" class="form-control" name="banner" id="banner">
                                </div>
                                <div class="input-group mb-3">
                                    <select class="form-select" name="nama_genre" id="nama_genre">
                                        <option selected>Genre</option>
                                        <?php
                                        // Fetch data from the "items" table
                                        $query = mysqli_query($conn, "SELECT * FROM genre");
                                        if (mysqli_num_rows($query) > 0) {
                                            while ($data = mysqli_fetch_array($query)) {

                                                echo "<option value='" . $data["id_nama_genre"] . "'>" . $data["nama_genre"] . "</option>";
                                            }
                                        } else {
                                            echo "<option value=''>No items available</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <input class="form-control mb-3" type="number" placeholder="Tahun" name="tahun" id="tahun">
                                <textarea class="form-control mb-3" type="text" placeholder="Sinopsis" name="sinopsis" id="mytextarea"></textarea>
                                <input class="form-control mb-3 mt-3" type="number" placeholder="Durasi" name="durasi" id="durasi">
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
    <footer id="footer" class="footer">
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

    Vendor JS Files
    <script src="../assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/vendor/chart.js/chart.umd.js"></script>
    <script src="../assets/vendor/echarts/echarts.min.js"></script>
    <script src="../assets/vendor/quill/quill.min.js"></script>
    <script src="../assets/vendor/simple-datatables/simple-datatables.js"></script>

    <script src="../assets/vendor/php-email-form/validate.js"></script>
    <!-- Template Main JS File -->
    <script src="../assets/js/main.js"></script>

    <script src="https://kit.fontawesome.com/6beb2a82fc.js" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $('#kode_film').on('input', function() {
                var kode_film = $(this).val();

                // Kirim AJAX untuk memeriksa kode film
                $.ajax({
                    type: 'POST',
                    url: 'check_kode_film.php',
                    data: {
                        kode_film: kode_film
                    },
                    success: function(response) {
                        if (response === "Kode Film sudah ada dalam database") {
                            $('#submitBtn').prop('disabled', true); // Menonaktifkan tombol submit jika kode film sudah ada
                            $('#kode_film').addClass('is-invalid'); // Tambahkan kelas 'is-invalid' pada input kode film
                            $('#kode_film + .invalid-feedback').remove(); // Hapus pesan validasi sebelumnya
                            $('#kode_film').after('<div class="invalid-feedback">' + response + '</div>'); // Tampilkan pesan validasi baru
                        } else {
                            $('#submitBtn').prop('disabled', false); // Aktifkan tombol submit jika kode film belum ada
                            $('#kode_film').removeClass('is-invalid'); // Hapus kelas 'is-invalid' pada input kode film
                            $('#kode_film + .invalid-feedback').remove(); // Hapus pesan validasi jika kode film sudah valid
                        }
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            // Menonaktifkan tombol submit saat halaman dimuat
            $('#submitBtn').prop('disabled', true);

            // Fungsi untuk memeriksa apakah semua input telah terisi
            function checkInputs() {
                var kode_film = $('#kode_film').val();
                var nama_film = $('#nama_film').val();
                var fileToUpload = $('#fileToUpload').val();
                var nama_genre = $('#nama_genre').val();
                var tahun = $('#tahun').val();
                var sinopsis = $('#sinopsis').val();
                var durasi = $('#durasi').val();

                // Aktifkan tombol submit jika semua input telah diisi
                if (kode_film !== '' && nama_film !== '' && fileToUpload !== '' && nama_genre !== '' && tahun !== '' && sinopsis !== '' && durasi !== '') {
                    $('#submitBtn').prop('disabled', false);
                } else {
                    // Jika ada input yang belum terisi, tombol submit tetap dinonaktifkan
                    $('#submitBtn').prop('disabled', true);
                }
            }

            // Memanggil fungsi checkInputs() saat input berubah
            $('#kode_film, #nama_film, #fileToUpload, #nama_genre, #tahun, #sinopsis, #durasi').on('input', function() {
                checkInputs();
            });
        });
    </script>
    <script>
        tinyMCE.init({
            mode: "textareas",
            theme: "simple",
            // update validation status on change
            onchange_callback: function(editor) {
                tinyMCE.triggerSave();
                $("#" + editor.id).valid();
            }
        });
        $(function() {
            var validator = $("#myform").submit(function() {
                // update underlying textarea before submit validation
                tinyMCE.triggerSave();
            }).validate({
                ignore: "",
                rules: {
                    title: "required",
                    content: "required"
                },
                errorPlacement: function(label, element) {
                    // position error label after generated textarea
                    if (element.is("textarea")) {
                        label.insertAfter(element.next());
                    } else {
                        label.insertAfter(element)
                    }
                }
            });
            validator.focusInvalid = function() {
                // put focus on tinymce on submit validation
                if (this.settings.focusInvalid) {
                    try {
                        var toFocus = $(this.findLastActive() || this.errorList.length && this.errorList[0].element || []);
                        if (toFocus.is("textarea")) {
                            tinyMCE.get(toFocus.attr("id")).focus();
                        } else {
                            toFocus.filter(":visible").focus();
                        }
                    } catch (e) {
                        // ignore IE throwing errors when focusing hidden elements
                    }
                }
            }
        })
    </script>
</body>

</html>