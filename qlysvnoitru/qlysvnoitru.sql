-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 03:05 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlysvnoitru`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_090221_create_rooms_table', 1),
(4, '2018_11_07_090155_create_students_table', 1),
(5, '2018_11_08_090320_create_payments_table', 1);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `type_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `price`, `method`, `student_id`, `room_id`, `type_payment`, `date`, `created_at`, `updated_at`) VALUES
(2, 1900, 'cash', 3, 3, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(3, 1900, 'cash', 9, 1, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(4, 1900, 'cash', 6, 4, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(5, 1900, 'cash', 4, 3, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(6, 1900, 'cash', 3, 1, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(7, 1900, 'cash', 3, 9, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(9, 1900, 'cash', 6, 4, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(10, 1900, 'cash', 7, 9, 'tiền phòng', '2018-11-20 03:39:25', '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(11, 500000, 'cash', 3, NULL, 'tiền phòng', '2018-11-20 10:51:44', '2018-11-20 03:51:44', '2018-11-20 03:51:44'),
(15, 1200000, 'atm', NULL, 3, 'tiền nước', '2018-11-20 11:03:25', '2018-11-20 04:03:25', '2018-11-20 04:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_bed` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `water_price` int(11) NOT NULL,
  `electric_price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `image`, `number_bed`, `price`, `water_price`, `electric_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tyreek Hamill Sr.', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(2, 'Reta Cremin', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(3, 'Prof. Roslyn Emmerich', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(4, 'Jaiden Predovic', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(5, 'Mrs. Emely Brown Jr.', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(6, 'Carleton McClure Jr.', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(7, 'Dejon Ondricka', '', 9, 8, 2000, 1200, 0, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(8, 'Earnest Greenholt MD', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(9, 'Kyle Osinski', '', 2000, 2000, 2002, 1200, 1, '2018-11-19 20:39:24', '2018-11-20 02:08:57'),
(10, 'Jazmyn Hettinger', '', 9, 8, 2000, 1200, 1, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(11, 'P101', 'admin_asset/img/imgroom/d9dfbe67fbcbbd07384f8675a334f2b77adee4c0VW.jpg', 5, 900000, 0, 0, 1, '2018-11-20 02:04:15', '2018-11-20 03:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `birth_of_date` date NOT NULL,
  `id_card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `gender`, `avatar`, `status`, `note`, `birth_of_date`, `id_card`, `room_id`, `created_at`, `updated_at`) VALUES
(2, 'Heath Altenwerth DDS', 18, 1, '', 1, '', '2018-07-18', '50346359', 2, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(3, 'Gladyce Sauer', 18, 1, '', 0, '', '2018-07-18', '50346359', 7, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(4, 'Mr. Otis Wiza', 18, 1, '', 0, '', '2018-07-18', '50346359', 7, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(5, 'Rafaela Bednar', 18, 1, '', 1, '', '2018-07-18', '50346359', 9, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(6, 'Layla Kutch', 18, 1, '', 1, '', '2018-07-18', '50346359', 2, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(7, 'Mireya Parker', 18, 1, '', 1, '', '2018-07-18', '50346359', 6, '2018-11-19 20:39:24', '2018-11-19 20:39:24'),
(8, 'Santa Wolff', 18, 1, '', 1, '', '2018-07-18', '50346359', 2, '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(9, 'Dimitri Blanda', 18, 1, '', 1, '', '2018-07-18', '50346359', 5, '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(10, 'Mrs. Winnifred Walker', 18, 1, '', 1, '', '2018-07-18', '50346359', 6, '2018-11-19 20:39:25', '2018-11-19 20:39:25'),
(11, 'Đinh Thành An', 21, 1, 'admin_asset/img/imgsv/4f8fbb581cc05b112339c14ad78485ec9a5bc6294z.jpg', 1, 'Quê Bắc Ninh', '1998-07-09', '67DCHT2001', 11, '2018-11-20 02:05:40', '2018-11-20 02:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `gender`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'dangsy1998@gmail.com', 'admin_asset/img/fa5562f0c44fbc55662a3245eba22cfae7322ed7VC.JPG', '$2y$10$wSO3MB3YcsSujTZoeu4jGOG3Do//g7CpIGiOE.eUl/bkl.52zHo0q', 1, 1, '7v7kUTIgnK5Rz2GvcHGRFZcB8YezisuFQHd8BSZUjl6bdSZ3IDER2EzqEXnm', '2018-11-19 20:48:57', '2018-11-20 01:04:07');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_student_id_foreign` (`student_id`),
  ADD KEY `payments_room_id_foreign` (`room_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_room_id_foreign` (`room_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
