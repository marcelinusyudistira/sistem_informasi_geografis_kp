-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 02:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig_kp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_parent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_child` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `icon_parent`, `icon_child`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan', 'bi-journal-album', 'bi-journal-text', '2023-01-13 07:32:36', '2023-01-13 07:32:36'),
(2, 'Kesehatan', 'bi-hospital', 'bi-h-square-fill', '2023-01-11 00:46:49', '2023-01-11 00:46:49'),
(3, 'Perdagangan', 'bi-shop-window', 'bi-bag-check-fill', '2023-01-11 00:47:25', '2023-01-11 00:47:25'),
(4, 'Pemerintahan', 'bi-person-lines-fill', 'bi-building', '2023-01-12 20:28:58', '2023-01-12 21:02:04'),
(5, 'Pariwisata', 'bi-bicycle', 'bi-brightness-alt-low-fill', '2023-01-20 04:49:44', '2023-01-20 04:49:44'),
(6, 'Kominfo', 'bi-broadcast-pin', 'bi-wifi', '2023-01-20 04:55:33', '2023-01-20 04:55:33'),
(7, 'Transportasi', 'bi-bus-front', 'bi-car-front', '2023-01-20 04:55:33', '2023-01-20 04:55:33'),
(8, 'Agriculture', 'bi-building', 'bi-building', '2023-01-20 04:55:33', '2023-01-20 00:40:03'),
(9, 'Lingkungan Hidup', 'bi-tree', 'bi-flower3', '2023-01-20 04:55:33', '2023-01-20 04:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `category_children`
--

CREATE TABLE `category_children` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `catchild_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_mark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_children`
--

INSERT INTO `category_children` (`id`, `parent_id`, `catchild_name`, `icon_mark`, `created_at`, `updated_at`) VALUES
(1, 1, 'SD', 'icon-markers/HFnB1uVz9AKQezo4XvZsLUQMgWXyyUR56FOFxLOZ.png', '2023-01-16 01:53:10', '2023-01-16 20:00:41'),
(2, 1, 'SMP', 'icon-markers/NOuVBK9mmlrcmXI5TOEqiz8GUU6wqsuIlDRUo95c.png', '2023-01-16 01:53:10', '2023-01-17 00:10:58'),
(3, 1, 'SMA', 'icon-markers/uUlY7hJRxrR8IOERB9bEiahkRoXdoMJKkOs5nxEt.png', '2023-01-16 01:53:10', '2023-01-16 23:56:53'),
(4, 1, 'SMK', 'icon-markers/Svh4b2vPQMlHhy7GSC1Sn7z1qVfRPX8GXe0P3XI0.png', '2023-01-16 01:53:10', '2023-01-23 21:23:10'),
(5, 1, 'Perguruan Tinggi', 'icon-markers/YkwTqqpTTxE4dFLWlrA8fwPX3hEhCHr1dZw06Gu1.png', '2023-01-16 01:53:10', '2023-01-23 21:21:48'),
(6, 2, 'RSUD', 'icon-markers/qpfWPbKq38n366xyKi4hg4AEFBoE5n8so7gY3iEb.png', '2023-01-11 00:48:05', '2023-01-16 23:56:30'),
(7, 2, 'Puskesmas', 'icon-markers/Xu9vNfsSCySQRtvMERj7uWzdnMwgTpxswlrTqRgw.png', '2023-01-11 00:48:05', '2023-01-16 23:56:40'),
(8, 2, 'Dokter', 'icon-markers/T67nv6Q1Nk9QzqSBDiFOxwLWw2sh75cTsj3ZHGGO.png', '2023-01-11 00:48:05', '2023-01-25 00:35:43'),
(9, 3, 'Pasar Desa', 'icon-markers/ykT9wEg5qRsWT7pSDmPvHxpXQ8iZ25NYYtWeK7c5.png', '2023-01-11 00:48:05', '2023-01-25 21:37:20'),
(10, 3, 'Pasar Negeri', 'icon-markers/rCrj4aF8UbN87X8zaifxlMqwSRPxgeRjSrBfS7Uj.png', '2023-01-11 00:48:05', '2023-01-25 21:35:26'),
(11, 3, 'Tomira', 'icon-markers/bEo9EwqghGVliwNckNO24iqR3684eXeCrLHXCdYK.png', '2023-01-11 00:48:05', '2023-01-25 21:35:41'),
(12, 3, 'Pusat Perbelanjaan', 'icon-markers/GGuEq8H0VDrlRb6kPr1hLRAdNDdRqXAWANzAxQED.png', '2023-01-11 00:48:05', '2023-01-25 21:35:54'),
(13, 4, 'Desa', 'icon-markers/MTg6m0i1u0kZm0pXDHbdZae8WGDR6g8hCn95HcSP.png', '2023-01-20 04:55:33', '2023-01-25 21:52:25'),
(14, 4, 'Kecamatan', 'icon-markers/2yG3lDe4tbqK6I1K6xJa6GZ9OxOt5Kj3bWdhmrf9.png', '2023-01-15 20:40:50', '2023-01-25 21:52:40'),
(15, 4, 'Dinas Daerah', 'icon-markers/ZqYs2Kx6RLftCgS8LvZw7FTPGaicnWBzyreflu30.png', '2023-01-20 04:55:33', '2023-01-25 21:52:52'),
(16, 4, 'Badan', 'icon-markers/K8k4oCIRz5imrnbfXoQVJtZRbCNcqK9j1HbEVCyf.png', '2023-01-20 04:55:33', '2023-01-25 21:53:04'),
(17, 4, 'Sekretariat', 'icon-markers/We1D1sZAhtmB03YMKALMdAO6iHHb0VnsD1ruMAPb.png', '2023-01-20 04:55:33', '2023-01-25 21:53:13'),
(18, 5, 'Wisata Alam', 'icon-markers/hmh31m390zHsyikKtwYzNqo4yXepxCy7aSA7XKFc.png', '2023-01-20 04:55:33', '2023-01-26 19:01:20'),
(19, 5, 'Wisata Buatan', 'icon-markers/QyhEzZXdGjPBPMZJ6qsRFI7IeCHuUdbPUburqt4Y.png', '2023-01-20 04:55:33', '2023-01-26 19:01:35'),
(20, 5, 'Wisata Budaya', 'icon-markers/Rgi8JrPdQ7gaC45jbAYonkPtuXy2dVptyWqwyYRl.png', '2023-01-20 04:55:33', '2023-01-26 19:01:52'),
(21, 5, 'Kuliner', 'icon-markers/2voGhgHYkh4YKLiY0rcRjVD1s1LOgRdlQBb10yzE.png', '2023-01-20 04:55:33', '2023-01-26 19:02:12'),
(22, 5, 'Desa Wisata', 'icon-markers/KtTT3fOUZJvPZ5DfbnlH9pCzcUU7IM5bvHScRdIQ.png', '2023-01-20 04:55:33', '2023-01-26 19:02:26'),
(23, 6, 'Wifi Public', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(24, 6, 'Menara Telkom', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(25, 6, 'CCTV Online', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(26, 6, 'KIM', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(27, 9, 'Bank Sampah', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(28, 9, 'TPS', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(29, 9, 'TPA', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(30, 7, 'Stasiun/Bandara', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(31, 7, 'Terminal', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(32, 7, 'APILL', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(33, 7, 'LPJU', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(34, 8, 'Kios Saprodi', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(35, 8, 'Agrowisata', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50'),
(36, 8, 'Pelaku Usaha', NULL, '2023-01-15 20:40:50', '2023-01-15 20:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icon_bootstrap`
--

CREATE TABLE `icon_bootstrap` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icon_bootstrap`
--

INSERT INTO `icon_bootstrap` (`id`, `nama`, `code`) VALUES
(1, 'Building', 'bi-building'),
(2, 'Sun', 'bi-brightness-alt-high-fill'),
(3, 'Tree', 'bi-tree'),
(4, 'Sign', 'bi-signpost-split'),
(5, 'Bank', 'bi-bank'),
(6, 'Transportation', 'bi-bus-front'),
(7, 'Build-2', 'bi-buildings-fill'),
(8, 'Clipboard', 'bi-clipboard-data-fill'),
(9, 'Contact', 'bi-person-lines-fill'),
(10, 'Wifi', 'bi-rss-fill');

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `map_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_jambuka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_pimpinan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pend_akredit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pend_kurikulum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pend_waktu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kes_rawatinap` tinyint(1) DEFAULT NULL,
  `kes_igd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kes_harilayanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kes_pasien` int(11) DEFAULT NULL,
  `perd_luas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perd_statustanah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perd_haripasaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perd_komoditas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perd_jmlpedagang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perd_jmlkios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sosmed_fb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sosmed_ig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sosmed_twit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_latitude` double NOT NULL,
  `map_longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `child_id`, `map_title`, `map_address`, `map_desc`, `map_url`, `map_postcode`, `map_telp`, `map_email`, `map_img`, `map_jambuka`, `map_pimpinan`, `pend_akredit`, `pend_kurikulum`, `pend_waktu`, `kes_rawatinap`, `kes_igd`, `kes_harilayanan`, `kes_pasien`, `perd_luas`, `perd_statustanah`, `perd_haripasaran`, `perd_komoditas`, `perd_jmlpedagang`, `perd_jmlkios`, `sosmed_fb`, `sosmed_ig`, `sosmed_twit`, `map_latitude`, `map_longitude`, `created_at`, `updated_at`) VALUES
