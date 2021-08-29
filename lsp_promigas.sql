-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 12:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsp_promigas`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `title`, `start_time`, `end_time`, `location`, `created_at`, `updated_at`) VALUES
(1, 'test 1', '2021-08-29 09:33:40', '2021-08-31 09:33:40', 'test', '2021-08-29 09:34:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `file`, `created_at`) VALUES
(1, 'Pelatihan 1', 'Berikut adalah pelatihan 1', 'pelatihan1.pdf', '2021-08-11 04:33:09'),
(2, 'Pelatihan 3', 'Berikut adalah pelatihan 3', NULL, '2021-08-11 04:35:00'),
(4, 'Pelatihan 4', 'Berikut adalah pelatihan 4', NULL, '2021-08-11 06:14:53'),
(5, 'Pelatihan 5', 'Berikut adalah pelatihan 5', '', '2021-08-11 10:09:52'),
(6, 'Pelatihan 5', 'Berikut adalah pelatihan 5', '2021-08-11T10-18-38.044Z-s.png', '2021-08-11 10:18:38'),
(7, 'Pelatihan 6', 'Berikut adalah pelatihan 6', '2021-08-11T11-04-05.026Z-FORMAT COVER LP PTI 3.pdf', '2021-08-11 11:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `asesi`
--

CREATE TABLE `asesi` (
  `id` int(11) NOT NULL,
  `nama_asesi` varchar(255) NOT NULL,
  `sertifikat_kompetensi` varchar(255) NOT NULL,
  `tanggal_terbit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asesi`
--

INSERT INTO `asesi` (`id`, `nama_asesi`, `sertifikat_kompetensi`, `tanggal_terbit`, `created_at`, `updated_at`) VALUES
(11, 'Test 1', 'Test 1', '2021-08-01 17:00:00', '2021-08-29 05:13:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asesor`
--

CREATE TABLE `asesor` (
  `id` int(11) NOT NULL,
  `nama_asesor` varchar(255) NOT NULL,
  `nomor_registrasi` varchar(255) NOT NULL,
  `kompetensi_teknis` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asesor`
--

INSERT INTO `asesor` (`id`, `nama_asesor`, `nomor_registrasi`, `kompetensi_teknis`, `created_at`, `updated_at`) VALUES
(8, 'Utami Widiasih', '', '', '2021-08-29 04:24:47', NULL),
(9, 'Wahyu Adiartono', '', '', '2021-08-29 04:25:01', NULL),
(10, 'Sari Murnie Atie', '', '', '2021-08-29 04:25:49', NULL),
(11, 'Antonius Reno L Gaol', '', '', '2021-08-29 04:26:04', NULL),
(12, 'Mitchen Tjhin', '', '', '2021-08-29 04:26:13', NULL),
(13, 'Bayuparmadi Pramudito', '', '', '2021-08-29 04:26:21', NULL),
(14, 'Djarot Utomo', '', '', '2021-08-29 04:26:31', NULL),
(15, 'Ade Irna Mulyadewi', '', '', '2021-08-29 04:26:39', NULL),
(16, 'Hary Subagio', '', '', '2021-08-29 04:26:47', NULL),
(17, 'Max B. Lani', '', '', '2021-08-29 04:26:55', NULL),
(18, 'Emmy Zola', '', '', '2021-08-29 04:27:37', NULL),
(19, 'Rafiq Imtihan', '', '', '2021-08-29 04:27:53', NULL),
(20, 'Chandra Bima', '', '', '2021-08-29 04:28:06', NULL),
(21, 'Agus Hardiman Adam', '', '', '2021-08-29 04:28:24', NULL),
(22, 'Astrid Nadya', '', '', '2021-08-29 04:28:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `skema`
--

CREATE TABLE `skema` (
  `id` int(11) NOT NULL,
  `nama_skema` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skema`
--

INSERT INTO `skema` (`id`, `nama_skema`, `file`, `created_at`, `updated_at`) VALUES
(6, 'Okupasi Manajer Pengelolaan Rantai Suplai', '', '2021-08-29 04:18:17', NULL),
(7, 'Okupasi Manajer Pengelolaan Pengadaan', '', '2021-08-29 04:18:27', NULL),
(8, 'Okupasi Manajer pengelolaan Asset', '', '2021-08-29 04:18:35', NULL),
(9, 'Klaster Pengelolaan Dokumen penawaran Mitra Kerja', '', '2021-08-29 04:18:44', NULL),
(10, 'Klaster Pelaksanaan Kontrak Mitra Kerja', '', '2021-08-29 04:18:54', NULL),
(11, 'Klaster Pengelolaan Sistem Manajemen K3LL', '', '2021-08-29 04:19:03', NULL),
(12, 'Klaster Pengelolaan Formalitas Kepabeanan', '', '2021-08-29 04:19:11', NULL),
(13, 'Klaster Pendamping <i> HR Business Partner </i>', '', '2021-08-29 04:19:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tuk`
--

CREATE TABLE `tuk` (
  `id` int(11) NOT NULL,
  `nama_tuk` varchar(255) NOT NULL,
  `alamat_tuk` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tuk`
--

INSERT INTO `tuk` (`id`, `nama_tuk`, `alamat_tuk`, `created_at`, `updated_at`) VALUES
(5, 'Lembaga Pelatihan Kerja Kompetensi Profesional Migas Indonesia (LPK KPMI)', '', '2021-08-29 04:06:36', NULL),
(6, 'Asosiasi Pemboran Migas & Panas Bumi Indonesia (APMI)', '', '2021-08-29 04:07:02', NULL),
(7, 'Ikatan Ahli Fasilitas Produksi Migas Indonesia (IAFMI)', '', '2021-08-29 04:07:11', NULL),
(8, 'Asosiasi Tenaga Ahli Konstruksi Indoensia (ATAKI)', '', '2021-08-29 04:07:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'adminsuper'),
(3, 'rizkitr21', '$2b$10$9MSRb/ty.u53fM6HCEFl6u0qzhhTmRPT9mCVsK3yYJuitPmaYFKtK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asesi`
--
ALTER TABLE `asesi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asesor`
--
ALTER TABLE `asesor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skema`
--
ALTER TABLE `skema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuk`
--
ALTER TABLE `tuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `asesi`
--
ALTER TABLE `asesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `asesor`
--
ALTER TABLE `asesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `skema`
--
ALTER TABLE `skema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tuk`
--
ALTER TABLE `tuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
