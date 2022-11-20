-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 02:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cupidknot_assetment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Bennie Auer', 'borer.mandy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-11-20 02:48:02', '2022-11-20 02:48:02'),
(2, 'Jeanne Heaney DDS', 'margarett.muller@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-11-20 02:48:02', '2022-11-20 02:48:02');

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
(5, '2022_11_19_123728_create_flights_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_income` double DEFAULT NULL,
  `occupation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_manglik` int(11) NOT NULL DEFAULT 0,
  `pre_expected_income_min` double DEFAULT NULL,
  `pre_expected_income_max` double DEFAULT NULL,
  `pre_occupation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_family_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_manglik` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `date_of_birth`, `gender`, `annual_income`, `occupation`, `family_type`, `is_manglik`, `pre_expected_income_min`, `pre_expected_income_max`, `pre_occupation`, `pre_family_type`, `pre_manglik`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hetal', 'Rana', 'hetal1@gmail.com', NULL, '$2y$10$afwsF5Ejg9Qou2PJFIdxYO7AyrpIH5vxVWf9oVj/wswEWzGgjwqvK', '1995-12-10', 'female', 5000000, 'private', 'neuclear', 0, 6000, 32000000, 'private,government', 'neuclear', '1', NULL, '2022-11-19 14:27:09', '2022-11-19 14:27:09'),
(2, 'Cale Little', 'Carmela Wuckert', 'barney84@example.org', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1996-06-18', 'female', 32663064, 'business', 'neuclear', 0, 77998, 6851678, 'business,government', 'joint', '2', '7t858dq1Dm', '2022-11-19 15:20:01', '2022-11-19 15:20:01'),
(3, 'Mr. Harley Schinner Sr.', 'Mandy Boehm', 'erica.witting@example.org', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1986-04-29', 'male', 51663742, 'private', 'neuclear', 1, 96555, 24476012, 'private,government', 'joint', '1', 'Jv9IJoROFp', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(4, 'Prof. Tanya Ward I', 'Elza Reynolds', 'melba44@example.com', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1997-02-27', 'female', 54821410, 'private', 'joint', 0, 295601, 7554314, 'private', 'neuclear', '0', 'hPyFZ7Ch5D', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(5, 'Moses Kunde III', 'Cristina Beahan III', 'morton.carroll@example.net', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-11-09', 'female', 71862789, 'government', 'joint', 1, 95191, 15860423, 'business,government', 'neuclear', '0', 'BQ2yilatbi', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(6, 'Jacinthe Rippin', 'Will Bruen Sr.', 'pgreen@example.net', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-05-16', 'male', 25052184, 'business', 'neuclear', 0, 447717, 7696477, 'business', 'neuclear', '0', 'tSMllfTUNJ', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(7, 'Prof. Esta Kshlerin', 'Jeff Herzog PhD', 'mekhi.oberbrunner@example.org', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1987-12-02', 'male', 78572844, 'government', 'neuclear', 0, 167196, 21523894, 'business', 'joint', '2', 'yb0xsFnqY9', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(8, 'Willa Watsica', 'Brielle Stroman', 'brian50@example.org', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1984-12-03', 'female', 66005623, 'private', 'joint', 1, 136565, 47353242, 'business', 'joint,neuclear', '1', 'hQM3KEkqYK', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(9, 'Dr. Dean Gutmann', 'Dr. Jovanny Ratke MD', 'devyn.kiehn@example.net', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-10-17', 'female', 70726775, 'government', 'joint', 1, 182576, 77459660, 'private', 'neuclear', '1', 'il1sTnIZa0', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(10, 'Icie Koch', 'Marquise Rutherford', 'elliot.kessler@example.com', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2001-10-22', 'male', 77036184, 'private', 'joint', 1, 105271, 32114429, 'business', 'joint,neuclear', '1', 'rbnLzy9SeR', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(11, 'Ms. Meghan Swaniawski', 'Amalia Bashirian', 'maggio.raphaelle@example.com', '2022-11-19 15:20:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2001-05-30', 'female', 57609253, 'government', 'neuclear', 0, 434655, 44895911, 'business,government', 'joint,neuclear', '0', 'zY4m7ao5nD', '2022-11-19 15:20:02', '2022-11-19 15:20:02'),
(12, 'Tamara Bartoletti', 'Vito Pfeffer', 'ashlynn46@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1989-02-01', 'female', 14677378, 'business', 'joint', 0, 498260, 60754307, 'business,government', 'joint', '0', '1bEj4guSmD', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(13, 'Dr. Alexandre Hansen', 'Bruce Buckridge', 'zbayer@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-02-09', 'male', 23070101, 'government', 'neuclear', 0, 488929, 61458973, 'private,government', 'joint,neuclear', '1', '65DZ27u0OO', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(14, 'Claudie Schumm', 'Brionna Okuneva', 'elnora22@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1993-07-08', 'male', 66923282, 'government', 'joint', 0, 253021, 66071014, 'private,government', 'joint', '0', 'U4RsEM4kW5', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(15, 'Mr. Lionel Fahey DDS', 'Helene Labadie', 'francesca.bartell@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-07-07', 'female', 30603351, 'private', 'neuclear', 1, 257032, 19147868, 'business', 'neuclear', '0', 'fGTq6WBoMO', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(16, 'Kailyn Doyle', 'Alivia Simonis', 'baylee.ritchie@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1986-01-24', 'male', 46676923, 'government', 'joint', 1, 378001, 81210639, 'government', 'joint', '1', '0qYD0rakYr', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(17, 'Muriel Mayert', 'Aniya Walker', 'jenkins.quinn@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1994-06-20', 'male', 57599158, 'government', 'joint', 1, 359579, 30515452, 'business', 'joint,neuclear', '0', 'i3VmShlVvH', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(18, 'Dianna Cassin', 'Tony Rosenbaum Jr.', 'chaim.okeefe@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-12-04', 'male', 44947261, 'private', 'neuclear', 1, 373153, 58051, 'private,government', 'joint,neuclear', '1', 'cabfhDEgth', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(19, 'Prof. Fredrick Cummerata', 'Johnson Gorczany', 'qjacobson@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2002-01-11', 'male', 28158230, 'private', 'neuclear', 0, 312274, 65735269, 'business,government', 'joint,neuclear', '0', 'HvsYbn3BlJ', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(20, 'Dr. Kristian Hettinger', 'Dr. Walton Haley IV', 'qheller@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1993-11-08', 'female', 88100893, 'government', 'joint', 0, 283968, 69301249, 'business,government,private', 'joint', '2', '6mLMEGncap', '2022-11-19 15:21:49', '2022-11-19 15:21:49'),
(21, 'Julio Schmitt', 'Mr. Kayley Hessel Sr.', 'hkling@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1990-04-23', 'male', 35570004, 'business', 'joint', 1, 110359, 42784553, 'business,government,private', 'joint,neuclear', '2', 'huKdk1dT7Y', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(22, 'Colleen Conn', 'Connie Emard', 'agreenholt@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1999-07-01', 'male', 88445627, 'business', 'joint', 1, 245111, 25253701, 'business,government,private', 'joint,neuclear', '1', 'IpMguxuPC8', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(23, 'Pattie McLaughlin II', 'Lina Hintz', 'denesik.micaela@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-03-13', 'female', 62856244, 'business', 'neuclear', 0, 52086, 48268482, 'government', 'joint,neuclear', '2', 'tUdMM1vAlX', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(24, 'Dr. Rafaela Olson II', 'Dr. Duane Gibson DDS', 'dahlia.reilly@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-07-16', 'male', 40651704, 'private', 'joint', 0, 259048, 18639221, 'private', 'neuclear', '0', 'y6BiXq9eHM', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(25, 'Kiera Reichert', 'Kellie Bechtelar', 'flo55@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-10-04', 'female', 36655483, 'government', 'neuclear', 0, 355464, 55761917, 'business,government', 'neuclear', '1', 'ZgXaooyxru', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(26, 'Daphne Prosacco', 'Katelin McGlynn III', 'teagan.jacobi@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2002-03-30', 'female', 63600908, 'business', 'joint', 1, 369918, 79033446, 'private', 'joint,neuclear', '2', '6QkiOXAWNZ', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(27, 'Wilfredo McGlynn DVM', 'Amelie Eichmann', 'sawayn.tomasa@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1994-05-04', 'female', 42810240, 'private', 'joint', 1, 371058, 39938601, 'business', 'joint,neuclear', '2', 'EVW4AkNu6l', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(28, 'Prof. Sonia Bergnaum', 'Dr. Kamren Eichmann V', 'mjones@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1991-09-17', 'female', 80603800, 'private', 'joint', 0, 271209, 49506611, 'business,government', 'joint', '1', '48xNoA7Syz', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(29, 'Yasmin Marks I', 'Mrs. Nia Towne III', 'rutherford.ludwig@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1997-12-23', 'female', 14459054, 'private', 'neuclear', 1, 298026, 38040941, 'business,government', 'neuclear', '1', 'FluJLvy6fH', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(30, 'Johnny Stamm', 'Ron Nicolas', 'runolfsdottir.sanford@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1987-12-28', 'female', 81053356, 'private', 'neuclear', 1, 495023, 41830383, 'business', 'neuclear', '2', '2fQhexfS7F', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(31, 'Therese Roob', 'Jason Cremin', 'hickle.pascale@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1992-12-29', 'male', 67080546, 'government', 'neuclear', 1, 208577, 17052139, 'private', 'joint', '1', 'Zj1Z0DOSLG', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(32, 'Thad Corkery', 'Fatima Wolff', 'ashly.lakin@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1990-12-03', 'male', 9619105, 'government', 'neuclear', 1, 261975, 54909725, 'business,government', 'joint,neuclear', '2', '09mCVrvBY8', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(33, 'Sammy Prosacco Sr.', 'Carolanne Beatty II', 'izabella04@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1998-10-03', 'female', 29862907, 'government', 'joint', 0, 199609, 51284781, 'government', 'joint', '1', 'Xs6OpJrv3R', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(34, 'Marianna Kutch', 'Darrin O\'Keefe', 'janick.collins@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1988-06-11', 'female', 3436956, 'government', 'neuclear', 1, 263818, 30403833, 'private', 'neuclear', '1', 'gYM2o7iAYU', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(35, 'Albert Murray Sr.', 'Melisa Schamberger', 'amber.harris@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1991-07-11', 'male', 17806671, 'private', 'joint', 1, 331924, 34740227, 'business', 'joint', '0', 'i4m1jVh9u4', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(36, 'Ola Leannon', 'Lonzo O\'Conner', 'gusikowski.bernice@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1996-03-21', 'female', 14471701, 'private', 'neuclear', 0, 306791, 9226367, 'business,government', 'neuclear', '0', 'YIHU5VHpZp', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(37, 'Prof. Kadin Schimmel', 'Ms. Maritza Gutmann', 'ettie.runolfsdottir@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-08-19', 'female', 34645328, 'private', 'neuclear', 0, 230621, 73968888, 'private', 'joint', '1', 'eGy6wiAwXS', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(38, 'Marielle Tremblay', 'Alvena VonRueden', 'madge38@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1991-01-29', 'female', 63328892, 'business', 'neuclear', 0, 97511, 52036103, 'private', 'joint,neuclear', '1', 'X3FMabeDM7', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(39, 'Prof. Cyrus Schneider DVM', 'Mrs. Aglae Welch DVM', 'ruecker.katheryn@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1991-09-08', 'female', 43855610, 'government', 'joint', 0, 59132, 74867743, 'business,government,private', 'joint', '2', 'PKalRCQVv2', '2022-11-19 15:21:50', '2022-11-19 15:21:50'),
(40, 'Queenie Langosh', 'Wilbert Bailey', 'mayer.stephon@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1987-08-29', 'male', 70327115, 'government', 'neuclear', 0, 479834, 10255217, 'government', 'joint', '2', 'b6tg33Szfj', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(41, 'Miss Reta Farrell', 'Issac Abshire', 'stiedemann.nathanial@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1997-03-15', 'male', 40056599, 'business', 'neuclear', 1, 85288, 9617164, 'business,government,private', 'joint', '1', '6QQ3zEAH56', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(42, 'Mr. Ed Marks', 'Darius Flatley', 'russel.kira@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1992-04-17', 'male', 25588399, 'private', 'joint', 0, 243494, 23136160, 'private', 'joint,neuclear', '0', '7vsrnwBHJZ', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(43, 'Sonny Johnson', 'Tressie Ryan', 'isaias19@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2002-02-09', 'female', 21367395, 'government', 'neuclear', 0, 199474, 53109964, 'government', 'joint,neuclear', '2', 'Po9ohXg4it', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(44, 'Prof. Flavio Morissette', 'Dr. Tate Dare', 'aliza.murphy@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1989-06-17', 'female', 38172276, 'business', 'joint', 0, 229955, 40285685, 'private,government', 'joint', '0', 'DMxrOPYa0O', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(45, 'Julianne Gorczany', 'Dorris Kihn', 'sally.nitzsche@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1999-10-23', 'female', 83688981, 'government', 'joint', 1, 384682, 43372699, 'business,government,private', 'joint,neuclear', '1', 'vS5Fp5u65F', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(46, 'Prof. Karine Eichmann I', 'Dr. Sid Halvorson', 'rodrigo79@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1986-03-07', 'female', 43194066, 'business', 'joint', 0, 151366, 82344960, 'private,government', 'joint,neuclear', '1', 'iosfQY36DZ', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(47, 'Grant Batz DVM', 'Abbigail Rippin', 'dean43@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1988-11-17', 'male', 34711705, 'business', 'neuclear', 0, 232345, 36175252, 'business', 'joint', '2', 'gC43bX5sdr', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(48, 'Angela Weber', 'Dr. Dell Schoen DVM', 'johnson.annabel@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1994-06-18', 'female', 14789040, 'government', 'joint', 1, 144570, 59152785, 'private,government', 'joint,neuclear', '0', 'nOTyV6RC9g', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(49, 'Payton Mosciski', 'Giovanny Ruecker', 'ross69@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1997-03-11', 'female', 19072104, 'government', 'joint', 0, 374749, 85726286, 'government', 'joint,neuclear', '2', '55wCXLHhr8', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(50, 'Mr. Narciso Ward', 'Easter Stanton', 'heller.cydney@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1999-11-15', 'male', 51290129, 'private', 'joint', 0, 328835, 85310012, 'government', 'joint,neuclear', '2', 'F4suoOnZnK', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(51, 'Miles Harber', 'Mr. Freddie Vandervort', 'stracke.johnny@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1999-02-22', 'male', 56144424, 'private', 'joint', 1, 322015, 81390387, 'business,government', 'joint,neuclear', '1', 'PdUPmyWC6E', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(52, 'Andrew Toy', 'Chanel Gleichner PhD', 'joseph89@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1984-06-02', 'male', 81919835, 'government', 'joint', 0, 462911, 81142886, 'business,government', 'joint,neuclear', '0', 'eUd0hVQX7D', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(53, 'Mrs. Fiona Schamberger IV', 'Mercedes Walsh', 'elyse.reinger@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1993-04-07', 'male', 14105086, 'government', 'neuclear', 1, 495569, 4776085, 'private', 'neuclear', '1', '07WMn2VprC', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(54, 'Kelli Ondricka', 'Dr. Hubert Borer III', 'dorothea39@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1987-01-30', 'male', 31482449, 'private', 'neuclear', 0, 496750, 45966908, 'business,government,private', 'joint', '2', 'yves0eNgvW', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(55, 'Sabryna Wolf', 'Miss Cassie Feeney II', 'kozey.jarod@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1988-05-28', 'female', 82295939, 'private', 'joint', 0, 198874, 77005028, 'business,government', 'joint', '2', 'qVWBdl4nRg', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(56, 'Nikki Lubowitz', 'Darren Lowe', 'vschultz@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1996-08-14', 'male', 37402351, 'private', 'neuclear', 0, 225482, 66626530, 'business,government,private', 'neuclear', '2', 'GCGBeAWhWT', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(57, 'Dr. Kristin O\'Connell Jr.', 'Broderick Hermann', 'gbeer@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1998-01-24', 'male', 69440394, 'government', 'joint', 0, 116775, 88662647, 'business', 'joint,neuclear', '1', 'APMQwljep0', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(58, 'Declan O\'Connell', 'Julius Mosciski DDS', 'estel74@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1983-06-14', 'male', 32927115, 'business', 'joint', 1, 231146, 7864006, 'government', 'joint,neuclear', '1', 'lukul7zzvh', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(59, 'Irwin Beier', 'Whitney Hoeger', 'vhermiston@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1988-10-28', 'female', 50975838, 'government', 'joint', 1, 199223, 86749918, 'government', 'joint,neuclear', '1', 'n0kpCTkqvh', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(60, 'Marjory Boyer', 'Prof. Fernando Bergstrom I', 'carolyn.bailey@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1988-05-28', 'male', 34510475, 'business', 'neuclear', 1, 194797, 5976365, 'private,government', 'neuclear', '2', '0BXrgb58EO', '2022-11-19 15:21:51', '2022-11-19 15:21:51'),
(61, 'Karlee Ward PhD', 'Dr. Angelica Johnston', 'opouros@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-07-20', 'male', 5305551, 'government', 'neuclear', 1, 226620, 48020148, 'business,government,private', 'joint', '0', 'fht54cZyrT', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(62, 'Ms. Roxanne Graham', 'Mr. Adrian Zboncak IV', 'laurence.heller@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1994-08-17', 'female', 5705634, 'business', 'neuclear', 1, 79579, 34381597, 'private,government', 'joint,neuclear', '2', 'AzUMgfyEyV', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(63, 'Kenyatta Schuster Jr.', 'Jaquan Keebler PhD', 'ali.okeefe@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1998-04-22', 'female', 6009113, 'government', 'neuclear', 1, 72820, 16375506, 'business,government,private', 'joint,neuclear', '0', '0cYoV3nd8b', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(64, 'Prof. Lottie Hegmann Jr.', 'Marco Bartell', 'kameron72@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1990-07-16', 'female', 49005907, 'business', 'neuclear', 1, 490758, 48964944, 'business,government', 'joint', '2', 'CyblSU7dLz', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(65, 'Prof. Carol Howell DVM', 'Alfredo Gutkowski', 'fgoldner@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-09-25', 'female', 22482496, 'government', 'joint', 1, 273291, 84213068, 'private', 'neuclear', '2', 'MW5JQ9cQFP', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(66, 'Miss Leann Nikolaus I', 'Christina Morar', 'ohara.gaston@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1983-03-22', 'male', 62362286, 'private', 'joint', 0, 430549, 65053087, 'private', 'neuclear', '0', 'LNlHvVe7uO', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(67, 'Wava Durgan', 'Florine Rice', 'cummings.ida@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1994-01-19', 'male', 33905423, 'private', 'neuclear', 1, 370601, 32980699, 'government', 'neuclear', '0', 'CfQ9AiOTYR', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(68, 'Carlotta Schaden', 'Prof. Chance Will', 'runolfsdottir.shanie@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2001-04-14', 'female', 21868750, 'government', 'neuclear', 1, 400822, 54402399, 'private', 'joint,neuclear', '2', 'zAlCbHzfXK', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(69, 'Prof. Fletcher Hayes MD', 'Carmelo Howell', 'langosh.adrain@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1992-05-04', 'female', 58951098, 'business', 'joint', 1, 252963, 20996376, 'business,government', 'joint', '2', 'C4Ujk8W9oL', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(70, 'Noel Donnelly', 'Prof. Domenico Effertz PhD', 'alda90@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1989-07-12', 'male', 50223766, 'government', 'joint', 1, 91019, 18996938, 'private,government', 'joint,neuclear', '1', 'VD10CToTya', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(71, 'Virgie Runte', 'Ms. Alicia Wolff II', 'upton.nelda@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1998-12-01', 'female', 23317548, 'private', 'joint', 0, 458392, 53307037, 'business,government', 'neuclear', '1', 'v5eyliZjkR', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(72, 'Electa Olson IV', 'Everett Schaefer', 'germaine51@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1991-10-28', 'male', 12591271, 'business', 'joint', 0, 442781, 5069640, 'private,government', 'joint', '1', '8vTskY2E5e', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(73, 'Mr. Edgardo Dare', 'Eric Collier MD', 'issac69@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1994-04-11', 'male', 18431144, 'private', 'joint', 1, 176085, 24109818, 'private,government', 'joint', '1', 'ryxGo2eYZ1', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(74, 'Prof. Valentin Feeney II', 'Mr. Jalon Littel', 'linnie25@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1998-01-03', 'female', 34956114, 'business', 'joint', 1, 433282, 55104779, 'private,government', 'joint,neuclear', '2', 'he5mdoOwOi', '2022-11-19 15:21:52', '2022-11-19 15:21:52'),
(75, 'Evan Herman II', 'Johann Little I', 'jacquelyn.quitzon@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1995-10-06', 'male', 66453826, 'government', 'joint', 1, 262075, 79438206, 'private,government', 'joint,neuclear', '1', 'Y8Wgql2TAn', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(76, 'Kari Donnelly III', 'Mr. Ezequiel Schiller IV', 'bashirian.aimee@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1990-07-04', 'male', 71002788, 'business', 'neuclear', 1, 418524, 8306304, 'business', 'joint', '2', 'E8LSF1I5En', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(77, 'Dr. Horacio Shanahan', 'Ms. Isobel Stamm', 'athena93@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1996-04-20', 'female', 4381573, 'government', 'joint', 1, 343846, 31226618, 'government', 'joint,neuclear', '2', 'J4l0oqWdI2', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(78, 'Jeanette Collins', 'Wyman Cummings', 'llebsack@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-06-26', 'male', 75229760, 'private', 'neuclear', 1, 199308, 24976496, 'government', 'joint,neuclear', '0', 'vtd9TVv4DD', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(79, 'Alyson Torp', 'Prof. Sam Hintz', 'watson72@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1999-12-08', 'female', 27343598, 'government', 'neuclear', 0, 296164, 41439325, 'business,government,private', 'joint', '1', 't3p0h8Je6u', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(80, 'Kaelyn Bednar', 'Mariana Johnson', 'feil.sterling@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1986-12-31', 'female', 7033553, 'government', 'joint', 1, 130462, 67502366, 'government', 'joint,neuclear', '1', 'zpsut0v8hE', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(81, 'Sophie Kirlin', 'Kiarra Zemlak Jr.', 'simonis.ocie@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1999-03-26', 'female', 88824598, 'private', 'neuclear', 1, 81889, 69663411, 'private,government', 'joint,neuclear', '0', 'o8D1GAoEbK', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(82, 'Dr. Keyshawn O\'Connell V', 'Prof. Arden Mayert', 'idell.connelly@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1996-06-23', 'male', 60832293, 'government', 'neuclear', 0, 259380, 3759370, 'business,government,private', 'neuclear', '0', 'wENOf4mBUY', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(83, 'Reese Keeling', 'Bernadette Ledner I', 'conrad.kris@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1986-07-28', 'female', 45187536, 'government', 'neuclear', 1, 347215, 28248504, 'private', 'neuclear', '1', 'R5r8LXkySI', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(84, 'Mr. Rafael Gutkowski', 'Miss Lilla Sauer', 'lind.chauncey@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2001-09-29', 'female', 85609698, 'private', 'joint', 0, 347341, 49008107, 'government', 'joint,neuclear', '0', 'bc1SXKiI6Q', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(85, 'Prof. Triston Green', 'Marion Greenfelder', 'albina37@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-01-22', 'female', 79873081, 'government', 'joint', 0, 323526, 85611022, 'business', 'neuclear', '0', 'k2Myi1fGSl', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(86, 'Jerad Langosh', 'Keenan Dietrich', 'jameson.hill@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1996-02-27', 'female', 31323367, 'business', 'neuclear', 0, 230979, 53806594, 'private', 'joint', '2', 'IQRWSWnIRe', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(87, 'Prof. Vivianne Willms Jr.', 'Selmer Hyatt', 'shanel.batz@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1984-10-18', 'male', 9796852, 'business', 'neuclear', 0, 240590, 14059960, 'business,government', 'joint', '2', 'x0x4XoeJwo', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(88, 'Prof. Delphine Fahey IV', 'Ariane Kris III', 'magdalen.botsford@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-09-05', 'male', 29030648, 'business', 'joint', 1, 52732, 46927406, 'government', 'joint,neuclear', '0', 'kVct3rtFz3', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(89, 'Kacey Ledner', 'Warren Corkery', 'wolf.dimitri@example.com', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1984-03-25', 'male', 63472015, 'government', 'joint', 0, 179090, 63857543, 'business,government,private', 'joint,neuclear', '1', 'HDrJeD4XWK', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(90, 'Prof. Stone Cole', 'Ms. Pearline Gutmann', 'homenick.vern@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-10-01', 'male', 12877346, 'government', 'joint', 0, 446486, 64062453, 'business', 'joint,neuclear', '2', 'T1uLwswiUb', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(91, 'Talia Breitenberg Sr.', 'Kaela Crona', 'joanny.schuster@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1998-03-29', 'male', 18459709, 'government', 'neuclear', 1, 110019, 89206046, 'private', 'joint,neuclear', '2', 'uyonJvUSSX', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(92, 'Lottie Runolfsdottir I', 'Mrs. River Kihn', 'rylan.jacobi@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1990-07-26', 'female', 13895378, 'government', 'joint', 1, 279198, 69355129, 'business,government,private', 'joint', '2', 'SVEqmVhebR', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(93, 'Dr. Shyann Schuster PhD', 'Dangelo Donnelly', 'willms.yessenia@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2001-11-26', 'male', 55184048, 'business', 'joint', 0, 92939, 26738488, 'private,government', 'joint', '2', 'DZG1kcrRCh', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(94, 'Tracey Greenholt PhD', 'Elinor Breitenberg', 'tosinski@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1986-04-06', 'male', 75764763, 'business', 'neuclear', 1, 144481, 71208317, 'business,government', 'joint,neuclear', '2', 'VKYsmGyh5I', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(95, 'Dr. Robb Crist', 'Miss Gerda McClure', 'kassulke.bret@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1989-03-27', 'male', 54340457, 'business', 'neuclear', 0, 240084, 89959970, 'business', 'joint,neuclear', '1', 'hi9DXYIWZL', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(96, 'Mr. Sammy Heaney', 'Jannie Kessler', 'finn.lang@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1998-04-02', 'male', 72514190, 'business', 'joint', 1, 135775, 6935072, 'business,government,private', 'joint', '1', '50MWUy8omN', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(97, 'Julio Wilderman', 'Roma Funk', 'feest.marilie@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2002-11-14', 'male', 9089833, 'business', 'joint', 1, 131466, 71809614, 'business,government,private', 'neuclear', '0', 'PFh0NAd6nL', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(98, 'Mrs. Jana Ryan I', 'Emelie Dooley', 'pokuneva@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1990-02-15', 'male', 20005923, 'private', 'joint', 1, 458711, 71834003, 'business,government,private', 'joint', '2', 'b6CprunNwr', '2022-11-19 15:21:53', '2022-11-19 15:21:53'),
(99, 'Dashawn Jones', 'Aidan Spencer', 'mschroeder@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-08-02', 'male', 11943348, 'business', 'joint', 1, 165495, 34012031, 'private', 'joint,neuclear', '1', 'icpFzcWnLp', '2022-11-19 15:21:54', '2022-11-19 15:21:54'),
(100, 'Dr. Brock Predovic Sr.', 'Marcelina Feeney II', 'cokon@example.net', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1986-07-16', 'male', 53966571, 'business', 'joint', 0, 158677, 8897874, 'government', 'joint', '2', '3GfjvYoYjo', '2022-11-19 15:21:54', '2022-11-19 15:21:54'),
(101, 'Francisca Bergstrom', 'Albert Kulas', 'minerva.torp@example.org', '2022-11-19 15:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1994-05-17', 'female', 4504266, 'business', 'neuclear', 1, 124180, 80821635, 'business', 'joint', '2', 'LBRiZ9A8ky', '2022-11-19 15:21:54', '2022-11-19 15:21:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
