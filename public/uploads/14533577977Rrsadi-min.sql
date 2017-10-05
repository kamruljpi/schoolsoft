-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2015 at 06:30 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `exels`
--

CREATE TABLE IF NOT EXISTS `exels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `ticker` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volume` int(11) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18738 ;

--
-- Dumping data for table `exels`
--

INSERT INTO `exels` (`id`, `date`, `ticker`, `volume`, `open`, `high`, `low`, `close`, `created_at`, `updated_at`) VALUES
(1, '2008-01-01', 'EXIMBANK', 37898, 39.1, 43, 37, 40, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(2, '2008-01-01', 'ALARABANK', 25590, 44.03, 44.8, 41.2, 42.03, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(3, '2008-01-01', 'SOUTHEASTB', 55202, 57.33, 58.5, 52, 57.55, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(4, '2008-01-01', 'NBL', 39175, 149.43, 158, 140.1, 148.33, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(5, '2008-01-01', 'EBL', 4922, 107.08, 110, 105.6, 105.93, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(6, '2008-01-01', 'DUTCHBANGL', 2268, 676.55, 710.35, 670.5, 673.63, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(7, '2008-01-01', 'UCBL', 9123, 420.38, 440, 415, 416.65, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(8, '2008-01-01', 'PREMIERBAN', 21950, 30.4, 30.8, 30, 30.13, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(9, '2008-01-01', 'PUBALIBANK', 19062, 98.58, 102, 91.53, 99.03, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(10, '2008-01-01', 'ISLAMIBANK', 7562, 66.32, 69, 67, 67.36, '2015-11-04 03:40:15', '2015-11-04 03:40:15'),
(11, '2008-01-02', 'EXIMBANK', 30713, 40, 43, 37.5, 39.5, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(12, '2008-01-02', 'ALARABANK', 18180, 42.03, 42.8, 40, 40.2, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(13, '2008-01-02', 'SOUTHEASTB', 34393, 57.55, 57.6, 53.1, 56.53, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(14, '2008-01-02', 'NBL', 29811, 148.32, 158, 140, 144.95, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(15, '2008-01-02', 'EBL', 3605, 105.92, 108, 103.9, 104.25, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(16, '2008-01-02', 'DUTCHBANGL', 1804, 673.63, 720, 678, 702.73, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(17, '2008-01-02', 'UCBL', 6705, 416.65, 436, 400.5, 415.9, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(18, '2008-01-02', 'PREMIERBAN', 13600, 30.1, 30, 29.6, 29.65, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(19, '2008-01-02', 'PUBALIBANK', 9467, 99.03, 105.9, 93.72, 98.75, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(20, '2008-01-02', 'ISLAMIBANK', 4228, 67.36, 67, 66.06, 66.34, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(21, '2008-01-03', 'EXIMBANK', 19066, 39.5, 42, 37.02, 39.53, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(22, '2008-01-03', 'ALARABANK', 11580, 40.2, 41.43, 39, 40.98, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(23, '2008-01-03', 'SOUTHEASTB', 22709, 56.52, 57.2, 52.13, 56.53, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(24, '2008-01-03', 'NBL', 17116, 144.95, 152, 138, 145.83, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(25, '2008-01-03', 'EBL', 3660, 104.25, 112, 102, 105.75, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(26, '2008-01-03', 'DUTCHBANGL', 2585, 702.73, 737.5, 715, 724.83, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(27, '2008-01-03', 'UCBL', 10427, 415.9, 436, 400.02, 418.93, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(28, '2008-01-03', 'PREMIERBAN', 17200, 29.6, 30, 29.2, 29.75, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(29, '2008-01-03', 'PUBALIBANK', 21524, 98.75, 103.8, 94, 99.75, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(30, '2008-01-03', 'ISLAMIBANK', 3463, 66.34, 66.4, 65.41, 65.83, '2015-11-04 03:40:16', '2015-11-04 03:40:16'),
(31, '2008-01-06', 'EXIMBANK', 33051, 39.52, 41.5, 37.5, 39.05, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(32, '2008-01-06', 'ALARABANK', 14580, 40.98, 40.8, 37.2, 39.98, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(33, '2008-01-06', 'SOUTHEASTB', 22553, 56.52, 60, 51.1, 56.35, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(34, '2008-01-06', 'NBL', 22232, 145.82, 151, 136, 143.03, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(35, '2008-01-06', 'EBL', 3505, 105.75, 104.2, 103, 103.3, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(36, '2008-01-06', 'DUTCHBANGL', 1230, 724.83, 750, 700, 712.13, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(37, '2008-01-06', 'UCBL', 16212, 418.93, 438, 400, 413.85, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(38, '2008-01-06', 'PREMIERBAN', 19350, 29.8, 29.7, 29.2, 29.33, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(39, '2008-01-06', 'PUBALIBANK', 11596, 99.75, 101.9, 93.1, 98.45, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(40, '2008-01-06', 'ISLAMIBANK', 2779, 65.83, 66.1, 64.8, 65.07, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(41, '2008-01-07', 'EXIMBANK', 12348, 39.05, 42.9, 37, 39.2, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(42, '2008-01-07', 'ALARABANK', 6300, 39.98, 40.5, 39.5, 40.43, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(43, '2008-01-07', 'SOUTHEASTB', 27217, 56.35, 59, 51, 56.13, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(44, '2008-01-07', 'NBL', 10343, 143.03, 151, 136, 142.78, '2015-11-04 03:40:17', '2015-11-04 03:40:17'),
(45, '2008-01-07', 'EBL', 3425, 103.3, 105.3, 103, 103.15, '2015-11-04 03:40:17', '2015-11-04 03:40:17');


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
('2015_11_04_083112_create_exels_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
