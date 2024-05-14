-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2024 at 08:59 PM
-- Server version: 8.0.33-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingspe1_kingpedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `tipe` enum('INFORMASI','PERINGATAN','PENTING','UPDATE','DEPOSIT') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `subjek` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `konten` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `date`, `time`, `tipe`, `subjek`, `konten`) VALUES
(1, '2024-05-09', '00:27:48', 'UPDATE', 'SMM PANEL INDONESIA TERMURAH - TERBAIK', 'bergabung bersama kami smm panel pusat reseller termurah dan terbaik layanan berkualitas seperti likes, followers, subscriber, views dan masih banyak lagi?');

-- --------------------------------------------------------

--
-- Table structure for table `bot_whatsapp`
--

CREATE TABLE `bot_whatsapp` (
  `id` int NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `token_wa` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` enum('Aktif','Tidak Aktif') CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `bot_whatsapp`
--

INSERT INTO `bot_whatsapp` (`id`, `nama`, `token_wa`, `status`) VALUES
(1, 'fonnte.com', 'Mwqh#pVL9XQ+6o+8fDK_', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int NOT NULL,
  `kode_deposit` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `merchant_ref` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provider` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fee` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tujuan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_transfer` int NOT NULL,
  `get_saldo` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` enum('Success','Pending','Error') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `place_from` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'WEB',
  `link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_hosting`
--

CREATE TABLE `email_hosting` (
  `id` int NOT NULL,
  `username` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_hosting`
--

INSERT INTO `email_hosting` (`id`, `username`, `password`) VALUES
(1, 'support@kingspedia.com', 'dsf345t4wf453');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int NOT NULL,
  `konten` text NOT NULL,
  `update_terakhir` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `konten`, `update_terakhir`) VALUES
