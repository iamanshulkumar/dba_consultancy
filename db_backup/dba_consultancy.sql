-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2024 at 12:34 PM
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
('fcead0a5906cc844bfc585a17c65c519', 'i:1;', 1730715955),
('fcead0a5906cc844bfc585a17c65c519:timer', 'i:1730715955;', 1730715955);

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
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaignname` varchar(255) DEFAULT NULL,
  `modulename` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `segmentname` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `sendimmediate` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  `scheduledatetime` varchar(255) DEFAULT NULL,
  `mediaimage` varchar(255) DEFAULT NULL,
  `mediatype` varchar(255) DEFAULT NULL,
  `languagetype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaignname`, `modulename`, `template`, `segmentname`, `userid`, `sendimmediate`, `datetime`, `scheduledatetime`, `mediaimage`, `mediatype`, `languagetype`, `created_at`, `updated_at`) VALUES
(67, 'Demo Campaign', 'New Customer', 'yuvtraining_seminar', 'Follow Up', '17', '0', NULL, NULL, 'http://127.0.0.1:8000/assets/images/templates/1727346178.png', 'image', 'en', '2024-09-26 10:22:58', '2024-09-26 10:22:58'),
(77, 'Test Campaign', 'New Customer', 'yuvtraining_seminar', 'Follow Up', '17', NULL, '2024-10-01T13:00', '1', 'http://127.0.0.1:8000/assets/images/templates/1727764592.webp', 'image', 'en', '2024-10-01 06:36:32', '2024-10-01 06:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `userid`, `type`, `fullname`, `email`, `phonenumber`, `city`, `state`, `country`, `language`, `address`, `status`, `created_at`, `updated_at`) VALUES
(79, '17', 'New Customer', 'Kishan', 'demo@gmail.com', '+916375475956', 'Ajmer', 'Rajasthan', 'India', 'en-US', 'Ajmer,Raj,India', 'Follow up', '2024-10-01 05:21:33', '2024-10-01 05:21:49'),
(80, '17', 'New Customer', 'Anshul', 'demo@gmail.com', '+919429158300', 'Ajmer', 'Rajasthan', 'India', 'English', 'Ajmer,Raj,India', 'Follow up', '2024-10-01 05:21:33', '2024-10-01 05:21:33'),
(81, '17', 'New Customer', 'Nitesh', 'demo@gmail.com', '+918209165518', 'Ajmer', 'Rajasthan', 'India', 'English', 'Ajmer,Raj,India', 'Follow up', '2024-10-01 05:21:33', '2024-10-01 05:21:33'),
(82, '17', 'New Customer', 'Shakti', 'demo@gmail.com', '+919588094364', 'Ajmer', 'Rajasthan', 'India', 'English', 'Ajmer,Raj,India', 'Follow up', '2024-10-01 05:21:33', '2024-10-01 05:21:33'),
(83, '17', 'New Customer', 'Rudraksh', 'demo@gmail.com', '+919462134957', 'Ajmer', 'Rajasthan', 'India', 'English', 'Ajmer,Raj,India', 'Follow up', '2024-10-01 05:21:33', '2024-10-01 05:21:33'),
(84, '17', 'New Customer', 'Dipanshu', 'demo@gmail.com', '+917014697321', NULL, NULL, 'India', 'ru', 'Ajmer,Raj,India', 'Follow up', '2024-10-01 05:21:33', '2024-10-01 05:22:40');

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
-- Table structure for table `group_types`
--

CREATE TABLE `group_types` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_types`
--

