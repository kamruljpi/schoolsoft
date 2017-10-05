-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2015 at 06:31 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'gr', '2015-09-18 04:00:33', '2015-09-18 04:00:33'),
(2, 'gr', '2015-09-18 04:48:28', '2015-09-18 04:48:28'),
(3, 'gr', '2015-09-18 04:49:23', '2015-09-18 04:49:23'),
(4, 'gr', '2015-09-18 05:27:42', '2015-09-18 05:27:42'),
(5, 'en', '2015-09-18 05:29:10', '2015-09-18 05:29:10'),
(6, 'en', '2015-09-18 05:30:09', '2015-09-18 05:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE IF NOT EXISTS `country_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_translations_country_id_locale_unique` (`country_id`,`locale`),
  KEY `country_translations_locale_index` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `country_translations`
--

INSERT INTO `country_translations` (`id`, `country_id`, `name`, `locale`) VALUES
(1, 1, 'Greece', 'en'),
(2, 2, 'Greece', 'en'),
(3, 3, 'Greece', 'en'),
(4, 3, 'Gr', 'fr'),
(5, 4, 'Greece', 'en'),
(6, 4, 'Gr', 'es'),
(7, 5, 'Gr', 'es'),
(8, 6, 'Greece', 'gr'),
(9, 6, 'Gr', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_09_10_092223_creat_photos_table', 1),
('2015_09_12_072416_add_profession_to_users_table', 2),
('2015_09_13_101110_create_types_table', 3),
('2015_09_13_110004_create_types_table', 4),
('2015_09_13_110906_add_type_id_to_users', 5),
('2015_09_13_111634_type_id_foregign_key_to_users', 6),
('2015_09_13_112849_add_user_id_to_photos_table_foreign_key', 7),
('2015_09_14_102825_add_user_type_collumn_to_users', 8),
('2015_09_14_112353_change_user_type_to_users_type', 9),
('2015_09_15_045419_add_utype_to_users', 10),
('2015_09_16_101646_create_articles_table', 11),
('2015_09_17_204114_create_countries_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `photos_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `path`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(13, 28, '1442145860n4bSnapshot_20150910.JPG', 28, 'SchoolSoft\\School\\User', '2015-09-13 06:04:20', '2015-09-13 06:04:20'),
(14, 29, '1442211788CCYSnapshot_20150910.JPG', 29, 'SchoolSoft\\School\\User', '2015-09-14 00:23:08', '2015-09-14 00:23:08'),
(15, 30, '1442213015BOzSnapshot_20150909.JPG', 30, 'SchoolSoft\\School\\User', '2015-09-14 00:43:35', '2015-09-14 00:43:35'),
(16, 31, '1442213361JazSnapshot_20150909.JPG', 31, 'SchoolSoft\\School\\User', '2015-09-14 00:49:21', '2015-09-14 00:49:21'),
(18, 35, '1442222385DO8Fast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0226.png', 35, 'SchoolSoft\\School\\User', '2015-09-14 03:19:45', '2015-09-14 03:19:45'),
(19, 36, '1442222867S98Fast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0837.png', 36, 'SchoolSoft\\School\\User', '2015-09-14 03:27:48', '2015-09-14 03:27:48'),
(20, 37, '1442227340MSUFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv1073.png', 37, 'SchoolSoft\\School\\User', '2015-09-14 04:42:21', '2015-09-14 04:42:21'),
(21, 38, '1442227913VcxFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0441.png', 38, 'SchoolSoft\\School\\User', '2015-09-14 04:51:53', '2015-09-14 04:51:53'),
(22, 39, '1442228723NV5Fast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0025.png', 39, 'SchoolSoft\\School\\User', '2015-09-14 05:05:23', '2015-09-14 05:05:23'),
(23, 40, '1442229631F5QFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0597.png', 40, 'SchoolSoft\\School\\User', '2015-09-14 05:20:31', '2015-09-14 05:20:31'),
(24, 41, '1442292766KmaFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0025.png', 41, 'SchoolSoft\\School\\User', '2015-09-14 22:52:46', '2015-09-14 22:52:46'),
(27, 44, '1442294311t3BFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0532.png', 44, 'SchoolSoft\\School\\User', '2015-09-14 23:18:31', '2015-09-14 23:18:31'),
(28, 44, '1442303913HExFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0235.png', 44, 'SchoolSoft\\School\\User', '2015-09-15 01:58:33', '2015-09-15 01:58:33'),
(29, 45, '1442310366fqyFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0413.png', 45, 'SchoolSoft\\School\\User', '2015-09-15 03:46:07', '2015-09-15 03:46:07'),
(30, 46, '1442310436kRJFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0413.png', 46, 'SchoolSoft\\School\\User', '2015-09-15 03:47:16', '2015-09-15 03:47:16'),
(31, 47, '1442310495dmoFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0226.png', 47, 'SchoolSoft\\School\\User', '2015-09-15 03:48:16', '2015-09-15 03:48:16'),
(32, 48, '1442310572YoTFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0413.png', 48, 'SchoolSoft\\School\\User', '2015-09-15 03:49:33', '2015-09-15 03:49:33'),
(33, 49, '1442310606ueMFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0837.png', 49, 'SchoolSoft\\School\\User', '2015-09-15 03:50:06', '2015-09-15 03:50:06'),
(34, 50, '14423106894mbFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv1073.png', 50, 'SchoolSoft\\School\\User', '2015-09-15 03:51:29', '2015-09-15 03:51:29'),
(35, 51, '1442310718uSJFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0532.png', 51, 'SchoolSoft\\School\\User', '2015-09-15 03:51:58', '2015-09-15 03:51:58'),
(36, 52, '1442310760GQfFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0025.png', 52, 'SchoolSoft\\School\\User', '2015-09-15 03:52:40', '2015-09-15 03:52:40'),
(37, 53, '14423109297nlFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0350.png', 53, 'SchoolSoft\\School\\User', '2015-09-15 03:55:29', '2015-09-15 03:55:29'),
(38, 54, '1442310967avDFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0597.png', 54, 'SchoolSoft\\School\\User', '2015-09-15 03:56:07', '2015-09-15 03:56:07'),
(39, 55, '1442311043VFsFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0837.png', 55, 'SchoolSoft\\School\\User', '2015-09-15 03:57:23', '2015-09-15 03:57:23'),
(40, 56, '1442311094zutFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0088.png', 56, 'SchoolSoft\\School\\User', '2015-09-15 03:58:14', '2015-09-15 03:58:14'),
(41, 57, '1442311140hBnFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0532.png', 57, 'SchoolSoft\\School\\User', '2015-09-15 03:59:00', '2015-09-15 03:59:00'),
(42, 58, '1442402458TJsFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0441.png', 58, 'SchoolSoft\\School\\User', '2015-09-16 05:20:59', '2015-09-16 05:20:59'),
(43, 59, '1442684609Rph1442032125DDfSnapshot_20150910.JPG', 59, 'SchoolSoft\\School\\User', '2015-09-20 00:43:30', '2015-09-20 00:43:30'),
(44, 60, '14427247165A214423109297nlFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0350.png', 60, 'SchoolSoft\\School\\User', '2015-09-19 22:51:56', '2015-09-19 22:51:56'),
(45, 61, '1442725184mCK14423109297nlFast.and.Furious.7.2015.EXTENDED.1080p.BluRay.AC3.x264-ETRG.mkv0350.png', 61, 'SchoolSoft\\School\\User', '2015-09-19 22:59:45', '2015-09-19 22:59:45'),
(46, 62, '1443004713A2E1442031394UHTSnapshot_20150910.JPG', 62, 'SchoolSoft\\School\\User', '2015-09-23 04:38:33', '2015-09-23 04:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'student', '2015-09-13 05:04:45', '2015-09-13 05:04:45'),
(2, 'teacher', '2015-09-13 05:05:25', '2015-09-13 05:05:25'),
(3, 'parents', '2015-09-13 05:05:36', '2015-09-13 05:05:36'),
(4, 'user', '2015-09-13 05:06:13', '2015-09-13 05:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(10) unsigned NOT NULL,
  `birth_date` date NOT NULL,
  `joining_date` date NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roll` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_type_id_foreign` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type_id`, `name`, `username`, `father_name`, `mother_name`, `guardian_name`, `gender`, `designation`, `mother_profession`, `father_profession`, `email`, `password`, `address`, `religion`, `phone`, `birth_date`, `joining_date`, `class`, `section`, `roll`, `remember_token`, `created_at`, `updated_at`, `profession`) VALUES
(27, 2, 'Teacher', 'username', '', '', NULL, 'Male', 'Cheater', NULL, NULL, 'lkjljlj@emal.com', '123456', 'kjhjkhkhkh', 'hljljljhjkh', 4294967295, '2015-09-13', '2015-09-13', NULL, NULL, NULL, NULL, '2015-09-13 06:00:55', '2015-09-13 06:00:55', NULL),
(28, 2, 'Teacher', 'usernamegfgf', '', '', NULL, 'Male', 'Cheater', NULL, NULL, 'lkjljlj@emal.comhh', '123456', 'kjhjkhkhkh', 'hljljljhjkh', 4294967295, '2015-09-13', '2015-09-13', NULL, NULL, NULL, NULL, '2015-09-13 06:04:20', '2015-09-13 06:04:20', NULL),
(29, 2, 'Md Howladar', 'howladar', '', '', NULL, 'Male', 'Teacher', NULL, NULL, 'how@gmail.com', '123456', 'Uttara, Dhaka', 'Islam', 123456, '1980-09-14', '2015-09-14', NULL, NULL, NULL, NULL, '2015-09-14 00:23:08', '2015-09-14 00:23:08', NULL),
(30, 3, 'Md Jabbaraaa', 'jabbar', 'Md Gabbar', 'Mrs Jalima', NULL, 'Male', NULL, NULL, NULL, 'jabbar@email.com', '123456', 'address', '', 123456789, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-14 00:43:35', '2015-09-15 04:33:15', 'teacher'),
(31, 1, 'Tanzil boruaaas', 'tang', 'Tamim Haque', 'Tahmina Haque', 'Tamim Haque', 'Female', NULL, NULL, NULL, 'tanzil@yahoo.com', '', 'Shantinagar, Dhaka', 'Islam', 1912105465, '2015-09-15', '0000-00-00', 'One', 'A', '15', NULL, '2015-09-14 00:49:21', '2015-09-15 03:14:58', NULL),
(35, 1, 'Mar Rahamannnnn', 'sumon', 'Nurul Haque', 'Mrs Nurul Haque', 'Nurul Haque', 'Male', NULL, NULL, NULL, 'mahbub@gmail.com', '', 'Narayanganj', 'Ialam', 1718155235, '2015-09-15', '0000-00-00', 'One', 'A', '20', NULL, '2015-09-14 03:19:44', '2015-09-15 04:10:03', NULL),
(36, 1, 'Jillur Rahman', 'jillu', 'Nurul Huda', 'Mrs Nurul Huda', 'Nurul Huda', 'Male', NULL, NULL, NULL, 'jullu@yahoo.com', '123456', 'Narayanganj', 'Islam', 1190569823, '1980-09-14', '0000-00-00', 'Three', 'C', '11', NULL, '2015-09-14 03:27:47', '2015-09-14 03:27:47', NULL),
(37, 4, ' Jubayer Hossain', 'libia', 'Md Gabbar Prodhan', 'Mrs Juliya Begum', NULL, 'Male', NULL, NULL, NULL, 'jubayer@gmail.com', '123456', 'Dhaka', 'Islam', 1719569865, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-14 04:42:20', '2015-09-20 00:49:51', NULL),
(38, 4, 'Md Harun', 'harun', 'Md Barun', 'Mrs Barun', NULL, '0', NULL, NULL, NULL, 'harun@ymail.net', '123456', 'Comilla', 'sonkor', 1956236598, '1980-09-14', '2015-09-14', NULL, NULL, NULL, NULL, '2015-09-14 04:51:53', '2015-09-14 04:51:53', NULL),
(39, 4, 'Jr Haldar', 'haldar', 'Sr Haldar', 'Mrs Haldar', NULL, 'Male', NULL, NULL, NULL, 'haldar@gmail.jcom', '123456', 'Munshinganj', 'Islam', 1854896598, '1968-09-14', '2015-09-14', NULL, NULL, NULL, NULL, '2015-09-14 05:05:23', '2015-09-14 05:05:23', NULL),
(40, 4, 'Shafin Chowdhury', 'safin', 'Sr ', 'Nulufar ', NULL, 'Male', NULL, NULL, NULL, 'safin@shafin.com', '123456', 'dhaka', 'Islam', 1845235698, '1960-09-14', '2015-09-14', NULL, NULL, NULL, NULL, '2015-09-14 05:20:31', '2015-09-14 05:20:31', NULL),
(41, 1, 'jljjljlkjjlkjljlkj', 'usernameussjflkjs', 'ouiouiouiouiouo', 'uouoiuoiuoiuoiuou', 'uuoiuoiuoiuiouoiuoiu', 'Male', NULL, NULL, NULL, 'uiuoiuo@huuytyy.hkjhkjhkj', '123456', 'hgjhgghghjg', 'oiuiouiouiou', 4294967295, '2015-09-15', '0000-00-00', 'Two', 'B', '4545', NULL, '2015-09-14 22:52:46', '2015-09-14 22:52:46', NULL),
(44, 4, 'hello world', 'upload', 'hello universe', 'hello neptune', NULL, 'Male', NULL, NULL, NULL, 'hjkjhk@jjjkl.jhjh', '123456', 'dfdfd', 'jflkjksjkjlj', 4294967295, '2015-09-15', '2015-09-15', NULL, NULL, NULL, NULL, '2015-09-14 23:18:31', '2015-09-14 23:18:31', NULL),
(45, 3, 'gdfgdfgds', 'uuuuuuuoiuouou', 'jljjllj', 'ljljljljlj', NULL, 'Male', NULL, NULL, NULL, 'jlkjkj@yy.uyu', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:46:06', '2015-09-15 03:46:06', NULL),
(46, 3, 'jfsldjflksjd', 'llllqqqqqqq', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'jlkjkj@yy.uyughh', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:47:16', '2015-09-15 03:47:16', NULL),
(47, 3, 'jfsldjflksjd', 'llllqqqqqqqsss', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'jlkjkj@yy.uyughhff', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:48:15', '2015-09-15 03:48:15', NULL),
(48, 3, 'jfsldjflksjd', 'llllqqqqqqqsssaa', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'qqjlkjkj@yy.uyughhff', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:49:32', '2015-09-15 03:49:32', NULL),
(49, 3, 'jfsldjflksjd', 'llllqqqqqqqsssaaqq', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'qqqjlkjkj@yy.uyughhff', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:50:06', '2015-09-15 03:50:06', NULL),
(50, 3, 'jfsldjflksjd', 'llllqqqqqqqsssaaqqhh', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fqqqjlkjkj@yy.uyughhff', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:51:29', '2015-09-15 03:51:29', NULL),
(51, 3, 'jfsldjflksjd', 'llllqqqqqqqsssaaqqhhj', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fgqqqjlkjkj@yy.uyughhff', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:51:58', '2015-09-15 03:51:58', NULL),
(52, 3, 'jfsldjflksjd', 'llllqqqqqqqsssaaqqhhja', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fgqqfqjlkjkj@yy.uyughhff', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:52:40', '2015-09-15 03:52:40', NULL),
(53, 3, 'jfsldjflksjd', 'llllqqqqqqqsssaaqqhhjadfd', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fgdfqqfqjlkjkj@yy.uyughhffh', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:55:29', '2015-09-15 03:55:29', NULL),
(54, 3, 'jfsldjflksjd', 'llllqqqer', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fgdfqqfqjlkjkj@yy.uy', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:56:07', '2015-09-15 03:56:07', NULL),
(55, 3, 'jfsldjflksjd', 'llllqqqerrr', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fgdfqqfqjlkdjkj@yy.uy', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:57:23', '2015-09-15 03:57:23', NULL),
(56, 3, 'jfsldjflksjd', 'llllqqqerrrhh', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fgfqjlkdjkj@yy.uy', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:58:14', '2015-09-15 03:58:14', NULL),
(57, 3, 'Shafin Shakil', 'llllqqqerrrhhwq', 'ljljoiou', 'uoiuouo', NULL, 'Male', NULL, NULL, NULL, 'fgfqjlkdjkj@yy.uytr', '123456', 'jflksjdklfjl', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-15 03:59:00', '2015-09-15 04:09:11', 'Engineer'),
(58, 1, 'kazi', 'usernameeeeee', 'kajljl', 'ljljlj', 'ljljlj', 'Male', NULL, NULL, NULL, 'ljjljl@tuyt.iitgg', '123456', 'khjkhk', 'ljljj', 123456789, '2015-09-16', '0000-00-00', 'Two', 'A', '01725369587', NULL, '2015-09-16 05:20:58', '2015-09-16 05:20:58', NULL),
(59, 1, 'Hello', 'uuuoowwwooo', 'hello', 'hello', 'hello', 'Male', NULL, NULL, NULL, 'djkj@iy.noi', '123456', 'address', 'islam', 123456789, '2015-09-02', '0000-00-00', 'One', 'A', '01719586954', NULL, '2015-09-20 00:43:29', '2015-09-20 00:43:29', NULL),
(60, 3, 'parent ', 'pparent', 'parent', 'parent', NULL, 'Female', NULL, NULL, NULL, 'parent@parnet.com', '123456', 'address', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-19 22:51:55', '2015-09-19 22:51:55', 'profession'),
(61, 3, 'hkhkh', 'jljljl', 'hkhkjhjkh', 'hkhhkhkhk', NULL, 'Male', NULL, NULL, NULL, 'kjhhk@jkhjkh.hkhk', '123456', 'hkhjhkjh', '', 4294967295, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, '2015-09-19 22:59:44', '2015-09-19 22:59:44', 'hkhkhkhkhkh'),
(62, 1, 'hanilfl', 'userpoiu', 'jlkjkllk', 'jjljlk', 'jlkjjl', 'Male', NULL, NULL, NULL, 'ghjurty@wert.poiu', '123456', 'dfgh', 'df', 123456789, '2015-09-12', '0000-00-00', 'One', 'A', '12465', NULL, '2015-09-23 04:38:33', '2015-09-23 04:38:33', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
