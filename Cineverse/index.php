<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />

  <title>Cineverse</title>
  <meta content="" name="description" />
  <meta content="" name="keywords" />

  <!-- Favicons -->
  <link href="assets/img/logo.png" rel="icon" />
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

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
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li>
            <a class="nav-link scrollto" href="film.php">Film</a>
          </li>
          <li>
            <a class="nav-link scrollto" href="About.php">About</a>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      <!-- .navbar -->
    </div>
  </header>
  <!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
      <h1>Jelajahi Cineverse Mengungkap Keajaiban Sinematik</h1>
      <h2></h2>
      <!-- Carousel -->
      <div id="filmCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <?php
          // Ambil data dari database
          include '../config/koneksi.php';
          $films = mysqli_query($conn, "SELECT * FROM tb_film ORDER BY updated_at DESC LIMIT 5");

          $active = 'active'; // Tandai item pertama sebagai aktif

          foreach ($films as $film) {
          ?>
            <div class="carousel-item <?= $active ?>">
              <img src="../admin/film/<?php echo $film['banner'] ?>" alt="<?php echo $film['nama_film'] ?>">
              <div class="carousel-caption d-none d-md-block">
                <div class="tulisan">
                  <h1 class="tulisan-judul md-3"><?php echo $film['nama_film'] ?></h1>
                  <a href="<?php echo $film['trailer'] ?>" class="glightbox"><button class="btn btn-primary"><i class="fa-solid fa-play"></i></button></a>
                </div>
              </div>
            </div>
          <?php
            $active = ''; // Hanya item pertama yang aktif
          }
          ?>
        </div>
        <!-- Tombol Navigasi -->
        <button class="carousel-control-prev" type="button" data-bs-target="#filmCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#filmCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <!-- End Carousel -->
    </div>
  </section>
  <!-- End Hero -->

  <main id="main">
    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients section-bg">
      <div class="container">
        <div class="row" data-aos="zoom-in">
          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="assets/img/clients/cinema.png" class="img-fluid" alt="" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="assets/img/clients/cgv.png" class="img-fluid" alt="" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="assets/img/clients/cinepolis.png" class="img-fluid" alt="" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="assets/img/clients/kcm.png" class="img-fluid" alt="" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="assets/img/clients/movimax.png" class="img-fluid" alt="" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="assets/img/clients/platinum.png" class="img-fluid" alt="" />
          </div>
        </div>
      </div>
    </section>
    <!-- End Cliens Section -->

    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">
        <div class="row">
          <div class="col-lg-9 text-center text-lg-start">
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
          </div>
        </div>
      </div>
    </section>

    <!-- ======= Upcoming Section ======= -->
    <?php
    include '../config/koneksi.php';
    $detailfilm = mysqli_query($conn, "SELECT * FROM tb_film as f 
    JOIN komentar as k ON k.id_film = f.id 
    JOIN genre as g ON f.id_genre = g.id_nama_genre GROUP BY f.id");
    ?>
    <div class="upcoming mt-5 ">
      <div class="movies_box trending" style="margin-left:20px;">
        <h1>On Trending</h1>
        <div class="box trending">
          <?php
          // Menampilkan 5 film pertama
          while ($row = mysqli_fetch_array($detailfilm)) {
          ?>
            <div class="card" style="max-width: 86rem;">
              <div class="details">
                <a href="inner-page.php?id=<?php echo $row['id'] ?>">
                  <div class="rating">
                    <P class="nama_rating"><?php echo $row['rating'] ?></P>
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

          <?php
          }
          ?>

        </div>
      </div>
      <a href="film.php">
        <button type="button" class="btn btn-outline-primary" style="border-radius:10px;margin-left:700px; margin-top: 10px;">View More</button>
      </a>
    </div>
    <!-- End Upcoming Section -->

    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">
        <div class="row">
          <div class="col-lg-9 text-center text-lg-start">
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
          </div>
        </div>
      </div>
    </section>
  </main>
  <!-- End #main -->

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

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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
</body>

</html>