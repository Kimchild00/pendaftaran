-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2020 at 09:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FORM_PENDAFTARAN_SMK`
--

-- --------------------------------------------------------

--
-- Table structure for table `CALON_PESERTA_DIDIK`
--

CREATE TABLE `CALON_PESERTA_DIDIK` (
  `No_KK` bigint(20) NOT NULL,
  `Nama` char(50) NOT NULL,
  `NISN` bigint(20) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Agama` char(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Tempat_Tinggal` varchar(50) NOT NULL,
  `No_Telpon` bigint(20) NOT NULL,
  `Sekolah_Asal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CALON_PESERTA_DIDIK`
--

INSERT INTO `CALON_PESERTA_DIDIK` (`No_KK`, `Nama`, `NISN`, `Tempat_Lahir`, `Tanggal_Lahir`, `Agama`, `Alamat`, `Tempat_Tinggal`, `No_Telpon`, `Sekolah_Asal`) VALUES
(31721234561, 'Koko', 123452, 'Jakarta', '2000-09-05', 'Islam', 'Jl. Dalam', 'Bersama Ortu', 8125463, 'SMPN 113 Jakarta'),
(31721235675, 'Keke', 123450, 'Jakarta', '2000-07-22', 'Islam', 'Jl. Luar', 'Bersama Ortu', 8125430, 'SMPN 22 Jakarta'),
(31721345676, 'Kuku', 123458, 'Jakarta', '2000-12-20', 'Islam', 'Jl. Pendek', 'Bersama Ortu', 8125469, 'SMPN 13 Jakarta'),
(31721345677, 'Kiki', 123457, 'Bandung', '2000-02-03', 'Islam', 'Jl. Panjang', 'Bersama Ortu', 8154366, 'SMPN 12 Jakarta'),
(31721345678, 'Kaka', 123456, 'Jakarta', '2000-01-02', 'Islam', 'Jl. Jalan', 'Bersama Ortu', 8125367, 'SMPN 11 Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CALON_PESERTA_DIDIK`
--
ALTER TABLE `CALON_PESERTA_DIDIK`
  ADD PRIMARY KEY (`No_KK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
