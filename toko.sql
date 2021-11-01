-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30 Okt 2021 pada 07.03
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sepatu`
--

CREATE TABLE IF NOT EXISTS `sepatu` (
  `no` int(15) NOT NULL,
  `produk` varchar(20) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sepatu`
--

INSERT INTO `sepatu` (`no`, `produk`, `harga`) VALUES
(1, 'Nike', 375000),
(2, 'Adidas', 300000),
(3, 'Kickers', 250000),
(4, 'Eiger', 275000),
(5, 'Bucherri', 400000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sepatu`
--
ALTER TABLE `sepatu`
 ADD PRIMARY KEY (`no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
