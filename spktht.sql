-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2022 at 08:18 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spktht`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

DROP TABLE IF EXISTS `basis_pengetahuan`;
CREATE TABLE IF NOT EXISTS `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL,
  PRIMARY KEY (`kode_pengetahuan`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(1, 1, 1, 0.8, 0.2),
(2, 1, 4, 0.8, 0.2),
(3, 1, 11, 0.6, 0.4),
(4, 1, 13, 0.8, 0.2),
(5, 1, 14, 0.4, 0.6),
(6, 1, 16, 0.8, 0.2),
(7, 1, 20, 1.0, 0.0),
(8, 1, 23, 0.6, 0.4),
(9, 2, 9, 0.4, 0.6),
(10, 2, 11, 0.8, 0.2),
(11, 2, 18, 1.0, 0.0),
(12, 2, 19, 0.2, 0.8),
(13, 3, 9, 0.8, 0.2),
(14, 3, 11, 0.8, 0.2),
(15, 3, 16, 0.4, 0.6),
(16, 3, 18, 0.6, 0.4),
(17, 3, 19, 0.8, 0.2),
(18, 3, 20, 1.0, 0.0),
(19, 3, 23, 0.6, 0.4),
(20, 4, 1, 0.4, 0.6),
(21, 4, 3, 0.8, 0.2),
(22, 4, 4, 0.4, 0.6),
(23, 4, 5, 0.6, 0.6),
(24, 4, 6, 0.6, 0.4),
(25, 4, 10, 0.6, 0.4),
(26, 4, 12, 0.6, 0.4),
(27, 4, 14, 1.0, 0.0),
(28, 5, 10, 0.6, 0.4),
(29, 5, 7, 0.8, 0.2),
(30, 5, 12, 1.0, 0.0),
(31, 5, 13, 1.0, 0.0),
(32, 5, 5, 0.8, 0.2),
(33, 5, 2, 0.8, 0.2),
(34, 5, 14, 0.4, 0.6);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `kode_gejala` int(11) NOT NULL AUTO_INCREMENT,
  `nama_gejala` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_gejala`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'Batuk'),
(2, 'Bersin'),
(3, 'Dahak mengalir ditenggorok'),
(4, 'Demam'),
(5, 'Hidung mampet'),
(6, 'Hidung mampet pada hidung bagian sebelah'),
(7, 'Hidung mampet pada hidung bagian sebelah secara be'),
(8, 'Ingus bau'),
(9, 'Memiliki riwayat mengorek telinga'),
(10, 'Penciuman berkurang'),
(11, 'Pendengaran berkurang'),
(12, 'Pilek encer di kedua hidung'),
(13, 'Pilek'),
(14, 'Sakit kepala'),
(15, 'Telinga berair selama >= 2 bulan'),
(16, 'Telinga berair selama <= 2 bulan'),
(17, 'Telinga berair bau selama >= 2 bulan\r\n\r\n'),
(18, 'Telinga mampet'),
(19, 'Telinga gatel'),
(20, 'Telinga nyeri'),
(21, 'Tenggorok nyeri'),
(22, 'Telinga nyeri saat mengunyah'),
(23, 'Telinga berdengung'),
(24, 'Tidur mendengkur');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

DROP TABLE IF EXISTS `hasil`;
CREATE TABLE IF NOT EXISTS `hasil` (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL,
  PRIMARY KEY (`id_hasil`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(1, '2022-12-17 03:15:31', 'a:5:{i:1;s:6:\"1.0000\";i:3;s:6:\"1.0000\";i:5;s:6:\"0.8320\";i:4;s:6:\"0.7226\";i:2;s:6:\"0.4800\";}', 'a:8:{i:1;s:1:\"4\";i:4;s:1:\"4\";i:11;s:1:\"3\";i:13;s:1:\"4\";i:14;s:1:\"2\";i:16;s:1:\"4\";i:20;s:1:\"5\";i:23;s:1:\"3\";}', 1, '1.0000'),
(2, '2022-12-17 03:16:05', 'a:3:{i:3;s:6:\"0.9438\";i:2;s:6:\"0.8662\";i:1;s:6:\"0.6000\";}', 'a:4:{i:9;s:1:\"3\";i:18;s:1:\"4\";i:19;s:1:\"3\";i:20;s:1:\"3\";}', 3, '0.9438'),
(3, '2022-12-17 03:16:50', 'a:3:{i:2;s:6:\"1.0000\";i:3;s:6:\"0.9177\";i:1;s:6:\"0.4800\";}', 'a:4:{i:9;s:1:\"2\";i:11;s:1:\"4\";i:18;s:1:\"5\";i:19;s:1:\"1\";}', 2, '1.0000'),
(4, '2022-12-17 03:17:26', 'a:3:{i:2;s:6:\"0.9518\";i:3;s:6:\"0.9494\";i:1;s:6:\"0.4800\";}', 'a:4:{i:9;s:1:\"3\";i:11;s:1:\"4\";i:18;s:1:\"4\";i:19;s:1:\"3\";}', 2, '0.9518'),
(5, '2022-12-17 03:18:01', 'a:3:{i:5;s:6:\"0.9632\";i:4;s:6:\"0.8960\";i:1;s:6:\"0.3200\";}', 'a:4:{i:2;s:1:\"3\";i:7;s:1:\"3\";i:12;s:1:\"4\";i:14;s:1:\"4\";}', 5, '0.9632');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

DROP TABLE IF EXISTS `kondisi`;
CREATE TABLE IF NOT EXISTS `kondisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(64) NOT NULL,
  `bobot` double NOT NULL,
  `ket` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `bobot`, `ket`) VALUES
