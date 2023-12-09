-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Des 2023 pada 21.04
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
(6, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(7, 'admin2', 'admin2'),
(8, 'admin3', 'admin3'),
(10, 'admin4', 'fc1ebc848e31e0a68e868432225e3c82'),
(11, 'raisa', '4b8ed057e4f0960d8413e37060d4c175');

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
(130, 11, 77, 'Haii barbiee!!!!', 0, '2023-12-07 06:59:15'),
(131, 11, 84, 'siapa yang narok bawang disinii huhuuu :(\\n', 0, '2023-12-07 07:05:32'),
(132, 11, 83, 'angga ngapainn???', 0, '2023-12-07 07:07:23'),
(133, 13, 12, 'Saya tidak bisa lebih puas dengan sequel ini! Alur ceritanya terjalin dengan apik, memberikan ketegangan yang konstan. Visual dan suara yang digunakan berhasil menghadirkan suasana yang sangat menyeramkan.', 5, '2023-12-09 18:20:11'),
(134, 12, 12, 'Dari segi cerita dan visual, film ini menghadirkan kualitas yang luar biasa. Alurnya menarik dan tidak terduga, membuat penonton tetap terpaku pada layar sepanjang film.', 4, '2023-12-09 18:21:18'),
(135, 8, 12, 'Sayangnya, film ini gagal mempertahankan standar yang diharapkan. Saya merasa beberapa bagian ceritanya terlalu dipaksakan dan tidak memberikan kejutan yang memuaskan.', 2, '2023-12-09 18:34:19'),
(136, 9, 12, 'Saya agak kecewa dengan sekuel ini. Meskipun beberapa adegannya menegangkan, tapi ada banyak plot hole yang tidak terjawab, membuat pengalaman menontonnya kurang memuaskan.', 2, '2023-12-09 18:35:09'),
(137, 14, 12, 'Dari segi cerita dan visual, film ini menghadirkan kualitas yang luar biasa. Alurnya menarik dan tidak terduga, membuat penonton tetap terpaku pada layar sepanjang film.', 4, '2023-12-09 18:37:03'),
(138, 15, 13, 'The Conjuring: The Devil Made Me Do It menghadirkan atmosfir yang menggigit kukunya sejak awal hingga akhir. Jalan ceritanya yang kompleks dan penuh kejutan membuatnya sulit untuk diprediksi. Akting yang luar biasa dan penggambaran yang detail terhadap kasus nyata menambah kedalaman cerita secara keseluruhan.', 5, '2023-12-09 18:39:58'),
(139, 9, 13, 'Secara visual dan artistik, film ini memukau. Setiap adegan disusun dengan cermat, efek visual yang memukau, dan desain suara yang membuat atmosfer semakin mencekam.', 5, '2023-12-09 18:40:44'),
(140, 8, 13, 'Secara visual dan artistik, film ini memukau. Setiap adegan disusun dengan cermat, efek visual yang memukau, dan desain suara yang membuat atmosfer semakin mencekam.', 4, '2023-12-09 18:42:09'),
(141, 16, 13, 'The Conjuring: The Devil Made Me Do It berhasil menggabungkan elemen horor klasik dengan inovasi yang menyegarkan. Ia tidak hanya mengandalkan jump scares, tetapi juga membangun ketegangan secara bertahap, menciptakan suasana mencekam yang bertahan lama.', 4, '2023-12-09 18:44:24'),
(142, 16, 23, 'Alur cerita terlalu klise dan mudah ditebak, kurang memberikan kejutan kepada penonton', 1, '2023-12-09 18:47:13'),
(143, 14, 23, 'Pengambilan gambar dan sinematografi dalam film ini sungguh memukau. Setiap adegan terasa seperti lukisan hidup yang indah.', 5, '2023-12-09 18:48:19'),
(144, 13, 23, 'Saya terkesan dengan visual dan sinematografi yang memikat dalam film ini. Penggunaan pencahayaan dan angle kamera benar-benar menghidupkan suasana cerita.', 5, '2023-12-09 18:49:44'),
(145, 22, 23, 'Film ini menghadirkan sudut pandang yang menarik tentang tekanan sosial dan psikologis yang dialami oleh tokoh utama. Hal ini membuatnya jadi lebih berkesan.', 4, '2023-12-09 18:56:25'),
(146, 17, 28, 'Plane 2023 adalah film yang luar biasa! Plotnya menarik dan penuh dengan aksi yang memukau.', 5, '2023-12-09 18:59:17'),
(147, 9, 28, 'Saya suka bagaimana film ini berhasil menggabungkan cerita yang menegangkan dengan pesan moral yang dalam. Sungguh inspiratif!', 5, '2023-12-09 18:59:57'),
(148, 14, 28, 'Meskipun visualnya mengagumkan, plot film ini terasa klise dan dapat ditebak.', 3, '2023-12-09 19:00:35'),
(149, 15, 28, 'Akting para pemainnya sangat mengesankan dan membuat saya terhubung emosional dengan karakter-karakter mereka.', 4, '2023-12-09 19:01:21'),
(150, 23, 28, 'Saat menonton Plane 2023, saya merasa seperti sedang berada di udara. Penggunaan teknologi dalam film ini benar-benar memukau dan membuatnya layak untuk dinikmati di layar besar', 5, '2023-12-09 19:29:27'),
(151, 24, 28, 'Film ini memiliki potensi besar dengan konsep yang menarik, tetapi sayangnya eksekusinya kurang memuaskan. Terdapat beberapa lubang dalam plot yang membuatnya terasa kurang utuh.', 3, '2023-12-09 19:30:27'),
(152, 33, 29, 'Film The Maze Runner adalah perjalanan penuh adrenalin dari awal hingga akhir. Alur cerita yang menegangkan dan pengisahan yang memikat membuatnya unggul di genre distopia. Pengembangan karakter yang luar biasa, dan penampilan para pemainnya luar biasa, terutama Dylan O\\\'Brien dalam perannya sebagai Thomas. Harus ditonton bagi siapa pun yang menyukai misteri yang mendebarkan.', 5, '2023-12-09 19:36:16'),
(154, 32, 29, 'Petualangan yang mendebarkan dan intens yang membuat Anda duduk di ujung kursi. Adegan-adegan di labirin sangat memukau secara visual, dan cara cerita ini terungkap membuat penonton terlibat sepanjang film. Pacing film ini sangat baik, menyatukan aksi dan misteri dengan sempurna. Adaptasi yang fantastis yang memberikan keadilan pada seri bukunya.', 5, '2023-12-09 19:38:15'),
(155, 26, 29, 'Menarik secara visual dan penuh emosi, The Maze Runner memukau penonton dengan premis yang menarik dan tempo yang tak kenal lelah. Pembangunan dunia dalam film ini fantastis, membuat penonton terbenam dalam suasana pasca-apokaliptik yang penuh dengan ketegangan dan bahaya. Kemampuan film ini untuk membuat Anda menebak sampai akhir sangat diacungi jempol, membuatnya pengalaman sinematik yang tak terlupakan.', 4, '2023-12-09 19:39:05'),
(156, 28, 29, 'The Maze Runner dimulai dengan baik tetapi kehilangan momentum seiring berjalannya cerita. Narasinya menjadi terduga pada beberapa saat, dan beberapa klise mengurangi dampak dari premis yang unik. Meskipun menghibur, kurangnya kedalaman yang diperlukan untuk membuat kesan yang abadi.', 3, '2023-12-09 19:40:35'),
(157, 30, 29, 'Walaupun The Maze Runner memiliki momen-momen yang mendebarkan, film ini mengalami masalah dalam penceritaannya. Pembangunan menuju klimaks terasa terburu-buru, dan beberapa pengungkapan kurang memiliki dampak yang diperlukan karena pengisahan yang tergesa-gesa. Film yang menyenangkan tetapi meninggalkan banyak yang diinginkan dalam hal kefasihan penceritaan.', 3, '2023-12-09 19:41:20'),
(158, 39, 30, 'Death on the Nile\\\" adalah sebuah masterpiece! Alur ceritanya memikat, memadukan misteri dengan twist yang brilian. Penampilan aktor dan visual yang luar biasa membuat film ini layak dinikmati. Sangat direkomendasikan bagi pecinta cerita detektif yang penuh teka-teki', 5, '2023-12-09 19:45:50'),
(159, 12, 30, 'Film ini adalah sebuah mahakarya yang menggabungkan elemen-elemen yang sempurna. Dialog yang tajam, performa akting yang kuat, dan pengembangan karakter yang mendalam. Christie pasti bangga melihat adaptasi yang sedemikian rupa', 5, '2023-12-09 19:46:30'),
(160, 25, 30, 'Keindahan visual tidak dapat disangkal, tapi plotnya terasa dipaksakan. Twist yang seharusnya mengagetkan terasa terlalu dipaksakan dan kehilangan daya tariknya', 3, '2023-12-09 19:47:46'),
(161, 27, 30, 'Saya berharap lebih banyak dari film ini, tetapi sayangnya, porsi misteri yang biasanya menjadi daya tarik utama dalam karya Christie terasa kurang dalam. Terlalu banyak fokus pada drama antar karakter yang mengurangi kekuatan cerita.', 2, '2023-12-09 19:48:24'),
(162, 21, 30, 'Death on the Nile\\\" tidak mampu mengeksploitasi sepenuhnya potensi cerita yang ada. Kecepatan cerita terasa lambat di beberapa bagian dan menurunkan tingkat kegembiraan menonton', 2, '2023-12-09 19:49:19'),
(163, 9, 30, 'Sebagai penggemar novel Agatha Christie, film ini memuaskan. Penyutradaraan yang cermat dan penampilan hebat dari para aktor menghidupkan karakter-karakter yang legendaris. Endingnya mengejutkan dan memuaskan, membuatnya patut ditonton berkali-kali.', 5, '2023-12-09 19:50:12'),
(164, 9, 31, 'The Avengers adalah sebuah mahakarya dalam dunia film superhero. Aksi yang mengagumkan, cerita yang menarik, dan pengembangan karakter yang luar biasa membuatnya menjadi salah satu film yang paling ikonik dalam Marvel Cinematic Universe (MCU).', 5, '2023-12-09 19:52:32'),
(165, 31, 31, 'The Avengers berhasil menggabungkan humor yang tepat, aksi yang mendebarkan, dan efek khusus yang luar biasa. Film ini berhasil memenuhi harapan para penggemar dan bahkan melebihinya.', 5, '2023-12-09 19:53:16'),
(166, 20, 31, 'Jalan cerita yang terstruktur dengan baik, menyediakan ruang bagi setiap karakter untuk bersinar tanpa merusak keseimbangan keseluruhan film. Sutradara berhasil menggabungkan elemen-elemen yang berbeda dengan sempurna.', 5, '2023-12-09 19:53:58'),
(167, 18, 31, 'Koreografi adegan pertempuran yang luar biasa. Ketika para Avengers beraksi bersama, itu bukan hanya aksi yang menghibur, tetapi juga memberikan momen-momen epik yang tidak akan pernah terlupakan.', 5, '2023-12-09 19:54:38'),
(168, 16, 31, 'Jalan cerita yang terstruktur dengan baik, menyediakan ruang bagi setiap karakter untuk bersinar tanpa merusak keseimbangan keseluruhan film. Sutradara berhasil menggabungkan elemen-elemen yang berbeda dengan sempurna.', 5, '2023-12-09 19:57:42'),
(169, 35, 32, 'Film ini adalah karya seni yang luar biasa! Ceritanya menggugah, dengan penampilan aktor yang luar biasa dan sinematografi yang memukau. Sangat merekomendasikan untuk ditonton!', 5, '2023-12-09 20:01:57'),
(170, 40, 32, 'Saya terpukau dengan bagaimana film ini menggambarkan kehidupan Raden Saleh dengan begitu indahnya. Setiap adegan terasa seperti lukisan hidup yang menghormati warisan budaya kita.', 5, '2023-12-09 20:02:41'),
(171, 42, 32, 'Sebagai penggemar sejarah, film ini benar-benar menghidupkan kembali atmosfer zaman tersebut. Saya sangat terkesan dengan penelitian yang mendalam dan akurat untuk menampilkan kehidupan Raden Saleh', 5, '2023-12-09 20:03:19'),
(172, 43, 32, 'Karya ini menawarkan pengalaman sinematik yang memukau. Dari skenario hingga pengarahan seni, semuanya berpadu sempurna memberikan makna yang mendalam', 4, '2023-12-09 20:04:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `like`
--

CREATE TABLE `like` (
  `id_like` int(11) NOT NULL,
  `id_film_like` int(11) NOT NULL,
  `id_user_like` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `like`
--

INSERT INTO `like` (`id_like`, `id_film_like`, `id_user_like`) VALUES
(17, 12, 9),
(4, 12, 12),
(3, 12, 13),
(6, 12, 14),
(18, 12, 23),
(16, 12, 28),
(2, 13, 8),
(1, 13, 9),
(7, 13, 15),
(8, 13, 16),
(15, 13, 28),
(10, 23, 13),
(9, 23, 14),
(11, 23, 22),
(13, 28, 9),
(14, 28, 15),
(12, 28, 17),
(19, 28, 23),
(20, 28, 24),
(23, 29, 26),
(24, 29, 28),
(25, 29, 30),
(22, 29, 32),
(21, 29, 33),
(31, 30, 9),
(26, 30, 12),
(30, 30, 21),
(28, 30, 25),
(29, 30, 27),
(32, 31, 9),
(38, 31, 16),
(35, 31, 17),
(34, 31, 18),
(36, 31, 24),
(33, 31, 31),
(37, 31, 39),
(39, 32, 16),
(40, 32, 35),
(41, 32, 40),
(42, 32, 42),
(43, 32, 43);

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
(48, 'Tony Goldwyn', 'Tony.jpeg', 'Los Angeles', '1960-05-20'),
(49, 'Aulia Sarah', 'Aulia_Sarah.png', 'Jakarta', '1991-07-06'),
(50, 'Achmad Megantara', 'ahmad megantara.webp', 'Jakarta', '1996-12-27'),
(51, 'Tissa Biani', 'Tissa_Biani.png', 'Jakarta', '2002-07-24'),
(52, 'Fajar Nugra', 'Fnugra.jpg', 'Bogor', '1995-09-25'),
(53, 'Adinda Thomas', 'Adinda_Thomas.png', 'Bandung', '1993-08-08'),
(54, 'Kiki Narendra', 'Kiki-Narendra.jpg', 'Banjarmasin', '1979-06-28'),
(55, 'Rosa Salazar', 'Rossa Salazar.jpeg', 'Washington, DC', '1985-07-16'),
(56, 'Kaya Scodelario', 'kaya .jpeg', 'Haywards Heath', '1992-03-13'),
(57, 'Thomas Brodie-Sangster', 'thomas b.jpeg', ' Southwark, London', '1990-05-16'),
(58, 'Will Pouter', 'Will p.jpeg', 'Hammersmith', '1993-01-28'),
(59, 'Dylan O Brien', 'Dylan O.jpeg', 'New York', '1991-08-26'),
(60, 'Ki Hong Lee', 'Ki Hong lee.jpeg', 'Seoul', '1986-09-30'),
(61, 'James Dashner', 'James D.jpeg', ' Austell, Georgia', '1972-11-26'),
(62, 'Bio One', 'bio one.webp', 'Kota Palu', '1998-01-01'),
(63, 'Elang El gibran', 'elang gibran.jpeg', 'Yogyakarta', '2000-01-12'),
(64, 'Zulfa Maharani', 'Zulfa_Maharani.jpg', 'Jakarta', '1999-12-10'),
(65, 'Erick Estrada', 'Erick_Estrada.png', 'Surakarta', '1987-03-17'),
(66, 'Dimas Anggara', 'Dimas Anggara.webp', 'Jakarta', '1988-09-10'),
(67, 'Ibnu Jamil', 'Ibnu Jamil.jpeg', 'Jakarta', '1981-04-30'),
(68, 'Indah Permata Sari', 'Indah.webp', 'Makassar', '1997-05-16'),
(69, 'Kenneth Branagh', 'kenneth.jpeg', 'Belfast', '1960-12-10'),
(70, 'Armie Hammer', 'armie.jpeg', 'Santa Monica', '1986-08-28'),
(71, 'Gal Gadot', 'gal gadot.jpeg', 'Petah Tikva', '1995-04-18'),
(72, 'Annette Bening', 'annette bening.jpeg', 'Topeka', '1958-05-29'),
(73, 'Tom Bateman', 'tom bateman.jpeg', 'Oxford', '1989-03-15'),
(74, 'Letitia Wright', 'lititia.jpeg', 'Georgetown', '1993-10-31'),
(75, 'Emma Mackey', 'emma m.jpeg', 'Le Mans', '1996-01-04'),
(76, 'Mawar De Jong', 'mawar-de-jongh.jpeg', 'Haarlem', '2001-09-26'),
(77, 'Denny Sumargo', 'Denny_Sumargo.png', 'Makassar', '1981-10-11'),
(78, 'Bryan Domani', 'Bryan_Domani_.png', 'Munchen', '2000-07-29'),
(79, 'Marsha Timothy', 'Marsha-Timothy.png', 'Jakarta', '1979-01-08'),
(80, 'Rigen Rakelna', 'rigen.jpeg', 'Surabaya', '1991-11-19'),
(81, 'Indra Jegel', 'indra jegel.jpeg', 'Medan', '1989-11-05'),
(82, 'Vanesha Prescilla', 'Vanesha Prescilla.webp', 'Jakarta', '1999-10-25'),
(83, 'Refal Hady', 'Refal-Hady.jpg', 'Jakarta', '1993-10-24'),
(84, 'Adhisty Zara', 'Adhisty Zara.jpg', 'Bandung', '2003-06-21'),
(85, 'Shania Garcia', 'Shania Gracia.jpg', 'Jakarta', '1999-08-31'),
(86, 'Steffi Zamora', 'Steffi Zamora.webp', 'Jakarta', '2000-12-15'),
(87, 'Yoriko Angeline', 'Yoriko_Angeline,_Kwikku.png', 'Banjarmasin', '2002-08-23'),
(88, 'Anya Geraldine', 'Anya Geraldine.webp', 'Jakarta', '1995-12-15'),
(89, 'Dimas Danang', 'Dimas Danang.jpg', 'Jakarta', '1989-04-18'),
(90, 'Pandu Winoto', 'Pandu Winoto.jpg', 'Jakarta', '1993-01-12'),
(91, 'Alzi Markers', 'Alzi_Markers.png', 'Jakarta', '2000-07-22'),
(93, 'Mariam Bellina', 'mariam bellina.webp', 'Jakarta', '1965-04-10'),
(94, 'Anya Zein', 'Anya zein.webp', 'Ngawi', '1962-12-08'),
(95, 'Dwayne Douglas Johson', 'Dwaynejohson.jpg', 'California', '1972-05-02'),
(96, 'Karen Sheila Gillan', 'karengilan.jpg', 'Britania Raya', '1987-11-28'),
(97, 'Kevin Darnell Hart', 'kevinhart.jpg', 'Philadelphia', '1979-07-06'),
(98, 'Thomas Jack Black', 'jackblack.jpg', 'California', '1969-08-28'),
(99, 'Robin McLaurin Williams', 'robinwilliams.jpg', 'California', '1951-07-21'),
(100, 'Nicholas Jerry Jonas', 'nickjonas.jpg', 'Texas', '1992-09-16'),
(101, 'Madison Iseman', 'madisoniseman.jpg', 'Carolina', '1997-02-14'),
(102, 'Kirsten Caroline Dunst', 'kirstendunst.jpg', 'New Jersey', '1982-04-30'),
(103, 'Reza Rahardian', 'rezarahardian.jpg', 'Bogor', '1987-03-05'),
(104, 'Chelsea Island', 'chealseisland.jpg', 'Washington', '1995-06-02'),
(105, 'Ernest Prakasa', 'ernest.jpg', 'Jakarta', '1982-01-29'),
(106, 'Pandji Pragiwaksono', 'pandji.jpg', 'Singapura', '1979-06-18'),
(107, 'Boris Thompson', 'boris.jpg', 'Bandung', '1988-05-25'),
(108, 'Millane Fernandez', 'milenia.jpg', 'Jakarta', '1986-07-23'),
(109, 'Angelina Jolie', 'angelinajolie.jpg', 'Los Angeles', '1975-06-04'),
(110, 'Mary Elle Fanning', 'ellefanning.jpg', 'Georgia', '1998-04-09'),
(111, 'Vivienne Jolile-Pitt', 'viviene.jpg', 'Los Angeles', '2008-09-08'),
(112, 'Sam Rilley', 'samriley.jpg', 'Menston', '1980-01-08'),
(113, 'Juno Violet Temple', 'juno.jpg', 'London', '1989-07-21'),
(114, 'Lesley Manville', 'lesley.jpg', 'Britania Raya', '1956-03-12'),
(115, 'Imelda Mary', 'imelda.jpg', 'London', '1956-01-09'),
(116, 'Sharlto Colpey', 'sharlto.jpg', 'Pretoria', '1973-11-27'),
(117, 'Daniel Jacob Radcliffe', 'daniel.jpg', 'London', '1989-07-23'),
(118, 'Emma Watson', 'emma.jpg', 'Paris', '1990-04-15'),
(119, 'Rupert Alexander', 'rupert.jpg', 'Harlow', '1988-08-24'),
(120, 'Alan Sidney Patrick', 'alan.jpg', 'London', '1946-02-21'),
(121, 'Thomas Andrew', 'tom.jpg', 'Epsom', '1987-09-22'),
(122, 'Matthew David Lewis', 'matthew.jpg', 'Leeds', '1989-06-27'),
(123, 'Bonnie Francesca Wright', 'bonnie.jpg', 'London', '1991-02-17'),
(124, 'Halle Lynn Bailey', 'hallebailey.jpg', 'Georgia', '2000-03-27'),
(125, 'Javier Angel Encinas', 'javier.jpg', 'Gran Canaria', '1969-03-01'),
(126, 'Melissa Ann', 'meliisa.jpg', 'Plainfield', '1970-08-26'),
(127, 'Jonah Andre Haurer-King', 'jonah.jpg', 'London', '1995-05-30'),
(128, 'Jessica Caroline Alexander', 'jessicalexander.jpg', 'London', '1999-06-19'),
(129, 'Daveed Daniele Diggs', 'daveed.jpg', 'California', '1982-01-24'),
(130, 'Nora Lum', 'awkwafina.jpg', 'New York', '1988-06-02'),
(131, 'Lily James', 'lily.jpg', 'Inggris', '1989-04-05'),
(132, 'Richard Madden', 'richard.jpg', 'Elderslie', '1986-06-18'),
(133, 'Helena Bonham Carter', 'helena.jpg', 'London', '1989-03-12'),
(134, 'Holliday Clark Grainger', 'holliday.jpg', 'Manchester', '1988-03-27'),
(135, 'Stellan Skarsgard', 'stellan.jpg', 'Gonthenburg', '1951-06-13'),
(136, 'Derek Jacobi', 'derek.jpg', 'Inggris', '1938-10-22'),
(137, 'Hayley Atwell', 'hayley.jpg', 'Britania Raya', '1982-04-05'),
(138, 'Cate Blanchett', 'catherine.jpg', 'Australia', '1969-05-14'),
(139, 'Zulfani Pasha', 'zulfany.jpg', 'Tanjung Pandan', '1996-06-07'),
(140, 'Cut Mini Theo', 'cutmini.jpg', 'Jakarta', '1973-12-30'),
(141, 'Lukman Sardi', 'lukman sardi.jpg', 'Jakarta', '1971-07-14'),
(142, 'Verrys Yamarno', 'verry.jpg', 'Pulau Belitung', '1996-03-17'),
(143, 'Ferdian', 'ferdian.jpg', 'Pulau Belitung', '1995-11-06'),
(144, 'Ikranagara', 'ikranagara.jpg', 'Loloan Barat', '1943-09-19'),
(145, 'Levina', 'levina.jpg', 'Tanjung Pandan', '1995-06-26'),
(146, 'Chantiq Alura Josephine', 'chantiq.jpg', 'Austria', '2003-10-04'),
(147, 'Nirina Zubir', 'nirina.jpg', 'Antananarivo', '1980-03-12'),
(148, 'Ghina Salsabila', 'ghina.jpg', 'Bandung', '1997-03-23'),
(149, 'Riska Tania Apriadi', 'riskatania.jpg', 'Jakarta', '2003-04-21'),
(150, 'Al Fathir Muchtar', 'alfatir.jpg', 'Jakarta', '1979-12-23'),
(151, 'Joe P Project', 'joe.jpg', 'Bandung', '1967-05-06'),
(152, 'Sherina Munaf', 'sherina M.jpg', 'Bandung', '1990-06-11'),
(153, 'Derby Romero', 'romero.jpg', 'Jakarta', '1990-06-08'),
(154, 'Didi Petet', 'Didi-Petet.jpg', 'Surabaya', '1956-07-12'),
(155, 'Henidar Amroe', 'selebriti_Henidar_Amroe.png', 'Bogor', '1962-04-11'),
(156, 'Alyssa Soebandono', 'Alyssa Soebandono.png', 'Jakarta', '1991-12-25'),
(157, 'Sasongko Widjanarko', 'Sasongko Widjanarko.png', 'Bandung', '1972-01-12'),
(158, 'Pevita Pearce', 'Pevita-Pearce.png', 'Jakarta', '1992-10-06'),
(159, 'Junot', 'Junot.png', 'Jakarta', '1985-10-08'),
(160, 'Fedi Nuril', 'Fedi_Nuril.png', 'Jakarta', '1982-07-01'),
(161, 'Raline Shah', 'Raline Shah.png', 'Jakarta', '1985-03-04'),
(162, 'Saykoji', 'Saykoji.png', 'Balikpapan', '1983-06-08'),
(163, 'Firrina Sinatrya', 'Firrina Sinatrya.png', 'Jakarta', '1988-12-30'),
(164, 'Monica Sayangbati', 'Monica Sayangbati.png', 'Jakarta', '1997-04-27'),
(165, 'Christoffer Nelwan', 'Christoffer-Nelwan.png', 'Jakarta', '1997-01-30'),
(166, 'Bastian Steel', 'Bastian Steel.png', 'Bandung', '1999-09-21'),
(167, 'Teuku Rizky Muhammad', 'Teuku Rizky Muhammad.png', 'Jakarta', '1998-01-04'),
(168, 'Egi Fedly', 'Egi Fedly.png', 'Jakarta', '1956-09-11'),
(169, 'Junior Liem', 'Junior Liem.png', 'Jakarta', '1985-06-02'),
(170, 'Harrison Ford', 'Harrison Ford.png', 'Chicago', '1942-07-13'),
(171, 'Mads Mikkelsen', 'mads-mikkelsen.png', 'Denmark', '1965-11-22'),
(172, 'Phoebe Waller', 'Phoebe Waller.png', 'London', '1985-07-14'),
(173, 'Boyd Holbrook', 'Boyd Holbrook.png', 'Amerika', '1981-09-01'),
(174, 'Thomas Kretschmann', 'Thomas Kretschmann.png', 'Jerman', '0062-09-08'),
(175, 'Karen Allen', 'Karen Allen.png', 'Amerika', '1951-10-05'),
(176, 'Olivier Richters', 'Olivier Richters.png', 'Belanda', '1989-09-05'),
(177, 'Jon Favreau', 'Jon Favreau.png', 'Amerika', '1966-10-19'),
(178, 'Neel Sethi', 'Neel Sethi.png', 'Amerika', '2003-12-22'),
(179, 'Idris Elba', 'Idris Elba.png', 'London', '1972-09-08'),
(180, 'Bill Murray', 'Bill Murray.png', 'Amerika', '1950-09-21'),
(181, 'Christopher Walken', 'Christopher Walken.png', 'Amerika', '1943-03-31'),
(182, 'Lupita Nyong', 'Lupita Nyong.png', 'Meksiko', '1983-03-01'),
(183, 'Georgie Henley', 'Georgie Henley.png', 'Britania raya', '1995-07-09'),
(184, 'Anna Popplewell', 'Anna Popplewell.png', 'London', '1988-12-16'),
(185, 'William Moseley', 'William Moseley.png', 'London', '1987-04-27'),
(186, 'Skandar Keynes', 'Skandar Keynes.png', 'London', '1991-09-05'),
(187, 'Tilda Swinton', 'Tilda Swinton.png', 'London', '0060-11-05'),
(188, 'James McAvoy', 'James McAvoy.png', 'London', '1978-04-21'),
(189, 'Liam Neeson', 'Liam Neeson.png', 'London', '1952-06-07'),
(190, 'Jessica Mila', 'jessicamila.webp', 'Langsa', '1992-08-03'),
(191, 'Bianca Hello', 'biancahello.jpg', 'Jakarta', '2001-07-21'),
(192, 'Nabila Ayu', 'nabila.jpg', 'Jakarta', '1999-11-11'),
(193, 'Citra Prima', 'buwindu.jpg', 'Magetan', '1977-12-08'),
(194, 'Jeremy Thomas', 'jeremy.webp', 'Pekanbaru', '1971-07-31'),
(195, 'Anita Hara', 'anita.jpg', 'Jakarta', '1980-03-29'),
(196, 'Dayinta Melira', 'dayinta.jpg', 'jakarta', '1990-04-21'),
(197, 'Gisellma Firmansyah', 'gisellma.webp', 'Jakarta', '2005-12-11'),
(198, 'Mikha Tambayong', 'mikhatambayong.jpeg', 'jakarta', '1994-09-15'),
(199, 'Givina Lukita Dewi', 'Givina.jpg', 'Jakarta', '1996-09-07'),
(200, 'Karina Suwandi', 'karina.jpg', 'Jakarta', '1973-12-26'),
(201, 'Agla Artalidia', 'aglaartalidia.jpg', 'Bandar Lampung', '1986-08-18'),
(202, 'Rio Dewanto', 'riodewanto.jpg', 'Jakarta', '1987-08-28'),
(203, 'Shareefa Daanish', 'shareefa.jpg', 'Jakarta', '1982-06-21'),
(204, 'Indra Brotolaras', 'indra.jpeg', 'Denpasar ', '1994-06-02'),
(205, 'Novia Bachmid', 'novia.png', 'Kabupaten Bolaang Mongondow Timur', '2002-01-19'),
(206, 'Annette Edoarda', 'annette.jpg', 'Jakarta', '1998-06-01'),
(207, 'Tien Kadaryono', 'tien.webp', 'Jakarta', '1952-01-09'),
(208, 'Yannie Sukarya', 'yannie.jpg', 'jakarta', '1990-10-07'),
(209, 'Jeffry Reksa', 'jefry.jpg', 'Bandung', '1990-08-15'),
(210, 'Reza Pramez', 'rezapramez.jpeg', 'Jakarta', '1987-01-12'),
(211, 'Sara Fajira', 'sarafajira.jpg', 'Surabaya', '1996-05-03'),
(212, 'Adipati Dolken', 'adipati.jpg', 'Tangerang', '1991-08-19'),
(213, 'Willem Bevers', 'willem.webp', 'Jakarta', '1974-07-11'),
(214, 'Teuku Rifnu Wikana', 'teuku.jpg', 'Pematang Siantar', '1980-08-02'),
(215, 'Desy Ratnasari', 'desy.jpg', 'Sukabumi', '1973-12-12'),
(216, 'Dewi Pakis', 'dewi.jpg', 'Jakarta', '1957-11-06'),
(217, 'Sonia Alyssa', 'sonia.webp', 'Jerman', '1999-12-05'),
(218, 'Caitlin Halderman', 'cai.jpg', 'Jakarta ', '2000-07-17'),
(219, 'Taskya Namya', 'taskya.jpg', 'Jakarta', '1994-01-11'),
(220, 'Shandy William', 'shandy.jpg', 'Banjarmasin', '1996-07-21'),
(221, 'Hiroaki Kato', 'kato.jpg', 'Jepang', '1983-03-19'),
(222, 'Junior Roberts', 'junior.jpg', 'Jakarta', '2000-11-09'),
(223, 'Yati Surachman', 'yati-surachman-1_43.jpeg', 'Jakarta ', '1957-08-08'),
(224, ' Natasha Wilona', 'Natasha_Wilona_in_2020.png', 'Banjarmasin', '1998-12-15'),
(225, 'Giulio Parengkuan', 'selebriti_Giulio_Parengkuan_p_giulio-parengkuan-017.jpg', 'Jakarta', '1999-07-20'),
(226, 'Acha Septriasa', '5864dd7450ff2-acha-septriasa_216_287.webp', 'Jakarta', '1989-09-01'),
(227, 'Marsha Aruan', 'g_8___8_potret_terkini_marsha_aruan_mantan_pacar_el_rumi_yang_tetap_cantik_tanpa_makeup_p_marsha_aruan-20230628-008-non_fotografer_kly.jpg', 'Jakarta', '1996-10-24'),
(228, 'Ratu Felisha', '026751300_1659589600-6.webp', 'Jakarta', '1982-10-16'),
(229, 'Pritt Timothy', 'Pritt-Timothy-1222.jpg', 'Yogyakarta', '1957-01-24'),
(230, 'Pritt Timothy', 'Jajang_C._Noer_(2006).jpg', 'Paris', '1952-06-28'),
(231, 'Jajang C. Noer', 'Jajang_C._Noer_(2006).jpg', 'Paris', '1952-06-28'),
(232, 'Tora Sudiro', 'Tora_Sudiro_WIB.png', 'Jakarta', '1973-05-10'),
(233, 'Asri Welas', 'Asri_Welas.jpeg', 'Jakarta', '1979-03-07'),
(234, 'Michelle Ziudith', 'https___kompas.id_wp-content_uploads_2021_05_Michelle-ZIudith_1622370840.jpg', 'Medan', '1995-01-20'),
(235, 'Arif Alfiansyah', 'unnamed.jpg', 'Surabaya', '1990-02-26'),
(236, 'Nopek Novian', 'Nopek_Novian_in_2022.png', 'Madiun', '1995-11-27'),
(237, 'Erick Estrada', 'Erick_Estrada_HNA2021.png', 'Surakarta', '1987-03-17'),
(238, 'Arief Didu', 'Arief_Didu_-_Rewrite_(2019).png', 'Jakarta', '1973-02-08'),
(239, 'Shenina Cinnamon', 'Shenina_Cinnamon_Interview_on_Media_Indonesia.png', 'Jakarta', '1999-02-01'),
(240, 'Ajil Ditto', 'Ajil_Ditto_in_2021.png', 'Medan', '2001-11-08'),
(241, 'Musra Dahrizal', '330px-Musra_Dahrizal_Katik_Rajo_Mangkuto.jpg', 'Subang Anak', '1949-08-18'),
(242, 'Oscar Lolang', 'OSCAR_LOLANG.jpg', 'Jakarta', '1993-07-02'),
(243, 'Emir Mahira', '080102100_1663330211-239916425_404801281013254_5957406751215275584_n.webp', 'Tangerang', '1997-09-19'),
(244, 'Brigitta Cynthia', 'Brigitta_Cynthia_on_Lintas_Imaji.png', 'Jakarta', '1993-07-09'),
(245, 'Baskara Mahendra', 'baskara-mahendra-4.jpeg', 'Jakarta', '1993-01-01'),
(246, 'Oka Antara', 'Oka_Antara,_OKJEK_-_Episode_06_-_4_Januari_2016_-_Part_1.jpg', 'Jakarta', '1981-07-08'),
(247, 'Clara Bernadeth', 'Clara-Bernadeth.jpg', 'Jakarta', '1994-08-30'),
(248, 'Joshua Suherman', 'Joshua_Suherman,_Netmediatama,_00.18.jpg', 'Surabaya', '1992-11-03'),
(249, 'Lydia Kandou', 'b071a3d5-7989-4d3a-bafd-a0906a82b20f_43.jpg', 'Jakarta', '1963-02-21'),
(250, 'Ariyo Wahab', 'Ariyo_Wahab_Pic.jpg', 'Jakarta', '1974-07-01'),
(251, 'Nadine Alexandra', 'Nadine_Alexandra_Dewi_Ames_for_Lintas_Imaji_Netmediatama.jpg', 'Winchester', '1991-05-23'),
(252, 'Beby Tsabina', 'Beby_Tsabina_on_Kece_TV_in_2018.png', 'Banda Aceh', '2002-09-27'),
(253, 'Frederika Cull', 'Frederika_Alexis_Cull_with_Joko_Widodo_(cropped).jpg', 'Jakarta', '1999-09-05'),
(254, 'Cakka Nuraga', 'cakka-nuraga_20170920_090524.jpg', 'Bintaro', '1998-08-18'),
(255, 'Rendra Bagus Pamungkas', 'image-w856.webp', 'Kandangan', '1984-03-21'),
(256, ' Abdurrahim Arsyad', 'HNp8Ka64_400x400.jpg', 'Kupang', '1988-04-06'),
(257, 'Brisia Jodie', 'Brisia_Jodie_on_Diary_Crew,_April_2019.jpg', 'Yogyakarta', '1996-03-30'),
(258, ' Anggika Bölsterli', 'Anggika_Bolsterli_Lintas_Imaji.png', 'Jakarta', '1995-06-21'),
(259, 'Cornelio Sunny', '330px-Corneliosunny.jpg', 'Surakarta', '1985-04-15'),
(260, 'Rukman Rosadi', 'Rukman-Rosardi.jpg', 'Lampung', '1972-03-15'),
(261, 'David Saragih', 'selebriti_David_Saragih_p_david-saragih-002.jpg', 'Medan', '1979-07-08'),
(262, 'Bunga Citra Lestari', 'Bunga_Citra_Lestari_Ausembassy.jpg', 'Jakarta', '1983-03-22'),
(263, ' Alex Abbad', 'Alex_Abbad,_slate_id,_03.43.jpg', 'Jakarta', '1978-06-18'),
(264, 'Chew Kin Wah', '026525500_1536302393-chew_kin_wah.webp', 'Malaysia', '1965-09-30'),
(265, ' Atikah Suhaime', 'Atikah_Suhaime_on_MeleTOP.jpg', 'Singapura', '1991-03-15'),
(266, 'Bront Palarae', 'Bront_Palarae_on_MeleTOP_during_Oscars_Breakfast_With_Stars.jpg', 'Malaysia', '1978-09-27'),
(267, 'Richard Oh', 'Richard_Oh_-_Did_Someone_Call_Cut__(8061236935).jpg', 'TebingTinggi', '1959-10-30'),
(268, ' Adinia Wirasti', 'Adinia_Wirasti_on_Interview_Di_Mata_Perempuan_Narasi.jpg', 'Jakarta', '1987-01-19'),
(269, ' Aurora Ribero', 'Aurora_Ribero_in_2018.png', 'Semarang', '2004-05-18'),
(271, 'Niniek L. Karim', '330px-Niniek_L._Karim_on_Festival_Film_Indonesia_2015.jpg', 'Mataram', '1949-01-14'),
(272, 'Temon', '75146-temon-instagramattemontemplar27.jpg', 'Jakarta', '1966-12-28'),
(273, 'Abimana Aryasatya', 'film_abimana.width-800.format-webp.webp', 'Jakarta', '1982-10-24'),
(274, 'Hannah Al Rashid', 'Hannah-Al-Rashid.jpg', 'London', '1986-01-25'),
(275, 'Ence Bagus', 'Ence-Bagus.jpg', 'Jakarta', '1980-12-25'),
(276, ' Indro (pelawak)', '330px-Indro_Warkop.jpg', 'Purbalingga', '1958-05-08'),
(277, 'Margot Robbie', 'margot.jpg', 'Australia', '1990-03-02'),
(278, 'Ryan Gosling', 'ryan.jpg', 'Kanada', '1980-11-12'),
(279, 'Hari Nef', 'harinef.jpg', 'Philadelphia', '1992-10-21'),
(280, 'Alexandra Shipp', 'alexandra.jpg', 'Phoenix', '1991-03-16'),
(281, 'Emma Margaret Marie', 'emmabarbie.jpg', 'London', '1996-01-04'),
(282, 'Michael Austin Cera', 'michael.jpg', 'Kanada', '1988-06-07'),
(283, 'Dua Lipa', 'ualipa.jpg', 'London', '1995-08-22'),
(284, 'Daniel Jonathan Stevens', 'danstevens.jpg', 'Croydon', '1982-10-10'),
(285, 'Luke george Evans', 'luke evans.jpg', 'Pontypool', '1979-04-15'),
(286, 'Joshua Ilan Gad', 'josh gad.jpg', 'Hollywood', '1981-02-23'),
(287, 'Stanley Tucci Jr', 'stanley.jpg', 'New York', '1960-11-11'),
(288, 'Emma Thompson', 'thompson.jpg', 'London', '1959-04-15'),
(289, 'Kevin Delaney Kline', 'kevinkline.jpg', 'St. Louis', '1947-10-24'),
(290, 'Kristen Jaymes Stewart', 'kristenstewart.jpg', 'Los Angeles', '1990-04-09'),
(291, 'Charlize Theron', 'charlize.jpg', 'Benoni', '1975-08-07'),
(292, 'Christoper Hemswort', 'chris.jpg', 'Melbourne', '1983-08-11'),
(293, 'Samuel George', 'samclaffin.jpg', 'Britania Raya', '1986-10-27'),
(294, 'Ian David McShane', 'ian.jpg', 'Britania Raya', '1942-09-29'),
(295, 'Nicholas John', 'nickfrost.jpg', 'Dagenham', '1972-03-28'),
(296, 'Robert William', 'bob.jpg', 'Britania Raya', '1942-10-26'),
(297, 'Alexander Molony', 'alexandermolony.jpg', 'Britania Raya', '2006-09-12'),
(298, 'Ever Anderson', 'ever.jpg', 'California', '2007-11-03'),
(299, 'David Jude', 'jude.jpg', 'London', '1972-12-29'),
(300, 'Yara Sayeh Shahidi', 'yara.jpg', 'Amerika', '2000-02-10'),
(301, 'Joshua Pickering', 'joshua.jpg', 'London', '2009-05-08'),
(302, 'Alyssa Wapanatahk', 'alyysa.jpg', 'London', '1995-08-19'),
(303, 'Molly Parker', 'moly.jpg', 'Kanada', '1972-06-30'),
(304, 'Nadya Arina Pramudita', 'nadyaarina.jpg', 'Jakarta', '1997-10-15'),
(305, 'Omar Daniel', 'Omar Daniel.jpg', 'Surakarta', '1995-04-09'),
(306, 'Ibrahim Risyad Zulkarnain', 'ibrahim.jpg', 'Bandung', '1993-07-20'),
(307, 'Devina Aureel Eleazer', 'devina.jpg', 'Malang', '1996-08-25'),
(308, 'Wafda Syaifan Lubis', 'wafda.jpg', 'Jakarta', '1990-06-04'),
(309, 'Titi Kamal', 'titikamal.jpg', 'Jakarta', '1981-12-07'),
(310, 'Fedrian Nuril', 'fedi.jpg', 'Jakarta', '1982-03-01'),
(311, 'Citra Kirana', 'citra.jpg', 'Bogor', '1994-04-23'),
(312, 'Muhammad Faqih Alaydrus', 'faqih.jpg', 'Jakarta', '2016-04-19'),
(313, 'Krisjiana Baharudin', 'krisjina.png', 'Bogor', '1994-06-09'),
(314, 'Jenny Rachman', 'jenny.jpg', 'Jakarta', '1959-01-18'),
(315, 'Tutie Kirana', 'tutiekirana.jpg', 'Jakarta', '1952-10-28'),
(316, 'Sha Ine Febriyanti', 'ine.jpg', 'Semarang', '1976-02-18'),
(317, 'Omara Naidra Esteghlal', 'omara.jpg', 'Jakarta', '1990-08-10'),
(318, 'Ari Lesmana', 'arilesmana.jpg', 'Bandung', '1995-10-30'),
(319, 'Dwi Sasono', 'dwi.jpg', 'Surabaya', '1980-03-30'),
(320, 'Nungki Kusumastuti', 'nugki.jpg', 'Banda Aceh', '1958-12-29'),
(321, 'Yasmin Safira Napper', 'yasmin.jpg', 'Jakarta ', '2003-11-22'),
(322, 'Abun Sungkar', 'abun.png', 'Bogor', '2003-10-12'),
(323, 'Amara Sophie', 'amara.jpg', 'Malang', '2000-09-12'),
(324, 'Adhitya Putri', 'adihtya.jpg', 'Jakarta', '1989-01-25'),
(325, 'Ridwan Ghany', 'ridwan.jpg', 'Jakarta', '1987-02-03'),
(326, 'Leonardo Dicaprio', 'leo.jpeg', 'Los Angeles', '1974-11-11'),
(327, 'Mark Rufallo', 'mark ruffalo.jpeg', 'Kenosha', '1967-11-22'),
(328, 'Ben KingSley', 'ben kingsley.jpeg', 'Snainton', '1943-12-31'),
(329, 'Michelle William', 'michelle Williams.jpeg', 'montana', '1980-09-09'),
(330, 'Emely Mortimer', 'emile Mortimer.jpeg', 'London', '1971-10-06'),
(331, 'Max Von Sydow', 'max von sydow.jpeg', 'Lund', '1929-04-10'),
(332, 'Patricia Clarkson', 'patricia Clarkson.jpeg', 'Lousiania', '1959-12-29'),
(333, 'Strom reid', 'Strom reid.jpeg', 'georgia', '2003-07-01'),
(334, 'Nia Long', 'nia long.jpeg', 'Brooklyn', '1970-10-30'),
(335, 'Megan Suri', 'megan syri.jpeg', 'California', '1999-03-28'),
(336, 'Daniel Henney', 'daniel Henney.jpeg', 'Michigan', '1979-11-28'),
(337, 'Joaquim de Almeida', 'joaquim de almeida.jpeg', 'Lisboa', '1957-03-15'),
(338, 'Ken Leung', 'ken leung.jpeg', 'New York', '1970-01-21'),
(339, 'Thomas Barbusca', 'thomas barbusa.jpeg', 'New Jersey', '2003-03-03'),
(340, 'Zach Gilford', 'Zach gilford.jpeg', 'Illinois', '1982-01-14'),
(341, 'Alisha Wainwright', 'alisha wainwright.jpeg', 'Florida', '1989-07-14'),
(342, 'Amanda Crew', 'amanda crew.jpeg', 'Kanada', '1986-06-05'),
(343, 'Carlos Santos', 'carlos santos.jpeg', 'Puerto Rico', '1981-04-09'),
(344, 'Briela Guiza', 'briella guiza.jpeg', 'New York', '2011-03-18'),
(345, 'Ramona Tyler', 'ramona tyler.jpg', 'New York', '1977-07-01'),
(346, 'David Mattle', 'david mattle.jpg', 'New York', '2010-05-04'),
(347, 'Mr. Night Shyamalan', 'M.Night Shyamalan.jpeg', 'Mahe', '1970-08-06'),
(348, 'Dave Bautista', 'Dave Bautista.jpeg', 'Washington, DC', '1969-01-18'),
(349, 'Ben Aldridge', 'Ben Aldridge.jpeg', 'Exeter', '1985-11-12'),
(350, 'Jonathan Groff', 'Jonathan Groff.jpeg', 'Pennsylvania', '1985-03-12'),
(351, 'Abby Quinn', 'Abby Quinn.jpeg', 'Michigan', '1996-04-14'),
(352, 'Kristen Cui', 'Kristen Cui.jpeg', 'California', '2013-09-26'),
(353, 'Jenna Orgeta', 'Jenna Ortega.jpeg', 'California', '2002-09-27'),
(354, 'Mellisa Barrera', 'Mellisa Barrera.jpeg', 'Monterrey', '1990-07-04'),
(355, 'Hayden Panettiere', 'Hayden Panettiere.jpeg', 'New York', '1989-08-21'),
(356, 'Samara Weaving', 'Samara Weaving.jpeg', 'Adelaide', '1992-02-23'),
(357, 'Jack Champion', 'jack-champion-header.jpg', 'Virginia', '2004-11-16'),
(358, 'Cortenney Cox Arquette', 'Courteney Cox Arquette.jpeg', 'Alabama', '1964-06-15'),
(359, 'Skeet Ulrich', 'Skeet Ulrich.jpeg', 'Virginia', '1970-01-20');

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
(47, 48, 28, 'Scarsdale'),
(48, 11, 48, 'Ayu'),
(50, 49, 48, 'Badarawuhi'),
(51, 50, 48, 'Bima'),
(52, 51, 48, 'Nur'),
(53, 52, 48, 'Wahyu'),
(54, 53, 48, 'Widya'),
(55, 54, 48, 'Pak Prabu'),
(56, 55, 29, 'Brenda'),
(57, 56, 29, 'Teresa'),
(58, 57, 29, 'Newt'),
(59, 58, 29, 'Gally'),
(60, 59, 29, 'Thomas'),
(61, 60, 29, 'Minho'),
(62, 61, 29, 'Lab Tech'),
(63, 62, 41, 'Gepeng'),
(64, 63, 41, 'Basuki'),
(65, 64, 41, 'Nunung'),
(66, 65, 41, 'Tessy'),
(67, 66, 41, 'Timbul'),
(68, 67, 41, 'Tarsan'),
(69, 68, 41, 'Royani'),
(70, 69, 30, 'Herkule Poirot'),
(71, 70, 30, 'Simon Doyle'),
(72, 71, 30, 'Linnet Ridgewey'),
(73, 72, 30, 'Euphemia'),
(74, 73, 30, 'Bouc'),
(75, 74, 30, 'Rosalie'),
(76, 75, 30, 'Jacqueline'),
(77, 16, 37, 'Dodo Rozak'),
(78, 76, 37, 'Kartika'),
(79, 77, 37, 'Handro Sanusi'),
(80, 78, 37, 'Asrul'),
(81, 79, 37, 'Ibu Juwita'),
(82, 80, 37, 'Yunus'),
(83, 81, 37, 'Atmo'),
(84, 8, 38, 'Dilan'),
(85, 82, 38, 'Milea'),
(86, 83, 38, 'Kang Adi'),
(87, 84, 38, 'Disa'),
(88, 85, 38, 'Atik'),
(89, 86, 38, 'Ancika'),
(90, 87, 38, 'Wati'),
(91, 16, 42, 'Sultan'),
(92, 88, 42, 'Bilqis'),
(93, 89, 42, 'Evan'),
(94, 90, 42, 'Njup'),
(95, 91, 42, 'Aji'),
(96, 93, 42, 'Mamah Diah'),
(97, 94, 42, 'Nabila'),
(98, 95, 43, 'Dr. Smolder Bravestone'),
(99, 96, 43, 'Ruby Roundhouse'),
(100, 97, 43, 'Moose Finbar'),
(101, 98, 43, 'Profesor Shelly Oberon'),
(102, 99, 43, 'Alan Parrish'),
(103, 100, 43, 'Jefferons McDonough'),
(104, 101, 43, 'Bethany Walker'),
(105, 102, 43, 'Judy Shepherd'),
(106, 103, 44, 'Habibie'),
(107, 104, 44, 'Illona Lanovska'),
(108, 105, 44, 'Liem Keng Kie'),
(109, 68, 44, 'Ayu'),
(110, 106, 44, 'Peter Manumasa'),
(111, 107, 44, 'Poltak Hasibuan'),
(112, 108, 44, 'Sofia'),
(113, 109, 49, 'Maleficent'),
(114, 110, 49, 'Aurora'),
(115, 111, 49, 'Aurora'),
(116, 112, 49, 'Diaval'),
(117, 113, 49, 'Thistletwit'),
(118, 114, 49, 'Flittle'),
(119, 115, 49, 'Knotgrass'),
(120, 116, 49, 'Stefan'),
(121, 117, 50, 'Harry Potter'),
(122, 118, 50, 'Hermione Granger'),
(123, 119, 50, 'Ron Weasley'),
(124, 120, 50, 'Severus Snape'),
(125, 121, 50, 'Draco Malfoy'),
(126, 122, 50, 'Neville Longbottom'),
(127, 123, 50, 'Ginny Weasley'),
(128, 124, 51, 'Ariel'),
(129, 125, 51, 'Raja Triton'),
(130, 126, 51, 'Ursula'),
(131, 127, 51, 'Prince Eric'),
(132, 128, 51, 'Vanessa'),
(133, 129, 51, 'Sebastian'),
(134, 130, 51, 'Scuttle'),
(135, 131, 52, 'Cinderella'),
(136, 132, 52, 'Kit'),
(137, 133, 52, 'Ibu peri'),
(138, 134, 52, 'Anastasia'),
(139, 135, 50, 'Grand Duke'),
(140, 136, 52, 'Raja'),
(141, 137, 52, 'Ibu Cinderella'),
(142, 138, 52, 'Lady Tremaine'),
(143, 139, 53, 'Ikal'),
(144, 140, 53, 'Bu Muslimah'),
(145, 141, 53, 'Ikal Dewasa'),
(146, 142, 53, 'Mahar'),
(147, 143, 53, 'Lintang'),
(148, 144, 53, 'Pak Harfan'),
(149, 145, 53, 'A Ling'),
(150, 146, 54, 'Delisa'),
(151, 103, 54, 'Abi Usman'),
(152, 147, 54, 'Ummi'),
(153, 149, 54, 'Zahra'),
(154, 148, 54, 'Fatimah'),
(155, 150, 54, 'Ustad Rahman'),
(156, 151, 54, 'Koh Acan'),
(157, 152, 55, 'Sherina'),
(158, 153, 55, 'Sadam'),
(159, 34, 55, 'Darmawan'),
(160, 154, 55, 'Ardiwilaga'),
(161, 155, 55, 'Natasya'),
(162, 156, 55, 'Friend Sherina'),
(163, 157, 55, 'Mang saswi'),
(164, 158, 56, 'Dinda'),
(165, 159, 56, 'Zafran'),
(166, 160, 56, 'Genta'),
(167, 161, 56, 'Riani'),
(168, 77, 56, 'Arial'),
(169, 162, 56, 'Ian'),
(170, 163, 56, 'Indy'),
(171, 8, 57, 'Rusdi'),
(172, 164, 57, 'Sindai'),
(173, 165, 57, 'Baron'),
(174, 166, 57, 'Aldi'),
(175, 167, 57, 'Anton'),
(176, 168, 57, 'Arip Jagau'),
(177, 169, 57, 'Tito'),
(178, 170, 58, 'Indiana Jones'),
(179, 171, 58, 'Jurgen Voller'),
(180, 172, 58, 'Helena Shaw'),
(181, 173, 58, 'Klaber'),
(182, 174, 58, 'Colonel Weber'),
(183, 175, 58, 'Marion ravenwood'),
(184, 176, 58, 'Hauke'),
(185, 177, 59, 'Pygmy Hog'),
(186, 178, 59, 'Mowgli'),
(187, 179, 59, 'Shere Khan'),
(188, 180, 59, 'Baloo'),
(189, 38, 59, 'Kaa'),
(190, 181, 59, 'Raja Loie'),
(191, 182, 59, 'Rakhsa'),
(192, 183, 60, 'Lucy Pevensie'),
(193, 184, 60, 'Susan Pevensie'),
(194, 185, 60, 'Peter Pevensie'),
(195, 186, 60, 'Edmund Pevensie'),
(196, 187, 60, 'White Witch'),
(197, 188, 60, 'Mr Tumnus'),
(198, 189, 60, 'Aslan'),
(199, 190, 61, 'Alia'),
(200, 191, 61, 'Abel'),
(201, 15, 61, 'Bu Laksmi'),
(202, 193, 61, 'Bu Windu'),
(203, 192, 61, 'Nadia'),
(204, 195, 61, 'Mama Alia'),
(205, 194, 61, 'Pak Fadli'),
(206, 196, 63, 'Sengarturih'),
(207, 197, 63, 'Dela'),
(208, 198, 63, 'Sri'),
(209, 200, 63, 'Karsa Atmojo'),
(210, 201, 63, 'Dini'),
(211, 202, 63, 'Sugik'),
(212, 7, 64, 'Risa'),
(213, 203, 64, 'Asih'),
(214, 18, 64, 'Peter'),
(215, 19, 64, 'Janshen'),
(216, 20, 64, 'Hendrick'),
(217, 204, 64, 'Andri'),
(218, 211, 66, 'Sumi'),
(219, 212, 66, 'Dorman'),
(220, 16, 66, 'Kosim'),
(221, 213, 66, 'Albert Dominique'),
(222, 214, 66, 'Soleh'),
(223, 215, 66, 'Yuni'),
(224, 216, 66, 'Emak Atik'),
(225, 217, 67, 'Ivanna van Djik'),
(226, 218, 67, 'Ambar'),
(227, 219, 67, 'Rina'),
(228, 220, 67, 'Agus'),
(229, 221, 67, 'Matsuya'),
(230, 222, 67, 'Arthur'),
(231, 223, 67, 'Nenek Ani'),
(232, 224, 68, 'Siena'),
(233, 225, 68, 'Rio'),
(234, 226, 68, 'Naya'),
(235, 227, 68, 'Windy'),
(236, 228, 68, 'Laras'),
(237, 229, 68, 'Rahmat'),
(238, 231, 68, 'Ratih'),
(239, 233, 69, 'Fifi'),
(240, 232, 69, 'Darma'),
(241, 234, 69, 'Diana'),
(242, 236, 69, 'Dendi'),
(243, 65, 69, 'Nobenk'),
(244, 235, 69, 'Senja'),
(245, 238, 69, 'Teki'),
(246, 239, 70, 'Si Mar'),
(247, 231, 70, 'Ni Ta'),
(248, 240, 70, 'Hadi'),
(249, 241, 70, 'Angku Wan'),
(250, 242, 70, 'Dadang'),
(251, 243, 70, 'Anwar'),
(252, 244, 70, 'Ci Sonya'),
(253, 247, 71, 'Gaia'),
(254, 246, 71, 'Aiman'),
(255, 245, 71, 'Bara'),
(256, 248, 71, 'Nandi'),
(257, 249, 71, 'Ibu Gaia'),
(258, 250, 71, 'Reno'),
(259, 251, 71, 'Sydney'),
(260, 16, 72, 'Oscar'),
(261, 252, 72, 'Karin'),
(262, 253, 72, 'Mikha'),
(263, 254, 72, 'Danang'),
(264, 255, 72, 'sanusi'),
(265, 16, 73, 'Jonny'),
(266, 256, 73, 'Franky'),
(267, 257, 73, 'Mercy'),
(268, 258, 73, 'Sarah'),
(269, 259, 73, 'Manuel'),
(270, 260, 73, 'Damar'),
(271, 261, 73, 'Lukman'),
(272, 103, 74, 'Bossman'),
(273, 262, 74, 'Diana'),
(274, 263, 74, 'Dika'),
(275, 264, 74, 'Mr Kho'),
(276, 265, 74, 'Norahsikin'),
(277, 266, 74, 'Adrian'),
(278, 267, 74, 'Mr Chia'),
(279, 268, 75, 'Ellen'),
(280, 105, 75, 'Iwan'),
(281, 269, 75, 'Kiara'),
(282, 83, 75, 'Abe'),
(283, 271, 75, 'Agatha'),
(284, 233, 75, 'Tante Maya'),
(285, 256, 75, 'Yos'),
(286, 273, 76, 'Dono'),
(287, 16, 76, 'Kasino'),
(288, 232, 76, 'Indro'),
(289, 276, 76, 'Indro Tua'),
(290, 275, 76, 'Boss CHIPS'),
(291, 274, 76, 'Sophie'),
(292, 272, 76, 'Pengendara Mobil Kuning'),
(293, 277, 77, 'Barbie'),
(294, 278, 77, 'Ken'),
(295, 279, 77, 'Barbie Dokter'),
(296, 280, 77, 'Barbie Penulis'),
(297, 281, 77, 'Barbie Fisikawan'),
(298, 283, 77, 'Barbie Duyung'),
(299, 282, 77, 'Allan'),
(300, 118, 78, 'Belle'),
(301, 284, 78, 'Beast'),
(302, 285, 78, 'Gaston'),
(303, 286, 78, 'Le Fou'),
(304, 287, 78, 'Maestro Cadenza'),
(305, 288, 78, 'Ibu Potts'),
(306, 289, 78, 'Maurice'),
(307, 290, 79, 'Snow White'),
(308, 291, 79, 'Ratu Jahat'),
(309, 292, 79, 'Eric'),
(310, 293, 79, 'Pangeran William'),
(311, 294, 79, 'Beith'),
(312, 295, 79, 'Nion'),
(313, 296, 79, 'Muir'),
(314, 297, 80, 'Peter Pan'),
(315, 298, 80, 'Wendy'),
(316, 299, 80, 'Kapten Hook'),
(317, 300, 80, 'Tinkerbell'),
(318, 302, 80, 'Tiger Lily'),
(319, 303, 80, 'Senora Darling'),
(320, 301, 80, 'John Darling'),
(321, 304, 81, 'Suhita'),
(322, 305, 81, 'Gus Biru'),
(323, 258, 81, 'Rengganis'),
(324, 306, 81, 'Kang Dharma'),
(325, 307, 81, 'Aruna'),
(326, 215, 81, 'Ummik'),
(327, 308, 81, 'Mas Arya'),
(328, 309, 82, 'Aqila'),
(329, 310, 82, 'Arif'),
(330, 311, 82, 'Yumna'),
(331, 312, 82, 'Baskara'),
(332, 313, 82, 'Arfan'),
(333, 314, 82, 'Eyang Murni'),
(334, 315, 82, 'Halimah'),
(335, 316, 83, 'Bu Prani'),
(336, 6, 83, 'Muklas'),
(337, 7, 83, 'Tita'),
(338, 319, 83, 'Didit Wibowo'),
(339, 317, 83, 'Anggoro'),
(340, 318, 83, 'Tunas Anuraga'),
(341, 320, 83, 'Bu Tunggul'),
(342, 78, 84, 'Ameer Azzikra'),
(343, 321, 84, 'Nadzira Shafa'),
(344, 87, 84, 'Intan'),
(345, 323, 84, 'Niki'),
(346, 322, 84, 'Abun'),
(347, 324, 84, 'Kak bella'),
(348, 325, 84, 'Aa Herman'),
(349, 326, 86, 'Edward Daniels'),
(350, 327, 86, 'Chuck Aule'),
(353, 328, 86, 'Dr Jhon Cawley'),
(354, 329, 86, 'Doroles Chanal'),
(355, 330, 86, 'Rachel Solando'),
(356, 331, 86, 'Dr. Jeremiah'),
(357, 332, 86, 'Rachel Solando Old'),
(358, 333, 87, 'June Allen'),
(359, 334, 87, 'Grace Allen'),
(360, 335, 87, 'Veena'),
(361, 336, 87, 'Agent Park'),
(362, 337, 87, 'Javier'),
(363, 338, 87, 'Kevin'),
(365, 339, 87, 'Cody'),
(366, 340, 88, 'Ben'),
(367, 341, 88, 'Margaret'),
(368, 342, 88, 'Elli'),
(369, 343, 88, 'Thomas'),
(370, 344, 88, 'Lucy'),
(371, 346, 88, 'Spencer'),
(372, 345, 88, 'Park Ranger'),
(373, 347, 89, 'Infomercial Host'),
(374, 348, 89, 'leonard Brocht'),
(375, 119, 89, 'Redmond'),
(376, 349, 89, 'Andrew'),
(377, 350, 89, 'Eric'),
(378, 351, 89, 'Sabrina'),
(379, 352, 89, 'Wen'),
(380, 353, 90, 'Tara Carpenter'),
(381, 354, 90, 'Sam Carpenter'),
(382, 355, 90, 'Kirby Reed'),
(383, 356, 90, 'Laura Crene'),
(384, 357, 90, 'Ethan Laudry'),
(385, 358, 90, 'Gale Weather'),
(386, 359, 90, 'Billy Loomis');

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

--
-- Dumping data untuk tabel `saran`
--

INSERT INTO `saran` (`id_saran`, `username`, `subject`, `pesan`) VALUES
(1, 'andika', 'tentang website', 'websitenya bagus banget');

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
(48, 'H-004', 'https://www.youtube.com/watch?v=jtDRXPTZT-M&t=9s', 'KKN di Desa Penari', 'images/kkn.jpg', 'banner/banner_kkn.webp', 6, 121, '2022', 0, 0, '<p style=\"text-align: justify;\">Seorang laki-laki yang dikenal dengan sebutan Simpleman, mendapatkan sebuah kisah menyeramkan. Berawal dari 5 mahasiswa yang harus melaksanakan KKN di sebuah desa terpencil, Nur (Tissa Biani), Widya ( Adinda Thomas), Ayu (Aghniny Haque), Bima (Achmad Megantara), Anton (Calvin Jeremy) dan Wahyu ( M. Fajar Nugraga) tidak pernah menyangka kalau desa yang mereka pilih ternyata bukanlah desa biasa. Pak Prabu (Kiki Narendra), sang kepala desa memperingatkan mereka untuk tidak melewati batas gapura terlarang, sebuah gapura yang menuju tapak tilas. Tempat misterius itu mungkin ada hubungannya dengan sosok penari cantik yang mulai menganggu Nur dan juga Widya. Satu persatu mulai merasakan keanehan desa tersebut. Bima pun mulai berubah sikap. Proker KKN mereka berantakan, tampaknya penghuni ghaib desa tersebut tidak menyukai mereka. Nur akhirnya menemukan fakta mencengangkan bahwa salah satu dari mereka melanggar aturan yang paling fatal di desa tersebut. Teror sosok penari misterius semakin menyeramkan, mereka mencoba meminta bantuan Mbah Buyut (Diding Boneng) dukun setempat, namun sudah terlambat, mereka terancam tidak akan bisa pulang dengan selamat dari desa yang dikenal dengan sebutan Desa Penari itu.</p>', '2023-12-02 17:56:18', '2023-12-02 17:56:18'),
(49, 'M-001', 'https://youtu.be/CGQkoZ8s4Pw?si=4deATdcwzaZiljG9', 'Maleficent', 'images/maleficentposter.jpg', 'banner/mff.png', 13, 97, '2019', 0, 0, '<p style=\"text-align: justify;\">Maleficent (Angelina Jolie) dan putri angkatnya Aurora (Elle Fanning) mulai berseteru dan mempertanyakan arti keluarga saat keduanya memiliki pandangan yang berbeda. Sebuah pernikahan yang diinginkan Aurora dan ditentang Maleficent. Aliansi serta pasukan gelap baru yang akan melanjutkan petualangan Maleficent.</p>', '2023-12-05 07:36:47', '2023-12-05 07:36:47'),
(50, 'M-003', 'https://youtu.be/S8-SXEGMmi4?si=YV_c1ZYWodC9_i8c', 'Harry Potter', 'images/harrypotterposter.jpg', 'banner/harpotbn.png', 13, 138, '2007', 0, 0, '<p style=\"text-align: justify;\">Harry Potter and the Order of the Phoenix adalah film petualangan fantasi, berdasarkan novel dengan nama yang sama, yang tulis oleh J. K. Rowling. Disutradarai oleh David Yates, ini adalah film kelima di seri Harry Potter yang populer.</p>', '2023-12-05 07:45:56', '2023-12-05 07:45:56'),
(51, 'F-001', 'https://youtu.be/0-wPm99PF9U?si=hkADD_gVbEzwyYxWThe Little Mermaid', 'The Little Mermaid', 'images/posterariel.jpg', 'banner/bannerariel.png', 12, 135, '2023', 0, 0, '<p style=\"padding-left: 80px; text-align: justify;\"><em><strong>The Little Mermaid</strong></em>&nbsp;adalah film&nbsp;<a title=\"Film fantasi\" href=\"https://id.wikipedia.org/wiki/Film_fantasi\">fantasi</a>&nbsp;<a title=\"Film musikal\" href=\"https://id.wikipedia.org/wiki/Film_musikal\">musikal</a>&nbsp;Amerika Serikat yang disutradarai oleh&nbsp;<a title=\"Rob Marshall\" href=\"https://id.wikipedia.org/wiki/Rob_Marshall\">Rob Marshall</a>&nbsp;dari skenario yang ditulis oleh David Magee. Diproduksi oleh&nbsp;<a title=\"Walt Disney Pictures\" href=\"https://id.wikipedia.org/wiki/Walt_Disney_Pictures\">Walt Disney Pictures</a>&nbsp;bersama DeLuca Marshall dan Marc Platt Productions. Film ini adalah adaptasi live action dari&nbsp;<a title=\"The Little Mermaid (film 1989)\" href=\"https://id.wikipedia.org/wiki/The_Little_Mermaid_(film_1989)\">film animasi Disney tahun 1989 dengan judul yang sama</a>, yang secara longgar berdasarkan pada&nbsp;<a title=\"Putri Duyung (dongeng)\" href=\"https://id.wikipedia.org/wiki/Putri_Duyung_(dongeng)\">dongeng tahun 1837 dengan judul yang sama</a>&nbsp;oleh&nbsp;<a title=\"Hans Christian Andersen\" href=\"https://id.wikipedia.org/wiki/Hans_Christian_Andersen\">Hans Christian Andersen</a>. Film ini dibintangi&nbsp;<a title=\"Halle Bailey\" href=\"https://id.wikipedia.org/wiki/Halle_Bailey\">Halle Bailey</a>&nbsp;sebagai&nbsp;<a title=\"Ariel (Disney)\" href=\"https://id.wikipedia.org/wiki/Ariel_(Disney)\">Ariel</a>&nbsp;si putri duyung, bersama&nbsp;<a title=\"Jonah Hauer-King\" href=\"https://id.wikipedia.org/wiki/Jonah_Hauer-King\">Jonah Hauer-King</a>,&nbsp;<a title=\"Daveed Diggs\" href=\"https://id.wikipedia.org/wiki/Daveed_Diggs\">Daveed Diggs</a>,&nbsp;<a title=\"Awkwafina\" href=\"https://id.wikipedia.org/wiki/Awkwafina\">Awkwafina</a>,&nbsp;<a title=\"Jacob Tremblay\" href=\"https://id.wikipedia.org/wiki/Jacob_Tremblay\">Jacob Tremblay</a>,&nbsp;<a title=\"Noma Dumezweni\" href=\"https://id.wikipedia.org/wiki/Noma_Dumezweni\">Noma Dumezweni</a>,&nbsp;<a title=\"Javier Bardem\" href=\"https://id.wikipedia.org/wiki/Javier_Bardem\">Javier Bardem</a>&nbsp;dan&nbsp;<a title=\"Melissa McCarthy\" href=\"https://id.wikipedia.org/wiki/Melissa_McCarthy\">Melissa McCarthy</a>.&nbsp;<em>The Little Mermaid</em> menceritakan tentang Ariel si putri duyung yang membuat kesepakatan dengan penyihir laut berbahaya bernama Ursula untuk menukar suaranya dengan kaki manusia untuk mengesankan Pangeran Eric, yang ia selamatkan dari kapal karam.</p>', '2023-12-05 10:08:50', '2023-12-05 10:08:50'),
(52, 'F-002', 'https://youtu.be/20DF6U1HcGQ?si=OiiwGKS-q5W_IPZn', 'Cinderella', 'images/cinderllaposter.jpg', 'banner/bannercinderella.png', 12, 112, '2015', 0, 0, '<p style=\"text-align: justify;\">Cerita film berkisah tentang Ella, yang dijadikan pesuruh oleh&nbsp;<a class=\"mw-redirect\" title=\"Ibu tiri\" href=\"https://id.wikipedia.org/wiki/Ibu_tiri\">ibu tirinya</a>&nbsp;sendiri. Setelah ayahnya meninggal dunia, kelakuan ibu dan saudara tirinya makin menjadi-jadi. Ella yang dijadikan pembantu, juga diganti namanya menjadi&nbsp;<a title=\"Cinderella\" href=\"https://id.wikipedia.org/wiki/Cinderella\">Cinderella</a>. Dan kemudian Ella bertemu orang asing yang gagah di hutan. Dia tak menyadari bahwa orang tersebut adalah seorang&nbsp;<a title=\"Pangeran\" href=\"https://id.wikipedia.org/wiki/Pangeran\">pangeran</a>. Ketika istana mengirimkan undangan terbuka untuk semua gadis, Cinderella pun berharap bisa bertemu dengan pangerannya lag</p>', '2023-12-05 10:16:54', '2023-12-05 10:16:54'),
(53, 'D-001', 'https://youtu.be/e1SxNP7PWAc?si=dE-WHIiVrHxt-mmF', 'Laskar Pelangi', 'images/Laskar_Pelangi_film.jpg', 'banner/bannerlaskar (2).jpg', 11, 125, '2008', 0, 0, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Laskar Pelangi adalah novel pertama karya Andrea Hirata yang diterbitkan oleh Bentang Pustaka pada tahun 2005. Novel ini bercerita tentang kehidupan 10 anak dari keluarga miskin yang bersekolah (SD dan SMP) di sebuah sekolah Muhammadiyah di Belitung yang penuh dengan keterbatasan. Mereka bersekolah dan belajar pada kelas yang sama dari kelas 1 SD sampai kelas 3 SMP, dan menyebut diri mereka sebagai Laskar Pelangi. Pada bagian-bagian akhir cerita, anggota Laskar Pelangi bertambah satu anak perempuan yang bernama Flo, seorang murid pindahan. Keterbatasan yang ada bukan membuat mereka putus asa, tetapi malah membuat mereka terpacu untuk dapat melakukan sesuatu yang lebih baik.</p>', '2023-12-05 11:09:35', '2023-12-05 11:09:35'),
(54, 'D-002', 'https://youtu.be/oKolDtQDqYI?si=ykNK9_bitf7fQ5QD', 'Hafalan Shalat Delisa', 'images/posterdelisa.jpg', 'banner/delisabanner (1).jpg', 11, 150, '2011', 0, 0, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Delisa (Chantiq Schagerl), gadis kecil yang periang, tinggal di Lhok Nga, sebuah desa kecil yang berada di tepi pantai Aceh, dan mempunyai hidup yang indah sebagai anak bungsu dari keluarga Abi Usman (Reza Rahadian), ayahnya bertugas di sebuah kapal tanker perusahaan minyak internasional. Delisa sangat dekat dengan ibunya yang dia panggil Ummi (Nirina Zubir), serta ketiga kakaknya yaitu Fatimah (Ghina Salsabila) dan si kembar Aisyah (Reska Tania Apriadi) dan Zahra (Riska Tania Apriadi). Pada 26 Desember 2004, Delisa bersama Ummi sedang bersiap menuju ujian praktik shalat ketika tiba-tiba terjadi gempa. Gempa yang cukup membuat ibu dan kakak-kakak Delisa ketakutan. Tiba-tiba tsunami menghantam, menggulung desa kecil mereka, menggulung sekolah mereka, dan menggulung tubuh kecil Delisa serta ratusan ribu lainnya di Aceh serta berbagai pelosok pantai di Asia Tenggara.</p>', '2023-12-05 11:26:48', '2023-12-05 11:26:48'),
(55, 'AD-002', 'https://www.youtube.com/watch?v=nAx3GaOE5xI', 'Petualangan Sherina ', 'images/sherina.jpg', 'banner/banner-petualangan-sherina-2.jpg', 14, 120, '2000', 0, 0, '<p style=\"text-align: justify;\">Sherina sedih harus pindah ke Bandung mengikuti ayahnya. Di sekolah baru, Sadam, si anak lelaki sok, selalu mengganggunya. Namun, permusuhan mereka berubah jadi persahabatan ketika keduanya diculik.</p>', '2023-12-05 12:21:07', '2023-12-05 12:21:07'),
(56, 'AD-003', 'https://www.youtube.com/watch?v=fcGeZvvWCpo', '5 cm', 'images/5 cm.png', 'banner/5-cm.png', 14, 120, '2012', 0, 0, '<p style=\"text-align: justify;\">17 Agustus di puncak tertinggi Jawa, 5 sahabat 2 cinta, sebuah mimpi mengubah segalanya\" Genta, Arial, Zafran, Riani dan Ian adalah lima remaja yang telah menjalin persahabatan belasan tahun lamanya. Suatu hari mereka berlima merasa &ldquo;jenuh&rdquo; dengan persahabatan mereka dan akhirnya kelimanya memutuskan untuk berpisah, tidak saling berkomunikasi satu sama lain selama tiga bulan lamanya. Selama tiga bulan berpisah penuh kerinduan, banyak yang terjadi dalam kehidupan mereka berlima, sesuatu yang mengubah diri mereka masing-masing untuk lebih baik dalam menjalani kehidupan. Setelah tiga bulan berselang mereka berlimapun bertemu kembali dan merayakan pertemuan mereka dengan sebuah perjalanan penuh impian dan tantangan. Sebuah perjalanan hati demi mengibarkan sang saka merah putih di puncak tertinggi Jawa pada tanggal 17 Agustus. Sebuah perjalanan penuh perjuangan yang membuat mereka semakin mencintai Indonesia. Sebuah perjuangan atas impian, perjalanan hati yang merubah hidup mereka untuk selamanya</p>', '2023-12-05 12:49:08', '2023-12-05 12:49:08'),
(57, 'AD-004', 'https://www.youtube.com/watch?v=gj3r5XDPuac', '5 Elang', 'images/5_Elang.png', 'banner/lima elang.png', 14, 120, '2011', 0, 0, '<p style=\"text-align: justify;\">Baron sangat kesal ketika harus mengikuti orang tuanya pindah dari Jakarta ke Balikpapan. Ia pun memilih untuk menutup diri dari lingkungan barunya dan sibuk sendiri bermain mobil RC. Namun, karena satu dan lain hal, Baron harus mewakili sekolahnya ikut perkemahan Pramuka dan satu regu dengan Rusdi, pramuka supel yang kelewat optimistis dan kerap kali membuat Baron jengkel.&nbsp;Bersama dengan anggota lain, Anton si ahli api, dan Aldi si kerdil yang tempramental dan jagoan berenang, serta kedua anak besar yang menjadi ahli fisik. Mereka memulai petualangan barunya di Perkemahan.&nbsp;Mereka juga bertemu dengan Sindai yaitu seorang gadis perkasa, yang banyak membantu Baron dan tim ketika harus menjelajahi hutan lebat dalam salah satu games perkemahan yaitu pada games markas bintang.</p>', '2023-12-05 13:11:28', '2023-12-05 13:11:28'),
(58, 'AD-005', 'https://www.youtube.com/watch?v=eQfMbSe7F2g', 'Indiana Jones and the Dial of Destiny', 'images/Indiana Jones and the Dial of Destiny.png', 'banner/Indiana Jones and the Dial of Destiny.png', 14, 120, '2023', 0, 0, '<p style=\"text-align: justify;\">Arkeolog pemberani Indiana Jones berpacu dengan waktu untuk merebut cakram legendaris yang dapat mengubah sejarah. Didampingi putri baptisnya, ia harus menghadapi tantanan dari Jrgen Voller, bekas pengikut Nazi yang kini bekerja untuk NASA.</p>', '2023-12-05 14:18:08', '2023-12-05 14:18:08'),
(59, 'AD-006', 'https://www.youtube.com/watch?v=C4qgAaxB_pc', 'The Jungle Book', 'images/The Jungle Book.png', 'banner/The-Jungle-Book-banner.png', 14, 120, '2016', 0, 0, '<p style=\"text-align: justify;\">The Jungle Book adalah film fantasi petualangan Amerika Serikat tahun 2016 yang disutradarai oleh Jon Favreau dan diproduseri oleh Jon Favreau dan Brigham Taylor.</p>', '2023-12-05 14:41:17', '2023-12-05 14:41:17'),
(60, 'AD-007', 'https://www.youtube.com/watch?v=usEkWtuNn-w', 'the chronicles of narnia', 'images/The Chronicles of Narnia.png', 'banner/Narnia-8-the-chronicles-of-narnia.png', 14, 120, '2005', 0, 0, '<p style=\"text-align: justify;\">The Chronicles of Narnia: The Lion, the Witch and the Wardrobe adalah sebuah film berdasarkan buku The Chronicles Of Narnia: Sang Singa, sang Penyihir, dan Lemari, novel pertama yang diterbitkan dalam seri fantasi anak-anak The Chronicles of Narnia karangan C.S. Lewis.</p>', '2023-12-05 14:46:19', '2023-12-05 14:46:19'),
(61, 'H-005', 'https://www.youtube.com/watch?v=QqcyvQUnqoY', 'Mata Batin 2', 'images/matabatin2.jpg', 'banner/bannermatabatin2.jpg', 6, 115, '2019', 0, 0, '<p style=\"text-align: justify;\">Setelah adiknya meninggal, ALIA memutuskan untuk memulai hidup baru dengan tinggal di sebuah panti asuhan milik BU LAKSMI dan PAK FADLI sekaligus kerja sosial di sana. Tapi Alia merasa ada yang janggal dengan panti itu. Apalagi NADIA, salah seorang anak panti yang ternyata juga memiliki mata batin terbuka seperti Alia, bisa mendengar suara misterius yang minta tolong dari seluruh dinding rumah. Alia dan Nadia pun membuka sebuah kamar misterius yang terkunci. Sejak itu malapetaka mulai terjadi. Ternyata Alia dan Nadia telah melakakukan kesalahan besar dan membebaskan DARMAH, arwah penuh dendam yang memang sengaja dikunci di kamar itu. Bersama dengan BU WINDU, paranormal dan pembimbing mata batinnya, Alia harus menghadapi Darmah dan menyelamatkan panti asuhan itu.</p>', '2023-12-06 14:30:38', '2023-12-06 14:30:38'),
(62, 'H-006', 'https://www.youtube.com/watch?v=d173ahbvzUA', 'Mata Batin', 'images/matabatin1.jpg', 'banner/bannermatabatin.jpg', 6, 108, '2017', 0, 0, '<p style=\"text-align: justify;\">ALIA memutuskan untuk meninggalkan Bangkok dan kembali ke Jakarta begitu kedua orang tuanya meninggal. Ia dan Abel, adiknya yang masih remaja, pindah ke rumah masa kecil mereka yang jauh dari tengah kota. Tapi Abel yang sering bersikap aneh dan ketakutan, tidak menyukai rumah itu. Katanya, di sana ada &lsquo;yang lain&rsquo; selain mereka. Alia dan Davin, pacar Alia yang menemani Alia, tidak pernah menghiraukan Abel. Tapi sikap Abel semakin mengkhawatirkan. Merasa harus menolong Abel, Alia berniat untuk membawa Abel ke psikiater. Tapi Abel menolak dan ia bilang kalau ia bisa melihat &lsquo;mereka yang sudah mati&rsquo; karena mata batinnya sudah terbuka sejak kecil. Abel mengajak Alia menemui Bu Windu, seorang paranormal yang selama ini membantu Abel. Ingin membuktikan semua hal yang baginya tidak masuk akal ini, Alia meminta Bu Windu untuk membuka mata batinnya. Dan perlahan-lahan, Alia pun mulai mengalami kejadian-kejadian yang tidak biasa. Ia mulai melihat sosok yang tidak bisa dilihat orang lain, dan kehadiran &lsquo;orang-orang&rsquo; yang minta tolong padanya. Tapi &lsquo;mereka&rsquo; yang berada di rumah Alia mengganggunya sampai menyakitinya. Energi &lsquo;mereka&rsquo; begitu negatif sehingga bisa membahayakan Alia dan Abel. Tanpa tempat tinggal lain, mereka terpaksa menetap disana dan meminta bantuan Bu Windu. Apakah Bu Windu bisa membantu mereka?</p>', '2023-12-06 14:57:29', '2023-12-06 14:57:29'),
(63, 'H-007', 'https://www.youtube.com/watch?v=12sXNFbQa6I', 'Sewu Dino', 'images/sewu dino.jpg', 'banner/bannersewudino.jpg', 6, 121, '2023', 0, 0, '<p style=\"text-align: justify;\">Ditengah kesulitan ekonomi, Sri diterima bekerja untuk keluarga Atmojo dengan bayaran yang tinggi, karena keunikan yang ia miliki, yaitu lahir pada hari Jumat Kliwon. Bersama Erna dan Dini, mereka dibawa ke sebuah gubuk tersembunyi di tengah hutan. Di gubuk tersebut, Sri, Erna, dan Dini bertugas untuk memandikan Dela Atmojo, cucu dari Mbah Karsa Atmojo yang tidak sadarkan diri karena kutukan santet Sewu Dino, salah satu santet yang paling mengerikan. Mereka tidak bisa lari dari gubuk tersebut karena terikat perjanjian mistis dengan Mbah Karsa Atmojo, dan mereka harus selesaikan ritual sampai hari ke 1000. Jika melanggar, kematian menanti mereka.</p>', '2023-12-06 15:07:54', '2023-12-06 15:07:54'),
(64, 'H-008', 'https://www.youtube.com/watch?v=YLU6Qfi0cDY', 'Danur: I Can See Ghosts', 'images/Danur_poster.jpg', 'banner/danur_banner.jpg', 6, 78, '2017', 0, 0, '<p style=\"text-align: justify;\">Mengikuti kisah Risa yang bisa berkomunikasi dengan hantu. Masalah timbul saat sang adik, Riri, secara misterius hilang tanpa jejak. Ia pun meminta bantuan pada teman-teman hantunya untuk mencarinya.</p>', '2023-12-06 15:28:06', '2023-12-06 15:28:06'),
(65, 'H-009', 'https://www.youtube.com/watch?v=zLANvkUI2nU', 'Menjelang Maghrib', 'images/menjelangmaghrib.jpg', 'banner/menjelangmaghribbanner.jpg', 6, 104, '2022', 0, 0, '<p style=\"text-align: justify;\">Mahasiswa jurusan psychology menemui seorang pasien sakit jiwa untuk materi research skripsi mereka. Bermula dari masalah kejiwaan Nina yang akhirnya berkembang menjadi hal-hal mistis yang diluar logika. Tahayul, Mistis dan Budaya bertabrakan dengan science dan pengetahuan mereka selama ini.</p>', '2023-12-06 15:50:54', '2023-12-06 15:50:54'),
(66, 'H-010', 'https://www.youtube.com/watch?v=8TVPxHVUWS8', 'Bayi Ajaib', 'images/bayi gaib.jpg', 'banner/bannerbayigaib.webp', 6, 99, '2023', 0, 0, '<p style=\"text-align: justify;\">Kosim, menjadi kaya mendadak setelah menemukan emas di sungai desa Hirupbagja. Dia segera menikahi Sumi dan hidup makmur sebagai juragan tanah. Ketika anak mereka lahir, Didi, jiwanya sudah dirasuki arwah Albert Dominique, yang haus darah dan meneror warga desa. Kosim berusaha menutupi kenyataan ini<span class=\"yZlgBd\">&nbsp;karena dia sedang mencalonkan diri sebagai Kepala Desa yang baru. Dia harus bisa mengalahkan Soleh yang sudah mendapatkan simpati dari warga desa. Namun ketika arwah tersebut berbalik mengancam kehidupan keluarganya, Kosim memutuskan untuk membebaskan Didi dari jeratan pengaruh Albert Dominique. Untuk itu, Kosim harus berhadapan dengan Dorman, dukun hitam, yang ingin membalaskan dendam kakek buyutnya pada orang-orang yang telah menghancurkan kehidupannya?</span></p>', '2023-12-06 16:10:50', '2023-12-06 16:10:50'),
(67, 'H-011', 'https://www.youtube.com/watch?v=O29hLG_37qI', 'Ivanna', 'images/ivanna-setan-1.webp', 'banner/film-ivanna-2022_169.jpeg', 6, 103, '2022', 0, 0, '<p>Ketika Ambar &amp; Dika pindah setelah kematian orang tua mereka, tidak pernah terpikirkan apa yang seharusnya menjadi awal baru berubah menjadi awal kesengsaraan terbesar dalam hidup mereka. Semua akibat kemampuan Ambar merasakan yang tak terlihat, yang didapatkan setelah mengalami gangguan penglihatan.</p>', '2023-12-06 17:02:00', '2023-12-06 17:02:00'),
(68, 'H-012', 'https://www.youtube.com/watch?v=081X-uXzj78', 'Aku Tahu Kapan Kamu Mati (Desa Bunuh Diri)', 'images/369271103_832167921857387_8918204220588687730_n.heic', 'banner/Desa-Bunuh-Diri-web-banner-1.jpg', 6, 106, '2023', 0, 0, '<p style=\"text-align: justify;\">Lima tahun sejak SIENA (Natasha Wilona) memiliki kemampuan untuk melihat tanda kapan seseorang akan mati, Siena masih sering diliputi rasa takut, yang bahkan dia sembunyikan dari kedua sahabatnya, WINDY (Marsha Aruan) dan RIO (Giulio Parengkuan). Siena hanya bercerita dengan NAYA (Acha Septriasa), dosen dan psikolog klinis di kampus, Sampai suatu hari, sebuah kematian terjadi di kampus, namun kali ini Siena tidak melihat tanda apa-apa.Peristiwa tersebut membuat Naya kembali ke kampung halamannya, Desa Remetuk untuk bertemu dengan LARAS (Ratu Felisha). Berbekal sebuah pesan yang ditinggalkan, Siena berhasil ditemani Windy dan Rio pergi ke Desa Remetuk. Menjelang musim panen, di Desa Remetuk selalu terjadi percobaan bunuh diri, tapi Siena yang ingin menolong tak pernah bisa melihat tanda-tandanya. Siena, Windy, Rio, Naya, serta Naya dan Laras, tak satu pun dapat lari dari kutukan tersebut, keinginan bagi setiap dari mereka untuk tahu dan menentukan kapan diri sendiri akan mati.</p>', '2023-12-06 17:26:46', '2023-12-06 17:26:46'),
(69, 'K-005', 'https://www.youtube.com/watch?v=1rqSEfLt4z0', 'Kejar Mimpi Gaspol!!', 'images/kejar-mimpi-gaspol-2023dokkejar-mimpi-gaspol-2023.jpeg', 'banner/KMG4.jpeg', 7, 113, '2023', 0, 0, '<p>Film ini mengisahkan perjuangan seorang ibu tunggal bernama Fifi, yang mengorbankan cita-citanya sebagai penulis terkenal untuk menjadi tulang punggung keluarga dengan menjadi sopir jeep di wilayah Gunung Bromo. Namun, kehidupan Fifi dan keluarganya berubah secara tak terduga ketika seorang pria masuk dalam kehidupan mereka.</p>', '2023-12-06 18:15:06', '2023-12-06 18:15:06'),
(70, 'K-006', 'https://www.youtube.com/watch?v=YRPN6luQaSY', 'Onde Mande', 'images/onde-mande-2023dok-visinema-pictures.jpeg', 'banner/IMG-20230609-WA0021.jpg', 7, 97, '2023', 0, 0, '<p style=\"text-align: justify;\"><em>Onde Mande!</em> adalah film komedi Indonesia yang mengisahkan tentang seorang pensiunan guru dan tetua Desa Sigiran bernama Angku Wan yang memenangkan undian Rp2 miliar dari perusahaan sabun. Namun ia meninggal sebelum mengambil hadiahnya.&nbsp;Warga desa berusaha mendapatkan uang tersebut untuk membangun desa, tetapi rencana mereka terancam ketika Anwar datang untuk mengecek identitas Angku Wan.</p>', '2023-12-06 18:33:55', '2023-12-06 18:33:55'),
(71, 'K-007', 'https://www.youtube.com/watch?v=XlgnP_kLVFM', 'Ganjil Genap', 'images/ganjil-genap-2023dokmd-pictures.jpeg', 'banner/film-ganjil-genap-1539618162.webp', 7, 124, '2023', 0, 0, '<p><em>Ganjil Genap</em> adalah film komedi Indonesia yang mengisahkan tentang Gala dan Bara, sepasang kekasih yang sudah berpacaran selama delapan tahun. Gala meminta Bara untuk menikah, tetapi hubungan mereka hancur ketika Bara memutuskan berpisah. Aiman mencoba membantu Gala, tetapi hubungan mereka juga menjadi rumit. Gala kemudian menyadari bahwa Aiman adalah sosok yang sama dengan Bara.</p>', '2023-12-06 18:53:28', '2023-12-06 18:53:28'),
(72, 'K-008', 'https://www.youtube.com/watch?v=sTxYQNTlihY', 'Scandal Makers', 'images/scandal-makers-2023dokmd-pictures-present.jpeg', 'banner/63bbb6868f70f.jpeg', 7, 86, '2023', 0, 0, '<p style=\"text-align: justify;\"><em>Scandal Makers</em> adalah film adaptasi dari Korea Selatan yang mengisahkan tentang Oskar, seorang penyiar radio terkenal yang hidupnya tiba-tiba berubah ketika seorang wanita bernama Karin dan anak laki-lakinya, Gempa, mengaku sebagai keluarganya. Oskar awalnya skeptis terhadap klaim Karin dan untuk membuktikannya, ia meminta mereka untuk melakukan tes DNA.&nbsp;Cerita ini menghadirkan kebingungan dan konflik emosional saat Oskar berusaha memahami dan menerima kenyataan tentang keluarganya yang tak terduga.</p>', '2023-12-06 19:18:55', '2023-12-06 19:18:55'),
(73, 'K-009', 'https://www.youtube.com/watch?v=xb9iRweZfcA', 'Hitmen', 'images/hitmen-2023dokmd-pictures.jpeg', 'banner/review-hitmen-2023-film-komedi-laga-indonesia-untuk-penonton-17-eb7782.webp', 7, 96, '2023', 0, 0, '<p style=\"text-align: justify;\"><em>Hitmen</em> merupakan film komedi aksi yang mengisahkan petualangan Johnny dan Frangky, dua pembunuh bayaran yang berusaha keluar dari kehidupan gelap mereka dengan pensiun. Sebelum meraih impian itu, mereka terpaksa menghadapi misi terakhir yang penuh bahaya dan mengancam nyawa.&nbsp;Dalam perjalanan, Johnny dan Frangky harus melawan waktu dan musuh-musuhnya demi mencapai tujuan pensiun yang diimpikan.</p>', '2023-12-06 19:41:15', '2023-12-06 19:41:15'),
(74, 'K-010', 'https://www.youtube.com/watch?v=FuC8H8eXZFU', 'My Stupid Boss', 'images/my-stupid-boss-2016dokfalcon-pictures.jpeg', 'banner/061672300_1694171143-SVOD_-_My_Stupid_Boss_-_Thumbnail.jpg', 7, 108, '2016', 0, 0, '<p><em>My Stupid Boss</em>&nbsp;adalah film komedi Indonesia yang disutradarai oleh Upi Avianto. Film ini mengisahkan tentang hubungan antara seorang karyawan bernama Diana dan bosnya yang berkelakuan super ajaib, Bossman.</p>\r\n<p>Diana tinggal di Kuala Lumpur mengikuti suaminya, Dika yang bekerja di sana. Ketika Diana melamar bekerja di sebuah perusahaan, kebetulan bosnya adalah teman kuliah Dika sewaktu di Amerika. Perilaku unik Bossman membuat hubungan mereka penuh dengan kekonyolan dan komedi.</p>', '2023-12-06 19:46:22', '2023-12-06 19:46:22'),
(75, 'K-011', 'https://www.youtube.com/watch?v=MbZtoOuRpyU', 'Susah Sinyal', 'images/susah-sinyal-2017dokstarvision.jpeg', 'banner/5aa2d86ffcf8a2eb30c704edc8347c8e3ab4a9b9_2_1024x576.jpeg', 7, 110, '2017', 0, 0, '<p>Ceritanya mengikuti Ellen, seorang ibu tunggal yang sibuk sebagai seorang pengacara sukses dan jarang meluangkan waktu untuk putrinya, Kiara. Kiara, sebagai seorang remaja, memiliki hobi membuat konten di Internet dan sering melanggar peraturan sekolah tentang penggunaan gawai.</p>\r\n<p>Ketika tragedi menghampiri, Ellen dianjurkan untuk berlibur dengan Kiara untuk mengobati rasa kehilangannya. Mereka pergi ke Sumba dan hubungan antara Ellen dan Kiara berangsur membaik, tetapi Ellen harus menghadapi masalah besar dalam pekerjaannya yang mengancam janjinya untuk mendukung Kiara dalam acara bakat menyanyi.</p>', '2023-12-06 19:50:43', '2023-12-06 19:50:43'),
(76, 'K-012', 'https://www.youtube.com/watch?v=m3U03b9yHKk', 'Warkop DKI Reborn: Jangkrik Boss! Part 1', 'images/warkop-dki-reborn-jangkrik-boss-part-1-2016dokfalcon-pictures.jpeg', 'banner/jangkrik-bos.jpg', 7, 110, '2016', 0, 0, '<p>Film komedi Indonesia ini mengisahkan tentang tiga sahabat, Dono , Kasino, dan Indro, yang bekerja sebagai petugas keamanan di organisasi CHIIPS. Meskipun tugas mereka adalah menertibkan dan menjaga keamanan masyarakat, kelakuan konyol dan bermasalah mereka selalu membuat jengkel atasannya.</p>\r\n<p>Kehadiran Sophie, anggota CHIIPS dari Paris, membawa mereka pada petualangan kocak untuk mencari harta karun guna membayar denda Rp8 miliar dan menghindari penjara.</p>', '2023-12-06 19:56:51', '2023-12-06 19:56:51'),
(77, 'F-003', 'https://youtu.be/pBk4NYhWNMM?si=dr47xxMOWwdxE1jc', 'Barbie', 'images/barbie.jpg', 'banner/bannerbarbie (1).jpg', 12, 114, '2023', 0, 0, '<p style=\"text-align: justify;\">Film Barbie menceritakan tentang kehidupan para Barbie di Barbie Land dengan keunikan karakternya masing-masing. Di tempat tersebut, para perempuan dipanggil Barbie sedangkan laki-laki dipanggil Ken.&nbsp;Barbie dengan peran utama Margot Robbie dan Ken dengan peran utama Ryan Gosling menjalani kehidupannya di Barbie Land dengan penuh kebahagiaan dan berwarna hingga tampak sempurna.&nbsp;Barbie hidup layaknya boneka Barbie dengan kaki yang selalu berjinjit. Tidak hanya itu, Barbie juga berpenampilan yang menarik dan berglitter.&nbsp;Namun pada suatu hari, kaki Barbie tersebut berubah menjadi datar sehingga tidak lagi berjinjit. Ia juga tidak memiliki kemampuan untuk terbang lagi saat keluar rumah.&nbsp;Oleh sebab itu, Barbie akhirnya diusir dari Barbie Land lantaran dianggap tidak normal. Barbie pun pergi bersama Ken dengan mobil merah muda ke dunia nyata.&nbsp;Saat berada di dunia nyata, mereka segera menemukan kegembiraan. Namun, keberadaan Barbie di dunia nyata disadari oleh beberapa orang sehingga membuat mereka dihantui bahaya hidup di antara manusia.<br><br><br><br></p>', '2023-12-07 04:05:07', '2023-12-07 04:05:07'),
(78, 'F-004', 'https://youtu.be/RDDM_Cky9M8?si=w6ZUkL1rOhSu-6GM', 'Beauty And The Beast', 'images/beautybeast.jpg', 'banner/bnbeauty.png', 12, 129, '2017', 0, 0, '<p style=\"text-align: justify;\">&nbsp;Film ini mengisahkan Belle, seorang gadis muda yang tinggal di sebuah desa kecil bersama ayahnya yang eksentrik, Maurice. Suatu hari, Maurice tersesat di dalam hutan dan menemukan istana misterius yang ditinggalkan. Namun, ketika dia mencoba untuk mengambil mawar sebagai hadiah untuk Belle, pemilik istana, yang ternyata adalah seorang penyihir dan memiliki wajah yang menakutkan, marah padanya.&nbsp;Belle yang khawatir tentang ayahnya, menawarkan diri untuk menggantikan ayahnya sebagai tawanan sang penyihir. Di istana tersebut, Belle menemukan bahwa para pelayan istana telah berubah menjadi benda-benda hidup, seperti Lilin, Jam, dan Teapot, akibat kutukan penyihir. Pemilik istana, yang merupakan seorang pangeran tampan, telah berubah menjadi Beast dan akan tetap seperti itu kecuali seseorang mencintainya meskipun penampilannya yang menakutkan.</p>', '2023-12-07 04:13:43', '2023-12-07 04:13:43'),
(79, 'F-005', 'https://youtu.be/tCFq6gOXDqY?si=6QgYcxFcBHgc-9yB', 'Snow White And The Huntsman', 'images/snowwhite.jpg', 'banner/bnsnowwhite.png', 12, 127, '2012', 0, 0, '<p style=\"text-align: justify;\">Snow White adalah perempuan tercantik di seluruh negeri. Inilah sebabnya Queen Ravenna ingin membunuhnya dan mengirim seorang pemburu Namun bukannya membunuh, pemburu tersebut malah melatih Snow White cara bertarung dan seni berperang. Kini, Snow White menjelma menjadi seorang pejuang yang mengancam pemerintahan Queen Ravenna</p>', '2023-12-07 04:17:54', '2023-12-07 04:17:54'),
(80, 'F-006', 'https://youtu.be/p-5sVX7MRj8?si=v2ZkNPvc4Br0CD68', 'Peter Pan & Wendy', 'images/PETER PAN & WENDY (2023).jpg', 'banner/bnpeterpan.png', 12, 109, '2023', 0, 0, '<p>Pada suatu malam, Wendy sedang tertidur dengan damai di tempat tidurnya. Beberapa menit kemudian, ia mendadak terbangun akibat kegaduhan yang ditimbulkan oleh kedua adik laki-lakinya, John dan Michael. Keduanya terlihat menangkap Tinker Bell, yang mereka duga sebagai seekor serangga.&nbsp;Bersamaan dengan kejadian itu. Muncullah Peter Pan, seorang anak laki-laki yang menolak untuk tumbuh dewasa.&nbsp;Peter Pan mengajak Wendy, John dan Michael untuk bepergian ke Neverland, dibantu dengan serbuk peri milik Tinker Bell. Di sana, Wendy bertemu dengan anak-anak yang hilang, Tiger Lily dan Kapten Hook, sosok kapten bajak laut yang jahat serta memulai petualangan menabjukkan dan mendebarkan. Sekaligus, melakukan pertarungan berbahaya yang bakal mengubah hidupnya selamanya.</p>', '2023-12-07 04:26:17', '2023-12-07 04:26:17'),
(81, 'D-003', 'https://youtu.be/elIcNsHm6pM?si=fM4E6HIAQzpmfO2a', 'Hati Suhita', 'images/posterhatisuhita.jpg', 'banner/suhita.png', 11, 137, '2023', 0, 0, '<p style=\"text-align: justify;\">Kisah Alina Suhita. Perempuan teguh, matang dan pantang menyerah. Ketabahan memandunya menghadapi badai rumah tangga yang terjadi bahkan sejak malam pertama. Perjuangan lahir batinnya diuji untuk merengkuh cinta Gus Birru, suaminya sendiri.</p>', '2023-12-07 05:42:53', '2023-12-07 05:42:53'),
(82, 'D-004', '', 'Air Mata di Ujung Sajadah', 'images/airmata.jpg', 'banner/airmatabn.png', 11, 105, '2023', 0, 0, '<p style=\"text-align: justify;\">Tujuh tahun berlalu, Aqilla baru mengetahui bahwa anaknya yakni Baskara, ternyata masih hidup dan diasuh oleh Arif dan Yumna, pasangan yang hanya memiliki satu harapan: memiliki seorang anak. Aqilla bertolak dari kehidupannya yang hampa di Eropa menuju Kota Solo untuk menjemput masa depan barunya. Akankah Aqilla tega merenggut Baskara yang sudah dibesarkan oleh Arif dan Yumna selama bertahun-tahun? Memang darah dan daging Aqilla ada dalam diri Baskara, namun di sana juga ada keringat dan airmata Yumna. Siapakah yang lebih berhak menjadi ibu dari Baskara?</p>', '2023-12-07 05:50:39', '2023-12-07 05:50:39'),
(83, 'D-005', 'https://youtu.be/3VkYiatpTVQ?si=-IrjY5Ux2w5A6BGq', 'Budi Pekerti', 'images/budipekerti.jpg', 'banner/bnbudipekerti.png', 11, 110, '2023', 0, 0, '<p style=\"text-align: justify;\">Bu Prani, seorang guru BK terlibat perselisihan dengan pengunjung di pasar. Sayangnya, kejadian tersebut berhasil direkam oleh seseorang dan diunggah ke media sosial. Karena sikap Bu Prani yang dinilai tidak mencerminkan layaknya seorang guru, ia mendapatkan kecaman dan komentar negatif dari netizen.&nbsp;Tidak hanya Bu Prani yang terkena&nbsp;<em>bullying</em>, keluarganya pun ikut dikecam oleh masyarakat. Segala tindakan dan perlakuan masing-masing anggota keluarganya pun ikut dinilai dari dicari kesalahannya. Sehingga hidup mereka menjadi tidak tenang dan apa pun yang mereka lakukan akan dipandang salah. Selain kehilangan keharmonisan keluarga, hingga Bu Prani terancam kehilangan pekerjaannya</p>', '2023-12-07 06:03:07', '2023-12-07 06:03:07'),
(84, 'D-006', 'https://youtu.be/IPRBKGxCCZQ?si=ImIquZwlXyAXEM-n', '172 Days', 'images/172 Days.jpg', 'banner/banner172.png', 11, 103, '2023', 0, 0, '<p style=\"text-align: justify;\">Film 172 Days menecritakan seorang perempuan bernama Nadzira Shafa memutuskan untuk berhijrah dan ingin menjalani kehidupan yang lebih baik. Dari proses hijrahnya tersebut, Nadzira Shafa mulai banyak mempelajari tentang ilmu agama serta kerap kali hadir dalam suatu majlis pengajian. Ameer adalah putra dari mendiang Ustadz Arifin Ilham, seorang ulama dan pendakwah yang sangat terkenal di Indonesia. Ameer adalah seorang pemuda yang taat beragama dan memiliki akhlak yang mulia. Ameer pun mulai mendekati Zira. Ia mengajak Zira untuk taaruf dan menikah. Zira pun menerima ajakan Ameer dan mereka pun menikah.Kehidupan pernikahan Zira dan Ameer sangat bahagia. Mereka saling mencintai dan saling mendukung. Namun, kebahagiaan mereka tidak bertahan lama. Ameer yang menderita penyakit kritis harus menjalani perawatan intensif di rumah sakit. Zira pun setia mendampingi Ameer selama masa-masa sulitnya. Akhirnya, Ameer menghembuskan napas terakhirnya di usia yang masih sangat muda, 22 tahun. Kepergian Ameer meninggalkan duka yang mendalam bagi Zira.</p>', '2023-12-07 06:07:51', '2023-12-07 06:07:51'),
(85, 'M-004', 'https://youtu.be/CzUtxsJxCzQ?si=Rr-DJYCL0YWvDRkD', 'Gone Girl', 'images/gone-girl.jpg', 'banner/648d86bc8f038-gone-girl_bandung.jpg', 13, 149, '2014', 0, 0, '<p>Pada suatu pagi istrinya hilang secara misterius. Nick Dunne lapor polisi dan media segera meliput kasus ini secara besar-besaran. Namun mereka curiga - mungkin Nick telah membunuh istrinya sendiri.</p>', '2023-12-07 10:13:25', '2023-12-07 10:13:25'),
(86, 'M-005', 'https://youtu.be/5iaYLCiq5RM?si=IZJaGXdXR3PE474e', 'Shutter Island', 'images/SI_.jpg', 'banner/Shutter-Island.webp', 13, 138, '2010', 0, 0, '<p>Seorang perwira ditugaskan untuk menyelidiki hilangnya seorang pasien yang telah melarikan diri dari rumah sakit jiwa. Hal-hal berbahaya mulai meragukan segalanya, termasuk kewarasannya sendiri.</p>\r\n<p>&nbsp;</p>', '2023-12-07 10:27:14', '2023-12-07 10:27:14'),
(87, 'M-006', 'https://youtu.be/seBixtcx19E?si=WvRkloqvpRKQl6C5', 'Missing', 'images/14.-PF-Missing.jpg', 'banner/missing.jpg', 13, 111, '2022', 0, 0, '<p>Ketika sang ibu dan pacar barunya menghilang saat berlibur berdua ke Kolombia, upaya June dalam mencari jawaban selalu terjegal oleh birokrasi internasional. Tak mampu beranjak dari Los Angeles, June dengan cerdik mempergunakan segala teknologi yang ada dalam genggamannya untuk mencari ibunya sebelum semuanya terlambat. Namun semakin ia mencari tahu, penyelidikan digital yang ia lakukan berbuahkan lebih banyak pertanyaan daripada jawaban, dan begitu June menemukan rahasia-rahasia tentang sang ibu, ia tersadar bahwa selama ini ia tak benar-benar mengenal ibunya sendiri.</p>', '2023-12-07 11:10:34', '2023-12-07 11:10:34'),
(88, 'M-007', 'https://youtu.be/OtYQB4r8Jew?si=DBpOFmsltQzVn-KV', 'There s Something Wrong with the Children', 'images/Tswwtc.jpg', 'banner/tswwtc.webp', 13, 92, '2023', 0, 0, '<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Margaret dan Ben melakukan perjalanan akhir pekan dengan teman lama mereka, Ellie dan Thomas serta dua anak kecil mereka. </span><span style=\"vertical-align: inherit;\">Ben mulai curiga suatu hal supernatural sedang terjadi saat anak-anak itu sering mendapat pesan aneh setelah hilang semalaman di hutan.</span></span></p>', '2023-12-07 11:16:31', '2023-12-07 11:16:31');
INSERT INTO `tb_film` (`id`, `kode_film`, `trailer`, `nama_film`, `gambar`, `banner`, `id_genre`, `durasi`, `tahun`, `id_review`, `id_rekomendasi`, `sinopsis`, `created_at`, `updated_at`) VALUES
(89, 'M-008', 'https://youtu.be/0wiBHEACNHs?si=1l1eMdsPur-YM0QD', 'Knock At the Cabin', 'images/knock-at-the-cabin-2023_600_880.webp', 'banner/katc.jpg', 13, 100, '2022', 0, 0, '<p>Eric dan Andrew adalah pasangan sesama jenis yang hidup bahagia. Untuk memperlengkap kebahagiaan mereka, keduanya memutuskan untuk mengadopsi anak keturunan Tionghoa bernama Wen. Di waktu senggang mereka, Eric dan Andrew memutuskan menyewa sebuah kabin di New England. Liburan ini bertujuan untuk menghabiskan waktu berkualitas bersama keluarga mereka.&nbsp;</p>', '2023-12-07 11:20:59', '2023-12-07 11:20:59'),
(90, 'M-009', 'https://youtu.be/h74AXqw4Opc?si=qFyxVOW8EdYv1NXv', 'Streem VI', 'images/Streem 6.jpg', 'banner/Streem VI.webp', 13, 162, '2023', 0, 0, '<p><strong>Samantha Carpenter merupakan salah satu penyintas dari tragedi Pembunuhan Woodsboro 2022 dan sedang menjalani terapi</strong>. Samantha mengaku baik saja, walaupun ia harus diasingkan di depan umum karena menikam Richie Kirsch dan dituduh mendalangi tragedi pembunuhan tersebut.</p>', '2023-12-07 11:30:23', '2023-12-07 11:30:23'),
(91, 'M-010', 'https://youtu.be/DXs8BJsnxU8?si=5gIT3tYnNADiKjaM', 'To Catch A Killer', 'images/to-catch-a-killer-2023.webp', 'banner/film-to-catch-a-killer_169.jpeg', 13, 119, '2023', 0, 0, '<p><strong>Eleanor Falco (Shailene Woodley) adalah sosok petugas polisi yang berbakat namun sering bermasalah</strong>. Kemampuannya ini membuat ia direkrut oleh kepala penyelidik FBI, Lammark (Ben Mendelsohn) untuk membantunya mengungkap sosok misterius yang meneror kota.</p>', '2023-12-07 11:38:21', '2023-12-07 11:38:21'),
(92, 'M-011', 'https://youtu.be/N-qn4h-amyY?si=Pg1mtJT9KiuEqark', 'Hypnotic', 'images/PF-Hypnotic.jpg', 'banner/poster-film-hypnotic.jpg', 13, 93, '2023', 0, 0, '<p>Bertekad untuk menemukan putrinya yang hilang, Detektif Danny Rourke terseret dalam misteri yang lebih besar ketika menyelidiki serangkaian tindak kejahatan yang membelokkan realita. Dengan bantuan Diana Cruz, seorang cenayang berbakat, Rourke memburu sekaligus diburu oleh sesosok mematikan, yang Rourke yakini memegang kunci keberadaan sang putri.</p>', '2023-12-07 11:43:20', '2023-12-07 11:43:20'),
(93, 'M-012', 'https://youtu.be/2S3M1xFVdVg?si=r8XlmwVwWzdxCTd3', 'They Cloned Tyrone', 'images/they cloned tyrone.jpg', 'banner/tct.jpg', 13, 122, '2023', 0, 0, '<p>Menceritakan tentang aksi tiga orang yang melakukan penyelidikan serius.Tiga orang ini berasal dari satu kesamaan yakni dari kalangan orang kulit hitam.Mereka bertemu karena mengalami kejadian yang sama pada suatu waktu. Fontaine (John Boyega) seorang pengedar narkoba menemui Slick Charles (Jamie Foxx) usai mendapati masalah dengan saingannya.</p>', '2023-12-07 11:58:32', '2023-12-07 11:58:32'),
(94, 'AD-008', 'https://youtu.be/avz06PDqDbM?si=2kDzl5GV4TSEcSoX', 'Mission Impossible ', 'images/mission Imposible.jpg', 'banner/Mission-Impossible.jpg', 14, 183, '2023', 0, 0, '<p>Ethan Hunt dan tim IMF beraksi dalam misi paling berbahaya dari yang pernah ada: Melacak sebuah senjata jenis baru yang dapat mengancam kelangsungan umat manusia, sebelum jatuh ke tangan yang salah. Dengan kendali terhadap masa depan dan nasib dunia sebagai taruhannya, serta pihak-pihak jahat dari masa lalu Ethan yang turut mengintai, perlombaan maut lintas negara dimulai. Dihadang oleh musuh yang misterius dan berkuasa, Ethan dipaksa untuk menjadikan misi ini sebagai prioritas terpentingbahkan lebih penting dari nyawa orang-orang terdekatnya sekalipun.</p>', '2023-12-07 12:14:24', '2023-12-07 12:14:24'),
(95, 'AD-009', 'https://youtu.be/4wxyy8Rcz4k?si=z9KmTC2mivzZVjIe', 'Blue beetle', 'images/blue beetle.jpg', 'banner/Blue-Beetle.jpg', 14, 127, '2023', 0, 0, '<p>Sebuah relik peninggalan alien memilih Jaime Reyes (Xolo Mariduena) untuk menjadi pewaris kekuatan luar biasa. Kekuatan baru ini mengubah takdir hidup Reyes menjadi pahlawan super kumbang biru.</p>', '2023-12-07 12:18:23', '2023-12-07 12:18:23'),
(96, 'AD-010', 'https://youtu.be/32RAq6JzY-w?si=eQKIddzzDCroBn6w', 'Fast X', 'images/fast X.jpg', 'banner/b -fastX.webp', 14, 141, '2023', 0, 0, '<p>Selama banyak misi dan melawan rintangan yang mustahil, Dom Toretto dan keluarganya telah mengakali dan mengalahkan setiap musuh di jalan mereka. Sekarang, mereka menghadapi lawan paling mematikan yang pernah mereka hadapi: Ancaman mengerikan yang muncul dari bayang-bayang masa lalu yang dipicu oleh dendam berdarah, dan yang bertekad untuk menghancurkan keluarga ini dan menghancurkan segalanyadan semua orangyang dicintai Dom, selamanya. Dalam Fast Five 2011, Dom dan krunya mengalahkan gembong narkoba Brasil Hernan Reyes yang jahat dan memenggal kerajaannya di sebuah jembatan di Rio De Janeiro. Apa yang tidak mereka ketahui adalah bahwa putra Reyes, Dante, menyaksikan semuanya dan telah menghabiskan 12 tahun terakhir mendalangi rencana untuk membuat Dom membayar harga tertinggi. Plot Dante akan menyebarkan keluarga Dom dari Los Angeles ke katakombe Roma, dari Brasil ke London dan dari Portugal ke Antartika. Sekutu baru akan ditempa dan musuh lama akan muncul kembali. Tapi semuanya berubah ketika Dom menemukan bahwa putranya sendiri yang berusia 8 tahun adalah target utama balas dendam Dante.</p>', '2023-12-07 12:24:17', '2023-12-07 12:24:17'),
(97, 'AD-011', 'https://youtu.be/zt-hyQE-sIA?si=8JKbO3o2O1EsqPYf', 'Detective Knight: Independence', 'images/detective knight independence.jpg', 'banner/detective knight independence banner.jpg', 14, 91, '2023', 0, 0, '<p>Film yang menceritakan sebuah Penugasan terakhir Detektif James Knight untuk shift Hari Kemerdekaan yang berubah menjadi sebuah perlombaan untuk menghentikan seorang EMT Ambulans ini yang dimana akan tidak seimbang dari membahayakan perayaan kota tersebut.</p>\r\n<p>&nbsp;</p>\r\n<p>Penegak hukum sembarang yang bermain polisi tersebut dengan senjata dan seragam yang dicuri memiliki sebuah lemari yang besi penuh alasan untuk menampilkan pertunjukan kembang api miliknya sendiri tersebut satu yang akan berdekatan sangat berbahaya dengan rumah Knight itu.</p>\r\n<p>&nbsp;</p>\r\n<p>Dari cerita yang sudah dibangun oleh Edward Drake dan Corey Large, film tersebutlah yang akan terasa sangat seru untuk ditonton oleh anda.&nbsp;Apalagi untuk film Detective Knight: Independence tersebut yang dibintangi banyak actor dan aktris yang sangat berbakat dan tidak perlu diragukan lagi untuk kemampuan beraktingnya tersebut, ialah Lorenzo Antonucci, Dax Campbell, dan Scott Cargle.&nbsp;Demikian informasi mengenai&nbsp;<a href=\"https://radargarut.jabarekspres.com/tag/sinopsis-film/\">Sinopsis Film</a> DETECTIVE KNIGHT: INDEPENDENCE (2023), Penugasan Terakhir Detektif James Knight.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2023-12-07 12:33:36', '2023-12-07 12:33:36'),
(98, 'AD-012', 'https://youtu.be/82I1ErFD63U?si=kLBJRO6GxqbevAE-', 'We Have A Ghost', 'images/we have A Ghost.jpg', 'banner/Banner We have A ghost.jpeg', 14, 127, '2023', 0, 0, '<p>We Have A Ghost mengisahkan&nbsp;<strong>pengalaman menemukan hantu laki-laki bernama Ernest yang menyebabkan keluarga Kevin menjadi sensasi di media sosial</strong>. Kevin yang memiliki kemampuan melihat hantu pun kerap melihat sosok hantu di rumah barunya.</p>', '2023-12-07 13:22:30', '2023-12-07 13:22:30'),
(99, 'A-005', 'https://youtu.be/yiTs7bxUc-s?si=h7ta4FucYjSlKZ5C', 'The Big 4', 'images/big4.jpg', 'banner/banner big4.webp', 8, 141, '2022', 0, 0, '<p style=\"text-align: justify;\">Cerita The&nbsp;<strong>Big 4</strong> berpusat pada Dina (Putri Marino), detektif yang dikenal lurus dan memegang teguh prinsip sebagai anggota polisi. Suatu hari, Dina mendapati sang ayah (Budi Ros) meninggal secara misterius. Ia berupaya mengungkap misteri kematian ayahnya dengan mengikuti petunjuk yang ditemukan</p>', '2023-12-09 07:40:34', '2023-12-09 07:40:34'),
(100, 'A-006', 'https://youtu.be/yXhoytk0Hfw?si=P0VMpXPinjoNcKjR', 'Headshot', 'images/Poster_headshot.jpg', 'banner/Headshot_Landscape.jpg', 8, 117, '2016', 0, 0, '<p style=\"text-align: justify;\">Seorang dokter muda merawat sesosok pria tak dikenal yang terluka parah dan kehilangan ingatannya. Tak lama beberapa orang datang mencarinya dan menculik si dokter - membuatnya tak punya pilihan lain.</p>', '2023-12-09 07:46:56', '2023-12-09 07:46:56'),
(101, 'A-007', 'https://youtu.be/PQ6yUHHfZ04?si=5qwFOuJ2_urkxgNB', 'The Raid 2 - Berandal', 'images/Poster_Teatrikal_The_Raid_2-Berandal.jpeg', 'banner/brandal-131210b.webp', 8, 150, '2014', 0, 0, '<p style=\"text-align: justify;\">Dalam sekuel film laga ini, Rama dikirim menyamar untuk membasmi pejabat polisi yang korup dan komplotan geng dunia kriminal bawah tanah.</p>', '2023-12-09 07:54:25', '2023-12-09 07:54:25'),
(102, 'A-008', 'https://youtu.be/8rauD1vxMCw?si=ceFKU2c0tfszChN0', 'Gundala', 'images/gundala.jpg', 'banner/gundala banner.jpeg', 8, 123, '2019', 0, 0, '<p style=\"text-align: justify;\">Sancaka hidup di jalanan sejak ditinggal ayah dan ibunya. Menghadapi hidup yang keras, Sancaka belajar untuk bertahan hidup dengan tidak peduli dengan orang lain dan hanya mencoba untuk mendapatkan tempat yang aman bagi dirinya sendiri. Ketika situasi kota semakin tidak aman dan ketidakadilan merajalela di seluruh negeri, Sancaka harus buat keputusan yang berat, tetap hidup di zona amannya, atau keluar sebagai Gundala untuk membela orang-orang yang ditindas.</p>', '2023-12-09 08:01:54', '2023-12-09 08:01:54'),
(103, 'A-009', 'https://youtu.be/K6n3VPO1oGE?si=bjD8m-1X1xcY5v0C', 'Foxtrot Six', 'images/foxtrot six.jpg', 'banner/banner foxtrot six.jpeg', 8, 114, '2019', 0, 0, '<p style=\"text-align: justify;\">Ketika Indonesia diambil alih oleh partai pembelot PIRANAS, serangkaian peristiwa membawa mantan marinir Angga (Oka Antara) kepada masa lalunya Sari (Julie Estelle) dimana kebenaran dibalik&hellip;</p>', '2023-12-09 08:10:55', '2023-12-09 08:10:55'),
(104, 'A-010', 'https://youtu.be/RHTrW0LN3E4?si=jP-M9Y00huCT7QIM', 'Ben & Jody', 'images/Poster_film_Ben_&_Jody.jpg', 'banner/ben-n-jody-800x500.jpg', 8, 114, '2022', 0, 0, '<p style=\"text-align: justify;\">Sejak keluar dari Filosofi Kopi, Ben (Chicco Jerikho) yang kini aktif membela kelompok petani untuk melawan perusahaan, kini menghilang. Jody (Rio Dewanto) sebagai sahabat setianya pun melakukan pencarian untuk menemukan keberadaan Ben.</p>', '2023-12-09 08:14:32', '2023-12-09 08:14:32'),
(105, 'A-011', 'https://youtu.be/Z5T67lOcjoM?si=c6EZlOYpcQ5o0x7S', 'Wiro Sableng', 'images/Poster_film_Wiro_Sableng_212.jpg', 'banner/wiro-sableng-212-diperankan-vino-g-bastian.jpg', 8, 123, '2018', 0, 0, '<p style=\"text-align: justify;\">Nusantara, abad ke-16, Wiro Sableng (Vino G Bastian), seorang pemuda, murid dari pendekar misterius bernama Sinto Gendeng (Ruth Marini), mendapat titah dari gurunya untuk meringkus Mahesa Birawa (Yayan Ruhian), mantan murid Sinto Gendeng yang berkhianat. Dalam perjalanannya mencari Mahesa Birawa, Wiro terlibat dalam suatu petualangan seru bersama dua sahabat barunya Anggini (Sherina Munaf) dan Bujang Gila Tapak Sakti (Fariz Alfarazi). Pada akhirnya Wiro bukan hanya menguak rencana keji Mahesa Birawa, tetapi juga menemukan esensi sejati seorang pendekar.</p>', '2023-12-09 08:22:57', '2023-12-09 08:22:57'),
(106, 'A-012', 'https://youtu.be/Lgr59kA3PCE?si=rYGT9QlQlwNwb0Ti', 'Pendekar Tongkat Emas', 'images/Pendekar_Tongkat_Emas_poster.jpg', 'banner/pendekar-tongkat-emas-1ed4ac.webp', 8, 112, '2014', 0, 0, '<p style=\"text-align: justify;\">Seorang murid bela diri ditunjuk untuk menjadi penerus gurunya. Namun, keadaan berubah saat ia harus melawan dua anggota lain yang membunuh sang guru dan mencuri pusakanya.</p>', '2023-12-09 08:29:55', '2023-12-09 08:29:55'),
(107, 'R-003', 'https://youtu.be/rKGvrEWCG3A?si=mfXoE9n1EkzyCPQs', 'Habibi & Ainun', 'images/Habibie_Ainun_Poster.jpg', 'banner/banner habibi dan ainun.jpg', 9, 118, '2012', 0, 0, '<p style=\"text-align: justify;\">Ini adalah kisah tentang apa yang terjadi bila kau menemukan belahan hatimu. Kisah tentang cinta pertama dan cinta terakhir. Kisah tentang Presiden ketiga Indonesia dan ibu negara. Kisah tentang Habibie dan Ainun. Rudy Habibie seorang jenius ahli pesawat terbang yang punya mimpi besar: berbakti kepada bangsa Indonesia dengan membuat truk terbang untuk menyatukan Indonesia. Sedangkan Ainun adalah seorang dokter muda cerdas yang dengan jalur karir terbuka lebar untuknya. Pada tahun 1962, dua kawan SMP ini bertemu lagi di Bandung. Habibie jatuh cinta seketika pada Ainun yang baginya semanis gula. Tapi Ainun, dia tak hanya jatuh cinta, dia iman pada visi dan mimpi Habibie. Mereka menikah dan terbang ke Jerman. Punya mimpi tak akan pernah mudah. Habibie dan Ainun tahu itu. Cinta mereka terbangun dalam perjalanan mewujudkan mimpi. Dinginnya salju Jerman, pengorbanan, rasa sakit, kesendirian serta godaan harta dan kuasa saat mereka kembali ke Indonesia mengiringi perjalanan dua hidup menjadi satu. Bagi Habibie, Ainun adalah segalanya. Ainun adalah mata untuk melihat hidupnya. Bagi Ainun, Habibie adalah segalanya, pengisi kasih dalam hidupnya. Namun setiap kisah mempunyai akhir, setiap mimpi mempunyai batas. Kemudian pada satu titik, dua belahan jiwa ini tersadar; Apakah cinta mereka akan bisa terus abadi?</p>', '2023-12-09 08:47:32', '2023-12-09 08:47:32'),
(108, 'R-004', 'https://youtu.be/C2yFJaXmdQs?si=0N5B0SI9LZXv0npw', 'Milea', 'images/milea.jpg', 'banner/004491100_1608011207-Milea-_-Mariposa-Feed.webp', 9, 102, '2020', 0, 0, '<p style=\"text-align: justify;\">Tidak ada kisah yang lebih Indah dari kisah cinta di SMA.Sama halnya dengan kisah cinta Dilan dan Milea.Dari yang awalnya benci hingga saling mencintai. Dari yang awalnya manis hingga menjadi rumit.Menjelang reuni akbar,Dilan memutuskan untuk menceritakan kembali masa masa itu.</p>', '2023-12-09 09:02:05', '2023-12-09 09:02:05'),
(109, 'R-005', 'https://youtu.be/k_nK2PQ1Q8Q?si=DvU2fDkbL0q_HSBf', 'Tenggelamnya Kapal Van Der Wich', 'images/Poster_film_Tenggelamnya_Kapal_van_der_Wijck.jpg', 'banner/Tenggelamnya-Kapal-Van-Der-Wijck.jpeg', 9, 155, '2013', 0, 0, '<p style=\"text-align: justify;\">Dari Makasar, Zainuddin berlayar menuju tanah kelahiran ayahnya di Padang Panjang. Hatinya terpikat pada seorang gadis jelita bangsawan, Hayati. Namun apa daya, adat istiadat menghalangi cinta mereka.</p>', '2023-12-09 15:41:34', '2023-12-09 15:41:34'),
(110, 'R-006', 'https://youtu.be/3c_McS4_2A8?si=uWB250osE8mBqBdR', 'Ada Apa Dengan Cinta 2', 'images/aadc.jpg', 'banner/aadc banner.jpg', 9, 123, '2016', 0, 0, '<p>14 tahun setelah percintaan mereka di sekolah menengah, Rangga dan Cinta bersatu kembali di Yogyakarta untuk menutup kisah mereka setelah Rangga meninggalkan Cinta tanpa penjelasan.</p>', '2023-12-09 15:50:59', '2023-12-09 15:50:59');

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
(8, 'nabila11', '95e90858eae276a3237e4c51781f604b', 'Nabila Ayu', 'Makassar', '089356477837'),
(9, 'andika', '7e51eea5fa101ed4dade9ad3a7a072bb', 'Andika', 'Purwokerto', '089754365476'),
(11, 'reinz', '4b8ed057e4f0960d8413e37060d4c175', 'Raisa', 'Palembang', '082278879009'),
(12, 'dhilah12', '4d85010526c4c9ab3cfb037a6660c4d3', 'Siti Nur Fadhilah', 'Makassar', '0887435464273'),
(13, 'dzikri', 'b64d39a5bb552206fb1452fc33cd74e5', 'Muhammad Dzikri', 'Malang', '087464537283'),
(14, 'arya1', '1983db0b728f1ab57feea563f80d0693', 'Arya Dewantara', 'Yogyakarta', '087643642435'),
(15, 'fairuz67', 'df59b64c01823c9c6c83facefbb741a4', 'Fairuz', 'Cirebon', '087467659345'),
(16, 'naufal06', 'ed60a8404a9c31e1a297bd5a47bfa2f9', 'Muhamad Naufal', 'Purworejo', '082133887594'),
(17, 'bagus', '17b38fc02fd7e92f3edeb6318e3066d8', 'Bagus Setiawan', 'Pemalang', '087634258564'),
(18, 'amanda1', '41722e651761ffe9d2e6f44635aa647c', 'Amanda Cantika', 'Bandung', '089647653845'),
(19, 'andre11', '88a9daaa42352b5077bbba91e6f8c158', 'Ade Andre Wirayuda', 'Kalimantan', '081264837452'),
(20, 'indah12', 'aff4a825d7110edfe5bbf80ed736f7eb', 'Indah Puspitasari', 'Jakarta', '089276453827'),
(21, 'mutia', 'ab250ab2e876197de1c2c98fd18873a9', 'Mutiara', 'Tegal', '089754732638'),
(22, 'inayah', '0d93c80516e40b473649cbbc0bad3539', 'Inayah Nurilahi', 'Gorontalo', '085172638561'),
(23, 'rani', 'b9f81618db3b0d7a8be8fd904cca8b6a', 'Khaerani Awinar', 'Pekanbaru', '087236583648'),
(24, 'amel', 'da0e22de18e3fbe1e96bdc882b912ea4', 'Amaliah Putri', 'Pekalongan', '081234537583'),
(25, 'johan', '7fedcb034ecf9df4be8c1ea13362053b', 'Johandika Saputra', 'Banjar', '082936482638'),
(26, 'zahra', '01e50c681c0b05ff22686b3e0f7290d3', 'Azzahra Thahira', 'Medan', '084956763856'),
(27, 'yatni', '09a17d8335e336d1f1b680b9613f5228', 'Triyatni Garina', 'Kudus', '089364728364'),
(28, 'setya', 'f5b98bb2b03c96f763ee43f752778316', 'Setya Rizki Pradana', 'Kemranjen', '089375832345'),
(29, 'nanda', '859a37720c27b9f70e11b79bab9318fe', 'Ananda Putri', 'Toraja', '089468253648'),
(30, 'chandra', 'ad845a24a47deecbfa8396e90db75c6a', 'Mahardika Chandra', 'Kudus', '087936485723'),
(31, 'ratih', 'a5bd72a3d2c4d1686415f93a46fc7a0a', 'Ratih Ayuni', 'Baturaden', '089463745836'),
(32, 'dela', '4e4a3b45c22f1be8f65067b617722ad6', 'Dela Safitri', 'Cilacap', '082364821945'),
(33, 'tegar', '1d31802d64bae29d88923d795fc73734', 'Tegar Subianto', 'Sokaraja', '081364829465'),
(34, 'fajar', '24bc50d85ad8fa9cda686145cf1f8aca', 'Fajar Akmali', 'Majenang', '081264728462'),
(35, 'wastian', '3020612a9768979fa25761d219947dfb', 'Wastian Salwa', 'Purwokerto', '081274917492'),
(36, 'deni', '43f41d127a81c54d4c8f5f93daeb7118', 'Deni Nugraha', 'Cilacap', '083651983452'),
(37, 'agustina', 'e97a9daede1b082531118bc6a05c6d14', 'Agustina Churil', 'Purwokerto', '082648125368'),
(38, 'emil', 'f7cb3054af5084f5b0d84703c867349b', 'Emilia Putri', 'Makassar', '083728362536'),
(39, 'dian', 'f97de4a9986d216a6e0fea62b0450da9', 'Dian Andira', 'Lombok', '082746193854'),
(40, 'rezky', '061e7f6083e4287185043b9ac0e8dcf0', 'Rezky Hardianti', 'Bali', '083527345628'),
(41, 'dini', '83476316a972856163fb987b861a0a2c', 'Nataza Andini', 'Cimahi', '089234719353'),
(42, 'jejes', 'c21a668f7217ebe91566f72ff18c7767', 'Jessica', 'Tangerang', '089354725374'),
(43, 'ayu', '29c65f781a1068a41f735e1b092546de', 'Putriana Ayu', 'Jambi', '089254786432');

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
-- Indeks untuk tabel `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `id_film_like` (`id_film_like`,`id_user_like`),
  ADD KEY `id_user_like` (`id_user_like`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id_nama_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_nama_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `like`
--
ALTER TABLE `like`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `pemain`
--
ALTER TABLE `pemain`
  MODIFY `id_nama_pemain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT untuk tabel `pemeran`
--
ALTER TABLE `pemeran`
  MODIFY `id_pemeran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_nama_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
-- Ketidakleluasaan untuk tabel `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_ibfk_1` FOREIGN KEY (`id_user_like`) REFERENCES `user` (`id_nama_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `like_ibfk_2` FOREIGN KEY (`id_film_like`) REFERENCES `tb_film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
