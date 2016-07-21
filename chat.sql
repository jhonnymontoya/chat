-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2016 at 05:15 PM
-- Server version: 5.7.12-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leidos`
--

CREATE TABLE `leidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` int(10) UNSIGNED NOT NULL,
  `mensaje` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leidos`
--

INSERT INTO `leidos` (`id`, `usuario`, `mensaje`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2016-07-18 18:33:18', '2016-07-18 18:33:18', '0000-00-00 00:00:00'),
(2, 2, 1, '2016-07-18 18:33:18', '2016-07-18 18:33:18', '0000-00-00 00:00:00'),
(3, 1, 2, '2016-07-18 18:33:23', '2016-07-18 18:33:23', '0000-00-00 00:00:00'),
(4, 2, 2, '2016-07-18 18:33:23', '2016-07-18 18:33:23', '0000-00-00 00:00:00'),
(5, 2, 3, '2016-07-18 18:33:26', '2016-07-18 18:33:26', '0000-00-00 00:00:00'),
(6, 1, 3, '2016-07-18 18:33:26', '2016-07-18 18:33:26', '0000-00-00 00:00:00'),
(7, 2, 4, '2016-07-18 18:33:33', '2016-07-18 18:33:33', '0000-00-00 00:00:00'),
(8, 1, 4, '2016-07-18 18:33:33', '2016-07-18 18:33:33', '0000-00-00 00:00:00'),
(9, 2, 5, '2016-07-18 18:33:35', '2016-07-18 18:33:35', '0000-00-00 00:00:00'),
(10, 1, 5, '2016-07-18 18:33:35', '2016-07-18 18:33:35', '0000-00-00 00:00:00'),
(11, 2, 6, '2016-07-18 18:33:44', '2016-07-18 18:33:44', '0000-00-00 00:00:00'),
(12, 1, 6, '2016-07-18 18:33:44', '2016-07-18 18:33:44', '0000-00-00 00:00:00'),
(13, 2, 7, '2016-07-18 18:33:57', '2016-07-18 18:33:57', '0000-00-00 00:00:00'),
(14, 1, 7, '2016-07-18 18:33:57', '2016-07-18 18:33:57', '0000-00-00 00:00:00'),
(15, 1, 8, '2016-07-18 18:34:47', '2016-07-18 18:34:47', '0000-00-00 00:00:00'),
(16, 2, 8, '2016-07-18 18:34:47', '2016-07-18 18:34:47', '0000-00-00 00:00:00'),
(17, 1, 9, '2016-07-18 18:35:49', '2016-07-18 18:35:49', '0000-00-00 00:00:00'),
(18, 2, 9, '2016-07-18 18:35:49', '2016-07-18 18:35:49', '0000-00-00 00:00:00'),
(19, 2, 10, '2016-07-18 18:35:50', '2016-07-18 18:35:50', '0000-00-00 00:00:00'),
(20, 1, 10, '2016-07-18 18:35:50', '2016-07-18 18:35:50', '0000-00-00 00:00:00'),
(21, 1, 11, '2016-07-18 18:35:50', '2016-07-18 18:35:50', '0000-00-00 00:00:00'),
(22, 2, 11, '2016-07-18 18:35:50', '2016-07-18 18:35:50', '0000-00-00 00:00:00'),
(23, 2, 12, '2016-07-18 18:35:51', '2016-07-18 18:35:51', '0000-00-00 00:00:00'),
(24, 1, 12, '2016-07-18 18:35:51', '2016-07-18 18:35:51', '0000-00-00 00:00:00'),
(25, 2, 13, '2016-07-18 18:35:51', '2016-07-18 18:35:51', '0000-00-00 00:00:00'),
(26, 1, 13, '2016-07-18 18:35:51', '2016-07-18 18:35:51', '0000-00-00 00:00:00'),
(27, 1, 14, '2016-07-18 18:36:06', '2016-07-18 18:36:06', '0000-00-00 00:00:00'),
(28, 2, 14, '2016-07-18 18:36:06', '2016-07-18 18:36:06', '0000-00-00 00:00:00'),
(29, 1, 15, '2016-07-18 18:36:10', '2016-07-18 18:36:10', '0000-00-00 00:00:00'),
(30, 2, 15, '2016-07-18 18:36:10', '2016-07-18 18:36:10', '0000-00-00 00:00:00'),
(31, 1, 16, '2016-07-18 18:36:10', '2016-07-18 18:36:10', '0000-00-00 00:00:00'),
(32, 2, 16, '2016-07-18 18:36:10', '2016-07-18 18:36:10', '0000-00-00 00:00:00'),
(33, 2, 17, '2016-07-18 18:36:11', '2016-07-18 18:36:11', '0000-00-00 00:00:00'),
(34, 1, 17, '2016-07-18 18:36:11', '2016-07-18 18:36:11', '0000-00-00 00:00:00'),
(35, 2, 18, '2016-07-18 18:36:11', '2016-07-18 18:36:11', '0000-00-00 00:00:00'),
(36, 1, 18, '2016-07-18 18:36:11', '2016-07-18 18:36:11', '0000-00-00 00:00:00'),
(37, 2, 19, '2016-07-18 18:36:12', '2016-07-18 18:36:12', '0000-00-00 00:00:00'),
(38, 1, 19, '2016-07-18 18:36:12', '2016-07-18 18:36:12', '0000-00-00 00:00:00'),
(39, 1, 20, '2016-07-18 18:36:12', '2016-07-18 18:36:12', '0000-00-00 00:00:00'),
(40, 2, 20, '2016-07-18 18:36:12', '2016-07-18 18:36:12', '0000-00-00 00:00:00'),
(41, 2, 21, '2016-07-18 18:36:13', '2016-07-18 18:36:13', '0000-00-00 00:00:00'),
(42, 1, 21, '2016-07-18 18:36:13', '2016-07-18 18:36:13', '0000-00-00 00:00:00'),
(43, 2, 22, '2016-07-18 18:36:13', '2016-07-18 18:36:13', '0000-00-00 00:00:00'),
(44, 1, 22, '2016-07-18 18:36:13', '2016-07-18 18:36:13', '0000-00-00 00:00:00'),
(45, 2, 23, '2016-07-18 18:36:14', '2016-07-18 18:36:14', '0000-00-00 00:00:00'),
(46, 1, 23, '2016-07-18 18:36:14', '2016-07-18 18:36:14', '0000-00-00 00:00:00'),
(47, 1, 24, '2016-07-18 18:36:14', '2016-07-18 18:36:14', '0000-00-00 00:00:00'),
(48, 2, 24, '2016-07-18 18:36:14', '2016-07-18 18:36:14', '0000-00-00 00:00:00'),
(49, 2, 25, '2016-07-18 18:36:15', '2016-07-18 18:36:15', '0000-00-00 00:00:00'),
(50, 1, 25, '2016-07-18 18:36:15', '2016-07-18 18:36:15', '0000-00-00 00:00:00'),
(51, 2, 26, '2016-07-18 18:36:16', '2016-07-18 18:36:16', '0000-00-00 00:00:00'),
(52, 1, 26, '2016-07-18 18:36:16', '2016-07-18 18:36:16', '0000-00-00 00:00:00'),
(53, 2, 27, '2016-07-18 18:36:16', '2016-07-18 18:36:16', '0000-00-00 00:00:00'),
(54, 1, 27, '2016-07-18 18:36:16', '2016-07-18 18:36:16', '0000-00-00 00:00:00'),
(55, 2, 28, '2016-07-18 18:36:17', '2016-07-18 18:36:17', '0000-00-00 00:00:00'),
(56, 1, 28, '2016-07-18 18:36:17', '2016-07-18 18:36:17', '0000-00-00 00:00:00'),
(57, 1, 29, '2016-07-18 18:36:17', '2016-07-18 18:36:17', '0000-00-00 00:00:00'),
(58, 2, 29, '2016-07-18 18:36:17', '2016-07-18 18:36:17', '0000-00-00 00:00:00'),
(59, 1, 30, '2016-07-18 18:36:19', '2016-07-18 18:36:19', '0000-00-00 00:00:00'),
(60, 2, 30, '2016-07-18 18:36:19', '2016-07-18 18:36:19', '0000-00-00 00:00:00'),
(61, 2, 31, '2016-07-18 18:36:21', '2016-07-18 18:36:21', '0000-00-00 00:00:00'),
(62, 1, 31, '2016-07-18 18:36:21', '2016-07-18 18:36:21', '0000-00-00 00:00:00'),
(63, 2, 32, '2016-07-18 18:36:34', '2016-07-18 18:36:34', '0000-00-00 00:00:00'),
(64, 1, 32, '2016-07-18 18:36:34', '2016-07-18 18:36:34', '0000-00-00 00:00:00'),
(65, 1, 33, '2016-07-18 18:36:50', '2016-07-18 18:36:50', '0000-00-00 00:00:00'),
(66, 2, 33, '2016-07-18 18:36:50', '2016-07-18 18:36:50', '0000-00-00 00:00:00'),
(67, 1, 34, '2016-07-18 18:38:18', '2016-07-18 18:38:18', '0000-00-00 00:00:00'),
(68, 2, 34, '2016-07-18 18:38:18', '2016-07-18 18:38:18', '0000-00-00 00:00:00'),
(69, 1, 35, '2016-07-18 18:38:53', '2016-07-18 18:38:53', '0000-00-00 00:00:00'),
(70, 2, 35, '2016-07-18 18:38:53', '2016-07-18 18:38:53', '0000-00-00 00:00:00'),
(71, 1, 36, '2016-07-18 18:40:39', '2016-07-18 18:40:39', '0000-00-00 00:00:00'),
(72, 2, 36, '2016-07-18 18:40:39', '2016-07-18 18:40:39', '0000-00-00 00:00:00'),
(73, 2, 37, '2016-07-18 18:40:42', '2016-07-18 18:40:42', '0000-00-00 00:00:00'),
(74, 1, 37, '2016-07-18 18:40:42', '2016-07-18 18:40:42', '0000-00-00 00:00:00'),
(75, 2, 38, '2016-07-18 18:40:50', '2016-07-18 18:40:50', '0000-00-00 00:00:00'),
(76, 1, 38, '2016-07-18 18:40:50', '2016-07-18 18:40:50', '0000-00-00 00:00:00'),
(77, 1, 39, '2016-07-18 18:40:54', '2016-07-18 18:40:54', '0000-00-00 00:00:00'),
(78, 2, 39, '2016-07-18 18:40:54', '2016-07-18 18:40:54', '0000-00-00 00:00:00'),
(79, 2, 40, '2016-07-18 22:12:04', '2016-07-18 22:12:04', '0000-00-00 00:00:00'),
(80, 1, 40, '2016-07-18 22:12:04', '2016-07-18 22:12:04', '0000-00-00 00:00:00'),
(81, 2, 41, '2016-07-18 22:12:08', '2016-07-18 22:12:08', '0000-00-00 00:00:00'),
(82, 1, 41, '2016-07-18 22:12:08', '2016-07-18 22:12:08', '0000-00-00 00:00:00'),
(83, 2, 42, '2016-07-18 22:12:11', '2016-07-18 22:12:11', '0000-00-00 00:00:00'),
(84, 1, 42, '2016-07-18 22:12:11', '2016-07-18 22:12:11', '0000-00-00 00:00:00'),
(85, 1, 43, '2016-07-18 22:12:41', '2016-07-18 22:12:41', '0000-00-00 00:00:00'),
(86, 2, 43, '2016-07-18 22:12:41', '2016-07-18 22:12:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(10) UNSIGNED NOT NULL,
  `de` int(10) UNSIGNED NOT NULL,
  `mensaje` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mensajes`
--

INSERT INTO `mensajes` (`id`, `de`, `mensaje`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'hola', '2016-07-18 18:33:18', '2016-07-18 18:33:18', NULL),
(2, 2, 'hola', '2016-07-18 18:33:23', '2016-07-18 18:33:23', NULL),
(3, 2, 'hola', '2016-07-18 18:33:26', '2016-07-18 18:33:26', NULL),
(4, 1, 'prueba', '2016-07-18 18:33:33', '2016-07-18 18:33:33', NULL),
(5, 1, 'prueba', '2016-07-18 18:33:35', '2016-07-18 18:33:35', NULL),
(6, 1, 'hola quien eres?', '2016-07-18 18:33:44', '2016-07-18 18:33:44', NULL),
(7, 2, 'mi nombre es prueba', '2016-07-18 18:33:57', '2016-07-18 18:33:57', NULL),
(8, 1, 'por fin termine este chat!', '2016-07-18 18:34:47', '2016-07-18 18:34:47', NULL),
(9, 1, 'a', '2016-07-18 18:35:49', '2016-07-18 18:35:49', NULL),
(10, 1, 'e', '2016-07-18 18:35:50', '2016-07-18 18:35:50', NULL),
(11, 1, 'i', '2016-07-18 18:35:50', '2016-07-18 18:35:50', NULL),
(12, 1, 'o', '2016-07-18 18:35:51', '2016-07-18 18:35:51', NULL),
(13, 1, 'u', '2016-07-18 18:35:51', '2016-07-18 18:35:51', NULL),
(14, 1, '\' or \'1\'=\'1', '2016-07-18 18:36:06', '2016-07-18 18:36:06', NULL),
(15, 1, 's', '2016-07-18 18:36:10', '2016-07-18 18:36:10', NULL),
(16, 1, 's', '2016-07-18 18:36:10', '2016-07-18 18:36:10', NULL),
(17, 1, 's', '2016-07-18 18:36:11', '2016-07-18 18:36:11', NULL),
(18, 1, 's', '2016-07-18 18:36:11', '2016-07-18 18:36:11', NULL),
(19, 1, 'd', '2016-07-18 18:36:12', '2016-07-18 18:36:12', NULL),
(20, 1, 'f', '2016-07-18 18:36:12', '2016-07-18 18:36:12', NULL),
(21, 1, 'h', '2016-07-18 18:36:13', '2016-07-18 18:36:13', NULL),
(22, 1, 'j', '2016-07-18 18:36:13', '2016-07-18 18:36:13', NULL),
(23, 1, 'gv', '2016-07-18 18:36:14', '2016-07-18 18:36:14', NULL),
(24, 1, 'c', '2016-07-18 18:36:14', '2016-07-18 18:36:14', NULL),
(25, 1, 'd', '2016-07-18 18:36:15', '2016-07-18 18:36:15', NULL),
(26, 1, 'gfbfg', '2016-07-18 18:36:16', '2016-07-18 18:36:16', NULL),
(27, 1, 'fg', '2016-07-18 18:36:16', '2016-07-18 18:36:16', NULL),
(28, 1, 'b', '2016-07-18 18:36:17', '2016-07-18 18:36:17', NULL),
(29, 1, 'bfgbfg', '2016-07-18 18:36:17', '2016-07-18 18:36:17', NULL),
(30, 1, 'fgbfgbfg', '2016-07-18 18:36:19', '2016-07-18 18:36:19', NULL),
(31, 2, 'w', '2016-07-18 18:36:21', '2016-07-18 18:36:21', NULL),
(32, 2, 'esta es uan prueba', '2016-07-18 18:36:34', '2016-07-18 18:36:34', NULL),
(33, 1, 'hola mundo', '2016-07-18 18:36:50', '2016-07-18 18:36:50', NULL),
(34, 1, 'ss', '2016-07-18 18:38:18', '2016-07-18 18:38:18', NULL),
(35, 1, 'http://www.google.com/', '2016-07-18 18:38:53', '2016-07-18 18:38:53', NULL),
(36, 1, 'ssss', '2016-07-18 18:40:39', '2016-07-18 18:40:39', NULL),
(37, 2, 'sssssss', '2016-07-18 18:40:42', '2016-07-18 18:40:42', NULL),
(38, 1, 'sdxsx', '2016-07-18 18:40:50', '2016-07-18 18:40:50', NULL),
(39, 2, 'sxsxsx', '2016-07-18 18:40:54', '2016-07-18 18:40:54', NULL),
(40, 2, 'hola', '2016-07-18 22:12:04', '2016-07-18 22:12:04', NULL),
(41, 2, 'sss', '2016-07-18 22:12:08', '2016-07-18 22:12:08', NULL),
(42, 1, 'sdsds', '2016-07-18 22:12:11', '2016-07-18 22:12:11', NULL),
(43, 1, 'esta es una prueba', '2016-07-18 22:12:41', '2016-07-18 22:12:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('04ec708dbafb0363bb5a040fccc6b033ad864bfc', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZWEwRGh4NU1QQzV4cEE3aXpGd3BnZ2VyVDREdzQ2Z3RYbU9YMGd4TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9jaGF0LmRldi9ob21lIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ2ODg3OTkyODtzOjE6ImMiO2k6MTQ2ODg3OTkwNztzOjE6ImwiO3M6MToiMCI7fX0=', 1468879928),
('6a8c033056e9ec1820b21e27e0bba1eab5f35ced', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibjd5VUtCcjhDdDQ0SUhvaDg1RVU1ZkxJR0tldVFXRlYybjR6SFpxQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9jaGF0LmRldi9ob21lIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDY4ODY3MjUwO3M6MToiYyI7aToxNDY4ODU3MjI4O3M6MToibCI7czoxOiIwIjt9fQ==', 1468867250),
('97f0dad8ff40ec56c2a372ff7faf4e853ea88807', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMDEyUmVMZVY4YlpuTlZzMW1tcnNjbU9RWVkzWHdDdm4wSlE2cVdKUyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIwOiJodHRwOi8vY2hhdC5kZXYvaG9tZSI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ2ODg2NzI1NDtzOjE6ImMiO2k6MTQ2ODg2MTA4OTtzOjE6ImwiO3M6MToiMCI7fX0=', 1468867254),
('b38b2aec9404d2dd99cc6d9123d3476e0fc3f8aa', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiU3ZrWFp0NVo4ZlFIb2c0YnlwemhVY2pwVmNLdEQwMDdaVHpYMDFYViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9jaGF0LmRldi9ob21lIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ2ODg3OTk2MTtzOjE6ImMiO2k6MTQ2ODg3OTg4MDtzOjE6ImwiO3M6MToiMCI7fX0=', 1468879961);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jhonny Montoya', 'jhonnymontoya@gmail.com', '$2y$10$AVj3GKAle4vYEc5vfYkSOuNVrQ25L0BoctI0hpGFjPiF7tNjtL3tW', 'Ik7PYsJ4AexpOYMwuA8BhllNeM01r4yz5WtABDrWgnsk61pXYJyuao3P4BjO', '2016-07-14 19:48:37', '2016-07-15 15:59:17'),
(2, 'Usuario de prueba', 'prueba@prueba.com', '$2y$10$j33m6MrOsgnVulK/WckU7egOhBiXj6IQT3/dn6lIdL1eO9AqWuuoe', NULL, '2016-07-15 17:39:56', '2016-07-15 17:39:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `leidos`
--
ALTER TABLE `leidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

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
-- AUTO_INCREMENT for table `leidos`
--
ALTER TABLE `leidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;