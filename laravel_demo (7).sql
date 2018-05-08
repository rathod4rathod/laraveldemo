-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2018 at 02:48 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.1.17-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` int(11) UNSIGNED NOT NULL,
  `pixel_tracker_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`id`, `pixel_tracker_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 11, 1, '2017-12-14 04:06:33', '2017-12-14 04:06:33'),
(6, 13, 1, '2017-12-18 01:23:11', '2017-12-18 01:23:11'),
(8, 15, 8, '2018-03-20 07:54:03', '2018-03-20 07:54:03'),
(13, 20, 9, '2018-03-21 23:40:58', '2018-03-21 23:40:58'),
(15, 22, 8, '2018-03-22 00:18:05', '2018-03-22 00:18:05'),
(16, 23, 9, '2018-03-22 00:47:11', '2018-03-22 00:47:11'),
(17, 24, 9, '2018-03-22 01:28:02', '2018-03-22 01:28:02'),
(18, 25, 9, '2018-03-22 03:10:57', '2018-03-22 03:10:57'),
(19, 26, 9, '2018-03-22 03:12:39', '2018-03-22 03:12:39'),
(20, 27, 9, '2018-03-22 05:37:41', '2018-03-22 05:37:41'),
(21, 28, 9, '2018-03-22 05:45:19', '2018-03-22 05:45:19'),
(22, 29, 9, '2018-03-22 06:11:44', '2018-03-22 06:11:44'),
(23, 30, 9, '2018-03-22 06:12:08', '2018-03-22 06:12:08'),
(24, 31, 9, '2018-03-22 06:12:49', '2018-03-22 06:12:49'),
(25, 32, 9, '2018-03-22 06:13:44', '2018-03-22 06:13:44'),
(26, 33, 9, '2018-03-22 06:14:13', '2018-03-22 06:14:13'),
(27, 34, 9, '2018-03-22 06:16:33', '2018-03-22 06:16:33'),
(28, 35, 9, '2018-03-22 06:25:52', '2018-03-22 06:25:52'),
(29, 36, 9, '2018-03-23 05:25:06', '2018-03-23 05:25:06'),
(30, 37, 9, '2018-03-23 07:02:23', '2018-03-23 07:02:23'),
(31, 38, 9, '2018-03-23 07:15:20', '2018-03-23 07:15:20'),
(32, 39, 9, '2018-03-23 07:17:51', '2018-03-23 07:17:51'),
(33, 40, 9, '2018-03-23 07:18:12', '2018-03-23 07:18:12'),
(34, 41, 9, '2018-03-23 07:25:07', '2018-03-23 07:25:07'),
(35, 42, 9, '2018-03-23 07:25:55', '2018-03-23 07:25:55'),
(36, 43, 9, '2018-03-23 07:30:15', '2018-03-23 07:30:15'),
(37, 44, 9, '2018-03-23 07:31:41', '2018-03-23 07:31:41'),
(38, 45, 9, '2018-04-30 07:48:07', '2018-04-30 07:48:07'),
(39, 46, 9, '2018-05-01 04:56:10', '2018-05-01 04:56:10'),
(40, 47, 9, '2018-05-01 07:13:58', '2018-05-01 07:13:58'),
(41, 48, 9, '2018-05-01 07:18:00', '2018-05-01 07:18:00'),
(42, 49, 9, '2018-05-01 07:23:59', '2018-05-01 07:23:59'),
(43, 50, 9, '2018-05-01 07:28:49', '2018-05-01 07:28:49'),
(44, 51, 9, '2018-05-01 07:32:42', '2018-05-01 07:32:42'),
(45, 52, 9, '2018-05-01 07:35:36', '2018-05-01 07:35:36'),
(46, 53, 9, '2018-05-01 07:37:48', '2018-05-01 07:37:48'),
(47, 54, 9, '2018-05-01 08:04:26', '2018-05-01 08:04:26'),
(48, 55, 9, '2018-05-01 08:06:48', '2018-05-01 08:06:48'),
(49, 56, 9, '2018-05-01 08:08:24', '2018-05-01 08:08:24'),
(50, 57, 9, '2018-05-01 08:15:26', '2018-05-01 08:15:26'),
(51, 58, 9, '2018-05-01 08:20:21', '2018-05-01 08:20:21'),
(52, 59, 9, '2018-05-01 08:34:51', '2018-05-01 08:34:51'),
(53, 60, 9, '2018-05-01 09:00:03', '2018-05-01 09:00:03'),
(54, 61, 9, '2018-05-01 09:49:32', '2018-05-01 09:49:32'),
(55, 62, 9, '2018-05-01 09:50:51', '2018-05-01 09:50:51'),
(56, 63, 9, '2018-05-01 10:24:10', '2018-05-01 10:24:10'),
(57, 64, 9, '2018-05-01 10:25:05', '2018-05-01 10:25:05'),
(58, 65, 9, '2018-05-01 10:26:00', '2018-05-01 10:26:00'),
(59, 66, 9, '2018-05-01 10:28:07', '2018-05-01 10:28:07'),
(60, 67, 9, '2018-05-01 10:30:23', '2018-05-01 10:30:23'),
(61, 68, 9, '2018-05-01 10:32:50', '2018-05-01 10:32:50'),
(62, 69, 9, '2018-05-01 10:35:56', '2018-05-01 10:35:56'),
(63, 70, 9, '2018-05-01 10:37:50', '2018-05-01 10:37:50'),
(64, 71, 9, '2018-05-01 10:38:41', '2018-05-01 10:38:41'),
(65, 72, 9, '2018-05-01 10:40:35', '2018-05-01 10:40:35'),
(66, 73, 9, '2018-05-01 10:41:20', '2018-05-01 10:41:20'),
(67, 74, 9, '2018-05-01 10:45:59', '2018-05-01 10:45:59'),
(68, 75, 9, '2018-05-01 10:50:03', '2018-05-01 10:50:03'),
(69, 76, 9, '2018-05-01 10:52:04', '2018-05-01 10:52:04'),
(70, 77, 9, '2018-05-01 10:54:53', '2018-05-01 10:54:53'),
(71, 78, 9, '2018-05-01 10:55:30', '2018-05-01 10:55:30'),
(72, 79, 9, '2018-05-01 10:57:19', '2018-05-01 10:57:19'),
(73, 80, 9, '2018-05-01 10:59:37', '2018-05-01 10:59:37'),
(74, 81, 9, '2018-05-01 11:00:18', '2018-05-01 11:00:18'),
(75, 82, 9, '2018-05-01 11:00:49', '2018-05-01 11:00:49'),
(76, 83, 9, '2018-05-01 11:02:52', '2018-05-01 11:02:52'),
(77, 84, 9, '2018-05-01 11:03:10', '2018-05-01 11:03:10'),
(78, 85, 9, '2018-05-01 11:04:29', '2018-05-01 11:04:29'),
(79, 86, 9, '2018-05-01 11:05:05', '2018-05-01 11:05:05'),
(80, 87, 9, '2018-05-01 11:07:57', '2018-05-01 11:07:57'),
(81, 88, 9, '2018-05-01 11:08:38', '2018-05-01 11:08:38'),
(82, 89, 9, '2018-05-01 11:11:59', '2018-05-01 11:11:59'),
(83, 90, 9, '2018-05-01 11:12:49', '2018-05-01 11:12:49'),
(84, 91, 9, '2018-05-01 11:13:07', '2018-05-01 11:13:07'),
(85, 92, 9, '2018-05-01 11:13:51', '2018-05-01 11:13:51'),
(86, 93, 9, '2018-05-01 11:15:48', '2018-05-01 11:15:48'),
(87, 94, 9, '2018-05-01 11:20:06', '2018-05-01 11:20:06'),
(88, 95, 9, '2018-05-01 11:20:51', '2018-05-01 11:20:51'),
(89, 96, 9, '2018-05-01 11:21:50', '2018-05-01 11:21:50'),
(90, 97, 9, '2018-05-01 11:24:45', '2018-05-01 11:24:45'),
(91, 98, 9, '2018-05-01 11:26:26', '2018-05-01 11:26:26'),
(92, 99, 9, '2018-05-01 11:29:18', '2018-05-01 11:29:18'),
(93, 100, 9, '2018-05-01 11:29:34', '2018-05-01 11:29:34'),
(94, 101, 9, '2018-05-01 11:31:30', '2018-05-01 11:31:30'),
(95, 102, 9, '2018-05-01 11:32:36', '2018-05-01 11:32:36'),
(96, 103, 9, '2018-05-01 11:34:05', '2018-05-01 11:34:05'),
(97, 104, 9, '2018-05-01 11:35:50', '2018-05-01 11:35:50'),
(98, 105, 9, '2018-05-01 11:36:51', '2018-05-01 11:36:51'),
(99, 106, 9, '2018-05-01 11:40:39', '2018-05-01 11:40:39'),
(100, 107, 9, '2018-05-01 11:40:59', '2018-05-01 11:40:59'),
(101, 108, 9, '2018-05-01 11:41:04', '2018-05-01 11:41:04'),
(102, 109, 9, '2018-05-01 11:42:26', '2018-05-01 11:42:26'),
(103, 110, 9, '2018-05-01 11:43:58', '2018-05-01 11:43:58'),
(104, 111, 9, '2018-05-01 11:45:31', '2018-05-01 11:45:31'),
(105, 112, 9, '2018-05-01 11:54:02', '2018-05-01 11:54:02'),
(106, 113, 9, '2018-05-01 11:55:22', '2018-05-01 11:55:22'),
(107, 114, 9, '2018-05-01 12:01:56', '2018-05-01 12:01:56'),
(108, 115, 9, '2018-05-01 12:03:14', '2018-05-01 12:03:14'),
(109, 116, 9, '2018-05-01 12:04:49', '2018-05-01 12:04:49'),
(110, 117, 9, '2018-05-01 12:10:36', '2018-05-01 12:10:36'),
(111, 118, 9, '2018-05-01 12:19:25', '2018-05-01 12:19:25'),
(112, 119, 9, '2018-05-01 12:24:16', '2018-05-01 12:24:16'),
(113, 120, 9, '2018-05-01 12:41:57', '2018-05-01 12:41:57'),
(114, 121, 9, '2018-05-01 12:45:02', '2018-05-01 12:45:02'),
(115, 122, 9, '2018-05-01 12:48:36', '2018-05-01 12:48:36'),
(116, 123, 9, '2018-05-01 12:49:48', '2018-05-01 12:49:48'),
(117, 124, 9, '2018-05-01 12:51:56', '2018-05-01 12:51:56'),
(118, 125, 9, '2018-05-01 12:53:12', '2018-05-01 12:53:12'),
(119, 126, 9, '2018-05-01 12:53:33', '2018-05-01 12:53:33'),
(120, 127, 9, '2018-05-01 12:54:36', '2018-05-01 12:54:36'),
(121, 128, 9, '2018-05-01 12:55:48', '2018-05-01 12:55:48'),
(122, 129, 9, '2018-05-01 13:18:15', '2018-05-01 13:18:15'),
(123, 130, 9, '2018-05-01 13:23:03', '2018-05-01 13:23:03'),
(124, 131, 9, '2018-05-01 13:29:45', '2018-05-01 13:29:45'),
(125, 132, 9, '2018-05-02 04:04:02', '2018-05-02 04:04:02'),
(126, 133, 9, '2018-05-02 04:05:24', '2018-05-02 04:05:24'),
(127, 134, 9, '2018-05-02 04:09:58', '2018-05-02 04:09:58'),
(128, 135, 9, '2018-05-02 06:18:06', '2018-05-02 06:18:06'),
(129, 136, 9, '2018-05-02 07:05:17', '2018-05-02 07:05:17'),
(130, 137, 9, '2018-05-03 07:10:48', '2018-05-03 07:10:48'),
(131, 138, 9, '2018-05-03 07:11:43', '2018-05-03 07:11:43'),
(132, 139, 9, '2018-05-03 07:13:39', '2018-05-03 07:13:39'),
(133, 140, 9, '2018-05-03 07:16:05', '2018-05-03 07:16:05'),
(134, 141, 9, '2018-05-03 07:17:54', '2018-05-03 07:17:54'),
(135, 142, 9, '2018-05-03 07:19:29', '2018-05-03 07:19:29'),
(136, 143, 9, '2018-05-03 07:21:18', '2018-05-03 07:21:18'),
(137, 144, 9, '2018-05-03 07:23:47', '2018-05-03 07:23:47'),
(138, 145, 9, '2018-05-03 07:36:55', '2018-05-03 07:36:55'),
(139, 146, 9, '2018-05-03 09:03:21', '2018-05-03 09:03:21'),
(140, 147, 9, '2018-05-03 09:22:14', '2018-05-03 09:22:14'),
(141, 148, 10, '2018-05-03 10:49:34', '2018-05-03 10:49:34'),
(142, 149, 10, '2018-05-03 10:59:44', '2018-05-03 10:59:44'),
(143, 150, 10, '2018-05-03 11:04:16', '2018-05-03 11:04:16'),
(144, 151, 10, '2018-05-03 11:07:11', '2018-05-03 11:07:11'),
(145, 152, 9, '2018-05-03 13:34:26', '2018-05-03 13:34:26'),
(146, 153, 10, '2018-05-04 07:33:35', '2018-05-04 07:33:35'),
(147, 154, 10, '2018-05-04 12:55:55', '2018-05-04 12:55:55'),
(148, 155, 10, '2018-05-04 13:56:18', '2018-05-04 13:56:18'),
(149, 156, 10, '2018-05-07 05:11:52', '2018-05-07 05:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `analytic_details`
--

CREATE TABLE `analytic_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `analytic_id` int(10) UNSIGNED NOT NULL,
  `engagement_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'read',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'open',
  `operating_system` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reading_environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_date` timestamp NULL DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ua_string` text COLLATE utf8_unicode_ci,
  `open_duration` float DEFAULT '0',
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `analytic_details`
--

INSERT INTO `analytic_details` (`id`, `analytic_id`, `engagement_type`, `status`, `operating_system`, `os_version`, `browser`, `browser_version`, `reading_environment`, `ip_address`, `open_date`, `state`, `state_iso`, `country`, `country_iso`, `city`, `postal_code`, `timezone`, `email`, `ua_string`, `open_duration`, `latitude`, `longitude`, `contact_id`, `created_at`, `updated_at`) VALUES
(8, 4, 'skim read', 'open', 'Linux', '', 'Chrome', '59.0.3071.115', 'desktop', '192.168.1.63', '2017-12-14 04:06:39', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 2.15616, '0.00000000', '0.00000000', 1, '2017-12-14 04:06:40', '2017-12-14 04:06:42'),
(9, 4, 'deleted', 'open', 'Linux', '', 'Chrome', '59.0.3071.115', 'desktop', '192.168.1.63', '2017-12-14 04:28:29', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1.66744, '0.00000000', '0.00000000', 1, '2017-12-14 04:28:29', '2017-12-14 04:28:30'),
(10, 4, 'deleted', 'open', 'Linux', '', 'Chrome', '59.0.3071.115', 'desktop', '192.168.1.63', '2017-12-14 04:28:34', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1.00171, '0.00000000', '0.00000000', 1, '2017-12-14 04:28:34', '2017-12-14 04:28:35'),
(11, 6, 'read', 'forward', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 01:24:56', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.1871, '0.00000000', '0.00000000', 2, '2017-12-18 01:24:56', '2017-12-18 01:25:21'),
(12, 6, 'read', 'forward', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 01:26:01', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.1974, '0.00000000', '0.00000000', 2, '2017-12-18 01:26:01', '2017-12-18 01:26:27'),
(13, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 01:54:53', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.0718, '0.00000000', '0.00000000', 2, '2017-12-18 01:54:54', '2017-12-18 01:55:18'),
(14, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 01:58:30', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.0773, '0.00000000', '0.00000000', 2, '2017-12-18 01:58:31', '2017-12-18 01:58:55'),
(15, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 01:58:56', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 23.1867, '0.00000000', '0.00000000', 2, '2017-12-18 01:58:56', '2017-12-18 01:59:19'),
(16, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 01:59:18', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 10.2405, '0.00000000', '0.00000000', 2, '2017-12-18 01:59:18', '2017-12-18 01:59:28'),
(17, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 02:58:30', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.0365, '0.00000000', '0.00000000', 2, '2017-12-18 02:58:34', '2017-12-18 02:58:55'),
(18, 6, 'skim read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 02:58:30', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 5.22409, '0.00000000', '0.00000000', 2, '2017-12-18 02:58:34', '2017-12-18 02:58:36'),
(19, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 02:59:14', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.1988, '0.00000000', '0.00000000', 2, '2017-12-18 02:59:15', '2017-12-18 02:59:40'),
(20, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 03:00:51', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.1753, '0.00000000', '0.00000000', 2, '2017-12-18 03:00:52', '2017-12-18 03:01:17'),
(21, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 03:01:19', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.0501, '0.00000000', '0.00000000', 2, '2017-12-18 03:01:20', '2017-12-18 03:01:45'),
(22, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 03:02:51', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 9.92585, '0.00000000', '0.00000000', 2, '2017-12-18 03:02:51', '2017-12-18 03:03:01'),
(23, 6, 'read', 'open', 'Linux', '', 'Chrome', '59.0.3071.115', 'desktop', '192.168.1.84', '2017-12-18 03:05:35', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 25.2191, '0.00000000', '0.00000000', 3, '2017-12-18 03:05:35', '2017-12-18 03:06:00'),
(24, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 03:33:40', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 11.0326, '0.00000000', '0.00000000', 2, '2017-12-18 03:33:42', '2017-12-18 03:33:51'),
(25, 6, 'read', 'open', 'Linux', '', 'Chrome', '51.0.2704.106', 'desktop', '192.168.1.83', '2017-12-18 03:33:52', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 25.1716, '0.00000000', '0.00000000', 2, '2017-12-18 03:33:52', '2017-12-18 03:34:17'),
(26, 6, 'read', 'open', 'Linux', '', 'Chrome', '63.0.3239.108', 'desktop', '192.168.1.83', '2018-01-04 03:08:33', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', 25.2416, '0.00000000', '0.00000000', 4, '2018-01-04 03:08:34', '2018-01-04 03:08:58'),
(27, 28, 'read', 'print', 'Linux', '', 'Chrome', '65.0.3325.162', 'desktop', '192.168.1.63', '2018-03-22 23:52:24', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 15.1666, '0.00000000', '0.00000000', 6, '2018-03-22 23:52:25', '2018-03-22 23:52:40'),
(28, 28, 'skim read', 'print', 'Linux', '', 'Chrome', '65.0.3325.162', 'desktop', '192.168.1.63', '2018-03-22 23:52:34', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 6.7278, '0.00000000', '0.00000000', 6, '2018-03-22 23:52:34', '2018-03-22 23:52:41'),
(29, 28, 'read', 'forward', 'Linux', '', 'Chrome', '65.0.3325.162', 'desktop', '192.168.1.63', '2018-03-22 23:55:46', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 16.9248, '0.00000000', '0.00000000', 6, '2018-03-22 23:55:46', '2018-03-22 23:56:03'),
(30, 104, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 11:48:02', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 11.1421, '20.96670000', '72.90000000', 7, '2018-05-01 11:48:02', '2018-05-01 11:48:13'),
(31, 104, 'skim read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 11:48:15', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 6.62809, '20.96670000', '72.90000000', 7, '2018-05-01 11:48:15', '2018-05-01 11:48:22'),
(32, 104, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 11:48:42', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2432, '20.96670000', '72.90000000', 7, '2018-05-01 11:48:42', '2018-05-01 11:49:07'),
(33, 105, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 11:54:22', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2445, '20.96670000', '72.90000000', 7, '2018-05-01 11:54:22', '2018-05-01 11:54:48'),
(34, 105, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 11:54:37', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2416, '20.96670000', '72.90000000', 7, '2018-05-01 11:54:37', '2018-05-01 11:55:02'),
(35, 106, 'skim read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-01 11:56:02', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 7.53397, '20.00000000', '77.00000000', 8, '2018-05-01 11:56:02', '2018-05-01 11:56:09'),
(36, 106, 'deleted', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-01 11:56:14', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 1.82952, '20.00000000', '77.00000000', 8, '2018-05-01 11:56:14', '2018-05-01 11:56:15'),
(37, 109, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:05:19', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2475, '20.96670000', '72.90000000', 7, '2018-05-01 12:05:19', '2018-05-01 12:05:44'),
(38, 109, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:07:58', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2456, '20.96670000', '72.90000000', 7, '2018-05-01 12:07:58', '2018-05-01 12:08:23'),
(39, 109, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:08:20', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2427, '20.96670000', '72.90000000', 7, '2018-05-01 12:08:20', '2018-05-01 12:08:46'),
(40, 109, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:08:38', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2395, '20.96670000', '72.90000000', 7, '2018-05-01 12:08:38', '2018-05-01 12:09:03'),
(41, 109, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:09:18', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2278, '20.96670000', '72.90000000', 7, '2018-05-01 12:09:18', '2018-05-01 12:09:43'),
(42, 111, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-01 12:20:04', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2389, '20.00000000', '77.00000000', 8, '2018-05-01 12:20:04', '2018-05-01 12:20:29'),
(43, 111, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-01 12:21:56', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.24, '20.00000000', '77.00000000', 8, '2018-05-01 12:21:56', '2018-05-01 12:22:21'),
(44, 111, 'skim read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-01 12:28:58', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 6.32873, '20.00000000', '77.00000000', 8, '2018-05-01 12:28:58', '2018-05-01 12:29:04'),
(45, 112, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:34:10', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2445, '20.96670000', '72.90000000', 7, '2018-05-01 12:34:10', '2018-05-01 12:34:36'),
(46, 113, 'skim read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:42:53', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 5.43491, '20.96670000', '72.90000000', 7, '2018-05-01 12:42:53', '2018-05-01 12:42:59'),
(47, 118, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:53:13', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2503, '20.96670000', '72.90000000', 7, '2018-05-01 12:53:13', '2018-05-01 12:53:39'),
(48, 119, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:53:35', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2407, '20.96670000', '72.90000000', 7, '2018-05-01 12:53:35', '2018-05-01 12:54:00'),
(49, 119, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-01 12:53:51', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2427, '35.00000000', '105.00000000', 9, '2018-05-01 12:53:51', '2018-05-01 12:54:10'),
(50, 119, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-01 12:54:20', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2406, '35.00000000', '105.00000000', 10, '2018-05-01 12:54:20', '2018-05-01 12:54:39'),
(51, 120, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:54:37', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2442, '20.96670000', '72.90000000', 7, '2018-05-01 12:54:37', '2018-05-01 12:55:03'),
(52, 120, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-01 12:55:03', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5462, '35.00000000', '105.00000000', 9, '2018-05-01 12:55:03', '2018-05-01 12:55:23'),
(53, 120, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-01 12:55:27', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5273, '35.00000000', '105.00000000', 10, '2018-05-01 12:55:27', '2018-05-01 12:55:46'),
(54, 121, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 12:55:49', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2458, '20.96670000', '72.90000000', 7, '2018-05-01 12:55:49', '2018-05-01 12:56:15'),
(55, 121, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-01 12:56:29', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5339, '35.00000000', '105.00000000', 11, '2018-05-01 12:56:29', '2018-05-01 12:56:48'),
(56, 121, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-01 13:03:57', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5412, '35.00000000', '105.00000000', 9, '2018-05-01 13:03:57', '2018-05-01 13:04:17'),
(57, 122, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 13:18:16', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.234, '20.96670000', '72.90000000', 7, '2018-05-01 13:18:16', '2018-05-01 13:18:42'),
(58, 122, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-01 13:19:08', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.535, '35.00000000', '105.00000000', 10, '2018-05-01 13:19:08', '2018-05-01 13:19:28'),
(59, 123, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 13:23:05', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2463, '20.96670000', '72.90000000', 7, '2018-05-01 13:23:05', '2018-05-01 13:23:30'),
(60, 123, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-01 13:23:25', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5411, '35.00000000', '105.00000000', 9, '2018-05-01 13:23:25', '2018-05-01 13:23:45'),
(61, 123, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-01 13:23:46', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5341, '35.00000000', '105.00000000', 9, '2018-05-01 13:23:46', '2018-05-01 13:24:05'),
(62, 123, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-01 13:24:06', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5302, '35.00000000', '105.00000000', 11, '2018-05-01 13:24:06', '2018-05-01 13:24:25'),
(63, 123, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-01 13:25:43', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5277, '35.00000000', '105.00000000', 11, '2018-05-01 13:25:43', '2018-05-01 13:26:02'),
(64, 124, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-01 13:29:46', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2327, '20.96670000', '72.90000000', 7, '2018-05-01 13:29:46', '2018-05-01 13:30:12'),
(65, 124, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-01 13:30:13', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.542, '35.00000000', '105.00000000', 10, '2018-05-01 13:30:13', '2018-05-01 13:30:33'),
(66, 124, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-01 13:30:33', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5382, '35.00000000', '105.00000000', 10, '2018-05-01 13:30:34', '2018-05-01 13:30:53'),
(67, 123, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-01 13:31:38', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2285, '20.96670000', '72.90000000', 12, '2018-05-01 13:31:38', '2018-05-01 13:32:03'),
(68, 124, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-01 13:31:40', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2442, '20.00000000', '77.00000000', 13, '2018-05-01 13:31:40', '2018-05-01 13:32:05'),
(69, 124, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-01 13:31:44', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2334, '20.96670000', '72.90000000', 12, '2018-05-01 13:31:44', '2018-05-01 13:32:09'),
(70, 123, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-01 13:33:12', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2325, '20.96670000', '72.90000000', 12, '2018-05-01 13:33:12', '2018-05-01 13:33:38'),
(71, 124, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-01 13:35:03', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5526, '35.00000000', '105.00000000', 10, '2018-05-01 13:35:03', '2018-05-01 13:35:23'),
(72, 124, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-01 13:36:53', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2364, '20.00000000', '77.00000000', 13, '2018-05-01 13:36:53', '2018-05-01 13:37:18'),
(73, 125, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-02 04:04:04', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2485, '20.96670000', '72.90000000', 7, '2018-05-02 04:04:04', '2018-05-02 04:04:29'),
(74, 126, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-02 04:05:26', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2444, '20.96670000', '72.90000000', 7, '2018-05-02 04:05:26', '2018-05-02 04:05:51'),
(75, 126, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-02 04:06:33', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2471, '20.00000000', '77.00000000', 13, '2018-05-02 04:06:33', '2018-05-02 04:06:58'),
(76, 126, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-02 04:07:25', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2432, '35.00000000', '105.00000000', 11, '2018-05-02 04:07:25', '2018-05-02 04:07:44'),
(77, 125, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-02 04:08:03', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 8.1233, '20.00000000', '77.00000000', 13, '2018-05-02 04:08:03', '2018-05-02 04:08:11'),
(78, 126, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-02 04:08:13', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2463, '20.00000000', '77.00000000', 13, '2018-05-02 04:08:13', '2018-05-02 04:08:38'),
(79, 125, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-02 04:08:44', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5303, '35.00000000', '105.00000000', 10, '2018-05-02 04:08:44', '2018-05-02 04:09:04'),
(80, 125, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:09:00', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2398, '20.96670000', '72.90000000', 12, '2018-05-02 04:09:00', '2018-05-02 04:09:25'),
(81, 124, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:09:01', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.229, '20.96670000', '72.90000000', 12, '2018-05-02 04:09:01', '2018-05-02 04:09:26'),
(82, 122, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:09:05', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2295, '20.96670000', '72.90000000', 12, '2018-05-02 04:09:05', '2018-05-02 04:09:30'),
(83, 127, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-02 04:10:00', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2337, '20.96670000', '72.90000000', 7, '2018-05-02 04:10:00', '2018-05-02 04:10:25'),
(84, 125, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:10:25', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2422, '20.96670000', '72.90000000', 12, '2018-05-02 04:10:25', '2018-05-02 04:10:50'),
(85, 127, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:10:39', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2448, '20.96670000', '72.90000000', 12, '2018-05-02 04:10:39', '2018-05-02 04:11:04'),
(86, 125, 'deleted', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:10:59', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 1.53229, '20.96670000', '72.90000000', 12, '2018-05-02 04:10:59', '2018-05-02 04:11:01'),
(87, 127, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-02 04:11:12', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2302, '35.00000000', '105.00000000', 11, '2018-05-02 04:11:12', '2018-05-02 04:11:31'),
(88, 126, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:11:33', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2373, '20.96670000', '72.90000000', 12, '2018-05-02 04:11:33', '2018-05-02 04:11:59'),
(89, 127, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 04:12:13', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2365, '20.96670000', '72.90000000', 12, '2018-05-02 04:12:13', '2018-05-02 04:12:38'),
(90, 127, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-02 04:51:15', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5494, '35.00000000', '105.00000000', 11, '2018-05-02 04:51:15', '2018-05-02 04:51:34'),
(91, 128, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-02 06:18:08', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2499, '20.96670000', '72.90000000', 7, '2018-05-02 06:18:08', '2018-05-02 06:18:33'),
(92, 128, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-02 06:19:59', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2436, '20.00000000', '77.00000000', 8, '2018-05-02 06:19:59', '2018-05-02 06:20:24'),
(93, 129, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-02 07:05:18', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2478, '20.00000000', '77.00000000', 8, '2018-05-02 07:05:18', '2018-05-02 07:05:44'),
(94, 129, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-02 07:05:45', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2382, '35.00000000', '105.00000000', 10, '2018-05-02 07:05:45', '2018-05-02 07:06:04'),
(95, 125, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-02 07:25:20', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2381, '35.00000000', '105.00000000', 10, '2018-05-02 07:25:20', '2018-05-02 07:25:39'),
(96, 129, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-02 08:23:11', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5377, '35.00000000', '105.00000000', 10, '2018-05-02 08:23:11', '2018-05-02 08:23:31'),
(97, 127, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-02 08:30:31', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2416, '20.00000000', '77.00000000', 13, '2018-05-02 08:30:31', '2018-05-02 08:30:56'),
(98, 129, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-02 08:31:57', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2361, '35.00000000', '105.00000000', 10, '2018-05-02 08:31:57', '2018-05-02 08:32:16'),
(99, 127, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-02 10:05:36', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2458, '20.96670000', '72.90000000', 12, '2018-05-02 10:05:37', '2018-05-02 10:06:02'),
(100, 130, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:10:53', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2534, '20.96670000', '72.90000000', 7, '2018-05-03 07:10:53', '2018-05-03 07:11:18'),
(101, 130, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:11:34', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2488, '20.96670000', '72.90000000', 7, '2018-05-03 07:11:34', '2018-05-03 07:11:59'),
(102, 131, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:11:45', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2384, '20.96670000', '72.90000000', 7, '2018-05-03 07:11:45', '2018-05-03 07:12:10'),
(103, 131, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:12:36', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2373, '20.96670000', '72.90000000', 7, '2018-05-03 07:12:36', '2018-05-03 07:13:01'),
(104, 131, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:12:37', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2378, '20.96670000', '72.90000000', 7, '2018-05-03 07:12:37', '2018-05-03 07:13:02'),
(105, 131, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:12:39', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2395, '20.96670000', '72.90000000', 7, '2018-05-03 07:12:39', '2018-05-03 07:13:04'),
(106, 132, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:13:43', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2224, '20.96670000', '72.90000000', 7, '2018-05-03 07:13:43', '2018-05-03 07:14:09'),
(107, 132, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:13:44', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2278, '20.96670000', '72.90000000', 7, '2018-05-03 07:13:44', '2018-05-03 07:14:09'),
(108, 132, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:14:27', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.246, '20.96670000', '72.90000000', 7, '2018-05-03 07:14:27', '2018-05-03 07:14:52'),
(109, 132, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:15:44', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2266, '20.96670000', '72.90000000', 7, '2018-05-03 07:15:44', '2018-05-03 07:16:09'),
(110, 132, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:15:51', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2278, '20.96670000', '72.90000000', 7, '2018-05-03 07:15:51', '2018-05-03 07:16:16'),
(111, 132, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:15:52', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2293, '20.96670000', '72.90000000', 7, '2018-05-03 07:15:52', '2018-05-03 07:16:17'),
(112, 133, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:16:07', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2388, '20.96670000', '72.90000000', 7, '2018-05-03 07:16:07', '2018-05-03 07:16:32'),
(113, 133, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:16:07', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2352, '20.96670000', '72.90000000', 7, '2018-05-03 07:16:07', '2018-05-03 07:16:33'),
(114, 134, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:17:56', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2278, '20.96670000', '72.90000000', 7, '2018-05-03 07:17:56', '2018-05-03 07:18:21'),
(115, 134, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:17:57', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2375, '20.96670000', '72.90000000', 7, '2018-05-03 07:17:57', '2018-05-03 07:18:22'),
(116, 134, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:18:42', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2272, '20.96670000', '72.90000000', 7, '2018-05-03 07:18:42', '2018-05-03 07:19:07'),
(117, 134, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:19:02', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2281, '20.96670000', '72.90000000', 7, '2018-05-03 07:19:02', '2018-05-03 07:19:27'),
(118, 134, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:19:10', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2281, '20.96670000', '72.90000000', 7, '2018-05-03 07:19:10', '2018-05-03 07:19:35'),
(119, 135, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:19:31', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2247, '20.96670000', '72.90000000', 7, '2018-05-03 07:19:31', '2018-05-03 07:19:56'),
(120, 135, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:19:32', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2232, '20.96670000', '72.90000000', 7, '2018-05-03 07:19:32', '2018-05-03 07:19:57'),
(121, 135, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:20:03', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2416, '20.96670000', '72.90000000', 7, '2018-05-03 07:20:03', '2018-05-03 07:20:28'),
(122, 135, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:20:09', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2401, '20.96670000', '72.90000000', 7, '2018-05-03 07:20:09', '2018-05-03 07:20:35'),
(123, 135, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:21:06', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2272, '20.96670000', '72.90000000', 7, '2018-05-03 07:21:06', '2018-05-03 07:21:31'),
(124, 136, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:21:20', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2298, '20.96670000', '72.90000000', 7, '2018-05-03 07:21:20', '2018-05-03 07:21:45'),
(125, 136, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:21:20', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2294, '20.96670000', '72.90000000', 7, '2018-05-03 07:21:21', '2018-05-03 07:21:46'),
(126, 136, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:23:24', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2293, '20.96670000', '72.90000000', 7, '2018-05-03 07:23:24', '2018-05-03 07:23:49'),
(127, 136, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:23:30', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2285, '20.96670000', '72.90000000', 7, '2018-05-03 07:23:30', '2018-05-03 07:23:56'),
(128, 137, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:23:48', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2248, '20.96670000', '72.90000000', 7, '2018-05-03 07:23:48', '2018-05-03 07:24:13'),
(129, 137, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:23:49', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.23, '20.96670000', '72.90000000', 7, '2018-05-03 07:23:49', '2018-05-03 07:24:14'),
(130, 137, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:24:46', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2304, '20.96670000', '72.90000000', 7, '2018-05-03 07:24:46', '2018-05-03 07:25:12'),
(131, 137, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:24:47', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2276, '20.96670000', '72.90000000', 7, '2018-05-03 07:24:47', '2018-05-03 07:25:12'),
(132, 138, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:36:56', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2386, '20.96670000', '72.90000000', 7, '2018-05-03 07:36:56', '2018-05-03 07:37:21'),
(133, 138, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 07:38:00', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2304, '20.96670000', '72.90000000', 7, '2018-05-03 07:38:00', '2018-05-03 07:38:25'),
(134, 139, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 09:03:24', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2302, '20.00000000', '77.00000000', 8, '2018-05-03 09:03:24', '2018-05-03 09:03:49'),
(135, 140, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 09:22:15', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2296, '20.00000000', '77.00000000', 8, '2018-05-03 09:22:15', '2018-05-03 09:22:40');
INSERT INTO `analytic_details` (`id`, `analytic_id`, `engagement_type`, `status`, `operating_system`, `os_version`, `browser`, `browser_version`, `reading_environment`, `ip_address`, `open_date`, `state`, `state_iso`, `country`, `country_iso`, `city`, `postal_code`, `timezone`, `email`, `ua_string`, `open_duration`, `latitude`, `longitude`, `contact_id`, `created_at`, `updated_at`) VALUES
(136, 140, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 09:23:01', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2434, '20.00000000', '77.00000000', 8, '2018-05-03 09:23:01', '2018-05-03 09:23:26'),
(137, 140, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 09:24:06', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2404, '20.00000000', '77.00000000', 8, '2018-05-03 09:24:07', '2018-05-03 09:24:32'),
(138, 140, 'deleted', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 09:24:30', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 1.82208, '20.96670000', '72.90000000', 7, '2018-05-03 09:24:30', '2018-05-03 09:24:32'),
(139, 140, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 09:24:36', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2292, '20.96670000', '72.90000000', 7, '2018-05-03 09:24:36', '2018-05-03 09:25:01'),
(140, 140, 'skim read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 09:26:24', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 7.82035, '20.96670000', '72.90000000', 7, '2018-05-03 09:26:24', '2018-05-03 09:26:32'),
(141, 140, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '103.254.172.156', '2018-05-03 09:26:36', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 9.02331, '20.96670000', '72.90000000', 7, '2018-05-03 09:26:36', '2018-05-03 09:26:45'),
(142, 140, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 09:26:50', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.231, '20.00000000', '77.00000000', 8, '2018-05-03 09:26:50', '2018-05-03 09:27:15'),
(143, 140, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 09:27:29', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2276, '20.00000000', '77.00000000', 8, '2018-05-03 09:27:29', '2018-05-03 09:27:55'),
(144, 141, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 10:49:36', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2537, '20.00000000', '77.00000000', 8, '2018-05-03 10:49:36', '2018-05-03 10:50:01'),
(145, 141, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 10:49:37', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2375, '20.00000000', '77.00000000', 8, '2018-05-03 10:49:37', '2018-05-03 10:50:02'),
(146, 141, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 10:50:01', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2349, '20.96670000', '72.90000000', 12, '2018-05-03 10:50:01', '2018-05-03 10:50:26'),
(147, 141, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 10:50:05', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2373, '20.96670000', '72.90000000', 12, '2018-05-03 10:50:05', '2018-05-03 10:50:30'),
(148, 141, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-03 10:50:08', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2376, '35.00000000', '105.00000000', 10, '2018-05-03 10:50:08', '2018-05-03 10:50:27'),
(149, 141, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-03 10:50:32', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2265, '20.00000000', '77.00000000', 13, '2018-05-03 10:50:32', '2018-05-03 10:50:58'),
(150, 133, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-03 10:50:57', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2225, '35.00000000', '105.00000000', 11, '2018-05-03 10:50:57', '2018-05-03 10:51:16'),
(151, 141, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 10:51:27', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2406, '20.96670000', '72.90000000', 12, '2018-05-03 10:51:27', '2018-05-03 10:51:52'),
(152, 141, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-03 10:51:47', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.239, '20.00000000', '77.00000000', 13, '2018-05-03 10:51:47', '2018-05-03 10:52:12'),
(153, 142, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 10:59:45', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2397, '20.00000000', '77.00000000', 8, '2018-05-03 10:59:45', '2018-05-03 11:00:10'),
(154, 142, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 10:59:46', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2352, '20.00000000', '77.00000000', 8, '2018-05-03 10:59:46', '2018-05-03 11:00:11'),
(155, 142, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-03 11:00:08', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5372, '35.00000000', '105.00000000', 9, '2018-05-03 11:00:08', '2018-05-03 11:00:28'),
(156, 143, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 11:04:17', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2276, '20.00000000', '77.00000000', 8, '2018-05-03 11:04:17', '2018-05-03 11:04:42'),
(157, 143, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 11:04:18', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2244, '20.00000000', '77.00000000', 8, '2018-05-03 11:04:18', '2018-05-03 11:04:43'),
(158, 143, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-03 11:04:52', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2369, '35.00000000', '105.00000000', 11, '2018-05-03 11:04:52', '2018-05-03 11:05:11'),
(159, 143, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-03 11:05:05', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2264, '20.00000000', '77.00000000', 13, '2018-05-03 11:05:05', '2018-05-03 11:05:30'),
(160, 142, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-03 11:05:41', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2396, '20.00000000', '77.00000000', 13, '2018-05-03 11:05:41', '2018-05-03 11:06:06'),
(161, 143, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-03 11:06:37', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5253, '35.00000000', '105.00000000', 10, '2018-05-03 11:06:37', '2018-05-03 11:06:57'),
(162, 144, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.117', 'desktop', '157.119.207.2', '2018-05-03 11:07:12', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 25.2286, '20.00000000', '77.00000000', 8, '2018-05-03 11:07:12', '2018-05-03 11:07:37'),
(163, 144, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 11:35:08', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.228, '20.96670000', '72.90000000', 12, '2018-05-03 11:35:08', '2018-05-03 11:35:33'),
(164, 143, 'deleted', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-03 12:34:52', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 1.82646, '20.00000000', '77.00000000', 13, '2018-05-03 12:34:52', '2018-05-03 12:34:54'),
(165, 141, 'deleted', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-03 12:34:56', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 0.92382, '20.00000000', '77.00000000', 13, '2018-05-03 12:34:56', '2018-05-03 12:34:57'),
(166, 142, 'deleted', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-03 13:22:21', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 0.626034, '20.00000000', '77.00000000', 13, '2018-05-03 13:22:21', '2018-05-03 13:22:21'),
(167, 145, 'read', 'open', 'Windows', '10.0', 'Chrome', '66.0.3359.139', 'desktop', '103.254.172.156', '2018-05-03 13:34:26', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 25.2384, '20.96670000', '72.90000000', 14, '2018-05-03 13:34:26', '2018-05-03 13:34:52'),
(168, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:36:13', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2507, '20.96670000', '72.90000000', 15, '2018-05-03 13:36:13', '2018-05-03 13:36:38'),
(169, 145, 'read', 'forward', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:52:32', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2453, '20.96670000', '72.90000000', 15, '2018-05-03 13:52:32', '2018-05-03 13:52:57'),
(170, 145, 'read', 'forward', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:53:37', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2316, '20.96670000', '72.90000000', 15, '2018-05-03 13:53:37', '2018-05-03 13:54:02'),
(171, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:53:37', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2343, '20.96670000', '72.90000000', 15, '2018-05-03 13:53:37', '2018-05-03 13:54:02'),
(172, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:53:42', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.239, '20.96670000', '72.90000000', 15, '2018-05-03 13:53:42', '2018-05-03 13:54:07'),
(173, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:54:03', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2279, '20.96670000', '72.90000000', 15, '2018-05-03 13:54:03', '2018-05-03 13:54:28'),
(174, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:54:10', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2253, '20.96670000', '72.90000000', 15, '2018-05-03 13:54:10', '2018-05-03 13:54:35'),
(175, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:54:15', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2249, '20.96670000', '72.90000000', 15, '2018-05-03 13:54:15', '2018-05-03 13:54:40'),
(176, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:54:16', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2298, '20.96670000', '72.90000000', 15, '2018-05-03 13:54:16', '2018-05-03 13:54:41'),
(177, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:54:42', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2367, '20.96670000', '72.90000000', 15, '2018-05-03 13:54:42', '2018-05-03 13:55:07'),
(178, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:54:43', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2256, '20.96670000', '72.90000000', 15, '2018-05-03 13:54:43', '2018-05-03 13:55:08'),
(179, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:55:00', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2256, '20.96670000', '72.90000000', 15, '2018-05-03 13:55:00', '2018-05-03 13:55:25'),
(180, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:55:01', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2458, '20.96670000', '72.90000000', 15, '2018-05-03 13:55:01', '2018-05-03 13:55:27'),
(181, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:55:12', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2304, '20.96670000', '72.90000000', 15, '2018-05-03 13:55:12', '2018-05-03 13:55:38'),
(182, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:55:14', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2265, '20.96670000', '72.90000000', 15, '2018-05-03 13:55:14', '2018-05-03 13:55:39'),
(183, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:55:38', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2383, '20.96670000', '72.90000000', 15, '2018-05-03 13:55:38', '2018-05-03 13:56:03'),
(184, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:55:39', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.225, '20.96670000', '72.90000000', 15, '2018-05-03 13:55:39', '2018-05-03 13:56:05'),
(185, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:55:48', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2238, '20.96670000', '72.90000000', 15, '2018-05-03 13:55:48', '2018-05-03 13:56:14'),
(186, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:56:02', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2222, '20.96670000', '72.90000000', 15, '2018-05-03 13:56:02', '2018-05-03 13:56:27'),
(187, 145, 'read', 'forward', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:56:02', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2244, '20.96670000', '72.90000000', 15, '2018-05-03 13:56:02', '2018-05-03 13:56:27'),
(188, 145, 'read', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-03 13:56:09', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2386, '20.96670000', '72.90000000', 15, '2018-05-03 13:56:09', '2018-05-03 13:56:35'),
(189, 145, 'deleted', 'open', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '117.215.59.148', '2018-05-03 16:50:35', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', '395002', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 1.23018, '20.96670000', '72.90000000', 16, '2018-05-03 16:50:35', '2018-05-03 16:50:36'),
(190, 143, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-04 03:54:46', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2401, '20.96670000', '72.90000000', 12, '2018-05-04 03:54:46', '2018-05-04 03:55:11'),
(191, 144, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-04 04:47:40', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2241, '35.00000000', '105.00000000', 9, '2018-05-04 04:47:40', '2018-05-04 04:47:59'),
(192, 144, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-04 04:48:05', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2349, '35.00000000', '105.00000000', 10, '2018-05-04 04:48:05', '2018-05-04 04:48:25'),
(193, 144, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-04 07:01:26', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.248, '35.00000000', '105.00000000', 10, '2018-05-04 07:01:26', '2018-05-04 07:01:45'),
(194, 144, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-04 07:01:40', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.2384, '35.00000000', '105.00000000', 9, '2018-05-04 07:01:40', '2018-05-04 07:01:59'),
(195, 144, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.39', '2018-05-04 07:05:40', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5388, '35.00000000', '105.00000000', 11, '2018-05-04 07:05:40', '2018-05-04 07:06:00'),
(196, 144, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.43', '2018-05-04 07:07:03', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5381, '35.00000000', '105.00000000', 9, '2018-05-04 07:07:03', '2018-05-04 07:07:23'),
(197, 144, 'read', 'open', 'Windows', '5.1', 'Firefox', '11.0', 'other', '64.233.173.41', '2018-05-04 07:07:50', 'unknown', '-unknown', 'unknown', NULL, 'unknown', 'unknown', 'Australia/Perth', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 19.5275, '35.00000000', '105.00000000', 10, '2018-05-04 07:07:50', '2018-05-04 07:08:09'),
(198, 146, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.139', 'desktop', '103.254.172.156', '2018-05-04 07:33:36', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 25.2408, '20.96670000', '72.90000000', 17, '2018-05-04 07:33:36', '2018-05-04 07:34:02'),
(199, 146, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-04 07:37:58', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Almaty', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2463, '20.00000000', '77.00000000', 13, '2018-05-04 07:37:58', '2018-05-04 07:38:23'),
(200, 145, 'read', 'forward', 'Windows', '10.0', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-04 12:38:12', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 10.2346, '20.00000000', '77.00000000', 18, '2018-05-04 12:38:12', '2018-05-04 12:38:22'),
(201, 147, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.139', 'desktop', '157.119.207.2', '2018-05-04 12:55:56', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 25.2399, '20.00000000', '77.00000000', 19, '2018-05-04 12:55:56', '2018-05-04 12:56:21'),
(202, 147, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-04 12:58:06', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2429, '20.96670000', '72.90000000', 12, '2018-05-04 12:58:06', '2018-05-04 12:58:31'),
(203, 147, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-04 12:59:01', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2401, '20.00000000', '77.00000000', 13, '2018-05-04 12:59:01', '2018-05-04 12:59:26'),
(204, 147, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-04 12:59:08', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.241, '20.00000000', '77.00000000', 13, '2018-05-04 12:59:08', '2018-05-04 12:59:34'),
(205, 147, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-04 12:59:36', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2332, '20.00000000', '77.00000000', 13, '2018-05-04 12:59:36', '2018-05-04 13:00:02'),
(206, 147, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-04 12:59:41', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2283, '20.00000000', '77.00000000', 13, '2018-05-04 12:59:41', '2018-05-04 13:00:06'),
(207, 147, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '103.254.172.156', '2018-05-04 13:29:22', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2409, '20.96670000', '72.90000000', 12, '2018-05-04 13:29:22', '2018-05-04 13:29:47'),
(208, 146, 'read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-04 13:33:38', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 25.2368, '20.00000000', '77.00000000', 13, '2018-05-04 13:33:38', '2018-05-04 13:34:03'),
(209, 148, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.139', 'desktop', '103.254.172.156', '2018-05-04 13:56:19', 'Gujarat', 'IN-GJ', 'India', 'IN', 'Jalalpur', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 25.2485, '20.96670000', '72.90000000', 17, '2018-05-04 13:56:19', '2018-05-04 13:56:44'),
(210, 146, 'skim read', 'open', 'Linux', '', 'Mozilla', '52.0', 'desktop', '157.119.207.2', '2018-05-07 03:57:12', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 2.75221, '20.00000000', '77.00000000', 13, '2018-05-07 03:57:12', '2018-05-07 03:57:15'),
(211, 149, 'read', 'open', 'Linux', '', 'Chrome', '66.0.3359.139', 'desktop', '157.119.207.2', '2018-05-07 05:11:54', 'unknown', 'IN-unknown', 'India', 'IN', 'unknown', 'unknown', 'Asia/Kolkata', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 25.2422, '20.00000000', '77.00000000', 19, '2018-05-07 05:11:54', '2018-05-07 05:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `browser_reports`
--

CREATE TABLE `browser_reports` (
  `id` int(11) UNSIGNED NOT NULL,
  `analytic_id` int(11) UNSIGNED NOT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `browser_reports`
--

INSERT INTO `browser_reports` (`id`, `analytic_id`, `browser`, `total`, `created_at`, `updated_at`) VALUES
(3, 4, 'Chrome', 3, '2017-12-14 04:06:40', '2017-12-14 04:28:34'),
(4, 6, 'Chrome', 15, '2017-12-18 01:24:56', '2018-01-04 03:08:34'),
(5, 28, 'Chrome', 3, '2018-03-22 23:52:25', '2018-03-22 23:55:46'),
(6, 104, 'Chrome', 3, '2018-05-01 11:48:02', '2018-05-01 11:48:42'),
(7, 105, 'Chrome', 2, '2018-05-01 11:54:22', '2018-05-01 11:54:37'),
(8, 106, 'Chrome', 2, '2018-05-01 11:56:02', '2018-05-01 11:56:14'),
(9, 109, 'Chrome', 5, '2018-05-01 12:05:19', '2018-05-01 12:09:18'),
(10, 111, 'Chrome', 3, '2018-05-01 12:20:04', '2018-05-01 12:28:58'),
(11, 112, 'Chrome', 1, '2018-05-01 12:34:10', '2018-05-01 12:34:10'),
(12, 113, 'Chrome', 1, '2018-05-01 12:42:53', '2018-05-01 12:42:53'),
(13, 118, 'Chrome', 1, '2018-05-01 12:53:13', '2018-05-01 12:53:13'),
(14, 119, 'Chrome', 1, '2018-05-01 12:53:35', '2018-05-01 12:53:35'),
(15, 119, 'Firefox', 2, '2018-05-01 12:53:51', '2018-05-01 12:54:20'),
(16, 120, 'Chrome', 1, '2018-05-01 12:54:37', '2018-05-01 12:54:37'),
(17, 120, 'Firefox', 2, '2018-05-01 12:55:03', '2018-05-01 12:55:27'),
(18, 121, 'Chrome', 1, '2018-05-01 12:55:49', '2018-05-01 12:55:49'),
(19, 121, 'Firefox', 2, '2018-05-01 12:56:29', '2018-05-01 13:03:57'),
(20, 122, 'Chrome', 1, '2018-05-01 13:18:17', '2018-05-01 13:18:17'),
(21, 122, 'Firefox', 1, '2018-05-01 13:19:08', '2018-05-01 13:19:08'),
(22, 123, 'Chrome', 1, '2018-05-01 13:23:05', '2018-05-01 13:23:05'),
(23, 123, 'Firefox', 4, '2018-05-01 13:23:25', '2018-05-01 13:25:43'),
(24, 124, 'Chrome', 1, '2018-05-01 13:29:46', '2018-05-01 13:29:46'),
(25, 124, 'Firefox', 3, '2018-05-01 13:30:13', '2018-05-01 13:35:03'),
(26, 123, 'Mozilla', 2, '2018-05-01 13:31:38', '2018-05-01 13:33:12'),
(27, 124, 'Mozilla', 4, '2018-05-01 13:31:40', '2018-05-02 04:09:01'),
(28, 125, 'Chrome', 1, '2018-05-02 04:04:04', '2018-05-02 04:04:04'),
(29, 126, 'Chrome', 1, '2018-05-02 04:05:26', '2018-05-02 04:05:26'),
(30, 126, 'Mozilla', 3, '2018-05-02 04:06:33', '2018-05-02 04:11:33'),
(31, 126, 'Firefox', 1, '2018-05-02 04:07:25', '2018-05-02 04:07:25'),
(32, 125, 'Mozilla', 4, '2018-05-02 04:08:03', '2018-05-02 04:10:59'),
(33, 125, 'Firefox', 2, '2018-05-02 04:08:44', '2018-05-02 07:25:20'),
(34, 122, 'Mozilla', 1, '2018-05-02 04:09:05', '2018-05-02 04:09:05'),
(35, 127, 'Chrome', 1, '2018-05-02 04:10:00', '2018-05-02 04:10:00'),
(36, 127, 'Mozilla', 4, '2018-05-02 04:10:39', '2018-05-02 10:05:37'),
(37, 127, 'Firefox', 2, '2018-05-02 04:11:12', '2018-05-02 04:51:15'),
(38, 128, 'Chrome', 2, '2018-05-02 06:18:08', '2018-05-02 06:19:59'),
(39, 129, 'Chrome', 1, '2018-05-02 07:05:18', '2018-05-02 07:05:18'),
(40, 129, 'Firefox', 3, '2018-05-02 07:05:45', '2018-05-02 08:31:57'),
(41, 130, 'Chrome', 2, '2018-05-03 07:10:53', '2018-05-03 07:11:34'),
(42, 131, 'Chrome', 4, '2018-05-03 07:11:45', '2018-05-03 07:12:39'),
(43, 132, 'Chrome', 6, '2018-05-03 07:13:43', '2018-05-03 07:15:52'),
(44, 133, 'Chrome', 2, '2018-05-03 07:16:07', '2018-05-03 07:16:07'),
(45, 134, 'Chrome', 5, '2018-05-03 07:17:56', '2018-05-03 07:19:10'),
(46, 135, 'Chrome', 5, '2018-05-03 07:19:31', '2018-05-03 07:21:06'),
(47, 136, 'Chrome', 4, '2018-05-03 07:21:20', '2018-05-03 07:23:30'),
(48, 137, 'Chrome', 4, '2018-05-03 07:23:48', '2018-05-03 07:24:47'),
(49, 138, 'Chrome', 2, '2018-05-03 07:36:56', '2018-05-03 07:38:00'),
(50, 139, 'Chrome', 1, '2018-05-03 09:03:24', '2018-05-03 09:03:24'),
(51, 140, 'Chrome', 9, '2018-05-03 09:22:15', '2018-05-03 09:27:29'),
(52, 141, 'Chrome', 2, '2018-05-03 10:49:36', '2018-05-03 10:49:37'),
(53, 141, 'Mozilla', 6, '2018-05-03 10:50:01', '2018-05-03 12:34:56'),
(54, 141, 'Firefox', 1, '2018-05-03 10:50:08', '2018-05-03 10:50:08'),
(55, 133, 'Firefox', 1, '2018-05-03 10:50:57', '2018-05-03 10:50:57'),
(56, 142, 'Chrome', 2, '2018-05-03 10:59:45', '2018-05-03 10:59:46'),
(57, 142, 'Firefox', 1, '2018-05-03 11:00:08', '2018-05-03 11:00:08'),
(58, 143, 'Chrome', 2, '2018-05-03 11:04:17', '2018-05-03 11:04:18'),
(59, 143, 'Firefox', 2, '2018-05-03 11:04:52', '2018-05-03 11:06:37'),
(60, 143, 'Mozilla', 3, '2018-05-03 11:05:05', '2018-05-04 03:54:46'),
(61, 142, 'Mozilla', 2, '2018-05-03 11:05:41', '2018-05-03 13:22:21'),
(62, 144, 'Chrome', 1, '2018-05-03 11:07:12', '2018-05-03 11:07:12'),
(63, 144, 'Mozilla', 1, '2018-05-03 11:35:08', '2018-05-03 11:35:08'),
(64, 145, 'Chrome', 1, '2018-05-03 13:34:26', '2018-05-03 13:34:26'),
(65, 145, 'Mozilla', 23, '2018-05-03 13:36:13', '2018-05-04 12:38:12'),
(66, 144, 'Firefox', 7, '2018-05-04 04:47:40', '2018-05-04 07:07:50'),
(67, 146, 'Chrome', 1, '2018-05-04 07:33:36', '2018-05-04 07:33:36'),
(68, 146, 'Mozilla', 3, '2018-05-04 07:37:58', '2018-05-07 03:57:12'),
(69, 147, 'Chrome', 1, '2018-05-04 12:55:56', '2018-05-04 12:55:56'),
(70, 147, 'Mozilla', 6, '2018-05-04 12:58:06', '2018-05-04 13:29:22'),
(71, 148, 'Chrome', 1, '2018-05-04 13:56:19', '2018-05-04 13:56:19'),
(72, 149, 'Chrome', 1, '2018-05-07 05:11:54', '2018-05-07 05:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2017-11-20 03:30:20', '2017-11-20 03:30:20'),
(2, NULL, 1, 'Category 2', 'category-2', '2017-11-20 03:30:20', '2017-11-20 03:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `contact_analytic_details`
--

CREATE TABLE `contact_analytic_details` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ua_string` text COLLATE utf8_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_analytic_details`
--

INSERT INTO `contact_analytic_details` (`id`, `ip_address`, `email`, `client_id`, `ua_string`, `browser`, `device`, `created_at`, `updated_at`) VALUES
(1, '192.168.1.63', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'desktop', '2017-12-13 02:51:22', '2017-12-13 02:51:22'),
(2, '192.168.1.83', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'Chrome', 'desktop', '2017-12-18 01:24:56', '2017-12-18 01:24:56'),
(3, '192.168.1.84', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'desktop', '2017-12-18 03:05:35', '2017-12-18 03:05:35'),
(4, '192.168.1.83', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', 'Chrome', 'desktop', '2018-01-04 03:08:34', '2018-01-04 03:08:34'),
(5, '192.168.1.83', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Chrome', 'desktop', '2018-03-20 05:54:31', '2018-03-20 05:54:31'),
(6, '192.168.1.63', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Chrome', 'desktop', '2018-03-22 23:52:25', '2018-03-22 23:52:25'),
(7, '103.254.172.156', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'Chrome', 'desktop', '2018-05-01 11:48:02', '2018-05-01 11:48:02'),
(8, '157.119.207.2', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'Chrome', 'desktop', '2018-05-01 11:56:02', '2018-05-01 11:56:02'),
(9, '64.233.173.43', '', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 'Firefox', 'other', '2018-05-01 12:53:51', '2018-05-01 12:53:51'),
(10, '64.233.173.41', '', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 'Firefox', 'other', '2018-05-01 12:54:20', '2018-05-01 12:54:20'),
(11, '64.233.173.39', '', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', 'Firefox', 'other', '2018-05-01 12:56:29', '2018-05-01 12:56:29'),
(12, '103.254.172.156', '', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 'Mozilla', 'desktop', '2018-05-01 13:31:38', '2018-05-01 13:31:38'),
(13, '157.119.207.2', '', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 'Mozilla', 'desktop', '2018-05-01 13:31:40', '2018-05-01 13:31:40'),
(14, '103.254.172.156', '', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Chrome', 'desktop', '2018-05-03 13:34:26', '2018-05-03 13:34:26'),
(15, '103.254.172.156', '', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 'Mozilla', 'desktop', '2018-05-03 13:36:13', '2018-05-03 13:36:13'),
(16, '117.215.59.148', '', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 'Mozilla', 'desktop', '2018-05-03 16:50:35', '2018-05-03 16:50:35'),
(17, '103.254.172.156', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Chrome', 'desktop', '2018-05-04 07:33:36', '2018-05-04 07:33:36'),
(18, '157.119.207.2', '', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', 'Mozilla', 'desktop', '2018-05-04 12:38:12', '2018-05-04 12:38:12'),
(19, '157.119.207.2', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Chrome', 'desktop', '2018-05-04 12:55:56', '2018-05-04 12:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact_analytic_mapping`
--