INSERT INTO `group_types` (`id`, `userid`, `type`, `label`, `created_at`, `updated_at`) VALUES
(7, '17', 'Group', 'New Customer', '2024-09-21 11:31:34', '2024-09-28 10:21:29'),
(8, '17', 'Status', 'Follow Up', '2024-09-23 10:32:55', '2024-09-23 10:32:55');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `label`, `value`, `type`, `created_at`, `updated_at`) VALUES
(196, 'E-Commerce', 'E-Commerce', 'demo', '2024-11-04 09:09:16', '2024-11-04 09:09:16'),
(197, 'demo222', 'demo222', 'E-Commerce', '2024-11-04 09:17:28', '2024-11-04 10:04:16'),
(198, 'updatedfsdf', 'updateddsfsd', 'E-Commerce', '2024-11-04 09:17:51', '2024-11-04 10:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `senderid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `recievedid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `senderid`, `type`, `message`, `templatename`, `imageurl`, `recievedid`, `created_at`, `updated_at`) VALUES
(1, '916375475956', 'Recieved', '{\"from\":\"916375475956\",\"id\":\"wamid.HBgMOTE2Mzc1NDc1OTU2FQIAEhggNEIzMTY2RUE4Q0UwRjI5OTY3QTRCQkYzQzY4MjVFRDEA\",\"timestamp\":\"1728558164\",\"text\":{\"body\":\"Are you interested in web development? Do you want to le advanced programming languages, job opportunities, and career paths in this exciting field? Then this seminar\\nDon\'t miss out on this fantastic opportunity to kickstart your web development journey\"},\"type\":\"text\"}', NULL, NULL, '918824269821', '2024-10-29 05:32:46', '2024-10-29 05:52:34'),
(2, '916375475956', 'Recieved', '{\"from\":\"916375475956\",\"id\":\"wamid.HBgMOTE2Mzc1NDc1OTU2FQIAEhggNEIzMTY2RUE4Q0UwRjI5OTY3QTRCQkYzQzY4MjVFRDEA\",\"timestamp\":\"1728558164\",\"text\":{\"body\":\"Are you interested in web development?\"},\"type\":\"text\"}', NULL, NULL, '918824269821', '2024-10-29 05:32:46', '2024-10-29 05:54:02'),
(4, '918824269821', 'Sent', '[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/421407039_508207501868565_7292007801105227494_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=-JDEdnn15doQ7kNvgGLKw5O&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A5Yb8QhLkJ7Iqj39gzJIGtc&oh=01_Q5AaIF9bq4yUTXsmzWv8x6uwt7Es4ahe-EohzoiQVKTIBUdZ&oe=6735D94F\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\ude80 *Join Our Free Web Development Seminar!* \\ud83d\\ude80\\n\\n\\ud83d\\uddd3\\ufe0f *Date*: Saturday, 20th July 2024\\n\\ud83d\\udd54 *Time* : 5:00 PM - 6:00 PM\\n\\ud83d\\udccd *Venue*: YUVTRAININGS , B17, 1st Floor, Above Royal Bakers, Glitz Circle, Ramnagar Road, Ajmer, Rajasthan, 305001\\n\\nAre you interested in web development? Do you want to learn about advanced programming languages, job opportunities, and career paths in this exciting field? Then this seminar is perfect for you!\\n\\n\\ud83c\\udf93 *What You\'ll Learn*:\\n\\nIntroduction to Web Development\\nAdvanced Programming Languages\\nCareer Opportunities in Web Development\\nSeats are limited, so make sure to register in advance! \\ud83c\\udf9f\\ufe0f\\n\\n\\ud83d\\udcde For Free Registration: *Call us at 9588977566*\\n\\nAs tomorrow will be a seminar of web development we need a confirmation from your side that you are attending so kindly fill this form .\\n\\nhttps:\\/\\/docs.google.com\\/forms\\/d\\/e\\/1FAIpQLSeHo_HYvZpuLWQGhUgqyaifMjph-wrUBcKj8Tz8KKHC4fcQJw\\/viewform\\n\\nDon\'t miss out on this fantastic opportunity to kickstart your web development journey\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"PHONE_NUMBER\",\"text\":\"Call phone number\",\"phone_number\":\"+919588977566\"}]}]', 'yuvtraining_seminar', 'http://127.0.0.1:8000/assets/images/templates/1728986024.png', '+916375475956', '2024-10-15 09:53:45', '2024-10-22 11:13:28'),
(5, '918824269821', 'Sent', '[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/421407039_508207501868565_7292007801105227494_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=-JDEdnn15doQ7kNvgGLKw5O&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A5Yb8QhLkJ7Iqj39gzJIGtc&oh=01_Q5AaIF9bq4yUTXsmzWv8x6uwt7Es4ahe-EohzoiQVKTIBUdZ&oe=6735D94F\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\ude80 *Join Our Free Web Development Seminar!* \\ud83d\\ude80\\n\\n\\ud83d\\uddd3\\ufe0f *Date*: Saturday, 20th July 2024\\n\\ud83d\\udd54 *Time* : 5:00 PM - 6:00 PM\\n\\ud83d\\udccd *Venue*: YUVTRAININGS , B17, 1st Floor, Above Royal Bakers, Glitz Circle, Ramnagar Road, Ajmer, Rajasthan, 305001\\n\\nAre you interested in web development? Do you want to learn about advanced programming languages, job opportunities, and career paths in this exciting field? Then this seminar is perfect for you!\\n\\n\\ud83c\\udf93 *What You\'ll Learn*:\\n\\nIntroduction to Web Development\\nAdvanced Programming Languages\\nCareer Opportunities in Web Development\\nSeats are limited, so make sure to register in advance! \\ud83c\\udf9f\\ufe0f\\n\\n\\ud83d\\udcde For Free Registration: *Call us at 9588977566*\\n\\nAs tomorrow will be a seminar of web development we need a confirmation from your side that you are attending so kindly fill this form .\\n\\nhttps:\\/\\/docs.google.com\\/forms\\/d\\/e\\/1FAIpQLSeHo_HYvZpuLWQGhUgqyaifMjph-wrUBcKj8Tz8KKHC4fcQJw\\/viewform\\n\\nDon\'t miss out on this fantastic opportunity to kickstart your web development journey\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"PHONE_NUMBER\",\"text\":\"Call phone number\",\"phone_number\":\"+919588977566\"}]}]', 'yuvtraining_seminar', 'http://127.0.0.1:8000/assets/images/templates/1730194857.png', '+919429158300', '2024-10-29 09:40:58', '2024-10-29 09:40:58'),
(7, '918824269821', 'Sent', '[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/421407039_508207501868565_7292007801105227494_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=-JDEdnn15doQ7kNvgGLKw5O&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A5Yb8QhLkJ7Iqj39gzJIGtc&oh=01_Q5AaIF9bq4yUTXsmzWv8x6uwt7Es4ahe-EohzoiQVKTIBUdZ&oe=6735D94F\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\ude80 *Join Our Free Web Development Seminar!* \\ud83d\\ude80\\n\\n\\ud83d\\uddd3\\ufe0f *Date*: Saturday, 20th July 2024\\n\\ud83d\\udd54 *Time* : 5:00 PM - 6:00 PM\\n\\ud83d\\udccd *Venue*: YUVTRAININGS , B17, 1st Floor, Above Royal Bakers, Glitz Circle, Ramnagar Road, Ajmer, Rajasthan, 305001\\n\\nAre you interested in web development? Do you want to learn about advanced programming languages, job opportunities, and career paths in this exciting field? Then this seminar is perfect for you!\\n\\n\\ud83c\\udf93 *What You\'ll Learn*:\\n\\nIntroduction to Web Development\\nAdvanced Programming Languages\\nCareer Opportunities in Web Development\\nSeats are limited, so make sure to register in advance! \\ud83c\\udf9f\\ufe0f\\n\\n\\ud83d\\udcde For Free Registration: *Call us at 9588977566*\\n\\nAs tomorrow will be a seminar of web development we need a confirmation from your side that you are attending so kindly fill this form .\\n\\nhttps:\\/\\/docs.google.com\\/forms\\/d\\/e\\/1FAIpQLSeHo_HYvZpuLWQGhUgqyaifMjph-wrUBcKj8Tz8KKHC4fcQJw\\/viewform\\n\\nDon\'t miss out on this fantastic opportunity to kickstart your web development journey\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"PHONE_NUMBER\",\"text\":\"Call phone number\",\"phone_number\":\"+919588977566\"}]}]', 'yuvtraining_seminar', 'http://127.0.0.1:8000/assets/images/templates/1730195427.png', '+919588094364', '2024-10-29 09:50:28', '2024-10-29 09:50:28'),
(8, '918824269821', 'Sent', '[{\"type\":\"HEADER\",\"format\":\"VIDEO\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/454226293_513250244975457_7966794352129396239_n.mp4?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VnFEu_u59k8Q7kNvgGFH6PH&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=ATD-vKSrQYDxo-Evv9eBLml&oh=01_Q5AaIEX-RpM9_84ij-p5bb-QlPZsmVnNqui5YDSN5XXUQ0m2&oe=6735B548\"]}},{\"type\":\"BODY\",\"text\":\"*Best Digital Marketing Agency at your service - Your business deserves the best. *\\nIt\'s time for YUVMEDIA magic. \\ud83e\\udd14\\n\\nAt YUVMEDIA, we don\'t just market, we create magic! \\n\\nWe provide:\\n\\u2714 Marketplace Expertise.\\n\\u2714 SEO\\n\\u2714 Performance Media.\\n\\u2714 Social Media.\\n\\u2714 Web & App Development.\\n\\u2714 CRM & ERP Solutions.\\n\\u2714 Video Production.\\n\\u2714 Designing Services.\\n\\u2714 GBP Management.\\n\\u2714 Influencer Management.\\n\\nReach out today and let\'s make your brand shine! \\ud83d\\udcac\\n\\nDon\'t just take our word for it- Check out our client success stories.\"},{\"type\":\"FOOTER\",\"text\":\"Click the link below & Start Scrolling\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"URL\",\"text\":\"Visit Our Website\",\"url\":\"https:\\/\\/business.yuvmedia.in\\/\"}]}]', '19_sept_bulk_yuvmedia', 'http://127.0.0.1:8000/assets/images/templates/1730196369.mp4', '+919429158300', '2024-10-29 10:06:10', '2024-10-29 10:06:10'),
(9, '918824269821', 'Sent', '[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/421407039_508207501868565_7292007801105227494_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=-JDEdnn15doQ7kNvgGLKw5O&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A5Yb8QhLkJ7Iqj39gzJIGtc&oh=01_Q5AaIF9bq4yUTXsmzWv8x6uwt7Es4ahe-EohzoiQVKTIBUdZ&oe=6735D94F\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\ude80 *Join Our Free Web Development Seminar!* \\ud83d\\ude80\\n\\n\\ud83d\\uddd3\\ufe0f *Date*: Saturday, 20th July 2024\\n\\ud83d\\udd54 *Time* : 5:00 PM - 6:00 PM\\n\\ud83d\\udccd *Venue*: YUVTRAININGS , B17, 1st Floor, Above Royal Bakers, Glitz Circle, Ramnagar Road, Ajmer, Rajasthan, 305001\\n\\nAre you interested in web development? Do you want to learn about advanced programming languages, job opportunities, and career paths in this exciting field? Then this seminar is perfect for you!\\n\\n\\ud83c\\udf93 *What You\'ll Learn*:\\n\\nIntroduction to Web Development\\nAdvanced Programming Languages\\nCareer Opportunities in Web Development\\nSeats are limited, so make sure to register in advance! \\ud83c\\udf9f\\ufe0f\\n\\n\\ud83d\\udcde For Free Registration: *Call us at 9588977566*\\n\\nAs tomorrow will be a seminar of web development we need a confirmation from your side that you are attending so kindly fill this form .\\n\\nhttps:\\/\\/docs.google.com\\/forms\\/d\\/e\\/1FAIpQLSeHo_HYvZpuLWQGhUgqyaifMjph-wrUBcKj8Tz8KKHC4fcQJw\\/viewform\\n\\nDon\'t miss out on this fantastic opportunity to kickstart your web development journey\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"PHONE_NUMBER\",\"text\":\"Call phone number\",\"phone_number\":\"+919588977566\"}]}]', 'yuvtraining_seminar', 'http://127.0.0.1:8000/assets/images/templates/1730201968.png', '+916375475956', '2024-10-29 11:39:29', '2024-10-29 11:39:29');

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
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobilenumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `expiredate` varchar(255) DEFAULT NULL,
  `createddate` varchar(255) DEFAULT NULL,
  `accountstatus` varchar(255) DEFAULT '0',
  `verifystatus` varchar(255) DEFAULT '0',
  `apptoken` longtext DEFAULT NULL,
  `phonenumberid` varchar(255) DEFAULT NULL,
  `Wabaid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otp` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `userid`, `password`, `mobilenumber`, `email`, `expiredate`, `createddate`, `accountstatus`, `verifystatus`, `apptoken`, `phonenumberid`, `Wabaid`, `created_at`, `updated_at`, `otp`) VALUES
