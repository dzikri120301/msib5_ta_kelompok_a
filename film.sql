-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2023 pada 18.54
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `film`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username_admin`, `password`) VALUES
(6, 'admin1', 'admin1'),
(7, 'admin2', 'admin2'),
(8, 'admin3', 'admin3'),
(9, 'Raisa Nurlita', 'raisa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `id_nama_genre` int(11) NOT NULL,
  `nama_genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`id_nama_genre`, `nama_genre`) VALUES
(6, 'horor'),
(7, 'komedi'),
(8, 'action'),
(9, 'romansa'),
(11, 'Drama'),
(12, 'Fantasi'),
(13, 'Misteri'),
(14, 'Adventure');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_nama_review` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_film` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_nama_review`, `id_user`, `id_film`, `review`, `rating`, `created_at`) VALUES
(92, 1, 23, 'halo', 5, '2023-12-03 15:57:40'),
(93, 1, 28, 'keren bangettt', 3, '2023-12-04 03:38:01'),
(100, 1, 48, 'KKN di Desa Penari adalah film yang menghadirkan nuansa horor yang memikat. Alur ceritanya menegangkan dengan adegan-adegan yang berhasil menciptakan ketegangan. Karakter-karakternya juga terasa autentik dan mendalam.', 4, '2023-12-04 06:26:33'),
(102, 2, 48, 'Film ini menggabungkan unsur horor dan misteri dengan apik. Skenarionya kuat dan atmosfer yang dibangun begitu menakutkan. Efek visualnya luar biasa, dan akting para pemainnya sangat meyakinkan.', 5, '2023-12-04 06:56:52'),
(103, 3, 48, 'Saya merasa film ini tidak berhasil mengeksploitasi potensi ceritanya sepenuhnya. Ketegangan yang seharusnya ada dalam film horor kurang terasa, dan hal itu membuatnya menjadi pengalaman yang kurang memuaskan.', 1, '2023-12-04 06:58:18'),
(104, 4, 48, 'Film ini memiliki konsep menarik namun tidak sepenuhnya dieksekusi dengan baik. Beberapa adegan terasa terlalu dipaksakan untuk menciptakan ketegangan, dan plotnya terasa sedikit membosankan di beberapa titik.', 2, '2023-12-04 07:00:55'),
(105, 5, 48, 'KKN di Desa Penari menawarkan horor yang cukup solid dengan beberapa momen menegangkan yang membuat penonton terpaku pada layar. Namun, beberapa bagian dari plot terasa terlalu dipaksakan.', 3, '2023-12-04 07:03:12'),
(106, 6, 48, 'Saya sangat terkesan dengan cinematography dan penggunaan setting yang kuat dalam film ini. Dialog antar karakternya kuat, dan penyelesaian ceritanya sangat memuaskan.', 4, '2023-12-04 07:05:53'),
(107, 7, 48, 'Kisahnya menarik dengan latar belakang desa yang misterius, tetapi sayangnya ada beberapa bagian yang terasa kurang terjelaskan. Meskipun demikian, film ini berhasil mengejutkan penonton dengan plot twist yang menarik.', 5, '2023-12-04 07:09:02'),
(108, 7, 12, 'Film \\\'Danur 2: Maddah\\\' berhasil mempertahankan ketegangan dan atmosfer mencekam dari film sebelumnya. Cerita yang menarik dengan visual yang menakutkan.', 5, '2023-12-04 09:39:49'),
(109, 4, 12, 'Saya sangat menikmati kelanjutan kisah Risa dalam \\\'Danur 2: Maddah\\\'. Adegan-adegan menegangkan dan twist-nya berhasil membuat saya terpaku di kursi sepanjang film', 4, '2023-12-04 09:41:19'),
(110, 2, 12, 'Sekuel ini kurang memberikan jawaban atas pertanyaan-pertanyaan dari film sebelumnya, membuat penonton terasa ditinggalkan dengan kebingungan.', 2, '2023-12-04 09:42:16'),
(111, 5, 12, 'Sekuel ini mampu menyajikan ketegangan yang lebih intensif dibandingkan dengan film sebelumnya. Penampilan akting yang kuat dan atmosfer yang seram membuatnya berhasil.', 3, '2023-12-04 09:46:30'),
(112, 5, 13, 'Penggambaran cerita yang intens dan jalan cerita yang terbangun dengan baik membuat film ini sangat menegangkan. Akting yang kuat dan efek khusus yang luar biasa membuatnya layak ditonton.', 5, '2023-12-04 09:48:38'),
(113, 4, 13, '\\\"Meskipun tidak sehoror film sebelumnya dalam seri ini, alur cerita yang solid dan karakter yang kuat membuatnya menarik. Tidak untuk orang yang mudah terintimidasi!', 4, '2023-12-04 09:49:48'),
(114, 6, 13, 'The Conjuring 2: The Devil Made Me Do It menyajikan campuran yang sempurna antara kengerian dan ketegangan. Beberapa adegan cukup menghantui dan akan membuatmu terpaku di tempatmu.', 5, '2023-12-04 09:50:48'),
(115, 1, 31, 'The Avengers adalah sebuah mahakarya! Aksi yang luar biasa, cerita yang menarik, dan karakter yang kuat membuat film ini menjadi salah satu film superhero terbaik sepanjang masa.', 5, '2023-12-04 16:26:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemain`
--