CREATE TABLE `contact_analytic_mapping` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `analytic_id` int(11) NOT NULL,
  `open_count` int(11) NOT NULL,
  `click_count` int(11) NOT NULL,
  `print_count` int(11) NOT NULL,
  `forward_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_analytic_mapping`
--

INSERT INTO `contact_analytic_mapping` (`id`, `contact_id`, `analytic_id`, `open_count`, `click_count`, `print_count`, `forward_count`, `created_at`, `updated_at`) VALUES
(3, 1, 4, 3, 0, 0, 0, '2017-12-14 04:06:40', '2017-12-14 04:28:34'),
(4, 2, 6, 12, 0, 0, 2, '2017-12-18 01:24:56', '2017-12-18 03:33:52'),
(5, 3, 6, 1, 0, 0, 0, '2017-12-18 03:05:35', '2017-12-18 03:05:35'),
(6, 4, 6, 1, 0, 0, 0, '2018-01-04 03:08:34', '2018-01-04 03:08:34'),
(7, 6, 28, 1, 0, 2, 1, '2018-03-22 23:52:25', '2018-03-22 23:55:46'),
(8, 7, 104, 3, 0, 0, 0, '2018-05-01 11:48:02', '2018-05-01 11:48:42'),
(9, 7, 105, 2, 0, 0, 0, '2018-05-01 11:54:22', '2018-05-01 11:54:37'),
(10, 8, 106, 2, 0, 0, 0, '2018-05-01 11:56:02', '2018-05-01 11:56:14'),
(11, 7, 109, 5, 0, 0, 0, '2018-05-01 12:05:19', '2018-05-01 12:09:18'),
(12, 8, 111, 3, 0, 0, 0, '2018-05-01 12:20:04', '2018-05-01 12:28:58'),
(13, 7, 112, 1, 0, 0, 0, '2018-05-01 12:34:10', '2018-05-01 12:34:10'),
(14, 7, 113, 1, 0, 0, 0, '2018-05-01 12:42:53', '2018-05-01 12:42:53'),
(15, 7, 118, 1, 0, 0, 0, '2018-05-01 12:53:13', '2018-05-01 12:53:13'),
(16, 7, 119, 1, 0, 0, 0, '2018-05-01 12:53:35', '2018-05-01 12:53:35'),
(17, 9, 119, 1, 0, 0, 0, '2018-05-01 12:53:51', '2018-05-01 12:53:51'),
(18, 10, 119, 1, 0, 0, 0, '2018-05-01 12:54:20', '2018-05-01 12:54:20'),
(19, 7, 120, 1, 0, 0, 0, '2018-05-01 12:54:37', '2018-05-01 12:54:37'),
(20, 9, 120, 1, 0, 0, 0, '2018-05-01 12:55:03', '2018-05-01 12:55:03'),
(21, 10, 120, 1, 0, 0, 0, '2018-05-01 12:55:27', '2018-05-01 12:55:27'),
(22, 7, 121, 1, 0, 0, 0, '2018-05-01 12:55:49', '2018-05-01 12:55:49'),
(23, 11, 121, 1, 0, 0, 0, '2018-05-01 12:56:29', '2018-05-01 12:56:29'),
(24, 9, 121, 1, 0, 0, 0, '2018-05-01 13:03:57', '2018-05-01 13:03:57'),
(25, 7, 122, 1, 0, 0, 0, '2018-05-01 13:18:16', '2018-05-01 13:18:16'),
(26, 10, 122, 1, 0, 0, 0, '2018-05-01 13:19:08', '2018-05-01 13:19:08'),
(27, 7, 123, 1, 0, 0, 0, '2018-05-01 13:23:05', '2018-05-01 13:23:05'),
(28, 9, 123, 2, 0, 0, 0, '2018-05-01 13:23:25', '2018-05-01 13:23:46'),
(29, 11, 123, 2, 0, 0, 0, '2018-05-01 13:24:06', '2018-05-01 13:25:43'),
(30, 7, 124, 1, 0, 0, 0, '2018-05-01 13:29:46', '2018-05-01 13:29:46'),
(31, 10, 124, 3, 0, 0, 0, '2018-05-01 13:30:13', '2018-05-01 13:35:03'),
(32, 12, 123, 2, 0, 0, 0, '2018-05-01 13:31:38', '2018-05-01 13:33:12'),
(33, 13, 124, 2, 0, 0, 0, '2018-05-01 13:31:40', '2018-05-01 13:36:53'),
(34, 12, 124, 2, 0, 0, 0, '2018-05-01 13:31:44', '2018-05-02 04:09:01'),
(35, 7, 125, 1, 0, 0, 0, '2018-05-02 04:04:04', '2018-05-02 04:04:04'),
(36, 7, 126, 1, 0, 0, 0, '2018-05-02 04:05:26', '2018-05-02 04:05:26'),
(37, 13, 126, 2, 0, 0, 0, '2018-05-02 04:06:33', '2018-05-02 04:08:13'),
(38, 11, 126, 1, 0, 0, 0, '2018-05-02 04:07:25', '2018-05-02 04:07:25'),
(39, 13, 125, 1, 0, 0, 0, '2018-05-02 04:08:03', '2018-05-02 04:08:03'),
(40, 10, 125, 2, 0, 0, 0, '2018-05-02 04:08:44', '2018-05-02 07:25:20'),
(41, 12, 125, 3, 0, 0, 0, '2018-05-02 04:09:00', '2018-05-02 04:10:59'),
(42, 12, 122, 1, 0, 0, 0, '2018-05-02 04:09:05', '2018-05-02 04:09:05'),
(43, 7, 127, 1, 0, 0, 0, '2018-05-02 04:10:00', '2018-05-02 04:10:00'),
(44, 12, 127, 3, 0, 0, 0, '2018-05-02 04:10:39', '2018-05-02 10:05:37'),
(45, 11, 127, 2, 0, 0, 0, '2018-05-02 04:11:12', '2018-05-02 04:51:15'),
(46, 12, 126, 1, 0, 0, 0, '2018-05-02 04:11:33', '2018-05-02 04:11:33'),
(47, 7, 128, 1, 0, 0, 0, '2018-05-02 06:18:08', '2018-05-02 06:18:08'),
(48, 8, 128, 1, 0, 0, 0, '2018-05-02 06:19:59', '2018-05-02 06:19:59'),
(49, 8, 129, 1, 0, 0, 0, '2018-05-02 07:05:18', '2018-05-02 07:05:18'),
(50, 10, 129, 3, 0, 0, 0, '2018-05-02 07:05:45', '2018-05-02 08:31:57'),
(51, 13, 127, 1, 0, 0, 0, '2018-05-02 08:30:31', '2018-05-02 08:30:31'),
(52, 7, 130, 2, 0, 0, 0, '2018-05-03 07:10:53', '2018-05-03 07:11:34'),
(53, 7, 131, 4, 0, 0, 0, '2018-05-03 07:11:45', '2018-05-03 07:12:39'),
(54, 7, 132, 6, 0, 0, 0, '2018-05-03 07:13:43', '2018-05-03 07:15:52'),
(55, 7, 133, 2, 0, 0, 0, '2018-05-03 07:16:07', '2018-05-03 07:16:07'),
(56, 7, 134, 5, 0, 0, 0, '2018-05-03 07:17:56', '2018-05-03 07:19:10'),
(57, 7, 135, 5, 0, 0, 0, '2018-05-03 07:19:31', '2018-05-03 07:21:06'),
(58, 7, 136, 4, 0, 0, 0, '2018-05-03 07:21:20', '2018-05-03 07:23:30'),
(59, 7, 137, 4, 0, 0, 0, '2018-05-03 07:23:48', '2018-05-03 07:24:47'),
(60, 7, 138, 2, 0, 0, 0, '2018-05-03 07:36:56', '2018-05-03 07:38:00'),
(61, 8, 139, 1, 0, 0, 0, '2018-05-03 09:03:24', '2018-05-03 09:03:24'),
(62, 8, 140, 5, 0, 0, 0, '2018-05-03 09:22:15', '2018-05-03 09:27:29'),
(63, 7, 140, 4, 0, 0, 0, '2018-05-03 09:24:30', '2018-05-03 09:26:36'),
(64, 8, 141, 2, 0, 0, 0, '2018-05-03 10:49:36', '2018-05-03 10:49:37'),
(65, 12, 141, 3, 0, 0, 0, '2018-05-03 10:50:01', '2018-05-03 10:51:27'),
(66, 10, 141, 1, 0, 0, 0, '2018-05-03 10:50:08', '2018-05-03 10:50:08'),
(67, 13, 141, 3, 0, 0, 0, '2018-05-03 10:50:32', '2018-05-03 12:34:56'),
(68, 11, 133, 1, 0, 0, 0, '2018-05-03 10:50:57', '2018-05-03 10:50:57'),
(69, 8, 142, 2, 0, 0, 0, '2018-05-03 10:59:45', '2018-05-03 10:59:46'),
(70, 9, 142, 1, 0, 0, 0, '2018-05-03 11:00:08', '2018-05-03 11:00:08'),
(71, 8, 143, 2, 0, 0, 0, '2018-05-03 11:04:17', '2018-05-03 11:04:18'),
(72, 11, 143, 1, 0, 0, 0, '2018-05-03 11:04:52', '2018-05-03 11:04:52'),
(73, 13, 143, 2, 0, 0, 0, '2018-05-03 11:05:05', '2018-05-03 12:34:52'),
(74, 13, 142, 2, 0, 0, 0, '2018-05-03 11:05:41', '2018-05-03 13:22:21'),
(75, 10, 143, 1, 0, 0, 0, '2018-05-03 11:06:37', '2018-05-03 11:06:37'),
(76, 8, 144, 1, 0, 0, 0, '2018-05-03 11:07:12', '2018-05-03 11:07:12'),
(77, 12, 144, 1, 0, 0, 0, '2018-05-03 11:35:08', '2018-05-03 11:35:08'),
(78, 14, 145, 1, 0, 0, 0, '2018-05-03 13:34:26', '2018-05-03 13:34:26'),
(79, 15, 145, 18, 0, 0, 3, '2018-05-03 13:36:13', '2018-05-03 13:56:09'),
(80, 16, 145, 1, 0, 0, 0, '2018-05-03 16:50:35', '2018-05-03 16:50:35'),
(81, 12, 143, 1, 0, 0, 0, '2018-05-04 03:54:46', '2018-05-04 03:54:46'),
(82, 9, 144, 3, 0, 0, 0, '2018-05-04 04:47:40', '2018-05-04 07:07:03'),
(83, 10, 144, 3, 0, 0, 0, '2018-05-04 04:48:05', '2018-05-04 07:07:50'),
(84, 11, 144, 1, 0, 0, 0, '2018-05-04 07:05:40', '2018-05-04 07:05:40'),
(85, 17, 146, 1, 0, 0, 0, '2018-05-04 07:33:36', '2018-05-04 07:33:36'),
(86, 13, 146, 3, 0, 0, 0, '2018-05-04 07:37:58', '2018-05-07 03:57:12'),
(87, 18, 145, 1, 0, 0, 1, '2018-05-04 12:38:12', '2018-05-04 12:38:12'),
(88, 19, 147, 1, 0, 0, 0, '2018-05-04 12:55:56', '2018-05-04 12:55:56'),
(89, 12, 147, 2, 0, 0, 0, '2018-05-04 12:58:06', '2018-05-04 13:29:22'),
(90, 13, 147, 4, 0, 0, 0, '2018-05-04 12:59:01', '2018-05-04 12:59:41'),
(91, 17, 148, 1, 0, 0, 0, '2018-05-04 13:56:19', '2018-05-04 13:56:19'),
(92, 19, 149, 1, 0, 0, 0, '2018-05-07 05:11:54', '2018-05-07 05:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, NULL, 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, NULL, 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"name","pivot_table":"roles","pivot":"0"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, NULL, 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL, 9),
(54, 3, 'mobile_no', 'text', 'Mobile No', 0, 1, 1, 1, 1, 1, NULL, 6),
(55, 3, 'company_name', 'text', 'Company Name', 1, 1, 1, 1, 1, 1, NULL, 7),
(56, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(57, 7, 'name', 'text', 'Pixel Tracker Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(58, 7, 'short_name', 'text', 'Short Name', 1, 0, 0, 0, 0, 0, NULL, 3),
(59, 7, 'pixel_slug', 'text', 'Pixel Slug', 1, 0, 0, 0, 0, 0, NULL, 4),
(60, 7, 'is_locked', 'checkbox', 'Is Locked', 0, 0, 0, 0, 0, 0, NULL, 5),
(61, 7, 'is_active', 'number', 'Status', 1, 1, 0, 0, 0, 0, '"1=Active,0=Inactive"', 6),
(62, 7, 'is_deleted', 'timestamp', 'Is Deleted', 1, 0, 0, 0, 0, 0, NULL, 7),
(63, 7, 'is_email_campaign', 'checkbox', 'Is Email Campaign', 1, 0, 0, 0, 0, 0, NULL, 8),
(64, 7, 'owner_id', 'number', 'Owner Id', 1, 0, 0, 0, 0, 0, NULL, 9),
(65, 7, 'is_dynamically_created', 'number', 'Is Dynamically Created', 1, 0, 0, 0, 0, 0, NULL, 10),
(66, 7, 'redirect_url', 'text', 'Redirect Url', 0, 0, 1, 0, 0, 0, NULL, 11),
(67, 7, 'created_at', 'timestamp', 'Created On', 0, 1, 1, 0, 0, 0, NULL, 12),
(68, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(69, 7, 'pixel_email', 'checkbox', 'Pixel Email', 0, 1, 1, 1, 1, 1, NULL, 12),
(70, 7, 'pixel_subject', 'checkbox', 'Pixel Subject', 0, 1, 1, 1, 1, 1, NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2017-11-20 03:30:03', '2017-11-20 03:30:03'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-11-20 03:30:03', '2017-11-20 03:30:03'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '2017-11-20 03:30:03', '2017-11-23 03:08:24'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2017-11-20 03:30:03', '2017-11-20 03:30:03'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-11-20 03:30:03', '2017-11-20 03:30:03'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-11-20 03:30:04', '2017-11-20 03:30:04'),
(7, 'pixel_trackers', 'emailtracker', 'Email Tracker', 'Email Trackers', 'voyager-wand', 'App\\PixelTracker', NULL, NULL, NULL, 0, 0, '2017-12-12 05:24:57', '2018-03-23 05:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `location_reports`
--

CREATE TABLE `location_reports` (
  `id` int(11) UNSIGNED NOT NULL,
  `analytic_id` int(11) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state_iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location_reports`
--

INSERT INTO `location_reports` (`id`, `analytic_id`, `country`, `country_iso`, `state`, `state_iso`, `total`, `created_at`, `updated_at`) VALUES
(3, 4, 'unknown', 'unknown', 'unknown', 'unknown-unknown', 3, '2017-12-14 04:06:40', '2017-12-14 04:28:34'),
(4, 6, 'unknown', 'unknown', 'unknown', 'unknown-unknown', 15, '2017-12-18 01:24:56', '2018-01-04 03:08:34'),
(5, 28, 'unknown', 'unknown', 'unknown', 'unknown-unknown', 3, '2018-03-22 23:52:25', '2018-03-22 23:55:46'),
(6, 104, 'India', 'IN', 'Gujarat', 'IN-GJ', 3, '2018-05-01 11:48:02', '2018-05-01 11:48:42'),
(7, 105, 'India', 'IN', 'Gujarat', 'IN-GJ', 2, '2018-05-01 11:54:22', '2018-05-01 11:54:37'),
(8, 106, 'India', 'IN', 'unknown', 'IN-unknown', 2, '2018-05-01 11:56:02', '2018-05-01 11:56:14'),
(9, 109, 'India', 'IN', 'Gujarat', 'IN-GJ', 5, '2018-05-01 12:05:19', '2018-05-01 12:09:18'),
(10, 111, 'India', 'IN', 'unknown', 'IN-unknown', 3, '2018-05-01 12:20:04', '2018-05-01 12:28:58'),
(11, 112, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-01 12:34:10', '2018-05-01 12:34:10'),
(12, 113, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-01 12:42:53', '2018-05-01 12:42:53'),
(13, 118, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-01 12:53:13', '2018-05-01 12:53:13'),
(14, 119, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-01 12:53:35', '2018-05-01 12:53:35'),
(15, 119, 'unknown', NULL, 'unknown', '-unknown', 2, '2018-05-01 12:53:51', '2018-05-01 12:54:20'),
(16, 120, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-01 12:54:37', '2018-05-01 12:54:37'),
(17, 120, 'unknown', NULL, 'unknown', '-unknown', 2, '2018-05-01 12:55:03', '2018-05-01 12:55:27'),
(18, 121, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-01 12:55:49', '2018-05-01 12:55:49'),
(19, 121, 'unknown', NULL, 'unknown', '-unknown', 2, '2018-05-01 12:56:29', '2018-05-01 13:03:57'),
(20, 122, 'India', 'IN', 'Gujarat', 'IN-GJ', 2, '2018-05-01 13:18:16', '2018-05-02 04:09:05'),
(21, 122, 'unknown', NULL, 'unknown', '-unknown', 1, '2018-05-01 13:19:08', '2018-05-01 13:19:08'),
(22, 123, 'India', 'IN', 'Gujarat', 'IN-GJ', 3, '2018-05-01 13:23:05', '2018-05-01 13:33:12'),
(23, 123, 'unknown', NULL, 'unknown', '-unknown', 4, '2018-05-01 13:23:25', '2018-05-01 13:25:43'),
(24, 124, 'India', 'IN', 'Gujarat', 'IN-GJ', 3, '2018-05-01 13:29:46', '2018-05-02 04:09:01'),
(25, 124, 'unknown', NULL, 'unknown', '-unknown', 3, '2018-05-01 13:30:13', '2018-05-01 13:35:03'),
(26, 124, 'India', 'IN', 'unknown', 'IN-unknown', 2, '2018-05-01 13:31:40', '2018-05-01 13:36:53'),
(27, 125, 'India', 'IN', 'Gujarat', 'IN-GJ', 4, '2018-05-02 04:04:04', '2018-05-02 04:10:59'),
(28, 126, 'India', 'IN', 'Gujarat', 'IN-GJ', 2, '2018-05-02 04:05:26', '2018-05-02 04:11:33'),
(29, 126, 'India', 'IN', 'unknown', 'IN-unknown', 2, '2018-05-02 04:06:33', '2018-05-02 04:08:13'),
(30, 126, 'unknown', NULL, 'unknown', '-unknown', 1, '2018-05-02 04:07:25', '2018-05-02 04:07:25'),
(31, 125, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-02 04:08:03', '2018-05-02 04:08:03'),
(32, 125, 'unknown', NULL, 'unknown', '-unknown', 2, '2018-05-02 04:08:44', '2018-05-02 07:25:20'),
(33, 127, 'India', 'IN', 'Gujarat', 'IN-GJ', 4, '2018-05-02 04:10:00', '2018-05-02 10:05:37'),
(34, 127, 'unknown', NULL, 'unknown', '-unknown', 2, '2018-05-02 04:11:12', '2018-05-02 04:51:15'),
(35, 128, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-02 06:18:08', '2018-05-02 06:18:08'),
(36, 128, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-02 06:19:59', '2018-05-02 06:19:59'),
(37, 129, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-02 07:05:18', '2018-05-02 07:05:18'),
(38, 129, 'unknown', NULL, 'unknown', '-unknown', 3, '2018-05-02 07:05:45', '2018-05-02 08:31:57'),
(39, 127, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-02 08:30:31', '2018-05-02 08:30:31'),
(40, 130, 'India', 'IN', 'Gujarat', 'IN-GJ', 2, '2018-05-03 07:10:53', '2018-05-03 07:11:34'),
(41, 131, 'India', 'IN', 'Gujarat', 'IN-GJ', 4, '2018-05-03 07:11:45', '2018-05-03 07:12:39'),
(42, 132, 'India', 'IN', 'Gujarat', 'IN-GJ', 6, '2018-05-03 07:13:43', '2018-05-03 07:15:52'),
(43, 133, 'India', 'IN', 'Gujarat', 'IN-GJ', 2, '2018-05-03 07:16:07', '2018-05-03 07:16:07'),
(44, 134, 'India', 'IN', 'Gujarat', 'IN-GJ', 5, '2018-05-03 07:17:56', '2018-05-03 07:19:10'),
(45, 135, 'India', 'IN', 'Gujarat', 'IN-GJ', 5, '2018-05-03 07:19:31', '2018-05-03 07:21:06'),
(46, 136, 'India', 'IN', 'Gujarat', 'IN-GJ', 4, '2018-05-03 07:21:20', '2018-05-03 07:23:30'),
(47, 137, 'India', 'IN', 'Gujarat', 'IN-GJ', 4, '2018-05-03 07:23:48', '2018-05-03 07:24:47'),
(48, 138, 'India', 'IN', 'Gujarat', 'IN-GJ', 2, '2018-05-03 07:36:56', '2018-05-03 07:38:00'),
(49, 139, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-03 09:03:24', '2018-05-03 09:03:24'),
(50, 140, 'India', 'IN', 'unknown', 'IN-unknown', 5, '2018-05-03 09:22:15', '2018-05-03 09:27:29'),
(51, 140, 'India', 'IN', 'Gujarat', 'IN-GJ', 4, '2018-05-03 09:24:30', '2018-05-03 09:26:36'),
(52, 141, 'India', 'IN', 'unknown', 'IN-unknown', 5, '2018-05-03 10:49:36', '2018-05-03 12:34:56'),
(53, 141, 'India', 'IN', 'Gujarat', 'IN-GJ', 3, '2018-05-03 10:50:01', '2018-05-03 10:51:27'),
(54, 141, 'unknown', NULL, 'unknown', '-unknown', 1, '2018-05-03 10:50:08', '2018-05-03 10:50:08'),
(55, 133, 'unknown', NULL, 'unknown', '-unknown', 1, '2018-05-03 10:50:57', '2018-05-03 10:50:57'),
(56, 142, 'India', 'IN', 'unknown', 'IN-unknown', 4, '2018-05-03 10:59:45', '2018-05-03 13:22:21'),
(57, 142, 'unknown', NULL, 'unknown', '-unknown', 1, '2018-05-03 11:00:08', '2018-05-03 11:00:08'),
(58, 143, 'India', 'IN', 'unknown', 'IN-unknown', 4, '2018-05-03 11:04:17', '2018-05-03 12:34:52'),
(59, 143, 'unknown', NULL, 'unknown', '-unknown', 2, '2018-05-03 11:04:52', '2018-05-03 11:06:37'),
(60, 144, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-03 11:07:12', '2018-05-03 11:07:12'),
(61, 144, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-03 11:35:08', '2018-05-03 11:35:08'),
(62, 145, 'India', 'IN', 'Gujarat', 'IN-GJ', 23, '2018-05-03 13:34:26', '2018-05-03 16:50:35'),
(63, 143, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-04 03:54:46', '2018-05-04 03:54:46'),
(64, 144, 'unknown', NULL, 'unknown', '-unknown', 7, '2018-05-04 04:47:40', '2018-05-04 07:07:50'),
(65, 146, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-04 07:33:36', '2018-05-04 07:33:36'),
(66, 146, 'India', 'IN', 'unknown', 'IN-unknown', 3, '2018-05-04 07:37:58', '2018-05-07 03:57:12'),
(67, 145, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-04 12:38:12', '2018-05-04 12:38:12'),
(68, 147, 'India', 'IN', 'unknown', 'IN-unknown', 5, '2018-05-04 12:55:56', '2018-05-04 12:59:41'),
(69, 147, 'India', 'IN', 'Gujarat', 'IN-GJ', 2, '2018-05-04 12:58:06', '2018-05-04 13:29:22'),
(70, 148, 'India', 'IN', 'Gujarat', 'IN-GJ', 1, '2018-05-04 13:56:19', '2018-05-04 13:56:19'),
(71, 149, 'India', 'IN', 'unknown', 'IN-unknown', 1, '2018-05-07 05:11:54', '2018-05-07 05:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-11-20 03:30:10', '2017-11-20 03:30:10'),
(3, 'user', '2018-03-21 01:32:49', '2018-03-22 00:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2017-11-20 03:30:10', '2017-11-20 03:30:10', 'voyager.dashboard', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.users.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.roles.index', NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2017-11-20 03:30:11', '2018-03-21 02:09:10', 'voyager.menus.index', NULL),
(15, 1, 'Email Tracker', '/admin/emailtracker', '_self', 'voyager-wand', '#000000', NULL, 11, '2018-03-21 02:10:48', '2018-03-23 06:37:12', NULL, ''),
(16, 3, 'Pixeltracker', '/admin/pixeltracker', '_self', 'voyager-wand', '#000000', NULL, 12, '2018-03-22 00:10:20', '2018-03-22 00:10:20', NULL, '');

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
(120, '2014_10_12_000000_create_users_table', 1),
(121, '2014_10_12_100000_create_password_resets_table', 1),
(122, '2016_01_01_000000_add_voyager_user_fields', 1),
(123, '2016_01_01_000000_create_data_types_table', 1),
(124, '2016_01_01_000000_create_pages_table', 1),
(125, '2016_01_01_000000_create_posts_table', 1),
(126, '2016_02_15_204651_create_categories_table', 1),
(127, '2016_05_19_173453_create_menu_table', 1),
(128, '2016_10_21_190000_create_roles_table', 1),
(129, '2016_10_21_190000_create_settings_table', 1),
(130, '2016_11_30_135954_create_permission_table', 1),
(131, '2016_11_30_141208_create_permission_role_table', 1),
(132, '2016_12_26_201236_data_types__add__server_side', 1),
(133, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(134, '2017_01_14_005015_create_translations_table', 1),
(135, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(136, '2017_01_15_000000_create_permission_groups_table', 1),
(137, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(138, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(139, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(140, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(141, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(142, '2017_08_05_000000_add_group_to_settings_table', 1),
(143, '2017_11_20_073001_refresh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-11-20 03:30:21', '2018-03-21 01:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sunildora94@gmail.com', '$2y$10$1RANhxnCGbfeOme19Qn5neiGMM2OlYGArWzC6o4Rkg/TOhAMbjKAa', '2017-11-20 04:33:52'),
('sunil.b.dora@doyenhub.com', '$2y$10$G.UQdmwF6dCmHexbFAwHVOm2gwPH4ePwK3gGtGzdO3xf8wZU8wXAO', '2017-11-20 04:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-11-20 03:30:12', '2017-11-20 03:30:12', NULL),
(2, 'browse_database', NULL, '2017-11-20 03:30:12', '2017-11-20 03:30:12', NULL),
(3, 'browse_media', NULL, '2017-11-20 03:30:12', '2017-11-20 03:30:12', NULL),
(4, 'browse_compass', NULL, '2017-11-20 03:30:12', '2017-11-20 03:30:12', NULL),
(5, 'browse_menus', 'menus', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(6, 'read_menus', 'menus', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(7, 'edit_menus', 'menus', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(8, 'add_menus', 'menus', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(9, 'delete_menus', 'menus', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(10, 'browse_pages', 'pages', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(11, 'read_pages', 'pages', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(12, 'edit_pages', 'pages', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(13, 'add_pages', 'pages', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(14, 'delete_pages', 'pages', '2017-11-20 03:30:13', '2017-11-20 03:30:13', NULL),
(15, 'browse_roles', 'roles', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(16, 'read_roles', 'roles', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(17, 'edit_roles', 'roles', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(18, 'add_roles', 'roles', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(19, 'delete_roles', 'roles', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(20, 'browse_users', 'users', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(21, 'read_users', 'users', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(22, 'edit_users', 'users', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(23, 'add_users', 'users', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(24, 'delete_users', 'users', '2017-11-20 03:30:14', '2017-11-20 03:30:14', NULL),
(25, 'browse_posts', 'posts', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(26, 'read_posts', 'posts', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(27, 'edit_posts', 'posts', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(28, 'add_posts', 'posts', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(29, 'delete_posts', 'posts', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(30, 'browse_categories', 'categories', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(31, 'read_categories', 'categories', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(32, 'edit_categories', 'categories', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(33, 'add_categories', 'categories', '2017-11-20 03:30:15', '2017-11-20 03:30:15', NULL),
(34, 'delete_categories', 'categories', '2017-11-20 03:30:16', '2017-11-20 03:30:16', NULL),
(35, 'browse_settings', 'settings', '2017-11-20 03:30:16', '2017-11-20 03:30:16', NULL),
(36, 'read_settings', 'settings', '2017-11-20 03:30:16', '2017-11-20 03:30:16', NULL),
(37, 'edit_settings', 'settings', '2017-11-20 03:30:16', '2017-11-20 03:30:16', NULL),
(38, 'add_settings', 'settings', '2017-11-20 03:30:16', '2017-11-20 03:30:16', NULL),
(39, 'delete_settings', 'settings', '2017-11-20 03:30:16', '2017-11-20 03:30:16', NULL),
(40, 'browse_pixel_trackers', 'pixel_trackers', '2017-12-12 05:24:57', '2017-12-12 05:24:57', NULL),
(41, 'read_pixel_trackers', 'pixel_trackers', '2017-12-12 05:24:57', '2017-12-12 05:24:57', NULL),
(42, 'edit_pixel_trackers', 'pixel_trackers', '2017-12-12 05:24:57', '2017-12-12 05:24:57', NULL),
(43, 'add_pixel_trackers', 'pixel_trackers', '2017-12-12 05:24:57', '2017-12-12 05:24:57', NULL),
(44, 'delete_pixel_trackers', 'pixel_trackers', '2017-12-12 05:24:57', '2017-12-12 05:24:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pixel_trackers`
--

CREATE TABLE `pixel_trackers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `pixel_slug` varchar(255) NOT NULL,
  `is_locked` tinyint(4) DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_email_campaign` tinyint(4) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL,
  `is_dynamically_created` tinyint(4) NOT NULL DEFAULT '0',
  `redirect_url` text,
  `pixel_email` varchar(255) DEFAULT NULL,
  `pixel_subject` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pixel_trackers`
--

INSERT INTO `pixel_trackers` (`id`, `name`, `short_name`, `pixel_slug`, `is_locked`, `is_active`, `is_deleted`, `is_email_campaign`, `owner_id`, `is_dynamically_created`, `redirect_url`, `pixel_email`, `pixel_subject`, `timezone`, `created_at`, `updated_at`) VALUES
(11, 'first_pt', 'first', 'daca4adc0b376111baccb7057e2533', 0, 1, 0, 0, 1, 0, '', NULL, NULL, 'Asia/Urumqi', '2017-12-14 04:06:33', '2017-12-14 04:28:44'),
(13, 'second_pt', 'second_pt', 'ffa3e463a39907f4dea2f0e707952a', 0, 1, 0, 0, 1, 0, '', NULL, NULL, 'Asia/Kolkata', '2017-12-18 01:23:11', '2017-12-18 02:32:17'),
(15, 'Test', 'Test', '7df9d66f03493f80ecf62c20bec7f2', 0, 1, 0, 0, 8, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-20 07:54:02', '2018-03-20 07:54:02'),
(20, 'RRRRKKKKKdfddd', 'RRRR', '26c14a0b8c32a7b3b9bfd7943014c4', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-21 23:40:58', '2018-03-22 00:00:27'),
(22, 'riz', 'riz', '222da51ea530678c7aa9d3f77b9a16', 0, 1, 0, 0, 8, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 00:18:05', '2018-03-22 00:18:05'),
(23, 'RRR', 'RRR', '0c6c813b34125f8f357e54e38d4be3', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 00:47:11', '2018-03-22 00:47:11'),
(24, 'ddd', 'ddd', '13ec56b4ba606e4f02bf2d162419fb', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 01:28:02', '2018-03-22 01:28:02'),
(25, 'Rathdo', 'Rathdo', '5194e69e1aaf27eee60b4232a57e51', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 03:10:57', '2018-03-22 03:10:57'),
(26, 'NNNEEE', 'NNNEEE', '834bd1821d8a4ff79456d365ec3904', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 03:12:39', '2018-03-22 03:12:39'),
(27, 'Sunil', 'Sunil', 'b05c5329afe9589592a8bfb2c4040f', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 05:37:41', '2018-03-22 05:37:41'),
(28, 'QWERTY', 'QWERTY', 'ca43966bf3a5e3a9cbf3cbab7e2d9c', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 05:45:19', '2018-03-22 05:45:19'),
(29, 'QWERTYu', 'QWERTYu', '54fb21e7c8bcddeb2d459df37b44fb', 0, 1, 0, 0, 9, 0, '', NULL, NULL, 'Asia/Kolkata', '2018-03-22 06:11:44', '2018-03-22 06:11:44'),
(131, 'dfsdfs_fsdgdf_fd', 'dfsdfs_fsdgdf_fd', 'a5948e936ef114f05ef2b5efbfe81f', 0, 1, 0, 0, 9, 0, '', 'rathodtrimantra@gmail.com', 'dfsdfs fsdgdf fd', 'Asia/Kolkata', '2018-05-01 13:29:45', '2018-05-01 13:29:45'),
(132, 'xyz_test', 'xyz_test', '9d7d3c66be89a6c591ea44823cb3ce', 0, 1, 0, 0, 9, 0, '', 'rathodtrimantra@gmail.com', 'xyz test', 'Asia/Kolkata', '2018-05-02 04:04:02', '2018-05-02 04:04:02'),
(133, 'abc_test', 'abc_test', '4a81f3edcc07601dde882dc5c70c3d', 0, 1, 0, 0, 9, 0, '', 'rathodtrimantra@gmail.com', 'abc test', 'Asia/Kolkata', '2018-05-02 04:05:24', '2018-05-02 04:05:24'),
(134, 'Email_Tracking', 'Email_Tracking', '34014d6ba0da950f3d32eb07e6d7fd', 0, 1, 0, 0, 9, 0, '', 'rathodtrimantra@gmail.com', 'Email Tracking', 'Asia/Kolkata', '2018-05-02 04:09:58', '2018-05-02 04:09:58'),
(135, 'ytut_mrtu', 'ytut_mrtu', '806adad58a4d339a02b04c78da5403', 0, 1, 0, 0, 9, 0, '', 'rathodtrimantra@gmail.com', 'ytut mrtu', 'Asia/Kolkata', '2018-05-02 06:18:06', '2018-05-02 06:18:06'),
(136, 'chfg_hgfdhd', 'chfg_hgfdhd', 'fcbc0a11b71e55f3b9f12fd968eeee', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'chfg hgfdhd', 'Asia/Kolkata', '2018-05-02 07:05:17', '2018-05-02 07:05:17'),
(137, 'asdfsd_sdgfdfg', 'asdfsd_sdgfdfg', '894e6c9fe3ea0a1d7b942335deff55', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'asdfsd sdgfdfg', 'Asia/Kolkata', '2018-05-03 07:10:48', '2018-05-03 07:10:48'),
(138, 'fsdf_gfsdgdfg', 'fsdf_gfsdgdfg', '3136b6f483d8d8b65055e33bb78475', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'fsdf gfsdgdfg', 'Asia/Kolkata', '2018-05-03 07:11:43', '2018-05-03 07:11:43'),
(139, 'bvnvb_cnjhg', 'bvnvb_cnjhg', '4ef4908bdfa8d585d9996b0e1bbbd3', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'bvnvb cnjhg', 'Asia/Kolkata', '2018-05-03 07:13:39', '2018-05-03 07:13:39'),
(140, 'hgfh_dhgfhgf', 'hgfh_dhgfhgf', '62cdb8d653718ea0aaeea40ba6d428', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'hgfh dhgfhgf', 'Asia/Kolkata', '2018-05-03 07:16:05', '2018-05-03 07:16:05'),
(141, 'fdfd_dfdf', 'fdfd_dfdf', '90a48d0a3c1e78372326c447f2ef17', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'fdfd dfdf', 'Asia/Kolkata', '2018-05-03 07:17:54', '2018-05-03 07:17:54'),
(142, 'sff_sdfsdf', 'sff_sdfsdf', '2c301c36937c2ca8b0606e3b13efbe', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'sff sdfsdf', 'Asia/Kolkata', '2018-05-03 07:19:29', '2018-05-03 07:19:29'),
(143, 'dfdg_dfg', 'dfdg_dfg', '2dfa3b1ba09748543059382af9270f', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'dfdg dfg', 'Asia/Kolkata', '2018-05-03 07:21:18', '2018-05-03 07:21:18'),
(144, 'fdsfdfsdf_dfsdf', 'fdsfdfsdf_dfsdf', 'b5aaf64b57404fb341429588af843a', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'fdsfdfsdf dfsdf', 'Asia/Kolkata', '2018-05-03 07:23:47', '2018-05-03 07:23:47'),
(145, 'dffsd_sdff_aag_dfg', 'dffsd_sdff_aag_dfg', '6cf645a828306dbfebe0cece71afbf', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'dffsd sdff aag dfg', 'Asia/Kolkata', '2018-05-03 07:36:55', '2018-05-03 07:36:55'),
(146, 'sdasf_sdfsdf', 'sdasf_sdfsdf', 'cbbde1e1c86aee764ac2e8fa570497', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'sdasf sdfsdf', 'Asia/Kolkata', '2018-05-03 09:03:21', '2018-05-03 09:03:21'),
(147, 'dsadas', 'dsadas', 'a74fe8b7266cf55fe7473c7dd7272c', 0, 1, 0, 0, 9, 0, '', 'timstest01@gmail.com', 'dsadas', 'Asia/Kolkata', '2018-05-03 09:22:14', '2018-05-03 09:22:14'),
(148, 'test_email_tracker_1', 'test_email_tracker_1', 'ee15879ae28d3dfad6a505bb789814', 0, 1, 0, 0, 10, 0, '', 'rathodtrimantra@gmail.com', 'test email tracker 1', 'Asia/Kolkata', '2018-05-03 10:49:34', '2018-05-03 10:49:34'),
(149, 'RRR_Account', 'RRR_Account', 'eed5bc6760e9718177e2ef0e189961', 0, 1, 0, 0, 10, 0, '', 'rathodtrimantra@gmail.com', 'RRR Account', 'Asia/Kolkata', '2018-05-03 10:59:44', '2018-05-03 10:59:44'),
(150, 'FSDF_FFFF', 'FSDF_FFFF', 'e07a6e56facddd592291e6f51699d9', 0, 1, 0, 0, 10, 0, '', 'rathodtrimantra@gmail.com', 'FSDF FFFF', 'Asia/Kolkata', '2018-05-03 11:04:16', '2018-05-03 11:04:16'),
(151, 'testetetetete', 'testetetetete', 'bdd03065a6c3374fa44f1e77f26be2', 0, 1, 0, 0, 10, 0, '', 'rathodtrimantra@gmail.com', 'testetetetete', 'Asia/Kolkata', '2018-05-03 11:07:11', '2018-05-03 11:07:11'),
(152, 'Test_Email_tracker', 'Test_Email_tracker', '594426e84b5982aaf2db7fde17dc5c', 0, 1, 0, 0, 9, 0, '', 'mukti.d.roy@trimantra.com', 'Test Email tracker', 'Asia/Kolkata', '2018-05-03 13:34:26', '2018-05-03 13:34:26'),
(153, 'new_testffg', 'new_testffg', 'ce8ca9ee9925d9f48b09109c297cf3', 0, 1, 0, 0, 10, 0, '', 'timstest01@gmail.com', 'new testffg', 'Asia/Kolkata', '2018-05-04 13:03:35', '2018-05-04 07:33:35'),
(154, 'test_new', 'test_new', 'ce6f5d0e47700e66670c8db834fbe4', 0, 1, 0, 0, 10, 0, '', 'timstest01@gmail.com', 'test new', 'Asia/Calcutta', '2018-05-04 12:55:55', '2018-05-04 12:55:55'),
(155, 'test1', 'test1', '7614caf44cb63052bc321b7c14a952', 0, 1, 0, 0, 10, 0, '', 'timstest01@gmail.com', 'test1', 'Asia/Calcutta', '2018-05-04 13:56:18', '2018-05-04 13:56:18'),
(156, 'newsunday', 'newsunday', '8ea4f0c4a9ce240f56f79e2e2d97bf', 0, 1, 0, 0, 10, 0, '', 'timstest01@gmail.com', 'newsunday', 'America/New_York', '2018-05-07 05:11:52', '2018-05-07 05:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-20 03:30:21', '2017-11-20 03:30:21'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-20 03:30:21', '2017-11-20 03:30:21'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-20 03:30:21', '2017-11-20 03:30:21'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-20 03:30:21', '2017-11-20 03:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, NULL),
(2, 'user', 'Normal User', '2017-11-20 03:30:12', '2017-11-20 03:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Email Tracking', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Email tracker. The Missing Admin for Email Tracker', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_raw_data`
--

CREATE TABLE `tracker_raw_data` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `last_clicked` datetime DEFAULT NULL,
  `open_date` datetime DEFAULT NULL,
  `engagement_type` varchar(50) DEFAULT NULL,
  `updated_engagement_type` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ua_string` text,
  `request_data` text,
  `open_duration` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker_raw_data`
--

INSERT INTO `tracker_raw_data` (`id`, `ip_address`, `status`, `last_clicked`, `open_date`, `engagement_type`, `updated_engagement_type`, `email`, `ua_string`, `request_data`, `open_duration`, `created_at`, `updated_at`) VALUES
(1, '192.168.1.63', 'open', NULL, '2017-12-13 08:21:22', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 3.4672, '2017-12-13 02:51:22', '2017-12-13 02:51:26'),
(2, '192.168.1.63', 'open', NULL, '2017-12-13 13:08:10', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 25.1446, '2017-12-13 07:38:10', '2017-12-13 07:38:35'),
(3, '192.168.1.63', 'open', NULL, '2017-12-13 13:08:43', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 5.88358, '2017-12-13 07:38:43', '2017-12-13 07:38:49'),
(4, '192.168.1.63', 'open', NULL, '2017-12-13 13:08:50', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 1.67925, '2017-12-13 07:38:50', '2017-12-13 07:38:52'),
(5, '192.168.1.63', 'open', NULL, '2017-12-13 13:56:40', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 2.50359, '2017-12-13 08:26:40', '2017-12-13 08:26:43'),
(6, '192.168.1.63', 'open', NULL, '2017-12-14 09:05:30', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:35:30', '2017-12-14 03:35:30'),
(7, '192.168.1.63', 'open', NULL, '2017-12-14 09:05:49', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:35:49', '2017-12-14 03:35:49'),
(8, '192.168.1.63', 'open', NULL, '2017-12-14 09:06:18', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:36:18', '2017-12-14 03:36:18'),
(9, '192.168.1.63', 'open', NULL, '2017-12-14 09:06:59', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:36:59', '2017-12-14 03:36:59'),
(10, '192.168.1.63', 'open', NULL, '2017-12-14 09:07:06', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:37:06', '2017-12-14 03:37:06'),
(11, '192.168.1.63', 'open', NULL, '2017-12-14 09:09:44', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:39:44', '2017-12-14 03:39:44'),
(12, '192.168.1.63', 'open', NULL, '2017-12-14 09:10:00', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:40:00', '2017-12-14 03:40:00'),
(13, '192.168.1.63', 'open', NULL, '2017-12-14 09:10:11', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:40:11', '2017-12-14 03:40:11'),
(14, '192.168.1.63', 'open', NULL, '2017-12-14 09:10:26', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:40:26', '2017-12-14 03:40:26'),
(15, '192.168.1.63', 'open', NULL, '2017-12-14 09:10:49', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:40:49', '2017-12-14 03:40:49'),
(16, '192.168.1.63', 'open', NULL, '2017-12-14 09:10:52', 'read', NULL, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, '2017-12-14 03:40:52', '2017-12-14 03:40:52'),
(17, '192.168.1.63', 'open', NULL, '2017-12-14 09:11:05', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 2.28452, '2017-12-14 03:41:05', '2017-12-14 03:41:07'),
(18, '192.168.1.63', 'open', NULL, '2017-12-14 09:36:39', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 2.15616, '2017-12-14 04:06:39', '2017-12-14 04:06:42'),
(19, '192.168.1.63', 'open', NULL, '2017-12-14 09:58:29', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 1.66744, '2017-12-14 04:28:29', '2017-12-14 04:28:30'),
(20, '192.168.1.63', 'open', NULL, '2017-12-14 09:58:34', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 1.00171, '2017-12-14 04:28:34', '2017-12-14 04:28:35'),
(21, '192.168.1.83', 'forward', NULL, '2017-12-18 06:54:56', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '{"f":null}', 25.1871, '2017-12-18 01:24:56', '2017-12-18 01:25:21'),
(22, '192.168.1.83', 'forward', NULL, '2017-12-18 06:56:01', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '{"f":null}', 25.1974, '2017-12-18 01:26:01', '2017-12-18 01:26:26'),
(23, '192.168.1.83', 'open', NULL, '2017-12-18 07:24:53', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 25.0718, '2017-12-18 01:54:53', '2017-12-18 01:55:18'),
(24, '192.168.1.83', 'open', NULL, '2017-12-18 07:28:30', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 25.0773, '2017-12-18 01:58:30', '2017-12-18 01:58:55'),
(25, '192.168.1.83', 'open', NULL, '2017-12-18 07:28:56', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 23.1867, '2017-12-18 01:58:56', '2017-12-18 01:59:19'),
(26, '192.168.1.83', 'open', NULL, '2017-12-18 07:29:18', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 10.2405, '2017-12-18 01:59:18', '2017-12-18 01:59:28'),
(27, '192.168.1.83', 'open', NULL, '2017-12-18 08:28:30', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 25.0365, '2017-12-18 02:58:30', '2017-12-18 02:58:55'),
(28, '192.168.1.83', 'open', NULL, '2017-12-18 08:28:30', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 5.22409, '2017-12-18 02:58:30', '2017-12-18 02:58:35'),
(29, '192.168.1.83', 'open', NULL, '2017-12-18 08:29:14', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 25.1988, '2017-12-18 02:59:14', '2017-12-18 02:59:40'),
(30, '192.168.1.83', 'open', NULL, '2017-12-18 08:30:51', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 25.1753, '2017-12-18 03:00:51', '2017-12-18 03:01:17'),
(31, '192.168.1.83', 'open', NULL, '2017-12-18 08:31:19', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 25.0501, '2017-12-18 03:01:19', '2017-12-18 03:01:45'),
(32, '192.168.1.83', 'open', NULL, '2017-12-18 08:32:51', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 9.92585, '2017-12-18 03:02:51', '2017-12-18 03:03:01'),
(33, '192.168.1.84', 'open', NULL, '2017-12-18 08:35:35', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 25.2191, '2017-12-18 03:05:35', '2017-12-18 03:06:00'),
(34, '192.168.1.83', 'open', NULL, '2017-12-18 09:03:40', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 11.0326, '2017-12-18 03:33:40', '2017-12-18 03:33:51'),
(35, '192.168.1.83', 'open', NULL, '2017-12-18 09:03:52', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '', 25.1716, '2017-12-18 03:33:52', '2017-12-18 03:34:17'),
(36, '192.168.1.83', 'open', NULL, '2018-01-04 08:38:33', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', '', 25.2416, '2018-01-04 03:08:33', '2018-01-04 03:08:58'),
(37, '192.168.1.83', 'forward', NULL, '2018-03-20 11:24:27', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', '{"f":null}', 25.1781, '2018-03-20 05:54:27', '2018-03-20 05:54:53'),
(38, '192.168.1.83', 'open', NULL, '2018-03-20 11:25:38', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', '', 25.0476, '2018-03-20 05:55:38', '2018-03-20 05:56:03'),
(39, '192.168.1.63', 'print', NULL, '2018-03-23 05:22:24', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', '{"p":null}', 15.1666, '2018-03-22 23:52:24', '2018-03-22 23:52:40'),
(40, '192.168.1.63', 'print', NULL, '2018-03-23 05:22:34', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', '{"p":null}', 6.7278, '2018-03-22 23:52:34', '2018-03-22 23:52:41'),
(41, '192.168.1.63', 'forward', NULL, '2018-03-23 05:25:46', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', '{"f":null}', 16.9248, '2018-03-22 23:55:46', '2018-03-22 23:56:03'),
(42, '103.254.172.156', 'open', NULL, '2018-05-01 11:48:02', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 11.1421, '2018-05-01 11:48:02', '2018-05-01 11:48:13'),
(43, '103.254.172.156', 'open', NULL, '2018-05-01 11:48:15', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 6.62809, '2018-05-01 11:48:15', '2018-05-01 11:48:22'),
(44, '103.254.172.156', 'open', NULL, '2018-05-01 11:48:42', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 25.2432, '2018-05-01 11:48:42', '2018-05-01 11:49:07'),
(45, '103.254.172.156', 'open', NULL, '2018-05-01 11:54:22', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 25.2445, '2018-05-01 11:54:22', '2018-05-01 11:54:48'),
(46, '103.254.172.156', 'open', NULL, '2018-05-01 11:54:37', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"f%27":null}', 25.2416, '2018-05-01 11:54:37', '2018-05-01 11:55:02'),
(47, '157.119.207.2', 'open', NULL, '2018-05-01 11:56:02', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 7.53397, '2018-05-01 11:56:02', '2018-05-01 11:56:09'),
(48, '157.119.207.2', 'open', NULL, '2018-05-01 11:56:14', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"f%27)%7D":null,"lt;\\/style":null,"gt":null}', 1.82952, '2018-05-01 11:56:14', '2018-05-01 11:56:15'),
(49, '103.254.172.156', 'open', NULL, '2018-05-01 12:05:19', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 25.2475, '2018-05-01 12:05:19', '2018-05-01 12:05:44'),
(50, '103.254.172.156', 'open', NULL, '2018-05-01 12:07:58', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2456, '2018-05-01 12:07:58', '2018-05-01 12:08:23'),
(51, '103.254.172.156', 'open', NULL, '2018-05-01 12:08:20', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2427, '2018-05-01 12:08:20', '2018-05-01 12:08:46'),
(52, '103.254.172.156', 'open', NULL, '2018-05-01 12:08:38', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2395, '2018-05-01 12:08:38', '2018-05-01 12:09:03'),
(53, '103.254.172.156', 'open', NULL, '2018-05-01 12:09:18', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"f%27":null}', 25.2278, '2018-05-01 12:09:18', '2018-05-01 12:09:43'),
(54, '157.119.207.2', 'open', NULL, '2018-05-01 12:20:04', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 25.2389, '2018-05-01 12:20:04', '2018-05-01 12:20:29'),
(55, '157.119.207.2', 'open', NULL, '2018-05-01 12:21:56', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 25.24, '2018-05-01 12:21:56', '2018-05-01 12:22:21'),
(56, '157.119.207.2', 'open', NULL, '2018-05-01 12:28:58', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '{"p%27);":null}', 6.32873, '2018-05-01 12:28:58', '2018-05-01 12:29:04'),
(57, '103.254.172.156', 'open', NULL, '2018-05-01 12:34:10', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2445, '2018-05-01 12:34:10', '2018-05-01 12:34:36'),
(58, '103.254.172.156', 'open', NULL, '2018-05-01 12:42:53', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 5.43491, '2018-05-01 12:42:53', '2018-05-01 12:42:59'),
(59, '103.254.172.156', 'open', NULL, '2018-05-01 12:53:13', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2503, '2018-05-01 12:53:13', '2018-05-01 12:53:39'),
(60, '103.254.172.156', 'open', NULL, '2018-05-01 12:53:35', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2407, '2018-05-01 12:53:35', '2018-05-01 12:54:00'),
(61, '64.233.173.43', 'open', NULL, '2018-05-01 12:53:51', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2427, '2018-05-01 12:53:51', '2018-05-01 12:54:10'),
(62, '64.233.173.41', 'open', NULL, '2018-05-01 12:54:20', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2406, '2018-05-01 12:54:20', '2018-05-01 12:54:39'),
(63, '103.254.172.156', 'open', NULL, '2018-05-01 12:54:37', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2442, '2018-05-01 12:54:37', '2018-05-01 12:55:03'),
(64, '64.233.173.43', 'open', NULL, '2018-05-01 12:55:03', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5462, '2018-05-01 12:55:03', '2018-05-01 12:55:23'),
(65, '64.233.173.41', 'open', NULL, '2018-05-01 12:55:27', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5273, '2018-05-01 12:55:27', '2018-05-01 12:55:46'),
(66, '103.254.172.156', 'open', NULL, '2018-05-01 12:55:49', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2458, '2018-05-01 12:55:49', '2018-05-01 12:56:15'),
(67, '64.233.173.39', 'open', NULL, '2018-05-01 12:56:29', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5339, '2018-05-01 12:56:29', '2018-05-01 12:56:48'),
(68, '64.233.173.43', 'open', NULL, '2018-05-01 13:03:57', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5412, '2018-05-01 13:03:57', '2018-05-01 13:04:17'),
(69, '103.254.172.156', 'open', NULL, '2018-05-01 13:18:16', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.234, '2018-05-01 13:18:16', '2018-05-01 13:18:42'),
(70, '64.233.173.41', 'open', NULL, '2018-05-01 13:19:08', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.535, '2018-05-01 13:19:08', '2018-05-01 13:19:28'),
(71, '103.254.172.156', 'open', NULL, '2018-05-01 13:23:05', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2463, '2018-05-01 13:23:05', '2018-05-01 13:23:30'),
(72, '64.233.173.43', 'open', NULL, '2018-05-01 13:23:25', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5411, '2018-05-01 13:23:25', '2018-05-01 13:23:45'),
(73, '64.233.173.43', 'open', NULL, '2018-05-01 13:23:46', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5341, '2018-05-01 13:23:46', '2018-05-01 13:24:05'),
(74, '64.233.173.39', 'open', NULL, '2018-05-01 13:24:06', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5302, '2018-05-01 13:24:06', '2018-05-01 13:24:25'),
(75, '64.233.173.39', 'open', NULL, '2018-05-01 13:25:43', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5277, '2018-05-01 13:25:43', '2018-05-01 13:26:02'),
(76, '103.254.172.156', 'open', NULL, '2018-05-01 13:29:46', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2327, '2018-05-01 13:29:46', '2018-05-01 13:30:12'),
(77, '64.233.173.41', 'open', NULL, '2018-05-01 13:30:13', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.542, '2018-05-01 13:30:13', '2018-05-01 13:30:33'),
(78, '64.233.173.41', 'open', NULL, '2018-05-01 13:30:33', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5382, '2018-05-01 13:30:34', '2018-05-01 13:30:53'),
(79, '103.254.172.156', 'open', NULL, '2018-05-01 13:31:38', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2285, '2018-05-01 13:31:38', '2018-05-01 13:32:03'),
(80, '157.119.207.2', 'open', NULL, '2018-05-01 13:31:40', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2442, '2018-05-01 13:31:40', '2018-05-01 13:32:05'),
(81, '103.254.172.156', 'open', NULL, '2018-05-01 13:31:44', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2334, '2018-05-01 13:31:44', '2018-05-01 13:32:09'),
(82, '103.254.172.156', 'open', NULL, '2018-05-01 13:33:12', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2325, '2018-05-01 13:33:12', '2018-05-01 13:33:38'),
(83, '64.233.173.41', 'open', NULL, '2018-05-01 13:35:03', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5526, '2018-05-01 13:35:03', '2018-05-01 13:35:23'),
(84, '157.119.207.2', 'open', NULL, '2018-05-01 13:36:53', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2364, '2018-05-01 13:36:53', '2018-05-01 13:37:18'),
(85, '103.254.172.156', 'open', NULL, '2018-05-02 04:04:04', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2485, '2018-05-02 04:04:04', '2018-05-02 04:04:29'),
(86, '103.254.172.156', 'open', NULL, '2018-05-02 04:05:26', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2444, '2018-05-02 04:05:26', '2018-05-02 04:05:51'),
(87, '157.119.207.2', 'open', NULL, '2018-05-02 04:06:33', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2471, '2018-05-02 04:06:33', '2018-05-02 04:06:58'),
(88, '64.233.173.39', 'open', NULL, '2018-05-02 04:07:25', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2432, '2018-05-02 04:07:25', '2018-05-02 04:07:44'),
(89, '157.119.207.2', 'open', NULL, '2018-05-02 04:08:03', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 8.1233, '2018-05-02 04:08:03', '2018-05-02 04:08:11'),
(90, '157.119.207.2', 'open', NULL, '2018-05-02 04:08:13', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2463, '2018-05-02 04:08:13', '2018-05-02 04:08:38'),
(91, '64.233.173.41', 'open', NULL, '2018-05-02 04:08:44', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5303, '2018-05-02 04:08:44', '2018-05-02 04:09:04'),
(92, '103.254.172.156', 'open', NULL, '2018-05-02 04:09:00', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2398, '2018-05-02 04:09:00', '2018-05-02 04:09:25'),
(93, '103.254.172.156', 'open', NULL, '2018-05-02 04:09:01', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.229, '2018-05-02 04:09:01', '2018-05-02 04:09:26'),
(94, '103.254.172.156', 'open', NULL, '2018-05-02 04:09:05', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2295, '2018-05-02 04:09:05', '2018-05-02 04:09:30'),
(95, '103.254.172.156', 'open', NULL, '2018-05-02 04:10:00', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2337, '2018-05-02 04:10:00', '2018-05-02 04:10:25'),
(96, '103.254.172.156', 'open', NULL, '2018-05-02 04:10:25', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2422, '2018-05-02 04:10:25', '2018-05-02 04:10:50'),
(97, '103.254.172.156', 'open', NULL, '2018-05-02 04:10:39', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2448, '2018-05-02 04:10:39', '2018-05-02 04:11:04'),
(98, '103.254.172.156', 'open', NULL, '2018-05-02 04:10:59', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 1.53229, '2018-05-02 04:10:59', '2018-05-02 04:11:01'),
(99, '64.233.173.39', 'open', NULL, '2018-05-02 04:11:12', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2302, '2018-05-02 04:11:12', '2018-05-02 04:11:31'),
(100, '103.254.172.156', 'open', NULL, '2018-05-02 04:11:33', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2373, '2018-05-02 04:11:33', '2018-05-02 04:11:59'),
(101, '103.254.172.156', 'open', NULL, '2018-05-02 04:12:13', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2365, '2018-05-02 04:12:13', '2018-05-02 04:12:38'),
(102, '64.233.173.39', 'open', NULL, '2018-05-02 04:51:15', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5494, '2018-05-02 04:51:15', '2018-05-02 04:51:34'),
(103, '103.254.172.156', 'open', NULL, '2018-05-02 06:18:08', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2499, '2018-05-02 06:18:08', '2018-05-02 06:18:33'),
(104, '157.119.207.2', 'open', NULL, '2018-05-02 06:19:59', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2436, '2018-05-02 06:19:59', '2018-05-02 06:20:24'),
(105, '157.119.207.2', 'open', NULL, '2018-05-02 07:05:18', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2478, '2018-05-02 07:05:18', '2018-05-02 07:05:44'),
(106, '64.233.173.41', 'open', NULL, '2018-05-02 07:05:45', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2382, '2018-05-02 07:05:45', '2018-05-02 07:06:04'),
(107, '64.233.173.41', 'open', NULL, '2018-05-02 07:25:20', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2381, '2018-05-02 07:25:20', '2018-05-02 07:25:39'),
(108, '64.233.173.41', 'open', NULL, '2018-05-02 08:23:11', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5377, '2018-05-02 08:23:11', '2018-05-02 08:23:31'),
(109, '157.119.207.2', 'open', NULL, '2018-05-02 08:30:31', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2416, '2018-05-02 08:30:31', '2018-05-02 08:30:56'),
(110, '64.233.173.41', 'open', NULL, '2018-05-02 08:31:57', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2361, '2018-05-02 08:31:57', '2018-05-02 08:32:16'),
(111, '103.254.172.156', 'open', NULL, '2018-05-02 10:05:36', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2458, '2018-05-02 10:05:36', '2018-05-02 10:06:02'),
(112, '103.254.172.156', 'open', NULL, '2018-05-03 07:10:53', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2534, '2018-05-03 07:10:53', '2018-05-03 07:11:18'),
(113, '103.254.172.156', 'open', NULL, '2018-05-03 07:11:34', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2488, '2018-05-03 07:11:34', '2018-05-03 07:11:59'),
(114, '103.254.172.156', 'open', NULL, '2018-05-03 07:11:45', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2384, '2018-05-03 07:11:45', '2018-05-03 07:12:10'),
(115, '103.254.172.156', 'open', NULL, '2018-05-03 07:12:36', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2373, '2018-05-03 07:12:36', '2018-05-03 07:13:01'),
(116, '103.254.172.156', 'open', NULL, '2018-05-03 07:12:37', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2378, '2018-05-03 07:12:37', '2018-05-03 07:13:02'),
(117, '103.254.172.156', 'open', NULL, '2018-05-03 07:12:39', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2395, '2018-05-03 07:12:39', '2018-05-03 07:13:04'),
(118, '103.254.172.156', 'open', NULL, '2018-05-03 07:13:43', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2224, '2018-05-03 07:13:43', '2018-05-03 07:14:09'),
(119, '103.254.172.156', 'open', NULL, '2018-05-03 07:13:44', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2278, '2018-05-03 07:13:44', '2018-05-03 07:14:09'),
(120, '103.254.172.156', 'open', NULL, '2018-05-03 07:14:27', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.246, '2018-05-03 07:14:27', '2018-05-03 07:14:52'),
(121, '103.254.172.156', 'open', NULL, '2018-05-03 07:15:44', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2266, '2018-05-03 07:15:44', '2018-05-03 07:16:09'),
(122, '103.254.172.156', 'open', NULL, '2018-05-03 07:15:51', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2278, '2018-05-03 07:15:51', '2018-05-03 07:16:16'),
(123, '103.254.172.156', 'open', NULL, '2018-05-03 07:15:52', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2293, '2018-05-03 07:15:52', '2018-05-03 07:16:17'),
(124, '103.254.172.156', 'open', NULL, '2018-05-03 07:16:07', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2388, '2018-05-03 07:16:07', '2018-05-03 07:16:32'),
(125, '103.254.172.156', 'open', NULL, '2018-05-03 07:16:07', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2352, '2018-05-03 07:16:07', '2018-05-03 07:16:33'),
(126, '103.254.172.156', 'open', NULL, '2018-05-03 07:17:56', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2278, '2018-05-03 07:17:56', '2018-05-03 07:18:21'),
(127, '103.254.172.156', 'open', NULL, '2018-05-03 07:17:57', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2375, '2018-05-03 07:17:57', '2018-05-03 07:18:22'),
(128, '103.254.172.156', 'open', NULL, '2018-05-03 07:18:42', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2272, '2018-05-03 07:18:42', '2018-05-03 07:19:07'),
(129, '103.254.172.156', 'open', NULL, '2018-05-03 07:19:02', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2281, '2018-05-03 07:19:02', '2018-05-03 07:19:27'),
(130, '103.254.172.156', 'open', NULL, '2018-05-03 07:19:10', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2281, '2018-05-03 07:19:10', '2018-05-03 07:19:35'),
(131, '103.254.172.156', 'open', NULL, '2018-05-03 07:19:31', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2247, '2018-05-03 07:19:31', '2018-05-03 07:19:56'),
(132, '103.254.172.156', 'open', NULL, '2018-05-03 07:19:32', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2232, '2018-05-03 07:19:32', '2018-05-03 07:19:57'),
(133, '103.254.172.156', 'open', NULL, '2018-05-03 07:20:03', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2416, '2018-05-03 07:20:03', '2018-05-03 07:20:28'),
(134, '103.254.172.156', 'open', NULL, '2018-05-03 07:20:09', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2401, '2018-05-03 07:20:09', '2018-05-03 07:20:35'),
(135, '103.254.172.156', 'open', NULL, '2018-05-03 07:21:06', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2272, '2018-05-03 07:21:06', '2018-05-03 07:21:31'),
(136, '103.254.172.156', 'open', NULL, '2018-05-03 07:21:20', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2298, '2018-05-03 07:21:20', '2018-05-03 07:21:45'),
(137, '103.254.172.156', 'open', NULL, '2018-05-03 07:21:20', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2294, '2018-05-03 07:21:20', '2018-05-03 07:21:46'),
(138, '103.254.172.156', 'open', NULL, '2018-05-03 07:23:24', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2293, '2018-05-03 07:23:24', '2018-05-03 07:23:49'),
(139, '103.254.172.156', 'open', NULL, '2018-05-03 07:23:30', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2285, '2018-05-03 07:23:30', '2018-05-03 07:23:56'),
(140, '103.254.172.156', 'open', NULL, '2018-05-03 07:23:48', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2248, '2018-05-03 07:23:48', '2018-05-03 07:24:13'),
(141, '103.254.172.156', 'open', NULL, '2018-05-03 07:23:49', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.23, '2018-05-03 07:23:49', '2018-05-03 07:24:14'),
(142, '103.254.172.156', 'open', NULL, '2018-05-03 07:24:46', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2304, '2018-05-03 07:24:46', '2018-05-03 07:25:12'),
(143, '103.254.172.156', 'open', NULL, '2018-05-03 07:24:47', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2276, '2018-05-03 07:24:47', '2018-05-03 07:25:12'),
(144, '103.254.172.156', 'open', NULL, '2018-05-03 07:36:56', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2386, '2018-05-03 07:36:56', '2018-05-03 07:37:21'),
(145, '103.254.172.156', 'open', NULL, '2018-05-03 07:38:00', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2304, '2018-05-03 07:38:00', '2018-05-03 07:38:25'),
(146, '157.119.207.2', 'open', NULL, '2018-05-03 09:03:24', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2302, '2018-05-03 09:03:24', '2018-05-03 09:03:49'),
(147, '157.119.207.2', 'open', NULL, '2018-05-03 09:22:15', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2296, '2018-05-03 09:22:15', '2018-05-03 09:22:40'),
(148, '157.119.207.2', 'open', NULL, '2018-05-03 09:23:01', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2434, '2018-05-03 09:23:01', '2018-05-03 09:23:26'),
(149, '157.119.207.2', 'open', NULL, '2018-05-03 09:24:06', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2404, '2018-05-03 09:24:06', '2018-05-03 09:24:32'),
(150, '103.254.172.156', 'open', NULL, '2018-05-03 09:24:30', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 1.82208, '2018-05-03 09:24:30', '2018-05-03 09:24:32'),
(151, '103.254.172.156', 'open', NULL, '2018-05-03 09:24:36', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2292, '2018-05-03 09:24:36', '2018-05-03 09:25:01'),
(152, '103.254.172.156', 'open', NULL, '2018-05-03 09:26:24', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 7.82035, '2018-05-03 09:26:24', '2018-05-03 09:26:32'),
(153, '103.254.172.156', 'open', NULL, '2018-05-03 09:26:36', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 9.02331, '2018-05-03 09:26:36', '2018-05-03 09:26:45'),
(154, '157.119.207.2', 'open', NULL, '2018-05-03 09:26:50', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.231, '2018-05-03 09:26:50', '2018-05-03 09:27:15'),
(155, '157.119.207.2', 'open', NULL, '2018-05-03 09:27:29', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2276, '2018-05-03 09:27:29', '2018-05-03 09:27:54'),
(156, '157.119.207.2', 'open', NULL, '2018-05-03 10:49:36', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2537, '2018-05-03 10:49:36', '2018-05-03 10:50:01'),
(157, '157.119.207.2', 'open', NULL, '2018-05-03 10:49:37', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2375, '2018-05-03 10:49:37', '2018-05-03 10:50:02'),
(158, '103.254.172.156', 'open', NULL, '2018-05-03 10:50:01', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2349, '2018-05-03 10:50:01', '2018-05-03 10:50:26'),
(159, '103.254.172.156', 'open', NULL, '2018-05-03 10:50:05', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2373, '2018-05-03 10:50:05', '2018-05-03 10:50:30'),
(160, '64.233.173.41', 'open', NULL, '2018-05-03 10:50:08', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2376, '2018-05-03 10:50:08', '2018-05-03 10:50:27'),
(161, '157.119.207.2', 'open', NULL, '2018-05-03 10:50:32', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2265, '2018-05-03 10:50:32', '2018-05-03 10:50:58'),
(162, '64.233.173.39', 'open', NULL, '2018-05-03 10:50:57', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2225, '2018-05-03 10:50:57', '2018-05-03 10:51:16'),
(163, '103.254.172.156', 'open', NULL, '2018-05-03 10:51:27', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2406, '2018-05-03 10:51:27', '2018-05-03 10:51:52'),
(164, '157.119.207.2', 'open', NULL, '2018-05-03 10:51:47', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.239, '2018-05-03 10:51:47', '2018-05-03 10:52:12'),
(165, '157.119.207.2', 'open', NULL, '2018-05-03 10:59:45', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2397, '2018-05-03 10:59:45', '2018-05-03 11:00:10'),
(166, '157.119.207.2', 'open', NULL, '2018-05-03 10:59:46', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2352, '2018-05-03 10:59:46', '2018-05-03 11:00:11'),
(167, '64.233.173.43', 'open', NULL, '2018-05-03 11:00:08', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5372, '2018-05-03 11:00:08', '2018-05-03 11:00:28'),
(168, '157.119.207.2', 'open', NULL, '2018-05-03 11:04:17', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2276, '2018-05-03 11:04:17', '2018-05-03 11:04:42'),
(169, '157.119.207.2', 'open', NULL, '2018-05-03 11:04:18', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2244, '2018-05-03 11:04:18', '2018-05-03 11:04:43'),
(170, '64.233.173.39', 'open', NULL, '2018-05-03 11:04:52', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2369, '2018-05-03 11:04:52', '2018-05-03 11:05:11'),
(171, '157.119.207.2', 'open', NULL, '2018-05-03 11:05:05', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2264, '2018-05-03 11:05:05', '2018-05-03 11:05:30'),
(172, '157.119.207.2', 'open', NULL, '2018-05-03 11:05:41', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2396, '2018-05-03 11:05:41', '2018-05-03 11:06:06'),
(173, '64.233.173.41', 'open', NULL, '2018-05-03 11:06:37', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5253, '2018-05-03 11:06:37', '2018-05-03 11:06:57'),
(174, '157.119.207.2', 'open', NULL, '2018-05-03 11:07:12', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', 25.2286, '2018-05-03 11:07:12', '2018-05-03 11:07:37'),
(175, '103.254.172.156', 'open', NULL, '2018-05-03 11:35:08', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.228, '2018-05-03 11:35:08', '2018-05-03 11:35:33'),
(176, '157.119.207.2', 'open', NULL, '2018-05-03 12:34:52', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 1.82646, '2018-05-03 12:34:52', '2018-05-03 12:34:54'),
(177, '157.119.207.2', 'open', NULL, '2018-05-03 12:34:56', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 0.92382, '2018-05-03 12:34:56', '2018-05-03 12:34:57'),
(178, '157.119.207.2', 'open', NULL, '2018-05-03 13:22:21', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 0.626034, '2018-05-03 13:22:21', '2018-05-03 13:22:21'),
(179, '103.254.172.156', 'open', NULL, '2018-05-03 13:34:26', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '', 25.2384, '2018-05-03 13:34:26', '2018-05-03 13:34:52'),
(180, '103.254.172.156', 'open', NULL, '2018-05-03 13:36:13', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2507, '2018-05-03 13:36:13', '2018-05-03 13:36:38'),
(181, '103.254.172.156', 'forward', NULL, '2018-05-03 13:52:32', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '{"f":null}', 25.2453, '2018-05-03 13:52:32', '2018-05-03 13:52:57'),
(182, '103.254.172.156', 'forward', NULL, '2018-05-03 13:53:37', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '{"f":null}', 25.2316, '2018-05-03 13:53:37', '2018-05-03 13:54:02'),
(183, '103.254.172.156', 'open', NULL, '2018-05-03 13:53:37', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2343, '2018-05-03 13:53:37', '2018-05-03 13:54:02'),
(184, '103.254.172.156', 'open', NULL, '2018-05-03 13:53:42', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.239, '2018-05-03 13:53:42', '2018-05-03 13:54:07'),
(185, '103.254.172.156', 'open', NULL, '2018-05-03 13:54:03', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2279, '2018-05-03 13:54:03', '2018-05-03 13:54:28'),
(186, '103.254.172.156', 'open', NULL, '2018-05-03 13:54:10', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2253, '2018-05-03 13:54:10', '2018-05-03 13:54:35'),
(187, '103.254.172.156', 'open', NULL, '2018-05-03 13:54:15', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2249, '2018-05-03 13:54:15', '2018-05-03 13:54:40'),
(188, '103.254.172.156', 'open', NULL, '2018-05-03 13:54:16', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2298, '2018-05-03 13:54:16', '2018-05-03 13:54:41'),
(189, '103.254.172.156', 'open', NULL, '2018-05-03 13:54:42', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2367, '2018-05-03 13:54:42', '2018-05-03 13:55:07'),
(190, '103.254.172.156', 'open', NULL, '2018-05-03 13:54:43', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2256, '2018-05-03 13:54:43', '2018-05-03 13:55:08'),
(191, '103.254.172.156', 'open', NULL, '2018-05-03 13:55:00', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2256, '2018-05-03 13:55:00', '2018-05-03 13:55:25'),
(192, '103.254.172.156', 'open', NULL, '2018-05-03 13:55:01', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2458, '2018-05-03 13:55:01', '2018-05-03 13:55:27'),
(193, '103.254.172.156', 'open', NULL, '2018-05-03 13:55:12', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2304, '2018-05-03 13:55:12', '2018-05-03 13:55:38'),
(194, '103.254.172.156', 'open', NULL, '2018-05-03 13:55:14', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2265, '2018-05-03 13:55:14', '2018-05-03 13:55:39'),
(195, '103.254.172.156', 'open', NULL, '2018-05-03 13:55:38', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2383, '2018-05-03 13:55:38', '2018-05-03 13:56:03'),
(196, '103.254.172.156', 'open', NULL, '2018-05-03 13:55:39', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.225, '2018-05-03 13:55:39', '2018-05-03 13:56:05'),
(197, '103.254.172.156', 'open', NULL, '2018-05-03 13:55:48', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2238, '2018-05-03 13:55:48', '2018-05-03 13:56:14'),
(198, '103.254.172.156', 'open', NULL, '2018-05-03 13:56:02', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2222, '2018-05-03 13:56:02', '2018-05-03 13:56:27'),
(199, '103.254.172.156', 'forward', NULL, '2018-05-03 13:56:02', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '{"f":null}', 25.2244, '2018-05-03 13:56:02', '2018-05-03 13:56:27'),
(200, '103.254.172.156', 'open', NULL, '2018-05-03 13:56:09', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2386, '2018-05-03 13:56:09', '2018-05-03 13:56:35'),
(201, '117.215.59.148', 'open', NULL, '2018-05-03 16:50:35', 'read', 'deleted', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 1.23018, '2018-05-03 16:50:35', '2018-05-03 16:50:36'),
(202, '103.254.172.156', 'open', NULL, '2018-05-04 03:54:46', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2401, '2018-05-04 03:54:46', '2018-05-04 03:55:11'),
(203, '64.233.173.43', 'open', NULL, '2018-05-04 04:47:40', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2241, '2018-05-04 04:47:40', '2018-05-04 04:47:59'),
(204, '64.233.173.41', 'open', NULL, '2018-05-04 04:48:05', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2349, '2018-05-04 04:48:05', '2018-05-04 04:48:25'),
(205, '64.233.173.41', 'open', NULL, '2018-05-04 07:01:26', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.248, '2018-05-04 07:01:26', '2018-05-04 07:01:45'),
(206, '64.233.173.43', 'open', NULL, '2018-05-04 07:01:40', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.2384, '2018-05-04 07:01:40', '2018-05-04 07:01:59'),
(207, '64.233.173.39', 'open', NULL, '2018-05-04 07:05:40', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5388, '2018-05-04 07:05:40', '2018-05-04 07:06:00'),
(208, '64.233.173.43', 'open', NULL, '2018-05-04 07:07:03', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5381, '2018-05-04 07:07:03', '2018-05-04 07:07:23');
INSERT INTO `tracker_raw_data` (`id`, `ip_address`, `status`, `last_clicked`, `open_date`, `engagement_type`, `updated_engagement_type`, `email`, `ua_string`, `request_data`, `open_duration`, `created_at`, `updated_at`) VALUES
(209, '64.233.173.41', 'open', NULL, '2018-05-04 07:07:50', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)', '', 19.5275, '2018-05-04 07:07:50', '2018-05-04 07:08:09'),
(210, '103.254.172.156', 'open', NULL, '2018-05-04 07:33:36', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '', 25.2408, '2018-05-04 07:33:36', '2018-05-04 07:34:02'),
(211, '157.119.207.2', 'open', NULL, '2018-05-04 07:37:58', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2463, '2018-05-04 07:37:58', '2018-05-04 07:38:23'),
(212, '157.119.207.2', 'forward', NULL, '2018-05-04 12:38:12', 'read', 'read', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '{"f":null}', 10.2346, '2018-05-04 12:38:12', '2018-05-04 12:38:22'),
(213, '157.119.207.2', 'open', NULL, '2018-05-04 12:55:56', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '', 25.2399, '2018-05-04 12:55:56', '2018-05-04 12:56:21'),
(214, '103.254.172.156', 'open', NULL, '2018-05-04 12:58:06', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2429, '2018-05-04 12:58:06', '2018-05-04 12:58:31'),
(215, '157.119.207.2', 'open', NULL, '2018-05-04 12:59:01', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2401, '2018-05-04 12:59:01', '2018-05-04 12:59:26'),
(216, '157.119.207.2', 'open', NULL, '2018-05-04 12:59:08', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.241, '2018-05-04 12:59:08', '2018-05-04 12:59:34'),
(217, '157.119.207.2', 'open', NULL, '2018-05-04 12:59:36', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2332, '2018-05-04 12:59:36', '2018-05-04 13:00:02'),
(218, '157.119.207.2', 'open', NULL, '2018-05-04 12:59:41', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2283, '2018-05-04 12:59:41', '2018-05-04 13:00:06'),
(219, '103.254.172.156', 'open', NULL, '2018-05-04 13:29:22', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2409, '2018-05-04 13:29:22', '2018-05-04 13:29:47'),
(220, '157.119.207.2', 'open', NULL, '2018-05-04 13:33:38', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 25.2368, '2018-05-04 13:33:38', '2018-05-04 13:34:03'),
(221, '103.254.172.156', 'open', NULL, '2018-05-04 13:56:19', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '', 25.2485, '2018-05-04 13:56:19', '2018-05-04 13:56:44'),
(222, '157.119.207.2', 'open', NULL, '2018-05-07 03:57:12', 'read', 'skim read', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Thunderbird/52.7.0', '', 2.75221, '2018-05-07 03:57:12', '2018-05-07 03:57:15'),
(223, '157.119.207.2', 'open', NULL, '2018-05-07 05:11:54', 'read', 'read', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '', 25.2422, '2018-05-07 05:11:54', '2018-05-07 05:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-11-20 03:30:23', '2017-11-20 03:30:23'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2017-11-20 03:30:23', '2017-11-20 03:30:23'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-11-20 03:30:23', '2017-11-20 03:30:23'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2017-11-20 03:30:24', '2017-11-20 03:30:24'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-11-20 03:30:24', '2017-11-20 03:30:24'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-11-20 03:30:24', '2017-11-20 03:30:24'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-11-20 03:30:24', '2017-11-20 03:30:24'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2017-11-20 03:30:24', '2017-11-20 03:30:24'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-11-20 03:30:24', '2017-11-20 03:30:24'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-11-20 03:30:25', '2017-11-20 03:30:25'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-11-20 03:30:26', '2017-11-20 03:30:26'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-11-20 03:30:26', '2017-11-20 03:30:26'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-11-20 03:30:27', '2017-11-20 03:30:27'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-11-20 03:30:27', '2017-11-20 03:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use for  crome addonce',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `mobile_no`, `company_name`, `password`, `remember_token`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sunil Dora', 'sunildora94@gmail.com', 'users/November2017/RW3l2w0j2R7FwhF0pdUp.jpg', '9033571266', 'D', '$2y$10$Dv3tg7zT2FswtKyn8HL6oOm5MxiaJLcEg1oV36GnPmGxZlsssUdyW', '8DrAGjAXjLfcwQ50qmZFeZmkWCQXOqZKE6T6bdGnXOMQgz2AoIVcXO1leWhW', NULL, '2017-11-20 03:23:45', '2017-11-23 04:10:56'),
(2, 2, 'niket joshi', 'niket@gmail.com', 'users/default.png', '9033571266', 'trimantra', '$2y$10$eWKDRbtyknc0T6eLbtTCoeIhF4XjvAqazX7/6O2HSgr7dXyx4q0Zq', 'cziNhdiICP8f2tP1Vx40JYAh13cS6jaVpb71rkuTyMvboPTa4n0UA24sU19g', NULL, '2017-11-20 03:33:35', '2017-11-24 02:43:22'),
(3, 2, 'ankit updhyay', 'ankit@gmail.com', 'users/default.png', '9033571266', 'besoftware', '$2y$10$jdBhOMB2vbaudiKjqyy6M.kI63Amguxx/jyvKBHfpV4tERGwMRygG', 'PymdhaxSjaCIm3anIRTAHZQrXN9Onrqmz9H9eY5atdK5mmQHeDaWjtaq2rU2', NULL, '2017-11-20 04:21:01', '2017-12-01 03:25:15'),
(8, 2, 'rizwan khan', 'riwan@gmail.com', 'users/default.png', '9033153594', 'Tausadmin', '$2y$10$i4ZjMs7XZ5jcKMcj2xIH7ON/RmyjBraufqIALNoArN0WB/yF3CgJ6', 'mUAm7SpW8WGaDc78TX51ZyyMYKzkspzNL5DvCmXaGgORv4xiJutssvkKjPM6', NULL, '2017-11-20 05:39:49', '2018-03-20 07:49:27'),
(9, 1, 'mukti roy', 'mukti.d.roy@trimantrallp.com', 'users/default.png', '9033153594', 'doyenhub software', '$2y$10$i4ZjMs7XZ5jcKMcj2xIH7ON/RmyjBraufqIALNoArN0WB/yF3CgJ6', 'FA05hTImQBv0W3SAAYpDGqPSxQOE1NRIAzVF7MfX5cW3qwhUHGPIrJoOPjlX', 'OT09MjAxODA1MDQ9PW11a3RpLmQucm95QHRyaW1hbnRyYWxscC5jb209PTIxNTc=', '2018-03-20 05:53:28', '2018-05-04 06:16:58'),
(10, 2, 'Rajesh Rathod', 'rajesh.r.rathod@trimantrallp.com', 'users/March2018/mr9zzaGIYNeMGhTOnmxc.jpg', '9586898683', 'Shakti', '$2y$10$i4ZjMs7XZ5jcKMcj2xIH7ON/RmyjBraufqIALNoArN0WB/yF3CgJ6', 'eXROWESTwTM4p6FJwbLWH2JE5h6hyL8x9cJuZehOPQxw6dcumTfizFdTGily', 'MTA9PTIwMTgwNTA0PT1yYWplc2guci5yYXRob2RAdHJpbWFudHJhbGxwLmNvbT09MjEwMQ==', '2018-03-26 03:40:27', '2018-05-04 07:32:54'),
(11, 2, 'Sachin', 'sachin@gmail.com', 'users/default.png', '7894561234', 'doyenhub', '$2y$10$/ziUwJu7X39TBtlO0IYzpO067i9969YxSpFeRKOyEHT6PENzQm.Km', NULL, NULL, '2018-05-03 12:38:08', '2018-05-03 12:38:08'),
(13, 2, 'Sachin', 'sachin123@gmail.com', 'users/May2018/2QiTlzkFqj7U28aQ325Y.png', '7894561234', 'doyenhub', '$2y$10$xCOCep2PgSagfVb.ovT1reZDZdGiNtO9ywKzIJTMkpTF0S8gvMxLi', NULL, NULL, '2018-05-03 12:38:27', '2018-05-03 12:40:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytics_user_id_foreign` (`user_id`);

--
-- Indexes for table `analytic_details`
--
ALTER TABLE `analytic_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytic_details_analytic_id_foreign` (`analytic_id`),
  ADD KEY `engagement_type` (`engagement_type`);

--
-- Indexes for table `browser_reports`
--
ALTER TABLE `browser_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `browser_reports_analytic_id_foreign` (`analytic_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact_analytic_details`
--
ALTER TABLE `contact_analytic_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_analytic_mapping`
--
ALTER TABLE `contact_analytic_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `location_reports`
--
ALTER TABLE `location_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_reports_analytic_id_foreign` (`analytic_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `pixel_trackers`
--
ALTER TABLE `pixel_trackers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pixel_slug` (`pixel_slug`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tracker_raw_data`
--
ALTER TABLE `tracker_raw_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `analytic_details`
--
ALTER TABLE `analytic_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `browser_reports`
--
ALTER TABLE `browser_reports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact_analytic_details`
--
ALTER TABLE `contact_analytic_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `contact_analytic_mapping`
--
ALTER TABLE `contact_analytic_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `location_reports`
--
ALTER TABLE `location_reports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pixel_trackers`
--
ALTER TABLE `pixel_trackers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tracker_raw_data`
--
ALTER TABLE `tracker_raw_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
