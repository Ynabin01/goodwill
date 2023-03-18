-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2023 at 12:51 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoradi_equoter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$163vkGFvNIHRMofvqOAzSupCREHiI2qBH6LuJS0zbgOXhwC1v2SCi', NULL, '2020-09-16 03:15:20', '2020-09-16 03:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_for` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `number`, `email`, `apply_for`, `country`, `job_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(43, 'admin', '88888888', 'dhanusa@fenfitnepal', NULL, NULL, NULL, 'iluytgdfdg', NULL, '2022-12-14 20:14:17', '2022-12-14 20:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_nepali_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_full_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` int(255) DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` mediumtext COLLATE utf8mb4_unicode_ci,
  `page_description` text COLLATE utf8mb4_unicode_ci,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `phone_ne`, `website_full_address`, `address_ne`, `facebook`, `twitter`, `linkedin`, `other`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Equator International P. Ltd.', NULL, 'info@shalmanioverseas.com', '01-5147227, 5147228 / 9847906630', 'Government License No.:746/064/065', 'Basundhara,', 'Koteshwor, Kathmandu, Nepal', 'https://www.facebook.com/shalmanioverseas/', 'https://twitter.com/', 'https://www.instagram.com/', NULL, 'Equator International P. Ltd.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3531.2954469134993!2d85.31168445126552!3d27.739031882694295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb192769445433%3A0x9b19ae864def10a7!2sEquator%20International%20P.%20Ltd.!5e0!3m2!1sen!2snp!4v1670836662152!5m2!1sen!2snp\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.', '1670833741_fv (2).png', '1670480763_logo.png', '1670480629_logo.png', '1', '', '', '2020-09-16 03:15:20', '2022-12-29 21:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(100) NOT NULL,
  `company_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation_id` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_name`, `salary`, `country`, `contract_time`, `navigation_id`, `created_at`, `updated_at`) VALUES
(13, 'Factory Worker (Manufacturing Sec.)', '150000', 'malasiya', '2', 2300, '2022-07-21 15:21:39', '2022-07-21 16:05:28'),
(17, 'POLYPLAS SDN. BHD.', '150000', 'Malaysia', '12', 2306, '2022-07-21 16:13:09', '2022-07-21 16:13:09'),
(18, 'POLYPLAS SDN. BHD.', '80000', 'Malaysia', '0', 2307, '2022-07-21 16:16:32', '2022-07-21 16:16:32'),
(19, 'Happy Services', '90000', 'Columbus, US', '1', 2308, '2022-07-21 16:18:02', '2022-07-21 16:18:02'),
(20, 'ABC company', '300000', 'Saudi Aribia', '2', 2309, '2022-07-21 16:20:07', '2022-07-21 16:20:07'),
(21, 'Oli Company Pvt. Ltd.', '250000', 'UAE', '1', 2310, '2022-07-21 16:22:06', '2022-07-21 16:22:06'),
(22, 'Ram Hotels Pvt. Ltd.', '50000', 'Nepal', '3', 2311, '2022-07-21 16:27:13', '2022-07-21 16:27:13'),
(23, 'MD Hotels Pvt. Ltd.', '150000', 'Nepal', '3', 2312, '2022-07-21 16:30:38', '2022-07-21 16:30:38'),
(26, 'POLYPLAS SDN. BHD.', '4500', 'Malaysia', '1', 2408, '2022-08-09 20:07:01', '2022-08-09 20:07:01'),
(27, 'POLYPLAS SDN. BHD.', '50000', 'Malaysia', '1', 2409, '2022-08-09 20:10:43', '2022-08-09 20:10:43'),
(28, 'Security Company', '10000', 'Security Company', '1', 2410, '2022-08-09 20:13:58', '2022-08-09 20:13:58'),
(29, 'Security World', '110000', 'UAE', '1', 2411, '2022-08-09 20:17:31', '2022-08-09 20:17:31'),
(31, 'The Connect Plus (TCP)', '150000', 'Saudi Aribia', '1', 2416, '2022-08-09 20:28:08', '2022-08-09 20:28:08'),
(32, 'The Connect Plus (TCP)', '120000', 'Malasiya', '1', 2417, '2022-08-09 20:29:52', '2022-08-09 20:29:52'),
(33, 'Factory Worker (Manufacturing Sec.)', '130000', 'Columbus, US', '1', 2418, '2022-08-09 20:31:28', '2022-08-09 20:31:28'),
(34, 'POLYPLAS SDN. BHD.', '140000', 'Saudi Aribia', '1', 2419, '2022-08-09 20:33:02', '2022-08-09 20:33:02'),
(36, 'Factory Worker (Manufacturing Sec.)', '250000', 'Saudi Aribia', '1', 2421, '2022-08-09 20:36:52', '2022-08-09 20:36:52'),
(37, 'Saudi Oils', '250000', 'Saudi Aribia', '1', 2422, '2022-08-09 20:41:06', '2022-08-09 20:41:06'),
(38, 'Rimjhim Resorts', '50000', 'Dubai', '1', 2424, '2022-08-09 20:43:24', '2022-08-09 20:43:24'),
(39, 'UAE Hotels', '500000', 'UAE', '5', 2425, '2022-08-09 20:45:15', '2022-08-09 20:45:15'),
(41, 'Lorem2', '12000', 'Lorem2', '4', 2470, '2022-08-25 06:16:20', '2022-08-25 06:16:20'),
(42, 'Info Tech Nepal', '123000', 'Nepal', '3', 2473, '2022-08-25 06:40:33', '2022-08-25 06:40:33'),
(43, 'Info Tech Nepal', '100000', 'ukmi', '7', 2474, '2022-08-25 06:55:18', '2022-08-25 06:55:18'),
(44, 'Lorem23', '10000', 'Lorem23', '3', 2475, '2022-08-25 06:56:23', '2022-08-25 06:56:23'),
(45, 'Info Tech Nepal', '2000', 'Nepal', '2', 2476, '2022-08-25 06:57:43', '2022-08-25 06:57:43'),
(46, 'Driver', '2000', 'Driver', '1', 2484, '2022-08-26 06:18:42', '2022-08-26 06:18:42'),
(47, 'Company:POLYPLAS SDN. BHD', 'MYR 2000 Monthaly', 'Dubai', '2', 2567, '2022-12-13 21:00:48', '2022-12-13 21:00:48'),
(48, 'Cook1', 'Cook', 'Cook', 'Cook', 2576, '2022-12-14 20:08:33', '2022-12-14 20:08:33'),
(49, 'Company:POLYPLAS SDN. BHD', 'MYR 2000 Monthaly', 'Dubai', '2', 2577, '2022-12-14 20:09:55', '2022-12-14 20:09:55'),
(50, 'Accountant', 'Accountant', 'Dubai', '2', 2578, '2022-12-14 20:11:49', '2022-12-14 20:11:49'),
(51, 'Company:POLYPLAS SDN. BHD', 'MYR 200000 Monthaly', 'Dubai', '2', 2579, '2022-12-14 20:13:04', '2022-12-14 20:13:04'),
(52, 'Company:POLYPLAS SDN. BHD', 'MYR 2000 Monthaly', 'Dubai', '2', 2580, '2022-12-14 20:21:50', '2022-12-14 20:21:50'),
(53, 'Company:POLYPLAS SDN. BHD', 'MYR 2000 Monthaly', 'Dubai', '2', 2581, '2022-12-14 20:23:13', '2022-12-14 20:23:13'),
(54, 'fenfite', 'MYR 2000 Monthaly', 'Dubai', '2', 2582, '2022-12-14 20:24:18', '2022-12-14 20:24:18'),
(55, 'fenfite', 'MYR 2000 Monthaly', 'Dubai', '2', 2583, '2022-12-14 20:25:03', '2022-12-14 20:25:03'),
(56, 'fenfite', 'MYR 2000 Monthaly', 'Dubai', '2', 2584, '2022-12-14 20:25:51', '2022-12-14 20:25:51');

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
(3, '2020_08_06_040112_create_admins_table', 1),
(4, '2020_08_06_040148_create_navigations_table', 1),
(5, '2020_08_06_040229_create_navigation_items_table', 1),
(6, '2020_08_06_040251_create_page_types', 1),
(7, '2020_08_06_040325_create_subscribers_table', 1),
(8, '2020_08_06_040351_create_global_settings_table', 1),
(9, '2020_08_06_040430_create_navigation_video_items_table', 1),
(10, '2020_08_06_040522_create_comments_table', 1),
(11, '2022_07_12_231308_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci,
  `short_content_nepali` text COLLATE utf8mb4_unicode_ci,
  `long_content` text COLLATE utf8mb4_unicode_ci,
  `long_content_nepali` text COLLATE utf8mb4_unicode_ci,
  `parent_page_id` int(11) NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nav_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`) VALUES