(1, 'Ragu - ragu', 0.2, ''),
(2, 'Mungkin', 0.4, ''),
(3, 'Sangat Mungkin', 0.6, ''),
(4, 'Hampir pasti', 0.8, ''),
(5, 'Pasti', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE IF NOT EXISTS `penyakit` (
  `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  PRIMARY KEY (`kode_penyakit`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'Otitis Media Akut (OMA)', 'Acute otitis media (otitis = telinga, media = tengah) merupakan infeksi yang terjadi pada telinga tengah. Otitis media akut dapat terjadi pada semua usia, namun secara umum terjadi pada anak usia 6-24 bulan, 80% anak-anak pernah mengalami otitis media akut', 'Sebagian besar otitis media tidak memerlukan pengobatan khusus dan akan sembuh dengan sendirinya dalam beberapa hari. Namun, pada beberapa kasus, dokter akan memberikan obat-obatan. Bila otitis media sudah berlangsung dalam waktu lama, dokter akan melakukan bedah untuk mengeluarkan cairan dari dalam telinga.\r\n\r\nOtitis media dapat dicegah dengan menjauhkan anak dari paparan asap rokok dan polusi udara, dan memastikan anak mendapatkan imunisasi lengkap sesuai jadwal. Selain itu, berikan ASI eksklu', '01OtitisMedia.jpg'),
(2, 'Serumen (Kotoran Telinga)', 'Serumen atau kotoran telinga adalah substansi yang berfungsi melindungi dan melubrikasi telinga bagian luar. Pada dasarnya, produksi serumen adalah proses normal di telinga manusia. Namun jika sudah berlebihan dan terjadi penumpukan, serumen dapat menyebabkan sumbatan liang telinga yang dikenal dengan istilah serumen prop.', '- memberikan obat tetes telinga\r\n- melakukan tindakan medis\r\n', '02SerumenTelinga.jpg'),
(3, 'Otitis Eksterna (OE)', 'Otitis eksterna adalah infeksi yang terjadi di saluran telinga luar. Infeksi telinga ini bisa terjadi akibat masuknya air ke dalam telinga saat mandi atau berenang. Air yang tidak bisa keluar akan menyebabkan liang telinga lembab sehingga memicu pertumbuhan bakteri.', 'Untuk mengobati otitis ekterna, dokter akan membersihkan liang telinga pasien terlebih dahulu. Dokter dapat menggunakan kuret atau alat khusus untuk mengeluarkan kotoran dari dalam telinga. \r\n\r\nSetelah itu, dokter akan memberikan obat-obatan untuk menangani otitis eksterna. Obat-obatan tersebut antara lain:\r\n\r\nKortikosteroid, untuk meredakan peradangan di liang telinga\r\nAntibiotik tetes telinga, seperti polymyxin B tetes telinga, untuk membasmi infeksi yang disebabkan oleh bakteri\r\nAntijamur tet', '03OtitisEksterna.jpg'),
(4, 'Sinusitis', 'Sinusitis adalah peradangan di lapisan sinus, yang umumnya ditandai dengan pilek, hidung tersumbat, dan nyeri di area wajah. Kondisi ini bisa berlangsung dalam hitungan minggu, bulan, atau bahkan tahun.', 'Pengobatan sinusitis tergantung pada jenisnya, tetapi umumnya dengan pemberian obat. Jika obat-obatan tidak efektif, dokter akan menjalankan tindakan operasi.\r\n\r\nSinusitis bisa dicegah dengan mengurangi risiko terjadinya kondisi ini, yaitu dengan menghindari paparan zat pemicu alergi (alergen), memakai masker dengan benar, tidak merokok, dan menghindari kontak dengan orang sakit.', '04Sinusitis.jpg'),
(5, 'Rhinitis Kronis', 'Rhinitis adalah peradangan dan pembengkakan selaput lendir hidung yang ditandai dengan hidung berair dan hidung tersumbat yang biasanya disebabkan oleh pilek biasa atau alergi musiman. \r\nApa itu penyakit rhinitis kronis?\r\nRhinitis kronis adalah suatu penyakit infeksi hidung yang berulang dengan tanda adanya satu atau lebih gejala klinis dari rhinitis dalam durasi waktu lebih dari 12 minggu (Papadopoulos & Guibas, 2016). Oleh karena itu diperlukan pengetahuan mengenai hubungan kualitas hidup pend', 'Rhinitis ringan dapat diatasi dengan irigasi atau bilas hidung, serta obat pilek yang bisa dibeli tanpa resep. Namun, bila tidak kunjung membaik, konsultasikan dengan dokter guna mendapatkan penanganan lebih lanjut.\r\n\r\nPerlu diingat, hal terpenting dalam mencegah rhinitis adalah dengan menghindari pemicunya, seperti polusi udara dan bulu hewan. Penderita juga perlu berkonsultasi dengan dokter sebelum mengonsumsi obat-obatan.', '05RhinitisKronis.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `kode_post` int(11) NOT NULL AUTO_INCREMENT,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  PRIMARY KEY (`kode_post`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
