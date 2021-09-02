-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 04:32 AM
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
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `title`, `start_time`, `end_time`, `location`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Test 1 | Lorem Ipsum', '2021-09-09 13:36:00', '2021-09-09 00:00:00', ']Zoom Meeting / Google.meet', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</span></p>', '2021-08-30 18:23:11', '2021-09-01 13:56:28'),
(5, 'Virtual Mega Career Expo 2021 – Online Job Fair 6 Big Cities', '2021-08-30 02:00:00', '2021-09-03 10:00:00', 'Online 6 kota (Jabodetabek, Bandung, Medan, Surabaya, Makassar & Yogyakarta)', '<p>Be ready! We are coming soon this August 2021. Save the date and don’t miss the event. We will update soon for every content in this event. See you soon at 30th August – 3rd September 2021. <strong>Registrasi:&nbsp;</strong><a href=\"https://sambilanku.id/vmce/masuk\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 175, 242);\">https://sambilanku.id/vmce/masuk</a>. <strong>Information:&nbsp;</strong>0877 8430 1693</p>', '2021-09-01 14:00:58', '2021-09-01 14:03:01'),
(6, '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget fermentum velit.', '2021-05-26 01:00:00', '2021-04-06 10:00:00', 'Senayan, DKI Jakarta', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</span></p>', '2021-09-01 14:12:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `file`, `created_at`) VALUES
(11, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', '<h3>HISTORY, PURPOSE AND USAGE</h3><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><blockquote><em>“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</em></blockquote><p><br></p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p class=\"ql-align-justify\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p>', '2021-08-31T22-12-30.410Z-61M1b3f4-sL.jpg', '2021-08-30 16:56:57'),
(12, 'Menguak Arti \'Lorem Ipsum\' yang Mendadak Muncul di Koran', '<p><span style=\"color: rgb(51, 51, 51);\">Jakarta, CNN Indonesia -- Kalimat Lorem Ipsum mendadak jadi populer di dunia maya. Pasalnya kalimat ini muncul di baris atas halaman muka sebuah media cetak populer di Indonesia.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Menyadari kekeliruannya, koran ini pun meminta maaf karena lupa mengganti kalimat tersebut. Kejadian ini pun menjadi heboh di dunia maya lantaran kalimat ini merupakan template asli dan gratis dari desain grafis di internet.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Apa sih sebenarnya Lorem Ipsum ini?</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Mengutip berbagai sumber, lorem ipsum atau yang disebut lipsum merupakan teks standar yang ditempatkan untuk menempatkan elemen grafis atau penataan huruf (typesetting) dalam sebuah presentasi atau artikel.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Kalimat ini berasal dari bahasa Latin dan sudah digunakan sejak tahun 1500-an.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Lihat juga:Meski Tergagap, Masih Ada Asa di Bahasa Indonesia</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Lorem ipsum pertama kali dipakai saat seorang tukang cetak yang tak dikenal mengambil sebuah kumpulan teks. Dia mengacak teks tersebut menjadi sebuah buku contoh huruf.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Namun teks ini baru populer pada 1960 dengan diluncurkannya lembaran letraset yang menggunakan kalimat tersebut. Popularitasnya makin menanjak seiring munculnya software publishing di komputer dekstop.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Menurut seorang profesor bahasa latin dari Hampden-Sidney College di Virginia, Richard McClintock, kalimat ini disinyalir diambil dari dalam naskah karya sastra latin klasik yang ditulis oleh Cicero, de Finibus Bonorum et Malorum (sisi Ekstrem dari kebaikan dan kejahatan).</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Hanya saja dalam penggunaannya sekarang, teks lipsum memiliki sedikit perbedaan dengan yang ada dalam naskah asli CIcero.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Saat ini, teks yang digunakan adalah:</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Dalam bahasa Indonesia, teks tersebut diterjemahkan dengan:</span></p><p><span style=\"color: rgb(51, 51, 51);\">\"Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan, bukan semata-mata karena penderitaan itu sendiri, tetapi karena sesekali terjadi keadaan di mana susah-payah dan penderitaan dapat memberikan kepadanya kesenangan yang besar. Sebagai contoh sederhana, siapakah di antara kita yang pernah melakukan pekerjaan fisik yang berat, selain untuk memperoleh manfaat daripadanya? Tetapi siapakah yang berhak untuk mencari kesalahan pada diri orang yang memilih untuk menikmati kesenangan yang tidak menimbulkan akibat-akibat yang mengganggu, atau orang yang menghindari penderitaan yang tidak menghasilkan kesenangan?\"</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Kalimat dalam bahasa Inggris tersebut diterjemahkan oleh H. Rackham.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Mengapa dipakai jadi teks standar?</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Ada alasan mengapa teks ini dijadikan sebagai menjadi sebuah naskah standar layout desain. Pasalnya teks ini memiliki penyebaran huruf normal dan merata. Teks ini juga diibaratkan sebagai sebuah naskah bahasa Inggris yang bisa dibaca dan punya arti.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Teks Lorem Ipsum sendiri bukanlah sebuah teks acak tanpa makna dan fungsi.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Teks ini berfungsi untuk menghindari terganggunya fokus atau perhatian seseorang ketika sedang membuat layout desain. Dengan teks ini mereka diharapkan tak akan memperhatikan isi teks lipsum yang panjang. Teks&nbsp;lorem&nbsp;ipsum&nbsp;ini hanyalah dummy (contoh). (chs/chs)</span></p>', '2021-08-31T22-21-50.450Z-Lorem-Ipsum-alternatives-1.png', '2021-08-31 02:03:22'),
(13, 'Lorem ipsum', '<p>From Wikipedia, the free encyclopedia</p><p><br></p><p><em>\"Ipsum\" redirects here. For the car, see&nbsp;</em><a href=\"https://en.wikipedia.org/wiki/Toyota_Ipsum\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><em>Toyota Ipsum</em></a><em>.</em></p><p class=\"ql-align-center\"><a href=\"https://en.wikipedia.org/wiki/File:Lorem_ipsum_design.svg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173); background-color: rgb(255, 255, 255);\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Lorem_ipsum_design.svg/300px-Lorem_ipsum_design.svg.png\" alt=\"An example of the Lorem ipsum placeholder text on a green ans white webpage.\" height=\"337\" width=\"300\"></a></p><p class=\"ql-align-center\"><br></p><p>In&nbsp;<a href=\"https://en.wikipedia.org/wiki/Publishing\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">publishing</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Graphic_design\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">graphic design</a>,&nbsp;<strong><em>Lorem ipsum</em></strong>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Placeholder_text\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">placeholder text</a>&nbsp;commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.&nbsp;<em>Lorem ipsum</em>&nbsp;may be used as a placeholder before final&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copy_(written)\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">copy</a>&nbsp;is available. It is also used to temporarily replace text in a process called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Greeking\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">greeking</a>, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</p><p><em>Lorem ipsum</em>&nbsp;is typically a corrupted version of&nbsp;<em>\'</em><a href=\"https://en.wikipedia.org/wiki/De_finibus_bonorum_et_malorum\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><em>De finibus bonorum et malorum</em></a><em>\'</em>, a 1st century BC text by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Roman_Republic\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Roman</a>&nbsp;statesman and philosopher&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cicero\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Cicero</a>, with words altered, added, and removed to make it nonsensical and improper&nbsp;<a href=\"https://en.wikipedia.org/wiki/Latin\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Latin</a>.</p><p>Versions of the&nbsp;<em>Lorem ipsum</em>&nbsp;text have been used in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Typesetting\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">typesetting</a>&nbsp;at least since the 1960s, when it was popularized by advertisements for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Letraset\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Letraset</a>&nbsp;transfer sheets.<a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-Cibois-1\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><sup>[1]</sup></a>&nbsp;<em>Lorem ipsum</em>&nbsp;was introduced to the digital world in the mid-1980s, when&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aldus_Corporation\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Aldus</a>&nbsp;employed it in graphic and word-processing templates for its desktop publishing program&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_PageMaker\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">PageMaker</a>. Other popular&nbsp;<a href=\"https://en.wikipedia.org/wiki/Word_processor_(electronic_device)\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">word processors</a>, including&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pages_(word_processor)\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Pages</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Word\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Microsoft Word</a>, have since adopted&nbsp;<em>Lorem ipsum</em>,<a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-SDop-2\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><sup>[2]</sup></a>&nbsp;as have many&nbsp;<a href=\"https://en.wikipedia.org/wiki/LaTeX\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">LaTeX</a>&nbsp;packages,<a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-3\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><sup>[3]</sup></a><a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-4\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><sup>[4]</sup></a><a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-ms-212251-5\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><sup>[5]</sup></a>&nbsp;web content managers such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Joomla!\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">Joomla!</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/WordPress\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">WordPress</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/CSS\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\">CSS</a>&nbsp;libraries such as Semantic UI.<a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-6\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 69, 173);\"><sup>[6]</sup></a></p>', NULL, '2021-08-31 22:23:46');

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
(11, 'Test 1', 'Test 1', '2021-08-01 17:00:00', '2021-08-29 05:13:20', NULL),
(12, 'TEst 2', ' test', '2021-08-31 17:00:00', '2021-08-31 21:23:48', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `asesi`
--
ALTER TABLE `asesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `asesor`
--
ALTER TABLE `asesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