(1, 1, 'SD Negeri Jambon', 'Jambon, Donomulyo, Kec. Nanggulan, Kab. Kulon Progo', NULL, 'https://data.sekolah-kita.net/sekolah/SD%20NEGERI%20JAMBON_18311', NULL, NULL, NULL, NULL, NULL, 'Partini', 'B', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8152384494776, 110.18494712154, '2023-01-15 19:03:28', '2023-01-18 00:44:50'),
(2, 1, 'SD Negeri Sendangsari', 'Mrunggi, Sendangsari, Kec. Pengasih, Kab. Kulon Progo', NULL, 'https://data.sekolah-kita.net/sekolah/SD%20NEGERI%20SENDANGSARI_18208', NULL, NULL, NULL, NULL, NULL, 'Nurmahani', 'A', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8283423073194, 110.15387159412, '2023-01-15 19:03:28', '2023-01-15 19:03:28'),
(3, 1, 'SD Negeri Graulan', 'Tegallembut, Giripeni, Kec. Wates, Kab. Kulon Progo', NULL, 'https://data.sekolah-kita.net/sekolah/SD%20NEGERI%20GRAULAN_255894', NULL, NULL, NULL, NULL, NULL, 'Sugeng Purwojiono', 'B', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8152384494776, 110.18494712154, '2023-01-15 19:03:28', '2023-01-15 19:03:28'),
(4, 2, 'SMP Negeri 3 Wates', 'Jln. Purworejo KM 7, Sogan, Kec. Wates, Kab. Kulon Progo', NULL, 'https://data.sekolah-kita.net/sekolah/SMP%20NEGERI%201%20WATES_255930', NULL, NULL, NULL, NULL, NULL, 'Agus Sutik Dwiartanta', 'A', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8893948370081, 110.11231128029, '2023-01-15 19:03:28', '2023-01-15 19:03:28'),
(5, 2, 'SMP Muhammadiyah 1 Wates', 'Kemiri, Margosari, Kec. Pengasih, Kab. Kulon Progo, Di Yogyakarta', NULL, 'https://data.sekolah-kita.net/sekolah/SMP%20MUHAMMADIYAH%201%20WATES_18216', NULL, NULL, NULL, NULL, NULL, 'Agus Wiratna', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8572197629635, 110.16461026441, '2023-01-15 19:03:29', '2023-01-15 19:03:29'),
(6, 6, 'RSUD Wates', 'Jalan Tentara Pelajar Km. 1 No. 5, Beji, Kec. Wates, Kabupaten Kulon Progo', NULL, 'https://rsud.kulonprogokab.go.id', '55651', '0274-773169', 'rsud@kulonprogokab.go.id', 'image/1RQ8PdlnrycKCiM6nD13NeCI6WBHshuTMHJnkhbK.jpg', '24 Jam', NULL, 'null', 'null', 'null', 1, '24 Jam', 'Hari Senin - Sabtu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8585384866508, 110.14808333445, '2023-01-15 19:03:29', '2023-01-25 00:27:10'),
(7, 6, 'RSUD Nyi Ageng Serang', 'Jl. Sentolo Nanggulan, Bantar Kulon, Banguncipto, Kec. Sentolo, Kabupaten Kulon Progo', NULL, 'http://rsnas.kulonprogokab.go.id', '55651', '0274-7880912', 'rsnas@kulonprogokab.go.id', 'image/DWnhOtMoLg3yEFqsgxKvncOxlvZmdPjXjL2Ltk4G.jpg', '24 Jam', 'dr. SANDRAWATI SAID, M.Kes', 'null', 'null', 'null', 1, '24 Jam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8200675732276, 110.22589541837, '2023-01-15 19:03:29', '2023-01-25 00:27:29'),
(8, 7, 'Puskesmas Girimulyo I', 'Nglengkong, Giripurwo, Kec. Girimulyo, Kabupaten Kulon Progo', NULL, NULL, '55674', '082324858628', NULL, 'image/d6XK6s1P7y0ly0ywhnQ2hYTQuxr3PIwa4sBWp0wm.jpg', '08:00 WIB', NULL, 'null', 'null', 'null', NULL, NULL, 'Hari Senin - Sabtu', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7700308246608, 110.18427111837, '2023-01-15 19:03:29', '2023-01-24 20:01:30'),
(9, 7, 'Puskesmas Lendah I', 'Pereng, Bumirejo, Kec. Lendah, Kabupaten Kulon Progo', NULL, NULL, '55663', '08112642500', 'puskesmas1lendah@gmail.com', 'image/HF3xh3oVrRitiWqDTPTUROOe4KSFcNL1BrG0U5Ta.jpg', '08:00 WIB', NULL, 'null', 'null', 'null', NULL, NULL, 'Hari Senin - Sabtu', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9018455839936, 110.20307975701, '2023-01-15 19:03:29', '2023-01-24 20:00:17'),
(10, 3, 'SMA Negeri 1 Girimulyo', 'Grigak, Giripurwo, Kec. Girimulyo, Kab. Kulon Progo, Yogyakarta', NULL, 'https://data.sekolah-kita.net/sekolah/SMA%20NEGERI%201%20GIRIMULYO_18291', NULL, NULL, 'smansagm@yahoo.co.id', NULL, NULL, 'R. Aris Suwasana. S.pd', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7731612528008, 110.19194288724, '2023-01-18 00:29:06', '2023-01-18 00:47:41'),
(11, 1, 'SD Negeri 2 Giripurwo', 'Nglengkong, Giripurwo, Kec. Girimulyo, Kab. Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugito', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.771692827004303, 110.18187693548865, '2023-01-20 00:47:06', '2023-01-20 00:47:06'),
(12, 1, 'SD Negeri Clapar', 'Clapar 2, Hargowilis, Kec. Kokap, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joko Sumaryanto', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.798504476624337, 110.12588319714625, '2023-01-23 18:31:37', '2023-01-23 18:31:37'),
(13, 1, 'SD Negeri Jatisarono', 'Jati Ngarang Lor, Jati Sarono, Kec. Nanggulan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mistinah', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.760862338967678, 110.20996308345411, '2023-01-23 18:40:26', '2023-01-23 18:40:26'),
(14, 1, 'SD Negeri Sremo', 'Sremo Tengah, Hargowilis, Kec. Kokap, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Murtini', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.832261021710955, 110.11394097616669, '2023-01-23 18:41:51', '2023-01-23 18:41:51'),
(15, 1, 'SD Negeri Kaliagung', 'Jl. Pengasih, Banyunganti Kidul, Kaliagung, Kec. Sentolo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8305517862176, 110.2037110859, '2023-01-23 18:43:07', '2023-01-23 18:44:57'),
(16, 1, 'SD Negeri Hargowilis', 'Tegiri 1, Hargowilis, Kec. Kokap, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jemakir', 'B', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.817908920330768, 110.10528878679288, '2023-01-23 18:44:03', '2023-01-23 18:44:03'),
(17, 1, 'SD Negeri Tawangsari', 'Kosok Kulon, Tawangsari, Kec. Pengasih, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sri Astuti Suharwati', 'A', 'Kurikulum 2013', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.883492138604613, 110.11469806854888, '2023-01-23 18:48:33', '2023-01-23 18:48:33'),
(18, 1, 'SD Negeri Cerme', 'Dusun V, Cerme, Kec. Panjatan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suminah', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.892600074912527, 110.17531564432548, '2023-01-23 18:49:35', '2023-01-23 18:49:35'),
(19, 1, 'SD Negeri Patragaten', 'Ngipik, Bumirejo, Kec. Lendah, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wiji', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.915662666582712, 110.19802709981498, '2023-01-23 18:50:31', '2023-01-23 18:50:31'),
(20, 1, 'SD Negeri Bojong Baru', 'Dukuh VIII, Bojong, Kec. Panjatan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sri Rahmawati Widayat', 'B', 'KTSP', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9128527985128, 110.14490344504, '2023-01-23 18:51:31', '2023-01-23 18:54:52'),
(21, 1, 'SD Negeri Beji', 'Mutihan, Wates, Kec. Wates, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Parman', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.862470356892436, 110.16175644961791, '2023-01-23 18:52:23', '2023-01-23 18:52:23'),
(22, 1, 'SD Negeri Kalikutuk', 'Taruban Kulon, Tuksono, Kec. Sentolo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karsiyem', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.871926804412597, 110.24127389654336, '2023-01-23 18:55:41', '2023-01-23 18:55:41'),
(23, 1, 'SD Muhammadiyah Bantar', 'Bantar Kulon, Banguncipto, Kec. Sentolo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tatik Nurhayati', 'A', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.819185525367526, 110.2294305637381, '2023-01-23 18:56:32', '2023-01-23 18:56:32'),
(24, 1, 'SD Muhammadiyah Kedunggong', 'Jl. KH Ahmad Dahlan, Dipan, Wates, Kec. Wates, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mulyono', 'B', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.867402075530516, 110.14988250636513, '2023-01-23 18:57:38', '2023-01-23 18:57:38'),
(25, 1, 'SD Negeri Pepen', 'Kedung Pring, Giri Peni, Kec. Wates, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Surahmi', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.876727603579704, 110.14898620576808, '2023-01-23 18:58:21', '2023-01-23 18:58:21'),
(26, 1, 'SD Kanisius Bonoharjo', 'Demangrejo, Kec. Sentolo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E. Sulistya Asmara', 'B', 'KTSP', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.877721198824465, 110.20686596589015, '2023-01-23 18:59:17', '2023-01-23 18:59:17'),
(27, 1, 'SD Negeri Krebet', 'Krebet, Gotakan, Kec. Panjatan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maria Magdalena Sulami', 'B', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.893954109711495, 110.16002322233545, '2023-01-23 19:00:13', '2023-01-23 19:00:13'),
(28, 1, 'SD Negeri 1 Ngulakan', 'Cekelan, Karangsari, Kec. Pengasih, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maryana', 'A', 'Kurikulum 2013', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.864898068432138, 110.13808942470412, '2023-01-23 19:00:57', '2023-01-23 19:00:57'),
(29, 2, 'SMP Negeri 2 Kalibawang', 'Jl. Nanggulan Mendut, Ngujon, Banjarharjo, Kec. Kalibawang, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sulis Setyawati', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.688247693403216, 110.2566882699026, '2023-01-23 20:19:53', '2023-01-23 20:19:53'),
(30, 2, 'SMP Muhammadiyah 1 Kalibawang', 'Sayangan, Banjararum, Kec. Kalibawang, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edi Sutarja', 'B', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.717147594737, 110.22576411811, '2023-01-23 20:20:56', '2023-01-23 20:24:55'),
(31, 2, 'SMP Muhammadiyah 2 Samigaluh', 'Ngaran III, Banjarsari, Kec. Samigaluh, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ari Widayat', 'B', 'KTSP', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7173805571392, 110.17901172702, '2023-01-23 20:22:06', '2023-01-23 20:24:45'),
(32, 2, 'SMP Taman Siswa Nanggulan', 'Nanggulan, Jati Sarono, Kec. Nanggulan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sri Winarsih', 'B', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.76779798176, 110.21310607141, '2023-01-23 20:23:12', '2023-01-23 20:24:34'),
(33, 2, 'SMP Negeri 3 Pengasih', 'Dukuh, Sidomulyo, Kec. Pengasih, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sri Handayani', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.81143579852634, 110.16630566981796, '2023-01-23 20:24:20', '2023-01-23 20:24:20'),
(34, 2, 'SMP Negeri 3 Sentolo', 'Banyunganti Lor, Kaliagung, Kec. Sentolo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sudaryanto', 'A', 'Kurikulum 2013', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8273129768108, 110.19930635542, '2023-01-23 20:26:07', '2023-01-23 20:27:30'),
(35, 2, 'SMP Negeri 4 Sentolo', 'Karang, Tuksono, Kec. Sentolo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Subiyanto', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.864242816518397, 110.2460408150209, '2023-01-23 20:27:15', '2023-01-23 20:27:15'),
(36, 2, 'SMP Muhhamadiyah 1 Kokap', 'Anjir, Hargorejo, Kec. Kokap, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rr. Siti Darojah', 'null', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8421604335532, 110.10125195677, '2023-01-23 20:28:35', '2023-01-23 20:29:55'),
(37, 2, 'SMP PGRI Panjatan', 'Gotakan, Panjatan, Dusun VII, Cerme, Kec. Panjatan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hj. Tri Susilowati', 'B', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.898380465789522, 110.16677603010244, '2023-01-23 20:29:39', '2023-01-23 20:29:39'),
(38, 2, 'SMP Muhammadiyah Panjatan', 'Garongan, Kec. Panjatan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yakub Dwi Prihandoko, S.Pd.', 'B', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9241369726414925, 110.13063925309605, '2023-01-23 20:31:43', '2023-01-23 20:31:43'),
(39, 2, 'SMP Muhammadiyah Al Manar', 'Jl. Daendels Pantai Sel., Klampok, Brosot, Kec. Galur, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ismail Taufiq', 'B', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9385665287851985, 110.23509054981885, '2023-01-23 20:32:45', '2023-01-23 20:32:45'),
(40, 2, 'SMP Negeri 1 Pengasih', 'Jl. Projomartani No.1, Pengasih, Kec. Pengasih, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokhamad Sohin', 'B', 'Kurikulum 2013', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.843587338553513, 110.16828221602387, '2023-01-23 20:33:41', '2023-01-23 20:33:41'),
(41, 2, 'SMP Negeri 2 Pengasih', 'Karangasem, Kedungsari, Kec. Pengasih, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Margiyanto', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.871577449270086, 110.19589596799055, '2023-01-23 20:34:35', '2023-01-23 20:34:35'),
(42, 2, 'SMP Negeri 2 Nanggulan', 'Jl. Gajah Mada No.54, Sotan, Wijimulyo, Kec. Nanggulan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aprilia Dwi Isnaeni', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.782857147747526, 110.2174810212799, '2023-01-23 20:35:32', '2023-01-23 20:35:32'),
(43, 2, 'SMP Negeri 2 Lendah', 'Temben, Ngentakrejo, Kec. Lendah, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gati Sujatmi', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.895128564623277, 110.26833988305233, '2023-01-23 20:36:27', '2023-01-23 20:36:27'),
(44, 3, 'SMA Negeri 1 Kalibawang', 'Jl. Dekso-Samigaluh No.KM 1, Kriyan, Banjararum, Kec. Kalibawang, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Totok Setyadi', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7127961306671, 110.21560713180278, '2023-01-23 20:59:42', '2023-01-23 20:59:42'),
(45, 3, 'SMA Negeri 1 Sentolo', 'Ploso, Banguncipto, Kec. Sentolo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugiyanto', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.815910112562446, 110.22696608743277, '2023-01-23 21:00:49', '2023-01-23 21:00:49'),
(46, 3, 'SMA Sanjaya XIV Nanggulan', 'Karang, Jatisarono, Bejanten, Jati Sarono, Kec. Nanggulan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fx. Sumarjo', 'B', 'Kurikulum 2013', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7572583699091, 110.21091331825, '2023-01-23 21:01:55', '2023-01-24 00:37:59'),
(47, 3, 'SMA Negeri 1 Temon', 'Kadilangu Lor, Kebonrejo, Kec. Temon, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Agus Nur Khafid', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8795747761689, 110.07279340194, '2023-01-23 21:02:47', '2023-01-24 00:44:23'),
(48, 3, 'SMA Negeri 2 Wates', 'Sanggrahan Kidul, Bendungan, Kec. Wates, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dwi Martini', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8941089762108, 110.14673709876, '2023-01-23 21:03:45', '2023-01-24 00:42:25'),
(49, 3, 'SMA Negeri 1 Lendah', 'Botokan, Jatirejo, Kec. Lendah, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Didik Asmiarto', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.929684260759276, 110.23199034119213, '2023-01-23 21:04:49', '2023-01-23 21:04:49'),
(50, 3, 'SMA Negeri 1 Samigaluh', 'Nguntuk Untuk, Ngargosari, Kec. Samigaluh, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nuryadi', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.661617243055496, 110.161327278727, '2023-01-23 21:05:34', '2023-01-23 21:05:34'),
(51, 3, 'SMA BOPKRI Wates', 'Jl. Bhayangkara No.2, Terbah, Wates, Kec. Wates, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dra. Muji Daryanti', 'C', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.857108170162204, 110.1588623283394, '2023-01-23 21:06:50', '2023-01-23 21:06:50'),
(52, 3, 'SMA Negeri 1 Galur', 'Barahan, Tirtorahayu, Kec. Galur, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anang Sutarta', 'A', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.934389805098072, 110.20173029657634, '2023-01-23 21:07:42', '2023-01-23 21:07:42'),
(53, 4, 'SMK Negeri 1 Girimulya', 'Sokomoyo, Jatimulyo, Kec. Girimulyo, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Waryanto', 'null', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.751105713935834, 110.12474315139093, '2023-01-24 00:26:59', '2023-01-24 00:26:59'),
(54, 4, 'SMK Negeri 1 Nanggulan', 'Jl. Gajah Mada, Sotan, Wijimulyo, Kec. Nanggulan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sukirna', 'null', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.783279501473452, 110.21821403720952, '2023-01-24 00:28:03', '2023-01-24 00:28:03'),
(55, 4, 'SMK Muhammadiyah 1 Temon', 'Temon, Kadilangu Lor, Temon Kulon, Kec. Temon, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Zwahir', 'null', 'Kurikulum 2013', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8864790870396, 110.07601108005, '2023-01-24 00:28:57', '2023-01-24 00:38:27'),
(56, 4, 'SMK YPKK 1 Kulon Progo', 'Berenan, Bendungan, Kec. Wates, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karmiran', 'null', 'KTSP', 'Pagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.896579375040539, 110.14536103788194, '2023-01-24 00:29:48', '2023-01-24 00:29:48'),
(57, 4, 'SMK Muhammadiyah 1 Wates', 'Gadingan, Wates, Kec. Wates, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sriningsih', 'null', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.864977317573683, 110.15967704879148, '2023-01-24 00:31:13', '2023-01-24 00:31:13'),
(58, 4, 'SMK Negeri 2 Pengasih', 'Jl. KRT Kertodiningrat, Gn. Gondang, Margosari, Kec. Pengasih, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sumarno', 'null', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.858385894806462, 110.17472108776336, '2023-01-24 00:31:56', '2023-01-24 00:31:56'),
(59, 4, 'SMK Muhammadiyah 1 Lendah', 'Jl. Kutan II, Kutan, Jatirejo, Kec. Lendah, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Daliyem', 'null', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9353324723998275, 110.23757248101592, '2023-01-24 00:32:50', '2023-01-24 00:32:50'),
(60, 4, 'SMK Negeri 1 Panjatan', 'Jl. Cerme, Dusun X, Cerme, Kec. Panjatan, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suprih', 'null', 'Kurikulum 2013', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.902681906367485, 110.1772360730145, '2023-01-24 00:33:42', '2023-01-24 00:33:42'),
(61, 4, 'SMK Muhammadiyah Galur', 'Bantengan Kidul, Brosot, Kec. Galur, Kabupaten Kulon Progo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tukiman', 'null', 'KTSP', '5 Hari Setiap Minggu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.943000005099276, 110.2321111975711, '2023-01-24 00:34:26', '2023-01-24 00:34:26'),
(62, 5, 'Universitas Ahmad Dahlan (UAD) Wates', 'Jalan KH Ahmad Dahlan No.11, Area Sawah, Wates, Kabupaten Kulon Progo', NULL, NULL, '55651', NULL, NULL, 'image/IIsiaAOSM9DvDTbt9nEzZzeHoCF8KABAvletTqCz.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8665069446714, 110.149745427, '2023-01-24 00:35:31', '2023-02-07 18:26:19'),
(63, 5, 'IKIP PGRI Wates', 'Jl. KRT Kertodiningrat No.5 Margosari, Pengasih, Kulon Progo', NULL, NULL, '55652', '0274-773283', NULL, 'image/QNyBwijIVuFviGkxAny6YDEfnN6akgGpMNzoZOIz.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8564292096804, 110.17472270607, '2023-01-24 00:36:24', '2023-02-07 18:26:41'),
(64, 5, 'Universitas Negeri Yogyakarta Wates', 'Jl. Bhayangkara No. 7 Wates, Kulon Progo', NULL, NULL, '55651', '0274-773906', 'wates@uny.ac.id', 'image/jLlBw55b8pKHDteMR0A3o8JNFRkjHAwRY0Zwfk7A.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8543312224393, 110.16396617197, '2023-01-24 00:37:15', '2023-02-07 18:27:07'),
(65, 5, 'Universitas Janabadra Kampus III Wates', 'Jl. Khudori No. 28, Kec. Wates, Kab. Kulon Progo', NULL, NULL, '55651', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8629682470121, 110.17188311283, '2023-01-24 00:43:53', '2023-02-07 18:41:09'),
(66, 7, 'Puskesmas Galur I', 'Dusun Brosot III, Brosot, Galur, Kulon Progo', NULL, NULL, NULL, '0274-2890015', NULL, 'image/CLvVUPDOgfJKdj03vU2kc3QpuWXK8IDdLpVCDtcD.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9405722041094, 110.23557407495, '2023-01-24 18:31:56', '2023-01-24 18:41:34'),
(67, 7, 'UPTD Puskesmas WATES', 'Jl. KH. Wahid Hasyim, Kularan, Triharjo, Wates, Kulon Progo', NULL, NULL, NULL, '0274-774436', 'puskesmaswatesmedia@.gmail.com', 'image/Yu5Or3mQel4NaMNQJ9VDgEe2vaK2XFtXQif5HQqe.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.892461356082667, 110.13403002821555, '2023-01-24 18:38:59', '2023-01-24 18:38:59'),
(68, 7, 'Puskesmas Temon I', 'Jl. Wates-Purworejo Km.10.6, Temon, Kulon Progo', NULL, NULL, NULL, '0274-7117517', 'puskesmas.temon1@gmail.com', 'image/uv7c9MYpBlA1gWfEx2bFvTgx3bmAY5JJD4vRn7Nq.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.886390181100471, 110.07421442111571, '2023-01-24 18:40:36', '2023-01-24 18:40:36'),
(69, 7, 'Puskesmas Kokap I', 'Ngaseman, Hargorejo, Kokap, Kulon Progo', NULL, NULL, NULL, '082133414040', NULL, 'image/R8HeyxqmWOY3kTCpGJr29ikDZh0Mr5sp947GlINz.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.840217587845499, 110.1015224582496, '2023-01-24 18:43:04', '2023-01-24 18:43:04'),
(70, 7, 'Puskesmas Pengasih II', 'Dusun Kembang, Margosari, Pengasih, Kulon Progo', NULL, NULL, NULL, '081226559379', 'puskesmaspengasih2@gmail.com', 'image/K0IpW7x57Bs50osteg7RYyvy7QDo3EXevRMOgFyu.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.850391693379332, 110.17510295569645, '2023-01-24 18:44:11', '2023-01-24 18:44:11'),
(71, 7, 'Puskesmas Sentolo II', 'Jl. Wates-Yogya Km. 10, Salamrejo, Sentolo, Kulon Progo', NULL, NULL, NULL, '08112952123', NULL, 'image/USWX5bOF50aef17FVv7erlsQLV6XBD5DAnLXvWE3.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.848501288368409, 110.21788239295323, '2023-01-24 18:45:33', '2023-01-24 18:45:33'),
(72, 7, 'Puskesmas Nanggulan', 'Dusun Temanggal, Wijimulyo, Nanggulan, Kulon Progo', NULL, NULL, NULL, '0274-7490958', NULL, 'image/ASdjTcLRL88FsdH0yrhqDv8iSOMmdhP73PNinJwT.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.774649945137063, 110.20973546355629, '2023-01-24 18:46:25', '2023-01-24 18:46:25'),
(73, 7, 'Puskesmas Kokap II', 'Segajih, Hargotirto, Kokap, Kulon Progo', NULL, NULL, NULL, '08112641555', 'kokapdua@gmail.com', 'image/SmZ26UsrwdbcRxCADgWDXE39qbFXylZ5rTsGz7K3.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7986654493778, 110.1149091053, '2023-01-24 18:47:27', '2023-01-24 21:16:36'),
(74, 7, 'Puskesmas Samigaluh I', 'Jl. Dekso-Plono, Clumprit Gerbosari, Samigaluh, Kulon Progo', NULL, NULL, NULL, '08112645091', 'puskesmas.samigaluh1@gmail.com', 'image/z1jd3DJmTJ25vJDQ0EljYM2KyO62BPEtTBym8dv1.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.671580451344227, 110.1667404114174, '2023-01-24 18:48:24', '2023-01-24 18:48:24'),
(75, 8, 'Dokter Bambang Haryatno. Mkes', 'Bendungan Lor, Sanggrahan Kidul, Bendungan, Kulon Progo', NULL, NULL, '55651', '0274-774437', NULL, NULL, '07.00 WIB dan 16.00 WIB, Minggu Tutup', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.893802420201196, 110.14456620746805, '2023-01-24 18:49:59', '2023-01-24 18:49:59'),
(76, 8, 'dr. Dhian Anggorowati', 'Jl. Pahlawan, Kedungdowo, Wates, Kabupaten Kulon Progo', NULL, NULL, '55651', NULL, NULL, NULL, '07.00 WIB dan 16.00 WIB, Minggu Tutup', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.865986122151123, 110.15600301595202, '2023-01-24 18:50:45', '2023-01-24 18:50:45'),
(77, 8, 'dr. Anton Darmawan, S. S', 'Jl. Asem Gede No.26, Terbah, Pengasih, Pengasih, Kulon Progo', NULL, NULL, '55651', '081578586705', NULL, NULL, 'Senin-Jumat 24 Jam', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.852775175035098, 110.16268659768153, '2023-01-24 18:52:09', '2023-01-24 18:52:09'),
(78, 8, 'Dokter Sri Budi Utami', 'Pengasih, Kabupaten Kulon Progo', NULL, NULL, '55652', NULL, NULL, NULL, '08.00 WIB dan 17.00 WIB, Minggu Tutup', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8495583349522065, 110.16793123326146, '2023-01-24 18:52:54', '2023-01-24 18:52:54'),
(79, 11, 'Tomira Sentolo', 'Jl. Ringroad Barat No.51, Kali Bondol, Sentolo, Kulon Progo', NULL, NULL, '55664', NULL, 'kontak@indomaret.co.id', 'image/xRIds5sfAhjfXB77hGvZ4FcuG5illjREVOJwzLls.jpg', '07.00 - 22.00 WIB', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8268219355968345, 110.22396338564943, '2023-01-25 20:59:48', '2023-01-25 20:59:48'),
(80, 11, 'Tomira Nanggulan', 'Kenteng, Kembang, Nanggulan, Kulon Progo', NULL, NULL, '55671', NULL, NULL, 'image/sG0ZUe3Gv346WrZ1MbDxf4V9RnasXdBaTHz8YznF.jpg', '07.00 - 22.00 WIB', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7538535438595275, 110.2119099549815, '2023-01-25 21:00:53', '2023-01-25 21:00:53'),
(81, 11, 'Tomira Jatikilon', 'Kaliwangan, Temon, Kabupaten Kulon Progo', NULL, NULL, '55654', NULL, NULL, 'image/lFKuJcB9FtivgWMdMm3oXs0rZoZLb2yHTJ5oVxfe.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8870023914306575, 110.07678351171091, '2023-01-25 21:01:56', '2023-01-25 21:01:56'),
(82, 11, 'Tomira Polodadi', 'Jl. Kyai Ronggo, Jombasari, Tawangsari, Pengasih, Kulon Progo', NULL, NULL, '55652', NULL, NULL, 'image/weULkmyJbVMU0IOnjHagm8kUuqDdrs81E3Xhj3d1.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.883727669704818, 110.10949640529053, '2023-01-25 21:03:00', '2023-01-25 21:03:00'),
(83, 11, 'Tomira Bendungan', 'Jl. KH. Wahid Hasim No.19, Bendungan, Wates, Kulon Progo', NULL, NULL, '55651', NULL, NULL, 'image/02iDnT17iaE43QDH3Pc54GNRlRgvaaSvtGlYcUhe.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.89366414712044, 110.14240473056853, '2023-01-25 21:04:29', '2023-01-25 21:04:29'),
(84, 11, 'Tomira Diponegoro', 'Jl. Jogoyudan No.15, Driyan, Wates, Kulon Progo', NULL, NULL, '55651', '0274-773856', NULL, 'image/59OIYMmOFFKUlVRNLv6TlQoKbeFx7OVEhXWTVsHO.jpg', '07.00 - 23.00 WIB', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.859383828480092, 110.16026194296946, '2023-01-25 21:05:46', '2023-01-25 21:05:46'),
(85, 10, 'Pasar Nanggulan', 'Soronangolin, Jati Sarono, Nanggulan, Kulon Progo', NULL, NULL, '55671', NULL, NULL, 'image/NfceM5O0JzTu4K2BmoANcBO6N0Ryp0EcYxOsUtry.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, '2660 m2', 'Negeri', 'Pahing', 'Campuran', '239', '11 Unit', NULL, NULL, NULL, -7.768279766648268, 110.21023174442942, '2023-01-25 21:12:42', '2023-01-25 21:12:42'),
(86, 10, 'Pasar Menguri', 'Nganti, Hargotirto, Kokap, Kulon Progo', NULL, NULL, '55653', NULL, NULL, 'image/CwapZmvyqPbu2rXPiOCvS7nieP0xitp6CqKLZCJu.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, '800 m2', 'Negeri', 'Pon dan Legi', 'Campuran', '70', NULL, NULL, NULL, NULL, -7.813193683071471, 110.10144899289445, '2023-01-25 21:14:08', '2023-01-25 21:14:08'),
(87, 10, 'Pasar Hewan Pengasih', 'Pengasih, Kabupaten Kulon Progo', NULL, NULL, '55652', NULL, NULL, 'image/1Pk9W2mXOKk4X6LYJ6VSRmeeXwxwfaMq2NHyvbql.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, '4260 m2', 'Negeri', 'Legi', 'Hewan Ternak', '93', '23 Unit', NULL, NULL, NULL, -7.838498155645645, 110.17011588736106, '2023-01-25 21:15:24', '2023-01-25 21:15:24'),
(88, 10, 'Pasar Wates', 'Jalan Diponegoro, Wates, Kabupaten Kulonprogo', NULL, NULL, '55651', NULL, NULL, 'image/cmUowNdQgVR2T6Ve3SKzD7y3Tf1NfkLvHB6Nj4AV.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, '8600 m2', 'Negeri', 'Harian', 'Campuran', '383', '185 Unit', NULL, NULL, NULL, -7.861591137813499, 110.15848167579324, '2023-01-25 21:17:02', '2023-01-25 21:17:02'),
(89, 10, 'Pasar Nganggrung', 'Jl. Sentolo - Brosot, Belik, Demangrejo, Sentolo, Kulon Progo', NULL, NULL, '55664', NULL, NULL, 'image/3QAOLYLLZKtVWII43i3nkVF5304kDPZ7ui0mIKMF.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, '1000 m2', 'Negeri', 'Pon dan Kliwon', 'Campuran', '122', NULL, NULL, NULL, NULL, -7.887038453813334, 110.20517132656316, '2023-01-25 21:18:20', '2023-01-25 21:18:20'),
(90, 10, 'Pasar Kranggan', 'Dukuh Kilung, Kranggan, Galur, Kulon Progo', NULL, NULL, '55661', NULL, NULL, 'image/rS8DpA0NoQJOEPSEkPTo74lsm1Vp76S1wYaMmnhw.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, '6300 m2', 'Negeri', 'Kliwon dan Pahing', 'Campuran', '665', '38 Unit', NULL, NULL, NULL, -7.949248096714782, 110.22138240730146, '2023-01-25 21:19:45', '2023-01-25 21:19:45'),
(91, 9, 'Pasar Samigaluh', 'Canden, Ngargosari, Samigaluh, Kulon Progo', NULL, NULL, '55673', NULL, NULL, 'image/xOECcuHMJtBEpgNgQzV9AYgoNu5n9daQiMA16gQ0.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.669124574948733, 110.1652731439701, '2023-01-25 21:20:31', '2023-01-25 21:20:31'),
(92, 9, 'Pasar Sentolo Baru', 'Blimbing, Sukoreno, Sentolo, Kulon Progo', NULL, NULL, '55664', NULL, NULL, 'image/nsgrFNY0Cq9oecG355uSLQbwFlqX0O5zbtUgUR45.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.847337134150223, 110.21814620330204, '2023-01-25 21:21:22', '2023-01-25 21:21:22'),
(93, 9, 'Pasar Jombokan', 'Jombokan, Jombasari, Tawangsari, Pengasih, Kulon Progo', NULL, NULL, '55652', NULL, NULL, 'image/SoQ5c0ArmN3xoNEBJa820HYnxfwU5HZWVvRUxOdh.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.88381343339544, 110.10878007468091, '2023-01-25 21:22:17', '2023-01-25 21:22:17'),
(94, 9, 'Pasar Pripih', 'Hargomulyo, Kokap, Pripih, Hargomulyo, Kulon Progo', NULL, NULL, '55653', NULL, NULL, 'image/u6dt599JNromtDfuUbQVRykzl2EnitZsV14EeNbZ.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.868056974743822, 110.060210028655, '2023-01-25 21:23:03', '2023-01-25 21:23:03'),
(95, 9, 'Pasar Kasihan', 'Kasihan I, Ngentakrejo, Lendah, Kulon Progo', NULL, NULL, '55663', NULL, NULL, 'image/K3hDsfxYpsvrVXIH6zhO7BQeick1YK6XuU9TEFW3.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.902345199892712, 110.26502101604613, '2023-01-25 21:23:45', '2023-01-25 21:23:45'),
(96, 9, 'Pasar Sewugalur', 'Pandowan, Galur, Kulon Progo', NULL, NULL, '55661', NULL, NULL, 'image/uBZSL1bif54eazGGSZOsXkktyJeI4kH5Rk0e8oAb.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.941862651806106, 110.20991550471531, '2023-01-25 21:24:30', '2023-01-25 21:24:30'),
(97, 9, 'Pasar Bangeran', 'Bangeran, Bumirejo, Lendah, Kulon Progo', NULL, NULL, '55663', NULL, NULL, 'image/VNRGP3ZT1ExaA6FijqyjHDGwNXLuaDizsPDM9vcl.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9296314992660895, 110.20345037618543, '2023-01-25 21:25:06', '2023-01-25 21:25:06'),
(98, 9, 'Pasar Ngebung', 'Pedukuhan V, Bugel, Panjatan, Kabupaten Kulon Progo', NULL, NULL, '55655', NULL, NULL, 'image/NtiOlUlPxxqOIg83LbhVUoQnwx6fJRI3levIXLcx.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9236677375432265, 110.15746010166518, '2023-01-25 21:25:53', '2023-01-25 21:25:53'),
(99, 12, 'Swalayan HW', 'Jl. Sugiman No.15, Terbah, Wates, Kabupaten Kulon Progo', NULL, NULL, '55651', '0274-773317', NULL, 'image/470VhvwfLd4aoNRzBUfidWQdRvJLPY6poIevxMN9.png', '07.00 - 21.00 WIB', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.857091469573982, 110.16257487062457, '2023-01-25 21:26:47', '2023-01-25 21:26:47'),
(100, 12, 'Sidoagung Toserba', 'Jl. Brigjen Katamso No.69, Wates, Kabupaten Kulon Progo', NULL, NULL, '55651', '0274-774297', NULL, 'image/QGnWEXzrgQ51iHy5lZL44ZSdQdKE2iKrbgvYuwo7.jpg', '08.00 WIB', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8626238440457765, 110.15767758334178, '2023-01-25 21:27:51', '2023-01-25 21:27:51'),
(101, 12, 'WS Toserba', 'Jl. Sutijab No.50, Wates, Kabupaten Kulon Progo', NULL, NULL, '55651', '0274-773909', NULL, 'image/JChmBINaEQEgHpzMifyERAmLZRUJIGPwBHsdK5pN.jpg', '07.30 WIB', NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8624077787068645, 110.15391888908593, '2023-01-25 21:28:46', '2023-01-25 21:28:46'),
(102, 13, 'Balai Kalurahan Banjarharjo', 'Ngujon, Banjarharjo, Kalibawang, Kulon Progo', NULL, NULL, '55672', NULL, NULL, NULL, NULL, 'Susanto', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.688595118041538, 110.25731683923364, '2023-01-26 00:18:52', '2023-01-26 00:18:52'),
(103, 13, 'Balai Kalurahan Banjararum', 'Jogobayan, Banjararum, Kalibawang, Kabupaten Kulon Progo', NULL, NULL, '55672', NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.716121736164479, 110.22422154111685, '2023-01-26 00:19:35', '2023-01-26 00:19:35'),
(104, 13, 'Balai Kalurahan Banjarsari', 'Ngaran II, Banjarsari, Samigaluh, Kabupaten Kulon Progo', NULL, NULL, '55673', NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.697675991340571, 110.22516419345745, '2023-01-26 00:20:12', '2023-01-26 00:20:12'),
(105, 13, 'Balai Kalurahan Giripurwo', 'Jl. Gua Kiskendo, Sidi, Giripurwo, Girimulyo, Kulon Progo', NULL, NULL, '55674', NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.771527401707219, 110.1839441201389, '2023-01-26 00:20:48', '2023-01-26 00:20:48'),
(106, 13, 'Balai Kalurahan Banguncipto', 'Bantarejo, Banguncipto, Sentolo, Kabupaten Kulon Progo', NULL, NULL, '55664', NULL, NULL, NULL, NULL, 'Samiran', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.815702375156259, 110.22611503989195, '2023-01-26 00:21:24', '2023-01-26 00:21:24'),
(107, 13, 'Balai Kalurahan Sukoreno', 'Wora Wari, Sukoreno, Sentolo, Kulon Progo', NULL, NULL, '55664', '0274-6473138', 'sukoreno1947@gmail.com', NULL, NULL, 'Olan Suparlan', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.85957944050724, 110.21296205580424, '2023-01-26 00:22:24', '2023-01-26 00:22:24'),
(108, 13, 'Balai Kalurahan Margosari', 'Gn. Gondang, Margosari, Pengasih, Kabupaten Kulon Progo', NULL, NULL, '55652', NULL, NULL, NULL, NULL, 'Danang Subiantoro, SE.', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8550298638654015, 110.17452889076623, '2023-01-26 00:23:26', '2023-01-26 00:23:26'),
(109, 13, 'Balai Kalurahan Karangsari', 'Cekelan, Karangsari, Pengasih, Kulon Progo', NULL, NULL, '55652', NULL, NULL, NULL, NULL, 'Mujirin', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.858412734825659, 110.14624335166629, '2023-01-26 00:24:04', '2023-01-26 00:24:04'),
(110, 13, 'Balai Kalurahan Gotakan', 'Ngentak Kidul, Garongan, Panjatan, Kulon Progo', NULL, NULL, '55655', '0274-775195', 'gotakanpanjatan@gmail.com', NULL, NULL, 'Supriyanta', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.896798390564154, 110.16189357477113, '2023-01-26 00:24:56', '2023-01-26 00:24:56'),
(111, 13, 'Balai Kalurahan Bugel', 'Pedukuhan VII, Panjatan, Bugel, Panjatan, Kulon Progo', NULL, NULL, '55655', NULL, 'bugelpanjatan@gmail.com', NULL, NULL, 'Sunardi', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.925715284587235, 110.15936238513912, '2023-01-26 00:25:51', '2023-01-26 00:25:51'),
(112, 13, 'Balai Kalurahan Kaligintung', 'Jati Kilon, Kaligintung, Kec. Temon, Kabupaten Kulon Progo', NULL, NULL, '55654', NULL, 'pemdeskaligintung@gmail.com', NULL, NULL, 'Prayogo', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.881917007027134, 110.0862341825089, '2023-01-26 00:26:54', '2023-01-26 00:26:54'),
(113, 13, 'Balai Kalurahan Ngentakrejo', 'Kasihan I, Ngentakrejo, Lendah, Kulon Progo', NULL, NULL, '55663', NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.902717694119633, 110.26512842204411, '2023-01-26 00:27:27', '2023-01-26 00:27:27'),
(114, 13, 'Balai Kalurahan Brosot', 'Dukuh Kilung, Kranggan, Galur, Kabupaten Kulon Progo', NULL, NULL, '55661', NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.940047391129613, 110.23980715367206, '2023-01-26 00:28:11', '2023-01-26 00:28:11'),
(115, 13, 'Balai Kalurahan Depok', 'Pedukuhan II, Depok, Panjatan, Kulon Progo', NULL, NULL, '55655', NULL, 'depok.panjatan@gmail.com', NULL, NULL, 'Sumiyatin', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.9107933409662605, 110.15908737162547, '2023-01-26 00:28:58', '2023-01-26 00:28:58'),
(116, 14, 'Kantor Kapanewon Kalibawang', 'Jl. Sentolo-Muntilan Km. 28 Banjaroya, Kalibawang, Kulon Progo', NULL, NULL, '55672', '0274-7494855', 'kalibawang@kulonprogokab.go.id', 'image/suxaidNZxu2IDoczqLLAZYoXdANIbtW0o95tL7gb.jpg', NULL, 'Heri Dharmawan, AP, MM.', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kecamatankalibawang.kulonprogo.9', '@kalibawang_kp', '@kalibawang_kp', -7.6743521646905, 110.26298091846, '2023-01-26 00:32:49', '2023-01-26 00:33:18'),
(117, 14, 'Kantor Kapanewon Nanggulan', 'Jl. Sentolo - Nanggulan, Jati Sarono, Nanggulan, Kulon Progo', NULL, NULL, '55671', '0811-2633-255', 'nanggulan@kulonprogokab.go.id', 'image/XuMlzJRY7SFXtYsqR1pQi7uXTxty3mN30NllPvbw.jpg', NULL, 'Drs. Duana Heru Supriyanta', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kecamatan.nanggulan.9', '@kecamatan_nanggulan', NULL, -7.767218896039673, 110.21083749333862, '2023-01-26 00:35:01', '2023-01-26 00:35:01'),
(118, 14, 'Kantor Kapanewon Girimulyo', 'Jl. Grigak, Giripurwo, Girimulyo, Kulon Progo', NULL, NULL, '55674', '0274-7494833', 'girimulyo@kulonprogokab.go.id', 'image/i2cEbLdZv74wZF7uiqNQXl4JKBDIEtooS91EmBun.jpg', NULL, 'Purwono, S.Sos', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.771608952343651, 110.18461959582426, '2023-01-26 00:36:17', '2023-01-26 00:36:17'),
(119, 14, 'Kantor Kapanewon Pengasih', 'Jl. Purbo Winoto No 06 Pengasih, Kulon Progo', NULL, NULL, '55652', '0274-773320', 'pengasih@kulonprogokab.go.id', 'image/bERgW3yi51Hq2SnYKE6foiVvxMMwFOpVQ3mcUUfx.jpg', NULL, 'Drs. Warsidi', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.841812090406082, 110.16873669276775, '2023-01-26 00:37:24', '2023-01-26 00:37:24'),
(120, 14, 'Kantor Kapanewon Sentolo', 'Jl. Jogja-Wates Km. 20 Salamrejo Sentolo, Kulon Progo', NULL, NULL, '55664', NULL, 'sentolo@kulonprogokab.go.id', 'image/LRkPtTGTQFaw3hm2ZlyxFMSEM3j3uCgTDOdepNa0.jpg', NULL, 'Drs. Widodo', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '@inisentolo', '@inisentolo', -7.848250446795973, 110.21796448970503, '2023-01-26 00:38:41', '2023-01-26 00:38:41'),
(121, 14, 'Kantor Kapanewon Kokap', 'Jl. Ngaseman, Hargorejo, Kokap, Kulon Progo', NULL, NULL, '55653', '0274-778500', 'kokap@kulonprogokab.go.id', 'image/BpBqPOOEU4Fvm98jPKxXy5PRf50Ck7ZC36wRXri2.jpg', NULL, 'Sadikan, S.Pd, M.Pd', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kecamatan.kokap', '@kokapkecamatan', NULL, -7.840067146257406, 110.10045344705271, '2023-01-26 00:40:19', '2023-01-26 00:40:19'),
(122, 14, 'Kantor Kapanewon Lendah', 'Botokan, Jatirejo, Lendah, Kulon Progo', NULL, NULL, '55663', '0811-2633-255', 'lendah@kulonprogokab.go.id', 'image/pPL6bcYGpinZFPdFUNyl4kMMy9LNM3UTXNLNchXx.jpg', NULL, 'Sutrisna, S.Sos', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sedulur.lendah.1', '@khabarlendahterkini3', '@khabarlendahte1', -7.932286241089018, 110.23082864178441, '2023-01-26 00:41:46', '2023-01-26 00:41:46'),
(123, 14, 'Kantor Kapanewon Wates', 'Jl. Nagung-Toyan, No 83, Bendungan, Wates, Kulon Progo', NULL, NULL, '55651', '0274-773275', 'wates@kulonprogokab.go.id', 'image/5Ge2MVNktvO9HaXkzn0dzzsZCrY4y9lJfdOjUOBQ.jpg', NULL, 'Santoso, S.IP., M.Si', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'opd.kecamatanwates', NULL, NULL, -7.894205763295432, 110.14837405275492, '2023-01-26 00:43:02', '2023-01-26 00:43:02'),
(124, 15, 'Dinas Komunikasi dan Informatika', 'Jalan Tamtama Nomor 3, Wates, Kulon Progo', NULL, 'https://kominfo.kulonprogokab.go.id', '55611', '0274-773272', 'kominfo@kulonprogokab.go.id', 'image/fdyH5jd0iCY7ZgDwAkK4WWE6nsccjNEkL51sRwdG.jpg', NULL, 'Agung Kurniawan, S.I.P., M.Si', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dinas Kominfo Kulon Progo', '@dinaskominfokp', NULL, -7.857763475537876, 110.15864355453729, '2023-01-26 00:46:46', '2023-01-26 00:46:46'),
(125, 15, 'Dinas Kebudayaan', 'Jl. Sanun No.73, Terbah, Wates, Kabupaten Kulon Progo', NULL, 'http://disbud.kulonprogokab.go.id', '55651', '0274-773891', 'disbud@kulonprogokab.go.id', 'image/2VDDWiPHwFjB1GeWjBL5czgbHBmP6q6yBW5OgfOX.png', NULL, 'Drs. Untung Waluya', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '@dinbud_kp', NULL, -7.8574908198534, 110.15590127945, '2023-01-26 00:48:20', '2023-01-26 00:50:41'),
(126, 15, 'Dinas Koperasi Usaha Kecil dan Menengah', 'Jl. Kawijo No 4 Pengasih, Kulon Progo', NULL, 'http://koperasi.kulonprogokab.go.id', '55652', '0274-773270', 'koperasi@kulonprogokab.go.id', 'image/x3sPY713GCxhidDI7R5IUbfMVg26qxvrzt9h7h6N.jpg', NULL, 'Dra. Sri Harmintarti, MM', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.849505951339575, 110.16788508624298, '2023-01-26 00:50:20', '2023-01-26 00:50:20'),
(127, 15, 'Dinas Kelautan dan Perikanan', 'Jalan Purbowinoto no. 118, Pengasih, Kulonprogo', NULL, 'http://dkp.kulonprogokab.go.id', '55652', '0274-773126', 'dkp@kulonprogokab.go.id', 'image/eJNRsgyG23xGnJDg6kq2qHPl8sjWCvQK2qsah5cI.jpg', NULL, 'Ir. Sudarna, MMA.', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dislautkan.kulonprogo.7', '@dislautkan_kulonprogo', NULL, -7.841733357244142, 110.17197060719742, '2023-01-26 00:52:13', '2023-01-26 00:52:13'),
(128, 15, 'Dinas Sosial P3A', 'Jln. Sugiman No. 3, Wates, Kabupaten Kulonprogo', NULL, 'http://dinsos.kulonprogokab.go.id', '55651', '0274-773026', 'dinsos@kulonprogokab.go.id', 'image/3r4cBnxSDEbvgZtfHSm4R9gyOeTGnos9njbfyKtD.jpg', NULL, 'Drs. Eka Pranyata', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8569460647764, 110.16330410349, '2023-01-26 00:53:43', '2023-01-26 01:05:01'),
(129, 15, 'Dinas Lingkungan Hidup', 'Jl. Sugiman Wates, Kabupaten Kulon Progo', NULL, 'http://dlh.kulonprogokab.go.id', '55651', '0274-774638', 'dlh@kulonprogokab.go.id', 'image/GsGhcGIzlRKFf1rkMQ8FxWku5F8r2ouq8p5xcaQl.jpg', NULL, 'Arif Prastowo, S.Sos, M.Si', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dinas Lingkungan Hidup Kulon Progo', '@dinaslhkp', '@dinaslhkp', -7.856943681939809, 110.16328617186832, '2023-01-26 00:55:14', '2023-01-26 00:55:14');
INSERT INTO `maps` (`id`, `child_id`, `map_title`, `map_address`, `map_desc`, `map_url`, `map_postcode`, `map_telp`, `map_email`, `map_img`, `map_jambuka`, `map_pimpinan`, `pend_akredit`, `pend_kurikulum`, `pend_waktu`, `kes_rawatinap`, `kes_igd`, `kes_harilayanan`, `kes_pasien`, `perd_luas`, `perd_statustanah`, `perd_haripasaran`, `perd_komoditas`, `perd_jmlpedagang`, `perd_jmlkios`, `sosmed_fb`, `sosmed_ig`, `sosmed_twit`, `map_latitude`, `map_longitude`, `created_at`, `updated_at`) VALUES
(130, 16, 'Kantor Kesatuan Bangsa dan Politik', 'Jl. Sugiman, Watulunyu, Wates, Kulon Progo', NULL, 'http://kesbangpol.kulonprogokab.go.id', '55652', '0274-773387', 'kesbangpol@kulonprogokab.go.id', 'image/WPGjxUmm5BBDy3umibqb0ei89GraoPW6GDrXrvlu.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.856454197797773, 110.1649021170005, '2023-01-26 00:57:03', '2023-01-26 00:57:03'),
(131, 16, 'Badan Penanggulangan Bencana Daerah', 'Jalan Kawijo No.5, Pengasih, Kulon Progo', NULL, 'http://bpbd.kulonprogokab.go.id', '55652', '0274-775113', 'bpbd@kulonprogokab.go.id', 'image/K1QDUdDfrsoB2Wi615r5ZB9zHIPWWts1qjU6Ha8d.jpg', NULL, 'Drs. Ariadi, MM', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.8479232956578375, 110.16843577703193, '2023-01-26 00:58:03', '2023-01-26 00:58:03'),
(132, 16, 'Badan Keuangan dan Aset Daerah', 'Jl. Perwakilan No.1 Wates, Kulon Progo', NULL, 'http://bkad.kulonprogokab.go.id', '55651', '0274-773010', 'bkad@kulonprogokab.go.id', 'image/2SENGXtDRfGd8CGj3MNZCHH05PxCmygnEmoh0rcZ.jpg', NULL, 'Triyono, SIP, M.Si', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.858234328825688, 110.1598962261786, '2023-01-26 00:59:03', '2023-01-26 00:59:03'),
(133, 16, 'Bappeda Kulonprogo', 'Jl. Perwakilan No. 1, Wates, Kulon Progo', NULL, 'http://bappeda.kulonprogokab.go.id', '55651', '0274-773247', 'bappeda@kulonprogokab.go.id', 'image/eaMKG5FmW8ocbeXIxXuZpUbxAAluMSxAcJwBEwOo.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.858117089644142, 110.16001209959504, '2023-01-26 01:00:11', '2023-01-26 01:00:11'),
(134, 17, 'Sekretariat Daerah Kabupaten Kulon Progo', 'Jl. Perwakilan No 1 Wates, Kulon Progo', NULL, 'http://setda.kulonprogokab.go.id', '55651', '0274-773010', 'setda@kulonprogokab.go.id', 'image/LXF9b8x4MMqQW78gOYA92eYYFOpmvEKgLCxE0zPn.jpg', NULL, 'Ir. RM Astungkoro, M.Hum', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.858031041202987, 110.1590671848785, '2023-01-26 01:01:27', '2023-01-26 01:01:27'),
(135, 17, 'Sekretariat Dewan Perwakilan Rakyat Daerah', 'Jl. Sugiman, Wates, Kulon Progo', NULL, 'http://dprd-kulonprogokab.go.id', '55651', '0274-773271', 'setwan@dprd-kulonprogokab.go.id', 'image/sJDLmUymFYmjHvLfFuuUnQXheDWVqNbE61tT6C5i.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dprdkulonprogoyogyakarta', NULL, NULL, -7.855614860770592, 110.16546440277965, '2023-01-26 01:02:46', '2023-01-26 01:02:46'),
(136, 18, 'Curug Sidoharjo', 'Sumoroto, Sidoharjo, Kec. Samigaluh, Kabupaten Kulon Progo', '<div><strong>Curug Sidoharjo</strong> adalah salah satu air terjun yang berada di <em>Desa Sidoharjo, Samigaluh, Kulon Progo, Yogyakarta</em>. Sebenarnya, warga Kulon Progo sudah mengetahui keberadaan air terjun ini sudah agak lama, hanya saja efek media sosial tidak segencar sekarang yang menjadikan <strong>Curug Sidoharjo</strong> ini kurang dikenal orang di luar Kulon Progo. Masuk dalam daftar wisata rekomendasi di Jogja, Pengelola wisata <strong>Curug Sidoharjo</strong> pun terus berbenah, dimana saat ini pembangunan sudah mulai dilakukan. Hebatnya lagi, semua kegiatan pembangunan dikerjakan oleh warga sekitar <strong>Curug Sidoharjo</strong>. Selain memiliki ketinggian yang tinggi, sekitar 30 meter, perjalanan dari tempat parkir ke Curug ini membutuhkan sedikit perjuangan karena akses jalan yang masih melewati hutan dengan waktu sekitar 20 sampai 30 menit.</div>', NULL, NULL, NULL, NULL, 'image/LMgPXJXxCsK94zjkbdFnQs9ksuj7lT1hpgwVCNdY.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.669862419366843, 110.20191305190106, '2023-01-26 18:59:08', '2023-01-26 18:59:08'),
(137, 18, 'Puncak Kleco', 'Duwet, Purwoharjo, Samigaluh, Kulon Progo', '<div><strong>Puncak Kleco</strong> menawarkan suguhan eksotis hijaunya bentangan bukit dan pegunungan, suasana sejuk dan damai. Puncak ini terletak di Kawasan Desa Wisata Purwoharjo tepatnya di <em>Dusun Duwet, Desa Purwoharjo, Kecamatan Samigaluh, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta</em>. Ada tantangan tersendiri untuk mencapai <strong>Puncak Kleco</strong> ini. Para wisatawan bisa melakukan <em>tracking </em>sejauh 1 km dengan medan yang cukup menanjak. Tapi bila anda merasa tidak kuat melakukan <em>tracking</em>, warga disekitar <strong>Puncak Kleco</strong> ada yang menyediakan jasa ojek dengan tarif yang cukup terjangkau yakni <strong><em>Rp. 10.000.- /</em></strong> pulang pergi. Sesampainya di Puncak, wisatawan akan disambut oleh hijaunya pemandangan, birunya langit serta damainya suasana. Kombinasi angin sepoi-sepoi, spot foto berlatar pemandangan alam yang tiada duanya serta fasilitas gardu pandang yang tersedia disana akan membuat wisatawan semakin betah untuk berlama-lama di <strong>Puncak Kleco</strong>. Selain itu, wisatawan juga bisa menikmati keindahan sunrise dan sunset dari atas <strong>Puncak Kleco</strong>. Untuk memasuki obyek wisata ini, para wisatawan akan dikenakan tarif <strong><em>Rp. 5.000,-.</em></strong> Fasilitas yang tersedia pun sudah cukup lengkap seperti kamar mandi, mushola, warung, limasan, gardu pandang dan spot selfie. Sepulang dari <strong>Puncak Kleco</strong>, jangan lewatkan untuk mengunjungi Museum Tani Menoreh yang memajang alat-alat pertanian tradisional dan Museum Seni yang memamerkan hasil lukisan warga setempat. Museum Tani Menoreh dan Museum Seni ini hanya berjarak sekitar 100 meter dari <strong>Puncak Kleco</strong>.</div>', NULL, NULL, NULL, NULL, 'image/zFp9iaEXxLzC38DxxtSknJHPScLbAlaUTrMw05uo.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.712550979182813, 110.20451122811247, '2023-01-26 19:09:11', '2023-01-26 19:09:11'),
(138, 18, 'Gua Kidang Kencono', 'Sebrangkidul, Purwosari, Girimulyo, Kulon Progo', '<div>Sungai bawah tanah merupakan salah satu daya tarik dari <strong>Goa Kidang Kencana</strong> yang terletak tidak jauh dari lokasi Goa Kiskendo. Tak hanya itu, sungai bawah tanah ini jika ditelusuri akan tembus hingga ke Goa Kiskendo. <strong>Goa Kidang Kencono</strong> merupakan bagian dari barisan perbukitan Manoreh. Goa ini memiliki panjang lorong yang diperkirakan mencapai 350 meter. Wisatawan akan disuguhkan dengan keindahan <em>stalagmit </em>dan <em>stalaktit </em>yang masih terjaga alami di dalam goa.</div>', NULL, NULL, NULL, NULL, 'image/fyhgGIJ6pseovp9n2g2Mv8PSfePAiWrhUP7SJH8b.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.73641901142598, 110.1326636064844, '2023-01-26 19:10:59', '2023-01-26 19:10:59'),
(139, 18, 'Kedung Pedut', 'Desa Jatimulyo, Kecamatan Girimulyo, Kabupaten Kulon Progo', '<div><strong>Kedung Pedut</strong> adalah salah satu wisata alam yang digandrungi banyak pengunjung terutama <em>kawula muda</em>. Bahkan wisatawan asing sudah banyak mengunjungi objek wisata yang dibuka sejak Februari 2015 ini. Lokasi <strong>Kedung Pedut</strong> terletak di <em>Desa Jatimulyo, Kecamatan Girimulyo, Kabupaten Kulon Progo</em>. Air terjun ini termasuk dalam Desa Wisata Jatimulyo. Dalam Bahasa Jawa, <em>Kedung </em>berarti kolam dan <em>Pedut </em>berarti kabut. Hal ini dikarenakan saking derasnya saat air jatuh ke bawah menuju kolam, menyebabkan sekitaran kolam tersebut menjadi berkabut. Keunikan lainnya dari objek wisata ini adalah warna air yang jernih dan berubah warna menjadi berwarna <em>tosca</em>. Dari lokasi parkir, kita harus berjalan sekitar 500 meter untuk bisa sampai di lokasi air terjunnya, melalui jalan setapak yang sudah di-coorblock. Sepanjang jalan menuju <strong>Kedung Pedut</strong> sangat rindang dan kebersihan sekitaran lokasi dijaga dengan baik. Kita juga disuguhi oleh aliran sungai dan beberapa spot foto yang bisa digunakan untuk berfoto. Tidak hanya itu, ada beberapa permainan tambahan lain yang bisa digunakan seperti <em>flying fox</em>. Air Terjun<strong> Kedung Pedut</strong> berdekatan dengan Air Terjun Kembang Soka dan Ekowisata Sungai Mudal. Rute terbaik <strong>Kedung Pedut</strong> dapat ditempuh kurang lebih 50 Km ke arah barat dari kota Yogyakarta. Jalur yang bisa digunakan adalah melewati Jalan Godean ke barat.</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7699920194937535, 110.12106832241498, '2023-01-26 19:13:18', '2023-01-26 19:13:18'),
(140, 18, 'Wisata Alam Kalibiru', 'Hargowilis, Kokap, Kulon Progo', '<div>Tepat terletak di <em>Hargowilis, Kokap, Kulon Progo</em> dengan jarak kurang lebih 40 km dari pusat kota, <strong>Kalibiru </strong>merupakan harmonisasi antara hijaunya hutan dengan hamparan berbukit yang sangat luas dengan pemandangan yang indah. Awal mula terbentuknya tempat ini adalah sebuah hutan negara yang diolah menjadi tempat wisata. Sebagai tempat wisata yang berada pada dataran tinggi, <strong>Kalibiru </strong>mengandalkan pemandangan alam sebagai daya tarik utama bagi wisatawan. Disamping itu, <strong>Kalibiru </strong>juga memfasilitasi wisatawan untuk melihat pemandangan dengan menara pandang dan gardu pandang yang berbentuk rumah pohon. Fasilitas lain yang ditawarkan oleh Kalibiru yaitu<em> outbond</em> diantaranya <em>flying fox</em>, <em>tracking </em>dan beberapa permainan lainnya. Ada juga fasilitas pendukung yang tersedia di tempat ini seperti <em>homestay </em>yang berjumlah 6 dengan kapasitas 10 - 15 orang, penjual makanan mulai dari yang ringan sampai yang berat serta warung yang serupa dengan kafe, aula joglo untuk pertemuan, toilet, mushola, dan <em>free wifi area</em>.</div>', NULL, NULL, NULL, NULL, 'image/CtJ2bp0hX5RbFvsxvkrLVgFMwQWFUBIpoGEygZW5.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.807421921524833, 110.12925894539507, '2023-01-26 19:15:55', '2023-01-26 19:15:55'),
(141, 18, 'Gunung Suru Sukorini', 'Desa Hargomulyo, Kokap, Kulon Progo', '<div>Berkunjung ke Kulon Progo, anda dapat mengunjugi banyak obyek wisata alam salah satunya adalah <strong>Gunung Suru Sukorini</strong>. Obyek wisata pegunungan yang terletak di <em>Desa Hargomulyo, Kecamatan Kokap</em> ini memiliki makna tersendiri bagi masyarat sekitar, mereka percaya bahwa <strong>Gunung Suru Sukorini </strong>merupakan tameng penolak bala seperti penyakit. Selain itu, konon terdapat makam beberapa Prajurit Mataram yang kebetulan singah beberapa waktu di gunung ini. <strong>Gunung Suru Sukorini</strong> ini menyajikan pemandangan eksotis Pegunungan Menoreh di sebelah Utara, Barat dan Timur, sedangkan di sebelah Selatan, Anda dapat melihat Pantai Selatan lengkap dengan bandara NYIA, bila bandara ini sudah beroprasi, Anda juga dapat melihat <em>take off</em> dan <em>landing</em>-nya pesawat. Obyek wisata ini juga menyediakan berbagai spot foto instagrammable yang dapat dimanfaatkan sebagai pelengkap foto Anda. Akses menuju tempat ini cukup mudah, salah satu jalur yang dapat Anda lewati adalah dari Terminal Wates lurus ke Selatan sampai pertigaan Dalangan kemudian ke Barat selanjutnya Anda akan menemukan pertigaan Tonobakal setelah itu beloklah ke kanan sekitar 1 KM ke arah jembatan nah dari sini lokasi Gunung Suru hanya berjarak 400 M.</div>', NULL, NULL, NULL, NULL, 'image/9MVc1qorfVtzqawRc0u23ewAfTPlRBQTWqpY5xUL.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.861748870508744, 110.07549462924958, '2023-01-26 19:18:17', '2023-01-26 19:18:17'),
(142, 18, 'Pantai Glagah', 'Glagah, Kec. Temon, Kab. Kulon Progo', '<div><strong>Pantai Glagah</strong> merupakan pantai indah dengan hamparan pasir hitam yang luas sekaligus berlaguna. Di pantai ini terdapat kawasan gumuk pasir dengan rumput grinting dan laguna Glagah yang sangat luas terhampar untuk aktivitas perahu wisata, olah raga kano, kayak, berenang atau memancing. Selain itu juga ada agrowisata buah naga, melon, semangka dan cabai yang dikelola oleh masyarakat. Kawasan <strong>Pantai Glagah</strong> secara rutin juga dipakai untuk event <em>motocross</em>, festival layang-layang dan pesta kembang api tahun baru. <strong>Pantai Glagah</strong> menjadi Muara Sungai Serang yang sekaligus pintu masuk ke Pelabuhan Ikan Tanjung Adi Karta. Sisi barat Sungai Serang menjadi <em>Camping Ground</em> dan Dermaga Wisata Pengunjung yang akan tinggal lama atau ingin mengadakan kegiatan gathering, rapat, pesta bisa memanfaatkan usaha penginapan atau hotel yang terdapat banyak di sekitar Pantai Glagah. Lokasi <strong>Pantai Glagah</strong> berada di <em>Kecamatan Temon, Kulon Progo</em> kira-kira 10 Km dari kota Wates dan kurang lebih 2 Km dari jalan raya Jogja - Jakarta. Retribusi Objek Wisata Pantai Glagah untuk setiap pengunjung sebesar <strong><em>Rp. 6.000,-</em></strong>.</div>', NULL, NULL, NULL, NULL, 'image/OczwbpTphNfcDCLbBj098y2tnGOTCjbAigEraY8j.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.911871796668604, 110.06478380903422, '2023-01-26 19:21:07', '2023-01-26 19:21:07'),
(143, 18, 'Pantai Bugel', 'Bugel, Kec. Panjatan, Kab. Kulon Progo', '<div><strong>Pantai Bugel</strong> merupakan pantai yang terkenal dengan pasir besinya. Pantai ini masih asri dan berhiaskan pohon cemara yang tumbuh rindang di sekitar kawasan pantai. Suasana <strong>Pantai Bugel</strong> sangatlah cocok untuk para wisatawan yang mencari ketenangan, kedamaian hati dan melepas penat jiwa. <strong>Pantai Bugel</strong> juga bisa dijadikan referensi wisata bagi para wisatawan yang ingin menikmati indahnya panorama matahari terbit dan tenggelam.</div>', NULL, NULL, NULL, NULL, 'image/HAvvIz7JolqT58HFv0npf5v9FXeyfIRLk8nbUAtp.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.951109530686844, 110.15286848983354, '2023-01-26 19:23:28', '2023-01-26 19:23:28'),
(144, 18, 'Pantai Trisik', 'Banaran, Kec. Galur, Kab. Kulon Progo', '<div><strong>Pantai Trisik</strong> dengan suasana pedesaan pesisir yang khas merupakan tempat yang cocok untuk menikmati <em>sunset </em>dan <em>sunrise</em>. Tak hanya menawarkan keindahan panorama pantai, aktivitas nelayan juga bisa dinikmati sebagai daya tarik wisata alternatif. Pantai Trisik juga merupakan pusat konservasi penyu di <em>Kabupaten Kulon Progo</em> yang dapat dijadikan sebagai wahana wisata edukasi.</div>', NULL, NULL, NULL, NULL, 'image/j1LNwCZXlZj9OCD2thOE8VqwCxhepQcW7YBqPlfe.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.967302960319461, 110.18265565072056, '2023-01-26 19:24:58', '2023-01-26 19:24:58'),
(145, 18, 'Grojogan Watu Jonggol', 'Nglinggo, Pagerharjo, Kec. Samigaluh, Kab. Kulon Progo', '<div><strong>Grojogan Watu Jonggol</strong> merupakan salah satu wisata alam air terjun yang berada di Desa Wisata Nglinggo. Air terjun ini memiliki daya tarik tersendiri karena terdapat banyak bebatuan yang terbentuk secara alami. Para wisatawan dapat berfoto dengan berlatar pemandangan air terjun atau taman kecil yang sengaja dibuat untuk mempercantik suasana. Gemercik air, sejuk, segar dan tenangnya suasana alam di <strong>Grojogan Watu Jonggol</strong> dapat menghilangkan penat dan menyegarkan pikiran wisatawan yang berkunjung disini.</div>', NULL, NULL, NULL, NULL, 'image/4HJilEpS3TFvFW6PbatGZ0If5rjVUSlcMiyUX07r.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.6538682293909766, 110.13819838578236, '2023-01-26 19:26:30', '2023-01-26 19:26:30'),
(146, 19, 'Bangkong Lestari Aji', 'Kali Malang, Banjarharjo, Kec. Kalibawang, Kab. Kulon Progo', '<div>Destinasi wisata baru hadir di Kulon Progo lebih tepatnya di <em>Dusun Kali Malang, Desa Banjarharjo, Kecamatan Kalibawang</em>. Destinasi yang menyuguhkan embung, kolam renang dan rumah makan ini diberi nama <strong>Bangkong Lestari Aji</strong>. <strong>Bangkong Lestari Aj</strong>i merupakan destinasi wisata yang cocok untuk wisata keluarga karena mempunyai fasilitas seperti sepeda air, kapal motor, hingga wahan ember tumpah. Untuk memasuki wisata ini wisatawan bisa membayar dengan seikhlasnya.</div>', NULL, NULL, NULL, NULL, 'image/p2100Ghn9LoJ9zHKFXlQLuvQZPxcsXfI5s8mYozJ.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.677697999690545, 110.25391531991627, '2023-01-26 19:39:42', '2023-01-26 19:39:42'),
(147, 19, 'Embung Kleco', 'Ngesong, Giripurwo, Kec. Girimulyo, Kab. Kulon Progo', '<div><strong>Embung Kleco</strong> merupakan waduk buatan yang terletak di salah satu puncak bukit di Perbukitan Menoreh. Dari atas ketinggian <strong>Embung Kleco</strong>, pengunjung bisa menikmati pemandangan Kabupaten Kulon Progo. <strong>Embung Kleco</strong> juga merupakan spot yang bagus untuk menikmati sunset di sore hari. Fasilitas yang ada di lokasi wisata ini diantaranya adalah tempat parkir, mushola, dan kamar mandi.</div>', NULL, NULL, NULL, NULL, 'image/8TDATUvaY7nNBVJ1pK3N8uRFO7XCE0ZdyVwE047X.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.7778109980977, 110.16345918634, '2023-01-26 19:41:14', '2023-01-26 19:43:34'),
(148, 19, 'Wildlife Rescue Center', 'Jl. Kawijo, Sendangsari, Pengasih, Kulon Progo', '<div><strong>Wildlife Rescue Center</strong> (WRC) atau dulunya dikenal sebagai PPSJ merupakan kawasan wisata edukasi dan konservasi satwa dibawah naungan Yayasan Konservasi Alam Yogyakarta. <strong>WRC</strong> berdiri diatas tanah seluas 14 hektar di <em>Jl. Kawijo, Sendangsari, Pengasih, Kabupaten Kulon Progo</em> dan menampung sebanyak 160 satwa yang didapat dari hasil sitaan atas kepemilikan illegal dan perdagangan illegal satwa, seperti orang utan, elang jawa, buaya dan owa. Di dalam konservasi ini, para satwa direhabililitasi kemudian pada akhirnya akan dilepaskan ke habitat aslinya. <strong>WRC </strong>merupakan NGO (<em>Non- Governmental Organization</em>) sehingga tidak melibatkan pemerintah dari sisi pembiayaan. <strong>WRC </strong>menerapkan program-program seperti Program Donasi Satwa, Program Adopsi Satwa, Program <em>Volunteer</em>, <em>Outbond</em>, dan Program Pendidikan Konservasi untuk biaya operasional sehari-harinya. Selain itu, <strong>WRC </strong>juga membuat dan mengembangkan divisi bisnis seperti penyewaan hotel, <em>meeting room</em> hingga penyelenggaraan <em>outbond</em>. Suasana seperti hutan membuat suasana <strong>WRC </strong>nyaman dan asri. Anda dapat berkeliling <strong>WRC </strong>menikmati kesejukan alam ditemani oleh salah satu pemandu yang siap memberikan ilmu. Wisata ini sangat cocok untuk wisata keluarga. Mengajak anak-anak menyatu dengan alam dan memperkenalkan mereka dengan para satwa menjadi pilihan yang baik untuk mengisi waktu liburan anda. Jika berkunjung ke Kulon Progo, sempatkan waktu anda untuk berwisata edukasi di <strong>Wildlife Rescue Center</strong>.</div>', NULL, NULL, NULL, NULL, 'image/pIwSBj6J7An1TcnrBDnx2wNObW3hFoh8BLpkryVr.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.827640755643537, 110.18075883719852, '2023-01-26 19:43:13', '2023-01-26 19:43:13'),
(149, 19, 'Waduk Sermo', 'Sermo, Hargowilis, Kokap, Kulon Progo', '<div><strong>Waduk Sermo </strong>merupakan<strong> </strong>sebuah waduk dengan Luasnya kurang-lebih 157 Ha, yang terletak di <em>Hargowilis, Kokap (5 km dari Wates, 36 Km dari Jogja)</em> dan berlatar belakang hutan dan Pegunungan Menoreh. Pengunjung dapat berkeliling menikmati panorama waduk dengan menggunakan perahu wisata. <strong>Waduk Sermo</strong> juga menjadi surga untuk para pemancing karena berbagai jenis ikan berkembang biak di waduk ini. Di sebelah timur waduk Sermo, berdekatan dengan Wisma Sermo Asri, juga ada Arboretrum Bambu, yaitu kawasan khusus hutan berbagai jenis bambu yang bermanfaat untuk penelitian dan pendidikan. Tidak jauh dari <strong>Waduk Sermo</strong> terdapat kawasan berkemah yang cocok untuk kegiatan mahasiswa, pelajar serta Wisma Sermo yang nyaman digunakan untuk pertemuan atau rapat. Pada bulan-bulan tertentu, di <strong>Waduk Sermo</strong> juga diselenggarakan lomba olah raga air, seperti lomba Perahu Naga, serta lomba Dayung/cano. Retribusi Objek Wisata Waduk Sermo untuk setiap pengunjung sebesar <strong><em>Rp. 6.000,-</em></strong>.</div>', NULL, NULL, NULL, NULL, 'image/vrFhKlYaOHwVoz5UUIsUnuFllRePTCJaPpEkyePP.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.824808444086539, 110.12361966414203, '2023-01-26 19:46:35', '2023-01-26 19:46:35'),
(150, 20, 'Gua Maria Sendangsono', 'Banjaroyo, Kec. Kalibawang, Kab. Kulon Progo', '<div><strong>Sendangsono</strong> dahulu kala merupakan tempat istirahat sejenak para pejalan kaki dari wilayah Borobudur, Kabupaten Magelang ke Boro ,Kabupaten Kulon Progo atau sebaliknya. Di Tempat tersebut terdapat sendang/mata air yang muncul di antara dua Pohon Sono. Tempat ini dahulu kala juga dimanfaatkan oleh para pemuka Agama Budha untuk bertapa menyucikan diri. Kemunculan nilai rohani diperkuat dengan adanya kepercayaan yang didasarkan pada suatu legenda, bahwa di <strong>Sendangsono </strong>juga dihuni Dewi Lantamsari dan putra semata wayangnya Den Baguse Samija. Dari situ bisa dilihat bahwa sebenarnya nilai rohani <strong>Sendangsono </strong>sudah terbangun sebelum Gereja Katolik berkarya di tempat itu. Tanggal 14 Desember 1904, Bapak Barnabas diangkat sebagai katekumen pertama oleh Romo Van Lith bersamaan membaptis 171 warga setempat dengan air dari kedua pohon sono. Peresmian <strong>Sendangsono </strong>sebagai tempat penziarahan dilakukan oleh Romo JB. Prennthaler SJ pada tanggal 8 Desember 1929. Peran besar Romo Van Lith SJ dalam menyebarkan ajaran Katolik di Jawa tidak bisa dilepaskan dari keberadaan <strong>Sendangsono </strong>menjadi salah satu tempat ibadah umat Katolik di wilayah Pulau Jawa bahkan seluruh Indonesia. Bulan Mei dan Oktober <strong>Sendangsono </strong>ramai dikunjungi peziarah untuk berdoa dan mengambil air dari sumber yang menurut kepercayaan para peziarah mampu menyembuhkan penyakit. <strong>Sedangsono </strong>adalah tempat ziarah Goa Maria yang masuk dalam gugusan pegunungan Menoreh. <strong>Sendangsono </strong>masuk dalam wilayah administrasi Desa Banjaroyo, Kec. Kalibawang, Kab. Kulon Progo. Pengelolaan Goa Maria Sendangsono dibawah langsung Paroki Santa Maria Lourdes di Promasan Klangon Kalibawang.</div>', NULL, NULL, NULL, NULL, 'image/hBm8nIQNwcM6s1VGL3JGlaYBaWghmXueBpO4AiYV.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.667991042438435, 110.22553557642388, '2023-01-26 19:49:37', '2023-01-26 19:49:37'),
(151, 20, 'Makam Nyi Ageng Serang', 'Desa Banjarharjo, Kecamatan Kalibawang, Kulon Progo', '<div><strong>Makam Nyi Ageng Serang</strong> dibangun untuk menghormati perjuangan salah satu pahlawan nasional yakni Nyi Ageng Serang dalam melawan penjajah. Makam ini terletak di atas bukit di <em>Desa Banjarharjo, Kecamatan Kalibawang, Kulon Progo</em>. Kini, makam ini dijadikan sebagai salah satu destinasi wisata religi yang banyak dikunjungi para wisatawan. Para wisatawan biasanya datang untuk berziarah saat hari Kemerdekaan</div>', NULL, NULL, NULL, NULL, 'image/bJZF6CSfOrLvAukmopGQ3JecG8q5MD69c7DlnIpY.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.68672821734012, 110.24079496621236, '2023-01-26 19:50:48', '2023-01-26 19:50:48'),
(152, 20, 'Memetri Belik Ngancar', 'Pedukuhan Duwet, Desa Purwoharjo, Samigaluh, Kulon Progo', '<div>Bertepatan dengan hari pariwisata dunia, masyarakat <em>Pedukuhan Duwet, Desa Purwoharjo, Samigaluh</em> menggelar acara tradisi adat <strong>Memetri Belik Ngancar</strong>. Acara ini dilaksanakan sebagai bentuk rasa syukur masyarakat puncak kleco dan sekitarnya yang masih diberi anugrah adanya sumber air di tuk ngancar. Untuk musim kemarau seperti ini sumber air tidak besar, akan tetapi juga mencukupi untuk kebutuhan air minum warga sekitar. Kepala Dukuh Duwet, Bapak Suwandi, (50 tahun) menyatakan bahwa acara tersebut sudah dilaksanakan oleh orang tua pada zaman dulu. <strong>Memetri Belik Ngancar</strong> dimulai dengan kirab warga Dusun Duwet dari rumah Bapak Daliman menuju belik ngancar yang dilepas oleh bapak kepala dukuh. Prosesi kirab dilaksanakan oleh group sekar pengawikan dari Yogyakarta dan diiringi rombongan kesenian jathilan Among Budoyo dan warga masyarakat. Pada pagelaran kali ini dihadiri dari Dinas Pariwisata Kabupaten Kulon Progo, Dinas Kebudayaan Kulon Progo, Muspika Kecamatan Samigaluh, Anggota DPRD Kabupaten Kulon Progo, Desa Wisata Tinalah. Pagelaran ini mendapat liputan dari media massa cetak dan elektronik, termasuk TVRI Stasiun Yogyakarta. Hadir juga dari Pemerintah Desa Purwoharjo yang diwakili oleh Bapak Maruki. Kegiatan ini dimotori oleh muda mudi dusun Duwet yang tergabung dalam Pengelola destinasi wisata Puncak Kleco. Acara adat memetri tuk ngancar ini sudah menjadi agenda tahunan yang dilaksanakan secara turun temurun yaitu pada tiap bulan Muharam/Suro. Pada malam harinya dilaksanakan Tirakatan di aula Puncak Kleco oleh warga dusun Duwet. Tirakatan ini dimeriahkan oleh pentas kesenian jathilan dan pentas musik. Liputan <strong>Memetri Belik Ngancar</strong> ini dapat disaksikan di TVRI Stasiun Yogyakarta pada tanggal 10 Oktober 2018 jam 07.00 WIB.</div>', NULL, NULL, NULL, NULL, 'image/l9e6OFDsYYVfwPqQAooWfov03twp2Dod9sUl3KGm.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.712551405205112, 110.20451051796415, '2023-01-26 19:52:51', '2023-01-26 19:52:51'),
(153, 20, 'Gua Maria Lawangsih', 'Purwosari, Kec. Girimulyo, Kab. Kulon Progo,', '<div>Bila anda berminat untuk mengunjungi obyek wisata religi agama Katholik, <strong>Gua Maria Lawangsih</strong> bisa menjadi pilihan bagi anda yang ingin berwisata sambil beribadah. Disini terdapat dua tempat yang dapat anda gunakan untuk beribadah pertama di bagian mulut goa yaitu di depan Patung Bunda Maria dan di dalam Gua yang disebut Panti Semedi. Sembari mencari ketenangan dalam beribadah anda juga dapat merasakan asrinya alam sekitar goa.</div>', NULL, NULL, NULL, NULL, 'image/MW6gyRoADXggGWT5s5msD9Fw3mT0IGqTb0UwhxEN.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.721126141484739, 110.14801171973662, '2023-01-26 19:54:10', '2023-01-26 19:54:10'),
(154, 20, 'Makam Girigondo', 'Desa Kaligintung, Kecamatan Temon, Kulon Progo', '<div>Mendekatkan diri kepada Sang Maha Pencipta biasa dilakukan dengan berbagai cara, salah satunya adalah berziarah ke makam milik tokoh yang berpengaruh. Di Kulon Progo terdapat beberapa makam tokoh-tokoh penting, salah satunya adalah <strong>Makam Girigondo</strong>. <strong>Makam Girigondo</strong> adalah makam Paku Alam V sampai dengan Paku Alam VIII, Paku Alam merupakan gelar raja yang dipilih oleh Bendara Pangeran Harya Notokusumo yang merupakan putra dari Sultan Hamengkubuwana 1 saat diangkat menjadi Pangeran Merdiko oleh Pemerintah Inggris. Makam ini terletak sekitar 10 km dari pusat Kota Wates, tepatnya berada di <em>Desa Kaligintung, Kecamatan Temon.</em> <strong>Makam Girigondo</strong> berdiri di atas sebuah bukit dan menghadap ke selatan, struktur bangunannya terdiri dari 6 tingkat. Ada 258 buah anak tangga untuk mencapai makam tersebut. Pada tingkat pertama yang terletak paling dasar merupakan tempat dimakamkannya kerabat jauh Paku Alam. Di tingkat ke dua tidak terdapat makam, sedangkan pada tingkat ke tiga dan ke empat digunakan juga sebagai makam kerabat. Pada tingkatan selanjutnya yaitu tingkat 5 digunakan sebagai tempat makam kerabat dekat, sedangkan pada tingkat ke enam atau bagian paling atas adalah makam Paku Alam V-VIII. Untuk memasuki <strong>Makam Girigondo</strong> para pengunjung tidak dipungut biaya, namun sebaiknya tetap menjaga kebersihan lingkungan makam dan berlaku santun.</div>', NULL, NULL, NULL, NULL, 'image/bZA8z05ebCAeJ5xpz87XRBACbmRFOHocUwIqujLf.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.870307323866073, 110.0899182550367, '2023-01-26 19:56:05', '2023-01-26 19:56:05'),
(155, 20, 'Labuhan Puro Pakualaman', 'Glagah, Kecamatan Temon, Kulon Progo', '<div><strong>Kadipaten Puro Pakualaman</strong> mempunyai tradisi rutin labuhan yang diadakan setiap 10 Muharram di Pantai Glagah. Dalam labuhan ini dilarung 3 macam gunungan yaitu gunungan hasil bumi, gunungan pakaian, dan gunungan padi. Tradisi labuhan diawali dengan kirab dari Pasanggrahan Pakualaman menuju Joglo Pakualaman di Pantai Glagah yang berjarak kurang lebih tiga kilometer. Kemudian tiga buah gunungan tersebut dibawa ke bibir Pantai Glagah untuk didoakan untuk selanjutnya dilarung. Harapannya dengan tradisi labuhan ini masyarakat selalu diberi kesehatan, keselamatan, dan kesejahteraan. Dalam tradisi ini turut mendo&amp;rsquo;akan para leluhur yang telah meninggal dunia.</div>', NULL, NULL, NULL, NULL, 'image/DykolLO5738m1QZ2g3g020XGK5Rxjsm7gUMIOKhD.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.801002335268824, 110.37616453566768, '2023-01-26 19:58:29', '2023-01-26 19:58:29'),
(156, 21, 'Durian Menoreh', 'Desa Banjaroya, Kec. Kalibawang, Kab. Kulon Progo', '<div>Desa wisata Banjaroya dikenal sebagai sentra durian di Kulon Progo. Durian menjadi salah satu primadona di desa wisata ini. Durian tersebut ialah<strong> Durian Menoreh</strong>. <strong>Durian Menoreh</strong> mempunyai ciri khas rasa yang berbeda dibanding duren dari daerah lain. <strong>Durian Menoreh</strong> memiliki aroma yang kuat dan daging buah yang tebal, dan rasanya yang mantab.Selain itu, durian Menoreh memiliki ciri khas daging buah berwarna kuning kemerahan. Namun, ada juga durian Menoreh yang memiliki daging berwarna putih. Durian ini memiliki dua jenis, yakni Durian Menoreh Kuning dan Durian Menoreh Jambon. Masa panen buah durian Menoreh adalah pada bulan September- Feruari. Mayoritas durian yang terdapat di desa wisata Banjaroya berasal dari kebun warga dengan pohon yang sudah berusia tua bahkan beberapa diantaranya sudah berumur ratusan tahun. Untuk memfasilitasi wisatawan yang ingin berwisata durian di desa wisata Banjaroya, pengelola menawarkan paket wisata Agro Durian. Wisatawan dapat berkeliling kebun durian dan menikmati durian langsung dari pohon petani. Selain itu, wisatawan dapat mempelajari cara pembudiyaan durian menoreh melalui paket ini.</div>', NULL, NULL, NULL, NULL, 'image/SVSt855WRNGrZdxyHgFgCd8nXuFwdO2tqmjAhVBC.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.684493039915018, 110.25829122921611, '2023-01-26 20:00:31', '2023-01-26 20:00:31'),
(157, 21, 'Kopi Mojo', 'Gerbosari, Kec. Samigaluh, Kab. Kulon Progo', '<div>Untuk anda penggemar kopi dan masakan ala desa jangan sampai dileewatkan kedai <strong>Kopi Mojo</strong> yang berada di <em>Gerbosari, Samigaluh, Kulon Progo</em>. Lokasi yang strategis berada di pinggir jalan menuju ke Objek Wisata Nglinggo Tritis menjadikan tempat ini mudah dijangkau, dengan suasana pedesaan dan sejuk alami serta dengan berciri bangunan Jawa akan memberikan kenikmatan tersendiri dalam menikmati sajian khas <strong>Kopi Mojo</strong>. <strong>Kopi Mojo</strong> menyajikan kopi luwak yang dibudidayakan oleh masyarakat petani kopi di kawasan Menoreh sehingga mempunyai cita rasa kopi yang khas. Selain kopi masakan ala desa juga tersedia di kedai ini antara lain bobor kelor. Dengan kapasitas 100 orang memudahkan bagi para pelanggan yang ingin mengadakan berbagai acara antara lain rapat, reuni, pesta ulang tahun ataupun hanya sekedar bersantai sembari menikmati kopi bersama keluarga atau teman</div>', NULL, NULL, NULL, NULL, 'image/KzBaLVc6ZcTWmJGzDcSXSQe7UNsc5bCnrxxr2tfq.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.672839552253944, 110.16896650795191, '2023-01-26 20:02:12', '2023-01-26 20:02:12'),
(158, 21, 'Warung Makan Iwak Progo', 'Jl. Raya Pasar Kenteng, Jatisarono, Nanggulan, Kulon Progo', '<div>Bagi anda yang gemar berburu kuliner ada satu tempat di Kulon Progo yang menyajikan menu aneka makanan dari olahan ikan. <strong>Warung Makan Iwak Progo</strong> yang berkapasitas sampai 100 orang ini berlokasi di <em>Jl. Raya Pasar Kenteng, Jatisarono, Nanggulan</em> dengan suasana persawahan menambah asri suasana. Warung Makan ini menyajikan menu spesial antara lain Mangut Beong dan Mangut Belut serta aneka olahan ikan tangkapan dari Sungai Progo. Warung ini buka mulai pukul 09.00 sampai pukul 22.00 WIB. Selain olahan ikan, warung ini juga menyajikan menu ingkung ayam kampung.</div>', NULL, NULL, NULL, NULL, 'image/CKcKIzjehH0BgcCbTKouGXnPU8Y9DJZbvferoBk6.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.753647434921841, 110.20983365072422, '2023-01-26 20:04:00', '2023-01-26 20:04:00'),
(159, 21, 'Dawet Sambel', 'Desa Jatimulyo, Kapanewon Girimulyo, Kabupaten Kulon Progo', '<div><strong>Dawet Sambel</strong> merupakan sajian khas yang dapat dijumpai di daerah Jatimulyo, Girimulyo. dawet ini mempunyai sensasi rasa yang berbeda dengan dawet pada umumnya. <strong>Dawet Sambel</strong> biasannya dihidangkan pada sebuah mangkok kecil yang terbuat dari batok kelapa atau keramik. Komponen <strong>Dawet Sambel</strong> terdiri dari taburan kecambah, potongan tahu, kubis, seledri dan dan diberi sambal berupa bumbu kacang pedas serta disiram sedikit gula jawa.</div>', NULL, NULL, NULL, NULL, 'image/qRxNrKGPgo03bLItphIy3GUzHyBija7pPlvYo39o.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.760899337841361, 110.1266976534268, '2023-01-26 20:06:03', '2023-01-26 20:06:03'),
(160, 21, 'Warung Makan Ingkung Gunung', 'Banyunganti, Jatimulyo, Girimulyo, Kulon Progo', '<div>Terdapat beberapa tempat wisata di sepanjang jalanan bukit Menoreh yaitu Ayunan Langit, Goa Kiskendo, Grojogan Sewu, Taman Sungai Mudal, Air Terjun Kembang Soka dan Kedung Pedut dengan nuansa dingin dan sejuk. Setelah puas menikmati panorama alam yang indah tiba waktunya untuk mencari tempat makan yang khas dengan nuansa alami pegunungan. <strong>Rumah Makan Ingkung Gunung</strong> berlokasi di Banyunganti, Jatimulyo, Girimulyo yang mulai buka pukul 08.00 sampai pukul 22.00 WIB menyajikan menu utama ingkung ayam kampung, aneka camilan geblek, dan singkong serta minuman Kopi, wedang jahe dan teh mulak-mulak. <strong>Warung Makan Ingkung Gunung</strong> ini mulai berdiri baru Bulan Oktober 2018 ungkap Teguh Suroto pemilik warung makan</div>', NULL, NULL, NULL, NULL, 'image/iE0ArFq3J9XZ92ZAF5qLYsR66uYTzK1am003xW7P.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.762896959984302, 110.11948400107582, '2023-01-26 20:09:05', '2023-01-26 20:09:05'),
(161, 21, 'Bawang Goreng', 'Srikayangan, Kec. Sentolo, Kab. Kulon Progo', '<div>Bawang Merah (<em>Allium cepa L. var. aggregatum</em>) adalah salah satu bumbu masak yang banyak digunakan oleh masyarakat sebagai penyedap rasa. Bagi penyuka bawang yang terbiasa makan makanan yang ditaburi <strong>bawang goreng</strong> seperti soto, sup, nasi goreng atau bakmi goreng akan semakin menambah nafsu makan karena aroma bawang goreng yang menggugah selera. Bawang merah selaian mengandung vitamin C dan Kalium juga mengandung asam folat. Kegunaan bawang merah selain sebagai bumbu masak adalah sebagai obat tradisional. Bawang merah dikenal sebagai obat karena mengandung efek antiseptik dan senyawa alliin. Untuk anda yang sedang berwisata ke Kulon Progo, <strong>Bawang Goreng</strong> yang diproduksi oleh KWT Putri Manunggal bisa menjadi salah satu oleh-oleh atau buah tangan untuk keluarga anda dapat diperoleh di Pergiwatu Wetan Rt 35/18, Srikayangan, Sentolo, Kulon Progo.</div>', NULL, NULL, NULL, NULL, 'image/5yKG0AM12CWkkMkaToCf6fGqwZjitExBfBn7xC2d.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.896497822547147, 110.22465875737043, '2023-01-26 20:11:22', '2023-01-26 20:11:22'),
(162, 22, 'Desa Wisata Banjaroyo', 'Banjroyo, Kecamatan Kalibawang, Kabupaten Kulon Progo', '<div><strong>Dewa Bara</strong> atau <strong>Desa Wisata Banjaroyo</strong> adalah sebuah desa wisata di lereng perbukitan Menoreh, 8 km sebelah timur Candi Borobudur atau 24 km sebelah barat kota Yogyakarta. Berkunjung ke Desa Wisata Banjaroya yang terletak di <em>Kecamatan Kalibawang, Kabupaten Kulon Progo</em> memberikan pengalaman tinggal bersama penduduk desa dalam kehidupan sehari-hari yang sederhana dan bersahaja. Sendangsono adalah salah satu objek wisata ziarah yang berada di desa wisata tersebat. Pengunjung <strong>Desa Wisata Banjaroyo</strong> bisa menikmati kegiatan bersepeda keliling pedesaan menuju Embung Tonegoro, Bendung Ancol, makam Nyi Ageng Serang, trekking ke Menoreh, live-in di pedusunan, belajar seni tradisi, pertanian dan peternakan dan membuat makanan tradisional. Pada bulan tertentu di saat musim durian, di desa ini diadakan Festival Durian, bertempat di Rest Area Banjaroya. Durian Menoreh Kuning merupakan durian ungguan desa ini.</div>', 'http://dewabara.wordpress.com', NULL, '08812637689', NULL, 'image/7iY8DdOznarpz0GcIbWJ99liP8f3899qU9HLCURh.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.658972209830187, 110.23437111705611, '2023-01-26 20:13:30', '2023-01-26 20:13:30'),
(163, 22, 'Desa Wisata Banjarasri', 'Boro, Banjarasri, Kalibawang, Kabupaten Kulon Progo', '<div><strong>Desa Wisata Banjarsari</strong> atau <strong>Dewi Asri</strong> mempunyai slogan \"<em>Pesona Alam dan Budaya Menoreh</em>\" berjarak 30 km dari Yogyakarta dan 19 km dari Borobudur. Pengelola dan masyarakat <strong>Dewi Asri</strong> mengembangkan beberapa paket wisata yaitu bersahabat dengan Alam, belajar menjadi petani, bermain di desa, aneka permainan banyu, teknologi tepat guna, memancing, wisata sejarah. Kerajinan ATBM merupakan salah satu produk yang terkenal dari desa ini. <strong>Desa Wisata Banjarsari</strong> yang juga dikenal dengan nama \"Boro\" siap menerima para tamu dengan beragam potensi, atraksi dan pengalaman pedesaan, kehidupan di kaki Menoreh dan sejarahnya.</div>', NULL, NULL, NULL, NULL, 'image/RRCXcBVOCSHXGiX62QA4u2q0pVJLbhIsMrrFoHqs.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.698519422568801, 110.22544071983825, '2023-01-26 20:15:10', '2023-01-26 20:15:10'),
(164, 22, 'Desa Wisata Tinalah', 'Purwoharjo, Kecamatan Samigaluh, Kabupaten Kulon Progo', '<div><strong>Desa wisata Tinalah</strong> merupakan desa wisata yang kaya akan potensi wisata alam, edukasi dan budaya. Desa wisata ini terletak kawasan Bukit Menoreh pada ketingian 117 mdpl dengan suhu harian 25-32 derajat celcius. Desa wisata yang terletak di kawasan Sungai Tinalah dan Pegunungan Menoreh ini memiliki konsep penyatuan alam dan nilai-nilai budaya dengan slogan Pesona Alam dan Budaya. Nama <strong>Desa Wisata Tinalah</strong> diambil dari nama Sungai Tinalah. <strong>Desa Wisata Tinalah</strong> sering disebut dengan nama <strong>Dewi Tinalah</strong> menawarkan berbagai paket wisata diantaranya paket outbond, camping, trekking dan river tubing. Wisatawan dapat menelusuri keindahan alam dengan mendaki Puncak Kleco, menyusuri sungai Tinalah dan juga Gua Sriti. Bagi wisatawan yang berminat untuk mempelajari sejarah, di <strong>Desa Wisata Tinalah</strong> terdapat sebuah museum yang menjadi tempat penyimpanan benda bersejarah yakni Museum Sandi Negara. Desa wisata ini berada di Jalan Persandian Km. 5. Desa Purwoharjo, Kecamatan Samigaluh, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta. <strong>Desa wisata Tinalah</strong> dapat dijadikan sebagai tempat untuk menghilangkan rasa penat, mengembalikan kesegaran, dan semangat Anda setelah kesibukan aktivitas kerja yang padat dan melelahkan. Udara yang segar menjadikan diri para wisatawan rileks dan sehat. <strong>Desa Wisata Tinalah</strong> dapat ditempuh dengan segala jenis kendaraan pribadi, mobil, motor, dan bus. Terdapat paket wisata yang ditawarkan di <strong>Desa Wisata Tinalah</strong> yatitu Menginap di Joglo Wiguna dan Omahku, menginap bersama alam, menginap di rumah Joglo, <em>out bound</em>, <em>camping area</em>, makrab Jogja, Tinalah Tubing, <em>family dan community gathering</em>, Tinalah Trekking, susur Sungai Tinalah, Joglo <em>Meeting Room</em>, Live in, wisata alam di Puncak Kleco.</div>', NULL, NULL, NULL, NULL, 'image/e3xOzhQng8PzYIYhA8y8rzXo54NDB5llKXTfOYyP.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.695579095028401, 110.19589444273305, '2023-01-26 20:18:16', '2023-01-26 20:18:16'),
(165, 22, 'Desa Wisata Jatimulyo', 'Jatimulyo, Kecamatan Girimulyo, Kabupaten Kulon Progo', '<div><strong>Desa Wisata Jatimulyo</strong> terletak di keinggian 500 - 800 mdpl di Kawasan Pegunungan Menoreh tepatnya di <em>Kecamatan Girimulyo, Kabupaten Kulon Progo, D.I. Yogykarta</em>. Kawasan ini mempunyai potensi alam yang bagus khususnya bentang alam karst Menoreh dengan tebing - tebing indah di Gunung Kelir. Di desa ini terdapat potensi sosial budaya yang masih kuat. Setiap bulan Sapar diadakan Merti Dusun Jatimulyo suatu upacara adat yang sarat dengan kearifan lokal. Potensi wisata yang di miliki antara lain Goa Kiskendo terdapat arena <em>camping ground</em>/berkemah yang luas, dengan pemandangan indah bukit pinus. Wisatawan juga dapat melihat laut selatan dari atas Gunung Lanang yang terletak bersebelahan dengan goa ini. Disamping itu terdapat bersebelahan dengan goa ini. Disamping itu terdapat beberapa wisata air terjun yaitu Grojogan Sewu, Kembang Soka, Kedhung Pedhut dan Taman Sungai Mudal. Desa Wisa Jatimulyo menyediakan paket Susur Goa, Sumitro cave tubing, paket jelajah alam (<em>trekking, birdwatching, geotours</em>), Paket Camping &amp; Safari Malam, Paket Agrowisata salak. Setiap dua bulan sekali pada minggu ketiga, di halaman goa Kiskendo diadakan pentas Sendratari Sugriwo Subali, yang dimainkan oelh masyarakat setempat.</div>', NULL, NULL, NULL, NULL, 'image/fW5GbogFlKeoWsdObRtMpAJtyTc0uhg1OwcsgmeM.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.752630991505792, 110.13074252397702, '2023-01-26 20:19:58', '2023-01-26 20:19:58'),
(166, 22, 'Desa Wisata Sermo', 'Hargowilis, Kec. Kokap, Kab. Kulon Progo', '<div><strong><em>Hidden Paradise of Java</em></strong> adalah inisiatif masyarakat Sermo untuk mendukung pengembangan kegiatan wisata di Waduk Sermo di <em>Hargowilis, Kokap, Kulon Progo</em>. Daya tarik utama <strong>Desa Wisata Sermo</strong> adalah Waduk Sermo, satu - satunya waduk dan tersebar di Yogyakarta. Wisatawan dapat melakukan banyak kegiatan wisata seperti seperti berkeliling waduk dengan perahu, bersepeda di pedesaan, memancing, berkemah, <em>tracking </em>atau kegiatan <em>outbound </em>di sekitar Waduk Sermo, termasuk belanja produk lokal: kripik ikan, gula kelapa dan gula semut. Wisatawan juga bisa menikmati wisata minat khusus dan wisata seni budaya.</div>', NULL, NULL, NULL, NULL, 'image/NMMG9oIDB8CtmmRX7sjoGFj7gRNLb5ZSjqyZtoNf.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.820188607322288, 110.12146744830778, '2023-01-26 20:21:32', '2023-01-26 20:21:32'),
(167, 22, 'Desa Wisata Batik Lendah', 'Kecamatan Lendah, Kabupaten Kulon Progo', '<div><strong>Kawasan Wisata Batik Lendah</strong> merupakan satu daerah yang menjadi sentra produksi kerajinan batik di Kulon Progo. Terletak di Kecamatan Lendah, di daerah ini batik khas Kulon Progo seperti Geblek Renteng, Grinsing dan Galaran diproduksi. Namun, motif batik lainnya pun juga ada. Ada banyak produsen kerajinan batik berada di kawasan tersebut, seperti Sembung Batik, Batik Faras, Sinar Abadi Batik, dan lainnya. Selain wisata belanja, pengunjung juga bisa berwisata edukasi dengan mengikuti pelatihan membatik di beberapa rumah produksi batik.</div>', NULL, NULL, NULL, NULL, 'image/ZYMYPzZw0OIqxpAqorb6GjIfg4HaR5fskHpdPdjU.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.904890868284141, 110.26347635283494, '2023-01-26 20:23:32', '2023-01-26 20:23:32'),
(168, 21, 'Kopi Ampirono', 'Pendoworejo, Kec. Girimulyo, Kab. Kulon Progo', '<div><strong>Kopi Ampirono</strong> adalah sebuah tempat ngopi di Kulon Progo yang menawarkan sensasi ngopi sampil menikmati pemandangan alam pedesaan. Di sekitar kedai kopi tersebut, terbentang hamparan sawah yang luas. Lokasinya yang berada di pinggir sawah, membuat Anda bakal betah ngopi di sini. Cocok jadi tempat <em>healing</em> yang tepat bersama keluarga maupun teman. Cita rasa hidangan ala pedesaan, membuat suasana berkumpul semakin istimewa.</div>', NULL, NULL, NULL, NULL, 'image/2O1shD0yAxjfkEnRMmEigMFQS1qTUfRBbfzN8t4h.jpg', NULL, NULL, 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.750208, 110.191359, '2023-01-29 20:46:10', '2023-01-29 21:02:27'),
(169, 21, 'Geblek Pari', 'Pronosutan, Kembang, Kec. Nanggulan, Kab. Kulon Progo', '<div><strong>Geblek Pari </strong>merupakan tempat makan sekaligus tempat wisata berlatar sawah di Kulon Progo. Tempat ini berlokasi tepat di kawasan <em>Pronosutan, Nanggulan, Daerah Istimewa Yogyakarta</em>. Dari pusat Kota Yogyakarta, <strong>Geblek Pari Nanggulan</strong> bisa pengunjung tempuh selama 60 menit lagi dengan kendaraan bermotor. <strong>Geblek Pari Nanggulan</strong> merupakan tempat yang tepat untuk dikunjungi bersama keluarga atau kerabat di akhir pekan. Pasalnya,<strong> Geblek Pari Nanggulan</strong> punya pemandangan sawah yang indah, udara yang sejuk, dan aneka kuliner tradisional yang lezat serta murah. Kebanyakan pengunjung datang ke sini untuk sekedar bersantai dan berfoto karena latarnya benar-benar memanjakan mata. Untuk urusan kulinernya, <strong>Geblek Pari</strong> menawarkan menu utama geblek yang merupakan ikon makanan Kulon Progo.</div>', NULL, '55671', '0819-1100-0714', NULL, 'image/PkM8Ww5gmzZVt92YmJoaoYtgR58peL0WSxzKpMlt.jpg', '08:00 - 20:00 WIB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -7.745589, 110.205951, '2023-02-07 21:24:52', '2023-02-07 21:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_10_025957_create_category_children_table', 1),
(6, '2023_01_10_030137_create_categories_table', 1),
(7, '2023_01_10_030203_create_maps_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yudistira', 'yudistira@gmail.com', 'yudi123', NULL, '$2y$10$WIbugtaVE4Xi5k4PtHTdMej34w/ZGtFqeinowcBgyg.3mnMruQGwy', 1, NULL, '2023-01-09 23:42:29', '2023-01-09 23:42:29'),
(2, 'marcel', 'marcelinus@gmail.com', 'marcelinus', NULL, '$2y$10$H.Wr2iALfX..w05iABqDrOfBgOWOq0LKq5nN7Ke87W7EXemxKhUzC', NULL, NULL, '2023-02-07 15:57:42', '2023-02-07 15:57:42'),
(3, 'yoga', 'yoga@gmail.com', 'yoga pratama', NULL, '$2y$10$8iUECugqwesAJZij8uTZ7u3jDV9WfHqp3cspW2a9i3zFhw/95D5HS', NULL, NULL, '2023-02-07 21:14:19', '2023-02-07 21:14:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_cat_name_unique` (`cat_name`);

--
-- Indexes for table `category_children`
--
ALTER TABLE `category_children`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_children_catchild_name_unique` (`catchild_name`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `icon_bootstrap`
--
ALTER TABLE `icon_bootstrap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maps_map_title_unique` (`map_title`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_children`
--
ALTER TABLE `category_children`
  ADD CONSTRAINT `category_children_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `maps_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `category_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
