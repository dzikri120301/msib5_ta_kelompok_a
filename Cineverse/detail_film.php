<?php
session_start();
include "../config/koneksi.php";
$query = mysqli_query($conn, "SELECT f.*, g.id_nama_genre, g.nama_genre, AVG(k.rating) AS average_rating
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
          <li><a class="nav-link scrollto" href="home.php">Home</a></li>
          <li>
            <a class="nav-link scrollto" href="film.php">Film</a>
          </li>
          <li>
            <a class="nav-link scrollto" href="About.php">About</a>
          </li>
          <li>
          <li class="nav-item dropdown pe-3">
            <nav class="header-nav ms-auto">
              <?php
              if (isset($_SESSION['username'])) { ?>
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                  <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo $_SESSION["username"] ?></span>
                </a><!-- End Profile Image Icon -->
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                  <li class="dropdown-header">
                    <h6><?php echo $_SESSION["username"] ?></h6>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li>
                    <a class="dropdown-item d-flex align-items-center" href="signin.php">
                      <i class="bi bi-box-arrow-right"></i><span>Sign Out</span>
                    </a>
                  <?php } else { ?>
                    <a class="getstarted scrollto" href="signin.php">
                      <span>sign in</span>
                    </a>
                  </li>
                <?php } ?>
                </ul><!-- End Profile Dropdown Items -->
          </li><!-- End Profile Nav -->
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
    <h1 class="pemain-judul ms-5">Movie Cast</h1>
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
    $id_genre = $film['id_genre'];

    $query = mysqli_query($conn, "SELECT f.*, g.id_nama_genre, g.nama_genre, AVG(k.rating) AS average_rating
    FROM tb_film as f
    JOIN genre as g ON f.id_genre = g.id_nama_genre
    LEFT JOIN komentar as k ON f.id = k.id_film
    ORDER BY RAND()");
    ?>

    <?php
    include '../config/koneksi.php';
    $detailfilm = mysqli_query($conn, "SELECT f.*, IFNULL(AVG(k.rating), 0) AS average_rating, g.nama_genre
    FROM tb_film AS f 
    LEFT JOIN komentar AS k ON f.id = k.id_film 
    JOIN genre AS g ON f.id_genre = g.id_nama_genre
    WHERE f.id_genre = '$id_genre' AND f.id != '$_GET[id]'
    GROUP BY f.id
    ORDER BY RAND()
    LIMIT 5;");
    ?>
    <div class="upcoming mt-5">
      <div class="movies_box trending" style="margin-left: 20px;">
        <h1>Film Rekomendasi</h1>
        <div class="box trending" style="display: flex; flex-wrap: wrap;">
          <?php
          $counter = 0;
          // Menampilkan 5 film pertama
          while ($row = mysqli_fetch_array($detailfilm)) {
            if ($counter < 12) {
          ?>
              <div class="card" style="max-width: calc(20% - 20px); margin: 10px;">
                <div class="details">
                  <a href="detail_film.php?id=<?php echo $row['id'] ?>">
                    <div class="rating">
                      <P class="nama_rating"><?php echo $row["average_rating"] !== null ?
                                                number_format($row["average_rating"], 1) : "0.0"; ?></P>
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
            } else {
              break;
            }
          }
          ?>
        </div>
      </div>
      <a href="film.php">
        <button type="button" class="btn btn-outline-primary" style="border-radius: 10px; margin-left: 795px; margin-top: 10px;">View More</button>
      </a>
    </div>
    <!-- End Recommendation Section -->

    <!-- Komentar -->
    <section id="komentar-yuk">
      <div class="comments-section">
        <?php
        $koment = mysqli_query($conn, "SELECT k.review, k.created_at, f.id, u.username FROM komentar as k 
            join tb_film as f on k.id_film = f.id left join `user` as u on k.id_user = u.id_nama_user 
            WHERE f.id = '$_GET[id]' ORDER BY k.created_at DESC");
        if (mysqli_num_rows($koment) > 0) {
          while ($row = mysqli_fetch_array($koment)) {
        ?><div class="full-comment">
              <div class="comment d-flex">
                <h6 class="nama_komen">
                  <?php
                  if (isset($_SESSION['username'])) {
                    echo $row['username'];
                  } else {
                    echo "Anonymous";
                    echo $row['username'];
                  }
                  ?>
                </h6>&nbsp;&nbsp;
                <p class="tanggal"><?php echo date('F j, Y, g:i a', strtotime($row['created_at'])); ?></p>
              </div>
              <div class="review">
                <p><?php echo $row['review'] ?></p>
              </div>
            </div>
        <?php
          }
        }
        ?>
      </div>
      <div class="komen">
        <form action="f_komen.php" method="post">
          <div class="mb-3">
            <div class="row">
              <div class="col-md-6">
                <label for="exampleFormControlTextarea1" class="form-label">Komentar &nbsp;</label>
                <div class="btn-group" role="group">
                  <button type="button" name="rating" class="btn btn-success dropdown-toggle" id="selectedRating" data-bs-toggle="dropdown" aria-expanded="false">
                    Rating
                  </button>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" value="1" onclick="displaySelectedValue(this)">1</a></li>
                    <li><a class="dropdown-item" value="2" onclick="displaySelectedValue(this)">2</a></li>
                    <li><a class="dropdown-item" value="3" onclick="displaySelectedValue(this)">3</a></li>
                    <li><a class="dropdown-item" value="4" onclick="displaySelectedValue(this)">4</a></li>
                    <li><a class="dropdown-item" value="5" onclick="displaySelectedValue(this)">5</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <input type="hidden" name="id" value="<?php echo $film['id'] ?>">
            <textarea class="form-control" id="komen" name="komen" rows="3"></textarea>
          </div>
          <input type="submit" class="btn btn-success kirim" value="Kirim">
        </form>
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
        Designed by <strong><span>Cineverse</span></strong>
      </div>
    </div>
  </footer><!-- End Footer -->

  <!-- <div id="preloader"></div> -->
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
  <script>
    let selectedRating = null; // Inisialisasi variabel untuk menyimpan nilai rating

    document.querySelectorAll('.dropdown-item').forEach(item => {
      item.addEventListener('click', function() {
        selectedRating = this.getAttribute('value');
        console.log("Nilai rating yang dipilih:", selectedRating);
      });
    });

    // Event listener untuk form saat dikirimkan
    document.querySelector('.komen form').addEventListener('submit', function(event) {
      event.preventDefault(); // Menghentikan pengiriman form secara default

      let review = document.getElementById('komen').value; // Ambil nilai komentar dari form
      let idFilm = <?php echo $_GET['id']; ?>; // Ambil ID Film dari URL

      // Kirim nilai 'rating' dan 'komentar' ke server untuk disimpan ke dalam database
      fetch('f_komen.php', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
          body: `id=${idFilm}&komen=${review}&rating=${selectedRating}`,
        })
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok. Status: ' + response.status);
          }
          return response.text();
        })
        .then(data => {
          console.log('Data berhasil dikirim ke server:', data);
          window.location.href = `detail_film.php?id=${idFilm}`;
        })
        .catch(error => {
          console.error('There has been a problem with your fetch operation:', error);
        });

    });
  </script>

  <script>
    function displaySelectedValue(element) {
      var selectedValue = element.getAttribute('value');
      document.getElementById('selectedRating').innerHTML = 'Rating: ' + selectedValue;
    }
  </script>


</body>

</html>