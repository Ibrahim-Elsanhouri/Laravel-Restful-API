-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 فبراير 2019 الساعة 09:06
-- إصدار الخادم: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larajwt`
--

-- --------------------------------------------------------

--
-- بنية الجدول `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `books`
--

INSERT INTO `books` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(6, 'Laravel JWT API Tokens', 'Laravel Restful very imortant and advance Topic', '2018-12-29 06:57:24', '2018-12-29 07:05:13'),
(8, 'Learn Ionic 4', 'learn ionic 4 is very good', '2018-12-29 07:19:06', '2019-02-08 10:24:47'),
(9, 'book insert', 'book insert details', '2019-02-08 11:49:12', '2019-02-08 11:49:12'),
(10, 'Laravel Testing', 'Laravel Testing TDD', '2019-02-08 11:51:19', '2019-02-08 11:51:19'),
(11, 'New Book after surve', 'what happend', '2019-02-23 11:13:36', '2019-02-23 11:13:36'),
(12, 'Again', 'Again and Again', '2019-02-23 11:15:03', '2019-02-23 11:15:03'),
(13, 'ccc', 'cccccccccccccccccccc', '2019-02-23 13:24:07', '2019-02-23 13:24:07'),
(14, 'eeeeeeeee', 'cccccccccccccccccccc', '2019-02-23 13:24:17', '2019-02-23 13:24:17'),
(15, 'post', 'post is working well', '2019-02-23 14:57:28', '2019-02-23 14:57:28'),
(16, 'fd', 'jjjjjjjjjjjjjjjjjjjj', '2019-02-23 15:00:36', '2019-02-23 15:00:36'),
(17, 'fd', 'jjjjjjjjjjjjjjjjjjjj', '2019-02-23 15:00:50', '2019-02-23 15:00:50'),
(18, 'mmmmmmmmmmmm', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmm', '2019-02-23 15:01:16', '2019-02-23 15:01:16'),
(19, 'mm', 'iiiiiiiiii', '2019-02-23 15:03:31', '2019-02-23 15:03:31'),
(20, 'kkkkkkkkknono', 'bgvrfcedxwsdcefvgrbthnyjumki,lo.;p/\'[p;.ol,ikmunjhbtgvrcfedxws', '2019-02-23 15:33:37', '2019-02-23 15:33:37');

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_22_145122_create_books_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ibrahim Elsanhouri', 'ibrahimelsanhouri@gmail.com', NULL, '$2y$10$1goy1kljqQE3o9JaTuz5FeHed8OMt4s6hzFgn3iyJDjURaKUdSneq', NULL, '2018-12-22 04:40:43', '2018-12-22 04:40:43'),
(2, 'Ibaa Adam Hamdan', 'ibaa@gmail.com', NULL, '$2y$10$V9.ewkrhWptc9rjkFl5cC.za0zb4ApM76idzDBhbewAR12ZxgFPbG', NULL, '2018-12-22 07:25:48', '2018-12-22 07:25:48'),
(3, 'Ibaa Adam', 'ibaa95@gmail.com', NULL, '$2y$10$Md52XPTCeG2vYG.dEDeZG.HYPhmgD0P3/pK7urp4GhkV5U84BHTpa', NULL, '2018-12-25 04:49:42', '2018-12-25 04:49:42'),
(4, 'ionic user', 'ionic@ionic.com', NULL, '$2y$10$wEqpDpuvJf6B5U.qCm.yy.qZNYY0sYvDYdiLK56GT1qpRHzhJg0Ai', NULL, '2018-12-27 02:56:20', '2018-12-27 02:56:20'),
(6, 'New Ionic User', 'newionic@ionic.com', NULL, '$2y$10$1dHqwslEiuLZnnw3cRILxed0QTHX3QpaqsHIqecNoXuQ3DKuw8oyy', NULL, '2018-12-27 02:57:08', '2018-12-27 02:57:08'),
(7, 'Muhammed Essa', 'muhammedessa@gmail.com', NULL, '$2y$10$bTzR0F4W0iFGIY7qGxK6aOOvW/8RfnByHp/egIMxzp8Bv.hE7AtHW', NULL, '2018-12-27 02:58:32', '2018-12-27 02:58:32'),
(8, 'Mayar', 'mayar@gmail.com', NULL, '$2y$10$rKigY70Dpg4VjIk4cni2PO6cb61IxpRaVu2KHnYfpH10EMAb0JKFy', NULL, '2018-12-27 03:18:58', '2018-12-27 03:18:58'),
(9, 'middleware test', 'test@test.com', NULL, '$2y$10$gnRd6BM8fZndHjCrznQbZuWu/rNMlJgSZ3Cl0BcolGbl7RYk/RQh.', NULL, '2018-12-27 03:26:26', '2018-12-27 03:26:26'),
(10, 'laravel', 'laravel@laravel.com', NULL, '$2y$10$rWpb2oJA4waNLA3PKkVYNe2jdxZFSEN49vi9gwBp2ajXEv/Zf83Z6', NULL, '2019-02-08 04:58:34', '2019-02-08 04:58:34'),
(11, 'ofof', 'ofof@gmail.com', NULL, '$2y$10$5QoYSof3AeDtCjCPYrAlGOWcePBTAnptXWz18S77tLxKOhTUAWqLe', NULL, '2019-02-23 11:17:58', '2019-02-23 11:17:58'),
(14, 'gerrard', 'gerrard@hotmail.com', NULL, '$2y$10$R9FbwPDJTwZ4wSyRt0kHr.QeKnCGv00wxK5.IKSoG57YXJXSAHXcm', NULL, '2019-02-23 11:44:57', '2019-02-23 11:44:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
