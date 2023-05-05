-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2023 at 06:20 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `har_project_tugasku`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_siswas`
--

CREATE TABLE `jawaban_siswas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_soal` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawaban_siswas`
--

INSERT INTO `jawaban_siswas` (`id`, `id_user`, `id_soal`, `jawaban`, `nilai`, `created_at`, `updated_at`) VALUES
('00411483-477c-4d0c-af0a-d2964e1317ed', '42342', '4324562453', 'const cars = [\"BMW\", \"Volvo\", \"Saab\", \"Ford\"]', 6, '2023-04-27 20:46:01', '2023-04-27 20:46:01'),
('1a9c216f-060d-4471-b418-652b13f610e7', '112121231', '75534553', 'for(counter = 10; counter > 0; counter--){\r\n                document.write(\"<p>Perulangan ke \"+counter+\"</p>\");\r\n            }', 20, '2023-04-27 20:46:01', '2023-04-27 20:46:01'),
('2aaaecca-5353-4b9f-9286-a9f55c666b53', '112121231', '25235234', 'console.log(\"ini data\");', 100, '2023-04-27 22:48:06', '2023-04-27 22:48:06'),
('879ebaa0-032b-4e96-92d9-d7d5538fde56', '424234234', '4324562453', 'var text = \"ini text\"', 9, '2023-04-27 20:46:01', '2023-04-27 20:46:01'),
('c7548170-7320-46dd-9457-ce36b3797035', '112121231', '4324562453', 'adsad', 0, '2023-04-28 01:09:02', '2023-04-28 01:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
('5168bc5b-1559-4c91-a175-237d239bf99a', 'PWPB', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('b118adc8-704e-11ed-a28f-7c0507aaa', 'Basis Data', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('b118c972-704e-11ed-a28f-7c0507abbbb', 'PBO', '2023-04-27 20:46:00', '2023-04-27 20:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
('90839f74-833b-403b-ae86-22', '11', 'rpl', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('90839f74-833b-403b-ae86-33', '10', 'rpl', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('90839f74-833b-403b-ae86-66857ec26664', '12', 'rpl', '2023-04-27 20:46:00', '2023-04-27 20:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_20_210311_create_blogs_table', 1),
(6, '2023_04_07_072910_create_soals_table', 1),
(7, '2023_04_07_072958_create_kategoris_table', 1),
(8, '2023_04_07_073026_create_jawaban_siswas_table', 1),
(9, '2023_04_07_073047_create_kelas_table', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 112121231, 'MyAuthApp', '888dff976acd50fbe543b8da5ecad6ddc8970232a36e457bb5269c87bb79a1ca', '[\"*\"]', NULL, NULL, '2023-04-27 21:03:39', '2023-04-27 21:03:39'),
(2, 'App\\Models\\User', 112121231, 'MyAuthApp', '013f2686fdcf9d9e854963a6020d1a5f348f03fed74d1f8b50208d7b17754360', '[\"*\"]', '2023-04-28 01:14:59', NULL, '2023-04-27 21:45:00', '2023-04-28 01:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `soals`
--

CREATE TABLE `soals` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `soals`
--

INSERT INTO `soals` (`id`, `id_user`, `slug`, `judul`, `deskripsi`, `id_kategori`, `id_kelas`, `created_at`, `updated_at`, `deleted_at`) VALUES
('25235234', 'gdfg54565464', 'konversi-waktu-ke-detik', 'Konversi waktu ke detik', 'Buatlah sebuah KOnversi Waktu', 'b118c972-704e-11ed-a28f-7c0507abbbb', '90839f74-833b-403b-ae86-33', '2023-04-27 20:46:00', '2023-04-27 20:46:00', NULL),
('4324562453', '42452342', 'menampilkan-object', 'Menampilkan Object', 'Buatkanlah Object dengan data Rumah', '5168bc5b-1559-4c91-a175-237d239bf99a', '90839f74-833b-403b-ae86-33', '2023-04-27 20:46:00', '2023-04-27 20:46:00', NULL),
('75534553', '42452342', 'pengulangan-bercabang', 'Pengulangan Bercabang', 'Buatlah sebuah Pengulangan Bercabang', '5168bc5b-1559-4c91-a175-237d239bf99a', '90839f74-833b-403b-ae86-33', '2023-04-27 20:46:00', '2023-04-27 20:46:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','guru','siswa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `id_kelas`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('112121231', 'adam pratama', '1@1.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('234234252', 'Muhammad Abiyyu Fauzan', '1@10.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('234245', 'admin', 'admin@admin.com', NULL, 'admin', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('3423423', 'Lia Agusriani', '1@5.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('34345345', 'Muhamad Lutfi Nabil Siraj', '1@9.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('42342', 'Hadi Ahadinata', '1@2.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('424234234', 'Keidjaru Axiro', '1@3.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('42452342', 'Haris Maulana', 'guru@1.com', NULL, 'guru', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('45242343322', 'Muhamad Irwansyah', '1@8.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('4545345', 'Keyla Nurma', '1@4.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('52445234', 'Marsina Hartati', '1@6.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('624334', 'Masni Purwanti', '1@7.com', NULL, 'siswa', '90839f74-833b-403b-ae86-33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
('gdfg54565464', 'aulia rachman', 'guru@2.com', NULL, 'guru', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-27 20:46:00', '2023-04-27 20:46:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jawaban_siswas`
--
ALTER TABLE `jawaban_siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `soals`
--
ALTER TABLE `soals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
