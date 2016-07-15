-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 15, 2016 at 10:23 PM
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
(1, 1, 'prueba 1', '2016-07-15 15:27:59', '2016-07-15 15:27:59', NULL),
(2, 1, 'prueba 2', '2016-07-15 15:28:03', '2016-07-15 15:28:03', NULL),
(3, 1, 'prueba 3', '2016-07-15 15:28:06', '2016-07-15 15:28:06', NULL),
(4, 1, 'hola', '2016-07-15 15:28:50', '2016-07-15 15:28:50', NULL),
(5, 1, 'dddd', '2016-07-15 15:28:53', '2016-07-15 15:28:53', NULL),
(6, 1, 'hola', '2016-07-15 15:40:43', '2016-07-15 15:40:43', NULL),
(7, 1, 'prueba', '2016-07-15 15:41:07', '2016-07-15 15:41:07', NULL),
(8, 1, 'prueba', '2016-07-15 15:41:14', '2016-07-15 15:41:14', NULL),
(9, 1, 'prueba', '2016-07-15 15:41:37', '2016-07-15 15:41:37', NULL),
(10, 1, 'prueba', '2016-07-15 15:41:48', '2016-07-15 15:41:48', NULL),
(11, 1, 's', '2016-07-15 16:00:17', '2016-07-15 16:00:17', NULL),
(12, 1, 'esta es una prueba', '2016-07-15 16:16:39', '2016-07-15 16:16:39', NULL),
(13, 1, 'prueba de nuevo mensaje', '2016-07-15 16:16:53', '2016-07-15 16:16:53', NULL),
(14, 1, 'hshshs', '2016-07-15 16:36:00', '2016-07-15 16:36:00', NULL),
(15, 1, 'ssss', '2016-07-15 16:46:04', '2016-07-15 16:46:04', NULL),
(16, 1, 's', '2016-07-15 16:46:07', '2016-07-15 16:46:07', NULL),
(17, 1, 's', '2016-07-15 16:46:08', '2016-07-15 16:46:08', NULL),
(18, 1, 's', '2016-07-15 16:46:09', '2016-07-15 16:46:09', NULL),
(19, 1, 's', '2016-07-15 16:46:10', '2016-07-15 16:46:10', NULL),
(20, 1, 's', '2016-07-15 16:46:10', '2016-07-15 16:46:10', NULL),
(21, 1, 's', '2016-07-15 16:46:11', '2016-07-15 16:46:11', NULL),
(22, 1, 's', '2016-07-15 16:46:12', '2016-07-15 16:46:12', NULL),
(23, 1, 's', '2016-07-15 16:46:12', '2016-07-15 16:46:12', NULL),
(24, 1, 's', '2016-07-15 16:46:13', '2016-07-15 16:46:13', NULL),
(25, 1, 's', '2016-07-15 16:46:14', '2016-07-15 16:46:14', NULL),
(26, 1, 's', '2016-07-15 16:46:14', '2016-07-15 16:46:14', NULL),
(27, 1, 's', '2016-07-15 16:46:15', '2016-07-15 16:46:15', NULL),
(28, 1, 's', '2016-07-15 16:46:15', '2016-07-15 16:46:15', NULL),
(29, 1, 's', '2016-07-15 16:46:16', '2016-07-15 16:46:16', NULL),
(30, 1, 's', '2016-07-15 16:46:17', '2016-07-15 16:46:17', NULL),
(31, 1, 's', '2016-07-15 16:46:17', '2016-07-15 16:46:17', NULL),
(32, 1, 's', '2016-07-15 16:46:18', '2016-07-15 16:46:18', NULL),
(33, 1, 's', '2016-07-15 16:46:18', '2016-07-15 16:46:18', NULL),
(34, 1, 's', '2016-07-15 16:46:19', '2016-07-15 16:46:19', NULL),
(35, 1, 's', '2016-07-15 16:47:50', '2016-07-15 16:47:50', NULL),
(36, 1, 'd', '2016-07-15 16:47:54', '2016-07-15 16:47:54', NULL),
(37, 1, 'hola', '2016-07-15 16:47:58', '2016-07-15 16:47:58', NULL),
(38, 1, 'hola', '2016-07-15 16:48:00', '2016-07-15 16:48:00', NULL),
(39, 1, 'h', '2016-07-15 16:58:43', '2016-07-15 16:58:43', NULL),
(40, 1, 'd', '2016-07-15 16:58:50', '2016-07-15 16:58:50', NULL),
(41, 1, 'd', '2016-07-15 16:58:52', '2016-07-15 16:58:52', NULL),
(42, 1, 'd', '2016-07-15 16:58:54', '2016-07-15 16:58:54', NULL),
(43, 1, 'sss', '2016-07-15 17:00:09', '2016-07-15 17:00:09', NULL),
(44, 1, 'dd', '2016-07-15 17:00:52', '2016-07-15 17:00:52', NULL),
(45, 1, 'd', '2016-07-15 17:00:53', '2016-07-15 17:00:53', NULL),
(46, 1, 'd', '2016-07-15 17:00:53', '2016-07-15 17:00:53', NULL),
(47, 1, 'd', '2016-07-15 17:00:54', '2016-07-15 17:00:54', NULL),
(48, 1, 'd', '2016-07-15 17:00:54', '2016-07-15 17:00:54', NULL),
(49, 1, 'd', '2016-07-15 17:00:55', '2016-07-15 17:00:55', NULL),
(50, 1, 'd', '2016-07-15 17:00:55', '2016-07-15 17:00:55', NULL),
(51, 1, 'hola', '2016-07-15 17:04:25', '2016-07-15 17:04:25', NULL),
(52, 1, 'entonce???', '2016-07-15 17:05:33', '2016-07-15 17:05:33', NULL),
(53, 1, 'entonces?', '2016-07-15 17:05:52', '2016-07-15 17:05:52', NULL),
(54, 1, 'hola', '2016-07-15 17:08:36', '2016-07-15 17:08:36', NULL),
(55, 1, 'hola', '2016-07-15 17:08:53', '2016-07-15 17:08:53', NULL),
(56, 1, 'hola', '2016-07-15 17:08:57', '2016-07-15 17:08:57', NULL),
(57, 1, 'hola', '2016-07-15 17:09:02', '2016-07-15 17:09:02', NULL),
(58, 1, 'hola', '2016-07-15 17:09:04', '2016-07-15 17:09:04', NULL),
(59, 1, 'hola', '2016-07-15 17:13:50', '2016-07-15 17:13:50', NULL),
(60, 1, 'hola', '2016-07-15 17:14:15', '2016-07-15 17:14:15', NULL),
(61, 1, 'dddd', '2016-07-15 17:15:19', '2016-07-15 17:15:19', NULL),
(62, 1, 'hola', '2016-07-15 17:17:05', '2016-07-15 17:17:05', NULL),
(63, 1, 'como estas?', '2016-07-15 17:17:20', '2016-07-15 17:17:20', NULL),
(64, 1, 'que cuentas=', '2016-07-15 17:17:22', '2016-07-15 17:17:22', NULL),
(65, 1, 'hola', '2016-07-15 17:21:06', '2016-07-15 17:21:06', NULL),
(66, 1, 'esta', '2016-07-15 17:21:17', '2016-07-15 17:21:17', NULL),
(67, 1, 'es', '2016-07-15 17:21:18', '2016-07-15 17:21:18', NULL),
(68, 1, 'una', '2016-07-15 17:21:19', '2016-07-15 17:21:19', NULL),
(69, 1, 'prueba', '2016-07-15 17:21:20', '2016-07-15 17:21:20', NULL),
(70, 1, 'esta', '2016-07-15 17:21:38', '2016-07-15 17:21:38', NULL),
(71, 1, 'es', '2016-07-15 17:21:39', '2016-07-15 17:21:39', NULL),
(72, 1, 'hola', '2016-07-15 17:31:17', '2016-07-15 17:31:17', NULL),
(73, 1, 'hola', '2016-07-15 17:31:40', '2016-07-15 17:31:40', NULL),
(74, 1, 'hola', '2016-07-15 17:31:51', '2016-07-15 17:31:51', NULL),
(75, 1, 'prueba de mensaje', '2016-07-15 17:32:10', '2016-07-15 17:32:10', NULL),
(76, 1, 'prueba de mensaje', '2016-07-15 17:32:27', '2016-07-15 17:32:27', NULL),
(77, 1, 'prueba', '2016-07-15 17:33:40', '2016-07-15 17:33:40', NULL),
(78, 1, 'esta es una prueba', '2016-07-15 17:34:11', '2016-07-15 17:34:11', NULL),
(79, 1, 'prueba de mensaje', '2016-07-15 17:34:58', '2016-07-15 17:34:58', NULL),
(80, 1, 'sss', '2016-07-15 17:35:04', '2016-07-15 17:35:04', NULL),
(81, 1, 'dddd', '2016-07-15 17:35:19', '2016-07-15 17:35:19', NULL),
(82, 1, 'dddddd', '2016-07-15 17:35:25', '2016-07-15 17:35:25', NULL),
(83, 1, 'esta es una prueba', '2016-07-15 17:36:55', '2016-07-15 17:36:55', NULL),
(84, 1, 'prueba', '2016-07-15 17:37:09', '2016-07-15 17:37:09', NULL),
(85, 1, 'prueba', '2016-07-15 17:37:17', '2016-07-15 17:37:17', NULL),
(86, 1, 'prueba', '2016-07-15 17:37:29', '2016-07-15 17:37:29', NULL),
(87, 1, 'esta es otra prueba', '2016-07-15 17:37:42', '2016-07-15 17:37:42', NULL),
(88, 1, 'esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una mu', '2016-07-15 17:38:03', '2016-07-15 17:38:03', NULL),
(89, 1, 'esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, esta es una muy larga prueba, ', '2016-07-15 17:38:09', '2016-07-15 17:38:09', NULL),
(90, 2, 'prueba de mensaje', '2016-07-15 17:40:06', '2016-07-15 17:40:06', NULL),
(91, 2, 'prueba de mensaje', '2016-07-15 17:40:16', '2016-07-15 17:40:16', NULL),
(92, 2, 's', '2016-07-15 17:40:27', '2016-07-15 17:40:27', NULL),
(93, 2, 's', '2016-07-15 17:40:28', '2016-07-15 17:40:28', NULL),
(94, 2, 's', '2016-07-15 17:40:28', '2016-07-15 17:40:28', NULL),
(95, 2, 's', '2016-07-15 17:40:29', '2016-07-15 17:40:29', NULL),
(96, 2, 's', '2016-07-15 17:40:30', '2016-07-15 17:40:30', NULL),
(97, 2, 'sd', '2016-07-15 17:40:35', '2016-07-15 17:40:35', NULL),
(98, 2, 'hola', '2016-07-15 17:40:39', '2016-07-15 17:40:39', NULL),
(99, 2, 'hola', '2016-07-15 17:40:42', '2016-07-15 17:40:42', NULL),
(100, 1, 'hola', '2016-07-15 17:40:51', '2016-07-15 17:40:51', NULL),
(101, 1, 'prueba de mensaje', '2016-07-15 18:38:51', '2016-07-15 18:38:51', NULL),
(102, 1, 'por que a veces no salen los mensajes?', '2016-07-15 18:39:06', '2016-07-15 18:39:06', NULL),
(103, 1, 'sss', '2016-07-15 18:39:11', '2016-07-15 18:39:11', NULL),
(104, 2, 'jjj', '2016-07-15 19:13:05', '2016-07-15 19:13:05', NULL);

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
('2910833a3e422e6864d65d2cd4625c55614677b3', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRUxWWWRZZ0NuZzk3M1JoUEZib0FmcndiSnQ4V2t5V0pNWG5hUUtFMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9jaGF0LmRldi9ob21lIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDY4NjA5OTg1O3M6MToiYyI7aToxNDY4NjA0MzcyO3M6MToibCI7czoxOiIwIjt9fQ==', 1468609985),
('2fc277ba8d1678855c31167c9b2a493b5e9ef467', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZVptQVhrSUJ0QnU0d2plSEpSYnBzS2JkUGlHWmI5dllxMnNFYUpEaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9jaGF0LmRldi9ob21lIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ2ODYwNzk1MTtzOjE6ImMiO2k6MTQ2ODU5NjQ1MDtzOjE6ImwiO3M6MToiMCI7fX0=', 1468607951),
('eb3c876a51a86f4c22b57ab176225e7ae4cab8f0', NULL, NULL, NULL, 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVhQUUNKdVpyZlJUV3l6YU5HMHhpU21JanZ4MVE4ajV6S1J2WTZVWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vamZtb250b3lhLmNlbnRyYWwuY29uY29sLmNvbSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDY4NjAyODk0O3M6MToiYyI7aToxNDY4NjAyODk0O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1468602894);

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
-- AUTO_INCREMENT for table `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;