(1, '                                <table class=\"table table-bordered dt-responsive nowrap\" style=\"border-collapse: collapse; border-spacing: 0; width: 100%;\">\r\n                                    <tbody>\r\n\r\n                                    <tr>\r\n                                        <td align=\"center\">\r\n                                            <a href=\"https://www.facebook.com/\" class=\"btn btn-primary btn-bordred btn-rounded waves-effect waves-light\" target=\"BLANK\"><i class=\"mdi mdi-facebook\"></i> Facebook</a>\r\n                                        </td>\r\n                                        <td align=\"center\">\r\n                                            <a href=\"https://api.whatsapp.com/send?phone=6289616631417&text=Hallo%20Admin\" class=\"btn btn-primary btn-bordred btn-rounded waves-effect waves-light\" target=\"BLANK\"><i class=\"mdi mdi-whatsapp\"></i> Whatsapp</a>\r\n                                        </td>\r\n<table class=\"table table-bordered dt-responsive nowrap\" style=\"border-collapse: collapse; border-spacing: 0; width: 100%;\">\r\n                                    <tbody>\r\n<td align=\"center\">\r\n                                            <a href=\"https://Instagram.com/hery_flasher\" class=\"btn btn-primary btn-bordred btn-rounded waves-effect waves-light\" target=\"BLANK\"><i class=\"mdi mdi-instagram\"></i> Instagram</a>\r\n</td>\r\n                                    </tr>   \r\n                                    </tbody>\r\n                                </table>\r\n                                \r\n', '2019-01-21 00:00:00'),
(2, '<p>Layanan yang disediakan oleh Feedback panel telah ditetapkan kesepakatan-kesepakatan berikut.</p><br />\n										<p><b>1. Umum</b><br />\n										<br />Dengan mendaftar dan menggunakan layanan feedback panel, Anda secara otomatis menyetujui semua ketentuan layanan kami. Kami berhak mengubah ketentuan layanan ini tanpa pemberitahuan terlebih dahulu. Anda diharapkan membaca semua ketentuan layanan kami sebelum membuat pesanan.<br />\n										<br />Penolakan: feedback panel tidak akan bertanggung jawab jika Anda mengalami kerugian dalam bisnis Anda.<br />\n										<br />Kewajiban: feedback panel tidak bertanggung jawab jika Anda mengalami suspensi akun atau penghapusan kiriman yang dilakukan oleh Instagram, Twitter, Facebook, Youtube, dan lain-lain.<br />\n										<br /><b>2. Layanan</b><br />\n										<br />Kewajiban: feedback panel hanya digunakan untuk media promosi sosial media dan membantu meningkatkan penampilan akun Anda saja.<br />\n										<br />Kewajiban: feedback panel tidak menjamin pengikut baru Anda berinteraksi dengan Anda, kami hanya menjamin bahwa Anda mendapat pengikut yang Anda beli.<br />\n										<br />Kewajiban: feedback panel tidak menerima permintaan pembatalan/pengembalian dana setelah pesanan masuk ke sistem kami. Kami memberikan pengembalian dana yang sesuai jika pesanan tida dapat diselesaikan.</p>', '2019-01-21 00:00:00'),
(3, '<h4>Apa Itu Feedback panel?</h4>Sebuah platform bisnis yang menyediakan berbagai layanan social media marketing yang bergerak terutama di Indonesia.<br />\nDengan bergabung bersama kami, Anda dapat menjadi penyedia jasa social media atau reseller social media seperti jasa penambah Followers, Likes, dll.<br />\nSaat ini tersedia berbagai layanan untuk social media terpopuler seperti Instagram, Facebook, Twitter, Youtube, dll.<br />\n<br />\n<h4>Bagaimana cara mendaftar di Feedback Panel ?</h4> Anda dapat menghubungi Admin <a href=\"/halaman/kontak-kami\">Kontak</a><br />\n<br />\n<h4>Bagaimana cara membuat Pesanan ?</h4>Untuk membuat pesanan sangatlah mudah, Anda hanya perlu masuk terlebih dahulu ke akun Anda dan menuju halaman <b>Pemesanan</b> dengan mengklik menu yang sudah tersedia. Selain itu Anda juga dapat melakukan pemesanan melalui request API.<br />\n<br />\n<h4>Bagaimana cara melakukan Pengisian Saldo ?</h4>Untuk melakukan pengisian saldo, Anda hanya perlu masuk terlebih dahulu ke akun Anda dan menuju halaman deposit dengan mengklik menu yang sudah tersedia. Kami menyediakan deposit melalui bank dan pulsa.									', '2019-01-21 00:00:00'),
(4, '<center><h4><b> PENJELASAN STATUS DI<br>Sosmed Plus </b></h4>\n										<p>\n<br>										<br>\n<span class=\"badge badge-warning\">PENDING</span> :<br> Pesanan/deposit sedang dalam antian di server										\n<br>\n</br>\n<span class=\"badge badge-info\">PROCESSING</span> :<br> Pesanan sedang dalam proses										\n<br>\n</br>\n<span class=\"badge badge-success\">SUCCESS</span> :<br> Pesanan telah berhasil										\n<br>\n</br>\n<span class=\"badge badge-danger\">PARTIAL</span> :<br> Pesanan hanya masuk sebagian. Dan anda hanya akan membayar layanan yang masuk saja										\n<br>\n</br>\n<span class=\"badge badge-danger\">ERROR</span> :<br> Pesanan di batalkan/Terjadi Kesalahan Sistem, dan saldo akan otomatis kembali ke akun.										<br>										<br>\n</br>\n</center>\n<span class=\"badge badge-kece\">Refill/Guaranteed</span> : Refill adalah isi ulang. Jika anda membeli layanan refill dan ternyata dalam beberapa hari followers berkurang, maka akan otomatis di refill/di isi ulang. <b>Tapi harap di ketahui, Server hanya akan mengisi ulang jika followers yang berkurang adalah followers yang di beli dengan layanan refill.</b></p>                                ', '2019-01-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `history_saldo`
--

CREATE TABLE `history_saldo` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `aksi` enum('Penambahan Saldo','Pengurangan Saldo') NOT NULL,
  `nominal` double NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_layanan`
--

CREATE TABLE `kategori_layanan` (
  `id` int NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `kode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `tipe` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layanan_sosmed`
--

CREATE TABLE `layanan_sosmed` (
  `id` int NOT NULL,
  `service_id` int NOT NULL,
  `id_kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `layanan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `average` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `min` int NOT NULL,
  `max` int NOT NULL,
  `harga` double NOT NULL,
  `harga_api` double NOT NULL,
  `profit` double NOT NULL,
  `status` enum('Aktif','Tidak Aktif') CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `provider_id` int NOT NULL,
  `provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `tipe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `refill` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `aksi` enum('Login','Logout') NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `aksi`, `ip`, `date`, `time`) VALUES
(1, 'admin123', 'Logout', '36.72.217.21', '2024-05-09', '20:38:33'),
(2, 'admin123', 'Login', '36.72.217.21', '2024-05-09', '20:40:25'),
(3, 'Praja123', 'Login', '182.3.103.21', '2024-05-09', '20:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `logo_qris`
--

CREATE TABLE `logo_qris` (
  `id` int NOT NULL,
  `link` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` enum('Aktif','Tidak Aktif') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo_qris`
--

INSERT INTO `logo_qris` (`id`, `link`, `status`) VALUES
(1, '39345295qris-zaynflazz.png', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `metode_depo`
--

CREATE TABLE `metode_depo` (
  `id` int NOT NULL,
  `provider` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `tipe` enum('Bank','E-Wallet','QRIS','Pulsa Transfer') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `status` enum('ON','OFF') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metode_depo`
--

INSERT INTO `metode_depo` (`id`, `provider`, `nama`, `rate`, `tujuan`, `tipe`, `min`, `max`, `status`) VALUES
(2, 'BCA', 'BCA [ min 10K ]', '1', 'BCA : 4372554171 A/N agus riyanto', 'Bank', 10000, 20000000, 'ON'),
(20, 'DANA', 'DANA [ min 10K ]', '1', 'DANA : 083191910986 A/N agus riyanto', 'E-Wallet', 10000, 4000000, 'ON'),
(21, 'QRIS', 'QRIS [ min 10K ]', '1', 'QRIS', 'QRIS', 10000, 4000000, 'ON'),
(22, 'BRI', 'BRI [ min 10K ]', '1', 'BRI: xxxx A/N agus riyanto', 'Bank', 10000, 20000000, 'OFF'),
(23, 'Link Aja', 'Link Aja [ min 10K ]', '1', 'Link Aja : xxxx A/N agus riyanto', 'E-Wallet', 10000, 4000000, 'OFF'),
(24, 'GOPAY', 'GOPAY [ min 10K ]', '1', 'GOPAY : xxxx A/N agus riyanto', 'E-Wallet', 10000, 4000000, 'OFF'),
(25, 'OVO', 'OVO [ min 10K ]', '1', 'OVO : 083191910986 A/N agus riyanto', 'E-Wallet', 10000, 4000000, 'ON'),
(26, 'MANDIRI', 'MANDIRI [ min 10K ]', '1', 'MANDIRI: xxxx A/N agus riyanto', 'Bank', 10000, 20000000, 'OFF'),
(27, 'BNI', 'BNI [ min 10K ]', '1', 'BNI: xxxx A/N agus riyanto', 'Bank', 10000, 20000000, 'OFF'),
(28, 'SHOPEEPAY', 'ShopeePay [ min 10K ]', '1', 'ShopeePay : 083191910986 A/N agus riyanto', 'E-Wallet', 10000, 4000000, 'OFF');

-- --------------------------------------------------------

--
-- Table structure for table `metode_depo1`
--

CREATE TABLE `metode_depo1` (
  `id` int NOT NULL,
  `jenis_saldo` enum('Saldo') NOT NULL,
  `minimal_deposit` varchar(250) NOT NULL,
  `maksimal_deposit` varchar(250) NOT NULL,
  `fee` varchar(50) NOT NULL,
  `tipe` enum('Pulsa','Bank','EMoney','EPayment','ECurrency','Virtual-Account','Convenience-Store') NOT NULL,
  `provider` varchar(255) NOT NULL,
  `jalur` enum('Auto','Manual') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `tujuan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metode_depo1`
--

INSERT INTO `metode_depo1` (`id`, `jenis_saldo`, `minimal_deposit`, `maksimal_deposit`, `fee`, `tipe`, `provider`, `jalur`, `nama`, `rate`, `keterangan`, `tujuan`) VALUES
(39, 'Saldo', '10000', '20000000', '4200', 'Virtual-Account', 'BRIVA', 'Auto', 'BRI Virtual Account ', '1', 'ON', 'Yabgroup'),
(41, 'Saldo', '10000', '20000000', '4200', 'Virtual-Account', 'BNIVA', 'Auto', 'BNI Virtual Account ', '1', 'ON', 'Yabgroup'),
(43, 'Saldo', '10000', '20000000', '4200', 'Virtual-Account', 'CIMBNIAGA', 'Auto', 'CIMB Virtual Account ', '1', 'ON', 'Yabgroup'),
(45, 'Saldo', '10000', '20000000', '4500', 'Virtual-Account', 'MANDIRIVA', 'Auto', 'Mandiri Virtual Account ', '1', 'ON', 'Yabgroup'),
(47, 'Saldo', '10000', '2000000', '3100', 'Convenience-Store', 'ALFAMART', 'Auto', 'Alfamart ( Online 24 Jam )', '1', 'ON', 'Yabgroup'),
(53, 'Saldo', '1000', '4000000', '3', 'EMoney', 'OVO', 'Auto', 'OVO ( Online 24 Jam )', '1', 'ON', 'Yabgroup'),
(106, 'Saldo', '10000', '4000000', '0.7', 'EMoney', 'QRIS', 'Auto', 'QRIS ( Online 24 Jam )', '1', 'ON', 'Yabgroup'),
(107, 'Saldo', '10000', '20000000', '4200', 'Virtual-Account', 'PERMATAVA', 'Auto', 'Permata Virtual Account ', '1', 'ON', 'Yabgroup'),
(108, 'Saldo', '10000', '20000000', '4200', 'Virtual-Account', 'MAYBANK', 'Auto', 'MayBank Virtual Account ', '1', 'ON', 'Yabgroup'),
(109, 'Saldo', '1000', '4000000', '3', 'EMoney', 'DANA', 'Auto', 'DANA ( Online 24 Jam )', '1', 'ON', 'Yabgroup'),
(110, 'Saldo', '5000', '4000000', '3', 'EMoney', 'Link Aja', 'Auto', 'Link Aja  ( Online 24 Jam )', '1', 'OFF', 'Yabgroup'),
(111, 'Saldo', '10000', '15000000', '4200', 'Virtual-Account', 'BNCVA', 'Auto', 'Bank  NEO Commerce', '1', 'ON', 'Yabgroup');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_sosmed`
--

CREATE TABLE `pembelian_sosmed` (
  `id` int NOT NULL,
  `oid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `provider_oid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `user` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `layanan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `target` text CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `jumlah` int NOT NULL,
  `remains` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `start_count` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `harga` double NOT NULL,
  `profit` double NOT NULL,
  `status` enum('Pending','Processing','In Progress','Error','Partial','Canceled','Completed','Success') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `provider` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `place_from` enum('Website','API') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `refund` int NOT NULL DEFAULT '0',
  `refill` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesan_tiket`
--

CREATE TABLE `pesan_tiket` (
  `id` int NOT NULL,
  `id_tiket` int NOT NULL,
  `pengirim` enum('Member','team-support') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `pesan` text CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_terakhir` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `api_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `api_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `secret_key` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `profit` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `code`, `link`, `api_key`, `api_id`, `secret_key`, `profit`) VALUES
(1, 'ZAYNFLAZZ', 'https://zaynflazz.com/api/sosial-media', '4YVTEj9mRgy7U2FXyhgD', '-', '', '1.1'),
(18, 'MANUAL', 'MANUAL', '-', '-', '-', '1');

-- --------------------------------------------------------

--
-- Table structure for table `refill_order`
--

CREATE TABLE `refill_order` (
  `id` int NOT NULL,
  `oid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `provider_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `layanan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `target` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` enum('Pending','Processing','In Progress','Error','Partial','Canceled','Ditolak','Completed','Success') CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `provider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_transfer`
--

CREATE TABLE `riwayat_transfer` (
  `id` int NOT NULL,
  `pengirim` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `penerima` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `jumlah` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting_web`
--

CREATE TABLE `setting_web` (
  `id` int NOT NULL,
  `short_title` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `title` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi_web` text NOT NULL,
  `keyword` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wa_number` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `facebook_akun` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ig_akun` varchar(20) NOT NULL,
  `twitter` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_akun` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `favicon` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `header_logo` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_web`
--

INSERT INTO `setting_web` (`id`, `short_title`, `title`, `deskripsi_web`, `keyword`, `wa_number`, `facebook_akun`, `ig_akun`, `twitter`, `email_akun`, `favicon`, `header_logo`, `date`, `time`) VALUES
(1, 'KingsPedia', 'Smm Panel Indonesia Pusat Reseller Sosial Media Marketing Termurah & Berkualitas!', 'KingsPedia adalah Sebuah platform yang menyediakan  berbagai layanan sosmed & digital yang  bergerak terutama di Indonesia. Mari bergabung dengan kami, Mulai lakukan peluang berbisnis. Anda Dapat Menjadi Penyedia Jasa Social Media Atau Reseller Social Media Seperti Jasa Penambah Followers, Likes, Dll.', 'smm panel,best smm panel,top smm panel,cheapest smm panel,facebook smm panel,facebook servcies,youtube smm panel,watch hours smm panel,youtube services,tiktok services,tiktok smm panel,cheap smm panel,promoteing smm panel,main smm panel,instagram smm panel,main smm provider,kings pedia', '6289616631417', 'shoppediav1', 'shoppediav1', 'shoppediav1', 'indakeys17@gmail.com', '32611598smmsewazaynflazzlogo.png', '85348983roleblock-logo.png', '2019-01-03', '16:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id` int NOT NULL,
  `user` varchar(50) NOT NULL,
  `subjek` varchar(250) NOT NULL,
  `pesan` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_terakhir` datetime NOT NULL,
  `status` enum('Pending','Responded','Waiting','Closed') NOT NULL,
  `this_user` int NOT NULL,
  `this_admin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` text CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `nomer` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `pin` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `saldo` int NOT NULL,
  `pemakaian_saldo` double NOT NULL,
  `level` enum('Member','Developers','Reseller') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `status` enum('Aktif','Tidak Aktif') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `api_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `uplink` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_nama` int NOT NULL,
  `random_kode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `nomer`, `pin`, `username`, `password`, `saldo`, `pemakaian_saldo`, `level`, `status`, `api_key`, `uplink`, `date`, `time`, `update_nama`, `random_kode`) VALUES
(2, 'admin123', 'sintalaela960@gmail.com', '082223268973', '0', 'admin123', '$2y$10$kSa8SmvUjd3JSr/Hlzn2m.s/IEQkR9Brv.pVcKptUoQTRpphAiqYa', 0, 0, 'Developers', 'Aktif', 'IxdQ6QoBShHd9FjjDKQdjFXlpDeuY5QO', 'Pendaftaran Gratis', '2024-05-03', '15:54:22', 0, 'CAk11229'),
(6, 'Praja', 'purnamanusa96@gmail.com', '082249316901', '0', 'Praja123', '$2y$10$lcVEr0dmv0FxMr4vnNyCyupsGW8ePr/onSswmikGsDHJAbxQnWCze', 0, 0, 'Member', 'Aktif', 'cSgsLIEeQsodG59nagF5MwJttWAtZWCcfWRTQYkUMs', 'Pendaftaran Gratis', '2024-05-09', '20:57:42', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_deposit`
--

CREATE TABLE `voucher_deposit` (
  `id` int NOT NULL,
  `voucher` varchar(50) NOT NULL,
  `saldo` varchar(250) NOT NULL,
  `status` enum('active','sudah di redeem') NOT NULL,
  `user` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `yabgroup`
--

CREATE TABLE `yabgroup` (
  `id` int NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `api_key` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `secret_key` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yabgroup`
--

INSERT INTO `yabgroup` (`id`, `nama`, `api_key`, `secret_key`, `link`) VALUES
(1, 'YABGROUP', 'G9wXf3e6Umd7r0ZkgaF4xOzY0c0KcZJ1', 'CxztV2SmWYFzH9CsjKKjWiF2TA1CDuJfmWYV79LISf3RpOnHVwsD', 'https://yab-group.com/api/live/create');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bot_whatsapp`
--
ALTER TABLE `bot_whatsapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_hosting`
--
ALTER TABLE `email_hosting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_saldo`
--
ALTER TABLE `history_saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_sosmed`
--
ALTER TABLE `layanan_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_qris`
--
ALTER TABLE `logo_qris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metode_depo`
--
ALTER TABLE `metode_depo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metode_depo1`
--
ALTER TABLE `metode_depo1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian_sosmed`
--
ALTER TABLE `pembelian_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refill_order`
--
ALTER TABLE `refill_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_transfer`
--
ALTER TABLE `riwayat_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_web`
--
ALTER TABLE `setting_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_deposit`
--
ALTER TABLE `voucher_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yabgroup`
--
ALTER TABLE `yabgroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bot_whatsapp`
--
ALTER TABLE `bot_whatsapp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_hosting`
--
ALTER TABLE `email_hosting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `history_saldo`
--
ALTER TABLE `history_saldo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layanan_sosmed`
--
ALTER TABLE `layanan_sosmed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logo_qris`
--
ALTER TABLE `logo_qris`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `metode_depo`
--
ALTER TABLE `metode_depo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `metode_depo1`
--
ALTER TABLE `metode_depo1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `pembelian_sosmed`
--
ALTER TABLE `pembelian_sosmed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `refill_order`
--
ALTER TABLE `refill_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_transfer`
--
ALTER TABLE `riwayat_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting_web`
--
ALTER TABLE `setting_web`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `voucher_deposit`
--
ALTER TABLE `voucher_deposit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yabgroup`
--
ALTER TABLE `yabgroup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
