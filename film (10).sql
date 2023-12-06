-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2023 pada 21.37
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
(9, 'Raisa Nurlita', 'raisa'),
(10, 'admin4', 'fc1ebc848e31e0a68e868432225e3c82');

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
(115, 1, 31, 'The Avengers adalah sebuah mahakarya! Aksi yang luar biasa, cerita yang menarik, dan karakter yang kuat membuat film ini menjadi salah satu film superhero terbaik sepanjang masa.', 5, '2023-12-04 16:26:37'),
(117, 6, 41, 'Film ini tidak hanya menghibur, tetapi juga memberikan pesan yang mendalam. Dengan kombinasi humor yang cerdas dan momen dramatis yang kuat, film ini layak mendapatkan rating tinggi', 5, '2023-12-04 19:42:18'),
(118, 6, 30, 'Dari segi teknis, film ini tak tertandingi. Efek visual yang luar biasa, musik yang memikat, dan alur cerita yang menegangkan membuatnya menjadi film terbaik dalam genre ini', 5, '2023-12-04 20:06:39'),
(119, 6, 42, 'Gampang Cuan adalah film komedi yang cerdas dan menghibur, menggabungkan humor segar dengan narasi yang sederhana namun mengena. Dengan sutradara yang tahu cara menangkap esensi komedi, film ini menjadi persembahan yang menghibur dan mudah dicerna.', 4, '2023-12-05 05:21:45'),
(120, 6, 38, 'Dilan 1990 adalah sebuah film Indonesia yang menghadirkan kisah cinta remaja dengan sentuhan nostalgiawi. Disutradarai oleh Fajar Bustomi dan Pidi Baiq, film ini merupakan sekuel dari film sebelumnya, Dilan 1990, dan menjadi fenomena tersendiri di dunia perfilman Tanah Air.', 5, '2023-12-05 05:22:41'),
(121, 2, 43, 'Film ini menawarkan pengalaman visual yang menarik, dengan adegan aksi dan efek khusus yang baik. Pengaturan di hutan dan tantangan dalam permainan menyumbang pada nada petualangan keseluruhan.', 5, '2023-12-05 07:05:52'),
(122, 2, 44, 'Film ini tidak hanya mengisahkan kisah cinta, tetapi juga menyampaikan pesan moral dan inspiratif. Kisah kehidupan Habibie yang berfokus pada kejujuran, dedikasi, dan perjuangan hidup memberikan inspirasi bagi banyak penonton', 5, '2023-12-05 07:23:32'),
(123, 2, 49, 'Film ini mengeksplorasi aspek emosional dan hubungan antara karakter dengan cara yang mendalam. Hubungan antara Maleficent dan Aurora menjadi fokus utama, dan pengembangan karakter ini dianggap berhasil', 5, '2023-12-05 08:04:11'),
(124, 2, 50, 'Harry potter gausah diragin lagi sih filmnya... udah paling top ', 5, '2023-12-05 08:16:34'),
(125, 2, 51, 'film ini baguss sih... cuman karakter ariel disini kurang karena biasa ariel identik dengan rambut merah terang sedangkan di film nya rambutnya merah kecoklatan.', 4, '2023-12-05 10:33:27'),
(126, 2, 52, 'dari dulu suka banget sama film cinderella mulai dari kartunnya sampe movie nya juga', 4, '2023-12-05 10:53:23'),
(127, 2, 29, 'labirinnya gokill', 3, '2023-12-05 11:01:33'),
(128, 2, 53, 'Film ini indah dalam menggambarkan tantangan yang dihadapi para karakter, menyentuh isu-isu sosial, dan menyoroti pentingnya pendidikan dalam memutus rantai kemiskinan. ', 5, '2023-12-05 11:20:38'),
(129, 2, 54, 'sukaa banget sama film inii!!!', 4, '2023-12-05 11:38:21');

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
(276, ' Indro (pelawak)', '330px-Indro_Warkop.jpg', 'Purbalingga', '1958-05-08');

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
(292, 272, 76, 'Pengendara Mobil Kuning');

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
(76, 'K-012', 'https://www.youtube.com/watch?v=m3U03b9yHKk', 'Warkop DKI Reborn: Jangkrik Boss! Part 1', 'images/warkop-dki-reborn-jangkrik-boss-part-1-2016dokfalcon-pictures.jpeg', 'banner/jangkrik-bos.jpg', 7, 110, '2016', 0, 0, '<p>Film komedi Indonesia ini mengisahkan tentang tiga sahabat, Dono , Kasino, dan Indro, yang bekerja sebagai petugas keamanan di organisasi CHIIPS. Meskipun tugas mereka adalah menertibkan dan menjaga keamanan masyarakat, kelakuan konyol dan bermasalah mereka selalu membuat jengkel atasannya.</p>\r\n<p>Kehadiran Sophie, anggota CHIIPS dari Paris, membawa mereka pada petualangan kocak untuk mencari harta karun guna membayar denda Rp8 miliar dan menghindari penjara.</p>', '2023-12-06 19:56:51', '2023-12-06 19:56:51');

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
(7, 'Dian', 'dian01', 'Rizki Dian ', 'Pemalang', '0897643543256'),
(8, 'nabila11', '95e90858eae276a3237e4c51781f604b', 'Nabila Ayu', 'Makassar', '089356477837'),
(9, 'andika', '7e51eea5fa101ed4dade9ad3a7a072bb', 'Andika', 'Purwokerto', '089754365476');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id_nama_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_nama_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT untuk tabel `pemain`
--
ALTER TABLE `pemain`
  MODIFY `id_nama_pemain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT untuk tabel `pemeran`
--
ALTER TABLE `pemeran`
  MODIFY `id_pemeran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_nama_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
