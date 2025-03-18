-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2025 at 04:44 AM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astudio`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','date','number','select') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'department', 'text', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(2, 'start_date', 'date', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(3, 'end_date', 'date', '2025-03-04 02:07:08', '2025-03-04 02:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_id` bigint UNSIGNED NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `entity_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'IT', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(2, 2, 1, '2017-10-08', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(3, 3, 1, '1976-03-10', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(4, 1, 2, 'Et vel qui aliquid expedita modi expedita.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(5, 2, 2, '2018-08-05', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(6, 3, 2, '2017-01-25', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(7, 1, 3, 'Natus tenetur quod sit qui officia harum.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(8, 2, 3, '2003-02-19', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(9, 3, 3, '1996-03-14', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(10, 1, 4, 'Eius voluptatibus iure id omnis aperiam voluptas dolore.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(11, 2, 4, '1999-11-15', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(12, 3, 4, '1997-11-20', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(13, 1, 5, 'Ad qui praesentium ut praesentium perspiciatis asperiores id.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(14, 2, 5, '1992-07-22', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(15, 3, 5, '1983-09-28', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(16, 1, 6, 'Reprehenderit quia quae harum omnis consequatur vero vel laboriosam.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(17, 2, 6, '1975-06-01', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(18, 3, 6, '2011-09-18', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(19, 1, 7, 'Accusantium et aut dolor assumenda similique aut.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(20, 2, 7, '2006-02-13', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(21, 3, 7, '1985-02-05', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(22, 1, 8, 'Animi nihil distinctio quaerat harum.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(23, 2, 8, '2017-08-20', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(24, 3, 8, '2016-05-02', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(25, 1, 9, 'Iste expedita aliquam officiis officiis rerum ducimus at.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(26, 2, 9, '1979-04-02', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(27, 3, 9, '2023-05-02', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(28, 1, 10, 'Ratione odio facere aut voluptatibus laudantium natus magni culpa.', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(29, 2, 10, '2018-03-15', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(30, 3, 10, '2002-06-12', '2025-03-04 02:07:08', '2025-03-04 02:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_14_000000_create_projects_table', 1),
(5, '2024_03_14_000001_create_timesheets_table', 1),
(6, '2024_03_14_000002_create_attributes_table', 1),
(7, '2025_03_04_034929_create_oauth_auth_codes_table', 2),
(8, '2025_03_04_034930_create_oauth_access_tokens_table', 2),
(9, '2025_03_04_034931_create_oauth_refresh_tokens_table', 2),
(10, '2025_03_04_034932_create_oauth_clients_table', 2),
(11, '2025_03_04_034933_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('752e95c28d4b4d55d1f2e5ab43b8bd70e88dbfa45feccdbbfea4ce0b063ba564285bbe4f533540c8', 5, 1, 'auth_token', '[]', 0, '2025-03-04 02:02:11', '2025-03-04 02:02:11', '2025-09-04 04:02:11'),
('dee67b11f2317c786034c10a4dbb02049e131704e4bdf76fed7554b2dd25d38508f5f339d92b1592', 5, 1, 'auth_token', '[]', 0, '2025-03-04 01:59:26', '2025-03-04 01:59:26', '2025-09-04 03:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7rBQXoFEId1mSPUWxLlqsoaweJ2GaAMizoL5VCS3', NULL, 'http://localhost:8000', 1, 0, 0, '2025-03-04 03:58:17', '2025-03-04 03:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','completed','on_hold') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'active', '2025-03-04 02:07:08', '2025-03-04 02:32:36'),
(2, 'esse autem quis', 'on_hold', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(3, 'blanditiis blanditiis similique', 'active', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(4, 'libero magni iste', 'completed', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(5, 'non officiis voluptatem', 'completed', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(6, 'ut nostrum nesciunt', 'completed', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(7, 'nemo accusantium aut', 'completed', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(8, 'rem eligendi aut', 'active', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(9, 'ut tempore rerum', 'on_hold', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(10, 'amet dolorum ipsum', 'completed', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(11, 'test', 'active', '2025-03-04 02:30:47', '2025-03-04 02:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`id`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, NULL, NULL),
(2, 1, 11, NULL, NULL),
(3, 1, 6, NULL, NULL),
(4, 2, 11, NULL, NULL),
(5, 3, 8, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 4, 8, NULL, NULL),
(8, 4, 11, NULL, NULL),
(9, 5, 7, NULL, NULL),
(10, 5, 8, NULL, NULL),
(11, 5, 6, NULL, NULL),
(12, 6, 10, NULL, NULL),
(13, 6, 11, NULL, NULL),
(14, 6, 6, NULL, NULL),
(15, 7, 8, NULL, NULL),
(16, 8, 9, NULL, NULL),
(17, 8, 11, NULL, NULL),
(18, 9, 8, NULL, NULL),
(19, 9, 9, NULL, NULL),
(20, 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint UNSIGNED NOT NULL,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `hours` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timesheets`
--