CREATE TABLE `pemain` (
  `id_nama_pemain` int(11) NOT NULL,
  `nama_pemain` varchar(50) NOT NULL,
  `foto` text NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemain`
--

INSERT INTO `pemain` (`id_nama_pemain`, `nama_pemain`, `foto`, `asal`, `tgl_lahir`) VALUES
(6, 'Angga Aldi Yunanda', 'angga.jpg', 'Pulau Lombok', '2000-05-16'),
(7, 'Prilly Latuconsina', 'prilly.jpg', 'Tangerang', '1996-10-15'),
(8, 'Iqbal Ramadhan', 'iqbal.png', 'jakarta', '2023-11-01'),
(9, 'Ari Irham', 'ariirham.jpg', 'jakarta', '2023-11-04'),
(10, 'Rachel Amanda', 'rachel.png', 'jakarta', '2023-11-02'),
(11, 'Aghiny Haque', 'aghniy.jpg', 'jakarta', '2023-11-01'),
(12, 'Umay Shahab', 'umay.jpg', 'jakarta', '2023-11-03'),
(13, 'Sandrinna Michelle', 'sandrina.png', 'bogor', '2007-01-11'),
(14, 'Buceek Deep', 'Bucek.jpg', 'Jakarta', '1973-09-09'),
(15, 'Sophia Latjuba', 'shopia_latjuba.jpg', 'Jakarta', '1970-08-08'),
(16, 'Vino G.Bastian', 'Vino-G-Bastian.jpg', 'jakarta', '1982-03-24'),
(17, 'Aurelie Moeremans', 'aurelie.webp', 'bogor', '1993-08-08'),
(18, 'Gama Haritz', 'gama_haritz.jpg', 'Jakarta', '2009-02-11'),
(19, 'Kevin Bzezovski Taroreh', 'gama.jpg', 'Jakarta', '2008-09-10'),
(20, 'Matthew Putra Rama Whitbread', 'matt White.webp', 'jakarta', '2009-12-21'),
(21, 'Vera Farmiga', 'Vera Farmiga.jpeg', 'New Jersey', '1973-08-06'),
(22, 'Patrick Wilson', 'patrick.jpg', 'Virginia', '1973-07-03'),
(23, 'Sarah Catherine Hook', 'sarah.jpg', 'Alabama', '1995-04-21'),
(24, 'Ruairi O Connor', 'Ruairi.jpg', 'Dublin', '1991-07-09'),
(25, 'Julian Hilliard', 'Julian_Hilliard.webp', 'Texas', '2011-06-20'),
(26, 'Sterling Jerins', 'sterlin.jpg', 'New York', '2004-06-15'),
(27, 'Tara Basro', 'tara basro.jpeg', 'Jakarta', '1990-06-11'),
(28, 'Bront Palarae', 'bront.jpeg', 'Alor Setar', '1978-09-27'),
(29, 'Endy Arfian', 'endy.jpg', 'Jakarta', '2001-05-22'),
(30, 'Ayu Laksmi', 'ayu-laksmi-061.jpg', 'Singaraja', '1967-11-25'),
(31, 'Nasar Anuz', 'nasar.jpg', 'Jakarta', '2007-07-12'),
(32, 'Asmara Abigail', 'asmara.jpeg', 'Jakarta', '1992-04-03'),
(33, 'Rigen Rakelna', 'rigen.jpg', 'Surabaya', '1991-11-19'),
(34, 'Mathias Muchus', 'Mathias-Muchus.jpg', 'Pagar Alam', '1957-02-15'),
(35, 'Ratna Riantiarno', 'Ratna-Riantiarno.jpg', 'Kota Manado', '1952-04-23'),
(36, 'Aida Nurmala', 'aida.jpg', 'Jakarta', '1973-08-13'),
(37, 'Robert Downey Jr.', 'robert.jpeg', 'New York', '1965-04-04'),
(38, 'Scarlett Johansson', 'Scarlett.jpeg', 'New York', '1984-09-22'),
(39, 'Mark Ruffalo', 'mark.jpeg', ' Kenosha', '1967-11-22'),
(40, 'Chris Evans', 'chris.jpeg', ' Boston', '1981-06-19'),
(41, ' Chris Hemsworth', 'chris hems.jpeg', 'Melbourne', '1983-08-11'),
(42, 'Jeremy Renner', 'clint.jpeg', 'Modesto', '1971-01-07'),
(43, 'Gerard Butler', 'gerard.jpg', ' Paisley', '1969-11-13'),
(44, 'Evan Dane Taylor', 'datu junmar.webp', 'Yokosuka', '1968-10-10'),
(45, 'Remi Adeleke', 'shelbeck.webp', 'Nigeria', '1982-08-11'),
(46, 'Mike Colter', 'Mike.jpeg', 'Colombia', '1976-08-26'),
(47, 'Lilly Krug', 'lilly.jpeg', 'Jerman', '2001-06-05'),
(48, 'Tony Goldwyn', 'Tony.jpeg', 'Los Angeles', '1960-05-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeran`
--

CREATE TABLE `pemeran` (
  `id_pemeran` int(11) NOT NULL,
  `id_pemain` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `peran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemeran`
--

INSERT INTO `pemeran` (`id_pemeran`, `id_pemain`, `id_film`, `peran`) VALUES
(4, 7, 12, 'Risa'),
(6, 8, 32, 'Piko'),
(7, 6, 32, 'Ucup'),
(8, 9, 32, 'Tuktuk'),
(9, 11, 32, 'Sarah'),
(10, 10, 32, 'Fella'),
(11, 12, 32, 'Gofar'),
(12, 13, 12, 'Riri'),
(13, 15, 12, 'Tante Tina'),
(14, 14, 12, 'Om Ahmad'),
(15, 16, 23, 'Andika'),
(16, 17, 23, 'Dinda'),
(17, 18, 12, 'Peter'),
(18, 19, 12, 'Janshen'),
(19, 20, 12, 'Hendrick'),
(20, 21, 13, 'Lorraine Warren'),
(21, 22, 13, 'Ed Warren'),
(22, 23, 13, 'Debbie Glatzel'),
(23, 24, 13, 'Arne Cheyenne Johnson'),
(24, 25, 13, 'David Glatzel'),
(25, 26, 13, 'Judy Warren'),
(26, 27, 45, 'Rini'),
(27, 28, 45, 'Father'),
(28, 29, 45, 'Tony'),
(29, 30, 45, 'Mawarni Suwono'),
(30, 31, 45, 'Bondi'),
(31, 32, 45, 'Darminah'),
(32, 33, 23, 'Omen'),
(33, 34, 23, 'Nurul'),
(34, 35, 23, 'Tari'),
(35, 36, 23, 'Mira'),
(36, 37, 31, 'Iron Man '),
(37, 38, 31, 'Natasha Romanoff'),
(38, 39, 31, 'Dr. Bruce Banner'),
(39, 40, 31, 'Captain Amerika'),
(40, 41, 31, 'Thor'),
(41, 42, 31, 'Clint Barton'),
(42, 43, 28, 'Brodie Torrance'),
(43, 44, 28, 'Datu Junmar'),
(44, 45, 28, 'Shellbeck'),
(45, 46, 28, 'Louis Gaspare'),
(46, 47, 28, 'Brie Taylor'),
(47, 48, 28, 'Scarsdale');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_film`
--

CREATE TABLE `tb_film` (
  `id` int(11) NOT NULL,
  `kode_film` varchar(10) NOT NULL,
  `trailer` text NOT NULL,
  `nama_film` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `banner` text NOT NULL,
  `id_genre` int(11) NOT NULL,
  `durasi` int(3) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_review` int(11) NOT NULL,
  `id_rekomendasi` int(11) NOT NULL,
  `sinopsis` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_film`
--

INSERT INTO `tb_film` (`id`, `kode_film`, `trailer`, `nama_film`, `gambar`, `banner`, `id_genre`, `durasi`, `tahun`, `id_review`, `id_rekomendasi`, `sinopsis`, `created_at`, `updated_at`) VALUES
(12, 'H-001', 'https://youtu.be/ui9XZlcAwgo?si=euiknHISXvi83O5E', 'Danur 2 : Maddah', 'images/danur.jpg', 'banner/danur2 (1).jpg', 6, 105, '2021', 0, 0, '<p style=\"text-align: justify;\">Risa, remaja perempuan yang memiliki 3 sahabat hantu bernama Peter, William, dan Janshen. Risa kini tinggal bersama adiknya Riri, yang sudah mulai jengah dengan kemampuan Risa bisa melihat hantu. Apalagi mereka untuk sementara hanya tinggal berdua karena ibunya menemani bapaknya dinas di luar negeri. Keluarga pamannya, Om Ahmad baru pindah ke Bandung bersama istrinya, Tante Tina dan Angki anaknya. Risa dan Riri sering berkunjung bahkan menginap di rumah Om Ahmad dan Tante Tina. Risa awalnya tidak merasa ada yang aneh dengan rumah Om Ahmad, namun suatu hari Risa memergoki Om Ahmad pergi bersama seorang wanita, Risa hampir tidak percaya bahwa Omnya selingkuh, Risa tidak berani bilang ke Tante Tina dan memilih menyelidiki sendiri. Namun, setelah itu Angki bercerita beberapa hal janggal terjadi dan yang paling aneh adalah sikap Om Ahmad berubah. Suatu malam Risa diganggu oleh sosok hantu perempuan menyeramkan di rumah itu. Apakah benar Om Ahmad selingkuh? Apa hubungannya dengan teror hantu wanita di rumah itu yang mengganggu keluarga Om Ahmad termasuk Risa? Apakah Peter dan kawan-kawan akan datang membantu Risa, meskipun Peter memperingatkan Risa sebelumnya tentang roh jahat berbahaya di rumah Om Ahmad itu?</p>', '2023-11-25 11:04:03', '2023-11-25 11:04:03'),
(13, 'H-002', 'https://youtu.be/h9Q4zZS2v1k?si=xmHGGsJSaEd8dn8M', 'The Conjuring: The Devil Made Me Do It ', 'images/The_Conjuring_-_The_Devil_Made_Me_Do_It.png', 'banner/conjuring3 (1).jpg', 6, 112, '2021', 0, 0, '<p style=\"text-align: justify;\">The Conjuring: The Devil Made Me Do It adalah film horor supranatural yang dirilis pada tahun 2021, bukan 2020. Film ini merupakan sekuel dari seri film The Conjuring yang sangat populer. Film ini berdasarkan kisah nyata dari kasus pengadilan pertama di Amerika Serikat yang melibatkan pembelaan kekerasan setan dalam kasus pembunuhan. Film ini mengikuti investigasi pasangan paranormal, Ed dan Lorraine Warren, yang terlibat dalam kasus tersebut. Mereka berusaha membantu membuktikan bahwa tersangka kasus pembunuhan tidak sepenuhnya bertanggung jawab atas perbuatannya karena terpengaruh oleh kekuatan supranatural yang jahat. Dalam perjalanan mereka, Ed dan Lorraine menemui banyak hal aneh dan menyeramkan yang terkait dengan kasus tersebut. Mereka harus menghadapi kekuatan gelap yang sangat kuat untuk membuktikan kebenaran dan melindungi orang-orang yang mereka cintai. Film ini menawarkan suasana tegang, adegan mencekam, dan elemen horor yang intens, sambil mencoba menggali sisi psikologis dari pengaruh supranatural terhadap tindakan manusia.</p>', '2023-11-25 12:32:45', '2023-11-25 12:32:45'),
(23, 'K-001', 'https://youtu.be/olXfjgN1WWo?si=N7KKNDobTBIWhuWb', 'Baby Blues', 'images/posterbabyblues.jpg', 'banner/Film-Baby-Blues-2022.jpg', 7, 100, '2022', 0, 0, '<p style=\"text-align: justify;\">mengisahkan Dika (Vino G. Bastian) dan Dinda (Aurelie Moeremans), sepasang suami-istri yang baru saja memiliki anak bayi. Namun, ketimbang mengurusi anaknya, keduanya justru jauh lebih sering bertengkar. Hal ini terjadi karena Dinda merasa kesulitan merawat bayi ditambah dengan Dika yang cuek dan tak ikut mengurus anaknya. Akibatnya, Dinda jadi mengalami sindrom baby blues. Setelah pertengkaran hebat, keduanya terlibat dalam fenomena misterius yang membuat jiwa mereka bertukar tubuh. Jadi, jiwa Dinda ada pada tubuh Dika, dan begitu juga sebaliknya. Kondisi ini membuat keduanya jadi tukar tanggung jawab dan saling memahami kondisi antara satu sama lain. Namun, bisakah keduanya kembali ke tubuhnya masing-masing dan menjalani kehidupan normal seperti sebelumnya.</p>', '2023-11-26 05:01:07', '2023-11-26 05:01:07'),
(28, 'A-001', 'https://www.youtube.com/watch?v=M25zXBIUVr0', 'Plane', 'images/plane.jpg', 'banner/plane (1).jpg', 8, 107, '2023', 0, 0, '<p style=\"text-align: justify;\">Seorang pilot bernama Brodie Torrance (Gerard Butler) terjebak di wilayah berbahaya saat ia terpaksa mendaratkan pesawat komersialnya setelah badai mengerikan melanda. Setelah selamat mendaratkan pesawat, semua penumpang disandera kelompok bersenjata yang sadis. Satu-satunya cara untuk menyelamatkan mereka semua adalah bekerja sama dengan Louis Gaspare (Mike Colter), seorang terdakwa pembunuh yang turut ikut dalam pesawat tersebut.</p>', '2023-11-26 14:53:33', '2023-11-26 14:53:33'),
(29, 'A-002', 'https://www.youtube.com/watch?v=AwwbhhjQ9Xk', 'The Maze Runner', 'images/tmr.jpg', 'banner/background_1.jpg', 8, 113, '2014', 0, 0, '<p style=\"text-align: justify;\">Film The Maze Runner ini diangkat dari novel young adult karangan James Dashner. Film ini menceritakan bagaimana jadinya jika tatanan dunia yang sempurna itu dilanggar. Dalam dunia dystopia ciptaan James ini, sekelompok pria berhasil bertahan hidup di dataran hijau di tengahtengah sebuah labirin raksasa. Mereka bahkan telah sukses membangun semacam kota, sesuai letaknya, mereka menyebut nya Glade, dimana disana dilengkapi dengan aturan-aturan yang tentunya dibutuhkan untuk menjaga keseimbangan di dalam komunitas kecil tersebut. Tidak ada yang tahu mengapa mereka ditempatkan di sana. Semua orang yang dikirim ke sana sudah dihapus terlebih dahulu ingatannya. Yang pasti , setiap sebulan sekali akan ada seorang penghuni baru yang dikirimkan ke Glade.</p>', '2023-11-27 07:52:13', '2023-11-27 07:52:13'),
(30, 'M-002', 'https://www.youtube.com/watch?v=AwwbhhjQ9Xk', 'Death On The Nile', 'images/death.jpg', 'banner/background.jpg', 13, 127, '2022', 0, 0, '<p style=\"text-align: justify;\">Kedamaian dan ketenangan yang hadir sementara di kapal uap Karnak saat berlayar di Sungai Nil seketika hancur setelah salah satu penumpang ditemukan terbunuh secara tragis. Detektif terkenal dari Belgia, Hercule Poirot yang sedang liburan dipercayakan dengan tugas penting untuk mengidentifikasi penumpang mana yang menjadi pembunuh sebelum mereka menyerang lagi. Berlatar pemandangan epik dari pemandangan gurun Mesir yang luas dan piramida Giza yang megah, kisah tentang hasrat yang tak terkendali dan kecemburuan yang melumpuhkan ini menampilkan sekelompok pelancong kosmopolitan yang berpakaian rapi. Ada cukup banyak tikungan dan intrik jahat film ini yang membuat penonton menebak-nebak sampai akhir yang mengejutkan.</p>', '2023-11-27 07:56:03', '2023-11-27 07:56:03'),
(31, 'A-003', 'https://www.youtube.com/watch?v=eOrNdBpGMv8', 'The Avengers', 'images/avengers (2).jpg', 'banner/background_2.jpg', 8, 127, '2022', 0, 0, '<p style=\"text-align: justify;\">Ketika musuh yang tak terduga muncul, mengancam keselamatan dan keamanan dunia, Nick Fury, direktur Badan Perdamaian Internasional, dikenal sebagai S.H.I.E.L.D. , membutuhkan tim untuk menyelamatkan dunia dari bencana. Usaha perekrutan pun dimulai Iron Man, Captain America, Hulk, Thor, Black Widow dan Hawkeye dikumpulkan untuk menaklukkan Dewa Kehancuran, Loki, dalam usahanya menghancurkan bumi. Dengan semua gabungan kekuatan, tugas nampak lebih mudah. Namun kenyatannya tidak demikian! Para pahlawan super justru saling melawan satu sama lain Hulk melawan Captain America, siapa yang akan menang? Apakah Iron Man dapat mengalahkan kekuatan super milik Thor? Bagaimana para pahlawan super ini secara bersamasama menghadapi bencana, melindungi masyarakat dan yang terpenting, bertahan hidup?</p>', '2023-11-27 08:01:29', '2023-11-27 08:01:29'),
(32, 'A-004', 'https://youtu.be/DN3sRz_veBU?si=bMPCcC8vfuOn0Top', 'Mencuri Raden Saleh', 'images/radensaleh.jpg', 'banner/bnradensalehhd.jpg', 8, 154, '2022', 0, 0, '<p style=\"text-align: justify;\">Pencurian terbesar abad ini tinggal menghitung hari menjelang tanggal eksekusinya. Komplotan sudah lengkap dan siap menjalankan misi untuk mencuri lukisan sang maestro, Raden Saleh, yang berjudul Penangkapan Diponegoro. Pemalsuan, peretasan, pertarungan, dan manipulasi terjadi dalam pencurian berencana yang dijalankan oleh sekelompok anak muda amatiran</p>', '2023-11-28 07:26:21', '2023-11-28 07:26:21'),
(37, 'K-002', 'https://www.youtube.com/watch?v=0uf6QUacVgs', 'Miracle in cell No.7', 'images/miracle.jpeg', 'banner/bannermiracle.jpg', 7, 145, '2022', 0, 0, '<p style=\"text-align: justify;\"><span class=\"fontstyle0\">Kedamaian dan ketenangan yang hadir sementara di kapal uap Karnak saat berlayar di Sungai Nil seketika hancur setelah salah satu penumpang ditemukan terbunuh secara tragis. Detektif terkenal dari Belgia, Hercule Poirot yang sedang liburan dipercayakan dengan tugas penting untuk mengidentifikasi penumpang mana yang menjadi pembunuh sebelum mereka menyerang lagi. Berlatar pemandangan epik dari pemandangan gurun Mesir yang luas dan piramida Giza yang megah, kisah tentang hasrat yang tak terkendali dan kecemburuan yang melumpuhkan ini menampilkan sekelompok pelancong kosmopolitan yang berpakaian rapi. Ada cukup banyak tikungan dan intrik jahat film ini yang membuat penonton menebak-nebak sampai akhir yang mengejutkan</span>&nbsp;</p>', '2023-12-02 14:12:30', '2023-12-02 14:12:30'),
(38, 'R-001', 'https://www.youtube.com/watch?v=nwhB2Hb7g5c', 'Dilan 1990', 'images/posterdilan.jpg', 'banner/dilan.webp', 9, 110, '2018', 0, 0, '<p style=\"text-align: justify;\"><span class=\"fontstyle0\">Milea (Vanesha Prescilla) bertemu dengan Dilan (Iqbaal Ramadhan) di sebuah SMA di Bandung. Itu adalah tahun 1990, saat Milea pindah dari Jakarta ke Bandung. Perkenalan yang tidak biasa kemudian membawa Milea mulai mengenal keunikan Dilan lebih jauh. Dilan yang pintar, baik hati dan romantis... semua dengan caranya sendiri. Cara Dilan mendekati Milea tidak sama dengan teman-teman lelakinya yang lain, bahkan Beni, pacar Milea di Jakarta. Bahkan cara berbicara Dilan yang terdengar kaku, lambat laun justru membuat Milea kerap merindukannya jika sehari saja ia tak mendengar suara itu. Perjalanan hubungan mereka tak selalu mulus. Beni, gank motor, tawuran, Anhar, Kang Adi, semua mewarnai perjalanan itu. Dan Dilan... dengan caranya sendiri...selalu bisa membuat Milea percaya ia bisa tiba di tujuan dengan selamat. Tujuan dari perjalanan ini. Perjalanan mereka berdua. Katanya, dunia SMA adalah dunia paling indah. Dunia Milea dan Dilan satu tingkat lebih indah daripada itu.</span></p>', '2023-12-02 14:14:30', '2023-12-02 14:14:30'),
(41, 'K-003', 'https://www.youtube.com/watch?v=1nTIyQSkCt8', 'Srimulat : Hidup Memang Komedi', 'images/srimulat.jpg', 'banner/bannersrimulat.jpg', 7, 105, '2023', 0, 0, '<p style=\"text-align: justify;\"><span class=\"fontstyle0\">Mendapatkan tawaran menjadi bintang nasional, membawa grup Srimulat berhadapan dengan kerasnya ibukota dan kendala bahasa. Saat berproses, masalah bertambah karena kisah asmara Gepeng (Juan Bio One) dan Royani (Indah Permatasari), hingga krisis identitas Tessy (Erick Estrada) yang membuatnya masuk penjara. Apa mereka bisa menaklukkan ibukota dengan tawa, atau mereka yang akan ditertawakan ibukota dan harus menerima kenyataan hidup memang komedi?</span>&nbsp;</p>', '2023-12-02 14:35:51', '2023-12-02 14:35:51'),
(42, 'K-004', 'https://www.youtube.com/watch?v=hCTfpDnnxtA', 'Gampang Cuan', 'images/gampangcuan.jpg', 'banner/bannergampangcuan.jpg', 7, 118, '2023', 0, 0, '<p style=\"text-align: justify;\"><span class=\"fontstyle0\">Sultan, Bilqis, dan Aji tengah bersusah payah dalam mencari uang. Ketiga kakak beradik tersebut berusaha mempertahankan rumah mereka yang akan tersegel. Dalam teaser itu terlihat sebuah rumah sederhana dengan sebuah toko kecil di depannya, yang oleh mereka bertiga berusaha dipertahankan berkat lilitan hutang yang dimiliki oleh keluarganya. Berkat peristiwa itu, Sultan dan kedua saudaranya pun mulai melakukan berbagai cara agar dapat terbebas dari jeratan hutang tersebut tanpa sepengetahuan ibu mereka.</span>&nbsp;</p>', '2023-12-02 14:37:34', '2023-12-02 14:37:34'),
(43, 'AD-001', 'https://www.youtube.com/watch?v=rBxcF-r9Ibs', 'Jumanji : The Next Level', 'images/jumanji.jpg', 'banner/bannerjumanji.jpeg', 14, 123, '2019', 0, 0, '<p style=\"text-align: justify;\">Dalam Jumanji: The Next Level, keempat sahabat kembali lagi, tetapi permainannya telah berubah. Saat memutuskan masuk lagi ke Jumanji untuk menyelamatkan salah satu dari mereka, mereka menemukan segalanya tak seperti yang diduga. Para pemain harus melaju ke wilayah-wilayah tersembunyi dan belum dijamah, dari gurun nan gersang ke pegunungan bersalju, demi meloloskan diri dari permainan paling berbahaya di dunia.</p>', '2023-12-02 14:59:12', '2023-12-02 14:59:12'),
(44, 'R-002', 'https://www.youtube.com/watch?v=G4HH8kVI4OY', 'Rudy Habibie (Habibie & Ainun 2)', 'images/rudyhabibie.jpg', 'banner/posterrudyhabibie.jpg', 9, 124, '2016', 0, 0, '<p style=\"text-align: justify;\">Rudy sangat ingin membuat pesawat untuk memenuhi pesan almarhum Papinya: &ldquo;MENJADI MATA AIR&rdquo;, menjadi berguna untuk orang banyak. Tapi di atas hanya arus membuat keluarga nya berkorban karena dia harus kuliah di RWTH Aachen, Jerman Barat. Di sana Rudy hidup dalam kondisi terbatas, rasa rindu rumah, dan belajar soal arti persahabatan, cinta, juga pengkhianatan bersama para mahasiswa Indonesia yang baru dikenal nya di sana.</p>', '2023-12-02 15:01:53', '2023-12-02 15:01:53'),
(45, 'H-003', 'https://www.youtube.com/watch?v=0hSptYxWB3E', 'Pengabdi Setan', 'images/Pengabdi_Setan_poster.jpg', 'banner/banner_pengabdisetan.jpg', 6, 107, '2017', 0, 0, '<p style=\"text-align: justify;\">Setelah sakit aneh selama 3 tahun, Ibu akhirnya meninggal dunia. Bapak lalu memutuskan untuk kerja di luar kota meninggalkan anak-anak. Tak lama kemudian, anak-anak merasa bahwa Ibu kembali berada di rumah. Situasi semakin menyeramkan ketika mereka mengetahui bahwa Ibu datang lagi tidak sekedar untuk menjenguk, tapi untuk menjemput mereka.</p>', '2023-12-02 17:47:40', '2023-12-02 17:47:40'),
(48, 'H-004', 'https://www.youtube.com/watch?v=jtDRXPTZT-M&t=9s', 'KKN di Desa Penari', 'images/kkn.jpg', 'banner/banner_kkn.webp', 6, 121, '2022', 0, 0, '<p style=\"text-align: justify;\">Seorang laki-laki yang dikenal dengan sebutan Simpleman, mendapatkan sebuah kisah menyeramkan. Berawal dari 5 mahasiswa yang harus melaksanakan KKN di sebuah desa terpencil, Nur (Tissa Biani), Widya ( Adinda Thomas), Ayu (Aghniny Haque), Bima (Achmad Megantara), Anton (Calvin Jeremy) dan Wahyu ( M. Fajar Nugraga) tidak pernah menyangka kalau desa yang mereka pilih ternyata bukanlah desa biasa. Pak Prabu (Kiki Narendra), sang kepala desa memperingatkan mereka untuk tidak melewati batas gapura terlarang, sebuah gapura yang menuju tapak tilas. Tempat misterius itu mungkin ada hubungannya dengan sosok penari cantik yang mulai menganggu Nur dan juga Widya. Satu persatu mulai merasakan keanehan desa tersebut. Bima pun mulai berubah sikap. Proker KKN mereka berantakan, tampaknya penghuni ghaib desa tersebut tidak menyukai mereka. Nur akhirnya menemukan fakta mencengangkan bahwa salah satu dari mereka melanggar aturan yang paling fatal di desa tersebut. Teror sosok penari misterius semakin menyeramkan, mereka mencoba meminta bantuan Mbah Buyut (Diding Boneng) dukun setempat, namun sudah terlambat, mereka terancam tidak akan bisa pulang dengan selamat dari desa yang dikenal dengan sebutan Desa Penari itu.</p>', '2023-12-02 17:56:18', '2023-12-02 17:56:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_nama_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `phone_number` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_nama_user`, `username`, `password`, `nama`, `alamat`, `phone_number`) VALUES
(1, 'dhilah', '1234567890', 'Siti Nur Fadhilah', 'Purwokerto', '0887435464273'),
(2, 'raisaa', 'raisanur', 'Raisa Nurlita', 'Palembang', '085289907588'),
(3, 'aryaa', 'arya1', 'arya', 'jakarta', '0986397424'),
(4, 'naufal', 'naufal1', 'muhamad naufal', 'Purworejo', '082133887594'),
(5, 'fairuz12', 'fairuz1', 'Fairuz', 'Cirebon', '081327648264'),
(6, 'dzikri11', 'dzikri', 'Muhammad Dzikri', 'Pekalongan', '089326723827'),
(7, 'Dian', 'dian01', 'Rizki Dian ', 'Pemalang', '0897643543256');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_nama_genre`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_nama_review`),
  ADD KEY `id_user` (`id_user`,`id_film`),
  ADD KEY `id_film` (`id_film`);

