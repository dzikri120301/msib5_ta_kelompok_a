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
                    <li><a class="nav-link scrollto" href="index.php #hero">Home</a></li>
                    <li>
                        <a class="nav-link scrollto active" href="film.php">Film</a>
                    </li>
                    <li class="dropdown">
                        <a href="#"><span>Genre Film</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="#" class="genre-link" data-filter=".filter-app"></a></li>
                            <?php
                            include "../config/koneksi.php";
                            $query = mysqli_query($conn, "SELECT * FROM genre ");
                            while ($data = mysqli_fetch_array($query)) {
                                echo '<li><a href="#" class="genre-link" data-filter=".' . $data['nama_genre'] . '">' . $data['nama_genre'] . '</a></li>';
                            }
                            ?>
                        </ul>
                    </li>
                    <li>
                        <a class="nav-link scrollto" href="About.php">About</a>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <!-- End Header -->
    <section id="portfolio" class="portfolio mt-5">
        <div class="container mt-5" data-aos="fade-up">
            <ul id="portfolio-flters" class="d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
                <li data-filter="*" class="filter-active">All</li>
                <li data-filter=".filter-app">Action</li>
                <li data-filter=".filter-card">Adventure</li>
                <li data-filter=".filter-web">Comedy</li>
                <li data-filter=".filter-horror">Horror</li>
                <li data-filter=".filter-romance">Romance</li>
            </ul>

            <div class="upcoming ">
                <div class="movies_box">
                    <div class="box logo-slider slick-two">
                        <?php
                        include '../config/koneksi.php';
                        $query = mysqli_query($conn, "SELECT f.*, g.nama_genre, AVG(k.rating) AS average_rating
                        FROM tb_film as f
                        JOIN genre as g ON f.id_genre = g.id_nama_genre
                        LEFT JOIN komentar as k ON f.id = k.id_film
                        GROUP BY f.id");
                        while ($data = mysqli_fetch_array($query)) {
                        ?>
                            <div class="card">
                                <div class=" details">
                                    <div class="left">
                                        <p><?php echo $data["nama_film"] ?></p>
                                        <div class="date_quality">
                                            <p class="date"><?php echo $data["tahun"] ?></p>
                                        </div>
                                        <p class="category"><?php echo $data["nama_genre"] ?></p>
                                        <div class="info">
                                            <div class="time">
                                                <i class="fa-regular fa-clock"></i>
                                                <p><?php echo $data["durasi"] ?> Menit</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="right">
                                        <i class="fa-solid fa-play"></i>
                                    </div>
                                </div>
                                <img src="../admin/film/<?php echo $data['gambar'] ?>">
                            </div>
                        <?php } ?>

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
                    <div class="col-lg-3 col-md-6 footer-contact">
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
                    <div class="col-lg-3 col-md-6 footer-links">
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
    <script src="assets/js/main.js"></script>
    <script src="https://kit.fontawesome.com/6beb2a82fc.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>

    <!-- Template JS Slick -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.genre-link').on('click', function(e) {
                e.preventDefault(); // Mencegah pengalihan ke halaman baru

                var filter = $(this).data('filter'); // Mendapatkan nilai filter dari data-filter

                // Memperbarui kelas filter pada portfolio-flters
                $('#portfolio-flters li').removeClass('filter-active');
                $('#portfolio-flters li[data-filter="' + filter + '"]').addClass('filter-active');
                // Mengganti gambar dan judul portfolio sesuai dengan genre yang dipilih
                $('.portfolio-item').fadeOut(100, function() {
                    $(this).hide().filter(filter).fadeIn(100);

                });
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

</body>

</html>