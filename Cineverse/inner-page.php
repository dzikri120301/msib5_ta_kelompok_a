<?php
include "../config/koneksi.php";
$query = mysqli_query($conn, "SELECT f.*, g.nama_genre, AVG(k.rating) AS average_rating
    FROM tb_film as f
    JOIN genre as g ON f.id_genre = g.id_nama_genre
    LEFT JOIN komentar as k ON k.id_film = f.id
    WHERE f.id = '$_GET[id]'");
$film = mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?php echo $film['nama_film'] ?></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
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


  <main id="main">
    <!-- ======= Hero Section ======= -->
    <section id="detail-film" class="align-items-center">
      <img class="banner-single" src="../admin/film/<?php echo $film['banner'] ?>">
      <div class="container position-absolute top-0 start-50 translate-middle-x background-gradient">
        <div class="row">
          <div class="col-md-2">
            <img class="poster-single" src="../admin/film/<?php echo $film['gambar'] ?>">
          </div>
          <div class="col-md-10 position-relative">
            <div class="d-flex">
              <h1><?php echo $film['nama_film'] ?></h1>
              <h1>&nbsp;<?php echo $film['tahun'] ?></h1>
            </div>
            <?php for ($i = 0; $i < $film['average_rating']; $i++) { ?>
              <i class="fa-solid fa-star" style="color: yellow;"></i>
            <?php } ?>
            <div class="d-flex">
              <p><?php echo $film['nama_genre'] ?></p>
              <p class="ml-3">&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-clock"></i>&nbsp;<?php echo $film['durasi'] ?> menit</p>
            </div>
            <a href="<?php echo $film['trailer'] ?>" class="glightbox"><button class="tonton"><i class="fa-solid fa-play"></i> Tonton Sekarang</button></a>
            <div class="kotak">
              <p><?php echo $film['sinopsis'] ?></p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======= End Hero Section ======= -->

    <!-- Pemain Film nya -->
    <?php
    include '../config/koneksi.php';
    // Kueri untuk mendapatkan informasi tentang film yang baru saja dibuka
    $query = mysqli_query($conn, "SELECT * from pemeran as p 
    join tb_film as f on p.id_film = f.id 
    join pemain as pm on p.id_pemain = pm.id_nama_pemain
    WHERE f.id = '$_GET[id]'");
    ?>
    <h1 class="pemain-judul">Para Pemain Film</h1>
    <div class="container">
      <div class="row">
        <?php
        while ($row = mysqli_fetch_array($query)) {
        ?>
          <div class="col-md-2 justify-content-center">
            <img src="../admin/pemain/images/<?php echo $row['foto'] ?>" class="rounded-image pemain-gambar">
            <p class="pemain-nama"><?php echo $row['nama_pemain'] ?></p>
          </div>
        <?php } ?>
      </div>
    </div>
    <!-- End Pemain Film nya -->

    <!-- Recommended Movie -->
    <?php
    include '../config/koneksi.php';
    // Kueri untuk mendapatkan informasi tentang film yang baru saja dibuka
    $query = mysqli_query($conn, "SELECT f.*, g.nama_genre, AVG(k.rating) AS average_rating
    FROM tb_film as f
    JOIN genre as g ON f.id_genre = g.id_nama_genre
    LEFT JOIN komentar as k ON f.id = k.id_film
    WHERE f.id = '$_GET[id]'");
    $film = mysqli_fetch_array($query);

    // Mengambil genre film yang sedang ditampilkan
    $current_genre = $film['nama_genre'];

    // Kueri untuk menampilkan rekomendasi film berdasarkan genre film yang sedang ditampilkan
    $recommendation_query = mysqli_query($conn, "SELECT * FROM tb_film as f 
                      JOIN komentar as k ON k.id_film = f.id 
                      JOIN genre as g ON f.id_genre = g.id_nama_genre 
                      WHERE g.nama_genre = '$current_genre' AND f.id != '$_GET[id]' 
                      ORDER BY k.rating DESC LIMIT 5");
    if (!$recommendation_query) {
      printf("Error: %s\n", mysqli_error($conn));
      exit();
    }
    ?>
    <div class="upcoming mt-5">
      <div class="movies_box">
        <h1>Rekomendasi Film Untukmu</h1>
        <div class="box">
          <?php
          while ($row = mysqli_fetch_array($recommendation_query)) {
          ?>
            <div class="card">

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
          <?php } ?>
        </div>
      </div>
      <div id="view">
        <button type="button" class="btn-view btn-dark">View More</button>
      </div>
    </div>
    <!-- End Recommendation Section -->
  </main>
  <!-- End #main -->


  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Arsha</h3>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

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