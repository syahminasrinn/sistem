-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 04:37 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tadika`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `Idbulan` int(11) NOT NULL,
  `bulan` varchar(11) NOT NULL,
  `kod_sek` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`Idbulan`, `bulan`, `kod_sek`) VALUES
(1, 'JANUARI', ''),
(2, 'FEBRUARI', ''),
(3, 'MAC', ''),
(4, 'APRIL', ''),
(5, 'MEI', ''),
(6, 'JUN', ''),
(7, 'JULAI', ''),
(8, 'OGOS', ''),
(9, 'SEPTEMBER', ''),
(10, 'OKTOBER', ''),
(11, 'NOVEMBER', ''),
(12, 'DISEMBER', '');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `kod_sek` varchar(7) NOT NULL,
  `idbulan` int(11) NOT NULL,
  `peratusan_bulanan` int(11) NOT NULL,
  `peratusan_tahunan` int(11) NOT NULL,
  `peratusan_jumlah_bulanan` int(11) NOT NULL,
  `Nama_sek` varchar(78) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peratusan_bulanan2`
--

CREATE TABLE `peratusan_bulanan2` (
  `bil` int(11) NOT NULL,
  `kod_tadika` varchar(12) NOT NULL,
  `jan` int(11) NOT NULL,
  `feb` int(11) NOT NULL,
  `mac` int(11) NOT NULL,
  `apr` int(11) NOT NULL,
  `may` int(11) NOT NULL,
  `jun` int(11) NOT NULL,
  `jul` int(11) NOT NULL,
  `ogos` int(11) NOT NULL,
  `sept` int(11) NOT NULL,
  `okt` int(11) NOT NULL,
  `nov` int(11) NOT NULL,
  `peratusanB` double NOT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peratusan_bulanan2`
--

INSERT INTO `peratusan_bulanan2` (`bil`, `kod_tadika`, `jan`, `feb`, `mac`, `apr`, `may`, `jun`, `jul`, `ogos`, `sept`, `okt`, `nov`, `peratusanB`, `tahun`) VALUES
(1, 'TAD0011', 99, 88, 20, 90, 0, 0, 0, 0, 0, 0, 0, 74.25, 0),
(3, 'TAB0023', 90, 50, 80, 40, 70, 0, 0, 0, 0, 0, 0, 66, 0);

-- --------------------------------------------------------

--
-- Table structure for table `peratus_bulanan`
--

CREATE TABLE `peratus_bulanan` (
  `IdBulan` int(11) NOT NULL,
  `kod_sek` varchar(11) NOT NULL,
  `id_peratus` int(11) NOT NULL,
  `peratusan_bulanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peratus_bulanan`
--

INSERT INTO `peratus_bulanan` (`IdBulan`, `kod_sek`, `id_peratus`, `peratusan_bulanan`) VALUES
(1, 'TAD0011', 1, 96),
(0, 'TAB0023', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `kod_sek` varchar(7) NOT NULL,
  `nama_sek` varchar(80) NOT NULL,
  `password` varchar(12) NOT NULL,
  `userlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`kod_sek`, `nama_sek`, `password`, `userlevel`) VALUES
('admin', 'PUAN ROGAYAH', '123', 3),
('TAB0023', 'TADIKA PERMATA', '0023', 2),
('TAD0011', 'TADIKA CAHAYA', '0011', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `idtahun` int(11) NOT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlevel`
--

CREATE TABLE `userlevel` (
  `id` int(10) NOT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlevel`
--

INSERT INTO `userlevel` (`id`, `level`) VALUES
(1, 3),
(2, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`Idbulan`);

--
-- Indexes for table `peratusan_bulanan2`
--
ALTER TABLE `peratusan_bulanan2`
  ADD PRIMARY KEY (`bil`);

--
-- Indexes for table `peratus_bulanan`
--
ALTER TABLE `peratus_bulanan`
  ADD PRIMARY KEY (`id_peratus`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`kod_sek`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`idtahun`);

--
-- Indexes for table `userlevel`
--
ALTER TABLE `userlevel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peratusan_bulanan2`
--
ALTER TABLE `peratusan_bulanan2`
  MODIFY `bil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peratus_bulanan`
--
ALTER TABLE `peratus_bulanan`
  MODIFY `id_peratus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `idtahun` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
