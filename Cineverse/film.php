<?php
// Mulai session
session_start();
?>
<?php
include '../config/koneksi.php';
?>

<?php
// Include file utils.php untuk fungsi-fungsi yang dibutuhkan (isUserLoggedIn(), redirectToLoginPage(), dsb)
include 'utils.php';
// Jika user belum login
if (!isUserLoggedIn()) {
    // Redirect ke halaman login
    redirectToLoginPage();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Film</title>
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <style>
        #header {
            background-color: rgba(40, 58, 90, 0.9);
        }
    </style>
    <!-- Template CSS Slick -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">
            <h1 class="logo me-auto"><a href="index.html">Cineverse</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto" href="home.php #hero">Home</a></li>
                    <li>
                        <a class="nav-link scrollto active" href="film.php">Film</a>
                    </li>
                    <li>
                        <a class=" nav-link scrollto" href="About.php">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <?php
                        if (isset($_SESSION['username'])) {
                        ?>
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <?php echo $_SESSION['username'] ?>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="signout.php">Log Out</a></li>
                            </ul>
                        <?php
                        } else {
                        ?>
                            <a class="nav-link scrollto" href="signin.php">Login</a>
                        <?php
                        }
                        ?>

                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <!-- End Header -->
    <section id="portfolio" class="portfolio mt-5">
        <div class="mt-5" data-aos="fade-up">
            <ul id="portfolio-flters" class="d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
                <li data-filter="*" class="filter-active genre-link">All</li>
                <?php
                $genre = mysqli_query($conn, "SELECT * FROM genre");
                while ($data1 = mysqli_fetch_array($genre)) {
                    echo '<li data-filter=".filter-' . $data1['nama_genre'] . '"class="genre-link"">' . $data1['nama_genre'] . '</li>';
                }
                ?>
            </ul>
            <?php
            include '../config/koneksi.php';
            $detailfilm = mysqli_query($conn, "SELECT f.*, 
            IFNULL(AVG(k.rating), 0) AS average_rating, g.nama_genre
            FROM tb_film AS f 
            LEFT JOIN komentar AS k ON f.id = k.id_film 
            JOIN genre AS g ON f.id_genre = g.id_nama_genre
            GROUP BY f.id");
            ?>
            <div class="upcoming mt-5">
                <div class="movies_box trending" style="margin-left: 40px;">
                    <div class="box trending" style="display: flex; flex-wrap: wrap;">
                        <?php
                        while ($row = mysqli_fetch_array($detailfilm)) {
                        ?>
                            <div class="portfolio-item filter-<?php echo $row['nama_genre'] ?>">
                                <div class="card" style="max-width: 86rem;">
                                    <div class="details">
                                        <a href="detail_film.php?id=<?php echo $row['id'] ?>">
                                            <div class="rating">
                                                <p class="nama_rating"><?php echo $row["average_rating"] !== null ?
                                                                            number_format($row["average_rating"], 1) : "0.0"; ?></p>
                                                <img src="assets/img/bintang-ajah.png" class="bintang-img">
                                            </div>
                                            <div class="left">
                                                <p class="name"><?php echo $row['nama_film'] ?></p>
                                                <div class="date_quality">
                                                    <p class="date"><?php echo $row['tahun'] ?></p>
                                                </div>
                                                <p class="category"><?php echo $row['nama_genre'] ?></p>
                                                <div class="info">
                                                    <div class="time">
                                                        <i class="fa-regular fa-clock"></i>
                                                        <p><?php echo $row['durasi'] ?> min</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="right">
                                                <a href="<?php echo $row['trailer'] ?>" class="glightbox"><i class="fa-solid fa-play"></i></a>
                                            </div>
                                        </a>
                                    </div>
                                    <img src="../admin/film/<?php echo $row['gambar'] ?>">
                                </div>
                            </div>
                        <?php
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 footer-contact">
                        <img width="200px" src="assets/img/logo.png" alt="">
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Colaborations</h4>
                        <ul>
                            <li>
                                <i class="bx bx-chevron-right"></i>Cinema XXI
                            </li>
                            <li>
                                <i class="bx bx-chevron-right"></i>Cgv
                            </li>
                            <li>
                                <i class="bx bx-chevron-right"></i>Cinepolis
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-7 footer-links">
                        <ul>
                            <br>
                            <li>
                                <i class="bx bx-chevron-right"></i>Kota Cinema Mall
                            </li>
                            <li>
                                <i class="bx bx-chevron-right"></i>Movimax
                            </li>
                            <li>
                                <i class="bx bx-chevron-right"></i>Platinum Cineplex
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container footer-bottom clearfix">
            <div class="copyright">
                &copy; Copyright <strong><span>Cineverse</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
                Designed by <a href="https://bootstrapmade.com/">Cineverse</a>
            </div>
        </div>
    </footer>
    <!-- End Footer -->

    <!-- Vendor JS Files -->
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="https://kit.fontawesome.com/6beb2a82fc.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>

    <!-- Template JS Slick -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="assets/js/slick.js"></script>
    <script>
        $(document).ready(function() {
            $('.genre-link').on('click', function(e) {
                e.preventDefault();

                var filter = $(this).data('filter');

                // Remove active class from all genre links
                $('.genre-link').removeClass('active');
                // Add active class to the clicked genre link
                $(this).addClass('active');

                $('.portfolio-item').fadeOut(100, function() {
                    $(this).hide().filter(filter).fadeIn(300);
                });
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            var $grid = $('.movies_box .box').isotope({
                itemSelector: '.portfolio-item',
                layoutMode: 'fitRows'
            });

            // Filter items on button click
            $('#portfolio-flters').on('click', 'li', function() {
                var filterValue = $(this).attr('data-filter');
                $grid.isotope({
                    filter: filterValue
                });

                // Ubah kelas aktif pada filter
                $('#portfolio-flters li').removeClass('filter-active');
                $(this).addClass('filter-active');
            });
        });
    </script>

    <script>
        $('.slick-two').slick({
            infinite: false,
            speed: 300,
            slidesToShow: 4,
            slidesToScroll: 4,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3,
                        infinite: true,
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    </script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/main.js"></script>
    <!-- Tambahkan Isotope.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js"></script>
</body>

</html>