(17, '1001', '$2y$12$l6.03Ub7zM/dwLJXXhDn2.SgsJM804w6Qcj18/t1UiVxoAeMsKFHi', '918824269821', 'ans@gmail.com', '2024-09-10', '2024-09-17', 'Enable', '1', 'EAAQiZBXP3SakBOZCUVsXFiFprbNNV1Xr2baP6wi5ZBDuKgEz72g7NWRTmbtSFBzXZASMiImCHvSiy0mRNCOtNkf7QdTboiVnJ0wrCCWAHMKw0wZBnvMotNkkp8BnGcIh6JQjpJAUNqL00S6FTOmY1OVtVvnTEZC2uiLiNNzJ7a2ahdvulZCstQHQkkVSoTrJg8AnAZDZD', '282520401622445', '309165212288658', '2024-09-05 06:32:20', '2024-10-11 10:35:21', '841715');

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
('I2IbOoBQ1LvqCFJcrEnphgqKFyO8JZORh0oEcmt5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1ZEYnRsSjJEQjcwOVB6RGdCTEV5cDRmQk9ObTlMTWJGdnYycFNLYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730720041),
('T4lKXGk4QsLo4miuu2SQL3OQDdJEYWpflNXkc60A', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid1NYeEJKd0k2UXA2Q3RSYmhDclk0bkVvNWNKSDE0cVcwR1ZFR09jcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRsNi4wM1ViN3pNL2R3TEpYWGhEbjIuU2dzSk04MDR3NlFjajE4L3QxVWlWeG9BZU1zS0ZIaSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1730719665);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`components`)),
  `language` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `userid`, `name`, `components`, `language`, `status`, `category`, `sub_category`, `templateid`, `created_at`, `updated_at`) VALUES