INSERT INTO `timesheets` (`id`, `task_name`, `date`, `hours`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'Omnis et et.', '2025-02-22', 2, 6, 1, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(2, 'Cupiditate et ratione voluptate.', '2025-02-11', 4, 6, 1, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(3, 'Consequatur iusto ratione.', '2025-02-25', 3, 6, 1, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(4, 'Accusamus molestiae libero.', '2025-03-04', 3, 6, 1, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(5, 'Velit fugit perspiciatis repudiandae.', '2025-02-20', 8, 8, 2, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(6, 'Suscipit sint aliquam.', '2025-02-07', 7, 8, 2, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(7, 'Molestiae cum ratione at.', '2025-02-03', 1, 8, 2, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(8, 'Aut praesentium perferendis.', '2025-02-19', 7, 8, 2, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(9, 'Impedit rerum dolorem.', '2025-03-03', 2, 8, 2, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(10, 'Et hic numquam alias.', '2025-02-24', 4, 8, 2, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(11, 'Deserunt eveniet officia.', '2025-02-25', 2, 8, 2, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(12, 'Voluptatem officiis est.', '2025-02-23', 7, 10, 3, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(13, 'Nisi expedita animi qui.', '2025-02-15', 6, 10, 3, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(14, 'Ad et cumque omnis.', '2025-02-21', 7, 10, 3, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(15, 'Nisi quaerat.', '2025-03-02', 7, 8, 4, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(16, 'Mollitia consequatur ut unde quis.', '2025-02-09', 5, 8, 4, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(17, 'Minima sit quos enim.', '2025-02-08', 1, 8, 4, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(18, 'Repellat dolores velit.', '2025-02-18', 3, 8, 4, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(19, 'Corporis sit porro quasi.', '2025-02-12', 4, 8, 4, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(20, 'Laboriosam autem recusandae repellendus unde.', '2025-02-28', 6, 6, 5, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(21, 'Veritatis est id rerum qui.', '2025-02-19', 3, 6, 5, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(22, 'Soluta ducimus voluptas.', '2025-03-02', 2, 6, 5, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(23, 'Odit omnis aut molestiae.', '2025-02-20', 6, 6, 5, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(24, 'Iste autem non fugit.', '2025-02-24', 8, 6, 5, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(25, 'Architecto perferendis dolores.', '2025-02-19', 8, 6, 5, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(26, 'Quae enim ipsa.', '2025-02-02', 2, 9, 6, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(27, 'Blanditiis et et.', '2025-02-28', 5, 9, 6, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(28, 'Tempore quis quidem.', '2025-02-24', 2, 9, 6, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(29, 'Sint pariatur quidem incidunt.', '2025-02-09', 8, 11, 7, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(30, 'Recusandae ipsam recusandae.', '2025-02-19', 3, 11, 7, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(31, 'Consequatur earum recusandae quas.', '2025-02-21', 6, 11, 7, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(32, 'Molestiae excepturi nihil.', '2025-02-09', 8, 11, 7, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(33, 'Impedit illum fugit.', '2025-02-14', 8, 11, 7, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(34, 'Rerum aut ipsam veniam.', '2025-02-26', 8, 11, 8, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(35, 'Ea enim laborum.', '2025-03-01', 7, 11, 8, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(36, 'Labore cum sed recusandae.', '2025-02-14', 2, 11, 8, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(37, 'Aut doloribus cupiditate eveniet.', '2025-02-26', 2, 11, 8, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(38, 'Aut ex minus.', '2025-02-07', 8, 8, 9, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(39, 'Officia error minima.', '2025-02-25', 2, 8, 9, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(40, 'Molestias assumenda at.', '2025-02-25', 7, 8, 9, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(41, 'Excepturi occaecati.', '2025-02-18', 3, 8, 9, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(42, 'Voluptates ut vitae.', '2025-02-18', 8, 10, 10, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(43, 'Sint quia quibusdam eum.', '2025-02-05', 8, 10, 10, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(44, 'Possimus harum facilis.', '2025-02-02', 2, 10, 10, '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(45, 'Corrupti commodi unde aliquam.', '2025-03-02', 6, 10, 10, '2025-03-04 02:07:08', '2025-03-04 02:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'omar', 'badr', 'omar@test.com', NULL, '$2y$12$6zk824ZGIRvst1L.dSfY2OP4.cQ4EZTL92ojR5pSvKKSDy/O1YYL2', NULL, '2025-03-04 01:56:59', '2025-03-04 01:56:59'),
(5, 'omar', 'badr', 'omar@test.comm', NULL, '$2y$12$rdf9ZKJ2fPq9Xvr6SR5at.0CT4JtcllCtkOXw6awQNaY0v.FGcRVC', NULL, '2025-03-04 01:59:26', '2025-03-04 01:59:26'),
(6, 'Admin', 'User', 'admin@example.com', '2025-03-04 02:07:07', '$2y$12$0q434H8xI.jqabQNQwe1ueO83ulfhJ9viwm/CSZEoHgq.BG3SyOsC', 'tubCGRx5gc', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(7, 'Theodore', 'Pouros', 'alivia.klocko@example.net', '2025-03-04 02:07:08', '$2y$12$lXoRfQnYi9ogqzWAgPFzQuLkgyWLzjjiTs87YS20H5UQSOZA3oIdy', 'fWWylCsy9I', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(8, 'Gus', 'Hane', 'chanelle36@example.net', '2025-03-04 02:07:08', '$2y$12$lXoRfQnYi9ogqzWAgPFzQuLkgyWLzjjiTs87YS20H5UQSOZA3oIdy', 'bD53TGCfsL', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(9, 'Jerrold', 'Bashirian', 'adella.rau@example.com', '2025-03-04 02:07:08', '$2y$12$lXoRfQnYi9ogqzWAgPFzQuLkgyWLzjjiTs87YS20H5UQSOZA3oIdy', 'nerhwxz1u7', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(10, 'Granville', 'Wintheiser', 'timmy.bauch@example.org', '2025-03-04 02:07:08', '$2y$12$lXoRfQnYi9ogqzWAgPFzQuLkgyWLzjjiTs87YS20H5UQSOZA3oIdy', 'ql7US0tFJY', '2025-03-04 02:07:08', '2025-03-04 02:07:08'),
(11, 'Fabiola', 'Ondricka', 'linnie.schroeder@example.net', '2025-03-04 02:07:08', '$2y$12$lXoRfQnYi9ogqzWAgPFzQuLkgyWLzjjiTs87YS20H5UQSOZA3oIdy', 'huyqa1BEBa', '2025-03-04 02:07:08', '2025-03-04 02:07:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_name_unique` (`name`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_values_attribute_id_entity_id_unique` (`attribute_id`,`entity_id`),
  ADD KEY `attribute_values_entity_id_foreign` (`entity_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_user_project_id_foreign` (`project_id`),
  ADD KEY `project_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timesheets_user_id_foreign` (`user_id`),
  ADD KEY `timesheets_project_id_foreign` (`project_id`);

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
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_entity_id_foreign` FOREIGN KEY (`entity_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD CONSTRAINT `timesheets_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timesheets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
