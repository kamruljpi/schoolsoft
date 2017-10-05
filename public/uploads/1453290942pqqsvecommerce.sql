-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2015 at 06:32 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `svecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_title_unique` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '2015-05-23 12:15:27', '2015-05-23 12:15:27'),
(2, 'Properties', '2015-05-23 12:15:57', '2015-05-23 12:15:57'),
(3, 'Apparel', '2015-05-23 12:20:23', '2015-05-23 12:20:23'),
(4, 'Others', '2015-07-20 05:36:49', '2015-07-20 05:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `flats`
--

CREATE TABLE IF NOT EXISTS `flats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bed_room` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bath_room` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `floor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `flats`
--

INSERT INTO `flats` (`id`, `type`, `area`, `bed_room`, `bath_room`, `floor`, `created_at`, `updated_at`) VALUES
(1, 'For Sale', '1350', '3', '2', '2', '2015-07-24 05:39:13', '2015-07-24 05:39:13'),
(2, 'For Rent', '1300', '3', '2', '2', '2015-07-24 05:44:31', '2015-07-24 05:44:31'),
(3, 'product type', 'Area', 'No of Bedrkoo', '5', '454', '2015-07-24 05:56:48', '2015-07-24 05:56:48'),
(4, 'type 3', '3000', '3', '3', '3', '2015-08-12 09:35:24', '2015-08-12 09:35:24'),
(5, 'kljjljljlj', '4654654654', '445', '4545', '54545', '2015-08-12 12:08:42', '2015-08-12 12:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageable_id` int(10) unsigned NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `images_imageable_id_imageable_type_index` (`imageable_id`,`imageable_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=258 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(134, '14359028083G6mobile.jpg', 217, 'App\\Product', '2015-07-02 23:53:28', '2015-07-02 23:53:28'),
(135, '1435902808Bc1mobile.jpg', 217, 'App\\Product', '2015-07-02 23:53:28', '2015-07-02 23:53:28'),
(136, '1435902993erDcd.png', 218, 'App\\Product', '2015-07-02 23:56:33', '2015-07-02 23:56:33'),
(137, '1435902993ixgcd.png', 218, 'App\\Product', '2015-07-02 23:56:33', '2015-07-02 23:56:33'),
(138, '1435902993K20cd.png', 218, 'App\\Product', '2015-07-02 23:56:33', '2015-07-02 23:56:33'),
(139, '1435903244uPAr1.jpeg', 219, 'App\\Product', '2015-07-03 00:00:44', '2015-07-03 00:00:44'),
(140, '1435903244Vlyr3.jpg', 219, 'App\\Product', '2015-07-03 00:00:44', '2015-07-03 00:00:44'),
(141, '1435903350Qzkpants.jpg', 220, 'App\\Product', '2015-07-03 00:02:31', '2015-07-03 00:02:31'),
(142, '1435913980Sjcbuilding.jpg', 221, 'App\\Product', '2015-07-03 02:59:40', '2015-07-03 02:59:40'),
(143, '1435914049AtYcar.jpg', 222, 'App\\Product', '2015-07-03 03:00:49', '2015-07-03 03:00:49'),
(144, '1435914049eVKcar.jpg', 222, 'App\\Product', '2015-07-03 03:00:49', '2015-07-03 03:00:49'),
(145, '14359220011sEcd.png', 223, 'App\\Product', '2015-07-03 05:13:21', '2015-07-03 05:13:21'),
(146, '1435984690HAkcd.png', 224, 'App\\Product', '2015-07-03 22:38:10', '2015-07-03 22:38:10'),
(147, '1435984931sW0pants.jpg', 225, 'App\\Product', '2015-07-03 22:42:11', '2015-07-03 22:42:11'),
(148, '1435984950dBUpants.jpg', 226, 'App\\Product', '2015-07-03 22:42:31', '2015-07-03 22:42:31'),
(149, '1435985480qjdunderpants.jpg', 227, 'App\\Product', '2015-07-03 22:51:21', '2015-07-03 22:51:21'),
(150, '14359907297qRcar.jpg', 228, 'App\\Product', '2015-07-04 00:18:49', '2015-07-04 00:18:49'),
(151, '1435992124JGVcd.png', 229, 'App\\Product', '2015-07-04 00:42:04', '2015-07-04 00:42:05'),
(152, '1435992161cVKcar.jpg', 230, 'App\\Product', '2015-07-04 00:42:41', '2015-07-04 00:42:41'),
(153, '1435992266GFUmobile.jpg', 231, 'App\\Product', '2015-07-04 00:44:26', '2015-07-04 00:44:26'),
(154, '1435992299Andpants.jpg', 232, 'App\\Product', '2015-07-04 00:45:00', '2015-07-04 00:45:00'),
(155, '1435992365Cgyhouse.jpg', 233, 'App\\Product', '2015-07-04 00:46:05', '2015-07-04 00:46:05'),
(156, '1435992398VTPcd.png', 234, 'App\\Product', '2015-07-04 00:46:38', '2015-07-04 00:46:38'),
(157, '1435992632Q9rhouse.jpg', 235, 'App\\Product', '2015-07-04 00:50:32', '2015-07-04 00:50:32'),
(158, '1435992674y9Ybuilding.jpg', 236, 'App\\Product', '2015-07-04 00:51:14', '2015-07-04 00:51:14'),
(159, '1435992956DOIr3.jpg', 237, 'App\\Product', '2015-07-04 00:55:56', '2015-07-04 00:55:56'),
(160, '14359929983GMcd.png', 238, 'App\\Product', '2015-07-04 00:56:38', '2015-07-04 00:56:38'),
(161, '1435993035HaWpants.jpg', 239, 'App\\Product', '2015-07-04 00:57:16', '2015-07-04 00:57:16'),
(162, '1436003750rUxbuilding.jpg', 240, 'App\\Product', '2015-07-04 03:55:50', '2015-07-04 03:55:50'),
(163, '1436003789Gy2bra.jpg', 241, 'App\\Product', '2015-07-04 03:56:29', '2015-07-04 03:56:29'),
(164, '1436003815ezXcar.jpg', 242, 'App\\Product', '2015-07-04 03:56:55', '2015-07-04 03:56:55'),
(165, '1436003849SaScar.jpg', 243, 'App\\Product', '2015-07-04 03:57:29', '2015-07-04 03:57:29'),
(166, '1436003897Ri0car.jpg', 244, 'App\\Product', '2015-07-04 03:58:17', '2015-07-04 03:58:17'),
(167, '143600421094acd.png', 245, 'App\\Product', '2015-07-04 04:03:30', '2015-07-04 04:03:30'),
(168, '1436004498GVYbuilding.jpg', 246, 'App\\Product', '2015-07-04 04:08:18', '2015-07-04 04:08:18'),
(169, '14360054890p5r3.jpg', 247, 'App\\Product', '2015-07-04 04:24:49', '2015-07-04 04:24:49'),
(170, '1436006129CDxhouse.jpg', 248, 'App\\Product', '2015-07-04 04:35:29', '2015-07-04 04:35:29'),
(171, '1436006191Xlztv.jpg', 249, 'App\\Product', '2015-07-04 04:36:32', '2015-07-04 04:36:32'),
(172, '1436006309DC2tie.jpg', 250, 'App\\Product', '2015-07-04 04:38:29', '2015-07-04 04:38:29'),
(173, '1436006389Xjrhouse.jpg', 251, 'App\\Product', '2015-07-04 04:39:50', '2015-07-04 04:39:50'),
(174, '1436006491xwUunderpants.jpg', 252, 'App\\Product', '2015-07-04 04:41:32', '2015-07-04 04:41:32'),
(175, '1436006559naCmobile.jpg', 253, 'App\\Product', '2015-07-04 04:42:39', '2015-07-04 04:42:39'),
(176, '1436007098THar2.jpg', 254, 'App\\Product', '2015-07-04 04:51:38', '2015-07-04 04:51:38'),
(177, '1436007971bBytv.jpg', 255, 'App\\Product', '2015-07-04 05:06:11', '2015-07-04 05:06:11'),
(178, '1437125012QnHa1.JPG', 1, 'App\\Profile', '2015-07-17 03:23:32', '2015-07-17 03:23:32'),
(180, '14373341563pPa4.JPG', 256, 'App\\Product', '2015-07-19 13:29:16', '2015-07-19 13:29:16'),
(181, '1437422707DTFconcept-01qh.jpg', 3, 'App\\Mobile', '2015-07-20 14:05:08', '2015-07-20 14:05:08'),
(182, '14374227088MUconcept-a0y9.jpg', 3, 'App\\Mobile', '2015-07-20 14:05:08', '2015-07-20 14:05:08'),
(183, '1437423191sthconcept-01qh.jpg', 4, 'App\\Mobile', '2015-07-20 14:13:12', '2015-07-20 14:13:12'),
(184, '14374231920U4concept-a0y9.jpg', 4, 'App\\Mobile', '2015-07-20 14:13:12', '2015-07-20 14:13:12'),
(185, '1437423247IOYcomputer.PNG', 5, 'App\\Mobile', '2015-07-20 14:14:07', '2015-07-20 14:14:07'),
(186, '1437423247XEDchips-1qp0.jpg', 5, 'App\\Mobile', '2015-07-20 14:14:07', '2015-07-20 14:14:07'),
(187, '1437423530Urgimages.jpg', 6, 'App\\ProductCommonField', '2015-07-20 14:18:50', '2015-07-20 14:18:50'),
(188, '1437423530aQyconcept-01qh.jpg', 6, 'App\\ProductCommonField', '2015-07-20 14:18:50', '2015-07-20 14:18:50'),
(189, '1437424199hMRconcept-01qh.jpg', 9, 'App\\ProductCommonField', '2015-07-20 14:29:59', '2015-07-20 14:29:59'),
(190, '14374242007pSconcept-a0y9.jpg', 9, 'App\\ProductCommonField', '2015-07-20 14:30:00', '2015-07-20 14:30:00'),
(191, '1437424317TIiconcept-01qh.jpg', 10, 'App\\ProductCommonField', '2015-07-20 14:31:57', '2015-07-20 14:31:57'),
(192, '1437424317hN1concept-a0y9.jpg', 10, 'App\\ProductCommonField', '2015-07-20 14:31:58', '2015-07-20 14:31:58'),
(193, '1437424738Tjycomputer-402.jpg', 11, 'App\\ProductCommonField', '2015-07-20 14:38:59', '2015-07-20 14:38:59'),
(194, '1437424739Isschips-1qp0.jpg', 11, 'App\\ProductCommonField', '2015-07-20 14:38:59', '2015-07-20 14:38:59'),
(195, '1437426715ncVcomputer-402.jpg', 12, 'App\\ProductCommonField', '2015-07-20 15:11:55', '2015-07-20 15:11:55'),
(196, '1437426715hMuchips-1qp0.jpg', 12, 'App\\ProductCommonField', '2015-07-20 15:11:56', '2015-07-20 15:11:56'),
(197, '14374269742Jtlaravel-1920x1080.jpg', 13, 'App\\ProductCommonField', '2015-07-20 15:16:15', '2015-07-20 15:16:15'),
(198, '1437426975cSzhome-office-and-guest-room-ideas-hgsC.jpg', 13, 'App\\ProductCommonField', '2015-07-20 15:16:15', '2015-07-20 15:16:15'),
(199, '14374287180kYchips-1qp0.jpg', 14, 'App\\ProductCommonField', '2015-07-20 15:45:19', '2015-07-20 15:45:19'),
(200, '1437428719sXOcomputer.PNG', 14, 'App\\ProductCommonField', '2015-07-20 15:45:19', '2015-07-20 15:45:19'),
(201, '1437428719eUOconcept-01qh.jpg', 14, 'App\\ProductCommonField', '2015-07-20 15:45:19', '2015-07-20 15:45:19'),
(202, '1437561124Cmahome-office-and-guest-room-ideas-hgsC.jpg', 15, 'App\\ProductCommonField', '2015-07-22 04:32:04', '2015-07-22 04:32:04'),
(203, '1437567816ctularavel-packages.jpg', 16, 'App\\ProductCommonField', '2015-07-22 06:23:37', '2015-07-22 06:23:37'),
(204, '1437567817s7Jimages.jpg', 16, 'App\\ProductCommonField', '2015-07-22 06:23:37', '2015-07-22 06:23:37'),
(205, '1437567817AwWhome-office-and-guest-room-ideas-hgsC.jpg', 16, 'App\\ProductCommonField', '2015-07-22 06:23:37', '2015-07-22 06:23:37'),
(206, '1437568143uaXcomputer.PNG', 17, 'App\\ProductCommonField', '2015-07-22 06:29:03', '2015-07-22 06:29:03'),
(207, '1437568143kHKchips-1qp0.jpg', 17, 'App\\ProductCommonField', '2015-07-22 06:29:03', '2015-07-22 06:29:03'),
(208, '14375684716jTcomputer.PNG', 18, 'App\\ProductCommonField', '2015-07-22 06:34:32', '2015-07-22 06:34:32'),
(209, '1437568472CZNconcept-01qh.jpg', 18, 'App\\ProductCommonField', '2015-07-22 06:34:32', '2015-07-22 06:34:32'),
(210, '1437581813DFWchips-1qp0.jpg', 257, 'App\\Product', '2015-07-22 10:16:53', '2015-07-22 10:16:53'),
(211, '14375818139hiimages.jpg', 257, 'App\\Product', '2015-07-22 10:16:54', '2015-07-22 10:16:54'),
(212, '1437581932l23chips-1qp0.jpg', 258, 'App\\Product', '2015-07-22 10:18:53', '2015-07-22 10:18:53'),
(213, '1437582167DBScomputer-402.jpg', 19, 'App\\ProductCommonField', '2015-07-22 10:22:47', '2015-07-22 10:22:47'),
(214, '1437582167Ccuhome-office-and-guest-room-ideas-hgsC.jpg', 19, 'App\\ProductCommonField', '2015-07-22 10:22:47', '2015-07-22 10:22:47'),
(215, '1437582770kNrcomputer-402.jpg', 20, 'App\\ProductCommonField', '2015-07-22 10:32:50', '2015-07-22 10:32:50'),
(216, '1437582770c8Xconcept-01qh.jpg', 20, 'App\\ProductCommonField', '2015-07-22 10:32:51', '2015-07-22 10:32:51'),
(217, '1437582885tMtcomputer-402.jpg', 21, 'App\\ProductCommonField', '2015-07-22 10:34:45', '2015-07-22 10:34:45'),
(218, '1437648780ceOcomputer.PNG', 22, 'App\\ProductCommonField', '2015-07-23 04:53:01', '2015-07-23 04:53:01'),
(219, '1437648836zJbcomputer.PNG', 23, 'App\\ProductCommonField', '2015-07-23 04:53:56', '2015-07-23 04:53:56'),
(220, '143764883600Schips-1qp0.jpg', 23, 'App\\ProductCommonField', '2015-07-23 04:53:56', '2015-07-23 04:53:56'),
(221, '1437649000j1eimages.jpg', 24, 'App\\ProductCommonField', '2015-07-23 04:56:40', '2015-07-23 04:56:40'),
(222, '14377245511L8chips-1qp0.jpg', 25, 'App\\ProductCommonField', '2015-07-24 01:55:51', '2015-07-24 01:55:51'),
(223, '1437724832agVchips-1qp0.jpg', 26, 'App\\ProductCommonField', '2015-07-24 02:00:32', '2015-07-24 02:00:32'),
(224, '1437725526KPja1.JPG', 27, 'App\\ProductCommonField', '2015-07-24 02:12:06', '2015-07-24 02:12:06'),
(225, '1437726275SWMchips-1qp0.jpg', 28, 'App\\ProductCommonField', '2015-07-24 02:24:35', '2015-07-24 02:24:35'),
(226, '1437726275wqJcomputer.PNG', 28, 'App\\ProductCommonField', '2015-07-24 02:24:35', '2015-07-24 02:24:35'),
(227, '1437727082Gc2chips-1qp0.jpg', 29, 'App\\ProductCommonField', '2015-07-24 02:38:02', '2015-07-24 02:38:02'),
(228, '1437727082LWQcomputer-402.jpg', 29, 'App\\ProductCommonField', '2015-07-24 02:38:03', '2015-07-24 02:38:03'),
(229, '14377273063kmcomputer-402.jpg', 30, 'App\\ProductCommonField', '2015-07-24 02:41:46', '2015-07-24 02:41:46'),
(230, '1437728720s1kcomputer.PNG', 31, 'App\\ProductCommonField', '2015-07-24 03:05:20', '2015-07-24 03:05:20'),
(231, '14377354285EWhome-office-and-guest-room-ideas-hgsC.jpg', 32, 'App\\ProductCommonField', '2015-07-24 04:57:08', '2015-07-24 04:57:08'),
(232, '1437735718oWSmotherboard.jpg', 33, 'App\\ProductCommonField', '2015-07-24 05:01:58', '2015-07-24 05:01:58'),
(233, '1437737953kquhome-office-and-guest-room-ideas-hgsC.jpg', 34, 'App\\ProductCommonField', '2015-07-24 05:39:14', '2015-07-24 05:39:14'),
(234, '1437738271DrKconcept-a0y9.jpg', 35, 'App\\ProductCommonField', '2015-07-24 05:44:31', '2015-07-24 05:44:31'),
(235, '1437739008J8qconcept-01qh.jpg', 36, 'App\\ProductCommonField', '2015-07-24 05:56:48', '2015-07-24 05:56:48'),
(236, '1438285101YxMlaravel-packages.jpg', 37, 'App\\ProductCommonField', '2015-07-30 13:38:21', '2015-07-30 13:38:21'),
(237, '1438462548sz0home-office-and-guest-room-ideas-hgsC.jpg', 38, 'App\\ProductCommonField', '2015-08-01 14:55:49', '2015-08-01 14:55:49'),
(238, '1438935403ySrconcept-01qh.jpg', 39, 'App\\ProductCommonField', '2015-08-07 02:16:44', '2015-08-07 02:16:44'),
(239, '1438936012ZiTconcept-a0y9.jpg', 40, 'App\\ProductCommonField', '2015-08-07 02:26:52', '2015-08-07 02:26:52'),
(240, '1438936208lSsconcept-01qh.jpg', 41, 'App\\ProductCommonField', '2015-08-07 02:30:08', '2015-08-07 02:30:08'),
(241, '1438936315betmotherboard.jpg', 42, 'App\\ProductCommonField', '2015-08-07 02:31:56', '2015-08-07 02:31:56'),
(242, '1438938856ghjcomputer.PNG', 3, 'App\\Profile', '2015-08-07 03:14:17', '2015-08-07 03:14:17'),
(243, '1438943161sPqa1.JPG', 4, 'App\\Profile', '2015-08-07 04:26:01', '2015-08-07 04:26:01'),
(254, '1439320437om3aaa.JPG', 11, 'App\\Profile', '2015-08-11 13:13:58', '2015-08-11 13:13:58'),
(256, '1439393581PEqlaravel-packages.jpg', 9, 'App\\Profile', '2015-08-12 09:33:01', '2015-08-12 09:33:01'),
(257, '1439393724oraimages.jpg', 44, 'App\\ProductCommonField', '2015-08-12 09:35:25', '2015-08-12 09:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `knitwares`
--

CREATE TABLE IF NOT EXISTS `knitwares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE IF NOT EXISTS `lands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lands`
--

INSERT INTO `lands` (`id`, `type`, `area`, `created_at`, `updated_at`) VALUES
(1, 'Personal', '35000', '2015-07-24 03:05:20', '2015-07-24 03:05:20'),
(2, 'Personal', '45454', '2015-07-24 04:57:07', '2015-07-24 04:57:07'),
(3, 'Product Type', '45454', '2015-07-24 05:01:57', '2015-07-24 05:01:57'),
(4, 'Land Type', 'Area in Km', '2015-08-01 14:55:48', '2015-08-01 14:55:48'),
(5, 'jlkjl', 'jljljll', '2015-08-07 03:14:16', '2015-08-07 03:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE IF NOT EXISTS `laptops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warrenty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `company`, `model`, `warrenty`, `ram`, `created_at`, `updated_at`) VALUES
(1, 'HP', 'Model probook', '1', '8 gb', '2015-07-22 10:22:47', '2015-07-22 10:22:47'),
(2, 'Dell', 'Dell 50', '2 years', '4 GB', '2015-07-22 10:32:50', '2015-07-22 10:32:50'),
(3, 'Dell', 'Dell 50', '2 years', '4 GB', '2015-07-22 10:34:22', '2015-07-22 10:34:22'),
(4, 'Dell', 'Dell 50', '2 years', '4 GB', '2015-07-22 10:34:45', '2015-07-22 10:34:45'),
(5, 'fdgdf', 'fgdfg', 'fdgdfg', 'fdgfdgdf', '2015-07-23 04:53:56', '2015-07-23 04:53:56'),
(6, 'fgfdgfd', 'Laptop thress', 'fdsf', 'dsfdsf', '2015-07-23 04:56:39', '2015-07-23 04:56:39'),
(7, 'tintin club', 'jlkjlj', 'jljlj', 'jlkjlj', '2015-07-24 02:24:35', '2015-07-24 02:24:35'),
(8, 'Dell', 'xxx 568', '5 ys', 'Ram', '2015-07-24 02:41:46', '2015-07-24 02:41:46'),
(9, 'Awesome', 'Awesome Model', '5 years', '8 gb', '2015-07-30 13:38:20', '2015-07-30 13:38:20');

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
('2015_05_18_070132_create_roles_table', 1),
('2015_05_18_070218_create_profiles_table', 1),
('2015_05_18_070237_create_categories_table', 1),
('2015_05_18_070252_create_sub_categories_table', 1),
('2015_05_18_070305_create_products_table', 1),
('2015_05_18_070337_create_images_table', 1),
('2015_05_19_095406_create_tags_table', 1),
('2015_06_02_120917_add_product_staus_column_to_products_table', 2),
('2015_06_02_122527_change_product_status_column_to_bool_products_table', 2),
('2015_06_02_125021_change_location_collumn_to_nullable_in_products_table', 2),
('2015_06_27_100346_create_photos_table', 3),
('2015_06_27_100734_create_photos_table', 4),
('2015_06_27_101004_create_photoable_table', 4),
('2015_07_19_203246_create_product_common_fields_table', 5),
('2015_07_19_204521_create_mobiles_table', 6),
('2015_07_19_204533_create_laptops_table', 6),
('2015_07_19_204543_create_lands_table', 6),
('2015_07_19_204607_create_flats_table', 6),
('2015_07_19_204635_create_rmgs_table', 6),
('2015_07_19_204644_create_knitwares_table', 6),
('2015_07_19_215043_create_statuses_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE IF NOT EXISTS `mobiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warrenty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_sim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `company`, `model`, `os`, `warrenty`, `number_of_sim`, `ram`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', '', '', '2015-07-20 14:02:55', '2015-07-20 14:02:55'),
(2, '', '', '', '', '', '', '2015-07-20 14:04:32', '2015-07-20 14:04:32'),
(3, '', '', '', '', '', '', '2015-07-20 14:05:07', '2015-07-20 14:05:07'),
(4, '', '', '', '', '', '', '2015-07-20 14:13:11', '2015-07-20 14:13:11'),
(5, '', '', '', '', '', '', '2015-07-20 14:14:07', '2015-07-20 14:14:07'),
(6, '', '', '', '', '', '', '2015-07-20 14:18:50', '2015-07-20 14:18:50'),
(7, '', '', '', '', '', '', '2015-07-20 14:27:27', '2015-07-20 14:27:27'),
(8, '', '', '', '', '', '', '2015-07-20 14:28:38', '2015-07-20 14:28:38'),
(9, 'bcvb', 'dgtru', 'gdjkk', 'dgadg', 'dfgdfg', 'dfgdfg', '2015-07-20 14:29:59', '2015-07-20 14:29:59'),
(10, 'bcvb', 'dgtru', 'gdjkk', 'dgadg', 'dfgdfg', 'dfgdfg', '2015-07-20 14:31:57', '2015-07-20 14:31:57'),
(11, 'lara', 'lara', 'lara', '5', '4', '5', '2015-07-20 14:38:58', '2015-07-20 14:38:58'),
(12, 'lara', 'lara', 'lara', '5', '4', '5', '2015-07-20 15:11:55', '2015-07-20 15:11:55'),
(13, 'ghfgh', 'ghfgh', 'fghfgh', 'gdfgdfg', 'fgdfg', 'gfdgfd', '2015-07-20 15:16:14', '2015-07-20 15:16:14'),
(14, 'Patient Country', 'fdsfsd', 'dfdsf', 'fdsf', 'dfdsf', 'dfdsf', '2015-07-20 15:45:18', '2015-07-20 15:45:18'),
(15, 'fdf', 'fd', 'dfd', 'dfd', 'fd', 'dfdf', '2015-07-22 04:32:04', '2015-07-22 04:32:04'),
(16, 'fgdfgd', 'fgdfg', 'fgdfg', 'fgdfg', 'gfdg', 'fgdg', '2015-07-22 06:23:36', '2015-07-22 06:23:36'),
(17, 'dfsdf', 'gdg', 'dgsdg', 'gsdg', 'sdgsdg', 'gsdg', '2015-07-22 06:29:02', '2015-07-22 06:29:02'),
(18, 'status 2 one more', 'status 2 one more', 'status 2 one more', 'status 2 one more', 'status 2 one more', 'status 2 one more', '2015-07-22 06:34:31', '2015-07-22 06:34:31'),
(19, 'cvxv', 'cvxv', 'cxvxcv', 'cxvxc', 'vcxc', 'cxvxc', '2015-07-23 04:53:00', '2015-07-23 04:53:00'),
(20, 'Company Name', 'Model Name', 'Operating System', 'Warrenty in Years', 'Number of Sims Mobile Can Contain', 'Ram Size in GB/MB', '2015-07-24 01:55:50', '2015-07-24 01:55:50'),
(21, 'Golden Company', 'golden MOdelq', 'OKks', 'War', 'No', 'Ran', '2015-07-24 02:00:32', '2015-07-24 02:00:32'),
(22, 'Product company', 'product model', 'product os', 'warrenty ', 'No of sims ', 'ram', '2015-07-24 02:12:06', '2015-07-24 02:12:06'),
(23, 'Company Name', 'Model Name', 'Os', 'Wr', 'No of sims', 'Ram', '2015-07-24 02:38:02', '2015-07-24 02:38:02'),
(24, 'Old is Gold', 'OldGold', 'OG', '88', '5', '80gb', '2015-08-07 02:16:43', '2015-08-07 02:16:43'),
(25, 'Match Factory', 'Mathc', 'OS', 'War', '55', '454', '2015-08-07 02:26:51', '2015-08-07 02:26:51'),
(26, 'Chess', 'Chwaa', 'os', 'warrenty', '\\7\\', '7\\7\\7', '2015-08-07 02:30:08', '2015-08-07 02:30:08'),
(27, 'jljljl', 'jljljj', 'jlkjlkj', 'fdgdf', '878', '44', '2015-08-07 02:31:55', '2015-08-07 02:31:55');

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
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sub_category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_sub_category_id_foreign` (`sub_category_id`),
  KEY `products_user_id_foreign` (`user_id`),
  KEY `products_title_index` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=259 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sub_category_id`, `user_id`, `title`, `description`, `price`, `location`, `product_status`, `published_at`, `created_at`, `updated_at`) VALUES
(217, 1, 1, 'mobile 1', 'mobile 1', 20000, 'dhaka', NULL, '2015-07-02 18:00:00', '2015-07-02 23:53:28', '2015-07-02 23:53:28'),
(218, 1, 1, 'cd 1', 'cd cd cd ', 25, 'sdfsdf', NULL, '2015-07-02 18:00:00', '2015-07-02 23:56:33', '2015-07-02 23:56:33'),
(219, 6, 1, 'tshirt', 'tshirt', 800, 'naranyanganj', NULL, '2015-07-02 18:00:00', '2015-07-03 00:00:44', '2015-07-03 00:00:44'),
(220, 6, 1, 'pants', 'pants pants', 3000, 'dhaka', NULL, '2015-07-02 18:00:00', '2015-07-03 00:02:30', '2015-07-03 00:02:30'),
(221, 1, 1, 'building 1', 'building 1 building 1 building 1', 5000000, 'dhaka', NULL, '2015-07-02 18:00:00', '2015-07-03 02:59:40', '2015-07-03 02:59:40'),
(222, 1, 1, 'car', 'car car car car', 1000000, 'dhaka', NULL, '2015-07-02 18:00:00', '2015-07-03 03:00:49', '2015-07-03 03:00:49'),
(223, 1, 1, 'cd 3', 'des of cd', 25, 'dhaka', NULL, '2015-07-02 18:00:00', '2015-07-03 05:13:21', '2015-07-03 05:13:21'),
(224, 2, 1, 'laptop 1', 'laptop laptop and CD CD', 125000, 'dhaka', NULL, '2015-07-03 18:00:00', '2015-07-03 22:38:10', '2015-07-03 22:38:10'),
(225, 6, 1, 'pants 22', 'sdfgds', 0, 'fdgfd', NULL, '2015-07-03 18:00:00', '2015-07-03 22:42:10', '2015-07-03 22:42:10'),
(226, 6, 1, 'pants 22', 'sdfgds', 0, 'fdgfd', NULL, '2015-07-03 18:00:00', '2015-07-03 22:42:30', '2015-07-03 22:42:30'),
(228, 1, 1, 'car 1', 'ca r car', 2000000, 'london', NULL, '2015-07-03 18:00:00', '2015-07-04 00:18:49', '2015-07-04 00:18:49'),
(229, 1, 1, 'cd building', 'cd building', 654647897974, 'india', NULL, '2015-07-03 18:00:00', '2015-07-04 00:42:04', '2015-07-04 00:42:04'),
(230, 1, 1, 'foreign car', 'foreign car foreign car foreign car', 65464978798, 'dhaka', NULL, '2015-07-03 18:00:00', '2015-07-04 00:42:41', '2015-07-04 00:42:41'),
(231, 1, 1, 'vip mobile', 'vip mobile vip mobile', 46565, 'jessore', NULL, '2015-07-03 18:00:00', '2015-07-04 00:44:26', '2015-07-04 00:44:26'),
(232, 1, 1, 'vip pants', 'vip pantsss      descriptiopn', 5656, 'dhaka', NULL, '2015-07-03 18:00:00', '2015-07-04 00:44:59', '2015-07-04 00:44:59'),
(233, 1, 1, 'vip house', 'vip house vip house', 8.964697463164976e15, 'germany', NULL, '2015-07-03 18:00:00', '2015-07-04 00:46:05', '2015-07-04 00:46:05'),
(234, 1, 1, 'vipp cdds ', 'vipp cdds  vipp cdds vipp cdds  vipp cdds ', 465, 'jessore', NULL, '2015-07-03 18:00:00', '2015-07-04 00:46:38', '2015-07-04 00:46:38'),
(235, 1, 1, 'vip house 2', 'vip house 2 vip house 2 vip house 2', 65465456565, 'nigeria', NULL, '2015-07-03 18:00:00', '2015-07-04 00:50:32', '2015-07-04 00:50:32'),
(236, 1, 1, 'vip building ', 'UAE', 4.564656776465467e19, 'UAE', NULL, '2015-07-03 18:00:00', '2015-07-04 00:51:14', '2015-07-04 00:51:14'),
(237, 6, 1, 'vip polo', 'vip polo', 565, 'narayanganj', NULL, '2015-07-03 18:00:00', '2015-07-04 00:55:56', '2015-07-04 00:55:56'),
(238, 6, 1, 'vip cd 2', 'vip cd 2', 68, 'gingira', NULL, '2015-07-03 18:00:00', '2015-07-04 00:56:38', '2015-07-04 00:56:38'),
(239, 6, 1, 'hola pants', 'hola pants', 4456, 'habijabi', NULL, '2015-07-03 18:00:00', '2015-07-04 00:57:15', '2015-07-04 00:57:15'),
(240, 2, 1, 'vip building 1', 'sljfljsdjl l jljl ljlk ljlkjlkjl ljlj', 565656664646, 'dhaka', NULL, '2015-07-03 18:00:00', '2015-07-04 03:55:49', '2015-07-04 03:55:49'),
(241, 2, 1, 'undergarments ladies', 'undergarments ladies undergarments ladies', 569, 'darjiling', NULL, '2015-07-03 18:00:00', '2015-07-04 03:56:29', '2015-07-04 03:56:29'),
(242, 2, 1, 'vip car', 'vip car vip car vip car', 68945656, 'fsdfsdf', NULL, '2015-07-03 18:00:00', '2015-07-04 03:56:55', '2015-07-04 03:56:55'),
(243, 2, 1, 'special cd', 'special cd for kids', 5659899589, 'sdfsdfdsfsdf', NULL, '2015-07-03 18:00:00', '2015-07-04 03:57:29', '2015-07-04 03:57:29'),
(244, 2, 1, 'marsidis', 'marsidis car', 797987878, 'fdsfsdfsd', NULL, '2015-07-03 18:00:00', '2015-07-04 03:58:17', '2015-07-04 03:58:17'),
(245, 2, 1, 'nice cd', 'nice cd nice cd ', 989, 'hello', NULL, '2015-07-03 18:00:00', '2015-07-04 04:03:30', '2015-07-04 04:03:30'),
(246, 2, 1, 'new building', 'new building', 456446556, 'fdsfdsfg', NULL, '2015-07-03 18:00:00', '2015-07-04 04:08:18', '2015-07-04 04:08:18'),
(247, 6, 1, 'polo', 'polo polo polo', 566, 'dfgdfgfdgg', NULL, '2015-07-03 18:00:00', '2015-07-04 04:24:49', '2015-07-04 04:24:49'),
(248, 6, 1, 'nice house', 'nice house nice house', 4544654654, 'dubai', NULL, '2015-07-03 18:00:00', '2015-07-04 04:35:29', '2015-07-04 04:35:29'),
(249, 6, 1, 'tv', 'tv tv tv', 464646, 'location', NULL, '2015-07-03 18:00:00', '2015-07-04 04:36:31', '2015-07-04 04:36:31'),
(250, 6, 1, 'tie', 'tie tie tie tie ', 1000, 'location', NULL, '2015-07-03 18:00:00', '2015-07-04 04:38:29', '2015-07-04 04:38:29'),
(251, 6, 1, 'big house', 'big house big house', 565656565, 'location', NULL, '2015-07-03 18:00:00', '2015-07-04 04:39:49', '2015-07-04 04:39:49'),
(252, 6, 1, 'small pants', 'small pants', 898, 'location', NULL, '2015-07-03 18:00:00', '2015-07-04 04:41:31', '2015-07-04 04:41:31'),
(253, 6, 1, 'mobile', 'lkjslkfj nlk', 9898, 'locaiton', NULL, '2015-07-03 18:00:00', '2015-07-04 04:42:39', '2015-07-04 04:42:39'),
(254, 7, 1, 'polo', 'polo polo', 897, 'sdf fds f df ', NULL, '2015-07-03 18:00:00', '2015-07-04 04:51:38', '2015-07-04 04:51:38'),
(255, 2, 1, 'jlkajsdljkl', 'jlkjljlkjlkj', 5656565, 'dhaka', NULL, '2015-07-03 18:00:00', '2015-07-04 05:06:11', '2015-07-04 05:06:11'),
(256, 1, 45, 'fdfsdf', 'fdsfds', 545454, 'dsdsdsd', NULL, '2015-07-18 18:00:00', '2015-07-19 13:29:16', '2015-07-19 13:29:16'),
(257, 2, 45, 'Laptop one', 'everything fatafati', 465656, 'Dhaka', NULL, '2015-07-21 18:00:00', '2015-07-22 10:16:53', '2015-07-22 10:16:53'),
(258, 2, 45, 'Laptop one', 'everything fatafati', 465656, 'Dhaka', NULL, '2015-07-21 18:00:00', '2015-07-22 10:18:52', '2015-07-22 10:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_common_fields`
--

CREATE TABLE IF NOT EXISTS `product_common_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sub_category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `common_id` int(10) unsigned NOT NULL,
  `common_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_common_fields_sub_category_id_foreign` (`sub_category_id`),
  KEY `product_common_fields_user_id_foreign` (`user_id`),
  KEY `product_common_fields_common_id_common_type_index` (`common_id`,`common_type`),
  KEY `product_common_fields_title_index` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `product_common_fields`
--

INSERT INTO `product_common_fields` (`id`, `sub_category_id`, `user_id`, `title`, `description`, `price`, `location`, `published_at`, `common_id`, `common_type`, `created_at`, `updated_at`) VALUES
(1, 1, 45, 'mobile', 'nice mobile', 12000, 'Dhaka', '2015-07-19 18:00:00', 1, 'App\\Mobile', '2015-07-20 14:02:56', '2015-07-20 14:02:56'),
(2, 1, 45, 'mobile', 'nice mobile', 12000, 'Dhaka', '2015-07-19 18:00:00', 2, 'App\\Mobile', '2015-07-20 14:04:32', '2015-07-20 14:04:32'),
(3, 1, 45, 'mobile', 'nice mobile', 12000, 'Dhaka', '2015-07-19 18:00:00', 3, 'App\\Mobile', '2015-07-20 14:05:07', '2015-07-20 14:05:07'),
(4, 1, 45, 'mobile', 'nice mobile', 12000, 'Dhaka', '2015-07-19 18:00:00', 4, 'App\\Mobile', '2015-07-20 14:13:11', '2015-07-20 14:13:11'),
(5, 1, 45, 'mobile 2', 'dfsdf', 0, 'dfsdfds', '2015-07-19 18:00:00', 5, 'App\\Mobile', '2015-07-20 14:14:07', '2015-07-20 14:14:07'),
(6, 1, 45, 'FTFL', 'fgfdg', 0, 'gfdfgdf', '2015-07-19 18:00:00', 6, 'App\\Mobile', '2015-07-20 14:18:50', '2015-07-20 14:18:50'),
(9, 1, 45, 'Lighter', 'dfgfdg', 0, 'gdfgdf', '2015-07-19 18:00:00', 9, 'App\\Mobile', '2015-07-20 14:29:59', '2015-07-20 14:29:59'),
(10, 1, 45, 'Lighter', 'dfgfdg', 0, 'gdfgdf', '2015-07-19 18:00:00', 10, 'App\\Mobile', '2015-07-20 14:31:57', '2015-07-20 14:31:57'),
(11, 1, 45, 'Laravel Pro', 'laravel', 0, 'London', '2015-07-19 18:00:00', 11, 'App\\Mobile', '2015-07-20 14:38:58', '2015-07-20 14:38:58'),
(12, 1, 45, 'Laravel Pro', 'laravel', 0, 'London', '2015-07-19 18:00:00', 12, 'App\\Mobile', '2015-07-20 15:11:55', '2015-07-20 15:11:55'),
(13, 1, 45, 'Toma', 'fgdfg', 0, 'fgdfgdfg', '2015-07-19 18:00:00', 13, 'App\\Mobile', '2015-07-20 15:16:14', '2015-07-20 15:16:14'),
(14, 1, 45, 'Patient', 'dfsdfs', 0, 'dfsdf', '2015-07-19 18:00:00', 14, 'App\\Mobile', '2015-07-20 15:45:18', '2015-07-20 15:45:18'),
(15, 1, 45, 'dfdd', 'fdf', 0, 'fdf', '2015-07-21 18:00:00', 15, 'App\\Mobile', '2015-07-22 04:32:04', '2015-07-22 04:32:04'),
(16, 1, 45, 'status 2', 'fgdfg', 0, 'fgdf', '2015-07-21 18:00:00', 16, 'App\\Mobile', '2015-07-22 06:23:36', '2015-07-22 06:23:36'),
(17, 1, 45, 'status 1', 'dgsdg', 0, 'gsdg', '2015-07-21 18:00:00', 17, 'App\\Mobile', '2015-07-22 06:29:03', '2015-07-22 06:29:03'),
(18, 1, 45, 'status 2 one more', 'status 2 one more', 0, 'status 2 one more', '2015-07-21 18:00:00', 18, 'App\\Mobile', '2015-07-22 06:34:31', '2015-07-22 06:34:31'),
(19, 2, 45, 'Laptop one', 'everything Okay', 456123, 'Dhaka', '2015-07-21 18:00:00', 1, 'App\\Laptop', '2015-07-22 10:22:47', '2015-07-22 10:22:47'),
(20, 2, 45, 'Laptop two', 'good product', 50000, 'Dhaka', '2015-07-21 18:00:00', 2, 'App\\Laptop', '2015-07-22 10:32:50', '2015-07-22 10:32:50'),
(21, 2, 45, 'Laptop two', 'good product', 50000, 'Dhaka', '2015-07-21 18:00:00', 4, 'App\\Laptop', '2015-07-22 10:34:45', '2015-07-22 10:34:45'),
(22, 1, 45, 'vcxvcx', 'cxvxcv', 0, 'cvxxcv', '2015-07-22 18:00:00', 19, 'App\\Mobile', '2015-07-23 04:53:00', '2015-07-23 04:53:00'),
(23, 2, 45, 'gfdg', 'gdfg', 0, 'fgdfg', '2015-07-22 18:00:00', 5, 'App\\Laptop', '2015-07-23 04:53:56', '2015-07-23 04:53:56'),
(24, 2, 45, 'Laptop thress', 'dfdsf', 0, 'dsfdsf', '2015-07-22 18:00:00', 6, 'App\\Laptop', '2015-07-23 04:56:39', '2015-07-23 04:56:39'),
(25, 1, 45, 'Product Title', 'Product Description', 0, 'Location', '2015-07-23 18:00:00', 20, 'App\\Mobile', '2015-07-24 01:55:51', '2015-07-24 01:55:51'),
(26, 1, 45, 'Golden Bag', 'Product Description', 0, 'Loaction', '2015-07-23 18:00:00', 21, 'App\\Mobile', '2015-07-24 02:00:32', '2015-07-24 02:00:32'),
(27, 1, 45, 'Product Title gold', 'product description', 0, 'location', '2015-07-23 18:00:00', 22, 'App\\Mobile', '2015-07-24 02:12:06', '2015-07-24 02:12:06'),
(28, 2, 45, 'tintin', 'jljljl', 0, 'jljljl', '2015-07-23 18:00:00', 7, 'App\\Laptop', '2015-07-24 02:24:35', '2015-07-24 02:24:35'),
(29, 1, 45, 'New Mobile', 'Pd', 0, 'Location', '2015-07-23 18:00:00', 23, 'App\\Mobile', '2015-07-24 02:38:02', '2015-07-24 02:38:02'),
(30, 2, 45, 'Laptop', 'ProD', 2568014, 'Narayanganj', '2015-07-23 18:00:00', 8, 'App\\Laptop', '2015-07-24 02:41:46', '2015-07-24 02:41:46'),
(31, 5, 45, 'Jahangir Nagar Abasik Alaka', 'Product Description', 0, 'Location', '2015-07-23 18:00:00', 1, 'App\\Land', '2015-07-24 03:05:20', '2015-07-24 03:05:20'),
(32, 5, 45, 'Land No 1', 'Product Description', 0, 'Location', '2015-07-23 18:00:00', 2, 'App\\Land', '2015-07-24 04:57:07', '2015-07-24 04:57:07'),
(33, 5, 45, 'Land MotherBord', 'Product Description', 0, 'Location', '2015-07-23 18:00:00', 3, 'App\\Land', '2015-07-24 05:01:57', '2015-07-24 05:01:57'),
(34, 3, 45, 'Flat No 1', 'Product Description', 5000000, '', '2015-07-23 18:00:00', 1, 'App\\Flat', '2015-07-24 05:39:13', '2015-07-24 05:39:13'),
(35, 3, 45, 'Flat NO 2', 'Product  Description', 0, 'Ashulia', '2015-07-23 18:00:00', 2, 'App\\Flat', '2015-07-24 05:44:31', '2015-07-24 05:44:31'),
(36, 3, 45, 'Chess Board', '5454', 4554, '4545', '2015-07-23 18:00:00', 3, 'App\\Flat', '2015-07-24 05:56:48', '2015-07-24 05:56:48'),
(37, 2, 45, 'Laptop awesome', 'very cool and awesome', 54685, 'Dhaka', '2015-07-29 18:00:00', 9, 'App\\Laptop', '2015-07-30 13:38:20', '2015-07-30 13:38:20'),
(38, 5, 45, 'Land title test', 'Product Description', 0, 'Location', '2015-07-31 18:00:00', 4, 'App\\Land', '2015-08-01 14:55:48', '2015-08-01 14:55:48'),
(39, 1, 45, 'old mobile', 'Produdct Description', 0, 'Location', '2015-08-06 18:00:00', 24, 'App\\Mobile', '2015-08-07 02:16:43', '2015-08-07 02:16:43'),
(40, 1, 45, 'Match Mobile', 'PD', 878787878, 'location', '2015-08-06 18:00:00', 25, 'App\\Mobile', '2015-08-07 02:26:51', '2015-08-07 02:26:51'),
(41, 1, 45, 'chess Mobile', 'sfsdf', 56456, 'fdgdf', '2015-08-06 18:00:00', 26, 'App\\Mobile', '2015-08-07 02:30:08', '2015-08-07 02:30:08'),
(42, 1, 45, 'feast mo', 'gfdgfdg', 4654, 'trete', '2015-08-06 18:00:00', 27, 'App\\Mobile', '2015-08-07 02:31:55', '2015-08-07 02:31:55'),
(44, 3, 7, 'Flat no 3', 'Description', 30000000, '3/A Basundhara Residential Area', '2015-08-11 18:00:00', 4, 'App\\Flat', '2015-08-12 09:35:24', '2015-08-12 09:35:24'),
(45, 3, 45, 'hkhkhkhkjhk', 'hkjhkjhkjhkjhkhk ggkkhk', 5454545, 'loca', '2015-08-11 18:00:00', 5, 'App\\Flat', '2015-08-12 12:08:42', '2015-08-12 12:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_common_field_status`
--

CREATE TABLE IF NOT EXISTS `product_common_field_status` (
  `product_common_field_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `product_status_product_common_field_id_index` (`product_common_field_id`),
  KEY `product_status_status_id_index` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_common_field_status`
--

INSERT INTO `product_common_field_status` (`product_common_field_id`, `status_id`, `created_at`, `updated_at`) VALUES
(12, 3, '2015-07-20 15:11:56', '2015-07-20 15:11:56'),
(13, 3, '2015-07-20 15:16:15', '2015-07-20 15:16:15'),
(14, 3, '2015-07-20 15:45:19', '2015-07-20 15:45:19'),
(15, 3, '2015-07-22 04:32:04', '2015-07-22 04:32:04'),
(16, 2, '2015-07-22 06:23:37', '2015-07-22 06:23:37'),
(17, 1, '2015-07-22 06:29:03', '2015-07-22 06:29:03'),
(18, 2, '2015-07-22 06:34:32', '2015-07-22 06:34:32'),
(19, 3, '2015-07-22 10:22:47', '2015-07-22 10:22:47'),
(20, 3, '2015-07-22 10:32:51', '2015-07-22 10:32:51'),
(21, 3, '2015-07-22 10:34:45', '2015-07-22 10:34:45'),
(22, 3, '2015-07-23 04:53:01', '2015-07-23 04:53:01'),
(23, 3, '2015-07-23 04:53:56', '2015-07-23 04:53:56'),
(24, 3, '2015-07-23 04:56:40', '2015-07-23 04:56:40'),
(25, 3, '2015-07-24 01:55:51', '2015-07-24 01:55:51'),
(26, 3, '2015-07-24 02:00:32', '2015-07-24 02:00:32'),
(27, 3, '2015-07-24 02:12:06', '2015-07-24 02:12:06'),
(28, 3, '2015-07-24 02:24:35', '2015-07-24 02:24:35'),
(29, 3, '2015-07-24 02:38:03', '2015-07-24 02:38:03'),
(30, 3, '2015-07-24 02:41:46', '2015-07-24 02:41:46'),
(31, 3, '2015-07-24 03:05:20', '2015-07-24 03:05:20'),
(32, 1, '2015-07-24 04:57:08', '2015-07-24 04:57:08'),
(33, 2, '2015-07-24 05:01:58', '2015-07-24 05:01:58'),
(34, 3, '2015-07-24 05:39:14', '2015-07-24 05:39:14'),
(35, 3, '2015-07-24 05:44:31', '2015-07-24 05:44:31'),
(36, 3, '2015-07-24 05:56:48', '2015-07-24 05:56:48'),
(37, 2, '2015-07-30 13:38:21', '2015-07-30 13:38:21'),
(38, 1, '2015-08-01 14:55:49', '2015-08-01 14:55:49'),
(39, 2, '2015-08-07 02:16:44', '2015-08-07 02:16:44'),
(40, 2, '2015-08-07 02:26:52', '2015-08-07 02:26:52'),
(41, 2, '2015-08-07 02:30:08', '2015-08-07 02:30:08'),
(42, 2, '2015-08-07 02:31:56', '2015-08-07 02:31:56'),
(44, 3, '2015-08-12 09:35:25', '2015-08-12 09:35:25'),
(45, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE IF NOT EXISTS `product_tag` (
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `product_tag_product_id_index` (`product_id`),
  KEY `product_tag_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(217, 3, '2015-07-02 23:53:28', '2015-07-02 23:53:28'),
(218, 3, '2015-07-02 23:56:33', '2015-07-02 23:56:33'),
(219, 3, '2015-07-03 00:00:44', '2015-07-03 00:00:44'),
(220, 3, '2015-07-03 00:02:31', '2015-07-03 00:02:31'),
(221, 1, '2015-07-03 02:59:41', '2015-07-03 02:59:41'),
(222, 1, '2015-07-03 03:00:49', '2015-07-03 03:00:49'),
(223, 3, '2015-07-03 05:13:22', '2015-07-03 05:13:22'),
(224, 3, '2015-07-03 22:38:10', '2015-07-03 22:38:10'),
(226, 3, '2015-07-03 22:42:31', '2015-07-03 22:42:31'),
(228, 3, '2015-07-04 00:18:49', '2015-07-04 00:18:49'),
(229, 1, '2015-07-04 00:42:05', '2015-07-04 00:42:05'),
(230, 1, '2015-07-04 00:42:41', '2015-07-04 00:42:41'),
(231, 1, '2015-07-04 00:44:26', '2015-07-04 00:44:26'),
(232, 1, '2015-07-04 00:45:00', '2015-07-04 00:45:00'),
(233, 1, '2015-07-04 00:46:05', '2015-07-04 00:46:05'),
(234, 1, '2015-07-04 00:46:38', '2015-07-04 00:46:38'),
(235, 1, '2015-07-04 00:50:32', '2015-07-04 00:50:32'),
(236, 1, '2015-07-04 00:51:14', '2015-07-04 00:51:14'),
(237, 1, '2015-07-04 00:55:56', '2015-07-04 00:55:56'),
(238, 1, '2015-07-04 00:56:38', '2015-07-04 00:56:38'),
(239, 1, '2015-07-04 00:57:16', '2015-07-04 00:57:16'),
(240, 2, '2015-07-04 03:55:50', '2015-07-04 03:55:50'),
(241, 2, '2015-07-04 03:56:29', '2015-07-04 03:56:29'),
(242, 2, '2015-07-04 03:56:55', '2015-07-04 03:56:55'),
(243, 2, '2015-07-04 03:57:29', '2015-07-04 03:57:29'),
(244, 2, '2015-07-04 03:58:17', '2015-07-04 03:58:17'),
(245, 2, '2015-07-04 04:03:30', '2015-07-04 04:03:30'),
(246, 2, '2015-07-04 04:08:18', '2015-07-04 04:08:18'),
(247, 2, '2015-07-04 04:24:49', '2015-07-04 04:24:49'),
(248, 2, '2015-07-04 04:35:29', '2015-07-04 04:35:29'),
(249, 2, '2015-07-04 04:36:32', '2015-07-04 04:36:32'),
(250, 2, '2015-07-04 04:38:29', '2015-07-04 04:38:29'),
(251, 2, '2015-07-04 04:39:50', '2015-07-04 04:39:50'),
(252, 2, '2015-07-04 04:41:32', '2015-07-04 04:41:32'),
(253, 2, '2015-07-04 04:42:39', '2015-07-04 04:42:39'),
(254, 3, '2015-07-04 04:51:38', '2015-07-04 04:51:38'),
(255, 3, '2015-07-04 05:06:11', '2015-07-04 05:06:11'),
(256, 3, '2015-07-19 13:29:16', '2015-07-19 13:29:16'),
(257, 3, '2015-07-22 10:16:54', '2015-07-22 10:16:54'),
(258, 3, '2015-07-22 10:18:53', '2015-07-22 10:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_email_unique` (`email`),
  KEY `profiles_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile_no`, `address`, `created_at`, `updated_at`) VALUES
(3, 45, 'Nazim ', 'Khann', 'khann86@yahoo.com', 1719155112, 'dhaka', '2015-07-17 03:24:18', '2015-08-09 02:59:18'),
(4, 46, 'Samudra', 'Khan', 'sssamudra7@gmail.com', 1719155113, 'Shuvakardi', '2015-08-07 04:26:01', '2015-08-07 04:26:01'),
(8, 6, 'Show ', 'Melodrama', 'showmelodrama@gmail.com', 119155113, 'dhaka', '2015-08-09 03:49:47', '2015-08-09 03:49:47'),
(9, 7, 'Tanzil', 'Comilla', 'tanzil@yahoo.com', 912104595, 'Madanpur jilla', '2015-08-09 04:09:42', '2015-08-09 04:10:15'),
(10, 44, 'fgdfg', 'dfgdfg', 'amore@amore.com', 2147483647, 'fgdgdf', '2015-08-09 04:27:50', '2015-08-09 04:27:50'),
(11, 12, 'Raja', 'Khan', 'raj@yahoo.com', 123456789, 'dhaka', '2015-08-11 13:11:48', '2015-08-11 13:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `rmgs`
--

CREATE TABLE IF NOT EXISTS `rmgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_title_unique` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'VIP PLUS', '2015-07-20 14:36:02', '2015-07-20 14:36:02'),
(2, 'VIP', '2015-07-20 14:37:07', '2015-07-20 14:37:07'),
(3, 'FREE', '2015-07-20 14:37:22', '2015-07-20 14:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `sub_categories_category_id_foreign` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile', '2015-05-23 12:24:31', '2015-05-23 12:24:31'),
(2, 1, 'Laptop', '2015-05-23 12:25:20', '2015-05-23 12:25:20'),
(3, 2, 'Flat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Land', '2015-05-26 02:00:35', '2015-05-26 02:00:35'),
(6, 3, 'RMG', '2015-05-26 02:01:19', '2015-05-26 02:01:19'),
(7, 3, 'Knitware', '2015-05-26 02:01:33', '2015-05-26 02:01:33'),
(8, 4, 'others', '2015-07-20 05:44:59', '2015-07-20 05:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'VIP PLUS', '2015-07-03 04:24:00', '2015-07-03 04:24:00'),
(2, 'VIP', '2015-07-03 04:24:00', '2015-07-03 04:24:00'),
(3, 'FREE', '2015-07-03 04:24:00', '2015-07-03 04:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'visitor',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_status` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `activation_code`, `activation_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rinto', 'rinto.sp@gmail.com', '2246101626', 'visitor', 'asdadad3254125214', 1, 'asdfadadfaf25104', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'badal', 'showmelodrama@gmail.com', '$2y$10$UbRNT0En1RJNrlTeo0O44eRs.YvagmpidX3ERbsEui0AVO9KbnJ3C', 'visitor', '', 0, 'xZYSt32u2bekqg5suzrJ6GB1v7dyY7F19ynAbGprQJmnwLRDrWSU9mFeg6df', '2015-06-22 06:44:11', '2015-08-09 04:05:02'),
(7, 'tanzil', 'tanzil@yahoo.com', '$2y$10$0VzKCf6QBaQ01RGS1XroYejKIYtCOxVGLfs9JR4ihUzfuQqfvkx5G', 'visitor', '', 0, '4c5oSTzKqJzYatjI3Y0dywmHoL9dr7rF4sEUrPngtdKsrl38ngVK2NLQQoD6', '2015-06-22 06:48:41', '2015-08-11 13:07:27'),
(12, 'raj', 'raja@outlook.com', '$2y$10$yy9XwBioe9PII53mTijbne6DwsVM2H2Sj2CZcOaRaoj01gZpURxfy', 'visitor', '', 0, 'NVGNwjbsxUNmaN4HFQ2ITt75fiKkO5PSdgIkuOTkSqW4vFPWHYRsfFib263s', '2015-06-23 03:04:35', '2015-06-23 03:11:59'),
(14, 'moina', 'moina@yahoo.com', '$2y$10$Rq8LeWUYzF6ivInmsbkdU.cZAqQAurypmn5iweUR8mttQyfYjwigK', 'visitor', '', 0, 'S5GBM0tmgy0QEweFWg2w40bQpBYO7r1iyb4TxWwLICx5b61k7Dt8MNNYVSup', '2015-06-23 03:18:37', '2015-06-23 03:49:46'),
(44, 'nazim', 'khann86@yahoo.com', '$2y$10$M1jzucxSrOBq/Ypvp7aaVOjt3BHEfWGokJ/pV5srZoXv7b4MNhDPC', 'visitor', 'LAzwK5ZeIAXLxMhZ1PBBCBzWX9LLsZ', 0, '7VisVkux8P8y2GOmOLYXosq7OGHPXHgxnWflazQ0yrGdrQ5ZnmmhBiQcmWfu', '2015-06-26 22:59:43', '2015-08-09 04:29:48'),
(45, 'khan', 'khan@yahoo.com', '$2y$10$5Lypg0031FHGb0lFglLaZeAJ30EHg7fQGtAg9LoBoLVwQc1TplaI.', 'visitor', 'FzB9cDlw4U3KTtjzLNdreHGy0LX0kC', 0, 'eXS5jScybx8XmWPqzEykHDBLEkWfetHS15R1PGvxoKx9CWK4GQrpwqzdIKVb', '2015-06-26 23:38:14', '2015-09-01 22:52:00'),
(46, 'samudra', 'sssamudra7@gmail.com', '$2y$10$zEYKsF.PoqZwYYuJxo0bhOK9BliJyqNN9ywcvF0t..sfrALnZ8Psm', 'visitor', NULL, 1, 'aklueA7keeEUOvE7Ey1SVUApJfHCEEJDpwBanbjmN8QkGNsY564uSXpgQ9Ph', '2015-06-26 23:55:06', '2015-08-09 04:46:53'),
(47, 'raja', 'rajaftfl@outlook.com', '$2y$10$NKSA3GcDF4xDv1QXJ.1JGewLsCgHArKVCo2L.9NebsXCPydemXbzy', 'visitor', NULL, 1, 'iDMfDwD2rSSHJUq9Pirt9qFlffysBrHORF8JvWpkeLKIS1OYldZWikeAd200', '2015-07-01 23:08:06', '2015-07-02 01:48:55');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_common_fields`
--
ALTER TABLE `product_common_fields`
  ADD CONSTRAINT `product_common_fields_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_common_fields_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_common_field_status`
--
ALTER TABLE `product_common_field_status`
  ADD CONSTRAINT `product_status_product_common_field_id_foreign` FOREIGN KEY (`product_common_field_id`) REFERENCES `product_common_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