(2255, 'About Us', 'about-us', 'About us', '.', 'Home', 'Normal', NULL, 1, '<h2>We are crafting your unique business consulting ideas destination.</h2>', '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;', 'Over the years, recruitment hasn\'t been our only forte. We are thorough while conducting post-development and/ or on-site support services to ensure the welfare and well-being of the deployed workers in their workplace. It is important for us to find out that our employers have been compliant with their obligations.', NULL, 2254, '1663227062_pexels-photo-3184287.jpeg', '1663227002_about1.webp', NULL, '/uploads/banner_image/1663227002_chairman.jpg', NULL, NULL, NULL, NULL, 'About Us', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:12:09', '2022-09-15 07:31:02'),
(2259, 'company', 'company', 'About', '.', 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'company', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:52:10', '2022-12-14 19:08:26'),
(2295, 'slider', 'slider', 'slider', NULL, 'Home', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slider', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:58:10', '2022-07-20 19:58:10'),
(2393, 'photo', 'photo', 'Photo Gallery', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo', NULL, '1', '0', NULL, NULL, NULL, '2022-08-09 18:21:54', '2022-08-09 18:21:54'),
(2394, 'video', 'video', 'Video Gallery', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'video', NULL, '1', '0', NULL, NULL, NULL, '2022-08-09 18:22:28', '2022-08-09 18:22:28'),
(2445, 'aboutus', 'aboutus', 'About Us', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<p>To begin with,we would like to introduce Equator International Pvt.Ltd asone of the prominent and well-known Manpower Recruiting Agency in Nepal. With honesty and reliablity as the key objectives, this organization,being a service based agency&nbsp;has constantly emphasized on quality services to ensure utmost satisfaction to both its clients as well as to the aspirants seeking overseas employment. That is not all,This organization has left no stone unturned to functionas a bridge between the employer and the employee to ensure smooth relationship between them thus avoiding any sort of misunderstandings.</p>\r\n\r\n<p>Maintain a smooth relationship with our clients and job seekers is what we belive in.Since we also beloive in understanding, sincerity and reliability we commit hasslein.Since we also belive in understanding,sincerity and reliability we commit hassle free service to our business partners and clients to puhold charming relationship. In this regard,we,the entire team of Equator International Pvt Ltd urge all concerned parties and clients to provide us an opportunity to establish a smooth business relationship to prove our commitment.</p>\r\n\r\n<p><strong>Our Objective&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>To Highly-skilled, Skilled, Semi-skilled as well as Non-skilled people abroad.</li>\r\n	<li>To find the right candidate according to the requirement of the employer company</li>\r\n	<li>To find right job abroad according to capability of jobseekers.</li>\r\n	<li>To support the national economy by incresing foreign remittance.</li>\r\n	<li>To extend good relationship with the recruiting company abroad by providing them manpower as per their recriutment</li>\r\n</ul>', NULL, 2259, NULL, NULL, NULL, '/uploads/banner_image/1670493188_IMG9.jpg', NULL, NULL, NULL, NULL, 'aboutus', NULL, '1', '0', NULL, NULL, NULL, '2022-08-10 07:57:31', '2022-12-14 17:16:31'),
(2471, 'jobs', 'jobs', 'Jobs', NULL, 'Main', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jobs', NULL, '1', '0', NULL, NULL, NULL, '2022-08-25 06:30:22', '2022-12-14 19:04:34'),
(2472, 'Engineering-and-Construction-Personnel', 'engineeringandconstructionpersonnel', 'Engineering and Construction Personnel', NULL, 'Main', 'Group', NULL, 1, 'Project Manager,Civil Engineer,Electric Engineer,Mechanical Engineer,Computer Engineer,Draft-Man,Others', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672308941_Untitled13-540x365.png', NULL, NULL, NULL, NULL, 'Engineering-and-Construction-Personnel', NULL, '1', '0', NULL, NULL, NULL, '2022-08-25 06:39:04', '2022-12-29 22:00:41'),
(2473, 'manager', 'manager', 'Manager', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1661490940_manager.jpg', NULL, NULL, NULL, NULL, 'manager', NULL, '1', '0', NULL, NULL, NULL, '2022-08-25 06:40:33', '2022-08-26 05:15:40'),
(2474, 'nurse', 'nurse', 'Nurse', NULL, 'Main', 'Job', NULL, 2, NULL, NULL, NULL, NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1661490968_nurse.webp', NULL, NULL, NULL, NULL, 'nurse', NULL, '1', '0', NULL, NULL, NULL, '2022-08-25 06:55:18', '2022-08-26 05:16:08'),
(2475, 'cook', 'cook', 'Cook', NULL, 'Main', 'Job', NULL, 3, NULL, NULL, NULL, NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1661490995_cook.webp', NULL, NULL, NULL, NULL, 'cook', NULL, '1', '0', NULL, NULL, NULL, '2022-08-25 06:56:23', '2022-08-26 05:16:35'),
(2476, 'driver', 'driver', 'Driver', NULL, 'Main', 'Job', NULL, 4, NULL, NULL, 'Top jobs (P) Ltd have been supplying human resources since 2006. In the numerous overseas manpower agency, Top Jobs P. Ltd is an ethical and reliable manpower recruitment company in Nepal with demonstrated history of serving as one of premier recruitment agency for the past 16 years.', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1661491015_drivers.jpg', NULL, NULL, NULL, NULL, 'driver', NULL, '1', '0', NULL, NULL, NULL, '2022-08-25 06:57:43', '2022-08-26 05:16:55'),
(2481, 'Sales-&-Service-Personnel', 'salesservicepersonnel', 'Sales & Service Personnel', NULL, 'Main', 'Group', NULL, 2, 'Manager,Sales Executive,Sales Supervisor,Accountant,Cashier,Sales Man,Ticketing and Reservation Staff, Store Keeper,Others', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309096_Jurnal_Blog_Perbedaan-Sales-dan-Marketing-yang-Perlu-Diketahui-Pengusaha.jpg-5.jpg', NULL, NULL, NULL, NULL, 'Sales-&-Service-Personnel', NULL, '1', '0', NULL, NULL, NULL, '2022-08-26 05:09:37', '2022-12-29 22:03:16'),
(2482, 'Hotel-&-Restaurant-Personnel', 'hotelrestaurantpersonnel', 'Hotel & Restaurant Personnel', NULL, 'Main', 'Group', NULL, 3, 'Chefs (Continental/Indian/Italian, English/Chinese), Comis, Cooks, Hospitality Managers, F&amp;B Managers, Assistants, Waiters / Waitress, Bartenders, Baristas, Room Service, Delivery Staffs, Cleaners etc.', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309123_pexels-photo-3217157.jpeg', NULL, NULL, NULL, NULL, 'Hotel-&-Restaurant-Personnel', NULL, '1', '0', NULL, NULL, NULL, '2022-08-26 05:10:28', '2022-12-29 22:03:43'),
(2484, 'driver1', 'driver1', 'Driver', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2481, NULL, NULL, NULL, '/uploads/banner_image/1661494722_job.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, '2022-08-26 06:18:42', '2022-08-26 06:18:42'),
(2486, 'Work-Shop-Technician', 'workshoptechnician', 'Work Shop Technician', NULL, 'Main', 'Group', NULL, 4, 'Hydraulic Mechanics, Diesel Mechanics, Petrol Mechanics, Arc Welders, Plant Technicians, Auto AC Technicians, Auto Electricians, Duct Technicians, Denters, Painters etc.', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309165_automotive-technician-iStock-1157319426.jpg', NULL, NULL, NULL, NULL, 'Work-Shop-Technician', NULL, '1', '0', NULL, NULL, NULL, '2022-08-29 06:58:35', '2022-12-29 22:04:25'),
(2488, 'gallery', 'gallery', 'Gallery', NULL, 'Main', 'Group', NULL, 21, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-08-29 08:12:59', '2022-08-29 08:12:59'),
(2489, 'photo-gallery', 'photogallery', 'Photo Gallery', NULL, 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 2488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo-gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-08-29 08:13:52', '2022-08-29 08:13:52'),
(2491, 'album-one', 'albumone', 'Events and Program', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2489, NULL, NULL, NULL, '/uploads/banner_image/1670823722_IMG4.jpg', NULL, NULL, NULL, NULL, 'album-one', NULL, '1', '0', NULL, NULL, NULL, '2022-08-29 08:21:42', '2022-12-12 05:42:02'),
(2510, 'xcxz', 'xcx', 'Dubai', NULL, 'Main', 'Destination', NULL, 1, NULL, NULL, NULL, NULL, 2509, NULL, NULL, NULL, '/uploads/banner_image/1666259227_dubai.jpg', NULL, NULL, NULL, NULL, 'xcx', NULL, '1', '0', NULL, NULL, NULL, '2022-10-11 07:44:26', '2022-10-20 20:32:07'),
(2515, 'Qatar', 'qatar', 'Qatar', NULL, 'Main', 'Destination', NULL, 2, NULL, NULL, NULL, NULL, 2509, NULL, NULL, NULL, '/uploads/banner_image/1666259248_qatar.jpg', NULL, NULL, NULL, NULL, 'Qatar', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 20:32:28', '2022-10-20 20:32:35'),
(2516, 'Malaysia', 'malaysia', 'Malaysia', NULL, 'Main', 'Destination', NULL, 3, NULL, NULL, NULL, NULL, 2509, NULL, NULL, NULL, '/uploads/banner_image/1666259273_mal.jpg', NULL, NULL, NULL, NULL, 'Malaysia', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 20:32:53', '2022-10-20 20:32:53'),
(2520, 'Kuwait', 'kuwait', 'Kuwait', NULL, 'Main', 'Destination', NULL, 4, NULL, NULL, NULL, NULL, 2509, NULL, NULL, NULL, '/uploads/banner_image/1666259622_kuwait-towers-520621_960_720.jpg', NULL, NULL, NULL, NULL, 'Kuwait', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 20:38:42', '2022-10-20 20:38:42'),
(2521, 'Kuwait1', 'kuwait1', 'UAE', NULL, 'Main', 'Destination', NULL, 5, NULL, NULL, NULL, NULL, 2509, NULL, NULL, NULL, '/uploads/banner_image/1666259682_1663907856_uae.jpg', NULL, NULL, NULL, NULL, 'Kuwait1', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 20:39:18', '2022-10-20 20:39:42'),
(2522, 'Bahrain', 'bahrain', 'Bahrain', NULL, 'Main', 'Destination', NULL, 6, NULL, NULL, NULL, NULL, 2509, NULL, NULL, NULL, '/uploads/banner_image/1666259724_1663908198_bahrain.jpg', NULL, NULL, NULL, NULL, 'Bahrain', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 20:40:24', '2022-10-20 20:40:24'),
(2527, 'Medical-&-Health-Personnels', 'medicalhealthpersonnels', 'Medical & Health Personnels', NULL, 'Main', 'Group', NULL, 6, 'Specialist Doctors, Nurses / HA, Therapist (Physical/Psychological), Opticians, Pathologists, Radiologists, Dentists, Pharmacists, Lab Technicians, Ophthalmic Assistants&nbsp;', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309216_Snowflake.image_.SC_.2.png', NULL, NULL, NULL, NULL, 'Medical-&-Health-Personnels', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:22:19', '2022-12-29 22:05:16'),
(2528, 'Receive Legal Documents', 'receive-legal-documents', 'Receive Legal Documents', NULL, 'Main', 'Recruitment', NULL, 2, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Receive Legal Documents', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:25:21', '2022-10-20 21:25:21'),
(2529, 'Pre-Approval from Ministry', 'preapproval-from-ministry', 'Pre-Approval from Ministry', NULL, 'Main', 'Recruitment', NULL, 3, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Approval from Ministry', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:25:59', '2022-10-20 21:25:59'),
(2530, 'Vacancy Announcement', 'vacancy-announcement', 'Vacancy Announcement', NULL, 'Main', 'Recruitment', NULL, 4, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacancy Announcement', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:26:11', '2022-10-20 21:26:11'),
(2531, 'Candidate Interview', 'candidate-interview', 'Candidate Interview', NULL, 'Main', 'Recruitment', NULL, 5, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Candidate Interview', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:26:26', '2022-10-20 21:26:26'),
(2532, 'Pre Medical Checkup', 'pre-medical-checkup', 'Pre Medical Checkup', NULL, 'Main', 'Recruitment', NULL, 6, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre Medical Checkup', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:26:37', '2022-10-20 21:26:37'),
(2533, 'Visa Processing', 'visa-processing', 'Visa Processing', NULL, 'Main', 'Recruitment', NULL, 7, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Visa Processing', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:26:47', '2022-10-20 21:26:47'),
(2534, 'Orientation & Approval', 'orientation-approval', 'Orientation & Approval', NULL, 'Main', 'Recruitment', NULL, 8, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Orientation & Approval', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:26:59', '2022-10-20 21:26:59'),
(2535, 'Pre-Departure Orientation', 'predeparture-orientation', 'Pre-Departure Orientation', NULL, 'Main', 'Recruitment', NULL, 9, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Departure Orientation', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:27:09', '2022-10-20 21:27:09'),
(2536, 'Deployment / Travel', 'deployment-travel', 'Deployment / Travel', NULL, 'Main', 'Recruitment', NULL, 10, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deployment / Travel', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:27:19', '2022-10-20 21:27:19'),
(2537, 'Arrival at Company', 'arrival-at-company', 'Arrival at Company', NULL, 'Main', 'Recruitment', NULL, 11, NULL, NULL, NULL, NULL, 2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arrival at Company', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:27:30', '2022-10-20 21:27:30'),
(2540, 'about-nepal', 'aboutnepal', 'About Nepal', NULL, 'Main', 'Normal', NULL, 6, 'About Nepal', NULL, 'Nepal, officially the Federal Democratic Republic of Nepal is a landlocked sovereign state&nbsp;&nbsp;located in South Asia. Nepal is situated within latitude 26° 22\' N to 30°27\' N and longitude&nbsp;80°4E to 88°12\' E. with an area of 147,181 square kilometers (56,827 sq mi). Its Shape is&nbsp;roughly rectangular about 885km long East to West and about 200km wide North to South and&nbsp;occupies 0.3 and 0.3% of land area of Asia and the world respectively. Population of Nepal is&nbsp;approximately 27 million (and nearly 2 million&nbsp; absentee workers living abroad); Nepal is the&nbsp;world\'s 93rd largest country by land mass and the 41st most populous Country.&nbsp;It is located in the Himalayas and bordered to the north by the People\'s Republic of China, and to&nbsp;the south, east, and west by the Republic of India. Specifically, the Indian states of Uttarakhand,&nbsp;Uttar Pradesh, Bihar, West Bengal, and Sikkim border Nepal, while across the Himalayas lies the&nbsp;Tibetan Autonomous Region. Nepal is separated from Bangladesh by the narrow Indian Siliguri<br role=\"presentation\" />\r\ncorridor. Kathmandu is the nation\'s capital and largest metropolis.The mountainous north of Nepal has eight of the world\'s ten tallest mountains, including the<br role=\"presentation\" />\r\nhighest point on Earth, Mount Everest, called Sagarmatha in Nepali. It contains more than 240peaks over 20,000 ft (6,096 m) above sea level. The southern Terai region is fertile and humid.&nbsp;Lumbini, the birthplace of Lord Gautam Buddha, is located in this region. Lumbini is one of the&nbsp;holiest places of one of the world\'s great religions, and its remains contain important evidence&nbsp;about the nature of Buddhist pilgrimage centres from as early as the 3rd century BC.&nbsp;Hinduism is practiced by about 81.3% of Nepalis, making it the country with the highest&nbsp;percentage of Hindus. Buddhism is linked historically with Nepal and is practiced by 16%, Kirat&nbsp;5.1%, lsam by 4.4%, Christianity 1.4%, and animism 0.4%. A large section of the population,&nbsp;especially in hill region, even though they follow Hindu customs, may identify themselves as<br role=\"presentation\" />\r\nboth Hindu as well as Buddhists which can be attributed to syncretic nature of Hinduism and&nbsp;Buddhism in Nepal. In 2013, Nepal ranked the 157th place on the Human Development Index&nbsp;HDI) and is one of the least developed nations in the entire world.', NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'about-nepal', NULL, '1', '0', NULL, NULL, NULL, '2022-10-20 21:37:39', '2022-12-29 20:33:39'),
(2542, 'MESSAGE FROM MD', 'message-from-md', 'MESSAGE FROM MD', NULL, 'Home', 'Group', NULL, 21, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MESSAGE FROM MD', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 06:40:26', '2022-12-08 06:42:18'),
(2543, 'message', 'message', 'MESSAGE FROM MD', NULL, 'Home', 'Normal', NULL, 1, '<p>Established to serve, this organization has played a vital role in supplying hard working, sincere and honest manpower to various companies abroad. As a Managing Director of this organization, I assure all concerned, including my business partners, that I will fully utilize my years of experience in this sector to ensure smooth relationship and better service.<br />\r\nHere at this point, I would also wish to offer my cordial greetings to all our esteemed clients abroad as well as in Nepal.<br />\r\nSupplying manpower from one country to another is a service in itself where everybody becomes a winner. An ideal blend of commitment, honesty and hard work leads to a win situation and this, I feel, is success.<br />\r\nLastly, I once again express my gratitude and appreciation to all my partner and clients for their cooperation.<br />\r\nThanks,<br />\r\n<strong>Harish Kunwar</strong><br />\r\nManaging Director</p>', NULL, NULL, NULL, 2542, NULL, NULL, NULL, '/uploads/banner_image/1670481922_IMG3.jpg', NULL, NULL, NULL, NULL, 'message', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 06:43:14', '2022-12-13 20:53:23'),
(2544, 'process', 'process', 'RECRUITMENT PROCESS', NULL, 'Home', 'Group', NULL, 22, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'process', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 06:45:57', '2022-12-08 06:46:41'),
(2547, 'Enquiry from Employer', 'enquiry-from-employer', '1', NULL, 'Home', 'Normal', NULL, 1, '<h5>Enquiry from Employer</h5>', NULL, NULL, NULL, 2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enquiry from Employer', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 06:56:52', '2022-12-08 06:56:52'),
(2548, 'Pre-screening and selection the candidate', 'prescreening-and-selection-the-candidate', '2', NULL, 'Home', 'Normal', NULL, 2, '<h5>Pre-screening and selection the candidate</h5>', NULL, NULL, NULL, 2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-screening and selection the candidate', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 06:57:19', '2022-12-08 06:57:19'),
(2549, 'Final Interview (by employer)', 'final-interview-by-employer', '3', NULL, 'Home', 'Normal', NULL, 3, '<h5>Final Interview (by employer)</h5>', NULL, NULL, NULL, 2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Final Interview (by employer)', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 07:18:18', '2022-12-08 07:18:18'),
(2550, 'legal-document.', 'legaldocument', 'Legal Documents', NULL, 'Main', 'Group', NULL, 7, NULL, NULL, NULL, NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'legal-document.', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 10:03:44', '2022-12-08 10:04:31'),
(2551, 'LEGAL DOCUMENTS-1', 'legal-documents1', 'LEGAL DOCUMENTS', NULL, 'Main', 'Legal Document', NULL, 1, NULL, NULL, NULL, NULL, 2550, NULL, NULL, NULL, '/uploads/banner_image/1670493840_docu1.jpg', NULL, NULL, NULL, NULL, 'LEGAL DOCUMENTS-1', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 10:04:00', '2022-12-08 10:10:18'),
(2552, 'LEGAL DOCUMENTS2', 'legal-documents2', 'LEGAL DOCUMENTS', NULL, 'Main', 'Legal Document', NULL, 2, NULL, NULL, NULL, NULL, 2550, NULL, NULL, NULL, '/uploads/banner_image/1670493852_docu2.jpg', NULL, NULL, NULL, NULL, 'LEGAL DOCUMENTS2', NULL, '1', '0', NULL, NULL, NULL, '2022-12-08 10:04:12', '2022-12-08 10:10:23'),
(2553, 'documentation', 'documentation', 'Documentation', NULL, 'Main', 'Normal', NULL, 4, NULL, NULL, '<div class=\"documentation\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n <h1 class=\"text-left\">From Malaysia</h1>\r\n<div class=\"docu\">\r\n<ul>\r\n	<li>Demand Letter</li>\r\n	<li>Power of Attorney</li>\r\n	<li>Agency Agreement</li>\r\n	<li>Letter written by company to Malaysian Embassy in Nepal</li>\r\n	<li>Employment Contract</li>\r\n	<li>A?davit</li>\r\n	<li>KDN Approval (From Ministry of Labor</li>\r\n	<li>Translation Letter (From Ministry of Labor or Ministry of Home)</li>\r\n	<li>Notary Public or Attestation of Nepal Embassy KL</li>\r\n	<li>Pro?le of Company.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<h1 class=\"text-left\">From Saudi Arabia</h1>\r\n\r\n<ul>\r\n	<li>Demand Letter</li>\r\n	<li>Power of Attorney</li>\r\n	<li>Agency Agreement</li>\r\n	<li>Guarantee later</li>\r\n	<li>Employment Contract</li>\r\n	<li>Visa slip</li>\r\n	<li>Consulate Authorization</li>\r\n	<li>Commercial Registration</li>\r\n	<li>COC/MOFA/Nepal - Ambassy (in some case)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<h1 class=\"text-left\">From Qatar. Kuwait, Bahrain, Oman, Lebanon and UAE</h1>\r\n\r\n<ul>\r\n	<li>Demand Letter</li>\r\n	<li>Power of Attorney</li>\r\n	<li>Agency Agreement</li>\r\n	<li>Guarantee Letter</li>\r\n	<li>Employment Contract</li>\r\n	<li>Chamber of Commerce / Nepal Embassy (in some case)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'documentation', NULL, '1', '0', NULL, NULL, NULL, '2022-12-12 04:35:11', '2022-12-13 21:39:35'),
(2555, 'slider1', 'slider1', 'slider1', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1672295788_Slider_3_new_small-1600x600.jpg', NULL, NULL, NULL, NULL, 'slider1', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 19:55:08', '2022-12-29 18:21:28'),
(2556, 'slider2', 'slider2', 'slider2', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1672295845_HD-wallpaper-dubai-marina-2022-city-travel.jpg', NULL, NULL, NULL, NULL, 'slider2', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 19:56:27', '2022-12-29 18:22:25'),
(2557, 'slider3', 'slider3', 'slider3', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1672301950_slide-5.jpg', NULL, NULL, NULL, NULL, 'slider3', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 19:57:02', '2022-12-29 20:04:10'),
(2558, 'slider4', 'slider4', 'slider4', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1672301966_slide-6.jpg', NULL, NULL, NULL, NULL, 'slider4', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 19:59:12', '2022-12-29 20:04:26'),
(2559, 'slider5', 'slider5', 'slider5', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1672301935_slide-3.jpg', NULL, NULL, NULL, NULL, 'slider5', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 20:00:02', '2022-12-29 20:03:55'),
(2560, 'slider6', 'slider6', 'slider6', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1672302000_slide-4.jpg', NULL, NULL, NULL, NULL, 'slider6', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 20:00:48', '2022-12-29 20:05:00'),
(2562, 'Medical', 'medical', '4', NULL, 'Home', 'Normal', NULL, 4, '<h5>Medical</h5>', NULL, NULL, NULL, 2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Medical', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 20:24:24', '2022-12-13 20:25:48'),
(2563, 'Employment Visa and Orientations', 'employment-visa-and-orientations', '5', NULL, 'Home', 'Normal', NULL, 5, '<h5>Employment Visa and Orientations</h5>', NULL, NULL, NULL, 2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employment Visa and Orientations', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 20:25:02', '2022-12-13 20:25:57'),
(2564, 'Travel arrangement', 'travel-arrangement', '6', NULL, 'Home', 'Normal', NULL, 6, '<h5>Travel arrangement</h5>', NULL, NULL, NULL, 2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Travel arrangement', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 20:26:27', '2022-12-13 20:26:34'),
(2565, 'Deployment', 'deployment', '7', NULL, 'Home', 'Normal', NULL, 7, '<h5>Deployment</h5>', NULL, NULL, NULL, 2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deployment', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 20:26:56', '2022-12-13 20:26:56'),
(2566, 'Garment-Tailoring-and-laundry-Personnels', 'garmenttailoringandlaundrypersonnels', 'Garment / Tailoring and laundry Personnels', NULL, 'Main', 'Group', NULL, 7, 'Fashion Designers, Master Tailors, General Tailors, Washers, Iron Mans etc.', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309277_woman-tailor-working-sewing-factory_1303-15841.webp', NULL, NULL, NULL, NULL, 'Garment-Tailoring-and-laundry-Personnels', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 20:43:59', '2022-12-29 22:06:17'),
(2567, 'Accountant', 'accountant', 'Accountant', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2566, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accountant', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 21:00:48', '2022-12-13 21:00:48'),
(2568, 'DEMAND LETTERS', 'demand-letters', 'DEMAND LETTERS', NULL, 'Main', 'Group', NULL, 8, NULL, NULL, NULL, NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DEMAND LETTERS', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 17:41:20', '2022-12-14 17:41:20'),
(2569, 'Recruitment Process', 'recruitment-process', 'Recruitment Process', NULL, 'Main', 'Normal', NULL, 9, NULL, NULL, '<ul>\r\n	<li>Enquiry from Employer</li>\r\n	<li>Pre-screening and selection the candidate</li>\r\n	<li>Final Interview (by employer)</li>\r\n	<li>Medical</li>\r\n	<li>Employment Visa and Orientations</li>\r\n	<li>Travel arrangement</li>\r\n	<li>Deployment</li>\r\n</ul>', NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Recruitment Process', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 17:42:24', '2022-12-14 17:44:20'),
(2570, 'organization-chart', 'organizationchart', 'ORGANIZATION CHART', NULL, 'Main', 'Chart', NULL, 10, NULL, NULL, NULL, NULL, 2259, NULL, NULL, NULL, '/uploads/banner_image/1671002522_jpg (1)(1).jpg', NULL, NULL, NULL, NULL, 'organization-chart', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 17:45:49', '2022-12-14 19:10:33'),
(2572, 'IT personnels', 'it-personnels', 'IT personnels', NULL, 'Main', 'Group', NULL, 8, 'IT Managers, IT Engineers, Programmers, Data Base Administrators, Web Application Developer, Application Developers (Android &amp; iOS), Hardware &amp; Software Technicial, Web &amp; Graphic Designers, Visual Graphic Designers, Animators, Data Entry operators etc.', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309317_SupportServices_ITPersonnel-1.jpg', NULL, NULL, NULL, NULL, 'IT personnels', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:03:30', '2022-12-29 22:06:57'),
(2573, 'Security Personnels', 'security-personnels', 'Security Personnels', NULL, 'Main', 'Group', NULL, 9, 'Security Incharge, Security Officers, Security Supervisors, Security Guards, Watch Mans &amp; Door Mans etc.', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309354_3-s2.0-B9780323852661000013-f06-04-9780323852661.jpg', NULL, NULL, NULL, NULL, 'Security Personnels', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:04:16', '2022-12-29 22:07:34'),
(2574, 'Office Staff', 'office-staff', 'Office Staff', NULL, 'Main', 'Group', NULL, 10, 'Charter Accountant,Accountant,Assistant Accountant,Office Clerk,Computer Operator,Office Boy, Receptionist,Storekeeper,Others', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309400_107032274-1647540069295-gettyimages-1084167640-2018_10_13-n1_office_0312.jpeg', NULL, NULL, NULL, NULL, 'Office Staff', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:04:56', '2022-12-29 22:08:20'),
(2575, 'Cleaning Section', 'cleaning-section', 'Cleaning Section', NULL, 'Main', 'Group', NULL, 11, 'Cleaning Supervisor,Cleaner,Others', NULL, NULL, NULL, 2471, NULL, NULL, NULL, '/uploads/banner_image/1672309447_cleaners-section-one-1024x683.jpeg', NULL, NULL, NULL, NULL, 'Cleaning Section', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:05:59', '2022-12-29 22:09:07'),
(2576, 'Cook1', 'cook1', 'Cook', NULL, 'Main', 'Job', NULL, 2, NULL, NULL, NULL, NULL, 2481, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cook1', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:08:33', '2022-12-14 20:08:33'),
(2577, 'Cook2', 'cook2', 'Cook2', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2482, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cook2', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:09:55', '2022-12-14 20:09:55'),
(2578, 'Accountant1', 'accountant1', 'Accountant1', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accountant1', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:11:49', '2022-12-14 20:11:49'),
(2579, 'Nurse33', 'nurse33', 'Nurse33', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nurse33', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:13:04', '2022-12-14 20:13:04'),
(2580, 'Accountant34', 'accountant34', 'Accountant', NULL, 'Main', 'Job', NULL, 2, NULL, NULL, NULL, NULL, 2566, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accountant34', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:21:50', '2022-12-14 20:21:50'),
(2581, 'Accountant35', 'accountant35', 'Accountant', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2572, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accountant35', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:23:13', '2022-12-14 20:23:13'),
(2582, 'Accountant36', 'accountant36', 'Accountant', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2573, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accountant36', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:24:18', '2022-12-14 20:24:18'),
(2583, 'Accountant37', 'accountant37', 'Accountant', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2574, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accountant37', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:25:03', '2022-12-14 20:25:03'),
(2584, 'Accountant40', 'accountant40', 'Accountant', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2575, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accountant40', NULL, '1', '0', NULL, NULL, NULL, '2022-12-14 20:25:51', '2022-12-14 20:25:51'),
(2585, 'video-gallery', 'videogallery', 'Video Gallery', NULL, 'Main', 'Video Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'video-gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-12-15 18:45:45', '2022-12-15 18:45:45'),
(2586, 'slider8', 'slider8', 'slider8', NULL, 'Home', 'Normal', NULL, 8, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1672302137_Mountain-nepal-wallpapers.jpg', NULL, NULL, NULL, NULL, 'slider8', NULL, '1', '0', NULL, NULL, NULL, '2022-12-29 20:07:17', '2022-12-29 20:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `sort`, `navigation_id`, `name`, `name_nepali`, `file`, `content`, `content_nepali`, `link`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(19, 1, 2322, NULL, NULL, '1658466642_thumb_fodefeen1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:42', '2022-07-22 15:58:47'),
(20, 1, 2322, NULL, NULL, '1658466658_thumb_22.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:58', '2022-07-22 15:58:47'),
(21, 1, 2322, NULL, NULL, '1658466669_thumb_20.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:09', '2022-07-22 15:58:47'),
(22, 1, 2322, NULL, NULL, '1658466678_thumb_19.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:18', '2022-07-22 15:58:47'),
(23, 1, 2322, NULL, NULL, '1658466688_thumb_17.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:28', '2022-07-22 15:58:47'),
(24, 1, 2322, NULL, NULL, '1658466697_thumb_16.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:37', '2022-07-22 15:58:47'),
(26, 1, 2402, 'Chairman with Former Prime Minister K.P. Sharma Oli', NULL, '1660033174_With Former PM K.P. Oli (2).jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:04:34', '2022-08-21 21:23:48'),
(27, 1, 2402, 'Chairman with Former Prime Minister K.P. Sharma Oli', NULL, '1660033201_With Former PM K.P. Oli.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:05:01', '2022-08-21 21:24:02'),
(28, 1, 2402, 'Chairman with Former Prime Minister Madhav K. Nepal', NULL, '1660033230_With Former PM Madhav Kr. Nepal.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:05:30', '2022-08-21 21:24:24'),
(29, 2, 2402, 'Chairman with Former Prime Minister Pushpa K. Dahal (Prachanda)', NULL, '1660033230_With Former PM Prachnda.png', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:05:30', '2022-08-21 21:24:34'),
(30, 1, 2403, NULL, NULL, '1660033604_20160914_165505.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:11:44', '2022-08-22 21:26:27'),
(31, 2, 2403, NULL, NULL, '1660033604_20161116_171806.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:11:44', '2022-08-09 19:11:44'),
(32, 4, 2403, NULL, NULL, '1660033604_20170113_163604.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:11:44', '2022-08-09 19:11:44'),
(34, 1, 2403, NULL, NULL, '1660033736_20170113_093846.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:13:56', '2022-08-09 19:13:56'),
(36, 3, 2403, NULL, NULL, '1660033736_20170714_172426.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:13:56', '2022-08-09 19:13:56'),
(37, 4, 2403, NULL, NULL, '1660033736_20170728_145538.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:13:56', '2022-08-09 19:13:56'),
(38, 5, 2403, NULL, NULL, '1660033736_20170823_140602.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:13:56', '2022-08-09 19:13:56'),
(39, 1, 2403, NULL, NULL, '1660033780_20170823_140602.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:14:40', '2022-08-09 19:14:40'),
(40, 1, 2403, NULL, NULL, '1660033874_20170902_110548.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:16:14', '2022-08-09 19:16:14'),
(41, 2, 2403, NULL, NULL, '1660033874_20170923_185010.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:16:14', '2022-08-09 19:16:14'),
(42, 3, 2403, NULL, NULL, '1660033874_20170923_185030.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:16:14', '2022-08-09 19:16:14'),
(43, 4, 2403, NULL, NULL, '1660033874_20170923_191224.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:16:14', '2022-08-09 19:16:14'),
(44, 5, 2403, NULL, NULL, '1660033874_20171215_151600.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-09 19:16:14', '2022-08-09 19:16:14'),
(50, 1, 2401, 'video for demo', NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/ue9JzTCFjy8', NULL, NULL, '2022-08-16 17:49:05', '2022-08-16 19:08:42'),
(51, 1, 2401, 'video for demo', NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/APtR6S2q_e4', NULL, NULL, '2022-08-16 19:08:21', '2022-08-16 19:08:21'),
(52, 1, 2401, 'video for demo', NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/zxdZQ7MDLbY', NULL, NULL, '2022-08-16 19:11:29', '2022-08-16 19:11:29'),
(53, 1, 2402, 'Chairman with Former Deputy Prime Minister Ishwor Pokhrel', NULL, '1661078561_Ishwar pokhrel.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-21 21:27:41', '2022-08-21 21:27:41'),
(54, 1, 2455, 'cv', NULL, '1661151745_manpoweragency.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-08-22 17:47:25', '2022-08-22 17:47:25'),
(55, 1, 2364, 'ccvb', NULL, '1661151845_security.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-08-22 17:49:05', '2022-08-22 17:49:05'),
(56, 1, 2459, 'Certificate Of Participation', NULL, '1661153583_4.gif', NULL, NULL, NULL, NULL, NULL, '2022-08-22 17:50:25', '2022-08-22 18:18:03'),
(57, 1, 2459, 'Concern Letter', NULL, '1661153647_5.gif', NULL, NULL, NULL, NULL, NULL, '2022-08-22 18:19:07', '2022-08-22 18:19:07'),
(58, 1, 2459, 'Licence', NULL, '1661153703_License_page-0001.gif', NULL, NULL, NULL, NULL, NULL, '2022-08-22 18:20:03', '2022-08-22 18:20:03'),
(59, 1, 2459, 'Certificate Of Training', NULL, '1661153763_8.gif', NULL, NULL, NULL, NULL, NULL, '2022-08-22 18:21:03', '2022-08-22 18:21:03'),
(60, 1, 2492, 'Job', NULL, '1661764981_job3.jpg', 'Program', NULL, NULL, NULL, NULL, '2022-08-29 09:22:54', '2022-08-29 09:23:43'),
(61, 1, 2490, 'Demo', NULL, NULL, NULL, NULL, 'https://youtu.be/QeFHL53NhLs', NULL, NULL, '2022-08-29 09:29:04', '2022-08-29 09:29:27'),
(62, 1, 2492, 'Demo', NULL, '1661765467_slider4.webp', 'Demo', NULL, NULL, NULL, NULL, '2022-08-29 09:31:07', '2022-08-29 09:31:07'),
(63, 1, 2492, NULL, NULL, '1661765511_job.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-08-29 09:31:51', '2022-08-29 09:31:51'),
(64, 1, 2492, NULL, NULL, '1661765520_manager.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-29 09:32:00', '2022-08-29 09:32:00'),
(65, 1, 2490, 'Demo', NULL, NULL, NULL, NULL, 'https://youtu.be/QeFHL53NhLs', NULL, NULL, '2022-08-29 09:37:14', '2022-08-29 09:37:14'),
(72, 1, 2491, NULL, NULL, '1670823024_IMG1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-12 05:30:24', '2022-12-12 05:42:02'),
(73, 2, 2491, NULL, NULL, '1670823024_IMG4.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-12 05:30:24', '2022-12-12 05:42:02'),
(74, 3, 2491, NULL, NULL, '1670823024_IMG8.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-12 05:30:24', '2022-12-12 05:42:02'),
(75, 1, 2554, NULL, NULL, '1670828116_engr.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-12 06:55:16', '2022-12-12 06:55:16'),
(76, 1, 2585, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MfDADvsGNLw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, '2022-12-15 18:45:56', '2022-12-15 18:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_video_items`
--

CREATE TABLE `navigation_video_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `sort` int(10) UNSIGNED NOT NULL,
  `page_type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`sort`, `page_type_title`, `created_at`, `updated_at`) VALUES
(1, 'Job', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(2, 'Group', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(3, 'Photo Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(9, 'Notice', NULL, NULL),
(11, 'Normal', NULL, NULL),
(12, 'Video Gallery', NULL, NULL),
(14, 'Legal Document', NULL, NULL),
(15, 'Demand Letter', NULL, NULL),
(17, 'Documentation', NULL, NULL),
(18, 'Chart', NULL, NULL);

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
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`sort`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2588;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
