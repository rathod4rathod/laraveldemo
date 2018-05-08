-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2017 at 03:29 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

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
(4, 11, 1, '2017-12-14 04:06:33', '2017-12-14 04:06:33');

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
(10, 4, 'deleted', 'open', 'Linux', '', 'Chrome', '59.0.3071.115', 'desktop', '192.168.1.63', '2017-12-14 04:28:34', 'unknown', 'unknown-unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1.00171, '0.00000000', '0.00000000', 1, '2017-12-14 04:28:34', '2017-12-14 04:28:35');

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
(3, 4, 'Chrome', 3, '2017-12-14 04:06:40', '2017-12-14 04:28:34');

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
(1, '192.168.1.63', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'desktop', '2017-12-13 02:51:22', '2017-12-13 02:51:22');

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
(3, 1, 4, 3, 0, 0, 0, '2017-12-14 04:06:40', '2017-12-14 04:28:34');

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
(57, 7, 'name', 'checkbox', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(58, 7, 'short_name', 'checkbox', 'Short Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(59, 7, 'pixel_slug', 'checkbox', 'Pixel Slug', 1, 1, 1, 1, 1, 1, NULL, 4),
(60, 7, 'is_locked', 'checkbox', 'Is Locked', 0, 1, 1, 1, 1, 1, NULL, 5),
(61, 7, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, NULL, 6),
(62, 7, 'is_deleted', 'checkbox', 'Is Deleted', 1, 1, 1, 1, 1, 1, NULL, 7),
(63, 7, 'is_email_campaign', 'checkbox', 'Is Email Campaign', 1, 1, 1, 1, 1, 1, NULL, 8),
(64, 7, 'owner_id', 'checkbox', 'Owner Id', 1, 1, 1, 1, 1, 1, NULL, 9),
(65, 7, 'is_dynamically_created', 'checkbox', 'Is Dynamically Created', 1, 1, 1, 1, 1, 1, NULL, 10),
(66, 7, 'redirect_url', 'checkbox', 'Redirect Url', 0, 1, 1, 1, 1, 1, NULL, 11),
(67, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 12),
(68, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13);

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
(7, 'pixel_trackers', 'pixel-trackers', 'Pixel Tracker', 'Pixel Trackers', NULL, 'App\\PixelTracker', NULL, 'PixelTrackerController', NULL, 1, 0, '2017-12-12 05:24:57', '2017-12-12 05:24:57');

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
(3, 4, 'unknown', 'unknown', 'unknown', 'unknown-unknown', 3, '2017-12-14 04:06:40', '2017-12-14 04:28:34');

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
(2, 'pixel_tracker', '2017-12-12 05:24:11', '2017-12-12 05:24:11');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2017-11-20 03:30:10', '2017-11-20 03:30:10', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2017-11-20 03:30:10', '2017-11-20 03:30:10', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2017-11-20 03:30:11', '2017-11-20 03:30:11', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 10, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 11, '2017-11-20 03:30:11', '2017-11-20 03:30:11', 'voyager.database.index', NULL),
(11, 1, 'Compass', '/admin/compass', '_self', 'voyager-compass', NULL, 8, 12, '2017-11-20 03:30:12', '2017-11-20 03:30:12', NULL, NULL),
(12, 1, 'Hooks', '/admin/hooks', '_self', 'voyager-hook', NULL, 8, 13, '2017-11-20 03:30:12', '2017-11-20 03:30:12', NULL, NULL),
(13, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2017-11-20 03:30:12', '2017-11-20 03:30:12', 'voyager.settings.index', NULL),
(14, 1, 'Pixel Trackers', '/admin/pixel-trackers', '_self', NULL, NULL, NULL, 15, '2017-12-12 05:24:58', '2017-12-12 05:24:58', NULL, NULL);

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
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-11-20 03:30:21', '2017-11-20 03:30:21');

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
(41, 1),
(42, 1),
(43, 1),
(44, 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pixel_trackers`
--

INSERT INTO `pixel_trackers` (`id`, `name`, `short_name`, `pixel_slug`, `is_locked`, `is_active`, `is_deleted`, `is_email_campaign`, `owner_id`, `is_dynamically_created`, `redirect_url`, `created_at`, `updated_at`) VALUES
(11, 'first_pt', 'first', 'daca4adc0b376111baccb7057e2533', 0, 1, 0, 0, 1, 0, '', '2017-12-14 04:06:33', '2017-12-14 04:28:44');

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
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
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
(20, '192.168.1.63', 'open', NULL, '2017-12-14 09:58:34', 'read', 'deleted', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 1.00171, '2017-12-14 04:28:34', '2017-12-14 04:28:35');

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
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2017-11-20 03:30:26', '2017-11-20 03:30:26'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2017-11-20 03:30:26', '2017-11-20 03:30:26'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-11-20 03:30:26', '2017-11-20 03:30:26'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2017-11-20 03:30:26', '2017-11-20 03:30:26'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2017-11-20 03:30:27', '2017-11-20 03:30:27'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-11-20 03:30:27', '2017-11-20 03:30:27'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-11-20 03:30:27', '2017-11-20 03:30:27'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-11-20 03:30:27', '2017-11-20 03:30:27'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-11-20 03:30:27', '2017-11-20 03:30:27'),
(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2017-11-20 03:30:27', '2017-11-20 03:30:27');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `mobile_no`, `company_name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sunil Dora', 'sunildora94@gmail.com', 'users/November2017/RW3l2w0j2R7FwhF0pdUp.jpg', '9033571266', 'D', '$2y$10$my5AjHoTV5PmcR/rgXq63elcyNTmOgmin9NnkAaLYmrhqBNRw7UAi', '8DrAGjAXjLfcwQ50qmZFeZmkWCQXOqZKE6T6bdGnXOMQgz2AoIVcXO1leWhW', '2017-11-20 03:23:45', '2017-11-23 04:10:56'),
(2, 2, 'niket joshi', 'niket@gmail.com', 'users/default.png', '9033571266', 'trimantra', '$2y$10$eWKDRbtyknc0T6eLbtTCoeIhF4XjvAqazX7/6O2HSgr7dXyx4q0Zq', 'cziNhdiICP8f2tP1Vx40JYAh13cS6jaVpb71rkuTyMvboPTa4n0UA24sU19g', '2017-11-20 03:33:35', '2017-11-24 02:43:22'),
(3, 2, 'ankit updhyay', 'ankit@gmail.com', 'users/default.png', '9033571266', 'besoftware', '$2y$10$jdBhOMB2vbaudiKjqyy6M.kI63Amguxx/jyvKBHfpV4tERGwMRygG', 'PymdhaxSjaCIm3anIRTAHZQrXN9Onrqmz9H9eY5atdK5mmQHeDaWjtaq2rU2', '2017-11-20 04:21:01', '2017-12-01 03:25:15'),
(8, 2, 'rizwan khan', 'riwan@gmail.com', 'users/default.png', '9033153594', 'Tausadmin', '$2y$10$ql19IdGm3upkLxYLRKhNoeB.zYLVuy2OHtXdri9OwGrIRPeflmht.', '8DGJYEDzRjWqdsp2mdsumA2qiFuoFW7aPzClM1CHdQDXI5g7PnrQ45QIuSpA', '2017-11-20 05:39:49', '2017-11-20 05:39:49');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `analytic_details`
--
ALTER TABLE `analytic_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `browser_reports`
--
ALTER TABLE `browser_reports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact_analytic_details`
--
ALTER TABLE `contact_analytic_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_analytic_mapping`
--
ALTER TABLE `contact_analytic_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `location_reports`
--
ALTER TABLE `location_reports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
