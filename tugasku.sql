-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table har_project_tugasku.blogs: ~0 rows (approximately)
DELETE FROM `blogs`;

-- Dumping data for table har_project_tugasku.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping data for table har_project_tugasku.jawaban_siswas: ~5 rows (approximately)
DELETE FROM `jawaban_siswas`;
INSERT INTO `jawaban_siswas` (`id`, `id_user`, `id_soal`, `jawaban`, `nilai`, `created_at`, `updated_at`) VALUES
	('00411483-477c-4d0c-af0a-d2964e1317ed', '42342', '4324562453', 'const cars = ["BMW", "Volvo", "Saab", "Ford"]', 6, '2023-04-27 20:46:01', '2023-04-27 20:46:01'),
	('1a9c216f-060d-4471-b418-652b13f610e7', '112121231', '75534553', 'for(counter = 10; counter > 0; counter--){\r\n                document.write("<p>Perulangan ke "+counter+"</p>");\r\n            }', 20, '2023-04-27 20:46:01', '2023-04-27 20:46:01'),
	('2aaaecca-5353-4b9f-9286-a9f55c666b53', '112121231', '25235234', 'console.log("ini data");', 100, '2023-04-27 22:48:06', '2023-04-27 22:48:06'),
	('879ebaa0-032b-4e96-92d9-d7d5538fde56', '424234234', '4324562453', 'var text = "ini text"', 9, '2023-04-27 20:46:01', '2023-04-27 20:46:01'),
	('c7548170-7320-46dd-9457-ce36b3797035', '112121231', '4324562453', 'adsad', 0, '2023-04-28 01:09:02', '2023-04-28 01:09:02');

-- Dumping data for table har_project_tugasku.kategoris: ~3 rows (approximately)
DELETE FROM `kategoris`;
INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
	('5168bc5b-1559-4c91-a175-237d239bf99a', 'PWPB', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
	('b118adc8-704e-11ed-a28f-7c0507aaa', 'Basis Data', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
	('b118c972-704e-11ed-a28f-7c0507abbbb', 'PBO', '2023-04-27 20:46:00', '2023-04-27 20:46:00');

-- Dumping data for table har_project_tugasku.kelas: ~3 rows (approximately)
DELETE FROM `kelas`;
INSERT INTO `kelas` (`id`, `kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
	('90839f74-833b-403b-ae86-22', '11', 'rpl', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
	('90839f74-833b-403b-ae86-33', '10', 'rpl', '2023-04-27 20:46:00', '2023-04-27 20:46:00'),
	('90839f74-833b-403b-ae86-66857ec26664', '12', 'rpl', '2023-04-27 20:46:00', '2023-04-27 20:46:00');

-- Dumping data for table har_project_tugasku.migrations: ~9 rows (approximately)
DELETE FROM `migrations`;
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

-- Dumping data for table har_project_tugasku.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping data for table har_project_tugasku.personal_access_tokens: ~2 rows (approximately)
DELETE FROM `personal_access_tokens`;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 112121231, 'MyAuthApp', '888dff976acd50fbe543b8da5ecad6ddc8970232a36e457bb5269c87bb79a1ca', '["*"]', NULL, NULL, '2023-04-27 21:03:39', '2023-04-27 21:03:39'),
	(2, 'App\\Models\\User', 112121231, 'MyAuthApp', '013f2686fdcf9d9e854963a6020d1a5f348f03fed74d1f8b50208d7b17754360', '["*"]', '2023-04-28 01:14:59', NULL, '2023-04-27 21:45:00', '2023-04-28 01:14:59');

-- Dumping data for table har_project_tugasku.soals: ~3 rows (approximately)
DELETE FROM `soals`;
INSERT INTO `soals` (`id`, `id_user`, `slug`, `judul`, `deskripsi`, `id_kategori`, `id_kelas`, `created_at`, `updated_at`, `deleted_at`) VALUES
	('25235234', 'gdfg54565464', 'konversi-waktu-ke-detik', 'Konversi waktu ke detik', 'Buatlah sebuah KOnversi Waktu', 'b118c972-704e-11ed-a28f-7c0507abbbb', '90839f74-833b-403b-ae86-33', '2023-04-27 20:46:00', '2023-04-27 20:46:00', NULL),
	('4324562453', '42452342', 'menampilkan-object', 'Menampilkan Object', 'Buatkanlah Object dengan data Rumah', '5168bc5b-1559-4c91-a175-237d239bf99a', '90839f74-833b-403b-ae86-33', '2023-04-27 20:46:00', '2023-04-27 20:46:00', NULL),
	('75534553', '42452342', 'pengulangan-bercabang', 'Pengulangan Bercabang', 'Buatlah sebuah Pengulangan Bercabang', '5168bc5b-1559-4c91-a175-237d239bf99a', '90839f74-833b-403b-ae86-33', '2023-04-27 20:46:00', '2023-04-27 20:46:00', NULL);

-- Dumping data for table har_project_tugasku.users: ~13 rows (approximately)
DELETE FROM `users`;
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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
