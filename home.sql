-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 11:21 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_12_08_004535_create_products_table', 1),
(8, '2018_12_08_004638_create_offers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `money` int(10) UNSIGNED NOT NULL,
  `offer_active` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `money`, `offer_active`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(9, 44444, 0, 1, 3, '2018-12-08 19:54:28', '2018-12-08 19:54:41'),
(10, 22222222, 0, 1, 3, '2018-12-08 20:04:14', '2018-12-08 20:09:12'),
(12, 6666, 1, 2, 1, '2018-12-09 13:15:22', '2018-12-09 13:15:22'),
(13, 8888, 1, 2, 3, '2018-12-09 13:15:50', '2018-12-09 13:15:50'),
(14, 68, 1, 2, 5, '2018-12-09 13:16:08', '2018-12-09 13:16:08'),
(15, 7709, 1, 2, 6, '2018-12-09 13:16:27', '2018-12-09 13:16:27'),
(16, 101, 1, 2, 7, '2018-12-09 13:16:43', '2018-12-09 13:16:43'),
(17, 666, 1, 3, 9, '2018-12-09 13:19:50', '2018-12-09 13:19:50'),
(18, 500, 1, 3, 10, '2018-12-09 13:20:13', '2018-12-09 13:20:13'),
(19, 150, 1, 3, 11, '2018-12-09 13:20:37', '2018-12-09 13:20:37'),
(20, 4448, 1, 1, 1, '2018-12-09 13:28:41', '2018-12-09 13:28:41'),
(21, 88888, 1, 1, 3, '2018-12-09 13:28:57', '2018-12-09 13:28:57'),
(22, 90, 1, 1, 5, '2018-12-09 13:29:16', '2018-12-09 13:29:16'),
(23, 1002, 1, 1, 6, '2018-12-09 13:29:33', '2018-12-09 13:29:33'),
(24, 444, 1, 1, 7, '2018-12-09 13:29:48', '2018-12-09 13:29:48'),
(25, 603, 1, 1, 9, '2018-12-09 13:30:13', '2018-12-09 13:30:13'),
(26, 488, 1, 1, 10, '2018-12-09 13:30:35', '2018-12-09 13:30:35'),
(27, 222, 1, 1, 11, '2018-12-09 13:30:55', '2018-12-09 13:30:55'),
(28, 700, 1, 3, 14, '2018-12-09 13:31:42', '2018-12-09 13:31:42'),
(29, 300, 1, 3, 13, '2018-12-09 13:31:56', '2018-12-09 13:31:56'),
(30, 3333, 1, 3, 12, '2018-12-09 13:32:21', '2018-12-09 13:32:21'),
(31, 900, 1, 2, 14, '2018-12-09 13:34:46', '2018-12-09 13:34:46'),
(32, 500, 1, 2, 13, '2018-12-09 13:34:58', '2018-12-09 13:34:58'),
(33, 50000, 1, 2, 12, '2018-12-09 13:35:27', '2018-12-09 13:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_price` int(10) UNSIGNED NOT NULL,
  `product_delivery` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_active` tinyint(1) NOT NULL DEFAULT '1',
  `payment_choice` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `start_price`, `product_delivery`, `featured`, `product_active`, `payment_choice`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kurs', 'php', 1000, 'internet', 'uploads/students/1544268168php.gif', 1, 'licno', 3, '2018-12-08 10:22:48', '2018-12-08 10:22:48'),
(3, 'Kurs', 'javascript', 2222, 'internet', 'uploads/students/1544268222og.jpg', 1, 'licno', 3, '2018-12-08 10:23:42', '2018-12-08 10:23:42'),
(5, 'upaljac', 'pali', 55, 'licno', NULL, 1, 'licno', 3, '2018-12-09 12:58:10', '2018-12-09 12:58:10'),
(6, 'tegovi', 'teski', 1000, 'internet', NULL, 1, 'licno', 3, '2018-12-09 13:05:14', '2018-12-09 13:05:14'),
(7, 'kafa', 'c', 100, 'prodavnica', NULL, 1, 'novac', 3, '2018-12-09 13:05:57', '2018-12-09 13:05:57'),
(9, 'metla', 'leteca', 558, 'licno', 'uploads/students/1544364820leteca_metla.png', 1, 'licno', 2, '2018-12-09 13:13:40', '2018-12-09 13:13:40'),
(10, 'kocka', 'kockasta', 487, 'internet', 'uploads/students/1544364897kocka.png', 1, 'licno', 2, '2018-12-09 13:14:57', '2018-12-09 13:14:57'),
(11, 'mozak', 'los', 122, 'bolnica', 'uploads/students/1544365106mozak.png', 1, 'novac', 2, '2018-12-09 13:18:26', '2018-12-09 13:18:26'),
(12, 'figura', 'umetnost', 2255, 'internet', 'uploads/students/1544365614umetnicko_delo.jpg', 1, 'banka', 1, '2018-12-09 13:26:54', '2018-12-09 13:26:54'),
(13, 'sat', 'kuca', 238, 'internet', 'uploads/students/1544365653sat.jpg', 1, 'novac', 1, '2018-12-09 13:27:33', '2018-12-09 13:27:33'),
(14, 'Vucjak', 'opasan', 688, 'licno', 'uploads/students/1544365705Vucjak-990x665.jpg', 1, 'novac', 1, '2018-12-09 13:28:25', '2018-12-09 13:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marija', 'Pavlovic', 'misko.vestica@gmail.com', NULL, '$2y$10$B9nLRbdR4.FAwrGO8DSVzexXSMsach9HGlRfvUk1E0WZ.ITYgxmAy', 'XZWm4oJQlmDM7xT8ViFqgQ1kVXS3LmU6G8DnhM1gRUDRqyAHEvE56qmcs3Wg', '2018-12-08 10:21:16', '2018-12-10 12:15:22'),
(2, 'Srecko', 'Zdravkovic', 'paja_yu@yahoo.com', NULL, '$2y$10$28oDuyWb8HdbCLN72irpyeUZOed/BkLHljCGcq8LdX9Jr00huUu2K', 'bcjBNR7ukyDYxl1GS2GzCf8VJ2wlZ894k7eYgesdNrHFl9MEfVKW6LUw1P9k', '2018-12-08 10:21:44', '2018-12-08 10:21:44'),
(3, 'Nikola', 'Nikolic', 'nikola.nikolic@yahoo.com', NULL, '$2y$10$y80fwaHdNaUgHY/3Dyg0Lu1cnUrVCKZUwD5mSP/05ZghDu.BD7ssG', 'rUMDtjqcDzT4bW4bhhVKkMN6Dogy4dBHZKKBnh1Kbf8UN7xdlRBdyaVnP8Xh', '2018-12-08 10:22:07', '2018-12-08 10:22:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_user_id_foreign` (`user_id`),
  ADD KEY `offers_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