(26, '17', 'hello_world', '[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}]', 'en_US', 'APPROVED', 'UTILITY', NULL, '1022671846051045', '2024-10-15 11:56:50', '2024-10-15 11:56:50'),
(27, '17', '19_sept_bulk_yuvmedia', '[{\"type\":\"HEADER\",\"format\":\"VIDEO\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/454226293_513250244975457_7966794352129396239_n.mp4?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VnFEu_u59k8Q7kNvgGFH6PH&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=ATD-vKSrQYDxo-Evv9eBLml&oh=01_Q5AaIEX-RpM9_84ij-p5bb-QlPZsmVnNqui5YDSN5XXUQ0m2&oe=6735B548\"]}},{\"type\":\"BODY\",\"text\":\"*Best Digital Marketing Agency at your service - Your business deserves the best. *\\nIt\'s time for YUVMEDIA magic. \\ud83e\\udd14\\n\\nAt YUVMEDIA, we don\'t just market, we create magic! \\n\\nWe provide:\\n\\u2714 Marketplace Expertise.\\n\\u2714 SEO\\n\\u2714 Performance Media.\\n\\u2714 Social Media.\\n\\u2714 Web & App Development.\\n\\u2714 CRM & ERP Solutions.\\n\\u2714 Video Production.\\n\\u2714 Designing Services.\\n\\u2714 GBP Management.\\n\\u2714 Influencer Management.\\n\\nReach out today and let\'s make your brand shine! \\ud83d\\udcac\\n\\nDon\'t just take our word for it- Check out our client success stories.\"},{\"type\":\"FOOTER\",\"text\":\"Click the link below & Start Scrolling\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"URL\",\"text\":\"Visit Our Website\",\"url\":\"https:\\/\\/business.yuvmedia.in\\/\"}]}]', 'en', 'APPROVED', 'MARKETING', 'CUSTOM', '513250241642124', '2024-10-15 11:56:50', '2024-10-15 11:56:50'),
(28, '17', 'whatsapp_marketing_campaign_3', '[{\"type\":\"HEADER\",\"format\":\"VIDEO\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/417328046_1018593666676900_3709983320261188500_n.mp4?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=-rehRqg-qqcQ7kNvgEOm2CP&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=ATD-vKSrQYDxo-Evv9eBLml&oh=01_Q5AaIOkzslNAK49ui_p8S0KxCUuDN0HJfX9hboJHccaBJW-i&oe=6735CF69\"]}},{\"type\":\"BODY\",\"text\":\"Whether you\'re a travel agent, own a clothing or footwear store, are an astrologer seeking new clients, or an architect looking for new projects.\\n\\nYUVMEDIA is your go-to solution! We\'ve empowered over 600 MSMEs across leading sectors to thrive.\\n\\nWe provide:\\n\\u2705Marketplace Expertise.\\n\\u2705SEO\\n\\u2705Performance Media.\\n\\u2705Social Media.\\n\\u2705Web & App Development.\\n\\u2705CRM & ERP Solutions.\\n\\u2705Video Production.\\n\\u2705Designing Services.\\n\\u2705GBP Management.\\n\\u2705Influencer Management.\\n\\nContact us today for a free consultation.\\n\\nDon\'t just take our word for it\\u2014explore our client success stories. \\n\\nConnect with us to become the next successful brand in the market.\"},{\"type\":\"FOOTER\",\"text\":\"Click the link below and Start Scrolling\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"URL\",\"text\":\"Visit Our Website Now\",\"url\":\"https:\\/\\/business.yuvmedia.in\\/\"}]}]', 'en', 'APPROVED', 'MARKETING', 'CUSTOM', '1018593636676903', '2024-10-15 11:56:50', '2024-10-15 11:56:50'),
(29, '17', 'yuvmedia_whatsapp_marketing_02', '[{\"type\":\"HEADER\",\"format\":\"VIDEO\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/455108289_1320513185584549_5176204141377461365_n.mp4?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=vdqmrxm5xK4Q7kNvgFWo5sp&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=ATD-vKSrQYDxo-Evv9eBLml&oh=01_Q5AaIJgLM99FgyP4yaMQL8EpqoTIssjjeF-cG19_QnP_H0Z3&oe=6735D365\"]}},{\"type\":\"BODY\",\"text\":\"Whether you\'re a travel agent, own a clothing or footwear store, are an astrologer seeking new clients, or an architect looking for new projects.\\n\\nYUVMEDIA is your go-to solution! We\'ve empowered over *600 MSMEs* across leading sectors to thrive.\\n\\nWe provide:\\n\\u2705Marketplace Expertise.\\n\\u2705SEO\\n\\u2705Performance Media.\\n\\u2705Social Media.\\n\\u2705Web & App Development.\\n\\u2705CRM & ERP Solutions.\\n\\u2705Video Production.\\n\\u2705Designing Services.\\n\\u2705GBP Management.\\n\\u2705Influencer Management.\\n\\n*Contact us today for a free consultation.\\n*\\nDon\'t just take our word for it\\u2014explore our client success stories. \\n\\n*_Connect with us to become the next successful brand._*\"},{\"type\":\"FOOTER\",\"text\":\"Click on the Link Below & Start Scrolling\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"URL\",\"text\":\"Visit Our Website Now\",\"url\":\"https:\\/\\/business.yuvmedia.in\\/\"}]}]', 'en', 'APPROVED', 'MARKETING', 'CUSTOM', '1320513182251216', '2024-10-15 11:56:50', '2024-10-15 11:56:50'),
(30, '17', 'yuvmedia_whatsapp_marketing_01', '[{\"type\":\"HEADER\",\"format\":\"VIDEO\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/425121419_1892474251238912_5031921930232779657_n.mp4?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=65kZyjr1yKYQ7kNvgE_wxtr&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=ATD-vKSrQYDxo-Evv9eBLml&oh=01_Q5AaIEHVKCSQysWOsHEqawLQ4fqYeqOm1fR0m6XDEuIGxRts&oe=6735B4A0\"]}},{\"type\":\"BODY\",\"text\":\"*Best Digital Marketing Agency at your service - Your business deserves the best. *\\nIt\'s time for YUVMEDIA magic. \\ud83e\\udd14\\n\\nAt YUVMEDIA, we don\'t just market, we create magic! \\n\\nWe provide:\\n\\u2714 Marketplace Expertise.\\n\\u2714 SEO\\n\\u2714 Performance Media.\\n\\u2714 Social Media.\\n\\u2714 Web & App Development.\\n\\u2714 CRM & ERP Solutions.\\n\\u2714 Video Production.\\n\\u2714 Designing Services.\\n\\u2714 GBP Management.\\n\\u2714 Influencer Management.\\n\\nReach out today and let\'s make your brand shine! \\ud83d\\udcac\\n\\nDon\'t just take our word for it- Check out our client success stories.\"},{\"type\":\"FOOTER\",\"text\":\"Click the link below & Start Scrolling\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"URL\",\"text\":\"Visit Our Website Now!\",\"url\":\"https:\\/\\/business.yuvmedia.in\\/\"}]}]', 'en', 'APPROVED', 'MARKETING', NULL, '1892474247905579', '2024-10-15 11:56:50', '2024-10-15 11:56:50'),
(31, '17', 'whats_app_marketing_for_service', '[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/437068910_1214273443219231_6053277554443404233_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ysjziEGWVYAQ7kNvgFZOPpW&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=ATD-vKSrQYDxo-Evv9eBLml&oh=01_Q5AaIIaIDUDydyGfZYv3up3xV9ao9y0LG-dY-aBPepKEh23I&oe=6735C579\"]}},{\"type\":\"BODY\",\"text\":\"*Yuvmedia Best Digital Marketing Company in India*\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"URL\",\"text\":\"Visit Our website\",\"url\":\"https:\\/\\/yuvmedia.in\\/\"}]}]', 'en', 'APPROVED', 'MARKETING', 'CUSTOM', '1214273436552565', '2024-10-15 11:56:50', '2024-10-15 11:56:50'),
(32, '17', 'header', '[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"hi\"},{\"type\":\"BODY\",\"text\":\"welcome to yuvmedia\"}]', 'en', 'APPROVED', 'MARKETING', NULL, '446771061401702', '2024-10-15 11:56:50', '2024-10-15 11:56:50'),
(33, '17', 'yuvtraining_seminar', '[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/421407039_508207501868565_7292007801105227494_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=-JDEdnn15doQ7kNvgGLKw5O&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A5Yb8QhLkJ7Iqj39gzJIGtc&oh=01_Q5AaIF9bq4yUTXsmzWv8x6uwt7Es4ahe-EohzoiQVKTIBUdZ&oe=6735D94F\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\ude80 *Join Our Free Web Development Seminar!* \\ud83d\\ude80\\n\\n\\ud83d\\uddd3\\ufe0f *Date*: Saturday, 20th July 2024\\n\\ud83d\\udd54 *Time* : 5:00 PM - 6:00 PM\\n\\ud83d\\udccd *Venue*: YUVTRAININGS , B17, 1st Floor, Above Royal Bakers, Glitz Circle, Ramnagar Road, Ajmer, Rajasthan, 305001\\n\\nAre you interested in web development? Do you want to learn about advanced programming languages, job opportunities, and career paths in this exciting field? Then this seminar is perfect for you!\\n\\n\\ud83c\\udf93 *What You\'ll Learn*:\\n\\nIntroduction to Web Development\\nAdvanced Programming Languages\\nCareer Opportunities in Web Development\\nSeats are limited, so make sure to register in advance! \\ud83c\\udf9f\\ufe0f\\n\\n\\ud83d\\udcde For Free Registration: *Call us at 9588977566*\\n\\nAs tomorrow will be a seminar of web development we need a confirmation from your side that you are attending so kindly fill this form .\\n\\nhttps:\\/\\/docs.google.com\\/forms\\/d\\/e\\/1FAIpQLSeHo_HYvZpuLWQGhUgqyaifMjph-wrUBcKj8Tz8KKHC4fcQJw\\/viewform\\n\\nDon\'t miss out on this fantastic opportunity to kickstart your web development journey\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"PHONE_NUMBER\",\"text\":\"Call phone number\",\"phone_number\":\"+919588977566\"}]}]', 'en', 'APPROVED', 'MARKETING', 'CUSTOM', '508207495201899', '2024-10-15 11:57:12', '2024-10-15 11:57:12');

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
(1, 'harish_234', 'db@gmail.com', NULL, '$2y$12$l6.03Ub7zM/dwLJXXhDn2.SgsJM804w6Qcj18/t1UiVxoAeMsKFHi', NULL, NULL, NULL, '2pQXEmzJ5i43BYYWyS81TmSxNB5RddzczPYd9aIhM8mRJZqoI6wGLRE1V85x', NULL, NULL, '2024-09-04 04:20:07', '2024-09-04 04:20:07');

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
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group_types`
--
ALTER TABLE `group_types`
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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`,`userid`);

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
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_types`
--
ALTER TABLE `group_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
