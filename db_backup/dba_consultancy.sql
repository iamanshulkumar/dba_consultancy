-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2025 at 10:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dba_consultancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('fcead0a5906cc844bfc585a17c65c519', 'i:1;', 1739940571),
('fcead0a5906cc844bfc585a17c65c519:timer', 'i:1739940571;', 1739940571);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_attributes`
--

CREATE TABLE `form_attributes` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `servicename` varchar(255) DEFAULT NULL,
  `masterserviceid` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `inputtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_attributes`
--

INSERT INTO `form_attributes` (`id`, `type`, `servicename`, `masterserviceid`, `value`, `inputtype`, `created_at`, `updated_at`) VALUES
(12, 'Services', 'File Tax Return', '215', 'Name', 'text', '2024-11-13 06:10:25', '2024-11-13 06:10:25'),
(13, 'Services', 'File Tax Return', '215', 'Email', 'email', '2024-11-13 06:10:37', '2024-11-13 06:10:37'),
(20, 'Services', 'GST No.', '214', 'Name', 'text', '2024-11-21 05:05:33', '2024-12-23 06:35:24'),
(21, 'Services', 'GST No.', '214', 'Document', 'file', '2024-11-21 05:05:55', '2024-11-21 05:05:55'),
(22, 'Services', 'GST No.', '214', 'Address', 'textarea', '2024-11-21 05:06:06', '2024-12-23 06:35:40'),
(25, 'Services', 'File Tax Return', '215', 'Document', 'file', '2024-12-09 13:14:43', '2024-12-09 13:14:43'),
(26, 'Services', 'Business Pan Card', '222', 'Business Name', 'text', '2024-12-26 11:07:53', '2024-12-26 11:07:53'),
(27, 'Services', 'Business Pan Card', '222', 'Type of Business', 'text', '2024-12-26 11:08:05', '2024-12-26 11:08:05'),
(28, 'Services', 'Business Pan Card', '222', 'Business Address', 'textarea', '2024-12-26 11:08:27', '2024-12-26 11:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'Master',
  `iconimage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `label`, `value`, `type`, `iconimage`, `created_at`, `updated_at`) VALUES
