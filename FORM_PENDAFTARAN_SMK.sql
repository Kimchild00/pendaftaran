-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2020 at 10:19 AM
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
-- Table structure for table `calon_peserta_didik`
--

CREATE TABLE `calon_peserta_didik` (
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
-- Dumping data for table `calon_peserta_didik`
--

INSERT INTO `calon_peserta_didik` (`No_KK`, `Nama`, `NISN`, `Tempat_Lahir`, `Tanggal_Lahir`, `Agama`, `Alamat`, `Tempat_Tinggal`, `No_Telpon`, `Sekolah_Asal`) VALUES
(31721234561, 'Koko', 123452, 'Jakarta', '2000-09-05', 'Islam', 'Jl. Dalam', 'Bersama Ortu', 8125463, 'SMPN 113 Jakarta'),
(31721235675, 'Keke', 123450, 'Jakarta', '2000-07-22', 'Islam', 'Jl. Luar', 'Bersama Ortu', 8125430, 'SMPN 22 Jakarta'),
(31721345676, 'Kuku', 123458, 'Jakarta', '2000-12-20', 'Islam', 'Jl. Pendek', 'Bersama Ortu', 8125469, 'SMPN 13 Jakarta'),
(31721345677, 'Kiki', 123457, 'Bandung', '2000-02-03', 'Islam', 'Jl. Panjang', 'Bersama Ortu', 8154366, 'SMPN 12 Jakarta'),
(31721345678, 'Kaka', 123456, 'Jakarta', '2000-01-02', 'Islam', 'Jl. Jalan', 'Bersama Ortu', 8125367, 'SMPN 11 Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `LAMPIRAN`
--

CREATE TABLE `LAMPIRAN` (
  `Kartu_keluarga` bigint(20) NOT NULL,
  `Pos_photo_3x4` varchar(20) NOT NULL,
  `SKL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LAMPIRAN`
--

INSERT INTO `LAMPIRAN` (`Kartu_keluarga`, `Pos_photo_3x4`, `SKL`) VALUES
(9485738, 'Sudah', 'Sudah'),
(94857382, 'Sudah', '-'),
(94857383, '-', '-'),
(94857384, '-', 'Sudah'),
(94857385, 'Sudah', 'Sudah');

-- --------------------------------------------------------

--
-- Table structure for table `orang_tua`
--

CREATE TABLE `orang_tua` (
  `no_kk` bigint(20) NOT NULL,
  `nama_ayah` char(50) NOT NULL,
  `nama_ibu` char(50) NOT NULL,
  `tahun_lahir_ayah` date NOT NULL,
  `tahun_lahir_ibu` date NOT NULL,
  `Pekerjaan_ayah` varchar(30) NOT NULL,
  `pekerjaan_ibu` varchar(30) NOT NULL,
  `alamat_tempat_tinggal` varchar(50) NOT NULL,
  `penghasilan_perbulan` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orang_tua`
--

INSERT INTO `orang_tua` (`no_kk`, `nama_ayah`, `nama_ibu`, `tahun_lahir_ayah`, `tahun_lahir_ibu`, `Pekerjaan_ayah`, `pekerjaan_ibu`, `alamat_tempat_tinggal`, `penghasilan_perbulan`) VALUES
(331205171162, 'Gino', 'Atik', '1962-12-12', '1970-10-15', 'Petani', 'Ibu Rumah Tangga', 'Jl. Keluarga Cemara', 2000000),
(331205171163, 'Gini', 'Atun', '1970-10-20', '1977-09-21', 'Karyawan Swasta', 'Ibu Rumah Tangga', 'Jl. Keluarga Indah', 4000000),
(331205171164, 'Ginu', 'Anik', '1968-02-09', '1978-01-22', 'Pegawai Negeri', 'Ibu Rumah Tangga', 'Jl. Keluarga Setia', 5000000),
(331205171165, 'Ginanjar', 'Jubaedah', '1969-11-11', '1975-01-12', 'Wirausaha', 'Ibu Rumah Tangga', 'Jl. Keluarga tercemar', 3000000),
(331205171166, 'Ginjal', 'Julaeha', '1968-01-01', '1978-08-08', 'Pegawai Negeri', 'Ibu Rumah Tangga', 'Jl. Keluarga Bahagia', 4500000);

-- --------------------------------------------------------

--
-- Table structure for table `Pendaftaran`
--

CREATE TABLE `Pendaftaran` (
  `NO_PENDAFTARAN` int(11) NOT NULL,
  `MAHASISWA` char(50) NOT NULL,
  `TANGGAL_DAFTAR` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Pendaftaran`
--

INSERT INTO `Pendaftaran` (`NO_PENDAFTARAN`, `MAHASISWA`, `TANGGAL_DAFTAR`) VALUES
(512345, 'KANG', '2020-09-08'),
(512346, 'KUNG', '2020-09-09'),
(512347, 'KING', '2020-09-10'),
(512348, 'KONG', '2020-09-07'),
(512349, 'KENG', '2020-09-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_peserta_didik`
--
ALTER TABLE `calon_peserta_didik`
  ADD PRIMARY KEY (`No_KK`);

--
-- Indexes for table `LAMPIRAN`
--
ALTER TABLE `LAMPIRAN`
  ADD PRIMARY KEY (`Kartu_keluarga`);

--
-- Indexes for table `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`no_kk`);

--
-- Indexes for table `Pendaftaran`
--
ALTER TABLE `Pendaftaran`
  ADD PRIMARY KEY (`NO_PENDAFTARAN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Pendaftaran`
--
ALTER TABLE `Pendaftaran`
  MODIFY `NO_PENDAFTARAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512351;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