--
-- Indeks untuk tabel `pemain`
--
ALTER TABLE `pemain`
  ADD PRIMARY KEY (`id_nama_pemain`);

--
-- Indeks untuk tabel `pemeran`
--
ALTER TABLE `pemeran`
  ADD PRIMARY KEY (`id_pemeran`),
  ADD KEY `id_pemain` (`id_pemain`,`id_film`),
  ADD KEY `id_film` (`id_film`);

--
-- Indeks untuk tabel `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indeks untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pemain` (`id_rekomendasi`),
  ADD KEY `id_genre` (`id_genre`),
  ADD KEY `id_rekomendasi` (`id_rekomendasi`),
  ADD KEY `id_review` (`id_review`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_nama_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id_nama_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_nama_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `pemain`
--
ALTER TABLE `pemain`
  MODIFY `id_nama_pemain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `pemeran`
--
ALTER TABLE `pemeran`
  MODIFY `id_pemeran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_nama_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_nama_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `tb_film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemeran`
--
ALTER TABLE `pemeran`
  ADD CONSTRAINT `pemeran_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `tb_film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemeran_ibfk_2` FOREIGN KEY (`id_pemain`) REFERENCES `pemain` (`id_nama_pemain`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  ADD CONSTRAINT `tb_film_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_nama_genre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
