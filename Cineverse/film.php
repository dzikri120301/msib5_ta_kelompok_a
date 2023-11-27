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
</head>

<body>
    <?php
    include '../config/koneksi.php';
    $query = mysqli_query($conn, "SELECT f.*, g.nama_genre, AVG(k.rating) AS average_rating
    FROM tb_film as f
    JOIN genre as g ON f.id_genre = g.id_nama_genre
    LEFT JOIN komentar as k ON f.id = k.id_film
    GROUP BY f.id");
    ?>
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
                            <li><a href="#" class="genre-link" data-filter="*">All</a></li>
                            <li><a href="#" class="genre-link" data-filter=".filter-app">Action</a></li>
                            <li><a href="#" class="genre-link" data-filter=".filter-card">Adventure</a></li>
                            <li><a href="#" class="genre-link" data-filter=".filter-web">Comedy</a></li>
                            <li><a href="#" class="genre-link" data-filter=".filter-horror">Horror</a></li>
                            <li><a href="#" class="genre-link" data-filter=".filter-romance">Romance</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="nav-link scrollto" href="About.php">About</a>
                    </li>
                    <a class="getstarted scrollto" href="index.php #about">Get Started</a>
                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <!-- End Header -->
    <section id="portfolio" class="portfolio mt-5">
        <div class="container" data-aos="fade-up">
            <div class="section-title">
                <h2>Portfolio</h2>
                <p>
                    Magnam dolores commodi suscipit. Necessitatibus eius consequatur
                    ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam
                    quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.
                    Quia fugiat sit in iste officiis commodi quidem hic quas.
                </p>
            </div>

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
                    <div class="box">
                        <?php
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
</body>

</html>