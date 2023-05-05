-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2023 at 08:04 AM
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
-- Database: `har_lks_laravel_polling`
--

-- --------------------------------------------------------

--
-- Table structure for table `choises`
--

CREATE TABLE `choises` (
  `id` bigint UNSIGNED NOT NULL,
  `choise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `choises`
--

INSERT INTO `choises` (`id`, `choise`, `poll_id`, `created_at`, `updated_at`) VALUES
(1, 'Ut.', 2, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(2, 'Totam.', 3, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(3, 'Iusto.', 2, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(4, 'Nobis.', 2, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(5, 'Esse.', 4, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(6, 'WFO', 1, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(7, 'Sed.', 3, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(8, 'WFH', 1, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(9, 'In et.', 3, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(10, 'Quisquam.', 5, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(11, 'Rerum.', 3, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(13, 'Deserunt.', 3, '2023-05-05 07:24:29', '2023-05-05 07:24:29'),
(15, 'Et.', 2, '2023-05-05 07:24:29', '2023-05-05 07:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Payment', '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(2, 'Procurement', '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(3, 'IT', '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(4, 'Finance', '2023-05-05 07:24:28', '2023-05-05 07:24:28');

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
(1, '2013_04_10_033532_create_divisions_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_10_031924_create_polls_table', 1),
(7, '2023_04_10_031934_create_choises_table', 1),
(8, '2023_04_10_032214_create_votes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` datetime NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `title`, `description`, `deadline`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'WFO / WFH', 'Dolore vero id nemo dolorum autem perspiciatis.', '2023-05-05 14:24:28', 11, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(2, 'Dicta nam.', 'Ut vel sunt quisquam incidunt.', '2023-05-05 14:24:28', 11, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(3, 'Natus.', 'Ipsam et ex eum qui doloribus.', '2023-05-05 14:24:28', 11, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(4, 'Nostrum.', 'Vel et magni voluptatibus esse quia.', '2023-05-05 14:24:28', 11, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(5, 'Beatae.', 'Velit iusto nihil eum omnis aut eaque aut.', '2023-05-05 14:24:28', 11, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_password` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email_verified_at`, `role`, `division_id`, `password`, `change_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Justina Mills', 'mpurdy', NULL, 'user', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(2, 'Kelsi Wilderman', 'axel.schowalter', NULL, 'user', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(3, 'Izabella Ziemann', 'grobel', NULL, 'user', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(4, 'Fermin Marquardt', 'javon61', NULL, 'user', 4, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(5, 'Mr. Brennon Ward', 'barrows.daphnee', NULL, 'user', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(6, 'Wade Veum', 'qsenger', NULL, 'user', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(7, 'Prof. Shirley Barrows', 'vjacobson', NULL, 'user', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(8, 'Mr. Kenny Dietrich', 'osborne29', NULL, 'user', 4, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(9, 'Dr. Mariela Treutel', 'foster52', NULL, 'user', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(10, 'Tyler Gerlach', 'tiana.hansen', NULL, 'user', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28'),
(11, 'Admin', 'admin_123', NULL, 'admin', NULL, '$2y$10$TrpRKas6qkx0XdD.DrlLbuObm1GGyvPXO/zbrpyzf/qD6SsNEMgh6', 1, NULL, '2023-05-05 07:24:28', '2023-05-05 07:33:00'),
(12, 'User', 'user_123', NULL, 'user', NULL, '$2y$10$Tui2bHpQ5GrtshkrK9V2ION0oUdjXktCB.S2wCqbiaWwaYbLB1B1.', 0, NULL, '2023-05-05 07:24:28', '2023-05-05 07:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint UNSIGNED NOT NULL,
  `choise_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `poll_id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `choise_id`, `user_id`, `poll_id`, `division_id`, `created_at`, `updated_at`) VALUES
(17, 6, 1, 1, 1, NULL, NULL),
(18, 6, 2, 1, 1, NULL, NULL),
(19, 6, 3, 1, 2, NULL, NULL),
(20, 6, 4, 1, 3, NULL, NULL),
(21, 8, 5, 1, 3, NULL, NULL),
(22, 8, 6, 1, 3, NULL, NULL),
(23, 8, 7, 1, 3, NULL, NULL),
(24, 8, 8, 1, 3, NULL, NULL),
(25, 8, 9, 1, 3, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choises`
--
ALTER TABLE `choises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `choises_poll_id_foreign` (`poll_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polls_created_by_foreign` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_choise_id_foreign` (`choise_id`),
  ADD KEY `votes_user_id_foreign` (`user_id`),
  ADD KEY `votes_poll_id_foreign` (`poll_id`),
  ADD KEY `votes_division_id_foreign` (`division_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choises`
--
ALTER TABLE `choises`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choises`
--
ALTER TABLE `choises`
  ADD CONSTRAINT `choises_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`);

--
-- Constraints for table `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_choise_id_foreign` FOREIGN KEY (`choise_id`) REFERENCES `choises` (`id`),
  ADD CONSTRAINT `votes_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  ADD CONSTRAINT `votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`),
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
