-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 01:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms3`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(100) DEFAULT NULL,
  `code` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `balance` double(16,2) NOT NULL DEFAULT 0.00,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = no, 1 = yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `ac_name`, `ac_number`, `code`, `branch`, `balance`, `status_id`, `is_default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Account 1', 'John Doe', '123456789', '123456789', 'California', 0.00, 1, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_installed` tinyint(1) NOT NULL DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `version` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `author_url` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_home_sections`
--

CREATE TABLE `app_home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `snake_title` varchar(100) DEFAULT NULL,
  `color` varchar(100) NOT NULL DEFAULT '#ffffff',
  `order` int(11) NOT NULL DEFAULT 1,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `type` varchar(20) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_home_sections`
--

INSERT INTO `app_home_sections` (`id`, `title`, `snake_title`, `color`, `order`, `status_id`, `type`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 'slider', '#ffffff', 1, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(2, 'General Description', 'general_description', '#ffffff', 9, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(3, 'Services', 'services', '#ffffff', 10, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(4, 'Statistics', 'statistics', '#ffffff', 11, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(5, 'Experts', 'experts', '#ffffff', 12, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(6, 'Categories', 'Categories', '#ffffff', 2, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(7, 'Featured Courses', 'featured_courses', '#ffffff', 3, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(8, 'Latest Courses', 'latest_courses', '#ffffff', 4, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(9, 'Best Rated Course', 'best_rated_courses', '#ffffff', 5, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(10, 'Best Selling Course', 'best_selling_courses', '#ffffff', 6, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(11, 'Free Courses', 'free_courses', '#ffffff', 7, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(12, 'Discounted Courses', 'discount_courses', '#ffffff', 8, 1, 'api', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(13, 'Slider', 'slider', '#ffffff', 1, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(14, 'General Description', 'general_description', '#ffffff', 13, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(15, 'Services', 'services', '#ffffff', 14, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(16, 'Statistics', 'statistics', '#ffffff', 15, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(17, 'Experts', 'experts', '#ffffff', 16, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(18, 'Popular Category', 'popular_category', '#fbfaf7', 2, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(19, 'Featured Courses', 'featured_courses', '#ffffff', 3, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(20, 'Latest Courses', 'latest_courses', '#fbfaf7', 4, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(21, 'Best Rated Course', 'best_rated_courses', '#ffffff', 5, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(22, 'Most Popular Course', 'most_popular_courses', '#fbfaf7', 6, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(23, 'Discounted Courses', 'discount_courses', '#ffffff', 7, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(24, 'Events', 'event', '#ffffff', 8, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(25, 'Become An Instructor', 'become_an_instructor', '#fbfaf7', 9, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(26, 'Testimonials', 'testimonials', '#ffffff', 10, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(27, 'Our Recent Blogs', 'blogs', '#fbfaf7', 11, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(28, 'Trusted By Thousands', 'brands', '#ffffff', 12, 1, 'web', 0, '2023-12-30 14:49:12', '2023-12-30 14:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `assignment_file` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` double(8,2) NOT NULL DEFAULT 0.00,
  `pass_marks` double(8,2) NOT NULL DEFAULT 0.00,
  `deadline` timestamp NULL DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 21,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `is_notify` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `point` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submits`
--

CREATE TABLE `assignment_submits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` double(8,2) NOT NULL DEFAULT 0.00,
  `total_marks` double(8,2) NOT NULL DEFAULT 0.00,
  `point` double(8,2) NOT NULL DEFAULT 0.00,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `details` longtext DEFAULT NULL,
  `assignment_file` bigint(20) UNSIGNED DEFAULT NULL,
  `is_reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `is_submitted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `blog_categories_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_title` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_generates`
--

CREATE TABLE `certificate_generates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enroll_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` timestamp NOT NULL DEFAULT '2023-12-30 14:49:00',
  `certificate_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

CREATE TABLE `certificate_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `text` text DEFAULT NULL,
  `is_rtl` tinyint(4) NOT NULL DEFAULT 0,
  `default_id` bigint(20) UNSIGNED NOT NULL DEFAULT 10,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `font_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_templates`
--

INSERT INTO `certificate_templates` (`id`, `title`, `image_id`, `text`, `is_rtl`, `default_id`, `status_id`, `font_id`, `created_at`, `updated_at`) VALUES
(1, 'Certificate of Completion', NULL, 'This is to certify that [name] has successfully completed the course [course] on [date].', 0, 11, 1, NULL, '2023-12-30 14:49:12', '2023-12-30 14:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(6) DEFAULT NULL,
  `code` char(3) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `phone`, `code`, `name`, `symbol`, `currency`, `created_at`, `updated_at`) VALUES
(1, '93', 'AF', 'Afghanistan', '؋', 'AFN', NULL, NULL),
(2, '358', 'AX', 'Aland Islands', '€', 'EUR', NULL, NULL),
(3, '355', 'AL', 'Albania', 'Lek', 'ALL', NULL, NULL),
(4, '213', 'DZ', 'Algeria', 'دج', 'DZD', NULL, NULL),
(5, '1684', 'AS', 'American Samoa', '$', 'USD', NULL, NULL),
(6, '376', 'AD', 'Andorra', '€', 'EUR', NULL, NULL),
(7, '244', 'AO', 'Angola', 'Kz', 'AOA', NULL, NULL),
(8, '1264', 'AI', 'Anguilla', '$', 'XCD', NULL, NULL),
(9, '672', 'AQ', 'Antarctica', '$', 'AAD', NULL, NULL),
(10, '1268', 'AG', 'Antigua and Barbuda', '$', 'XCD', NULL, NULL),
(11, '54', 'AR', 'Argentina', '$', 'ARS', NULL, NULL),
(12, '374', 'AM', 'Armenia', '֏', 'AMD', NULL, NULL),
(13, '297', 'AW', 'Aruba', 'ƒ', 'AWG', NULL, NULL),
(14, '61', 'AU', 'Australia', '$', 'AUD', NULL, NULL),
(15, '43', 'AT', 'Austria', '€', 'EUR', NULL, NULL),
(16, '994', 'AZ', 'Azerbaijan', 'm', 'AZN', NULL, NULL),
(17, '1242', 'BS', 'Bahamas', 'B$', 'BSD', NULL, NULL),
(18, '973', 'BH', 'Bahrain', '.د.ب', 'BHD', NULL, NULL),
(19, '880', 'BD', 'Bangladesh', '৳', 'BDT', NULL, NULL),
(20, '1246', 'BB', 'Barbados', 'Bds$', 'BBD', NULL, NULL),
(21, '375', 'BY', 'Belarus', 'Br', 'BYN', NULL, NULL),
(22, '32', 'BE', 'Belgium', '€', 'EUR', NULL, NULL),
(23, '501', 'BZ', 'Belize', '$', 'BZD', NULL, NULL),
(24, '229', 'BJ', 'Benin', 'CFA', 'XOF', NULL, NULL),
(25, '1441', 'BM', 'Bermuda', '$', 'BMD', NULL, NULL),
(26, '975', 'BT', 'Bhutan', 'Nu.', 'BTN', NULL, NULL),
(27, '591', 'BO', 'Bolivia', 'Bs.', 'BOB', NULL, NULL),
(28, '599', 'BQ', 'Bonaire, Sint Eustatius and Saba', '$', 'USD', NULL, NULL),
(29, '387', 'BA', 'Bosnia and Herzegovina', 'KM', 'BAM', NULL, NULL),
(30, '267', 'BW', 'Botswana', 'P', 'BWP', NULL, NULL),
(31, '55', 'BV', 'Bouvet Island', 'kr', 'NOK', NULL, NULL),
(32, '55', 'BR', 'Brazil', 'R$', 'BRL', NULL, NULL),
(33, '246', 'IO', 'British Indian Ocean Territory', '$', 'USD', NULL, NULL),
(34, '673', 'BN', 'Brunei Darussalam', 'B$', 'BND', NULL, NULL),
(35, '359', 'BG', 'Bulgaria', 'Лв.', 'BGN', NULL, NULL),
(36, '226', 'BF', 'Burkina Faso', 'CFA', 'XOF', NULL, NULL),
(37, '257', 'BI', 'Burundi', 'FBu', 'BIF', NULL, NULL),
(38, '855', 'KH', 'Cambodia', 'KHR', 'KHR', NULL, NULL),
(39, '237', 'CM', 'Cameroon', 'FCFA', 'XAF', NULL, NULL),
(40, '1', 'CA', 'Canada', '$', 'CAD', NULL, NULL),
(41, '238', 'CV', 'Cape Verde', '$', 'CVE', NULL, NULL),
(42, '1345', 'KY', 'Cayman Islands', '$', 'KYD', NULL, NULL),
(43, '236', 'CF', 'Central African Republic', 'FCFA', 'XAF', NULL, NULL),
(44, '235', 'TD', 'Chad', 'FCFA', 'XAF', NULL, NULL),
(45, '56', 'CL', 'Chile', '$', 'CLP', NULL, NULL),
(46, '86', 'CN', 'China', '¥', 'CNY', NULL, NULL),
(47, '61', 'CX', 'Christmas Island', '$', 'AUD', NULL, NULL),
(48, '672', 'CC', 'Cocos (Keeling) Islands', '$', 'AUD', NULL, NULL),
(49, '57', 'CO', 'Colombia', '$', 'COP', NULL, NULL),
(50, '269', 'KM', 'Comoros', 'CF', 'KMF', NULL, NULL),
(51, '242', 'CG', 'Congo', 'FC', 'XAF', NULL, NULL),
(52, '242', 'CD', 'Congo, Democratic Republic of the Congo', 'FC', 'CDF', NULL, NULL),
(53, '682', 'CK', 'Cook Islands', '$', 'NZD', NULL, NULL),
(54, '506', 'CR', 'Costa Rica', '₡', 'CRC', NULL, NULL),
(55, '225', 'CI', 'Cote D\'Ivoire', 'CFA', 'XOF', NULL, NULL),
(56, '385', 'HR', 'Croatia', 'kn', 'HRK', NULL, NULL),
(57, '53', 'CU', 'Cuba', '$', 'CUP', NULL, NULL),
(58, '599', 'CW', 'Curacao', 'ƒ', 'ANG', NULL, NULL),
(59, '357', 'CY', 'Cyprus', '€', 'EUR', NULL, NULL),
(60, '420', 'CZ', 'Czech Republic', 'Kč', 'CZK', NULL, NULL),
(61, '45', 'DK', 'Denmark', 'Kr.', 'DKK', NULL, NULL),
(62, '253', 'DJ', 'Djibouti', 'Fdj', 'DJF', NULL, NULL),
(63, '1767', 'DM', 'Dominica', '$', 'XCD', NULL, NULL),
(64, '1809', 'DO', 'Dominican Republic', '$', 'DOP', NULL, NULL),
(65, '593', 'EC', 'Ecuador', '$', 'USD', NULL, NULL),
(66, '20', 'EG', 'Egypt', 'ج.م', 'EGP', NULL, NULL),
(67, '503', 'SV', 'El Salvador', '$', 'USD', NULL, NULL),
(68, '240', 'GQ', 'Equatorial Guinea', 'FCFA', 'XAF', NULL, NULL),
(69, '291', 'ER', 'Eritrea', 'Nfk', 'ERN', NULL, NULL),
(70, '372', 'EE', 'Estonia', '€', 'EUR', NULL, NULL),
(71, '251', 'ET', 'Ethiopia', 'Nkf', 'ETB', NULL, NULL),
(72, '500', 'FK', 'Falkland Islands (Malvinas)', '£', 'FKP', NULL, NULL),
(73, '298', 'FO', 'Faroe Islands', 'Kr.', 'DKK', NULL, NULL),
(74, '679', 'FJ', 'Fiji', 'FJ$', 'FJD', NULL, NULL),
(75, '358', 'FI', 'Finland', '€', 'EUR', NULL, NULL),
(76, '33', 'FR', 'France', '€', 'EUR', NULL, NULL),
(77, '594', 'GF', 'French Guiana', '€', 'EUR', NULL, NULL),
(78, '689', 'PF', 'French Polynesia', '₣', 'XPF', NULL, NULL),
(79, '262', 'TF', 'French Southern Territories', '€', 'EUR', NULL, NULL),
(80, '241', 'GA', 'Gabon', 'FCFA', 'XAF', NULL, NULL),
(81, '220', 'GM', 'Gambia', 'D', 'GMD', NULL, NULL),
(82, '995', 'GE', 'Georgia', 'ლ', 'GEL', NULL, NULL),
(83, '49', 'DE', 'Germany', '€', 'EUR', NULL, NULL),
(84, '233', 'GH', 'Ghana', 'GH₵', 'GHS', NULL, NULL),
(85, '350', 'GI', 'Gibraltar', '£', 'GIP', NULL, NULL),
(86, '30', 'GR', 'Greece', '€', 'EUR', NULL, NULL),
(87, '299', 'GL', 'Greenland', 'Kr.', 'DKK', NULL, NULL),
(88, '1473', 'GD', 'Grenada', '$', 'XCD', NULL, NULL),
(89, '590', 'GP', 'Guadeloupe', '€', 'EUR', NULL, NULL),
(90, '1671', 'GU', 'Guam', '$', 'USD', NULL, NULL),
(91, '502', 'GT', 'Guatemala', 'Q', 'GTQ', NULL, NULL),
(92, '44', 'GG', 'Guernsey', '£', 'GBP', NULL, NULL),
(93, '224', 'GN', 'Guinea', 'FG', 'GNF', NULL, NULL),
(94, '245', 'GW', 'Guinea-Bissau', 'CFA', 'XOF', NULL, NULL),
(95, '592', 'GY', 'Guyana', '$', 'GYD', NULL, NULL),
(96, '509', 'HT', 'Haiti', 'G', 'HTG', NULL, NULL),
(97, '0', 'HM', 'Heard Island and Mcdonald Islands', '$', 'AUD', NULL, NULL),
(98, '39', 'VA', 'Holy See (Vatican City State)', '€', 'EUR', NULL, NULL),
(99, '504', 'HN', 'Honduras', 'L', 'HNL', NULL, NULL),
(100, '852', 'HK', 'Hong Kong', '$', 'HKD', NULL, NULL),
(101, '36', 'HU', 'Hungary', 'Ft', 'HUF', NULL, NULL),
(102, '354', 'IS', 'Iceland', 'kr', 'ISK', NULL, NULL),
(103, '91', 'IN', 'India', '₹', 'INR', NULL, NULL),
(104, '62', 'ID', 'Indonesia', 'Rp', 'IDR', NULL, NULL),
(105, '98', 'IR', 'Iran, Islamic Republic of', '﷼', 'IRR', NULL, NULL),
(106, '964', 'IQ', 'Iraq', 'د.ع', 'IQD', NULL, NULL),
(107, '353', 'IE', 'Ireland', '€', 'EUR', NULL, NULL),
(108, '44', 'IM', 'Isle of Man', '£', 'GBP', NULL, NULL),
(109, '972', 'IL', 'Israel', '₪', 'ILS', NULL, NULL),
(110, '39', 'IT', 'Italy', '€', 'EUR', NULL, NULL),
(111, '1876', 'JM', 'Jamaica', 'J$', 'JMD', NULL, NULL),
(112, '81', 'JP', 'Japan', '¥', 'JPY', NULL, NULL),
(113, '44', 'JE', 'Jersey', '£', 'GBP', NULL, NULL),
(114, '962', 'JO', 'Jordan', 'ا.د', 'JOD', NULL, NULL),
(115, '7', 'KZ', 'Kazakhstan', 'лв', 'KZT', NULL, NULL),
(116, '254', 'KE', 'Kenya', 'KSh', 'KES', NULL, NULL),
(117, '686', 'KI', 'Kiribati', '$', 'AUD', NULL, NULL),
(118, '850', 'KP', 'Korea, Democratic People\'s Republic of', '₩', 'KPW', NULL, NULL),
(119, '82', 'KR', 'Korea, Republic of', '₩', 'KRW', NULL, NULL),
(120, '381', 'XK', 'Kosovo', '€', 'EUR', NULL, NULL),
(121, '965', 'KW', 'Kuwait', 'ك.د', 'KWD', NULL, NULL),
(122, '996', 'KG', 'Kyrgyzstan', 'лв', 'KGS', NULL, NULL),
(123, '856', 'LA', 'Lao People\'s Democratic Republic', '₭', 'LAK', NULL, NULL),
(124, '371', 'LV', 'Latvia', '€', 'EUR', NULL, NULL),
(125, '961', 'LB', 'Lebanon', '£', 'LBP', NULL, NULL),
(126, '266', 'LS', 'Lesotho', 'L', 'LSL', NULL, NULL),
(127, '231', 'LR', 'Liberia', '$', 'LRD', NULL, NULL),
(128, '218', 'LY', 'Libyan Arab Jamahiriya', 'د.ل', 'LYD', NULL, NULL),
(129, '423', 'LI', 'Liechtenstein', 'CHf', 'CHF', NULL, NULL),
(130, '370', 'LT', 'Lithuania', '€', 'EUR', NULL, NULL),
(131, '352', 'LU', 'Luxembourg', '€', 'EUR', NULL, NULL),
(132, '853', 'MO', 'Macao', '$', 'MOP', NULL, NULL),
(133, '389', 'MK', 'Macedonia, the Former Yugoslav Republic of', 'ден', 'MKD', NULL, NULL),
(134, '261', 'MG', 'Madagascar', 'Ar', 'MGA', NULL, NULL),
(135, '265', 'MW', 'Malawi', 'MK', 'MWK', NULL, NULL),
(136, '60', 'MY', 'Malaysia', 'RM', 'MYR', NULL, NULL),
(137, '960', 'MV', 'Maldives', 'Rf', 'MVR', NULL, NULL),
(138, '223', 'ML', 'Mali', 'CFA', 'XOF', NULL, NULL),
(139, '356', 'MT', 'Malta', '€', 'EUR', NULL, NULL),
(140, '692', 'MH', 'Marshall Islands', '$', 'USD', NULL, NULL),
(141, '596', 'MQ', 'Martinique', '€', 'EUR', NULL, NULL),
(142, '222', 'MR', 'Mauritania', 'MRU', 'MRO', NULL, NULL),
(143, '230', 'MU', 'Mauritius', '₨', 'MUR', NULL, NULL),
(144, '262', 'YT', 'Mayotte', '€', 'EUR', NULL, NULL),
(145, '52', 'MX', 'Mexico', '$', 'MXN', NULL, NULL),
(146, '691', 'FM', 'Micronesia, Federated States of', '$', 'USD', NULL, NULL),
(147, '373', 'MD', 'Moldova, Republic of', 'L', 'MDL', NULL, NULL),
(148, '377', 'MC', 'Monaco', '€', 'EUR', NULL, NULL),
(149, '976', 'MN', 'Mongolia', '₮', 'MNT', NULL, NULL),
(150, '382', 'ME', 'Montenegro', '€', 'EUR', NULL, NULL),
(151, '1664', 'MS', 'Montserrat', '$', 'XCD', NULL, NULL),
(152, '212', 'MA', 'Morocco', 'DH', 'MAD', NULL, NULL),
(153, '258', 'MZ', 'Mozambique', 'MT', 'MZN', NULL, NULL),
(154, '95', 'MM', 'Myanmar', 'K', 'MMK', NULL, NULL),
(155, '264', 'NA', 'Namibia', '$', 'NAD', NULL, NULL),
(156, '674', 'NR', 'Nauru', '$', 'AUD', NULL, NULL),
(157, '977', 'NP', 'Nepal', '₨', 'NPR', NULL, NULL),
(158, '31', 'NL', 'Netherlands', '€', 'EUR', NULL, NULL),
(159, '599', 'AN', 'Netherlands Antilles', 'NAf', 'ANG', NULL, NULL),
(160, '687', 'NC', 'New Caledonia', '₣', 'XPF', NULL, NULL),
(161, '64', 'NZ', 'New Zealand', '$', 'NZD', NULL, NULL),
(162, '505', 'NI', 'Nicaragua', 'C$', 'NIO', NULL, NULL),
(163, '227', 'NE', 'Niger', 'CFA', 'XOF', NULL, NULL),
(164, '234', 'NG', 'Nigeria', '₦', 'NGN', NULL, NULL),
(165, '683', 'NU', 'Niue', '$', 'NZD', NULL, NULL),
(166, '672', 'NF', 'Norfolk Island', '$', 'AUD', NULL, NULL),
(167, '1670', 'MP', 'Northern Mariana Islands', '$', 'USD', NULL, NULL),
(168, '47', 'NO', 'Norway', 'kr', 'NOK', NULL, NULL),
(169, '968', 'OM', 'Oman', '.ع.ر', 'OMR', NULL, NULL),
(170, '92', 'PK', 'Pakistan', '₨', 'PKR', NULL, NULL),
(171, '680', 'PW', 'Palau', '$', 'USD', NULL, NULL),
(172, '970', 'PS', 'Palestinian Territory, Occupied', '₪', 'ILS', NULL, NULL),
(173, '507', 'PA', 'Panama', 'B/.', 'PAB', NULL, NULL),
(174, '675', 'PG', 'Papua New Guinea', 'K', 'PGK', NULL, NULL),
(175, '595', 'PY', 'Paraguay', '₲', 'PYG', NULL, NULL),
(176, '51', 'PE', 'Peru', 'S/.', 'PEN', NULL, NULL),
(177, '63', 'PH', 'Philippines', '₱', 'PHP', NULL, NULL),
(178, '64', 'PN', 'Pitcairn', '$', 'NZD', NULL, NULL),
(179, '48', 'PL', 'Poland', 'zł', 'PLN', NULL, NULL),
(180, '351', 'PT', 'Portugal', '€', 'EUR', NULL, NULL),
(181, '1787', 'PR', 'Puerto Rico', '$', 'USD', NULL, NULL),
(182, '974', 'QA', 'Qatar', 'ق.ر', 'QAR', NULL, NULL),
(183, '262', 'RE', 'Reunion', '€', 'EUR', NULL, NULL),
(184, '40', 'RO', 'Romania', 'lei', 'RON', NULL, NULL),
(185, '70', 'RU', 'Russian Federation', '₽', 'RUB', NULL, NULL),
(186, '250', 'RW', 'Rwanda', 'FRw', 'RWF', NULL, NULL),
(187, '590', 'BL', 'Saint Barthelemy', '€', 'EUR', NULL, NULL),
(188, '290', 'SH', 'Saint Helena', '£', 'SHP', NULL, NULL),
(189, '1869', 'KN', 'Saint Kitts and Nevis', '$', 'XCD', NULL, NULL),
(190, '1758', 'LC', 'Saint Lucia', '$', 'XCD', NULL, NULL),
(191, '590', 'MF', 'Saint Martin', '€', 'EUR', NULL, NULL),
(192, '508', 'PM', 'Saint Pierre and Miquelon', '€', 'EUR', NULL, NULL),
(193, '1784', 'VC', 'Saint Vincent and the Grenadines', '$', 'XCD', NULL, NULL),
(194, '684', 'WS', 'Samoa', 'SAT', 'WST', NULL, NULL),
(195, '378', 'SM', 'San Marino', '€', 'EUR', NULL, NULL),
(196, '239', 'ST', 'Sao Tome and Principe', 'Db', 'STD', NULL, NULL),
(197, '966', 'SA', 'Saudi Arabia', '﷼', 'SAR', NULL, NULL),
(198, '221', 'SN', 'Senegal', 'CFA', 'XOF', NULL, NULL),
(199, '381', 'RS', 'Serbia', 'din', 'RSD', NULL, NULL),
(200, '381', 'CS', 'Serbia and Montenegro', 'din', 'RSD', NULL, NULL),
(201, '248', 'SC', 'Seychelles', 'SRe', 'SCR', NULL, NULL),
(202, '232', 'SL', 'Sierra Leone', 'Le', 'SLL', NULL, NULL),
(203, '65', 'SG', 'Singapore', '$', 'SGD', NULL, NULL),
(204, '1', 'SX', 'Sint Maarten', 'ƒ', 'ANG', NULL, NULL),
(205, '421', 'SK', 'Slovakia', '€', 'EUR', NULL, NULL),
(206, '386', 'SI', 'Slovenia', '€', 'EUR', NULL, NULL),
(207, '677', 'SB', 'Solomon Islands', 'Si$', 'SBD', NULL, NULL),
(208, '252', 'SO', 'Somalia', 'Sh.so.', 'SOS', NULL, NULL),
(209, '27', 'ZA', 'South Africa', 'R', 'ZAR', NULL, NULL),
(210, '500', 'GS', 'South Georgia and the South Sandwich Islands', '£', 'GBP', NULL, NULL),
(211, '211', 'SS', 'South Sudan', '£', 'SSP', NULL, NULL),
(212, '34', 'ES', 'Spain', '€', 'EUR', NULL, NULL),
(213, '94', 'LK', 'Sri Lanka', 'Rs', 'LKR', NULL, NULL),
(214, '249', 'SD', 'Sudan', '.س.ج', 'SDG', NULL, NULL),
(215, '597', 'SR', 'Suriname', '$', 'SRD', NULL, NULL),
(216, '47', 'SJ', 'Svalbard and Jan Mayen', 'kr', 'NOK', NULL, NULL),
(217, '268', 'SZ', 'Swaziland', 'E', 'SZL', NULL, NULL),
(218, '46', 'SE', 'Sweden', 'kr', 'SEK', NULL, NULL),
(219, '41', 'CH', 'Switzerland', 'CHf', 'CHF', NULL, NULL),
(220, '963', 'SY', 'Syrian Arab Republic', 'LS', 'SYP', NULL, NULL),
(221, '886', 'TW', 'Taiwan, Province of China', '$', 'TWD', NULL, NULL),
(222, '992', 'TJ', 'Tajikistan', 'SM', 'TJS', NULL, NULL),
(223, '255', 'TZ', 'Tanzania, United Republic of', 'TSh', 'TZS', NULL, NULL),
(224, '66', 'TH', 'Thailand', '฿', 'THB', NULL, NULL),
(225, '670', 'TL', 'Timor-Leste', '$', 'USD', NULL, NULL),
(226, '228', 'TG', 'Togo', 'CFA', 'XOF', NULL, NULL),
(227, '690', 'TK', 'Tokelau', '$', 'NZD', NULL, NULL),
(228, '676', 'TO', 'Tonga', '$', 'TOP', NULL, NULL),
(229, '1868', 'TT', 'Trinidad and Tobago', '$', 'TTD', NULL, NULL),
(230, '216', 'TN', 'Tunisia', 'ت.د', 'TND', NULL, NULL),
(231, '90', 'TR', 'Turkey', '₺', 'TRY', NULL, NULL),
(232, '7370', 'TM', 'Turkmenistan', 'T', 'TMT', NULL, NULL),
(233, '1649', 'TC', 'Turks and Caicos Islands', '$', 'USD', NULL, NULL),
(234, '688', 'TV', 'Tuvalu', '$', 'AUD', NULL, NULL),
(235, '256', 'UG', 'Uganda', 'USh', 'UGX', NULL, NULL),
(236, '380', 'UA', 'Ukraine', '₴', 'UAH', NULL, NULL),
(237, '971', 'AE', 'United Arab Emirates', 'إ.د', 'AED', NULL, NULL),
(238, '44', 'GB', 'United Kingdom', '£', 'GBP', NULL, NULL),
(239, '1', 'US', 'United States', '$', 'USD', NULL, NULL),
(240, '1', 'UM', 'United States Minor Outlying Islands', '$', 'USD', NULL, NULL),
(241, '598', 'UY', 'Uruguay', '$', 'UYU', NULL, NULL),
(242, '998', 'UZ', 'Uzbekistan', 'лв', 'UZS', NULL, NULL),
(243, '678', 'VU', 'Vanuatu', 'VT', 'VUV', NULL, NULL),
(244, '58', 'VE', 'Venezuela', 'Bs', 'VEF', NULL, NULL),
(245, '84', 'VN', 'Viet Nam', '₫', 'VND', NULL, NULL),
(246, '1284', 'VG', 'Virgin Islands, British', '$', 'USD', NULL, NULL),
(247, '1340', 'VI', 'Virgin Islands, U.s.', '$', 'USD', NULL, NULL),
(248, '681', 'WF', 'Wallis and Futuna', '₣', 'XPF', NULL, NULL),
(249, '212', 'EH', 'Western Sahara', 'MAD', 'MAD', NULL, NULL),
(250, '967', 'YE', 'Yemen', '﷼', 'YER', NULL, NULL),
(251, '260', 'ZM', 'Zambia', 'ZK', 'ZMW', NULL, NULL),
(252, '263', 'ZW', 'Zimbabwe', '$', 'ZWL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `course_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `faq` longtext DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `meta_title` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_author` longtext DEFAULT NULL,
  `meta_image` bigint(20) UNSIGNED DEFAULT NULL,
  `thumbnail` bigint(20) UNSIGNED DEFAULT NULL,
  `course_overview_type` bigint(20) UNSIGNED NOT NULL DEFAULT 17,
  `video_url` varchar(255) DEFAULT NULL,
  `language` varchar(255) NOT NULL DEFAULT 'en',
  `course_type` bigint(20) UNSIGNED NOT NULL DEFAULT 13,
  `is_admin` tinyint(4) NOT NULL DEFAULT 11,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_multiple_instructor` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = false, 1 = true',
  `partner_instructors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`partner_instructors`)),
  `is_free` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = false, 1 = true',
  `level_id` bigint(20) UNSIGNED NOT NULL DEFAULT 18,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `visibility_id` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `last_modified` timestamp NULL DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `total_review` int(11) NOT NULL DEFAULT 0,
  `total_sales` int(11) NOT NULL DEFAULT 0,
  `course_duration` double NOT NULL DEFAULT 0,
  `point` double(8,2) NOT NULL DEFAULT 0.00,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `short_description`, `description`, `course_category_id`, `requirements`, `outcomes`, `faq`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `meta_author`, `meta_image`, `thumbnail`, `course_overview_type`, `video_url`, `language`, `course_type`, `is_admin`, `instructor_id`, `is_multiple_instructor`, `partner_instructors`, `is_free`, `level_id`, `status_id`, `visibility_id`, `last_modified`, `rating`, `total_review`, `total_sales`, `course_duration`, `point`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'asdas', 'asdas-N6YJTRHX', 'dasd', '<p>dasd</p>', 1, '<p>dasd</p>', '<p>dasd</p>', NULL, NULL, 'dasd', 'dasd', 'dasd', 'mentor', 41, 40, 15, 'https://www.youtube.com/watch?v=FEH940iwrPM', 'en', 13, 11, NULL, 0, NULL, 1, 19, 1, 22, NULL, 0, 0, 0, 0, 0.00, 5, 5, NULL, NULL, '2023-12-30 16:06:23', '2023-12-30 16:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

CREATE TABLE `course_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `icon` bigint(20) UNSIGNED DEFAULT NULL,
  `thumbnail` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `is_popular` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_categories`
--

INSERT INTO `course_categories` (`id`, `title`, `slug`, `icon`, `thumbnail`, `parent_id`, `user_id`, `status_id`, `is_popular`, `created_at`, `updated_at`) VALUES
(1, 'sdasd', 'sdasd-6CxGpXj9', 38, NULL, NULL, 1, 1, 0, '2023-12-30 15:51:20', '2023-12-30 15:51:20'),
(2, 'dasdas', 'dasdas-wqNpdrP0', 39, NULL, 1, 1, 1, 0, '2023-12-30 15:51:41', '2023-12-30 15:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(2, 'Dollars', 'USD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(3, 'Afghanis', 'AFN', '؋', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(4, 'Pesos', 'ARS', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(5, 'Guilders', 'AWG', 'ƒ', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(6, 'Dollars', 'AUD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(7, 'New Manats', 'AZN', 'ман', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(8, 'Dollars', 'BSD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(9, 'Dollars', 'BBD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(10, 'Rubles', 'BYR', 'p.', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(11, 'Euro', 'EUR', '€', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(12, 'Dollars', 'BZD', 'BZ$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(13, 'Dollars', 'BMD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(14, 'Bolivianos', 'BOB', '$b', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(16, 'Pula', 'BWP', 'P', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(17, 'Leva', 'BGN', 'лв', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(18, 'Reais', 'BRL', 'R$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(19, 'Pounds', 'GBP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(20, 'Dollars', 'BND', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(21, 'Riels', 'KHR', '៛', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(22, 'Dollars', 'CAD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(23, 'Dollars', 'KYD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(24, 'Pesos', 'CLP', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(26, 'Pesos', 'COP', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(27, 'Colón', 'CRC', '₡', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(28, 'Kuna', 'HRK', 'kn', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(29, 'Pesos', 'CUP', '₱', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(30, 'Koruny', 'CZK', 'Kč', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(31, 'Kroner', 'DKK', 'kr', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(32, 'Pesos', 'DOP ', 'RD$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(33, 'Dollars', 'XCD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(34, 'Pounds', 'EGP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(35, 'Colones', 'SVC', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(36, 'Pounds', 'FKP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(37, 'Dollars', 'FJD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(38, 'Cedis', 'GHC', '¢', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(39, 'Pounds', 'GIP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(40, 'Quetzales', 'GTQ', 'Q', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(41, 'Pounds', 'GGP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(42, 'Dollars', 'GYD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(43, 'Lempiras', 'HNL', 'L', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(44, 'Dollars', 'HKD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(45, 'Forint', 'HUF', 'Ft', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(46, 'Kronur', 'ISK', 'kr', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(47, 'Rupees', 'INR', '₹', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(49, 'Rials', 'IRR', '﷼', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(50, 'Pounds', 'IMP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(51, 'New Shekels', 'ILS', '₪', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(52, 'Dollars', 'JMD', 'J$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(53, 'Yen', 'JPY', '¥', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(54, 'Pounds', 'JEP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(55, 'Tenge', 'KZT', 'лв', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(56, 'Won', 'KPW', '₩', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(57, 'Won', 'KRW', '₩', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(58, 'Soms', 'KGS', 'лв', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(59, 'Kips', 'LAK', '₭', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(60, 'Lati', 'LVL', 'Ls', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(61, 'Pounds', 'LBP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(62, 'Dollars', 'LRD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(64, 'Litai', 'LTL', 'Lt', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(65, 'Denars', 'MKD', 'ден', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(66, 'Ringgits', 'MYR', 'RM', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(67, 'Rupees', 'MUR', '₨', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(68, 'Pesos', 'MXN', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(69, 'Tugriks', 'MNT', '₮', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(70, 'Meticais', 'MZN', 'MT', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(71, 'Dollars', 'NAD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(72, 'Rupees', 'NPR', '₨', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(73, 'Guilders', 'ANG', 'ƒ', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(74, 'Dollars', 'NZD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(75, 'Cordobas', 'NIO', 'C$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(76, 'Nairas', 'NGN', '₦', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(77, 'Krone', 'NOK', 'kr', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(78, 'Rials', 'OMR', '﷼', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(79, 'Rupees', 'PKR', '₨', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(80, 'Balboa', 'PAB', 'B/.', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(81, 'Guarani', 'PYG', 'Gs', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(83, 'Pesos', 'PHP', 'Php', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(84, 'Zlotych', 'PLN', 'zł', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(85, 'Rials', 'QAR', '﷼', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(86, 'New Lei', 'RON', 'lei', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(87, 'Rubles', 'RUB', 'руб', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(88, 'Pounds', 'SHP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(89, 'Riyals', 'SAR', '﷼', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(90, 'Dinars', 'RSD', 'Дин.', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(91, 'Rupees', 'SCR', '₨', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(92, 'Dollars', 'SGD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(93, 'Dollars', 'SBD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(94, 'Shillings', 'SOS', 'S', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(95, 'Rand', 'ZAR', 'R', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(96, 'Rupees', 'LKR', '₨', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(97, 'Kronor', 'SEK', 'kr', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(98, 'Dollars', 'SRD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(99, 'Pounds', 'SYP', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(100, 'New Dollars', 'TWD', 'NT$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(101, 'Baht', 'THB', '฿', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(102, 'Dollars', 'TTD', 'TT$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(103, 'Lira', 'TRY', 'TL', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(104, 'Liras', 'TRL', '£', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(105, 'Dollars', 'TVD', '$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(106, 'Hryvnia', 'UAH', '₴', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(107, 'Pesos', 'UYU', '$U', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(108, 'Sums', 'UZS', 'лв', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(110, 'Dong', 'VND', '₫', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(111, 'Rials', 'YER', '﷼', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(112, 'Taka', 'BDT', '৳', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(113, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(114, 'Kenya', 'KES', 'KSh', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(115, 'Nigeria', 'naira', '₦', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(116, 'Ghana', 'GHS', 'GH₵', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(117, 'Ethiopian', 'ETB', 'Br', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(118, 'Tanzania', 'TZS', 'TSh', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(119, 'Uganda', 'UGX', 'USh', '2023-12-30 14:49:02', '2023-12-30 14:49:02'),
(120, 'Rwandan', 'FRW', 'FRw', '2023-12-30 14:49:02', '2023-12-30 14:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `date_formats`
--

CREATE TABLE `date_formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `format` varchar(255) DEFAULT NULL,
  `normal_view` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `date_formats`
--

INSERT INTO `date_formats` (`id`, `format`, `normal_view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'jS M, Y', '17th May, 2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(2, 'Y-m-d', '2019-05-17', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(3, 'Y-d-m', '2019-17-05', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(4, 'd-m-Y', '17-05-2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(5, 'm-d-Y', '05-17-2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(6, 'Y/m/d', '2019/05/17', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(7, 'Y/d/m', '2019/17/05', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(8, 'd/m/Y', '17/05/2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(9, 'm/d/Y', '05/17/2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(10, 'l jS \\of F Y', 'Monday 17th of May 2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(11, 'jS \\of F Y', '17th of May 2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(12, 'g:ia \\o\\n l jS F Y', '12:00am on Monday 17th May 2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(13, 'F j, Y, g:i a', 'May 7, 2019, 6:20 pm', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(14, 'F j, Y', 'May 17, 2019', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02'),
(15, '\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y', 'it is the 17th day', 1, '2023-12-30 02:49:02', '2023-12-30 14:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'HRM', 'hrm', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(2, 'Admin', 'admin', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(3, 'Accounts', 'accounts', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(4, 'Development', 'development', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(5, 'Software', 'software', '2023-12-30 14:49:10', '2023-12-30 14:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_lessons` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`completed_lessons`)),
  `completed_quizzes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`completed_quizzes`)),
  `completed_assignments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`completed_assignments`)),
  `lesson_point` double(8,2) NOT NULL DEFAULT 0.00,
  `quiz_point` double(8,2) NOT NULL DEFAULT 0.00,
  `assignment_point` double(8,2) NOT NULL DEFAULT 0.00,
  `visited` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` bigint(20) UNSIGNED DEFAULT NULL,
  `event_type` enum('Online','Offline') DEFAULT NULL,
  `online_welcome_media` varchar(255) DEFAULT NULL,
  `online_media` varchar(255) DEFAULT NULL,
  `online_link` varchar(255) DEFAULT NULL,
  `online_note` text DEFAULT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `registration_deadline` timestamp NULL DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `max_participant` int(11) DEFAULT NULL,
  `show_participant` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `visibility_id` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `is_paid` bigint(20) UNSIGNED NOT NULL DEFAULT 10,
  `price` double DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `is_popular` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_organizers`
--

CREATE TABLE `event_organizers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_registrations`
--

CREATE TABLE `event_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `price` double DEFAULT NULL,
  `instructor_commission` double NOT NULL DEFAULT 0,
  `status` enum('unpaid','processing','paid','failed') NOT NULL DEFAULT 'unpaid',
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `payment_manual` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_manual`)),
  `invoice_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_schedules`
--

CREATE TABLE `event_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_schedule_lists`
--

CREATE TABLE `event_schedule_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `location` varchar(255) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `event_schedule_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_speakers`
--

CREATE TABLE `event_speakers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `amount` double(16,2) NOT NULL DEFAULT 0.00,
  `note` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `featured_courses`
--

CREATE TABLE `featured_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flag_icons`
--

CREATE TABLE `flag_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flag_icons`
--

INSERT INTO `flag_icons` (`id`, `icon_class`, `title`, `created_at`, `updated_at`) VALUES
(1, 'flag-icon flag-icon-ad', 'ad', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(2, 'flag-icon flag-icon-ae', 'ae', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(3, 'flag-icon flag-icon-af', 'af', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(4, 'flag-icon flag-icon-ag', 'ag', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(5, 'flag-icon flag-icon-ai', 'ai', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(6, 'flag-icon flag-icon-al', 'al', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(7, 'flag-icon flag-icon-am', 'am', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(8, 'flag-icon flag-icon-ao', 'ao', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(9, 'flag-icon flag-icon-aq', 'aq', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(10, 'flag-icon flag-icon-ar', 'ar', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(11, 'flag-icon flag-icon-as', 'as', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(12, 'flag-icon flag-icon-at', 'at', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(13, 'flag-icon flag-icon-au', 'au', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(14, 'flag-icon flag-icon-aw', 'aw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(15, 'flag-icon flag-icon-ax', 'ax', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(16, 'flag-icon flag-icon-az', 'az', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(17, 'flag-icon flag-icon-ba', 'ba', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(18, 'flag-icon flag-icon-bb', 'bb', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(19, 'flag-icon flag-icon-bd', 'bd', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(20, 'flag-icon flag-icon-be', 'be', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(21, 'flag-icon flag-icon-bf', 'bf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(22, 'flag-icon flag-icon-bg', 'bg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(23, 'flag-icon flag-icon-bh', 'bh', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(24, 'flag-icon flag-icon-bi', 'bi', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(25, 'flag-icon flag-icon-bj', 'bj', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(26, 'flag-icon flag-icon-bl', 'bl', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(27, 'flag-icon flag-icon-bm', 'bm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(28, 'flag-icon flag-icon-bn', 'bn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(29, 'flag-icon flag-icon-bo', 'bo', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(30, 'flag-icon flag-icon-bq', 'bq', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(31, 'flag-icon flag-icon-br', 'br', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(32, 'flag-icon flag-icon-bs', 'bs', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(33, 'flag-icon flag-icon-bt', 'bt', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(34, 'flag-icon flag-icon-bv', 'bv', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(35, 'flag-icon flag-icon-bw', 'bw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(36, 'flag-icon flag-icon-by', 'by', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(37, 'flag-icon flag-icon-bz', 'bz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(38, 'flag-icon flag-icon-ca', 'ca', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(39, 'flag-icon flag-icon-cc', 'cc', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(40, 'flag-icon flag-icon-cd', 'cd', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(41, 'flag-icon flag-icon-cf', 'cf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(42, 'flag-icon flag-icon-cg', 'cg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(43, 'flag-icon flag-icon-ch', 'ch', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(44, 'flag-icon flag-icon-ci', 'ci', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(45, 'flag-icon flag-icon-ck', 'ck', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(46, 'flag-icon flag-icon-cl', 'cl', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(47, 'flag-icon flag-icon-cm', 'cm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(48, 'flag-icon flag-icon-cn', 'cn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(49, 'flag-icon flag-icon-co', 'co', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(50, 'flag-icon flag-icon-cr', 'cr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(51, 'flag-icon flag-icon-cu', 'cu', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(52, 'flag-icon flag-icon-cv', 'cv', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(53, 'flag-icon flag-icon-cw', 'cw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(54, 'flag-icon flag-icon-cx', 'cx', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(55, 'flag-icon flag-icon-cy', 'cy', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(56, 'flag-icon flag-icon-cz', 'cz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(57, 'flag-icon flag-icon-de', 'de', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(58, 'flag-icon flag-icon-dj', 'dj', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(59, 'flag-icon flag-icon-dk', 'dk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(60, 'flag-icon flag-icon-dm', 'dm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(61, 'flag-icon flag-icon-do', 'do', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(62, 'flag-icon flag-icon-dz', 'dz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(63, 'flag-icon flag-icon-ec', 'ec', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(64, 'flag-icon flag-icon-ee', 'ee', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(65, 'flag-icon flag-icon-eg', 'eg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(66, 'flag-icon flag-icon-eh', 'eh', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(67, 'flag-icon flag-icon-er', 'er', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(68, 'flag-icon flag-icon-es', 'es', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(69, 'flag-icon flag-icon-et', 'et', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(70, 'flag-icon flag-icon-fi', 'fi', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(71, 'flag-icon flag-icon-fj', 'fj', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(72, 'flag-icon flag-icon-fk', 'fk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(73, 'flag-icon flag-icon-fm', 'fm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(74, 'flag-icon flag-icon-fo', 'fo', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(75, 'flag-icon flag-icon-fr', 'fr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(76, 'flag-icon flag-icon-ga', 'ga', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(77, 'flag-icon flag-icon-gb', 'gb', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(78, 'flag-icon flag-icon-gd', 'gd', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(79, 'flag-icon flag-icon-ge', 'ge', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(80, 'flag-icon flag-icon-gf', 'gf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(81, 'flag-icon flag-icon-gg', 'gg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(82, 'flag-icon flag-icon-gh', 'gh', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(83, 'flag-icon flag-icon-gi', 'gi', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(84, 'flag-icon flag-icon-gl', 'gl', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(85, 'flag-icon flag-icon-gm', 'gm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(86, 'flag-icon flag-icon-gn', 'gn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(87, 'flag-icon flag-icon-gp', 'gp', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(88, 'flag-icon flag-icon-gq', 'gq', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(89, 'flag-icon flag-icon-gr', 'gr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(90, 'flag-icon flag-icon-gs', 'gs', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(91, 'flag-icon flag-icon-gt', 'gt', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(92, 'flag-icon flag-icon-gu', 'gu', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(93, 'flag-icon flag-icon-gw', 'gw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(94, 'flag-icon flag-icon-gy', 'gy', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(95, 'flag-icon flag-icon-hk', 'hk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(96, 'flag-icon flag-icon-hm', 'hm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(97, 'flag-icon flag-icon-hn', 'hn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(98, 'flag-icon flag-icon-hr', 'hr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(99, 'flag-icon flag-icon-ht', 'ht', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(100, 'flag-icon flag-icon-hu', 'hu', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(101, 'flag-icon flag-icon-id', 'id', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(102, 'flag-icon flag-icon-ie', 'ie', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(103, 'flag-icon flag-icon-il', 'il', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(104, 'flag-icon flag-icon-im', 'im', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(105, 'flag-icon flag-icon-in', 'in', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(106, 'flag-icon flag-icon-io', 'io', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(107, 'flag-icon flag-icon-iq', 'iq', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(108, 'flag-icon flag-icon-ir', 'ir', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(109, 'flag-icon flag-icon-is', 'is', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(110, 'flag-icon flag-icon-it', 'it', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(111, 'flag-icon flag-icon-je', 'je', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(112, 'flag-icon flag-icon-jm', 'jm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(113, 'flag-icon flag-icon-jo', 'jo', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(114, 'flag-icon flag-icon-jp', 'jp', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(115, 'flag-icon flag-icon-ke', 'ke', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(116, 'flag-icon flag-icon-kg', 'kg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(117, 'flag-icon flag-icon-kh', 'kh', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(118, 'flag-icon flag-icon-ki', 'ki', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(119, 'flag-icon flag-icon-km', 'km', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(120, 'flag-icon flag-icon-kn', 'kn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(121, 'flag-icon flag-icon-kp', 'kp', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(122, 'flag-icon flag-icon-kr', 'kr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(123, 'flag-icon flag-icon-kw', 'kw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(124, 'flag-icon flag-icon-ky', 'ky', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(125, 'flag-icon flag-icon-kz', 'kz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(126, 'flag-icon flag-icon-la', 'la', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(127, 'flag-icon flag-icon-lb', 'lb', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(128, 'flag-icon flag-icon-lc', 'lc', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(129, 'flag-icon flag-icon-li', 'li', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(130, 'flag-icon flag-icon-lk', 'lk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(131, 'flag-icon flag-icon-lr', 'lr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(132, 'flag-icon flag-icon-ls', 'ls', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(133, 'flag-icon flag-icon-lt', 'lt', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(134, 'flag-icon flag-icon-lu', 'lu', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(135, 'flag-icon flag-icon-lv', 'lv', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(136, 'flag-icon flag-icon-ly', 'ly', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(137, 'flag-icon flag-icon-ma', 'ma', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(138, 'flag-icon flag-icon-mc', 'mc', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(139, 'flag-icon flag-icon-md', 'md', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(140, 'flag-icon flag-icon-me', 'me', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(141, 'flag-icon flag-icon-mf', 'mf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(142, 'flag-icon flag-icon-mg', 'mg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(143, 'flag-icon flag-icon-mh', 'mh', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(144, 'flag-icon flag-icon-mk', 'mk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(145, 'flag-icon flag-icon-ml', 'ml', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(146, 'flag-icon flag-icon-mm', 'mm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(147, 'flag-icon flag-icon-mn', 'mn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(148, 'flag-icon flag-icon-mo', 'mo', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(149, 'flag-icon flag-icon-mp', 'mp', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(150, 'flag-icon flag-icon-mq', 'mq', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(151, 'flag-icon flag-icon-mr', 'mr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(152, 'flag-icon flag-icon-ms', 'ms', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(153, 'flag-icon flag-icon-mt', 'mt', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(154, 'flag-icon flag-icon-mu', 'mu', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(155, 'flag-icon flag-icon-mv', 'mv', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(156, 'flag-icon flag-icon-mw', 'mw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(157, 'flag-icon flag-icon-mx', 'mx', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(158, 'flag-icon flag-icon-my', 'my', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(159, 'flag-icon flag-icon-mz', 'mz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(160, 'flag-icon flag-icon-na', 'na', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(161, 'flag-icon flag-icon-nc', 'nc', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(162, 'flag-icon flag-icon-ne', 'ne', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(163, 'flag-icon flag-icon-nf', 'nf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(164, 'flag-icon flag-icon-ng', 'ng', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(165, 'flag-icon flag-icon-ni', 'ni', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(166, 'flag-icon flag-icon-nl', 'nl', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(167, 'flag-icon flag-icon-no', 'no', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(168, 'flag-icon flag-icon-np', 'np', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(169, 'flag-icon flag-icon-nr', 'nr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(170, 'flag-icon flag-icon-nu', 'nu', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(171, 'flag-icon flag-icon-nz', 'nz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(172, 'flag-icon flag-icon-om', 'om', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(173, 'flag-icon flag-icon-pa', 'pa', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(174, 'flag-icon flag-icon-pe', 'pe', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(175, 'flag-icon flag-icon-pf', 'pf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(176, 'flag-icon flag-icon-pg', 'pg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(177, 'flag-icon flag-icon-ph', 'ph', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(178, 'flag-icon flag-icon-pk', 'pk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(179, 'flag-icon flag-icon-pl', 'pl', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(180, 'flag-icon flag-icon-pm', 'pm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(181, 'flag-icon flag-icon-pn', 'pn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(182, 'flag-icon flag-icon-pr', 'pr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(183, 'flag-icon flag-icon-ps', 'ps', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(184, 'flag-icon flag-icon-pt', 'pt', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(185, 'flag-icon flag-icon-pw', 'pw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(186, 'flag-icon flag-icon-py', 'py', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(187, 'flag-icon flag-icon-qa', 'qa', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(188, 'flag-icon flag-icon-re', 're', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(189, 'flag-icon flag-icon-ro', 'ro', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(190, 'flag-icon flag-icon-rs', 'rs', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(191, 'flag-icon flag-icon-ru', 'ru', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(192, 'flag-icon flag-icon-rw', 'rw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(193, 'flag-icon flag-icon-sa', 'sa', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(194, 'flag-icon flag-icon-sb', 'sb', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(195, 'flag-icon flag-icon-sc', 'sc', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(196, 'flag-icon flag-icon-sd', 'sd', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(197, 'flag-icon flag-icon-se', 'se', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(198, 'flag-icon flag-icon-sg', 'sg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(199, 'flag-icon flag-icon-sh', 'sh', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(200, 'flag-icon flag-icon-si', 'si', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(201, 'flag-icon flag-icon-sj', 'sj', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(202, 'flag-icon flag-icon-sk', 'sk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(203, 'flag-icon flag-icon-sl', 'sl', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(204, 'flag-icon flag-icon-sm', 'sm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(205, 'flag-icon flag-icon-sn', 'sn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(206, 'flag-icon flag-icon-so', 'so', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(207, 'flag-icon flag-icon-sr', 'sr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(208, 'flag-icon flag-icon-ss', 'ss', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(209, 'flag-icon flag-icon-st', 'st', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(210, 'flag-icon flag-icon-sv', 'sv', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(211, 'flag-icon flag-icon-sx', 'sx', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(212, 'flag-icon flag-icon-sy', 'sy', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(213, 'flag-icon flag-icon-sz', 'sz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(214, 'flag-icon flag-icon-tc', 'tc', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(215, 'flag-icon flag-icon-td', 'td', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(216, 'flag-icon flag-icon-tf', 'tf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(217, 'flag-icon flag-icon-tg', 'tg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(218, 'flag-icon flag-icon-th', 'th', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(219, 'flag-icon flag-icon-tj', 'tj', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(220, 'flag-icon flag-icon-tk', 'tk', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(221, 'flag-icon flag-icon-tl', 'tl', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(222, 'flag-icon flag-icon-tm', 'tm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(223, 'flag-icon flag-icon-tn', 'tn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(224, 'flag-icon flag-icon-to', 'to', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(225, 'flag-icon flag-icon-tr', 'tr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(226, 'flag-icon flag-icon-tt', 'tt', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(227, 'flag-icon flag-icon-tv', 'tv', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(228, 'flag-icon flag-icon-tw', 'tw', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(229, 'flag-icon flag-icon-tz', 'tz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(230, 'flag-icon flag-icon-ua', 'ua', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(231, 'flag-icon flag-icon-ug', 'ug', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(232, 'flag-icon flag-icon-um', 'um', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(233, 'flag-icon flag-icon-us', 'us', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(234, 'flag-icon flag-icon-uy', 'uy', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(235, 'flag-icon flag-icon-uz', 'uz', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(236, 'flag-icon flag-icon-va', 'va', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(237, 'flag-icon flag-icon-vc', 'vc', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(238, 'flag-icon flag-icon-ve', 've', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(239, 'flag-icon flag-icon-vg', 'vg', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(240, 'flag-icon flag-icon-vi', 'vi', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(241, 'flag-icon flag-icon-vn', 'vn', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(242, 'flag-icon flag-icon-vu', 'vu', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(243, 'flag-icon flag-icon-wf', 'wf', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(244, 'flag-icon flag-icon-ws', 'ws', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(245, 'flag-icon flag-icon-ye', 'ye', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(246, 'flag-icon flag-icon-yt', 'yt', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(247, 'flag-icon flag-icon-za', 'za', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(248, 'flag-icon flag-icon-zm', 'zm', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(249, 'flag-icon flag-icon-zw', 'zw', '2023-12-30 14:49:11', '2023-12-30 14:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `footer_menus`
--

CREATE TABLE `footer_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `column` int(11) NOT NULL DEFAULT 1 COMMENT '1=column 1, 2=column 2, 3=column 3',
  `links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`links`)),
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_menus`
--

INSERT INTO `footer_menus` (`id`, `name`, `column`, `links`, `status_id`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"Pages\"}', 1, '[{\"name\":\"Organization\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/organization\\/become-organization\",\"status_id\":1},{\"name\":\"Latest Courses\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/courses?sort=latest\",\"status_id\":1},{\"name\":\"Certificate Track\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/certificate-tracking\",\"status_id\":1},{\"name\":\"Best Rated Courses\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/courses?sort=best_rated\",\"status_id\":1},{\"name\":\"Our Recent Blogs\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/blogs\",\"status_id\":1}]', 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(2, '{\"ar\":\"Custom Links\"}', 2, '[{\"name\":\"About Us\",\"is_page\":\"1\",\"page_id\":\"3\",\"status_id\":1},{\"name\":\"Contact Us\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/contact\\/us\",\"status_id\":1},{\"name\":\"Privacy Policy\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/privacy-policy\",\"is_page\":\"1\",\"page_id\":\"1\",\"status_id\":1},{\"name\":\"Terms & Conditions\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/terms-conditions\",\"is_page\":\"1\",\"page_id\":\"2\",\"status_id\":1},{\"name\":\"Events\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/event\",\"status_id\":1}]', 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(3, '{\"ar\":\"Top Categories\"}', 3, '[]', 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `title`, `slug`, `image_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Sign In', 'sign-in', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(2, 'Sign Up', 'sign-up', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(3, 'Forgot Password', 'forgot-password', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(4, 'Reset Password', 'reset-password', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(5, 'Verify Email', 'verify-email', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(6, 'Tracking Certificate', 'tracking-certificate', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(7, 'Become An Instructor', 'become-an-instructor', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(8, 'Home Loader', 'home-loader', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(9, '400 database connection error', '400-database-connection-error', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(10, '403 forbidden', '403-forbidden', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(11, '404 page not found', '404-page-not-found', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(12, '405 method not allowed', '405-method-not-allowed', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(13, '500 something wrong', '500-something-wrong', NULL, 1, '2023-12-30 14:49:12', '2023-12-30 14:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `amount` double(16,2) NOT NULL DEFAULT 0.00,
  `note` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_me` longtext DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = male',
  `date_of_birth` date DEFAULT NULL,
  `badges` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`badges`)),
  `education` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`education`)),
  `experience` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`experience`)),
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`skills`)),
  `commission` double NOT NULL DEFAULT 20,
  `earnings` double NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `points` double NOT NULL DEFAULT 0,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `about_me`, `designation`, `address`, `gender`, `date_of_birth`, `badges`, `education`, `experience`, `skills`, `commission`, `earnings`, `balance`, `points`, `country_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry\'s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book. It Has Survived Not Only Five Centuries, But Also The Leap Into Electronic Typesetting, Remaining Essentially Unchanged.\r\n\r\n            It Was Popularised In The 1960s With The Release Of Letraset Sheets Containing Lorem Ipsum Passages, And More Recently With Desktop Publishing Software Like Aldus PageMaker Including Versions Of Lorem Ipsum.', 'Software engineer | Laravel | PHP', 'Dhaka, Bangladesh', 1, NULL, NULL, '[{\"name\":\"Lorem Ipsum is simply dummy text of the printing\",\"degree\":\"Lorem Ipsum\",\"current\":0,\"program\":\"Lorem Ipsum\",\"end_date\":\"03\\/28\\/2018\",\"start_date\":\"03\\/01\\/2014\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"}]', '[{\"name\":\"Maya Lucas\",\"title\":\"Senior Software Engineer\",\"current\":1,\"end_date\":null,\"location\":\"Deserunt rerum volup\",\"start_date\":\"03\\/28\\/2023\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"employee_type\":\"full_time\",\"location_type\":\"hybrid\"}]', '[{\"value\":\"Nodejs\"},{\"value\":\"laravel\"},{\"value\":\"php\"},{\"value\":\"javascript\"},{\"value\":\"css\"},{\"value\":\"html\"},{\"value\":\"vue.js\"},{\"value\":\"react.js\"}]', 20, 0, 0, 0, 19, 5, '2023-12-30 14:49:11', '2023-12-30 14:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_commissions`
--

CREATE TABLE `instructor_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commission` double NOT NULL DEFAULT 20,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_payment_methods`
--

CREATE TABLE `instructor_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `credentials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`credentials`)),
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = default',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon_class`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'flag-icon flag-icon-us', 'ltr', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(2, 'Arabic', 'ar', 'flag-icon flag-icon-sa', 'rtl', '2023-12-30 14:49:11', '2023-12-30 14:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_quiz` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = false, 1 = true',
  `is_timer` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = false, 1 = true',
  `duration` varchar(255) DEFAULT NULL,
  `point` double(8,2) NOT NULL DEFAULT 0.00,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_free` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = false, 1 = true',
  `lesson_type` enum('Youtube','Vimeo','VideoFile','GoogleDrive','DocumentFile','Text','ImageFile','IframeEmbed') DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `video_file` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = file, 1 = link',
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `image_file` bigint(20) UNSIGNED DEFAULT NULL,
  `is_online_view` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = false, 1 = true',
  `is_downloadable` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = false, 1 = true',
  `iframe` longtext DEFAULT NULL,
  `lesson_text` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `marks` int(11) NOT NULL DEFAULT 0,
  `pass_marks` int(11) NOT NULL DEFAULT 0,
  `instruction` longtext DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 21,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2013_01_31_091321_create_uploads_table', 1),
(2, '2013_08_03_072003_create_roles_table', 1),
(3, '2013_08_17_074050_create_statuses_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2022_07_19_045514_create_flag_icons_table', 1),
(9, '2022_08_08_043550_create_permissions_table', 1),
(10, '2022_08_17_092623_create_languages_table', 1),
(11, '2022_10_04_044255_create_searches_table', 1),
(12, '2022_10_13_064230_create_designations_table', 1),
(13, '2023_01_30_094132_create_course_categories_table', 1),
(14, '2023_01_31_052613_create_courses_table', 1),
(15, '2023_01_31_071132_create_sections_table', 1),
(16, '2023_01_31_073632_create_lessons_table', 1),
(17, '2023_01_31_102629_create_questions_table', 1),
(18, '2023_01_31_114255_create_notice_boards_table', 1),
(19, '2023_01_31_114712_create_assignments_table', 1),
(20, '2023_02_04_090153_create_blog_categories_table', 1),
(21, '2023_02_05_064849_create_blogs_table', 1),
(22, '2023_02_09_062808_create_sliders_table', 1),
(23, '2023_02_10_092900_create_pages_table', 1),
(24, '2023_02_13_095025_create_brands_table', 1),
(25, '2023_02_16_054800_create_countries_table', 1),
(26, '2023_02_18_054704_create_instructors_table', 1),
(27, '2023_02_20_041130_create_carts_table', 1),
(28, '2023_02_22_035228_create_payment_methods_table', 1),
(29, '2023_02_22_040205_create_orders_table', 1),
(30, '2023_02_22_040220_create_order_items_table', 1),
(31, '2023_02_22_123341_create_enrolls_table', 1),
(32, '2023_02_22_132758_create_jobs_table', 1),
(33, '2023_02_23_055405_create_assignment_submits_table', 1),
(34, '2023_02_23_102707_create_quiz_results_table', 1),
(35, '2023_02_25_054301_create_reviews_table', 1),
(36, '2023_02_25_100524_create_notes_table', 1),
(37, '2023_02_27_132850_create_question_submits_table', 1),
(38, '2023_03_01_080253_create_bookmarks_table', 1),
(39, '2023_03_01_102004_create_students_table', 1),
(40, '2023_03_09_051502_create_featured_courses_table', 1),
(41, '2023_03_09_051834_create_settings_table', 1),
(42, '2023_03_10_051127_create_app_home_sections_table', 1),
(43, '2023_03_13_040838_create_instructor_payment_methods_table', 1),
(44, '2023_03_13_054814_create_payouts_table', 1),
(45, '2023_03_13_055026_create_payments_table', 1),
(46, '2023_03_16_084756_create_certificate_templates_table', 1),
(47, '2023_03_16_084803_create_certificate_generates_table', 1),
(48, '2023_03_27_085756_create_footer_menus_table', 1),
(49, '2023_04_04_084513_create_testimonials_table', 1),
(50, '2023_04_05_062621_create_accounts_table', 1),
(51, '2023_04_05_062641_create_transactions_table', 1),
(52, '2023_04_05_062835_create_incomes_table', 1),
(53, '2023_04_05_062857_create_expenses_table', 1),
(54, '2023_04_06_021209_create_payout_logs_table', 1),
(55, '2023_04_10_085742_create_currencies_table', 1),
(56, '2023_04_10_090342_create_date_formats_table', 1),
(57, '2023_04_27_091637_create_contacts_table', 1),
(58, '2023_05_05_041036_create_image_galleries_table', 1),
(59, '2023_06_15_125942_create_addons_table', 1),
(60, '2023_07_27_114716_create_organizations_table', 1),
(61, '2023_07_27_114816_create_instructor_commissions_table', 1),
(62, '2023_07_27_115750_create_event_categories_table', 1),
(63, '2023_07_28_055107_create_events_table', 1),
(64, '2023_07_28_062211_create_event_schedules_table', 1),
(65, '2023_07_28_062225_create_event_schedule_lists_table', 1),
(66, '2023_07_28_062244_create_event_organizers_table', 1),
(67, '2023_07_28_062255_create_event_speakers_table', 1),
(68, '2023_07_28_062315_create_event_registrations_table', 1),
(69, '2023_07_31_043430_add_event_percentage_to_users_table', 1),
(70, '2023_12_10_214400_add_mission_vision_values_to_pages', 1),
(71, '2023_12_11_233132_create_services_table', 1),
(72, '2023_12_13_021128_create_startups_table', 1),
(73, '2023_12_26_181443_create_startup_highlights_table', 1),
(74, '2023_12_26_181615_create_startup_problem_table', 1),
(75, '2023_12_26_181640_create_startup_solution_table', 1),
(76, '2023_12_26_181724_create_startup_how_it_works_table', 1),
(77, '2023_12_26_181759_create_startup_impact_table', 1),
(78, '2023_12_26_181828_create_startup_traction_table', 1),
(79, '2023_12_26_181856_create_startup_partnerships_table', 1),
(80, '2023_12_26_181913_create_startup_team_table', 1),
(81, '2023_12_26_181940_create_startup_advisors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `enroll_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_send_mail` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `payment_manual` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_manual`)),
  `invoice_number` varchar(255) DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `discount_amount` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `paid_amount` double(8,2) DEFAULT NULL,
  `due_amount` double(8,2) DEFAULT NULL,
  `tax_amount` double(8,2) DEFAULT NULL,
  `status` enum('unpaid','processing','paid','failed') NOT NULL DEFAULT 'unpaid',
  `is_refunded` tinyint(4) NOT NULL DEFAULT 0,
  `reference_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `discount_amount` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `tax_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `commission_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `instructor_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_me` longtext DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = male',
  `date_of_birth` date DEFAULT NULL,
  `badges` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`badges`)),
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`skills`)),
  `earnings` double NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `points` double NOT NULL DEFAULT 0,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `section` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`section`)),
  `type` varchar(20) DEFAULT NULL,
  `widget_type` varchar(20) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `vision` text DEFAULT NULL,
  `values` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `section`, `type`, `widget_type`, `content`, `image_id`, `status_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `mission`, `vision`, `values`) VALUES
(1, 'Privacy Policy', 'privacy-policy', '\"[\\\"19\\\"]\"', '1', NULL, '<h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Privacy Policy for Learning Management System (LMS)</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">&nbsp;</span></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">At our Learning Management System (LMS), we are committed to protecting the privacy and security of our users\' personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information provided to us through our LMS platform. By accessing or using our LMS, you agree to the terms and practices described in this Privacy Policy.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Information We Collect:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We may collect certain personal information from users in order to provide an enhanced learning experience. The types of information we may collect include:</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">1.1. Personal Information:</span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Full name</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Email address</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Contact details</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Username and password</span></p></li></ul><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">1.2. Course-related Information:</span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Course preferences</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Progress and performance data</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Course completion records</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Feedback and assessments</span></p></li></ul><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Use of Collected Information:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"2\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We may use the collected information for the following purposes:</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">2.1. Providing LMS Services:</span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Creating and managing user accounts</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Delivering course content and materials</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Tracking and monitoring user progress</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Generating reports and analytics</span></p></li></ul><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">2.2. Communication:</span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Sending administrative emails and notifications</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Responding to user inquiries and support requests</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Sending promotional or educational content related to our LMS</span></p></li></ul><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">2.3. Improving User Experience:</span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Customizing course recommendations and content</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Analyzing user behavior and preferences</span></p></li><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Enhancing the functionality and features of our LMS</span></p></li></ul><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Information Sharing:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"3\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We understand the importance of safeguarding personal information and do not sell, trade, or rent users\' personal information to third parties. However, we may share certain information under the following circumstances:</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">3.1. Service Providers:</span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We may share personal information with trusted third-party service providers who assist us in operating our LMS and delivering services. These service providers are bound by strict confidentiality agreements and are authorized to use the information solely for the purpose of providing services to us.</span></p></li></ul><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">3.2. Legal Compliance:</span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li style=\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We may disclose personal information if required to do so by law or in response to valid legal requests or legal process.</span></p></li></ul><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Data Security:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"4\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We take reasonable measures to protect the security of the personal information collected through our LMS. However, please note that no method of transmission or storage is completely secure, and we cannot guarantee the absolute security of your data. We encourage users to take steps to protect their personal information, such as using strong passwords and keeping them confidential.</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Third-Party Links:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"5\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Our LMS may contain links to third-party websites or resources. We are not responsible for the privacy practices or content of such third-party sites. We encourage users to review the privacy policies of those websites when accessing them through our LMS.</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Children\'s Privacy:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"6\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Our LMS is not intended for use by children under the age of 13. We do not knowingly collect personal information from children. If we become aware that personal information has been inadvertently collected from a child under 13, we will take reasonable steps to delete such information from our records.</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Changes to this Privacy Policy:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"7\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We reserve the right to modify this Privacy Policy at any time. Any changes will be effective immediately upon posting the updated Privacy Policy on our LMS. By continuing to use our LMS after any modifications, you agree to be bound by the revised Privacy Policy.</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Contact Us:</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"8\"><li style=\"list-style-type: decimal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\" aria-level=\"1\"><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at [insert contact details].</span></p></li></ol><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Please note that this sample privacy policy serves as a general guide and may need to be customized based on the specific features, functionalities, and legal requirements of your Learning Management System.</span></p><p><br></p>', NULL, 1, 1, NULL, NULL, '2023-05-22 17:23:12', '2023-05-23 03:33:30', NULL, NULL, NULL),
(2, 'Terms And Condition', 'terms-and-condition', '\"[\\\"19\\\"]\"', '1', NULL, '<h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Introduction</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Welcome to Jeddah University incubator (“company”, “we”, “our”, “us”)! These terms of service (“terms”, “terms of service”) govern your use of our website located at lms.Onesttech.Com (together or individually “service”) operated by Jeddah University incubator. Our privacy policy also governs your use of our service and explains how we collect, safeguard and disclose information that results from your use of our web pages. Your agreement with us includes these terms and our privacy policy (“agreements”). You acknowledge that you have read and understood agreements, and agree to be bound of them. If you do not agree with (or cannot comply with) agreements, then you may not use the service, but please let us know by emailing at onesttech@gmail.Com so we can try to find a solution. These terms apply to all visitors, users and others who wish to access or use service.</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Communications</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">By using our service, you agree to subscribe to newsletters, marketing or promotional materials and other information we may send. However, you may opt out of receiving any, or all, of these communications from us by following the unsubscribe link or by emailing at onesttech@gmail.com</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Purchases</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">If you wish to purchase any product or service made available through service (“purchase”), you may be asked to supply certain information relevant to your purchase including but not limited to, your credit or debit card number, the expiration date of your card, your billing address, and your shipping information. You represent and warrant that: (i) you have the legal right to use any card(s) or other payment method(s) in connection with any purchase; and that (ii) the information you supply to us is true, correct and complete.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We may employ the use of third party services for the purpose of facilitating payment and the completion of purchases. By submitting your information, you grant us the right to provide the information to these third parties subject to our privacy policy.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We reserve the right to refuse or cancel your order at any time for reasons including but not limited to: product or service availability, errors in the description or price of the product or service, error in your order or other reasons.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We reserve the right to refuse or cancel your order if fraud or an unauthorized or illegal transaction is suspected.</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Contests, sweepstakes and promotions</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Any contests, sweepstakes or other promotions (collectively, “promotions”) made available through service may be governed by rules that are separate from these terms of service. If you participate in any promotions, please review the applicable rules as well as our privacy policy. If the rules for a promotion conflict with these terms of service, promotion rules will apply.</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Subscriptions</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Some parts of service are billed on a subscription basis (\"subscription(s)\"). You will be billed in advance on a recurring and periodic basis (\"billing cycle\"). Billing cycles will be set depending on the type of subscription plan you select when purchasing a subscription.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">At the end of each billing cycle, your subscription will automatically renew under the exact same conditions unless you cancel it or Jeddah University incubator cancels it. You may cancel your subscription renewal either through your online account management page or by contacting support.onesttech@gmail.com customer support team.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">A valid payment method is required to process the payment for your subscription. You shall provide Jeddah University incubator with accurate and complete billing information that may include but not limited to full name, address, state, postal or zip code, telephone number, and a valid payment method information. By submitting such payment information, you automatically authorize Jeddah University incubator to charge all subscription fees incurred through your account to any such payment instruments.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Should automatic billing fail to occur for any reason, Jeddah University incubator reserves the right to terminate your access to the service with immediate effect.</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Refunds</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We issue refunds for contracts within 30 days of the original purchase of the contract.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Content</span></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Our service allows you to post, link, store, share and otherwise make available certain information, text, graphics, videos, or other material (“content”). You are responsible for content that you post on or through service, including its legality, reliability, and appropriateness.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">By posting content on or through service, you represent and warrant that: (i) content is yours (you own it) and/or you have the right to use it and the right to grant us the rights and license as provided in these terms, and (ii) that the posting of your content on or through service does not violate the privacy rights, publicity rights, copyrights, contract rights or any other rights of any person or entity. We reserve the right to terminate the account of anyone found to be infringing on a copyright.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">You retain any and all of your rights to any content you submit, post or display on or through service and you are responsible for protecting those rights. We take no responsibility and assume no liability for content you or any third party posts on or through service. However, by posting content using service you grant us the right and license to use, modify, publicly perform, publicly display, reproduce, and distribute such content on and through service. You agree that this license includes the right for us to make your content available to other users of service, who may also use your content subject to these terms.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Jeddah University incubator has the right but not the obligation to monitor and edit all content provided by users.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">In addition, content found on or through this service are the property of Jeddah University incubator or used with permission. You may not distribute, modify, transmit, reuse, download, repost, copy, or use said content, whether in whole or in part, for commercial purposes or for personal gain, without express advance written permission from us.</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Prohibited uses</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">You may use service only for lawful purposes and in accordance with terms. You agree not to use service:</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.1. In any way that violates any applicable national or international law or regulation.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.2. For the purpose of exploiting, harming, or attempting to exploit or harm minors in any way by exposing them to inappropriate content or otherwise.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.3. To transmit, or procure the sending of, any advertising or promotional material, including any “junk mail”, “chain letter,” “spam,” or any other similar solicitation.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.4. To impersonate or attempt to impersonate company, a company employee, another user, or any other person or entity.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.5. In any way that infringes upon the rights of others, or in any way is illegal, threatening, fraudulent, or harmful, or in connection with any unlawful, illegal, fraudulent, or harmful purpose or activity</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.6. To engage in any other conduct that restricts or inhibits anyone’s use or enjoyment of service, or which, as determined by us, may harm or offend company or users of service or expose them to liability.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.1. Use service in any manner that could disable, overburden, damage, or impair service or interfere with any other party’s use of service, including their ability to engage in real time activities through service.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.2. Use any robot, spider, or other automatic device, process, or means to access service for any purpose, including monitoring or copying any of the material on service.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.3. Use any manual process to monitor or copy any of the material on service or for any other unauthorized purpose without our prior written consent.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.4. Use any device, software, or routine that interferes with the proper working of service.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.5. Introduce any viruses, trojan horses, worms, logic bombs, or other material which is malicious or technologically harmful.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.6. Attempt to gain unauthorized access to, interfere with, damage, or disrupt any parts of service, the server on which service is stored, or any server, computer, or database connected to service.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.7. Attack service via a denial-of-service attack or a distributed denial-of-service attack.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.8. Take any action that may damage or falsify company rating.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">0.9. Otherwise attempt to interfere with the proper working of service.</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Copyright policy</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">We respect the intellectual property rights of others. It is our policy to respond to any claim that content posted on service infringes on the copyright or other intellectual property rights (“infringement”) of any person or entity.</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">If you are a copyright owner, or authorised on behalf of one, and you believe that the copyrighted work has been copied in a way that constitutes copyright infringement, please submit your claim via email to onesttech@gmail.Com, with the subject line: “copyright infringement” and include in your claim a detailed description of the alleged infringement as detailed below, under “dmca notice and procedure for copyright infringement claims”</span></p><p><br></p><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">You may be held accountable for damages (including costs and attorneys’ fees) for misrepresentation or bad-faith claims on the infringement of any content found on and/or through service on your copyright.</span></p><p><br></p><h1 style=\"line-height:1.38;margin-top:20pt;margin-bottom:6pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">Acknowledgement</span></h1><p style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">By using service or other services provided by us, you acknowledge that you have read these terms of service and agree to be bound by them.</span></p><p><br></p>', NULL, 1, 1, NULL, NULL, '2023-05-22 17:23:12', '2023-05-23 03:28:19', NULL, NULL, NULL),
(3, 'About Us', 'about-us', '\"[\\\"17\\\",\\\"18\\\",\\\"19\\\"]\"', '3', '2', '<h3 class=\"title max_400 \" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 24px; font-weight: 600; line-height: 58px; font-size: 48px; font-family: var(--Inter); max-width: 405px; text-transform: capitalize;\">Best Digital Online Education</h3><p class=\"description_one\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 0px; font-family: var(--Inter); hyphens: auto; line-height: 1.6;\">There are many variations of passages of lorem in free market to available, but the majority have suffered alteration in some form, by injected humour, or randomised words.There are many variations of passages of lorem in free market to available, but the majority have suffered alteration in some form, by injected humour, or randomised words</p><p class=\"description_two\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 24px 0px 40px; font-family: var(--Inter); hyphens: auto; line-height: 1.6;\">Variations of passages of lorem in free market to available, but the majority have suffered alteration in some form, by injected humour, or randomised words.but the majority have suffered alteration in some form, by injected humour, or randomised words</p><p class=\"description_one\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 0px; font-family: var(--Inter); hyphens: auto; line-height: 1.6;\">There are many variations of passages of lorem in free market to available, but the majority have suffered alteration in some form, by injected humour, or randomised words.There are many variations of passages of lorem in free market to available, but the majority have suffered alteration in some form, by injected humour, or randomised words</p><p class=\"description_two\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 24px 0px 40px; font-family: var(--Inter); hyphens: auto; line-height: 1.6;\">Variations of passages of lorem in free market to available, but the majority have suffered alteration in some form, by injected humour, or randomised words.but the majority have suffered alteration in some form, by injected humour, or randomised words</p>', NULL, 1, 1, NULL, NULL, '2023-05-22 17:23:12', '2023-05-22 20:32:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payout_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` enum('unpaid','processing','paid','failed') NOT NULL DEFAULT 'unpaid',
  `payment_details` text DEFAULT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `credentials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`credentials`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `name`, `image_id`, `status_id`, `credentials`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'paypal', 'paypal', NULL, 1, NULL, '2023-12-30 14:49:11', '2023-12-30 14:49:11', NULL),
(2, 'cridet card', 'cridet card', NULL, 1, NULL, '2023-12-30 14:49:11', '2023-12-30 14:49:11', NULL),
(3, 'direct bank ', 'direct bank', NULL, 1, NULL, '2023-12-30 14:49:12', '2023-12-30 14:49:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `payment_status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `payment_details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_logs`
--

CREATE TABLE `payout_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payout_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `attribute`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'users', '{\"read\":\"user_read\",\"create\":\"user_create\",\"update\":\"user_update\",\"delete\":\"user_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(2, 'roles', '{\"read\":\"role_read\",\"create\":\"role_create\",\"update\":\"role_update\",\"delete\":\"role_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(3, 'language', '{\"read\":\"language_read\",\"create\":\"language_create\",\"update\":\"language_update\",\"update terms\":\"language_update_terms\",\"delete\":\"language_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(4, 'ai_support', '{\"ai_support\":\"ai_support\",\"ai_support_find\":\"ai_support_find\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(5, 'course_category', '{\"read\":\"course_category_read\",\"create\":\"course_category_create\",\"store\":\"course_category_store\",\"update\":\"course_category_update\",\"delete\":\"course_category_delete\",\"popular_course_category_list\":\"popular_course_category_list\",\"popular_course_category_added\":\"popular_course_category_added\",\"popular_course_category_deleted\":\"popular_course_category_deleted\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(6, 'course', '{\"read\":\"course_read\",\"create\":\"course_create\",\"store\":\"course_store\",\"update\":\"course_update\",\"delete\":\"course_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(7, 'course_assignment', '{\"assignment_list\":\"course_assignment_list\",\"assignment_create\":\"course_assignment_create\",\"assignment_store\":\"course_assignment_store\",\"assignment_update\":\"course_assignment_update\",\"assignment_delete\":\"course_assignment_delete\",\"assignment_submission_list\":\"course_assignment_submission_list\",\"assignment_submission_view\":\"course_assignment_submission_view\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(8, 'course_noticeboard', '{\"noticeboard_list\":\"course_noticeboard_list\",\"noticeboard_create\":\"course_noticeboard_create\",\"noticeboard_store\":\"course_noticeboard_store\",\"noticeboard_update\":\"course_noticeboard_update\",\"noticeboard_delete\":\"course_noticeboard_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(9, 'course_curriculum', '{\"course_curriculum\":\"course_curriculum\",\"course_curriculum_create\":\"course_curriculum_create\",\"course_curriculum_store\":\"course_curriculum_store\",\"course_curriculum_update\":\"course_curriculum_update\",\"course_curriculum_delete\":\"course_curriculum_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(10, 'course_lesson', '{\"course_lesson\":\"course_lesson\",\"course_lesson_create\":\"course_lesson_create\",\"course_lesson_store\":\"course_lesson_store\",\"course_lesson_update\":\"course_lesson_update\",\"course_lesson_delete\":\"course_lesson_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(11, 'course_quiz', '{\"course_quiz\":\"course_quiz_list\",\"course_quiz_create\":\"course_quiz_create\",\"course_quiz_store\":\"course_quiz_store\",\"course_quiz_update\":\"course_quiz_update\",\"course_quiz_delete\":\"course_quiz_delete\",\"quiz_submission_list\":\"course_quiz_submission_list\",\"quiz_submission_view\":\"course_quiz_submission_view\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(12, 'course_question', '{\"course_question\":\"course_question_list\",\"course_question_create\":\"course_question_create\",\"course_question_store\":\"course_question_store\",\"course_question_update\":\"course_question_update\",\"course_question_delete\":\"course_question_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(13, 'enroll', '{\"list\":\"enroll_list\",\"enroll_invoice\":\"enroll_invoice\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(14, 'certificate', '{\"list\":\"certificate_list\",\"view\":\"certificate_view\",\"download\":\"certificate_download\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(15, 'certificate_template', '{\"read\":\"certificate_template_read\",\"create\":\"certificate_template_create\",\"store\":\"certificate_template_store\",\"update\":\"certificate_template_update\",\"delete\":\"certificate_template_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(16, 'mentor', '{\"read\":\"instructor_list\",\"instructor_request_list\":\"instructor_request_list\",\"instructor_view\":\"instructor_view\",\"instructor_approve\":\"instructor_approve\",\"instructor_suspend\":\"instructor_suspend\",\"instructor_suspend_list\":\"instructor_suspend_list\",\"instructor_re_activate\":\"instructor_re_activate\",\"create\":\"instructor_create\",\"store\":\"instructor_store\",\"update\":\"instructor_update\",\"instructor_login\":\"instructor_login\",\"instructor_add_institute\":\"instructor_add_institute\",\"instructor_store_institute\":\"instructor_store_institute\",\"instructor_update_institute\":\"instructor_update_institute\",\"instructor_delete_institute\":\"instructor_delete_institute\",\"instructor_add_experience\":\"instructor_add_experience\",\"instructor_store_experience\":\"instructor_store_experience\",\"instructor_update_experience\":\"instructor_update_experience\",\"instructor_delete_experience\":\"instructor_delete_experience\",\"instructor_add_skill\":\"instructor_add_skill\",\"instructor_store_skill\":\"instructor_store_skill\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(17, 'student', '{\"read\":\"student_list\",\"student_suspend\":\"student_suspend\",\"student_re_activate\":\"student_re_activate\",\"create\":\"student_create\",\"store\":\"student_store\",\"update\":\"student_update\",\"student_login\":\"student_login\",\"student_add_institute\":\"student_add_institute\",\"student_store_institute\":\"student_store_institute\",\"student_update_institute\":\"student_update_institute\",\"student_delete_institute\":\"student_delete_institute\",\"student_add_experience\":\"student_add_experience\",\"student_store_experience\":\"student_store_experience\",\"student_update_experience\":\"student_update_experience\",\"student_delete_experience\":\"student_delete_experience\",\"student_add_skill\":\"student_add_skill\",\"student_store_skill\":\"student_store_skill\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(18, 'review', '{\"read\":\"review_list\",\"review_view\":\"review_view\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(19, 'payouts', '{\"instructor_payout_list\":\"instructor_payout_list\",\"instructor_payout_request_list\":\"instructor_payout_request_list\",\"instructor_unpaid_payout_list\":\"instructor_unpaid_payout_list\",\"instructor_rejected_payout_list\":\"instructor_rejected_payout_list\",\"instructor_payout_details\":\"instructor_payout_details\",\"instructor_payout_request_approve\":\"instructor_payout_request_approve\",\"instructor_payout_request_reject\":\"instructor_payout_request_reject\",\"instructor_make_payout\":\"instructor_make_payout\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(20, 'account', '{\"read\":\"account_list\",\"create\":\"account_create\",\"store\":\"account_store\",\"update\":\"account_update\",\"delete\":\"account_delete\",\"income_list\":\"income_list\",\"expense_list\":\"expense_list\",\"transaction_list\":\"transaction_list\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(21, 'featured_course', '{\"read\":\"featured_course_list\",\"create\":\"featured_course_create\",\"store\":\"featured_course_store\",\"update\":\"featured_course_update\",\"delete\":\"featured_course_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(22, 'discount_course', '{\"read\":\"discount_course_list\",\"create\":\"discount_course_create\",\"store\":\"discount_course_store\",\"update\":\"discount_course_update\",\"delete\":\"discount_course_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(23, 'image_gallery', '{\"read\":\"image_gallery_read\",\"image_gallery_update\":\"image_gallery_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(24, 'reports', '{\"report_student_engagement\":\"report_student_engagement\",\"report_student_engagement_export\":\"report_student_engagement_export\",\"report_instructor_engagement\":\"report_instructor_engagement\",\"report_instructor_engagement_export\":\"report_instructor_engagement_export\",\"report_purchase_history\":\"report_purchase_history\",\"report_purchase_history_export\":\"report_purchase_history_export\",\"report_course_completion\":\"report_course_completion\",\"report_course_completion_export\":\"report_course_completion_export\",\"report_student_performance\":\"report_student_performance\",\"report_student_performance_export\":\"report_student_performance_export\",\"report_admin_transaction\":\"report_admin_transaction\",\"report_admin_transaction_export\":\"report_admin_transaction_export\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(25, 'testimonial', '{\"read\":\"testimonial_list\",\"create\":\"testimonial_create\",\"store\":\"testimonial_store\",\"update\":\"testimonial_update\",\"delete\":\"testimonial_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(26, 'home_section_settings', '{\"read\":\"home_section_settings_read\",\"create\":\"home_section_settings_create\",\"store\":\"home_section_settings_store\",\"update\":\"home_section_settings_update\",\"delete\":\"home_section_settings_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(27, 'footer_menu', '{\"read\":\"footer_menu_read\",\"create\":\"footer_menu_create\",\"store\":\"footer_menu_store\",\"update\":\"footer_menu_update\",\"delete\":\"footer_menu_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(28, 'payment_method', '{\"read\":\"payment_method_read\",\"update\":\"payment_method_update\",\"delete\":\"payment_method_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(29, 'general settings', '{\"read\":\"general_settings_read\",\"update\":\"general_settings_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(30, 'storage settings', '{\"read\":\"storage_settings_read\",\"update\":\"storage_settings_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(31, 'email settings', '{\"read\":\"email_settings_read\",\"update\":\"email_settings_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(32, 'seo settings', '{\"read\":\"seo_settings_read\",\"update\":\"seo_settings_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(33, 'social login settings', '{\"read\":\"social_login_settings_read\",\"update\":\"social_login_settings_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(34, 'blog_category', '{\"read\":\"blog_category_read\",\"create\":\"blog_category_create\",\"store\":\"blog_category_store\",\"update\":\"blog_category_update\",\"delete\":\"blog_category_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(35, 'blog', '{\"read\":\"blog_read\",\"create\":\"blog_create\",\"store\":\"blog_store\",\"update\":\"blog_update\",\"delete\":\"blog_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(36, 'slider', '{\"read\":\"slider_read\",\"create\":\"slider_create\",\"store\":\"slider_store\",\"update\":\"slider_update\",\"delete\":\"slider_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(37, 'page', '{\"read\":\"page_read\",\"create\":\"page_create\",\"store\":\"page_store\",\"update\":\"page_update\",\"delete\":\"page_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(38, 'brand', '{\"read\":\"brand_read\",\"create\":\"brand_create\",\"store\":\"brand_store\",\"update\":\"brand_update\",\"delete\":\"brand_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(39, 'contact', '{\"read\":\"contact_read\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(40, 'addon', '{\"read\":\"addon_read\",\"create\":\"addon_create\",\"store\":\"addon_store\",\"update\":\"addon_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(41, 'forum_category', '{\"read\":\"forum_category_read\",\"create\":\"forum_category_create\",\"store\":\"forum_category_store\",\"update\":\"forum_category_update\",\"delete\":\"forum_category_delete\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(42, 'forum', '{\"read\":\"forum_read\",\"create\":\"forum_create\",\"store\":\"forum_store\",\"update\":\"forum_update\",\"delete\":\"forum_delete\",\"forum_featured_manage\":\"forum_featured_manage\",\"forum_status_manage\":\"forum_status_manage\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(43, 'two_fa', '{\"read\":\"2fa_setting\",\"update\":\"2fa_setting_update\"}', '2023-12-30 14:49:11', '2023-12-30 14:49:11'),
(44, 'event_category', '{\"read\":\"event_category_read\",\"create\":\"event_category_create\",\"store\":\"event_category_store\",\"update\":\"event_category_update\",\"delete\":\"event_category_delete\"}', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(45, 'event', '{\"read\":\"event_read\",\"create\":\"event_create\",\"store\":\"event_store\",\"update\":\"event_update\",\"delete\":\"event_delete\",\"requested_event_list\":\"requested_event_list\",\"approved_event_list\":\"approved_event_list\",\"rejected_event_list\":\"rejected_event_list\",\"event_approve\":\"event_approve\",\"event_reject\":\"event_reject\",\"purchase_booking\":\"purchase_booking\",\"report_event_booking\":\"report_event_booking\",\"report_event_booking_export\":\"report_event_booking_export\"}', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(46, 'organization', '{\"read\":\" organization_read\",\"create\":\"organization_create\",\"store\":\"organization_store\",\"organization_suspend\":\"organization_suspend\",\"organization_re_activate\":\"organization_re_activate\",\"organization_request_list\":\"organization_request_list\",\"organization_suspend_list\":\"organization_suspend_list\",\"organization_approve\":\"organization_approve\",\"organization_update\":\"organization_update\",\"organization_delete\":\"organization_delete\",\"organization_login\":\"organization_login\"}', '2023-12-30 14:49:12', '2023-12-30 14:49:12');

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext NOT NULL,
  `quiz_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = single and true/false, 1 = multiple',
  `total_options` int(11) NOT NULL DEFAULT 0,
  `options` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_submits`
--

CREATE TABLE `question_submits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quiz_result_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` double(8,2) NOT NULL DEFAULT 0.00,
  `total_marks` double(8,2) NOT NULL DEFAULT 0.00,
  `point` double(8,2) NOT NULL DEFAULT 0.00,
  `is_submitted` bigint(20) UNSIGNED NOT NULL DEFAULT 10,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(2,1) NOT NULL DEFAULT 0.0,
  `comment` text DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '1', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"ai_support\",\"ai_support_find\",\"course_category_read\",\"course_category_store\",\"course_category_create\",\"course_category_update\",\"course_category_delete\",\"popular_course_category_list\",\"popular_course_category_added\",\"popular_course_category_deleted\",\"course_read\",\"course_store\",\"course_create\",\"course_update\",\"course_delete\",\"course_assignment_list\",\"course_assignment_create\",\"course_assignment_store\",\"course_assignment_update\",\"course_assignment_delete\",\"course_assignment_submission_list\",\"course_assignment_submission_view\",\"course_noticeboard_list\",\"course_noticeboard_create\",\"course_noticeboard_store\",\"course_noticeboard_update\",\"course_noticeboard_delete\",\"course_announcement_list\",\"course_curriculum\",\"course_curriculum_create\",\"course_curriculum_store\",\"course_curriculum_update\",\"course_curriculum_delete\",\"course_lesson\",\"course_lesson_create\",\"course_lesson_store\",\"course_lesson_update\",\"course_lesson_delete\",\"course_quiz_list\",\"course_quiz_create\",\"course_quiz_store\",\"course_quiz_update\",\"course_quiz_delete\",\"course_quiz_submission_list\",\"course_quiz_submission_view\",\"course_question_list\",\"course_question_create\",\"course_question_store\",\"course_question_update\",\"course_question_delete\",\"enroll_list\",\"enroll_invoice\",\"certificate_list\",\"certificate_view\",\"certificate_download\",\"certificate_template_list\",\"certificate_template_create\",\"certificate_template_store\",\"certificate_template_update\",\"certificate_template_edit\",\"certificate_template_delete\",\"instructor_list\",\"instructor_request_list\",\"instructor_view\",\"instructor_approve\",\"instructor_suspend\",\"instructor_suspend_list\",\"instructor_re_activate\",\"instructor_create\",\"instructor_store\",\"instructor_update\",\"instructor_login\",\"instructor_add_institute\",\"instructor_store_institute\",\"instructor_update_institute\",\"instructor_delete_institute\",\"instructor_add_experience\",\"instructor_store_experience\",\"instructor_update_experience\",\"instructor_delete_experience\",\"instructor_add_skill\",\"instructor_store_skill\",\"student_list\",\"student_suspend\",\"student_re_activate\",\"student_create\",\"student_store\",\"student_update\",\"student_login\",\"student_add_institute\",\"student_store_institute\",\"student_update_institute\",\"student_delete_institute\",\"student_add_experience\",\"student_store_experience\",\"student_update_experience\",\"student_delete_experience\",\"student_add_skill\",\"student_store_skill\",\"certificate_template_read\",\"review_list\",\"review_view\",\"instructor_payout_list\",\"instructor_payout_request_list\",\"instructor_unpaid_payout_list\",\"instructor_rejected_payout_list\",\"instructor_payout_details\",\"instructor_payout_request_approve\",\"instructor_payout_request_reject\",\"instructor_make_payout\",\"account_list\",\"account_create\",\"account_store\",\"account_update\",\"account_delete\",\"income_list\",\"expense_list\",\"transaction_list\",\"contact_read\",\"featured_course_list\",\"featured_course_create\",\"featured_course_store\",\"featured_course_update\",\"featured_course_delete\",\"discount_course_list\",\"discount_course_create\",\"discount_course_store\",\"discount_course_update\",\"discount_course_delete\",\"image_gallery_read\",\"image_gallery_update\",\"report_student_engagement\",\"report_student_engagement_export\",\"report_instructor_engagement\",\"report_instructor_engagement_export\",\"report_purchase_history\",\"report_purchase_history_export\",\"report_course_completion\",\"report_course_completion_export\",\"report_student_performance\",\"report_student_performance_export\",\"report_admin_transaction\",\"report_admin_transaction_export\",\"language_read\",\"language_create\",\"language_update\",\"language_update_terms\",\"language_delete\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_update\",\"email_settings_read\",\"email_settings_update\",\"seo_settings_read\",\"seo_settings_update\",\"social_login_settings_read\",\"social_login_settings_update\",\"testimonial_read\",\"testimonial_create\",\"testimonial_store\",\"testimonial_update\",\"testimonial_delete\",\"blog_category_read\",\"blog_category_store\",\"blog_category_create\",\"blog_category_update\",\"blog_category_delete\",\"blog_read\",\"blog_store\",\"blog_create\",\"blog_update\",\"blog_delete\",\"slider_read\",\"slider_store\",\"slider_create\",\"slider_update\",\"slider_delete\",\"page_read\",\"page_store\",\"page_create\",\"page_update\",\"page_delete\",\"brand_read\",\"brand_store\",\"brand_create\",\"brand_update\",\"brand_delete\",\"payment_method_read\",\"payment_method_update\",\"payment_method_delete\",\"home_section_settings_read\",\"home_section_settings_create\",\"home_section_settings_store\",\"home_section_settings_update\",\"home_section_settings_delete\",\"footer_menu_read\",\"footer_menu_store\",\"footer_menu_create\",\"footer_menu_update\",\"footer_menu_delete\",\"addon_list\",\"addon_create\",\"addon_store\",\"addon_update\",\"forum_list\",\"forum_create\",\"forum_store\",\"forum_update\",\"forum_delete\",\"forum_status_manage\",\"forum_featured_manage\",\"forum_category_read\",\"forum_category_store\",\"forum_category_create\",\"forum_category_update\",\"forum_category_delete\",\"event_create\",\"event_store\",\"event_update\",\"event_delete\",\"requested_event_list\",\"approved_event_list\",\"rejected_event_list\",\"event_approve\",\"event_reject\",\"purchase_booking\",\"report_event_booking\",\"report_event_booking_export\",\"event_category_read\",\"event_category_store\",\"event_category_create\",\"event_category_update\",\"event_category_delete\"]', '2023-12-30 14:49:10', '2023-12-30 14:49:12'),
(2, 'Admin', '1', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"language_read\",\"language_create\",\"language_update_terms\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"recaptcha_settings_update\",\"email_settings_read\",\"social_login_settings_read\",\"social_login_settings_update\",\"forum_list\",\"forum_create\",\"forum_store\",\"forum_update\",\"forum_delete\",\"forum_status_manage\",\"forum_featured_manage\",\"forum_category_read\",\"forum_category_store\",\"forum_category_create\",\"forum_category_update\",\"forum_category_delete\",\"event_create\",\"event_store\",\"event_update\",\"event_delete\",\"requested_event_list\",\"approved_event_list\",\"rejected_event_list\",\"event_approve\",\"event_reject\",\"purchase_booking\",\"report_event_booking\",\"report_event_booking_export\",\"event_category_read\",\"event_category_store\",\"event_category_create\",\"event_category_update\",\"event_category_delete\"]', '2023-12-30 14:49:10', '2023-12-30 14:49:12'),
(3, 'Manager', '1', '[\"user_read\",\"user_create\",\"role_read\",\"language_read\",\"language_create\",\"general_settings_read\",\"storage_settings_read\",\"email_settings_read\"]', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(4, 'Student', '1', '[\"user_read\",\"role_read\",\"language_read\"]', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(5, 'Graduation Student', '1', '[\"user_read\",\"role_read\",\"language_read\"]', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(6, 'Mentor', '1', NULL, '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(7, 'Organization', '1', NULL, '2023-12-30 14:49:12', '2023-12-30 14:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'application_name', 'Jeddah University incubator', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(2, 'application_details', 'Lorem ipsum dolor sit amet consectetur. Morbi cras sodales elementum sed. Suspendisse adipiscing arcu magna leo sodales pellentesque. Ac iaculis mattis ornare rhoncus nibh mollis arcu.', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(3, 'footer_text', '© 2023 Black Hourse . All rights reserved.', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(4, 'file_system', 'local', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(5, 'aws_access_key_id', 'AKIA3OGN2RWSOIIG3A4J', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(6, 'aws_secret_key', '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', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(7, 'aws_region', 'ap-southeast-1', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(8, 'aws_bucket', 'onest-starter-kit', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(9, 'aws_endpoint', 'https://s3.ap-southeast-1.amazonaws.com', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(10, 'recaptcha_sitekey', '6Lfn6nQhAAAAAKYauxvLddLtcqSn1yqn-HRn_CbN', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(11, 'recaptcha_secret', '6Lfn6nQhAAAAABOzRtEjhZYB49Dd4orv41thfh02', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(12, 'recaptcha_status', '0', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(13, 'mail_drive', 'smtp', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(14, 'mail_host', 'smtp.gmail.com', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(15, 'mail_address', 'sales@onesttech.com', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(16, 'from_name', 'O-Academy', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(17, 'mail_username', 'sales@onesttech.com', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(18, 'firebase_key', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(19, 'country', 'Bangladesh', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(20, 'mail_password', 'eyJpdiI6Im9HcEU0Wk9YR08yZ0Joa2FWQjRVNHc9PSIsInZhbHVlIjoiamdTcGR2UjVvK0lnbW9wL3d3Q29TS3lkNCt0L1VRZnJHTHNmOUljQjRNUT0iLCJtYWMiOiI4ODlkODZjNmY4MzYwYjgzNzM4YWExN2ZjMzhjNjdkNWFhYzFiMjVlYjEwY2E1OWE5OTIzNWE3YzhjY2ViMGI2IiwidGFnIjoiIn0=', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(21, 'mail_port', '587', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(22, 'encryption', 'tls', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(23, 'default_language', 'en', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(24, 'currency', 'USD', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(25, 'currency_symbol', '$', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(26, 'time_zone', 'Asia/Dhaka', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(27, 'light_logo', 'uploads/backend/uploads/settings/light_logo2023-04-13-m3zlgbczk1iu-original.png', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(28, 'dark_logo', 'uploads/backend/uploads/settings/dark_logo2023-04-13-6fftzbk9pefm-original.png', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(29, 'favicon', 'uploads/backend/uploads/settings/favicon2023-04-13-ukjghc1c6zf3-original.png', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(30, 'date_format', 'd-m-Y', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(31, 'author', 'Onest Tech', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(32, 'meta_keyword', 'lms, academy, eclass, elearning, education, online course,  learning management system, live class, live meeting, lms, online education, online teaching, udemy, quiz, school, skillshare', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(33, 'meta_description', 'Jeddah University incubator - Learning Management System web application. web-based responsive application that includes an online learning management system, as well as admin, instructor panel and student panel. This is a completely ready-to-use learning', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(34, 'email_address', 'info@gmail.com', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(35, 'phone_number', '+20 1111 111 111', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(36, 'office_address', 'Cario, Egypt', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(37, 'office_hours', 'Monday - Friday : 10:00am to 6:00pm', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(38, 'application_map', '30.0444, 31.2357', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(39, 'facebook_setup', 'off', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(40, 'facebook_client_id', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(41, 'facebook_client_secret', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(42, 'google_setup', 'off', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(43, 'google_client_id', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(44, 'google_client_secret', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(45, 'github_setup', 'off', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(46, 'github_client_id', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(47, 'github_client_secret', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(48, 'linkedin_setup', 'off', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(49, 'linkedin_client_id', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(50, 'linkedin_client_secret', '', '2023-12-30 14:49:12', '2023-12-30 14:49:12'),
(51, 'payment_getaway', '1', '2023-12-30 14:49:12', '2023-12-30 14:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `serial` bigint(20) UNSIGNED NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` text DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startups`
--

CREATE TABLE `startups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `mission` text NOT NULL,
  `vision` text NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contact_num` varchar(255) NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `founder_name` varchar(255) NOT NULL,
  `founder_role` varchar(255) NOT NULL,
  `founder_email` varchar(255) NOT NULL,
  `founder_linkedin_url` varchar(255) DEFAULT NULL,
  `founder_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `co_founder_name` varchar(255) NOT NULL,
  `co_founder_role` varchar(255) NOT NULL,
  `co_founder_email` varchar(255) NOT NULL,
  `co_founder_linkedin_url` varchar(255) DEFAULT NULL,
  `co_founder_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `startups`
--

INSERT INTO `startups` (`id`, `title`, `industry`, `description`, `mission`, `vision`, `website`, `email`, `contact_num`, `image_id`, `founder_name`, `founder_role`, `founder_email`, `founder_linkedin_url`, `founder_image_id`, `co_founder_name`, `co_founder_role`, `co_founder_email`, `co_founder_linkedin_url`, `co_founder_image_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"sdfsdf\",\"ar\":\"\\u064a\\u0634\\u0633\\u064a\"}', '{\"en\":\"sdf\",\"ar\":\"\\u0634\\u0633\\u064a\"}', '{\"en\":\"sdf\",\"ar\":\"\\u0634\\u0633\\u064a\"}', '{\"en\":\"sdf\",\"ar\":\"\\u0634\\u0633\\u064a\"}', '{\"en\":\"sdf\",\"ar\":\"\\u0634\\u0633\\u064a\"}', '#dfsdf', 'sdf@sadasd.com', '20', NULL, '{\"en\":\"dasd\",\"ar\":\"\\u0633\\u064a\\u0634\\u0633\\u064a\"}', '{\"en\":\"dasd\",\"ar\":\"\\u064a\\u0634\\u0633\\u064a\"}', 'dasd@cdasd.com', 'ddd', NULL, '{\"en\":\"dasd\",\"ar\":\"\\u0634\\u0633\\u064a\"}', '{\"en\":\"asd\",\"ar\":\"\\u0634\\u0633\\u064a\"}', 'asd@sdadas.com', 'asd', NULL, 4, '2023-12-30 14:54:39', '2023-12-30 14:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `startup_advisors`
--

CREATE TABLE `startup_advisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `advisors_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_highlights`
--

CREATE TABLE `startup_highlights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `market_size` double(8,2) DEFAULT NULL,
  `trees_saved` double(8,2) DEFAULT NULL,
  `compliance_european_standards` double(8,2) DEFAULT NULL,
  `sales_pipeline` double(8,2) DEFAULT NULL,
  `profit_margin` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_how_it_works`
--

CREATE TABLE `startup_how_it_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `how_it_works_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_impact`
--

CREATE TABLE `startup_impact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `impact_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_partnerships`
--

CREATE TABLE `startup_partnerships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `partnership_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_problem`
--

CREATE TABLE `startup_problem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `problem_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_solution`
--

CREATE TABLE `startup_solution` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `solution_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_team`
--

CREATE TABLE `startup_team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `team_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `startup_traction`
--

CREATE TABLE `startup_traction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startup_id` bigint(20) UNSIGNED NOT NULL,
  `trees_saved` double DEFAULT NULL,
  `current_customers` bigint(20) UNSIGNED DEFAULT NULL,
  `boards_produced` bigint(20) UNSIGNED DEFAULT NULL,
  `revenues` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL COMMENT 'hare name=status situation',
  `class` varchar(50) DEFAULT NULL COMMENT 'hare class=what type of class name property like success,danger,info,purple',
  `color_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `class`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 'Active', 'success', '449d44', NULL, NULL),
(2, 'Inactive', 'danger', 'c9302c', NULL, NULL),
(3, 'Pending', 'warning', 'ec971f', NULL, NULL),
(4, 'Approve', 'success', '449d44', NULL, NULL),
(5, 'Suspended', 'danger', 'c9302c', NULL, NULL),
(6, 'Reject', 'danger', 'c9302c', NULL, NULL),
(7, 'Cancel', 'danger', 'c9302c', NULL, NULL),
(8, 'Paid', 'success', '449d44', NULL, NULL),
(9, 'Unpaid', 'danger', 'c9302c', NULL, NULL),
(10, 'No', 'danger', 'c9302c', NULL, NULL),
(11, 'Yes', 'primary', '337ab7', NULL, NULL),
(12, 'Live', 'tertiary', '449d44', NULL, NULL),
(13, 'Recorded', 'primary', '337ab7', NULL, NULL),
(14, 'Text', 'warning', 'ec971f', NULL, NULL),
(15, 'Youtube', 'primary', '337ab7', NULL, NULL),
(16, 'Vimeo', 'primary', '337ab7', NULL, NULL),
(17, 'Html5', 'primary', '337ab7', NULL, NULL),
(18, 'Beginner', 'primary', '337ab7', NULL, NULL),
(19, 'Intermediate', 'success', '449d44', NULL, NULL),
(20, 'Advanced', 'danger', 'c9302c', NULL, NULL),
(21, 'Draft', 'warning', 'ec971f', NULL, NULL),
(22, 'Public', 'success', '449d44', NULL, NULL),
(23, 'Private', 'danger', 'c9302c', NULL, NULL),
(24, 'Fail', 'danger', 'c9302c', NULL, NULL),
(25, 'Passed', 'success', '449d44', NULL, NULL),
(26, 'Credit', 'success', '449d44', NULL, NULL),
(27, 'Debit', 'danger', 'c9302c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_me` longtext DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = male',
  `date_of_birth` date DEFAULT NULL,
  `badges` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`badges`)),
  `education` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`education`)),
  `experience` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`experience`)),
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`skills`)),
  `points` int(11) NOT NULL DEFAULT 0,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `about_me`, `designation`, `address`, `gender`, `date_of_birth`, `badges`, `education`, `experience`, `skills`, `points`, `country_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 4, '2023-12-30 14:49:11', '2023-12-30 14:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `original` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('image','video','file') NOT NULL DEFAULT 'image',
  `paths` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`paths`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `original`, `name`, `type`, `paths`, `created_at`, `updated_at`) VALUES
(1, 'uploads/course/thumbnail/thumbnail2023-05-21-r0mezpajb4xn-original.png', '2023-05-21-r0mezpajb4xn-original.png', 'image', '{\"100x100\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-c9mkv0komrib-1.webp\",\"300x300\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-cvkpezdgonsm-2.webp\",\"600x600\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-r7ariuzjkirc-3.webp\"}', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(2, 'uploads/course/thumbnail/thumbnail2023-05-21-7q1lul7rg9ya-original.png', '2023-05-21-7q1lul7rg9ya-original.png', 'image', '{\"100x100\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-8w2wsxpjtqqj-1.webp\",\"300x300\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-irexgnkw2jsu-2.webp\",\"600x600\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-gd4nntjbvzha-3.webp\"}', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(3, 'uploads/course/thumbnail/thumbnail2023-05-21-vvf4puderasx-original.png', '2023-05-21-vvf4puderasx-original.png', 'image', '{\"100x100\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-giidvwkpfyzg-1.webp\",\"300x300\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-fchclqsqjhm4-2.webp\",\"600x600\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-dmuvt31ywwp2-3.webp\"}', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(4, 'uploads/course/thumbnail/thumbnail2023-05-21-3dlnsmo7fpu1-original.png', '2023-05-21-3dlnsmo7fpu1-original.png', 'image', '{\"100x100\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-wqkcmgateskq-1.webp\",\"300x300\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-luyce8itnfrj-2.webp\",\"600x600\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-05-21-uzc7mtncomjy-3.webp\"}', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(5, 'uploads/Slider/image/images2023-04-13-3jkxoroofhj3-original.jpeg', '2023-04-13-3jkxoroofhj3-original.jpeg', 'image', '{\"400x1260\":\"uploads\\/Slider\\/image\\/images2023-04-13-jtaqj3rbr0ww-1.webp\"}', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(6, 'uploads/Slider/image/images2023-04-13-bwzfnilgbx8b-original.jpeg', '2023-04-13-bwzfnilgbx8b-original.jpeg', 'image', '{\"400x1260\":\"uploads\\/Slider\\/image\\/images2023-04-13-lak8ajwixm1l-1.webp\"}', '2023-12-30 14:49:10', '2023-12-30 14:49:10'),
(7, 'uploads/backend/uploads/users/profile_2023-05-19-hnya6dlhgez6-original.jpeg', '2023-05-19-hnya6dlhgez6-original.jpeg', 'image', '[]', '2023-05-19 01:23:23', '2023-05-19 01:23:23'),
(8, 'uploads/course/assignment/submission/assignment_file2023-05-21-3eufi2umceds-Chapter 1 (1st).pdf', '2023-05-21-3eufi2umceds-Chapter 1 (1st).pdf', 'image', '[]', '2023-05-21 02:11:57', '2023-05-21 02:11:57'),
(9, 'uploads/course/assignment/submission/assignment_file2023-05-21-v43fgpwutsze-HRM SAAS Post Installation Documentation For Creating Company.pdf', '2023-05-21-v43fgpwutsze-HRM SAAS Post Installation Documentation For Creating Company.pdf', 'image', '[]', '2023-05-21 02:12:19', '2023-05-21 02:12:19'),
(10, 'uploads/enroll/certificates/certificate2023-05-21-da8vy1folfnh-original.jpeg', '2023-05-21-da8vy1folfnh-original.jpeg', 'image', '[]', '2023-05-21 02:14:52', '2023-05-21 02:14:52'),
(11, 'uploads/instructor/profile2023-05-21-fevgwxqw10ri-original.jpeg', '2023-05-21-fevgwxqw10ri-original.jpeg', 'image', '[]', '2023-05-21 03:02:16', '2023-05-21 03:02:16'),
(12, 'uploads/instructor/profile2023-05-21-hlkrzplgfrih-original.jpeg', '2023-05-21-hlkrzplgfrih-original.jpeg', 'image', '[]', '2023-05-21 04:05:37', '2023-05-21 04:05:37'),
(13, 'uploads/student/profile2023-05-22-dlsp5qab6osj-original.png', '2023-05-22-dlsp5qab6osj-original.png', 'image', '[]', '2023-05-21 19:58:46', '2023-05-21 19:58:46'),
(14, 'uploads/brand/image/images2023-05-22-he5vflyeb9kr-original.png', '2023-05-22-he5vflyeb9kr-original.png', 'image', '{\"50x200\": \"uploads/brand/image/images2023-05-22-wzhlxza8lyii-1.webp\"}', '2023-05-21 22:47:52', '2023-05-21 22:47:52'),
(15, 'uploads/brand/image/images2023-05-22-7qesn3td709t-original.png', '2023-05-22-7qesn3td709t-original.png', 'image', '{\"50x200\": \"uploads/brand/image/images2023-05-22-iueajlo0vhan-1.webp\"}', '2023-05-21 22:48:00', '2023-05-21 22:48:00'),
(16, 'uploads/brand/image/images2023-05-22-r5gsrdtyqeyv-original.png', '2023-05-22-r5gsrdtyqeyv-original.png', 'image', '{\"50x200\": \"uploads/brand/image/images2023-05-22-tuqun1pfyzkx-1.webp\"}', '2023-05-21 22:48:08', '2023-05-21 22:48:08'),
(17, 'uploads/brand/image/images2023-05-22-reqicbgiodiw-original.png', '2023-05-22-reqicbgiodiw-original.png', 'image', '{\"50x200\": \"uploads/brand/image/images2023-05-22-bybftm580waw-1.webp\"}', '2023-05-21 22:48:16', '2023-05-21 22:48:16'),
(18, 'uploads/brand/image/images2023-05-22-jcxi3x8yvktv-original.png', '2023-05-22-jcxi3x8yvktv-original.png', 'image', '{\"50x200\": \"uploads/brand/image/images2023-05-22-belgjhvl0ork-1.webp\"}', '2023-05-21 22:48:24', '2023-05-21 22:48:24'),
(19, 'uploads/cms/testimonials/testimonial2023-05-22-7yowozgrj4du-original.png', '2023-05-22-7yowozgrj4du-original.png', 'image', '[]', '2023-05-21 22:51:06', '2023-05-21 22:51:06'),
(20, 'uploads/cms/testimonials/testimonial2023-05-22-ujjlzzg53vbl-original.png', '2023-05-22-ujjlzzg53vbl-original.png', 'image', '[]', '2023-05-21 22:51:27', '2023-05-21 22:51:27'),
(21, 'uploads/cms/testimonials/testimonial2023-05-22-sni4n4tzmezd-original.jpeg', '2023-05-22-sni4n4tzmezd-original.jpeg', 'image', '[]', '2023-05-21 22:51:35', '2023-05-21 22:51:35'),
(22, 'uploads/cms/testimonials/testimonial2023-05-22-jowoktjr9suc-original.png', '2023-05-22-jowoktjr9suc-original.png', 'image', '[]', '2023-05-21 22:52:47', '2023-05-21 22:52:47'),
(23, 'uploads/cms/testimonials/testimonial2023-05-22-ns4pkieumsp6-original.png', '2023-05-22-ns4pkieumsp6-original.png', 'image', '[]', '2023-05-21 23:23:07', '2023-05-21 23:23:07'),
(24, 'uploads/cms/testimonials/testimonial2023-05-22-cyces1ur0aq9-original.jpeg', '2023-05-22-cyces1ur0aq9-original.jpeg', 'image', '[]', '2023-05-21 23:23:15', '2023-05-21 23:23:15'),
(25, 'uploads/cms/testimonials/testimonial2023-05-22-y3phx5w3o8on-original.jpeg', '2023-05-22-y3phx5w3o8on-original.jpeg', 'image', '[]', '2023-05-21 23:24:04', '2023-05-21 23:24:04'),
(26, 'uploads/cms/testimonials/testimonial2023-05-22-0irtelsdrdts-original.jpeg', '2023-05-22-0irtelsdrdts-original.jpeg', 'image', '[]', '2023-05-21 23:24:35', '2023-05-21 23:24:35'),
(27, 'uploads/course/category/icons/icon2023-05-22-nkxg3gunyt0k-original.png', '2023-05-22-nkxg3gunyt0k-original.png', 'image', '{\"35x35\": \"uploads/course/category/icons/icon2023-05-22-bmteo01ebgtr-1.webp\"}', '2023-05-21 23:32:31', '2023-05-21 23:32:46'),
(28, 'uploads/course/category/icons/icon2023-05-22-zbn2kt2iybpd-original.png', '2023-05-22-zbn2kt2iybpd-original.png', 'image', '{\"35x35\": \"uploads/course/category/icons/icon2023-05-22-xnbuo8v6gyjz-1.webp\"}', '2023-05-21 23:32:55', '2023-05-21 23:32:55'),
(29, 'uploads/course/category/icons/icon2023-05-22-1w7bb7nywg41-original.png', '2023-05-22-1w7bb7nywg41-original.png', 'image', '{\"35x35\": \"uploads/course/category/icons/icon2023-05-22-m6jscgtsn6xc-1.webp\"}', '2023-05-21 23:33:28', '2023-05-21 23:33:28'),
(30, 'uploads/course/category/icons/icon2023-05-22-wppsqzj1wxvu-original.png', '2023-05-22-wppsqzj1wxvu-original.png', 'image', '{\"35x35\": \"uploads/course/category/icons/icon2023-05-22-oictqqa3hslx-1.webp\"}', '2023-05-21 23:33:40', '2023-05-21 23:33:40'),
(31, 'uploads/course/category/icons/icon2023-05-22-vtu9eyp585if-original.png', '2023-05-22-vtu9eyp585if-original.png', 'image', '{\"35x35\": \"uploads/course/category/icons/icon2023-05-22-gzguskhwetuh-1.webp\"}', '2023-05-21 23:33:53', '2023-05-21 23:33:53'),
(32, 'uploads/course/category/icons/icon2023-05-22-vu0m70jrvk3m-original.png', '2023-05-22-vu0m70jrvk3m-original.png', 'image', '{\"35x35\": \"uploads/course/category/icons/icon2023-05-22-ggublet7s43j-1.webp\"}', '2023-05-21 23:34:03', '2023-05-21 23:42:07'),
(33, 'uploads/instructor/profile2023-05-22-oyzafmasgpse-original.png', '2023-05-22-oyzafmasgpse-original.png', 'image', '[]', '2023-05-22 01:16:21', '2023-05-22 01:16:21'),
(34, 'uploads/backend/uploads/users/profile_2023-05-22-c2nlnk5qlbbh-original.png', '2023-05-22-c2nlnk5qlbbh-original.png', 'image', '[]', '2023-05-22 01:17:15', '2023-05-22 03:04:25'),
(35, 'uploads/instructor/profile2023-05-22-hyzz5gam8mqp-original.png', '2023-05-22-hyzz5gam8mqp-original.png', 'image', '[]', '2023-05-22 01:23:44', '2023-05-22 01:23:44'),
(36, 'uploads/instructor/profile2023-05-22-anxxyqk77b0r-original.jpeg', '2023-05-22-anxxyqk77b0r-original.jpeg', 'image', '[]', '2023-05-22 01:53:00', '2023-05-22 01:53:00'),
(37, 'uploads/student/profile2023-05-23-vabqvcwhqvr6-original.jpeg', '2023-05-23-vabqvcwhqvr6-original.jpeg', 'image', '[]', '2023-05-23 13:43:19', '2023-05-23 13:43:19'),
(38, 'uploads/course/category/icons/icon2023-12-30-x2hizo3a1itt-original.png', '2023-12-30-x2hizo3a1itt-original.png', 'image', '{\"35x35\":\"uploads\\/course\\/category\\/icons\\/icon2023-12-30-dqm3kak7mfbk-1.webp\"}', '2023-12-30 15:51:20', '2023-12-30 15:51:20'),
(39, 'uploads/course/category/icons/icon2023-12-30-0rpgwplwmklo-original.png', '2023-12-30-0rpgwplwmklo-original.png', 'image', '{\"35x35\":\"uploads\\/course\\/category\\/icons\\/icon2023-12-30-sbhsetkju0pa-1.webp\"}', '2023-12-30 15:51:41', '2023-12-30 15:51:41'),
(40, 'uploads/course/thumbnail/thumbnail2023-12-30-biahdmm9hkiw-original.png', '2023-12-30-biahdmm9hkiw-original.png', 'image', '{\"100x100\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-12-30-ruloisatiptw-1.webp\",\"300x300\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-12-30-hzc9rcqxqdd6-2.webp\",\"600x600\":\"uploads\\/course\\/thumbnail\\/thumbnail2023-12-30-bpkc67xmbtxx-3.webp\"}', '2023-12-30 16:06:23', '2023-12-30 16:06:23'),
(41, 'uploads/course/meta_image/meta_image2023-12-30-susgw8cfsfyw-original.png', '2023-12-30-susgw8cfsfyw-original.png', 'image', '[]', '2023-12-30 16:06:23', '2023-12-30 16:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'if null then verified, not null then not verified',
  `token` varchar(255) DEFAULT NULL COMMENT 'Token for email/phone verification, if null then verifield, not null then not verified',
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `event_commission` double(8,2) NOT NULL DEFAULT 0.00,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `github_id` varchar(255) DEFAULT NULL,
  `linkedin_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `event_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `date_of_birth`, `gender`, `email_verified_at`, `token`, `phone`, `password`, `permissions`, `last_login`, `status`, `event_commission`, `status_id`, `image_id`, `role_id`, `designation_id`, `device_token`, `facebook_id`, `google_id`, `github_id`, `linkedin_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `event_percentage`) VALUES
(1, 'Super Admin', NULL, 'superadmin@gmail.com', '2022-09-07', 1, '2023-12-30 14:49:10', NULL, '01811000000', '$2y$10$z74rt/wEfdhYxQk3v87l6en/rqLOnjkz8YrlgPQuTzhRDjTwU0hL.', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"ai_support\",\"ai_support_find\",\"course_category_read\",\"course_category_store\",\"course_category_create\",\"course_category_update\",\"course_category_delete\",\"popular_course_category_list\",\"popular_course_category_added\",\"popular_course_category_deleted\",\"course_read\",\"course_store\",\"course_create\",\"course_update\",\"course_delete\",\"course_assignment_list\",\"course_assignment_create\",\"course_assignment_store\",\"course_assignment_update\",\"course_assignment_delete\",\"course_assignment_submission_list\",\"course_assignment_submission_view\",\"course_noticeboard_list\",\"course_noticeboard_create\",\"course_noticeboard_store\",\"course_noticeboard_update\",\"course_noticeboard_delete\",\"course_announcement_list\",\"course_curriculum\",\"course_curriculum_create\",\"course_curriculum_store\",\"course_curriculum_update\",\"course_curriculum_delete\",\"course_lesson\",\"course_lesson_create\",\"course_lesson_store\",\"course_lesson_update\",\"course_lesson_delete\",\"course_quiz_list\",\"course_quiz_create\",\"course_quiz_store\",\"course_quiz_update\",\"course_quiz_delete\",\"course_quiz_submission_list\",\"course_quiz_submission_view\",\"course_question_list\",\"course_question_create\",\"course_question_store\",\"course_question_update\",\"course_question_delete\",\"enroll_list\",\"enroll_invoice\",\"certificate_list\",\"certificate_view\",\"certificate_download\",\"certificate_template_list\",\"certificate_template_create\",\"certificate_template_store\",\"certificate_template_update\",\"certificate_template_edit\",\"certificate_template_delete\",\"instructor_list\",\"instructor_request_list\",\"instructor_view\",\"instructor_approve\",\"instructor_suspend\",\"instructor_suspend_list\",\"instructor_re_activate\",\"instructor_create\",\"instructor_store\",\"instructor_update\",\"instructor_login\",\"instructor_add_institute\",\"instructor_store_institute\",\"instructor_update_institute\",\"instructor_delete_institute\",\"instructor_add_experience\",\"instructor_store_experience\",\"instructor_update_experience\",\"instructor_delete_experience\",\"instructor_add_skill\",\"instructor_store_skill\",\"student_list\",\"student_suspend\",\"student_re_activate\",\"student_create\",\"student_store\",\"student_update\",\"student_login\",\"student_add_institute\",\"student_store_institute\",\"student_update_institute\",\"student_delete_institute\",\"student_add_experience\",\"student_store_experience\",\"student_update_experience\",\"student_delete_experience\",\"student_add_skill\",\"student_store_skill\",\"certificate_template_read\",\"review_list\",\"review_view\",\"instructor_payout_list\",\"instructor_payout_request_list\",\"instructor_unpaid_payout_list\",\"instructor_rejected_payout_list\",\"instructor_payout_details\",\"instructor_payout_request_approve\",\"instructor_payout_request_reject\",\"instructor_make_payout\",\"account_list\",\"account_create\",\"account_store\",\"account_update\",\"account_delete\",\"income_list\",\"expense_list\",\"transaction_list\",\"contact_read\",\"featured_course_list\",\"featured_course_create\",\"featured_course_store\",\"featured_course_update\",\"featured_course_delete\",\"discount_course_list\",\"discount_course_create\",\"discount_course_store\",\"discount_course_update\",\"discount_course_delete\",\"image_gallery_read\",\"image_gallery_update\",\"report_student_engagement\",\"report_student_engagement_export\",\"report_instructor_engagement\",\"report_instructor_engagement_export\",\"report_purchase_history\",\"report_purchase_history_export\",\"report_course_completion\",\"report_course_completion_export\",\"report_student_performance\",\"report_student_performance_export\",\"report_admin_transaction\",\"report_admin_transaction_export\",\"language_read\",\"language_create\",\"language_update\",\"language_update_terms\",\"language_delete\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_update\",\"email_settings_read\",\"email_settings_update\",\"seo_settings_read\",\"seo_settings_update\",\"social_login_settings_read\",\"social_login_settings_update\",\"testimonial_read\",\"testimonial_create\",\"testimonial_store\",\"testimonial_update\",\"testimonial_delete\",\"blog_category_read\",\"blog_category_store\",\"blog_category_create\",\"blog_category_update\",\"blog_category_delete\",\"blog_read\",\"blog_store\",\"blog_create\",\"blog_update\",\"blog_delete\",\"slider_read\",\"slider_store\",\"slider_create\",\"slider_update\",\"slider_delete\",\"page_read\",\"page_store\",\"page_create\",\"page_update\",\"page_delete\",\"brand_read\",\"brand_store\",\"brand_create\",\"brand_update\",\"brand_delete\",\"payment_method_read\",\"payment_method_update\",\"payment_method_delete\",\"home_section_settings_read\",\"home_section_settings_create\",\"home_section_settings_store\",\"home_section_settings_update\",\"home_section_settings_delete\",\"footer_menu_read\",\"footer_menu_store\",\"footer_menu_create\",\"footer_menu_update\",\"footer_menu_delete\",\"addon_list\",\"addon_create\",\"addon_store\",\"addon_update\",\"forum_list\",\"forum_create\",\"forum_store\",\"forum_update\",\"forum_delete\",\"forum_status_manage\",\"forum_featured_manage\",\"forum_category_read\",\"forum_category_store\",\"forum_category_create\",\"forum_category_update\",\"forum_category_delete\",\"event_create\",\"event_store\",\"event_update\",\"event_delete\",\"requested_event_list\",\"approved_event_list\",\"rejected_event_list\",\"event_approve\",\"event_reject\",\"purchase_booking\",\"report_event_booking\",\"report_event_booking_export\",\"event_category_read\",\"event_category_store\",\"event_category_create\",\"event_category_update\",\"event_category_delete\",\"organization_request_list\",\"organization_suspend_list\",\"organization_read\",\"organization_create\",\"organization_store\",\"organization_approve\",\"organization_suspend\",\"organization_re_activate\",\"organization_update\",\"organization_delete\",\"organization_login\"]', NULL, 1, 0.00, 4, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Ki6Y5OR9yBreFmE8lDVkr8oMGWFyeImZ5FVXuVihi5VHaEPI83XJXneKMAdF', '2023-12-30 14:49:10', '2023-12-30 14:49:12', NULL, NULL),
(2, 'admin', NULL, 'admin@gmail.com', '2022-09-07', 1, '2023-12-30 14:49:10', NULL, '01811000001', '$2y$10$3jEXMS2TvKtoWfVqyeaU6eDbB50YMfrkMSiDQGkk21fLJZBvQtoK6', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"language_read\",\"language_create\",\"language_update_terms\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"recaptcha_settings_update\",\"email_settings_read\",\"social_login_settings_read\",\"social_login_settings_update\",\"forum_list\",\"forum_create\",\"forum_store\",\"forum_update\",\"forum_delete\",\"forum_status_manage\",\"forum_featured_manage\",\"forum_category_read\",\"forum_category_store\",\"forum_category_create\",\"forum_category_update\",\"forum_category_delete\",\"event_create\",\"event_store\",\"event_update\",\"event_delete\",\"requested_event_list\",\"approved_event_list\",\"rejected_event_list\",\"event_approve\",\"event_reject\",\"purchase_booking\",\"report_event_booking\",\"report_event_booking_export\",\"event_category_read\",\"event_category_store\",\"event_category_create\",\"event_category_update\",\"event_category_delete\"]', NULL, 1, 0.00, 4, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, 'mogB9SJO1A', '2023-12-30 14:49:10', '2023-12-30 14:49:12', NULL, NULL),
(3, 'Anna Littlical', NULL, 'manager@gmail.com', '2022-09-07', 1, '2023-12-30 14:49:10', NULL, '01811000002', '$2y$10$wAHCsb/kWig9Bz05b8wtHukoHXg1rMN/z.zy3FQ7BddZVL/e3LiBu', '[\"user_read\",\"user_create\",\"role_read\",\"language_read\",\"language_create\",\"general_settings_read\",\"storage_settings_read\",\"email_settings_read\",\"social_login_settings_read\"]', NULL, 1, 0.00, 4, NULL, 3, 4, NULL, NULL, NULL, NULL, NULL, 'UQ5nuUcAcr', '2023-12-30 14:49:10', '2023-12-30 14:49:10', NULL, NULL),
(4, 'student1', 'student1', 'student@gmail.com', '2022-09-07', 1, '2023-12-30 14:49:10', NULL, '1345789784561', '$2y$10$UeJQ3oPnsrzY4ykjgKjCIuxgN8Ws3l2J4.gf8ImWPIC6SwOUk82tq', '[\"user_read\",\"role_read\",\"language_read\",\"startup_operations\"]', NULL, 1, 0.00, 4, NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, '1PgVxR5uDcas79dTNubxRGU7YWNnkkRzjDmvEXxl2Wtt3Rk9DukmBRs6F7DI', '2023-12-30 14:49:11', '2023-12-30 14:49:11', NULL, NULL),
(5, 'mentor', 'mentor', 'mentor@gmail.com', '2022-09-07', 1, '2023-12-30 14:49:11', NULL, '13457897', '$2y$10$H4KRVUsa6thB28khT0OHeeSqL3qyHoYo2GsN448CaS2xpGvMDpqMy', NULL, NULL, 1, 0.00, 4, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, '4NIbJ9FgTsozG6HCYYs96bXBalW5UsAIeyhyiosyFBIYlySdU5r8Cldhncw0', '2023-12-30 14:49:11', '2023-12-30 14:49:11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_status_id_foreign` (`status_id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addons_status_id_foreign` (`status_id`);

--
-- Indexes for table `app_home_sections`
--
ALTER TABLE `app_home_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_home_sections_status_id_foreign` (`status_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_course_id_foreign` (`course_id`),
  ADD KEY `assignments_assignment_file_foreign` (`assignment_file`),
  ADD KEY `assignments_created_by_foreign` (`created_by`),
  ADD KEY `assignments_updated_by_foreign` (`updated_by`),
  ADD KEY `course_id` (`title`),
  ADD KEY `assignments_status_id_index` (`status_id`);

--
-- Indexes for table `assignment_submits`
--
ALTER TABLE `assignment_submits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_submits_enroll_id_foreign` (`enroll_id`),
  ADD KEY `assignment_submits_status_id_foreign` (`status_id`),
  ADD KEY `assignment_submits_assignment_file_foreign` (`assignment_file`),
  ADD KEY `enroll_id` (`assignment_id`),
  ADD KEY `assignment_submits_is_submitted_index` (`is_submitted`),
  ADD KEY `assignment_submits_user_id_index` (`user_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_image_id_foreign` (`image_id`),
  ADD KEY `blogs_status_id_foreign` (`status_id`),
  ADD KEY `blogs_blog_categories_id_foreign` (`blog_categories_id`),
  ADD KEY `blogs_created_by_foreign` (`created_by`),
  ADD KEY `blogs_updated_by_foreign` (`updated_by`),
  ADD KEY `blogs_deleted_by_foreign` (`deleted_by`),
  ADD KEY `blogs_meta_image_id_foreign` (`meta_image_id`),
  ADD KEY `blogs_title_status_id_blog_categories_id_created_by_index` (`title`,`status_id`,`blog_categories_id`,`created_by`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`),
  ADD KEY `blog_categories_status_id_foreign` (`status_id`),
  ADD KEY `blog_categories_created_by_foreign` (`created_by`),
  ADD KEY `status_id` (`title`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `bookmarks_course_id_user_id_index` (`course_id`,`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_serial_unique` (`serial`),
  ADD KEY `brands_image_id_foreign` (`image_id`),
  ADD KEY `brands_created_by_foreign` (`created_by`),
  ADD KEY `brands_updated_by_foreign` (`updated_by`),
  ADD KEY `brands_deleted_by_foreign` (`deleted_by`),
  ADD KEY `brands_status_id_created_by_serial_index` (`status_id`,`created_by`,`serial`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_course_id_user_id_index` (`course_id`,`user_id`);

--
-- Indexes for table `certificate_generates`
--
ALTER TABLE `certificate_generates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_generates_user_id_foreign` (`user_id`),
  ADD KEY `certificate_generates_upload_id_foreign` (`upload_id`),
  ADD KEY `certificate_generates_enroll_id_foreign` (`enroll_id`);

--
-- Indexes for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_templates_image_id_foreign` (`image_id`),
  ADD KEY `certificate_templates_default_id_foreign` (`default_id`),
  ADD KEY `certificate_templates_status_id_foreign` (`status_id`),
  ADD KEY `certificate_templates_font_id_foreign` (`font_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_currency_name_index` (`currency`,`name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_slug_unique` (`slug`),
  ADD KEY `courses_course_category_id_foreign` (`course_category_id`),
  ADD KEY `courses_meta_image_foreign` (`meta_image`),
  ADD KEY `courses_thumbnail_foreign` (`thumbnail`),
  ADD KEY `courses_course_overview_type_foreign` (`course_overview_type`),
  ADD KEY `courses_course_type_foreign` (`course_type`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`),
  ADD KEY `courses_level_id_foreign` (`level_id`),
  ADD KEY `courses_visibility_id_foreign` (`visibility_id`),
  ADD KEY `courses_created_by_foreign` (`created_by`),
  ADD KEY `courses_updated_by_foreign` (`updated_by`),
  ADD KEY `courses_deleted_by_foreign` (`deleted_by`),
  ADD KEY `is_free` (`title`),
  ADD KEY `instructor_id` (`status_id`);

--
-- Indexes for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_categories_icon_foreign` (`icon`),
  ADD KEY `course_categories_thumbnail_foreign` (`thumbnail`),
  ADD KEY `course_categories_parent_id_foreign` (`parent_id`),
  ADD KEY `course_categories_user_id_foreign` (`user_id`),
  ADD KEY `course_categories_status_id_foreign` (`status_id`),
  ADD KEY `status_id` (`title`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_formats`
--
ALTER TABLE `date_formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrolls_course_id_foreign` (`course_id`),
  ADD KEY `enrolls_user_id_foreign` (`user_id`),
  ADD KEY `enrolls_order_item_id_course_id_user_id_index` (`order_item_id`,`course_id`,`user_id`),
  ADD KEY `enrolls_instructor_id_index` (`instructor_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_thumbnail_foreign` (`thumbnail`),
  ADD KEY `events_show_participant_foreign` (`show_participant`),
  ADD KEY `events_visibility_id_foreign` (`visibility_id`),
  ADD KEY `events_is_paid_foreign` (`is_paid`),
  ADD KEY `events_category_id_foreign` (`category_id`),
  ADD KEY `events_status_id_foreign` (`status_id`),
  ADD KEY `events_created_by_foreign` (`created_by`);

--
-- Indexes for table `event_categories`
--
ALTER TABLE `event_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_categories_status_id_foreign` (`status_id`),
  ADD KEY `event_categories_created_by_foreign` (`created_by`),
  ADD KEY `status_id` (`title`);

--
-- Indexes for table `event_organizers`
--
ALTER TABLE `event_organizers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_organizers_email_unique` (`email`),
  ADD KEY `event_organizers_image_id_foreign` (`image_id`),
  ADD KEY `event_organizers_event_id_foreign` (`event_id`),
  ADD KEY `event_organizers_status_id_foreign` (`status_id`);

--
-- Indexes for table `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_registrations_invoice_number_unique` (`invoice_number`),
  ADD KEY `event_registrations_user_id_foreign` (`user_id`),
  ADD KEY `event_registrations_event_id_foreign` (`event_id`);

--
-- Indexes for table `event_schedules`
--
ALTER TABLE `event_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_schedules_event_id_foreign` (`event_id`),
  ADD KEY `event_schedules_status_id_foreign` (`status_id`),
  ADD KEY `event_schedules_created_by_foreign` (`created_by`);

--
-- Indexes for table `event_schedule_lists`
--
ALTER TABLE `event_schedule_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_schedule_lists_status_id_foreign` (`status_id`),
  ADD KEY `event_schedule_lists_created_by_foreign` (`created_by`),
  ADD KEY `event_schedule_lists_event_schedule_id_foreign` (`event_schedule_id`);

--
-- Indexes for table `event_speakers`
--
ALTER TABLE `event_speakers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_speakers_image_id_foreign` (`image_id`),
  ADD KEY `event_speakers_event_id_foreign` (`event_id`),
  ADD KEY `event_speakers_status_id_foreign` (`status_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_transaction_id_foreign` (`transaction_id`),
  ADD KEY `expenses_status_id_foreign` (`status_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `featured_courses`
--
ALTER TABLE `featured_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_courses_status_id_foreign` (`status_id`),
  ADD KEY `featured_courses_course_id_status_id_index` (`course_id`,`status_id`);

--
-- Indexes for table `flag_icons`
--
ALTER TABLE `flag_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_menus`
--
ALTER TABLE `footer_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_menus_status_id_foreign` (`status_id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_galleries_image_id_foreign` (`image_id`),
  ADD KEY `image_galleries_status_id_foreign` (`status_id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_transaction_id_foreign` (`transaction_id`),
  ADD KEY `incomes_status_id_foreign` (`status_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructors_country_id_foreign` (`country_id`),
  ADD KEY `instructors_user_id_country_id_index` (`user_id`,`country_id`);

--
-- Indexes for table `instructor_commissions`
--
ALTER TABLE `instructor_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_commissions_organization_id_foreign` (`organization_id`),
  ADD KEY `instructor_commissions_user_id_foreign` (`user_id`),
  ADD KEY `instructor_commissions_course_id_foreign` (`course_id`);

--
-- Indexes for table `instructor_payment_methods`
--
ALTER TABLE `instructor_payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_payment_methods_status_id_foreign` (`status_id`),
  ADD KEY `instructor_payment_methods_user_id_index` (`user_id`),
  ADD KEY `instructor_payment_methods_payment_method_id_is_default_index` (`payment_method_id`,`is_default`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_video_file_foreign` (`video_file`),
  ADD KEY `lessons_attachment_foreign` (`attachment`),
  ADD KEY `lessons_image_file_foreign` (`image_file`),
  ADD KEY `lessons_created_by_foreign` (`created_by`),
  ADD KEY `lessons_updated_by_foreign` (`updated_by`),
  ADD KEY `lessons_status_id_foreign` (`status_id`),
  ADD KEY `is_free` (`title`),
  ADD KEY `lessons_section_id_index` (`section_id`),
  ADD KEY `order` (`course_id`),
  ADD KEY `lessons_is_quiz_index` (`is_quiz`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_lesson_id_foreign` (`lesson_id`),
  ADD KEY `notes_user_id_foreign` (`user_id`),
  ADD KEY `notes_enroll_id_lesson_id_user_id_index` (`enroll_id`,`lesson_id`,`user_id`);

--
-- Indexes for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_boards_course_id_foreign` (`course_id`),
  ADD KEY `notice_boards_status_id_foreign` (`status_id`),
  ADD KEY `notice_boards_created_by_foreign` (`created_by`),
  ADD KEY `notice_boards_updated_by_foreign` (`updated_by`),
  ADD KEY `course_id` (`title`),
  ADD KEY `status_id` (`is_send_mail`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_payment_method_invoice_number_status_index` (`user_id`,`payment_method`,`invoice_number`,`status`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_course_id_foreign` (`course_id`),
  ADD KEY `order_items_order_id_course_id_index` (`order_id`,`course_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizations_country_id_foreign` (`country_id`),
  ADD KEY `organizations_user_id_foreign` (`user_id`),
  ADD KEY `organizations_status_id_foreign` (`status_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_image_id_foreign` (`image_id`),
  ADD KEY `pages_status_id_foreign` (`status_id`),
  ADD KEY `pages_created_by_foreign` (`created_by`),
  ADD KEY `pages_updated_by_foreign` (`updated_by`),
  ADD KEY `pages_deleted_by_foreign` (`deleted_by`),
  ADD KEY `pages_title_slug_status_id_created_by_index` (`title`,`slug`,`status_id`,`created_by`);

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
  ADD UNIQUE KEY `payments_invoice_number_unique` (`invoice_number`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_payout_id_foreign` (`payout_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_image_id_foreign` (`image_id`),
  ADD KEY `payment_methods_status_id_foreign` (`status_id`),
  ADD KEY `payment_methods_title_name_index` (`title`,`name`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payouts_user_id_foreign` (`user_id`),
  ADD KEY `payouts_instructor_payment_method_id_foreign` (`instructor_payment_method_id`),
  ADD KEY `payouts_status_id_foreign` (`status_id`),
  ADD KEY `payouts_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `payout_logs`
--
ALTER TABLE `payout_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payout_logs_payout_id_foreign` (`payout_id`),
  ADD KEY `payout_logs_status_id_foreign` (`status_id`),
  ADD KEY `payout_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_status_id_foreign` (`status_id`),
  ADD KEY `questions_created_by_foreign` (`created_by`),
  ADD KEY `questions_updated_by_foreign` (`updated_by`),
  ADD KEY `questions_deleted_by_foreign` (`deleted_by`),
  ADD KEY `questions_quiz_id_index` (`quiz_id`),
  ADD KEY `status_id` (`course_id`),
  ADD KEY `order` (`type`);

--
-- Indexes for table `question_submits`
--
ALTER TABLE `question_submits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_submits_question_id_foreign` (`question_id`),
  ADD KEY `question_submits_quiz_result_id_foreign` (`quiz_result_id`),
  ADD KEY `question_submits_user_id_foreign` (`user_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_results_enroll_id_foreign` (`enroll_id`),
  ADD KEY `quiz_results_status_id_foreign` (`status_id`),
  ADD KEY `quiz_results_quiz_id_index` (`quiz_id`),
  ADD KEY `quiz_results_user_id_index` (`user_id`),
  ADD KEY `status_id` (`is_submitted`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_status_id_foreign` (`status_id`),
  ADD KEY `reviews_course_id_user_id_rating_index` (`course_id`,`user_id`,`rating`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_created_by_foreign` (`created_by`),
  ADD KEY `sections_updated_by_foreign` (`updated_by`),
  ADD KEY `sections_title_index` (`title`),
  ADD KEY `order` (`course_id`),
  ADD KEY `sections_status_id_index` (`status_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_image_id_foreign` (`image_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sliders_serial_unique` (`serial`),
  ADD KEY `sliders_image_id_foreign` (`image_id`),
  ADD KEY `sliders_status_id_foreign` (`status_id`),
  ADD KEY `sliders_created_by_foreign` (`created_by`),
  ADD KEY `sliders_updated_by_foreign` (`updated_by`),
  ADD KEY `sliders_deleted_by_foreign` (`deleted_by`),
  ADD KEY `sliders_title_sub_title_status_id_created_by_serial_index` (`title`,`sub_title`,`status_id`,`created_by`,`serial`);

--
-- Indexes for table `startups`
--
ALTER TABLE `startups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startups_image_id_foreign` (`image_id`),
  ADD KEY `startups_founder_image_id_foreign` (`founder_image_id`),
  ADD KEY `startups_co_founder_image_id_foreign` (`co_founder_image_id`),
  ADD KEY `startups_created_by_foreign` (`created_by`);

--
-- Indexes for table `startup_advisors`
--
ALTER TABLE `startup_advisors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_advisors_startup_id_foreign` (`startup_id`),
  ADD KEY `startup_advisors_advisors_image_id_foreign` (`advisors_image_id`);

--
-- Indexes for table `startup_highlights`
--
ALTER TABLE `startup_highlights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_highlights_startup_id_foreign` (`startup_id`);

--
-- Indexes for table `startup_how_it_works`
--
ALTER TABLE `startup_how_it_works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_how_it_works_startup_id_foreign` (`startup_id`),
  ADD KEY `startup_how_it_works_how_it_works_image_id_foreign` (`how_it_works_image_id`);

--
-- Indexes for table `startup_impact`
--
ALTER TABLE `startup_impact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_impact_startup_id_foreign` (`startup_id`),
  ADD KEY `startup_impact_impact_image_id_foreign` (`impact_image_id`);

--
-- Indexes for table `startup_partnerships`
--
ALTER TABLE `startup_partnerships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_partnerships_startup_id_foreign` (`startup_id`),
  ADD KEY `startup_partnerships_partnership_image_id_foreign` (`partnership_image_id`);

--
-- Indexes for table `startup_problem`
--
ALTER TABLE `startup_problem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_problem_startup_id_foreign` (`startup_id`),
  ADD KEY `startup_problem_problem_image_id_foreign` (`problem_image_id`);

--
-- Indexes for table `startup_solution`
--
ALTER TABLE `startup_solution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_solution_startup_id_foreign` (`startup_id`),
  ADD KEY `startup_solution_solution_image_id_foreign` (`solution_image_id`);

--
-- Indexes for table `startup_team`
--
ALTER TABLE `startup_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_team_startup_id_foreign` (`startup_id`),
  ADD KEY `startup_team_team_image_id_foreign` (`team_image_id`);

--
-- Indexes for table `startup_traction`
--
ALTER TABLE `startup_traction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_traction_startup_id_foreign` (`startup_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_name_class_index` (`name`,`class`),
  ADD KEY `statuses_name_index` (`name`),
  ADD KEY `statuses_class_index` (`class`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_country_id_foreign` (`country_id`),
  ADD KEY `students_user_id_country_id_index` (`user_id`,`country_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_image_id_foreign` (`image_id`),
  ADD KEY `testimonials_status_id_foreign` (`status_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_account_id_foreign` (`account_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_status_id_foreign` (`status_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`original`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_status_id_foreign` (`status_id`),
  ADD KEY `users_image_id_foreign` (`image_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_home_sections`
--
ALTER TABLE `app_home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_submits`
--
ALTER TABLE `assignment_submits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_generates`
--
ALTER TABLE `certificate_generates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_categories`
--
ALTER TABLE `course_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `date_formats`
--
ALTER TABLE `date_formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_categories`
--
ALTER TABLE `event_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_organizers`
--
ALTER TABLE `event_organizers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_registrations`
--
ALTER TABLE `event_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_schedules`
--
ALTER TABLE `event_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_schedule_lists`
--
ALTER TABLE `event_schedule_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_speakers`
--
ALTER TABLE `event_speakers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_courses`
--
ALTER TABLE `featured_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flag_icons`
--
ALTER TABLE `flag_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `footer_menus`
--
ALTER TABLE `footer_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instructor_commissions`
--
ALTER TABLE `instructor_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor_payment_methods`
--
ALTER TABLE `instructor_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_logs`
--
ALTER TABLE `payout_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_submits`
--
ALTER TABLE `question_submits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startups`
--
ALTER TABLE `startups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `startup_advisors`
--
ALTER TABLE `startup_advisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_highlights`
--
ALTER TABLE `startup_highlights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_how_it_works`
--
ALTER TABLE `startup_how_it_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_impact`
--
ALTER TABLE `startup_impact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_partnerships`
--
ALTER TABLE `startup_partnerships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_problem`
--
ALTER TABLE `startup_problem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_solution`
--
ALTER TABLE `startup_solution`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_team`
--
ALTER TABLE `startup_team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `startup_traction`
--
ALTER TABLE `startup_traction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `addons`
--
ALTER TABLE `addons`
  ADD CONSTRAINT `addons_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `app_home_sections`
--
ALTER TABLE `app_home_sections`
  ADD CONSTRAINT `app_home_sections_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_assignment_file_foreign` FOREIGN KEY (`assignment_file`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `assignments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignment_submits`
--
ALTER TABLE `assignment_submits`
  ADD CONSTRAINT `assignment_submits_assignment_file_foreign` FOREIGN KEY (`assignment_file`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `assignment_submits_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignment_submits_enroll_id_foreign` FOREIGN KEY (`enroll_id`) REFERENCES `enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignment_submits_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignment_submits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_categories_id_foreign` FOREIGN KEY (`blog_categories_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blogs_meta_image_id_foreign` FOREIGN KEY (`meta_image_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blogs_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brands_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brands_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `brands_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brands_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_generates`
--
ALTER TABLE `certificate_generates`
  ADD CONSTRAINT `certificate_generates_enroll_id_foreign` FOREIGN KEY (`enroll_id`) REFERENCES `enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificate_generates_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificate_generates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD CONSTRAINT `certificate_templates_default_id_foreign` FOREIGN KEY (`default_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificate_templates_font_id_foreign` FOREIGN KEY (`font_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificate_templates_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificate_templates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_course_category_id_foreign` FOREIGN KEY (`course_category_id`) REFERENCES `course_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_course_overview_type_foreign` FOREIGN KEY (`course_overview_type`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_course_type_foreign` FOREIGN KEY (`course_type`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_meta_image_foreign` FOREIGN KEY (`meta_image`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_thumbnail_foreign` FOREIGN KEY (`thumbnail`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_visibility_id_foreign` FOREIGN KEY (`visibility_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD CONSTRAINT `course_categories_icon_foreign` FOREIGN KEY (`icon`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `course_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_categories_thumbnail_foreign` FOREIGN KEY (`thumbnail`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `enrolls_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolls_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolls_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `event_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_is_paid_foreign` FOREIGN KEY (`is_paid`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_show_participant_foreign` FOREIGN KEY (`show_participant`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_thumbnail_foreign` FOREIGN KEY (`thumbnail`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_visibility_id_foreign` FOREIGN KEY (`visibility_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_categories`
--
ALTER TABLE `event_categories`
  ADD CONSTRAINT `event_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_organizers`
--
ALTER TABLE `event_organizers`
  ADD CONSTRAINT `event_organizers_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_organizers_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `event_organizers_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD CONSTRAINT `event_registrations_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_registrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_schedules`
--
ALTER TABLE `event_schedules`
  ADD CONSTRAINT `event_schedules_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_schedules_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_schedules_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_schedule_lists`
--
ALTER TABLE `event_schedule_lists`
  ADD CONSTRAINT `event_schedule_lists_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_schedule_lists_event_schedule_id_foreign` FOREIGN KEY (`event_schedule_id`) REFERENCES `event_schedules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_schedule_lists_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_speakers`
--
ALTER TABLE `event_speakers`
  ADD CONSTRAINT `event_speakers_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_speakers_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `event_speakers_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `featured_courses`
--
ALTER TABLE `featured_courses`
  ADD CONSTRAINT `featured_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `featured_courses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `footer_menus`
--
ALTER TABLE `footer_menus`
  ADD CONSTRAINT `footer_menus_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD CONSTRAINT `image_galleries_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `image_galleries_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `instructors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `instructor_commissions`
--
ALTER TABLE `instructor_commissions`
  ADD CONSTRAINT `instructor_commissions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_commissions_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_commissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructor_payment_methods`
--
ALTER TABLE `instructor_payment_methods`
  ADD CONSTRAINT `instructor_payment_methods_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_payment_methods_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_payment_methods_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_image_file_foreign` FOREIGN KEY (`image_file`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_video_file_foreign` FOREIGN KEY (`video_file`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_enroll_id_foreign` FOREIGN KEY (`enroll_id`) REFERENCES `enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD CONSTRAINT `notice_boards_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notice_boards_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notice_boards_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notice_boards_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `organizations_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `organizations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_payout_id_foreign` FOREIGN KEY (`payout_id`) REFERENCES `payouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_methods_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `payouts_instructor_payment_method_id_foreign` FOREIGN KEY (`instructor_payment_method_id`) REFERENCES `instructor_payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payouts_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payouts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payout_logs`
--
ALTER TABLE `payout_logs`
  ADD CONSTRAINT `payout_logs_payout_id_foreign` FOREIGN KEY (`payout_id`) REFERENCES `payouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payout_logs_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payout_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_submits`
--
ALTER TABLE `question_submits`
  ADD CONSTRAINT `question_submits_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_submits_quiz_result_id_foreign` FOREIGN KEY (`quiz_result_id`) REFERENCES `quiz_results` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_submits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_enroll_id_foreign` FOREIGN KEY (`enroll_id`) REFERENCES `enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_results_is_submitted_foreign` FOREIGN KEY (`is_submitted`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_results_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sliders_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sliders_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sliders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sliders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startups`
--
ALTER TABLE `startups`
  ADD CONSTRAINT `startups_co_founder_image_id_foreign` FOREIGN KEY (`co_founder_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startups_founder_image_id_foreign` FOREIGN KEY (`founder_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startups_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_advisors`
--
ALTER TABLE `startup_advisors`
  ADD CONSTRAINT `startup_advisors_advisors_image_id_foreign` FOREIGN KEY (`advisors_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startup_advisors_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_highlights`
--
ALTER TABLE `startup_highlights`
  ADD CONSTRAINT `startup_highlights_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_how_it_works`
--
ALTER TABLE `startup_how_it_works`
  ADD CONSTRAINT `startup_how_it_works_how_it_works_image_id_foreign` FOREIGN KEY (`how_it_works_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startup_how_it_works_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_impact`
--
ALTER TABLE `startup_impact`
  ADD CONSTRAINT `startup_impact_impact_image_id_foreign` FOREIGN KEY (`impact_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startup_impact_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_partnerships`
--
ALTER TABLE `startup_partnerships`
  ADD CONSTRAINT `startup_partnerships_partnership_image_id_foreign` FOREIGN KEY (`partnership_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startup_partnerships_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_problem`
--
ALTER TABLE `startup_problem`
  ADD CONSTRAINT `startup_problem_problem_image_id_foreign` FOREIGN KEY (`problem_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startup_problem_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_solution`
--
ALTER TABLE `startup_solution`
  ADD CONSTRAINT `startup_solution_solution_image_id_foreign` FOREIGN KEY (`solution_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startup_solution_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_team`
--
ALTER TABLE `startup_team`
  ADD CONSTRAINT `startup_team_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `startup_team_team_image_id_foreign` FOREIGN KEY (`team_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `startup_traction`
--
ALTER TABLE `startup_traction`
  ADD CONSTRAINT `startup_traction_startup_id_foreign` FOREIGN KEY (`startup_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `testimonials_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
