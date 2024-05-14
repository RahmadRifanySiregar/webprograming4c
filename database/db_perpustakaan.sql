-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 05:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `jenis_kelamin` enum('PRIA','WANITA') NOT NULL,
  `agama` varchar(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `jenis_kelamin`, `agama`, `email`, `password`, `create_at`, `update_at`) VALUES
('1', 'ayu', 'Air Batu', 'WANITA', 'ISLAM', 'annisaarahayu16@gmail.com', '123', '2024-05-13 10:32:06', '2024-05-13 10:32:06'),
('10', 'yantii', 'Sei Kepayang', 'WANITA', 'ISLAM', 'yanti@gmail.com', '3', '2024-05-13 10:36:00', '2024-05-13 10:36:00'),
('3', 'abdul alim', 'Mandoge', 'PRIA', 'ISLAM', 'fajrinsr22@gmail.com', '1', '2024-05-13 10:32:29', '2024-05-13 10:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(25) NOT NULL,
  `id_mhs` varchar(8) NOT NULL,
  `tgl_pinjam` datetime NOT NULL DEFAULT current_timestamp(),
  `tgl_kembali` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `peminjaman` (`id_mhs`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
