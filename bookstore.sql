-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 12:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id_book` int(11) NOT NULL,
  `b_tittle` varchar(50) NOT NULL,
  `b_img` longtext NOT NULL,
  `b_author` varchar(50) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_price` varchar(20) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_book`, `b_tittle`, `b_img`, `b_author`, `b_desc`, `b_price`, `id_cat`) VALUES
(1, 'Anatomic Habits', 'anatomic.png', 'James Clear', 'Perubahan Kecil yang Memberikan Hasil Luar Biasa adalah buku kategori self improvement karya James Clear. Pada umumnya, perubahan-perubahan kecil seringkali terkesan tak bermakna karena tidak langsung membawa perubahan nyata pada hidup suatu manusia. Jika diumpamakan sekeping koin tidak bisa menjadikan kaya, suatu perubahan positif seperti meditasi selama satu menit atau membaca buku satu halaman setiap hari mustahil menghasilkan perbedaan yang bisa terdeteksi. Namun hal tersebut tidak sejalan dengan pemikiran James Clear, ia merupakan seorang pakar dunia yang terkenal dengan \'habits\' atau kebiasaan. Ia tahu bahwa tiap perbaikan kecil bagaikan menambahkan pasir ke sisi positif timbangan dan akan menghasilkan perubahan nyata yang berasal dari efek gabungan ratusan bahkan ribuan keputusan kecil. Ia menamakan perubahan kecil yang membawa pengaruh yang luar biasa dengan nama atomic habits.', '70000', 1),
(2, 'Filosofi Teras', 'filosofi teras.png', 'Henry Manampiring', 'Lebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang, Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Milenial dan Gen-Z masa kini.', '79000', 2),
(3, 'Sang Pemimpi', 'Sang pemimpi.png', 'Andrea Hirata', 'Andrea Hirata adalah pemenang pertama penghargaan sastra New York Book Festival 2013, untuk The Rainbow Troops, Laskar Pelangi edisi Amerika, penerbit Farrar, Straus & Giroux, New York, kategori general fiction, dan pemenang pertama Buchawards 2013, Jerman, untuk Die Regenbogen Truppe, Laskar Pelangi edisi Jerman, penerbit Hanser Berlin. Dia juga pemenang seleksi short story majalah sastra terkemuka di Amerika, Washington Square Review, New York University, edisi winter/spring 2011 untuk short story pertamanya Dry Season. Tahun 2015 dia dianugerahi gelar Doktor Honoris Causa di bidang sastra oleh University of Warwick, UK dan Tahun 2017 menerima penghargaan budaya dari pemerintah Prancis untuk karyanya Les Guerriers de L\'arc-en-ciel (Laskar Pelangi edisi Prancis, penerbit Mercure de France). Karya Hirata berbahasa Indonesia: Laskar Pelangi, Sang Pemimpi, Edensor, Maryamah Karpov, Padang Bulan, Cinta di dalam Gelas, Sebelas Patriot, Laskar Pelangi Song Book, Ayah, Sirkus Pohon, dan Guru Aini. Karya dalam bahasa asing The Rainbow Troops, Der Träumer, Dry Season. Sejak Tahun 2010, secara mandiri Hirata mempromosikan minat baca, minat menulis dan mendirikan museum sastra pertama dan satu-satunya di Indonesia, Museum Kata Andrea Hirata di Belitung.', '68000', 3),
(4, 'Koyoharu Gotouge ', 'demon slayer.png', 'Demon Slayer: Kimetsu No Yaiba 04', 'Begitu Tanjiro keluar usai mengalahkan iblis pengguna tsuzumi, dia melihat Zenitsu Agatsuma tengah dipukuli secara sepihak oleh seorang pemuda bertopeng babi hutan. Tanjiro berusaha menghentikan pemuda itu, tapi setelahnya dia yang jadi incaran! Usai beristirahat, Tanjiro dan kawan-kawan mendapat perintah darurat dari Kisatsutai dan menuju suatu gunung yang menyeramkan!! Rahasia apa yang tersembunyi di gunung itu…!?\r\n\r\nBuku ini merupakan volume ke-04 dari seri komik Demon Slayer: Kimetsu No Yaib', '68000', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_cust` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` longtext NOT NULL,
  `hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_cat` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_cat`, `cat_name`) VALUES
(1, 'self improvement'),
(2, 'comic'),
(3, 'fantasi '),
(4, 'novel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_cat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