(209, 'Services', 'Services', 'Master', NULL, '2024-11-05 06:26:42', '2024-11-05 10:29:23'),
(214, 'GST No.', 'GST No.', 'Services', '1731067480_gst.jpg', '2024-11-05 07:17:17', '2024-11-08 12:04:40'),
(215, 'File Tax Return', 'File Tax Return', 'Services', '1731067500_tax-return.jpg', '2024-11-05 08:54:17', '2024-11-08 12:13:48'),
(217, 'Documents', 'Documents', 'Master', NULL, '2024-11-07 05:30:44', '2024-11-07 05:30:44'),
(218, 'GST', 'GST', 'Documents', NULL, '2024-11-07 05:30:55', '2024-11-07 05:30:55'),
(219, 'Aadhar Card', 'Aadhar Card', 'Documents', NULL, '2024-11-07 05:31:04', '2024-11-07 05:31:04'),
(220, 'Bank Passbook', 'Bank Passbook', 'Documents', NULL, '2024-11-07 05:31:18', '2024-11-07 05:31:18'),
(221, 'PAN Card', 'PAN Card', 'Documents', NULL, '2024-11-07 05:31:26', '2024-11-07 05:31:26'),
(222, 'Business Pan Card', 'Business Pan Card', 'Services', '1731067538_pcard.jpg', '2024-11-08 12:05:38', '2024-11-08 12:05:38'),
(223, 'Company Registration', 'Company Registration', 'Services', '1731067597_registration.jpg', '2024-11-08 12:06:37', '2024-11-08 12:06:37'),
(224, 'Consulting', 'Consulting', 'Master', NULL, '2024-11-09 05:56:51', '2024-11-09 08:06:14'),
(225, 'Legal Consulting', 'Legal Consulting', 'Consulting', '1731131847_Layer 1.png', '2024-11-09 05:57:27', '2024-11-09 06:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_04_094609_add_two_factor_columns_to_users_table', 1),
(5, '2024_09_04_094634_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('nitzz@gmail.com', '$2y$12$8KjOvBqZkyCR13QIcyx2a.HOcwfeZDj6t.5pivgTHT0m82TCtOgB6', '2024-09-12 00:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_details`
--

CREATE TABLE `pricing_details` (
  `id` int(11) NOT NULL,
  `servicetype` varchar(255) DEFAULT NULL,
  `serviceid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `disprice` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `coverimage` varchar(255) DEFAULT NULL,
  `documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`documents`)),
  `details` longtext DEFAULT NULL,
  `notereq` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing_details`
--

INSERT INTO `pricing_details` (`id`, `servicetype`, `serviceid`, `price`, `disprice`, `duration`, `coverimage`, `documents`, `details`, `notereq`, `created_at`, `updated_at`) VALUES
(6, 'Services', '214', '1500', '8', '9', 'service-bg.png', '[\"GST\",\"Aadhar Card\"]', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', '2024-11-09 04:46:18', '2024-12-23 06:28:03'),
(9, 'Services', '222', '1500', '500', '45', 'service-bg.png', '[\"PAN Card\"]', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', '2024-11-09 05:19:04', '2024-12-26 11:20:50'),
(10, 'Services', '215', '2500', '100', '45', 'service-bg.png', '[\"Aadhar Card\",\"PAN Card\"]', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', '2024-11-09 05:28:04', '2024-12-23 07:27:17'),
(11, 'Services', '223', '50000', '988', '55', 'service-bg.png', '[\"Aadhar Card\",\"Bank Passbook\"]', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', 'The logic here is mostly correct, but you should specify the guard when retrieving the user\'s information to ensure you get the authenticated user from the customer guard rather than the default guard. Here’s the updated code', '2024-11-09 05:28:53', '2024-11-09 06:37:20'),
(13, 'Consulting', '225', '75000', '7500', '45', '1731134472_service-bg.png', '[\"Aadhar Card\"]', 'Consulting Services', 'Consulting Services', '2024-11-09 06:41:12', '2024-11-09 07:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_services`
--

CREATE TABLE `purchase_services` (
  `id` int(11) NOT NULL,
  `formtype` varchar(255) DEFAULT NULL,
  `serviceid` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `servicename` varchar(255) DEFAULT NULL,
  `servicecharge` varchar(255) DEFAULT NULL,
  `formdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formdata`)),
  `documents` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Unpaid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_services`
--

INSERT INTO `purchase_services` (`id`, `formtype`, `serviceid`, `discount`, `userid`, `servicename`, `servicecharge`, `formdata`, `documents`, `note`, `status`, `created_at`, `updated_at`) VALUES
(46, 'Services', '214', '8', '45', 'GST No.', '1500', '[{\"label\":\"_token\",\"value\":\"9uFjzVKhWN9pWfv8vrIIUCXhlou79gkXrQjoqyQu\",\"type\":\"text\"},{\"label\":\"Name\",\"value\":\"Sneha\",\"type\":\"text\"},{\"label\":\"Address\",\"value\":\"Ajmer, Rajasthan\",\"type\":\"textarea\"},{\"label\":\"Document\",\"value\":\"1734936123_Anurag09.jpg\",\"type\":\"file\"}]', 'public/assets/images/documents/Untitled design (8).png.png', 'Inprocess due to tech', 'Completed', '2024-12-23 06:42:03', '2025-01-20 07:32:49'),
(47, 'Services', '215', '100', '45', 'File Tax Return', '2500', '[{\"label\":\"_token\",\"value\":\"L6kYwdUMHHFkUaKHidKbBE24D1yqDXtoiGYnJpHm\",\"type\":\"text\"},{\"label\":\"Name\",\"value\":\"Dummy\",\"type\":\"text\"},{\"label\":\"Email\",\"value\":\"nb@gmail.com\",\"type\":\"email\"},{\"label\":\"Document\",\"value\":\"1735015757_Anurag09.jpg\",\"type\":\"file\"}]', 'public/assets/images/documents/pngegg.png', 'Inprocess due to tech', 'Processing', '2024-12-24 04:49:17', '2025-01-20 10:31:59'),
(56, 'Services', '222', '500', '51', 'Business Pan Card', '1500', '[{\"label\":\"_token\",\"value\":\"0aBitMlXSc5eVJ5DX6hy5unyYxF5B0WZoA9z9017\",\"type\":\"text\"},{\"label\":\"Business_Name\",\"value\":\"BSNL PVT. LTD.\",\"type\":\"text\"},{\"label\":\"Type_of_Business\",\"value\":\"Network\",\"type\":\"text\"},{\"label\":\"Business_Address\",\"value\":\"BSNL PVT. LTD.\",\"type\":\"text\"}]', NULL, 'completed', 'Completed', '2024-12-28 10:02:08', '2024-12-28 10:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `refer_incomes`
--

CREATE TABLE `refer_incomes` (
  `id` int(11) NOT NULL,
  `incomename` varchar(255) DEFAULT NULL,
  `criteria` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `lessthangreater` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refer_incomes`
--

INSERT INTO `refer_incomes` (`id`, `incomename`, `criteria`, `amount`, `lessthangreater`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Referral Bonus', '15%', '50000', 'beyond', '0', '2024-11-22 06:14:20', '2024-11-22 06:14:20'),
(5, 'Direct Referral', '10%', '50000', 'upto', '0', '2024-11-22 06:14:39', '2024-12-30 09:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(11) NOT NULL,
  `mobilenumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `verifystatus` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otp` varchar(22) DEFAULT NULL,
  `refercode` varchar(255) DEFAULT NULL,
  `parentreferid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `profileimage` varchar(255) DEFAULT NULL,
  `permaddress` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pancard` varchar(255) DEFAULT NULL,
  `aadharcard` varchar(255) DEFAULT NULL,
  `gstnum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `mobilenumber`, `email`, `verifystatus`, `created_at`, `updated_at`, `otp`, `refercode`, `parentreferid`, `username`, `profileimage`, `permaddress`, `city`, `state`, `pancard`, `aadharcard`, `gstnum`) VALUES
(45, '8209165518', 'niteshyuvmedia@gmail.com', '1', '2024-11-08 12:32:41', '2025-02-19 06:28:50', '739160', '2024refer45', NULL, 'nitzz', '1738243376_avatar-3.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(51, '5458965848', 'ans@gmail.com', '1', '2024-11-22 07:35:49', '2024-12-28 10:01:39', '219595', '2024dba51', '2024refer45', 'Anshul', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '9429158300', 'anshulyuvmedia@gmail.com', '1', '2024-11-22 09:07:06', '2025-02-18 09:24:06', '116160', '2024dba52', '2024refer45', 'Anshul KM', '1737179886_pngegg.png', 'ajmer', 'ajmer', 'Rajasthan', '9876543214', '1234567895', '1239876546'),
(53, '1234567890', 'ks@gmail.com', '1', '2024-11-22 09:07:06', '2025-02-18 09:34:25', '608519', '2024dba53', '2024dba51', 'Testing', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '1234567890', 'ks@gmail.com', '1', '2024-11-22 09:07:06', '2024-11-22 09:07:12', '226104', '2024dba54', '2024dba52', 'kishan Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '9429158300', 'anshulyuvmedia@gmail.com', '1', '2025-02-18 09:14:43', '2025-02-18 09:15:00', '514060', '2025dba57', '2024refer45', 'Anshul Meena', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('62XYpLsFJcyzRqfLJwgiyAYfoXMkgfeI4AGesjAw', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidVdjYXR5bnREVkFlSUwyT0taQzF4UFBoU1dQRFBrbkJFRnZkN0Z4RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRsNi4wM1ViN3pNL2R3TEpYWGhEbjIuU2dzSk04MDR3NlFjajE4L3QxVWlWeG9BZU1zS0ZIaSI7czo1NToibG9naW5fY3VzdG9tZXJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0NTt9', 1739952642);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Harish', 'db@gmail.com', NULL, '$2y$12$l6.03Ub7zM/dwLJXXhDn2.SgsJM804w6Qcj18/t1UiVxoAeMsKFHi', NULL, NULL, NULL, 'PbtJz7HdvzKn1xWm3Qc2N0W4b6TBgqWshRHFxL0VdQZocsqDbvB6aUt4l3bn', NULL, NULL, '2024-09-04 04:20:07', '2024-09-04 04:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `serviceid` varchar(255) DEFAULT NULL,
  `transactionid` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL,
  `paymenttype` varchar(255) NOT NULL DEFAULT '"credit","debit"',
  `transactiontype` varchar(255) NOT NULL,
  `transactiondata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`transactiondata`)),
  `parentreferid` varchar(255) DEFAULT NULL,
  `commissionamt` varchar(255) DEFAULT NULL,
  `commissionby` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `userid`, `serviceid`, `transactionid`, `amount`, `paymenttype`, `transactiontype`, `transactiondata`, `parentreferid`, `commissionamt`, `commissionby`, `status`, `created_at`, `updated_at`) VALUES
(22, '45', '12', '12', 5000, 'credit', 'online', '{\"providerReferenceId\":\"T2501311115351936343162\",\"checksum\":\"640bf3f061fa37de445ec409bf4ed5aa47046e8231f4e7bcb412c6fcc810b254###1\",\"amount\":\"100\",\"transaction_id\":\"679c63772707b\",\"status\":\"PAYMENT_SUCCESS\",\"merchantOrderId\":\"679c63772707b\"}', NULL, NULL, NULL, '0', '2024-11-21 09:54:05', '2025-01-31 08:13:24'),
(31, '45', NULL, NULL, 5000, 'credit', 'online', NULL, NULL, NULL, NULL, '0', '2024-12-23 06:16:34', '2025-01-30 12:58:04'),
(34, '45', '214', '46', 1492, 'debit', 'serviceorder', NULL, '2024refer45', '149.2', NULL, '0', '2024-12-23 07:21:48', '2025-01-30 12:58:07'),
(35, '52', '215', '47', 2400, 'debit', 'serviceorder', NULL, NULL, NULL, NULL, 'Hold', '2024-12-24 04:50:01', '2024-12-27 13:32:21'),
(38, '45', NULL, NULL, 2000, 'credit', 'online', NULL, NULL, NULL, NULL, '0', '2024-12-26 07:59:52', '2025-01-30 12:58:11'),
(39, '45', NULL, NULL, 1000, 'credit', 'online', NULL, NULL, NULL, NULL, '0', '2024-12-26 08:03:31', '2025-01-30 12:58:13'),
(40, '45', NULL, NULL, 200, 'credit', 'online', NULL, NULL, NULL, NULL, '0', '2024-12-26 08:34:11', '2025-01-30 12:58:16'),
(41, '51', NULL, NULL, 10000, 'credit', 'online', '{\"razorpay_payment_id\":\"pay_Pbn08dvKdiC89n\",\"razorpay_order_id\":\"order_Pbmzlcn6h0p2MK\",\"razorpay_signature\":\"54b03b7887b11ce1820b9879c4c236b018bdca9035ae22397d1fa9ed12a7194b\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2024-12-26 11:32:19', '2025-02-19 06:29:55'),
(53, '51', '222', '56', 1000, 'debit', 'serviceorder', NULL, '2024refer45', '100', NULL, 'PAYMENT_SUCCESS', '2024-12-28 10:02:17', '2025-02-19 06:29:51'),
(58, '45', NULL, NULL, 100, 'credit', 'commission', NULL, NULL, NULL, '53', 'PAYMENT_SUCCESS', '2024-12-28 10:35:25', '2025-02-19 06:29:48'),
(59, '52', NULL, '1234', 50, 'debit', 'withdraw', NULL, NULL, NULL, NULL, 'withdrawn', '2025-01-18 09:26:47', '2025-01-18 11:11:19'),
(60, '52', NULL, NULL, 50, 'debit', 'withdraw', NULL, NULL, NULL, NULL, 'requested', '2025-01-18 09:27:39', '2025-01-18 09:46:21'),
(61, '45', NULL, NULL, 149.2, 'credit', 'commission', NULL, NULL, NULL, '34', 'PAYMENT_SUCCESS', '2025-01-20 07:32:49', '2025-02-19 06:29:45'),
(62, '45', NULL, '679b7a007398b', 100, 'credit', 'online', '{\"amount\":\"100\",\"transaction_id\":\"679b7a007398b\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2025-01-30 13:09:21', '2025-02-19 06:29:33'),
(63, '45', NULL, '679b7a1399a7f', 100, 'credit', 'online', '{\"amount\":\"100\",\"transaction_id\":\"679b7a1399a7f\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2025-01-30 13:09:40', '2025-02-19 06:29:40'),
(64, '45', NULL, '679b7a9a8c314', 100, 'credit', 'online', '{\"amount\":\"100\",\"transaction_id\":\"679b7a9a8c314\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2025-01-30 13:11:54', '2025-02-19 06:29:42'),
(65, '45', NULL, '679b7aa183d9e', 100, 'credit', 'online', '{\"amount\":\"100\",\"transaction_id\":\"679c62d63e90c\",\"status\":\"PAYMENT_INITIATED\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2025-01-30 13:12:01', '2025-02-19 06:29:31'),
(66, '45', NULL, '67b2ed9548950', 1, 'credit', 'online', '{\"amount\":\"1\",\"transaction_id\":\"67b2ed9548950\",\"status\":\"PAYMENT_INITIATED\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2025-02-17 08:04:37', '2025-02-19 06:29:28'),
(67, '45', NULL, '67b303031af1a', 1, 'credit', 'online', '{\"amount\":\"1\",\"transaction_id\":\"67b303031af1a\",\"status\":\"PAYMENT_INITIATED\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2025-02-17 09:36:03', '2025-02-19 06:29:26'),
(68, '45', NULL, '67b303aaacfc4', 1, 'credit', 'online', '{\"amount\":\"1\",\"transaction_id\":\"67b303aaacfc4\",\"status\":\"PAYMENT_INITIATED\"}', NULL, NULL, NULL, 'PAYMENT_SUCCESS', '2025-02-17 09:38:51', '2025-02-19 06:29:23'),
(69, '45', NULL, '67b3073b645fc', 1, 'credit', 'online', '{\"amount\":\"1\",\"transaction_id\":\"67b3073b645fc\",\"status\":\"PAYMENT_ERROR\"}', NULL, NULL, NULL, 'PAYMENT_ERROR', '2025-02-17 09:54:03', '2025-02-19 07:04:18'),
(70, '45', NULL, '67b311976339c', 1, 'credit', 'online', '{\"amount\":\"100\",\"transaction_id\":\"67b311976339c\",\"status\":\"PAYMENT_ERROR\"}', NULL, NULL, NULL, 'PAYMENT_ERROR', '2025-02-17 10:38:15', '2025-02-19 07:13:51');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `form_attributes`
--
ALTER TABLE `form_attributes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pricing_details`
--
ALTER TABLE `pricing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_services`
--
ALTER TABLE `purchase_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refer_incomes`
--
ALTER TABLE `refer_incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_attributes`
--
ALTER TABLE `form_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

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
-- AUTO_INCREMENT for table `pricing_details`
--
ALTER TABLE `pricing_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `purchase_services`
--
ALTER TABLE `purchase_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `refer_incomes`
--
ALTER TABLE `refer_incomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
