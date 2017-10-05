-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2016 at 05:41 PM
-- Server version: 5.6.27-0ubuntu0.14.04.1
-- PHP Version: 5.6.16-2+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara-erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_field_to_tables`
--

CREATE TABLE `add_field_to_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`) VALUES
(26, 120, '4878756ljkhgufyg', 'gfxhghjkl899g', 'sryuhihhgfy797g', 'xygvrrtuh988g', 'hghvcrtryuij8978g', 'Active', 1),
(27, 120, '4878756ljkhgufygd', 'dgfxhghjkl899g', 'sryuhihhgfy797gd', 'dxygvrrtuh988g', 'hghvcrtryuij8978gd', 'Active', 1),
(31, 120, '4878756ldjkhgufygd', 'dgfxhghdjkl899g', 'sryuhihhdgfy797gd', 'dxygvrrtuh98d8g', 'hghvcrtrdyuij8978gd', 'Active', 1),
(33, 120, '4878756ldjkshgufygd', 'dgfxhghdjkl899gs', 'ssryuhihhdgfy797gd', 'dxygvrrtuh98d8gs', 'hghvcrtrdyuij8978gds', 'Active', 1),
(34, 120, 's4878756ldjkshgufygd', 'dsgfxhghdjkl899gs', 'ssryushihhdgfy797gd', 'dxygvrsrtuh98d8gs', 'hghsvcrtrdyuij8978gds', 'Active', 1),
(35, 120, 's487c8756ldjkshgufygd', 'dsgfxhghdjkl899gsc', 'ssryushihhdgfy797cgd', 'dxygvrsrtuh98d8cgs', 'hghsvcrtrdyuij8978gdsc', 'Active', 1),
(36, 120, 's487c8756ldjkshgufygdf', 'dsgfxhghdjkl899gscf', 'ssryushihhdgfy797cgdf', 'dxygvrsrtuh98d8cgsf', 'hghsvcrtrdyuij8978gdscf', 'Active', 1),
(37, 120, 's487c8756ldjkshgudfygdf', 'dsgfxhghdjkl89d9gscf', 'ssryushihhdgfy797dcgdf', 'dxygvrsrtuh98dd8cgsf', 'hghsvcrtrdyuij89d78gdscf', 'Active', 1),
(38, 120, 's487c8756ldjkdshgudfygdf', 'dsgfxhghdjkld89d9gscf', 'ssryushihhddgfy797dcgdf', 'dxygvrsrtuhd98dd8cgsf', 'hghsvcrtrdyudij89d78gdscf', 'Active', 1),
(39, 124, '1258963', '3695214', '125896', '245879', '1258963', 'Active', 1),
(41, 120, 's487c8756ldjekdshgudfygdf', 'dsgfxhghdjkled89d9gscf', 'ssryushihhddgefy797dcgdf', 'dxygvrsrtuhd98dd8cgsfe', 'hghsvcrtrdyudeij89d78gdscf', 'Active', 1),
(42, 120, 's487c8756ldjekdshgudfygdfr', 'dsgfxhghdjkled89d9gscfr', 'ssryushihhddgefy797dcgdfr', 'dxygvrsrtuhd98dd8cgsfer', 'hghsvcrtrdyudeij89d78gdscfr', 'Active', 1),
(43, 120, 's487c8756ldjekddshgudfygdfr', 'dsgfxhghdjkleqd89d9gscfr', 'ssryushihhdrdgefy797dcgdfr', 'dxygvrsrturhd98dd8cgsfer', 'hghsvcrtrdryudeij89d78gdscfr', 'Active', 1),
(44, 120, 's487c8756ldjekddsdhgudfygdfr', 'dsgfxhghdjkleqdd89d9gscfr', 'ssryushihhdrdgefd797dcgdfr', 'dxygvrsrturhd98ddd8cgsfer', 'hghsvcrtrdryudeid89d78gdscfr', 'Active', 1),
(46, 124, '12589632', '36952142', '1258962', '2458792', '12589632', 'Active', 1),
(47, 124, '12589632f', '36952142f', 'f1258962', '2458792f', '12589632f', 'Active', 1),
(51, 120, 'akshay123', 'Chandra', '1598647', '5789425', 'Mayaboti', 'Active', 1),
(52, 128, 'salman', 'IFIC', '12348957', 'abc125489', 'Delhi', 'Active', 1),
(54, 124, '12589632fd', '36952142fd', 'f1258962d', '2458792fd', '12589632fd', 'Active', 1),
(55, 120, 'akshay123d', 'Chandrad', '1598647d', '5789425d', 'Mayabotid', 'Active', 1),
(56, 120, 'akshay123dd', 'Chandradd', '1598647dd', '5789425dd', 'Mayabotidd', 'Active', 1),
(57, 120, 'akshay123ddf', 'Chandraddf', '1598647ddf', '5789425ddf', 'Mayabotiddf', 'Active', 1),
(58, 128, 'salmana', 'IFICb', '12348957f', 'abc125489f', 'Delhibr', 'Active', 1),
(62, 132, '12345896', 'habijabi', '456789', '123569', 'habdab', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_attributes`
--

CREATE TABLE `bonus_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `month` int(11) DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonus_attributes`
--

INSERT INTO `bonus_attributes` (`id`, `month`, `salary_types`, `amount`, `amount_type`) VALUES
(1, 1, NULL, 4545, '0'),
(2, 1, 'Array', 1596, '0'),
(3, 1, NULL, 454, '0'),
(4, 1, '{"total":"0","homeRent":"2"}', 456, '0'),
(5, 1, '{"total":"0","homeRent":"2"}', 2015, '0'),
(6, 1, '{"total":"0","homeRent":"2"}', 2502, '0'),
(7, 1, '{"total":"0","homeRent":"2"}', 2589, '0'),
(8, 1, '{"total":"0","homeRent":"2"}', 456, '0'),
(9, 1, '{"total":"0","homeRent":"2"}', 54545, '0'),
(10, 1, '{"total":"0","homeRent":"2"}', 454, '0'),
(11, 1, '{"total":"0","homeRent":"2"}', 454, '0'),
(12, 2, '{"total":"0","homeRent":"2"}', 454, '0'),
(13, 2, '{"total":"0","homeRent":"2"}', 25, '0'),
(14, 3, '{"total":"0","homeRent":"2"}', 2555, '0'),
(15, 1, '{"total":"0","homeRent":"2"}', 456, '0'),
(16, 1, '{"total":"0","homeRent":"2"}', 456, '0'),
(17, 1, '{"total":"0","homeRent":"2"}', 45, '0'),
(18, 1, '{"total":"0","homeRent":"2"}', 89, '0'),
(19, 2, '{"total":"0","homeRent":"2"}', 4489, '0'),
(20, 1, '{"total":"0","homeRent":"2"}', 45465, '0'),
(21, 2, '{"total":"0","homeRent":"2"}', 45, '0'),
(22, 2, '{"total":"0","homeRent":"2"}', 45, '0'),
(23, 2, '{"total":"0","homeRent":"2"}', 45, '0'),
(24, 2, '{"total":"0","homeRent":"2"}', 20, '0'),
(25, 2, '{"total":"0","homeRent":"2"}', 2000, '0'),
(26, 2, '{"total":"0","homeRent":"2"}', 152, '0'),
(27, 1, '{"total":"0","homeRent":"2"}', 45454, '0'),
(28, 3, '{"total":"0","homeRent":"2"}', 2000, '0'),
(29, 8, '{"total":"0","homeRent":"2"}', 2000, '0'),
(30, 6, '{"total":"0","homeRent":"2"}', 2000, '0'),
(31, 1, '{"total":"0","homeRent":"2"}', 2000, '0'),
(32, 2, '{"total":"0","homeRent":"2"}', 12, '0'),
(33, 1, '{"total":"0","homeRent":"2"}', 456, '0'),
(34, 1, '{"total":"0","homeRent":"2"}', 145, '0'),
(35, 1, '{"total":"0"}', 0, '0'),
(36, 1, '{"total":"0"}', 0, '0'),
(37, 1, '{"total":"0"}', 0, '0'),
(38, 1, '{"total":"0"}', 0, '0'),
(39, 1, '{"total":"0"}', 0, '0'),
(40, 1, '{"total":"0"}', 0, '0'),
(41, 1, '{"total":"0"}', 0, '0'),
(42, 1, '{"total":"0"}', 0, '0'),
(43, 1, '{"total":"0"}', 0, '0'),
(44, 1, '{"total":"0"}', 0, '0'),
(45, 1, '{"total":"0"}', 0, '0'),
(46, 1, '{"total":"0"}', 0, '0'),
(47, 1, '{"total":"0"}', 0, '0'),
(48, 1, '{"total":"0"}', 0, '0'),
(49, 1, '{"total":"0"}', 0, '0'),
(50, 1, '{"total":"0"}', 0, '0'),
(51, 1, '{"total":"0"}', 0, '0'),
(52, 1, '{"total":"0"}', 0, '0'),
(53, 1, '{"total":"0"}', 0, '0'),
(54, 0, '{"total":""}', 0, '0'),
(55, 1, '{"total":"0"}', 0, '0'),
(56, 1, '{"total":"0"}', 0, '0'),
(57, 1, '{"total":"0"}', 0, '0'),
(58, 1, '{"total":"0"}', 0, '0'),
(59, 1, '{"total":"0"}', 0, '0'),
(60, 0, '{"total":""}', 0, '0'),
(61, 1, '{"total":"0"}', 0, '0'),
(62, 2, 'Array', 5896, '0'),
(63, 1, '{"basic":"1","home_rent":"2","medical_allowance":"3"}', 2589, '0'),
(64, 3, '{"basic":"","home_rent":"","medical_allowance":"","travel_allowance":""}', 5689, '0'),
(65, 2, '{"basic":"1","extra":"6"}', 9898, '0'),
(66, 4, '{"basic":"","medical_allowance":""}', 5986, '0'),
(67, 1, '{"basic":"1","home_rent":"2","medical_allowance":"3"}', 5986, '0'),
(68, 1, '{"basic":"1","home_rent":"2","medical_allowance":"3","travel_allowance":"4"}', 59866, '0'),
(69, 1, '{"basic":"1","home_rent":"2"}', 988, '0'),
(70, 2, '{"basic":"1","home_rent":"2","medical_allowance":"3","travel_allowance":"4"}', 988, '0'),
(71, 2, '{"home_rent":"","travel_allowance":""}', 4568, '0'),
(72, 2, '{"basic":"1","home_rent":"2"}', 464, '0'),
(73, 2, '{"medical_allowance":"3","travel_allowance":"4"}', 0, '0'),
(74, 2, '{"basic":"1","medical_allowance":"3"}', 454, '0'),
(75, 3, '{"home_rent":"2","travel_allowance":"4"}', 977, '0'),
(76, 7, '{"medical_allowance":"3","extra":"6"}', 4454, '0'),
(77, 7, '{"home_rent":"2","medical_allowance":"3","travel_allowance":"4"}', 4859, 'fixed'),
(78, 7, '{"home_rent":"2","medical_allowance":"3"}', 96568, 'percent'),
(79, 5, '{"home_rent":"2","travel_allowance":"4"}', 4545, 'fixed'),
(80, 0, '{"basic":"1","home_rent":"2","medical_allowance":"3"}', 4544, 'fixed'),
(81, 0, 'null', 0, 'fixed'),
(82, 0, 'null', 0, 'fixed'),
(83, 0, 'null', 0, 'fixed'),
(84, 2, '{"basic":"1","travel_allowance":"4"}', 454544, 'fixed'),
(85, 0, '{"travel_allowance":"4","extra":"6"}', 4545, 'percent'),
(86, 0, 'null', 0, 'fixed'),
(87, 3, '{"medical_allowance":"3","travel_allowance":"4"}', 544, 'fixed'),
(88, 3, '{"basic":"1","medical_allowance":"3"}', 545, 'fixed'),
(89, 5, '{"home_rent":"2","travel_allowance":"4"}', 54445, 'fixed'),
(90, 7, '{"travel_allowance":"4","extra":"6"}', 54545, 'fixed'),
(91, 7, '{"medical_allowance":"3","travel_allowance":"4"}', 454, 'fixed'),
(92, 0, '{"travel_allowance":"4"}', 87, 'fixed'),
(93, 11, '{"travel_allowance":"4"}', 49898, 'fixed'),
(94, 0, '{"home_rent":"2","medical_allowance":"3"}', 8787, 'fixed'),
(95, 2, '{"home_rent":"2","medical_allowance":"3"}', 7887, 'fixed'),
(96, 0, '{"home_rent":"2","medical_allowance":"3"}', 8787, 'fixed'),
(97, 5, '{"basic":"1","medical_allowance":"3"}', 8778878, 'fixed'),
(98, 3, '{"basic":"1","home_rent":"2"}', 798778, 'fixed'),
(99, 0, '{"basic":"1","medical_allowance":"3"}', 4554, 'fixed'),
(100, 4, '{"basic":"1","home_rent":"2"}', 8787, 'fixed'),
(101, 0, '{"home_rent":"2"}', 78877, 'fixed'),
(102, 0, '{"basic":"1"}', 787, 'fixed'),
(103, 5, '{"medical_allowance":"3"}', 5454, 'fixed'),
(104, 11, '{"basic":"1"}', 5454, 'fixed'),
(105, 7, '{"basic":"1"}', 8787, 'fixed'),
(106, 3, '{"medical_allowance":"3"}', 5454, 'fixed'),
(107, 3, '{"medical_allowance":"3"}', 7878, 'fixed'),
(108, 4, '{"basic":"1","home_rent":"2"}', 454554, 'fixed'),
(109, 0, '{"home_rent":"2","medical_allowance":"3"}', 454, 'fixed'),
(110, 7, '{"home_rent":"2","medical_allowance":"3"}', 5454, 'fixed'),
(111, 0, '{"home_rent":"2","medical_allowance":"3"}', 5455, 'fixed'),
(112, 0, '{"home_rent":"2","medical_allowance":"3","travel_allowance":"4"}', 5455, 'fixed'),
(113, 5, '{"home_rent":"2","medical_allowance":"3","travel_allowance":"4"}', 5455, 'fixed'),
(114, 0, '{"basic":"1","medical_allowance":"3"}', 4544, 'fixed'),
(115, 5, '{"basic":"1","home_rent":"2","medical_allowance":"3"}', 4544, 'fixed'),
(116, 3, '{"medical_allowance":"3","travel_allowance":"4"}', 45544, 'fixed'),
(117, 4, '{"home_rent":"2"}', 895, 'fixed'),
(118, 6, '{"medical_allowance":"3"}', 5698, 'percent'),
(119, 4, '{"medical_allowance":"3"}', 589487, 'fixed'),
(120, 0, '{"home_rent":"2","medical_allowance":"3"}', 869, 'fixed'),
(121, 4, '{"home_rent":"2","medical_allowance":"3"}', 54454, 'fixed'),
(122, 6, '{"home_rent":"2","medical_allowance":"3"}', 4454, 'fixed'),
(123, 4, '{"home_rent":"2","medical_allowance":"3"}', 454, 'fixed'),
(124, 2, '{"basic":"1","medical_allowance":"3"}', 3659, 'fixed'),
(125, 6, '{"home_rent":"2","travel_allowance":"4"}', 4545, 'fixed'),
(126, 5, '{"medical_allowance":"3"}', 4896, 'fixed'),
(127, 5, '{"medical_allowance":"3","travel_allowance":"4"}', 565, 'fixed'),
(128, 5, '{"home_rent":"2","medical_allowance":"3"}', 4544, 'fixed'),
(129, 7, '{"basic":"1","travel_allowance":"4"}', 48, 'percent'),
(130, 4, '{"basic":"1","medical_allowance":"3"}', 6464, 'fixed'),
(131, 8, '{"basic":"1","travel_allowance":"4"}', 797877, 'fixed'),
(132, 3, '{"basic":"1","medical_allowance":"3"}', 2598, 'fixed'),
(133, 4, '{"medical_allowance":"3","travel_allowance":"4"}', 554, 'fixed'),
(134, 5, '{"home_rent":"2","travel_allowance":"4"}', 565898, 'fixed'),
(135, 6, '{"travel_allowance":"4","extra":"6"}', 898, 'fixed'),
(136, 7, '{"basic":"1","home_rent":"2","medical_allowance":"3"}', 456, 'fixed'),
(137, 8, '{"travel_allowance":"4","extra":"6"}', 25, 'percent'),
(138, 0, '{"medical_allowance":"3","travel_allowance":"4"}', 898, 'fixed'),
(139, 4, '{"total":"0","extra":"6"}', 8956, 'fixed'),
(140, 3, '{"extra":"6"}', 988, 'fixed'),
(141, 4, '{"basic":"1","home_rent":"2"}', 787, 'fixed'),
(142, 6, '{"basic":"1","travel_allowance":"4"}', 5454, 'fixed'),
(143, 2, '{"home_rent":"2","travel_allowance":"4"}', 89, 'percent'),
(144, 4, 'null', 54454, 'fixed'),
(145, 2, '{"home_rent":"2","travel_allowance":"4"}', 85, 'percent'),
(146, 0, 'null', 0, 'fixed'),
(147, 0, 'null', 0, 'fixed'),
(148, 0, '{"medical_allowance":"3"}', 0, 'fixed'),
(149, 4, '{"medical_allowance":"3","travel_allowance":"4"}', 589, 'fixed'),
(151, 0, '{"total":"0"}', 45, 'percent'),
(154, 3, '{"basic":"1"}', 20, 'percent'),
(155, 5, '{"total":"0"}', 20, 'percent'),
(158, 0, '{"basic":"1"}', 25, 'percent'),
(161, 0, '{"extra":"6"}', 598, 'fixed'),
(162, 0, '{"total":"0"}', 51, 'percent'),
(164, 6, '{"basic":"1"}', 555, 'fixed'),
(165, 8, '{"medical_allowance":"3"}', 589, 'percent'),
(166, 3, '{"basic":"1"}', 4859, 'fixed'),
(167, 3, '{"basic":"1","home_rent":"2"}', 589, 'fixed'),
(168, 2, '{"total":"0"}', 50, 'percent'),
(169, 5, '{"home_rent":"2"}', 589, 'fixed'),
(170, 0, '{"home_rent":"2","medical_allowance":"3"}', 58, 'percent'),
(171, 6, '{"medical_allowance":"3","travel_allowance":"4"}', 25, 'percent'),
(172, 7, '{"basic":"1"}', 50, 'percent'),
(173, 5, '{"total":"0"}', 58, 'percent'),
(175, 7, '{"extra":"6"}', 520, 'fixed'),
(176, 4, '{"home_rent":"2","medical_allowance":"3","travel_allowance":"4","extra":"6"}', 5845, 'fixed'),
(177, 2, '{"total":"0"}', 10, 'percent'),
(179, 3, '{"basic":"1"}', 50, 'percent'),
(181, 4, '{"basic":"1","home_rent":"2","medical_allowance":"3","travel_allowance":"4","extra":"6"}', 2000, 'fixed'),
(182, 1, '{"total":"0"}', 45, 'percent'),
(184, 9, '{"basic":"1","home_rent":"2"}', 456, 'percent'),
(185, 4, '{"basic":"1"}', 50, 'percent'),
(186, 10, '{"basic":"1"}', 50, 'percent'),
(187, 4, '{"basic":"1"}', 2000, 'fixed'),
(188, 6, '{"total":"0"}', 15, 'percent');

-- --------------------------------------------------------

--
-- Table structure for table `bonus_rules`
--

CREATE TABLE `bonus_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules` longtext COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonus_rules`
--

INSERT INTO `bonus_rules` (`id`, `name`, `rules`, `status_id`, `position`) VALUES
(1, 'Bonus Rule 1', '"24,25"', NULL, NULL),
(2, 'Rule 3', '"32"', NULL, NULL),
(3, 'Bonus rule 4', '"33"', NULL, NULL),
(4, '', '"34"', NULL, NULL),
(5, 'Rule 4', '"74,75,76"', NULL, NULL),
(6, 'rule 5', '"77,78"', NULL, NULL),
(7, 'hello ', '"79,80"', NULL, NULL),
(8, '', '""', NULL, NULL),
(9, 'rule 5', '"134,135"', NULL, NULL),
(10, 'rule60', '"162"', NULL, NULL),
(11, 'rule 61', '"164,165"', NULL, NULL),
(12, 'rule 45', '"172,173,175,176"', NULL, NULL),
(13, 'rule58', '"177"', NULL, NULL),
(14, '', '""', NULL, NULL),
(15, 'Employeek', '"179,181"', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `position`) VALUES
(2, 'Hr', 'Active', 0),
(3, 'Management', 'Active', 0),
(4, 'IT', 'Active', 0),
(5, 'Eeeeeee', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department_shift`
--

CREATE TABLE `department_shift` (
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department_shift`
--

INSERT INTO `department_shift` (`department_id`, `shift_id`) VALUES
(2, 11),
(4, 11),
(4, 10),
(3, 11),
(2, 1),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`) VALUES
(1, 4, 'Sr Software Engineer', 'Active', NULL),
(3, 3, 'Officer', 'Active', NULL),
(4, 4, 'Web Developer', 'Active', NULL),
(5, 2, 'Dfdsf', 'Sdfdsf', NULL),
(6, 3, 'Sr Officer', 'Active', NULL),
(7, 3, 'Jr Officer', '454', NULL),
(8, 3, 'Sr Manager', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emailer_id` int(11) NOT NULL,
  `emailer_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`) VALUES
(42, 'raja@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(43, 'kamu@kamu.com', 73, 'Erp\\Models\\User\\User', 0, 0),
(44, 'anis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0),
(45, 'harun@harun.com', 76, 'Erp\\Models\\User\\User', 0, 0),
(46, 'ala@ala.com', 77, 'Erp\\Models\\User\\User', 0, 0),
(47, 'harun@gmail.com', 76, 'Erp\\Models\\User\\User', 0, 0),
(48, 'sami@gmail.com', 80, 'Erp\\Models\\User\\User', 0, 0),
(49, 'masum@gmail.com', 83, 'Erp\\Models\\User\\User', 0, 0),
(50, 'masum@yahoo.com', 84, 'Erp\\Models\\User\\User', 0, 0),
(51, 'masum@email.com', 83, 'Erp\\Models\\User\\User', 0, 0),
(60, 'danis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0),
(61, 'monir@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0),
(62, 'monirul@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0),
(63, 'huzurd@gmail.com', 87, 'Erp\\Models\\User\\User', 0, 0),
(64, 'admin@yahoo.com', 90, 'Erp\\Models\\User\\User', 0, 0),
(65, 'huzurr@gmail.com', 91, 'Erp\\Models\\User\\User', 0, 0),
(66, 'suniya@yahoo.com', 92, 'Erp\\Models\\User\\User', 0, 0),
(67, 'rajas@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(68, 'raj@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(69, 'superadmin@superadmin.com', 93, 'Erp\\Models\\User\\User', 0, 0),
(70, 'firoza@yahoo.com', 94, 'Erp\\Models\\User\\User', 0, 0),
(71, 'firozaa@yahoo.com', 95, 'Erp\\Models\\User\\User', 0, 0),
(72, 'so@gmail.com', 96, 'Erp\\Models\\User\\User', 0, 0),
(73, 'jjkjjk@yahoo.com', 97, 'Erp\\Models\\User\\User', 0, 0),
(74, 'jkjkjk@ouo.com', 98, 'Erp\\Models\\User\\User', 0, 0),
(75, 'kjkjkjkj@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(76, 'kjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(77, 'dkjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(78, 'dkjkjkff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(79, 'dkjkjkffse@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(80, 'dkjkjkffse@uiuytjhjg.kj', 99, 'Erp\\Models\\User\\User', 0, 0),
(81, 'hjk@yu.piouiy', 100, 'Erp\\Models\\User\\User', 0, 0),
(82, 'lftrt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(83, 'lftrdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(84, 'lftrdft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(85, 'lftrdftg@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(86, 'lft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(87, 'lfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(88, 'ulfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(89, 'ulfdht@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(90, 'ulfdhft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(91, 'ulfdhfft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(92, 'ulfdhffwt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(93, 'jlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(94, 'jerlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(95, 'jerlretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(96, 'jer4lretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(97, 'jer4lretyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(98, 'jer4lrfetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(99, 'jer4lrfeetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(100, 'jer4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(101, 'jerw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(102, 'rw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(103, 'w4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(104, 'lkjljl@jl.khkjh', 104, 'Erp\\Models\\User\\User', 0, 0),
(105, 'lkjljwl@jl.khkjh', 105, 'Erp\\Models\\User\\User', 0, 0),
(106, 'lkjljwl@jl.khkjhf', 106, 'Erp\\Models\\User\\User', 0, 0),
(107, 'qlkjljwl@jl.khkjhf', 107, 'Erp\\Models\\User\\User', 0, 0),
(108, 'qlkjwwl@jl.khkjhf', 108, 'Erp\\Models\\User\\User', 0, 0),
(109, 'qluipoil@jl.khkjhf', 109, 'Erp\\Models\\User\\User', 0, 0),
(110, 'kjk@iyt.com', 110, 'Erp\\Models\\User\\User', 0, 0),
(111, 'kjke@iyt.com', 111, 'Erp\\Models\\User\\User', 0, 0),
(112, 'email@uyty.kjhjk', 112, 'Erp\\Models\\User\\User', 0, 0),
(113, 'lhlkhlh@jh.joiuo', 113, 'Erp\\Models\\User\\User', 0, 0),
(114, 'hals@uyo.com', 114, 'Erp\\Models\\User\\User', 0, 0),
(115, 'halsr@uyo.com', 115, 'Erp\\Models\\User\\User', 0, 0),
(116, 'iuyt@jiue.com', 116, 'Erp\\Models\\User\\User', 0, 0),
(117, 'iuyt@jiure.com', 117, 'Erp\\Models\\User\\User', 0, 0),
(118, 'iuytqw@jiudre.com', 118, 'Erp\\Models\\User\\User', 0, 0),
(119, 'hemD@email.com', 119, 'Erp\\Models\\User\\User', 0, 0),
(120, 'hemD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(121, 'hemeD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(122, 'ljlkjlkjlj@hjh.jk', 121, 'Erp\\Models\\User\\User', 0, 0),
(123, 'ljlkjlkwjlj@hjh.jk', 122, 'Erp\\Models\\User\\User', 0, 0),
(124, 'sami@sami.com', 123, 'Erp\\Models\\User\\User', 0, 0),
(125, 'hemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(126, 'hsemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(127, 'hsemesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(128, 'hsesmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(129, 'hsesdmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(130, 'hsesdfmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(131, 'hsesdfmesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(132, 'hsesdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(133, 'hello@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0),
(134, 'hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(135, '1hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(136, '1hsedfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(137, '1hsedfmfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(138, '1hsedfemfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(139, 'hekki@heu.com', 125, 'Erp\\Models\\User\\User', 0, 0),
(140, 'helleo@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0),
(141, 'helleod@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0),
(142, 'r@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(143, 'sumaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0),
(144, 'sumaaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0),
(145, 'sdsd@kjk.jkjk', 127, 'Erp\\Models\\User\\User', 0, 0),
(146, 'akki@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(147, 'sallu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0),
(148, 'rrr@gmail.com', 129, 'Erp\\Models\\User\\User', 0, 0),
(149, 'helleod@hyo.comg', 124, 'Erp\\Models\\User\\User', 0, 0),
(150, 'ak@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(151, 'akk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(152, 'kk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(153, 'salu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0),
(154, 'test@gmail.com', 130, 'Erp\\Models\\User\\User', 0, 0),
(155, 'saifu@gmail.com', 131, 'Erp\\Models\\User\\User', 0, 0),
(156, 'saifu5@gmail.com', 131, 'Erp\\Models\\User\\User', 0, 0),
(157, 'sohag@gmail.com', 132, 'Erp\\Models\\User\\User', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_histories`
--

CREATE TABLE `employee_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `dept_join_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_histories`
--

INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `dept_join_date`, `status`, `position`) VALUES
(51, 120, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(52, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(56, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(57, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(58, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(59, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(60, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(61, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(62, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(63, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(64, 124, 3, 6, '2016-01-20 18:00:00', NULL, NULL),
(65, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(66, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(67, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(68, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(69, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(71, 124, 3, 6, '2016-01-20 18:00:00', NULL, NULL),
(72, 124, 3, 6, '2016-01-20 18:00:00', NULL, NULL),
(76, 120, 2, 5, '2016-01-04 18:00:00', NULL, NULL),
(77, 128, 3, 6, '2016-01-04 18:00:00', NULL, NULL),
(79, 124, 3, 3, '2016-02-16 18:00:00', NULL, NULL),
(80, 120, 4, 1, '2016-02-02 18:00:00', NULL, NULL),
(81, 120, 2, 5, '2016-02-01 18:00:00', NULL, NULL),
(82, 120, 2, 5, '2016-02-08 18:00:00', NULL, NULL),
(83, 128, 2, 5, '2016-02-04 18:00:00', NULL, NULL),
(87, 132, 2, 5, '2016-03-04 18:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `status`) VALUES
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, 'Ygi');

-- --------------------------------------------------------

--
-- Table structure for table `gender_translations`
--

CREATE TABLE `gender_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `gender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gender_translations`
--

INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`) VALUES
(17, 17, 'Male', 'en'),
(18, 18, 'Female', 'en'),
(19, 19, 'Common', 'en'),
(20, 20, 'Gender', 'en'),
(21, 21, 'Hi', 'en'),
(22, 21, 'Gvu', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `holydays`
--

CREATE TABLE `holydays` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `occasion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holydays`
--

INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`) VALUES
(1, '2016-01-24', 'Optional', 2, 1, NULL),
(2, '2016-01-04', 'Winter', 2, 1, NULL),
(3, '2016-01-06', 'Tour', 2, 2, NULL),
(4, '2016-01-07', 'Hello Trip', 2, 1, NULL),
(5, '0000-00-00', 'Study Tour', 2, 1, NULL),
(6, '2016-01-25', 'Dfdsgdsgsd', 1, 1, NULL),
(7, '2016-01-25', 'New Vacation', 2, 2, NULL),
(8, '2016-01-06', 'Gsdgsdg', 1, 1, NULL),
(9, '2016-01-07', 'Testing', 1, 1, NULL),
(10, '2016-01-06', 'Fdsfsdf', 1, 2, NULL),
(11, '2016-02-02', 'Martyrs Day', 5, 1, NULL),
(12, '2016-03-01', 'Dayoff', 6, 1, NULL),
(13, '2016-03-12', 'Testing Holiday', 2, 1, NULL),
(14, '2016-03-13', 'Gfgfd', 1, 1, NULL),
(15, '2016-05-19', 'Optional', 1, 1, NULL),
(16, '2016-03-31', 'Kkkkkkkk', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holy_day_types`
--

CREATE TABLE `holy_day_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holy_day_types`
--

INSERT INTO `holy_day_types` (`id`, `type`, `status_id`, `position`) VALUES
(1, 'Rgional', 1, NULL),
(2, 'Office Owned ', 1, NULL),
(5, 'Hype', 1, NULL),
(6, 'Weekend', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leave_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_days` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `type`, `leave_details`, `max_days`, `status`, `position`) VALUES
(2, 'Maternal', 'When a female employee conceives, she will go under this type of leave', 180, 'Active', 1),
(3, 'Casual Leave', 'sfsdfsdfdsfdsfdsf', 25, 'Fdsfsdfsd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `applied_on` date DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT '2',
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_id`, `user_id`, `from`, `to`, `applied_on`, `status_id`, `position`) VALUES
(10, 2, 120, '2016-01-08', '2016-01-01', '2016-01-28', 2, NULL),
(11, 3, 128, '2016-01-28', '2016-02-02', '2016-01-27', 1, NULL),
(12, 3, 124, '2016-03-01', '2016-03-17', '2016-03-27', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_application_translations`
--

CREATE TABLE `leave_application_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_application_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explanation` text COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_application_translations`
--

INSERT INTO `leave_application_translations` (`id`, `leave_application_id`, `subject`, `explanation`, `locale`) VALUES
(9, 10, 'testing', 'explaination', 'en'),
(10, 11, 'Travel', 'Travel', 'en'),
(11, 12, 'Want leave', 'no explanation', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `log_tables`
--

CREATE TABLE `log_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loggable_id` int(11) NOT NULL,
  `loggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `filable_id` int(11) DEFAULT NULL,
  `filable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`) VALUES
(1, NULL, NULL, '14532854550b12016-01-09-195845.jpg', NULL, 109, 'Erp\\Models\\User\\User'),
(2, '1453286207UBY2016-01-09-195845.jpg', 'jpg', NULL, 111, 111, 'Erp\\Models\\User\\User'),
(3, '14532867245mY2016-01-09-195845', 'jpg', NULL, 112, 112, 'Erp\\Models\\User\\User'),
(4, '1453287116Rb92016-01-09-195845', 'jpg', NULL, 113, 113, 'Erp\\Models\\User\\User'),
(5, '1453289014dfHsadi-min', 'sql~', NULL, 115, 115, 'Erp\\Models\\User\\User'),
(6, '1453289014K1vschoolsoft', 'sql', NULL, 115, 115, 'Erp\\Models\\User\\User'),
(7, '1453290599Sejsvecommerce', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(8, '14532905992W7schoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(9, '1453290599oAjsadi-excel', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(10, '1453290599QfAsadi', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(11, '1453290599YqQschoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(12, '1453290942pqqsvecommerce', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(13, '1453290942cIoschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(14, '14532909422Vdschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(15, '1453290942yAcsadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(16, '1453290942ERssadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(17, '1453291476NPpsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(18, '1453291476EO5sadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(19, '1453291476aRxschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(20, '14532914762hoschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(21, '1453291476dKTsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(22, '1453291583RXeschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(23, '1453291583Waesadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(24, '1453291583fZOschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(25, '1453291583YKWsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(26, '1453291583MbJschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(27, '1453352490bCqsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(28, '1453352490Rdvschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(29, '1453352490w6kschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(30, '1453352490rwFschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(31, '1453352490l2Msadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(32, '1453357796Ksfschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(33, '1453357797syrsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(34, '145335779720qsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(35, '14533577977Rrsadi-min', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(36, '1453357797yhbschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(37, '1453360363ylxsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(38, '1453360440merschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(39, '1453360986fbSschoolsoft', 'sql', NULL, 124, 124, 'Erp\\Models\\User\\User'),
(40, '1453370772nXnschoolsoft', 'sql', NULL, 126, 126, 'Erp\\Models\\User\\User'),
(41, '1453714476Evuexel1', 'xlsx', NULL, 127, 127, 'Erp\\Models\\User\\User');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_05_053734_languages', 1),
('2015_12_05_055339_create_company_groups_table', 2),
('2015_12_05_061945_create_companies_table', 3),
('2015_12_05_064229_create_genders_table', 4),
('2015_12_05_072222_create_religions_table', 4),
('2015_12_05_072649_create_emails_table', 5),
('2015_12_05_081947_update_users_table', 6),
('2015_12_05_091238_create_passwords_table', 7),
('2015_11_15_103357_create_roles_table', 8),
('2015_12_05_094138_create_log_tables_table', 9),
('2015_12_05_101349_create_options_table', 10),
('2015_12_05_101607_create_add_field_to_tables_table', 11),
('2015_12_05_102313_create_media_table', 12),
('2015_12_05_104930_create_departments_table', 13),
('2015_12_05_111042_add_company_id_dept_id_to_users_table', 14),
('2015_12_06_040317_create_user_translations_table', 15),
('2015_12_06_041229_add_address_to_user_translations', 16),
('2015_12_06_042029_drop_address_firstname_lastname_from_users_table', 17),
('2015_12_06_045020_sixty_password_passwords_table', 18),
('2015_12_06_050155_email_unique_emails_table', 19),
('2015_12_06_050802_create_gender_translations_table', 20),
('2015_12_06_051417_drop_name_from_genders', 21),
('2015_12_06_051659_unique_username_in_users_table', 22),
('2015_12_22_045955_ttts', 23),
('2015_12_26_063509_drop_company_id_from_depts', 24),
('2015_12_26_064252_drop_company_id_from_depts', 25),
('2016_01_17_054556_create_bank_accounts_table', 26),
('2016_01_17_104403_create_designations_table', 27),
('2016_01_17_110047_create_employee_histories_table', 28),
('2016_01_17_110819_add_status_position_to_bankaccounts_table', 29),
('2016_01_18_101033_add_dept_id_to_users', 30),
('2016_01_18_101654_add_dept_id_to_users', 31),
('2016_01_19_064429_add_join_date_to_users', 32),
('2016_01_19_091227_add_father_mother_name_to_users_translation', 33),
('2016_01_19_091438_add_father_mother_name_to_users_translation', 34),
('2016_01_19_091611_add_father_mother_name_to_users_translation', 35),
('2016_01_19_095659_add_joining_salary_user_translations', 36),
('2016_01_19_095851_add_joining_salary_user_translations', 37),
('2016_01_19_100322_add_birthday_users', 38),
('2016_01_19_100447_add_birthday_users', 39),
('2016_01_19_105234_remove_foreign_account_no_bank_accounts', 40),
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
('2015_09_17_204114_create_countries_table', 12),
('2016_01_20_074201_add_polymorph_to_medias_table', 41),
('2016_01_20_113443_create_photos_table', 42),
('2016_01_21_104136_create_leaves_tables', 43),
('2016_01_21_110133_create_models_leave_leave_applications_table', 44),
('2016_01_23_071904_add_leave_details_and_max_days', 45),
('2016_01_23_072314_add_leave_details_and_max_days', 46),
('2016_01_23_090556_add_foregin_keys_leav_applications', 47),
('2016_01_23_091300_create_statuses_table', 48),
('2016_01_23_095851_create_leave_application_translations_table', 49),
('2016_01_23_111945_add_applied_on_to_leave_applications', 50),
('2016_01_24_045117_set_default_value_to_leave_applications', 51),
('2016_01_24_055451_change_status_to_status_id_leave_applications', 52),
('2016_01_24_055954_change_status_to_status_id_leave_applications', 53),
('2016_01_24_060502_ljjllj', 54),
('2016_01_24_091714_create_holydays_table', 55),
('2016_01_24_093813_create_holy_day_types_table', 56),
('2016_01_24_095732_add_status_positon_holy_day_types', 57),
('2016_01_24_100226_add_status_position_holydays', 58),
('2016_01_25_043900_rename_date_in_holydays', 59),
('2016_01_25_044332_add_to_in_holydays', 60),
('2016_01_25_071926_change_from_to_date_holydays', 61),
('2016_01_27_044212_change_holiday_foreign_key', 62),
('2016_01_27_103106_create_notice_boards_table', 63),
('2016_01_31_055951_create_shifts_table', 64),
('2016_01_31_062226_change_status_type_in_shifts', 65),
('2016_01_31_071159_drop_name_from_shifts', 66),
('2016_01_31_071711_create_shift_translations_table', 67),
('2016_02_01_090809_add_shift_id_to_shift_translations', 68),
('2016_02_01_102232_create_department_shifts_table', 69),
('2016_02_02_041905_add_shift_id_to_users', 70),
('2016_02_02_091556_create_punches_table', 71),
('2016_02_03_075337_add_punch_flag_to_punches', 72),
('2016_02_07_051953_create_shifts', 73),
('2016_02_07_053855_change_status_to_status_id_int', 74),
('2016_02_10_043613_change_and_add_collumn_name_punches', 75),
('2016_02_10_044656_change_punch_out_datetime_position_punches', 76),
('2016_02_10_051636_punch_out_date_time', 77),
('2016_02_10_051826_punch_out_dat_time', 78),
('2016_02_13_043857_add_overtime_to_punches', 79),
('2016_02_13_102300_add_working_hours_to_punches', 80),
('2016_02_14_094813_add_punch_date_time', 81),
('2016_02_20_053644_create_salary_types_table', 82),
('2016_02_20_100927_create_salary_rules_table', 83),
('2016_02_23_045539_create_overtime_rules_table', 84),
('2016_02_23_050838_add_status_overtimerules', 85),
('2016_02_23_052252_create_salary_cuts_table', 86),
('2016_02_23_052303_create_bonuses_table', 86),
('2016_02_24_054731_create_user_salaries_table', 87),
('2016_02_24_063123_add_basic_to_user_salaries', 88),
('2016_02_27_084038_modify_bonus_rules', 89),
('2016_02_27_092643_create_bonus_attributes_table', 90),
('2016_03_28_055450_add_employee_id_to_users', 91),
('2016_03_28_062815_add_employee_id_to_punches', 92);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_rules`
--

CREATE TABLE `overtime_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `overtime_rules`
--

INSERT INTO `overtime_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status_id`, `position`) VALUES
(1, 'Overtime 1', '[]', 2000, '1', 1, NULL),
(2, 'overtime 2', '{"basic":"0","total":"1","home_rent":"2"}', 5000, 'Fixed', 1, NULL),
(3, 'overtime 3', '{"basic":"basic","total":"total","home_rent":"Home Rent"}', 4545, 'Fixed', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passwords`
--

CREATE TABLE `passwords` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passwords`
--

INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`) VALUES
(111, '$2y$10$w.czDutnybbXFgpCXUB7ieEitXgAqN0qMOcp70Sb.Xr2KgC16kEPW', 0, 120, 0),
(112, '$2y$10$7Uk6cSf7xyiQFm5fIujcMuix0C6avAkxccO6zbyu4xwFl9BiLNNoW', 0, 120, 0),
(116, '$2y$10$3kz4tdhaT0w7r/ZnZZUu0eGlG55/9fOSaPd5TXI2wS3ct8ylPSjPm', 0, 120, 0),
(117, '$2y$10$1LdXgo1HsFhdoTWgzfMfYettz0TWBTXSXjdNlQA/6Gov8d2iSBsXy', 0, 120, 0),
(118, '$2y$10$fFHNMTPY5cudxs75pztkeOeTQ.IdkUREsOpoqxtoeksc1J2ZlNC/e', 0, 120, 0),
(119, '$2y$10$X6A5.iPnogLEmt24gK5a2OWwHvNQeBeS1wOohxP3bDsSaYrtTKCBu', 0, 120, 0),
(120, '$2y$10$sLhLyzNYzYEIKDS5cMxivuF.kyOzZ469/LKlyRqYjophY3oNHF8EC', 0, 120, 0),
(121, '$2y$10$6H4FfW0jrHyY72MCVE9dg.31Pa5uCOatEQr9CSe2d.WtoY.bClMuK', 0, 120, 0),
(122, '$2y$10$Y6kQwu8ZfxzuBc.T3yaQH.CrtjdStEMaR1JXmBk7SGOrcx4/LZlgS', 0, 120, 0),
(123, '$2y$10$tmlqSun8RLI7MCYbUdwmXuAYXwXX3jA14RbltNL3PZ1Tk9l49DA/y', 0, 120, 0),
(124, '$2y$10$HVib762lX6.icwyhXULkDu0arqw5GkBIBcims1qN8/ueamfZm7rpG', 0, 124, 0),
(125, '$2y$10$nKct.VUYIrTcP0LJfU6SqOU52j0LeKEQo7/3PtVnJBRf4jbfKd0wO', 0, 120, 0),
(126, '$2y$10$fPfZw1BoNpT54ifguxZkmOp63mEgsREc.Gfixn5WbagF.enK.3WTW', 0, 120, 0),
(127, '$2y$10$YhucaRcbO8HRE6yrFHBoLOxK1mHKKWF4tMnFImyXjhvTUNZD.UzGa', 0, 120, 0),
(128, '$2y$10$rL40Wt/8mmb6LyB3CI.EyOSRwyZWvHh5/aVWZbcZ8UNuXdnC2MDVK', 0, 120, 0),
(129, '$2y$10$q.hllN77hArRPBJtmml40uH./kV6XpCSvNf.e36.6.1gReifITnie', 0, 120, 0),
(131, '$2y$10$jUUqq8.yrSMEiYPqJC7Afe3cFOqwovnE66TBcRfm89M2uN.T7UcSy', 0, 124, 0),
(132, '$2y$10$dgC4daA/TMXg60zMtKaruuPil2gG.MbCUlMjw39R1vX0kETD6khZC', 0, 124, 0),
(137, '$2y$10$19QW6/oFuV4UjgjQVY4QV.yU93GTdZJ4/kRmJim41H9tUYoSy8ngO', 0, 120, 0),
(138, '$2y$10$q9h5epByrsjgA8IGvx4kYebL6YjYSDrtXC9LY1Cbc6iA5bAHckz66', 0, 128, 0),
(140, '$2y$10$eTCQkfTNI2Z/EhGdMVMK9OiS3iVPsBOUOKIuGQUnUmn8AjW3P4Lca', 0, 124, 0),
(141, '$2y$10$Dkne.dSvBokCdbNX8tgl4O44arraASlgXDHN469ub3tNWu80Cxu2y', 0, 120, 0),
(142, '$2y$10$UvLWkdo.9fEWnkvQgAUnleyjjF2GZh40MMa3xbSc4HFrzu5afYR.C', 0, 120, 0),
(143, '$2y$10$iMLHPG6vyw/hlPWps.979u.y6BFKvUQWig/5nLg5wrO0karDmEb.G', 0, 120, 0),
(144, '$2y$10$vZG3Zo.xp0Efhlp/cIAwyOH.J3G9X4zkIvXI6ebLzHCOg.YJWeChi', 0, 128, 0),
(148, '$2y$10$IIml7.4WMnLGjNXJCAGueucHDOIBha8ivwjm6vbbGA..ezEmDiQAK', 0, 132, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`) VALUES
(1, 'Create Things', 'whoever assigned this permission can create anything in the system', 0, 0),
(2, 'Edit', 'whoever assigned this permission can edit anything in the system', 0, 0),
(3, 'Hello', 'Hello World', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(3, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`) VALUES
(1, 120, 120, 'Erp\\Models\\User\\User', '1453291583SFf2016-01-09-195845', NULL, 'jpg'),
(2, 120, 120, 'Erp\\Models\\User\\User', '1453352490Hk12016-01-09-195845.jpg', NULL, ''),
(3, 122, 122, 'Erp\\Models\\User\\User', '1453354270gnI2016-01-09-195845.jpg', NULL, ''),
(4, 123, 123, 'Erp\\Models\\User\\User', '1453357797aWn2016-01-09-195845.jpg', NULL, ''),
(5, 120, 120, 'Erp\\Models\\User\\User', '1453358953q8M2016-01-09-195845.jpg', NULL, ''),
(6, 124, 124, 'Erp\\Models\\User\\User', '1453359264oDW2016-01-09-195845.jpg', NULL, ''),
(7, 125, 125, 'Erp\\Models\\User\\User', '1453360599lqb2016-01-09-195845.jpg', NULL, ''),
(8, 124, 124, 'Erp\\Models\\User\\User', '1453360985VaD2016-01-09-195845.jpg', NULL, ''),
(9, 126, 126, 'Erp\\Models\\User\\User', '1453370411lXy2016-01-09-195845.jpg', NULL, ''),
(10, 126, 126, 'Erp\\Models\\User\\User', '1453370772wJa2016-01-09-195845.jpg', NULL, ''),
(11, 127, 127, 'Erp\\Models\\User\\User', '1453714476BE52016-01-09-195845.jpg', NULL, ''),
(12, 120, 120, 'Erp\\Models\\User\\User', '1453888494hDG2016-01-09-195845.jpg', NULL, ''),
(13, 128, 128, 'Erp\\Models\\User\\User', '1453894001vx62016-01-09-195845.jpg', NULL, ''),
(14, 129, 129, 'Erp\\Models\\User\\User', '14543895801Fp2016-01-09-195845.jpg', NULL, ''),
(15, 124, 124, 'Erp\\Models\\User\\User', '1454395442KPt2016-01-09-195845.jpg', NULL, ''),
(16, 120, 120, 'Erp\\Models\\User\\User', '145440801153H2016-01-09-195845.jpg', NULL, ''),
(17, 120, 120, 'Erp\\Models\\User\\User', '1454836303ttZ2016-01-09-195845.jpg', NULL, ''),
(18, 120, 120, 'Erp\\Models\\User\\User', '1455012726XVp2016-01-09-195845.jpg', NULL, ''),
(19, 128, 128, 'Erp\\Models\\User\\User', '1455348360YWW2016-01-09-195845.jpg', NULL, ''),
(20, 130, 130, 'Erp\\Models\\User\\User', '14553609881ji2016-01-09-195845.jpg', NULL, ''),
(21, 131, 131, 'Erp\\Models\\User\\User', '1456306315aLT2016-01-09-195845.jpg', NULL, ''),
(22, 131, 131, 'Erp\\Models\\User\\User', '1456309612Vdk2016-01-09-195845.jpg', NULL, ''),
(23, 132, 132, 'Erp\\Models\\User\\User', '14575012467Xv2016-01-09-195845.jpg', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `punches`
--

CREATE TABLE `punches` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `punch_in` time DEFAULT NULL,
  `punch_out` time DEFAULT NULL,
  `punch_date` date DEFAULT NULL,
  `punch_date_time` datetime DEFAULT NULL,
  `punch_in_date_time` datetime DEFAULT NULL,
  `punch_out_date_time` datetime DEFAULT NULL,
  `working_hours` double(8,2) NOT NULL DEFAULT '0.00',
  `is_overtime` int(11) NOT NULL DEFAULT '0',
  `punch_year` int(11) DEFAULT NULL,
  `punch_month` int(11) DEFAULT NULL,
  `punch_day` int(11) DEFAULT NULL,
  `punch_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `punches`
--

INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`) VALUES
(122, 120, '0667', '04:56:02', NULL, '2016-02-18', NULL, '2016-02-18 04:56:02', '2016-02-18 04:56:15', 0.00, 0, 2016, 2, 19, 0),
(125, 120, '0667', '11:35:25', NULL, '2016-02-19', NULL, '2016-02-19 11:35:25', '2016-02-19 11:35:30', 0.00, 0, 2016, 2, 20, 0),
(126, 120, '0667', '04:33:10', NULL, '2016-03-20', NULL, '0000-00-00 00:00:00', '2016-03-20 06:57:05', 0.00, 1, 2016, 3, 20, 0),
(127, 120, '0667', '06:48:54', NULL, '2016-03-20', NULL, '2016-03-20 06:58:59', '2016-03-20 06:59:05', 0.00, 0, 2016, 3, 20, 0),
(128, 120, '0667', '06:56:58', NULL, '2016-03-20', NULL, '2016-03-20 06:59:30', '2016-03-20 06:59:55', 0.00, 0, 2016, 3, 20, 0),
(129, 128, '0627', '07:00:46', NULL, '2016-03-20', NULL, '2016-03-20 07:00:46', '2016-03-20 07:00:55', 0.00, 0, 2016, 3, 20, 0),
(130, 128, '0627', '09:39:21', NULL, '2016-03-20', NULL, '2016-03-20 09:39:21', '2016-03-20 09:39:24', 0.00, 0, 2016, 3, 20, 0),
(131, 128, '0627', '09:39:28', NULL, '2016-03-20', NULL, '2016-03-20 09:39:28', '2016-03-20 12:00:00', 0.00, 0, 2016, 3, 20, 0),
(132, 120, '0667', '06:45:42', NULL, '2016-03-21', NULL, '2016-03-21 05:45:42', '2016-03-21 06:45:47', 0.00, 0, 2016, 3, 21, 0),
(133, 120, '0667', '06:46:40', NULL, '2016-03-21', NULL, '2016-03-21 06:46:40', '2016-03-21 06:46:49', 0.00, 0, 2016, 3, 21, 0),
(135, 132, '1217', '07:07:43', NULL, '2016-03-21', NULL, '2016-03-21 07:07:43', '2016-03-21 07:07:48', 0.00, 0, 2016, 3, 21, 0),
(136, 124, '0635', '07:08:43', NULL, '2016-03-21', NULL, '2016-03-21 07:08:43', '2016-03-21 07:08:46', 0.00, 0, 2016, 3, 21, 0),
(137, 120, '0667', '08:36:06', NULL, '2016-03-21', NULL, '2016-03-21 08:36:06', '2016-03-21 08:36:36', 0.01, 0, 2016, 3, 21, 0),
(138, 120, '0667', '08:37:14', NULL, '2016-03-21', NULL, '2016-03-21 08:37:14', '2016-03-21 08:37:17', 0.00, 0, 2016, 3, 21, 0),
(139, 120, '0667', '08:42:19', NULL, '2016-03-21', NULL, '2016-03-21 08:42:19', '2016-03-21 08:42:23', 0.00, 0, 2016, 3, 21, 0),
(140, 120, '0667', '08:44:26', NULL, '2016-03-21', NULL, '2016-03-21 08:44:26', '2016-03-21 08:44:33', 0.00, 0, 2016, 3, 21, 0),
(141, 128, '0627', '08:45:51', NULL, '2016-03-21', NULL, '2016-03-21 08:45:51', '2016-03-21 08:45:54', 0.00, 0, 2016, 3, 21, 0),
(142, 128, '0627', '08:52:12', NULL, '2016-03-21', NULL, '2016-03-21 08:52:12', '2016-03-21 08:52:15', 0.00, 0, 2016, 3, 21, 0),
(143, 128, '0627', '08:52:46', NULL, '2016-03-21', NULL, '2016-03-21 08:52:46', '2016-03-21 08:52:49', 0.00, 0, 2016, 3, 21, 0),
(144, 124, '0635', '08:54:13', NULL, '2016-03-21', NULL, '2016-03-21 08:54:13', '2016-03-21 08:54:16', 0.00, 0, 2016, 3, 21, 0),
(145, 132, '1217', '08:56:11', NULL, '2016-03-21', NULL, '2016-03-21 08:56:11', '2016-03-21 08:56:14', 0.00, 0, 2016, 3, 21, 0),
(146, 132, '1217', '09:19:31', NULL, '2016-03-21', NULL, '2016-03-21 09:19:31', '2016-03-21 09:19:35', 0.00, 0, 2016, 3, 21, 0),
(147, 120, '0667', '11:26:39', NULL, '2016-03-21', NULL, '2016-03-21 11:26:39', '2016-03-21 11:26:44', 0.00, 0, 2016, 3, 21, 0),
(148, 120, '0667', '10:42:12', NULL, '2016-03-22', NULL, '2016-03-22 10:42:12', '2016-03-22 10:42:16', 0.00, 1, 2016, 3, 22, 0),
(149, 128, '0627', '10:44:59', NULL, '2016-03-22', NULL, '2016-03-22 10:44:59', '2016-03-22 10:45:03', 0.00, 1, 2016, 3, 22, 0),
(150, 128, '0627', '10:45:59', NULL, '2016-03-22', NULL, '2016-03-22 10:45:59', '2016-03-22 10:46:03', 0.00, 1, 2016, 3, 22, 0),
(151, 128, '0627', '10:47:14', NULL, '2016-03-22', NULL, '2016-03-22 10:47:14', '2016-03-22 10:47:21', 0.00, 1, 2016, 3, 22, 0),
(152, 128, '0627', '10:51:23', NULL, '2016-03-22', NULL, '2016-03-22 10:51:23', '2016-03-22 10:51:28', 0.00, 1, 2016, 3, 22, 0),
(153, 120, '0667', '05:01:13', NULL, '2016-03-23', NULL, '2016-03-23 05:01:13', '2016-03-23 05:01:21', 0.00, 0, 2016, 3, 23, 0),
(154, 124, '0635', '05:12:29', NULL, '2016-03-27', NULL, '2016-03-27 05:12:29', '2016-03-27 05:12:35', 0.00, 0, 2016, 3, 27, 0),
(155, 120, '0667', '08:16:06', NULL, '2016-03-27', NULL, '2016-03-27 08:16:06', '2016-03-27 08:16:12', 0.00, 0, 2016, 3, 27, 0),
(156, 120, '0667', '09:20:58', NULL, '2016-03-28', NULL, '2016-03-28 09:20:58', '2016-03-28 09:21:03', 0.00, 0, 2016, 3, 28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`) VALUES
(1, 'Est', 'Active'),
(2, 'Islam', 'Active'),
(3, 'Budhism', 'Active'),
(4, 'Hvjvkk', '1');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `status`, `position`) VALUES
(2, 'Employee', 'An employee can access his personal page only.', NULL, 0),
(3, 'Manager', 'A Manager can view management related details of an employee ', NULL, 0),
(4, 'superadmin', 'Can create Admins including anything else', NULL, 0),
(5, 'HR Department', 'Human Resource', NULL, 0),
(6, 'Assistant manager', 'assist manager', NULL, 0),
(7, 'Inventory Manager', 'jkjkj kjkjkjjkk', NULL, 0),
(8, 'Player', 'Players', NULL, 0),
(9, 'Ecom', 'An admin has the access to any part of the system.', NULL, 0),
(10, 'Producer', 'A producer can -----------', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(120, 2),
(124, 2),
(128, 2),
(132, 2),
(120, 4),
(128, 4),
(124, 6);

-- --------------------------------------------------------

--
-- Table structure for table `salary_cut_rules`
--

CREATE TABLE `salary_cut_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_cut_rules`
--

INSERT INTO `salary_cut_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status_id`, `position`) VALUES
(1, 'cut 1', '{"basic":"basic","total":"total","home_rent":"2"}', 5698, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_rules`
--

CREATE TABLE `salary_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_content` longtext COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_rules`
--

INSERT INTO `salary_rules` (`id`, `name`, `rules_content`, `status_id`, `position`) VALUES
(4, 'Rule 6', '{"home_rent_amount":"12","home_rent_amount_type":"percent","medical_allowance_amount":"256","medical_allowance_amount_type":"fixed","travel_allowance_amount":"568","travel_allowance_amount_type":"fixed","extra_amount":"566","extra_amount_type":"fixed"}', 1, NULL),
(5, 'Rule 8', '{"home_rent_amount":"956","home_rent_amount_type":"fixed","medical_allowance_amount":"5698","medical_allowance_amount_type":"fixed","travel_allowance_amount":"5698","travel_allowance_amount_type":"fixed","extra_amount":"5849","extra_amount_type":"fixed"}', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_types`
--

CREATE TABLE `salary_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_types`
--

INSERT INTO `salary_types` (`id`, `name`, `status_id`, `position`) VALUES
(2, 'Home Rent', 1, NULL),
(3, 'Medical Allowance', 1, NULL),
(7, 'Travel Allowance', 1, NULL),
(8, 'Extra', 1, NULL),
(9, 'mobile', 1, NULL),
(10, 'entainmen', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contents` longtext COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `contents`, `position`, `status_id`) VALUES
(1, '{"sat_in":"12:00:00","sat_out":"13:30:00","sat_max":"12:00:00","sat_min":"13:30:00","sat_extend_day":"on","sat_day_off":"","sun_in":"12:00:00","sun_out":"13:30:00","sun_max":"12:00:00","sun_min":"13:30:00","sun_extend_day":"on","sun_day_off":"","mon_in":"12:00:00","mon_out":"13:30:00","mon_max":"05:00:00","mon_min":"13:30:00","mon_extend_day":"on","mon_day_off":"","tue_in":"12:00:00","tue_out":"13:30:00","tue_max":"06:00","tue_min":"07:50","tue_extend_day":"on","tue_day_off":"","wed_in":"12:00:00","wed_out":"13:30:00","wed_max":"12:00:00","wed_min":"13:30:00","wed_extend_day":"on","wed_day_off":"","thu_in":"12:00:00","thu_out":"13:30:00","thu_max":"12:00:00","thu_min":"13:30:00","thu_extend_day":"on","thu_day_off":"","fri_in":"12:00:00","fri_out":"13:15:00","fri_max":"12:00:00","fri_min":"13:30:00","fri_extend_day":"on","tue_day_off":"on"}', NULL, 1),
(2, '{"sat_in":"","sat_out":"","sat_max":"","sat_min":"","sun_in":"","sun_out":"","sun_max":"","sun_min":"","mon_in":"","mon_out":"","mon_max":"","mon_min":"","tue_in":"","tue_out":"","tue_max":"","tue_min":"","wed_in":"","wed_out":"","wed_max":"","wed_min":"","thu_in":"","thu_out":"","thu_max":"","thu_min":"","fri_in":"","fri_out":"","fri_max":"","fri_min":""}', NULL, 0),
(3, '{"sat_in":"17:00","sat_out":"01:00","sat_max":"16:00","sat_min":"02:00","sat_extend_day":"on","sun_in":"17:00","sun_out":"01:00","sun_max":"16:00","sun_min":"02:00","sun_extend_day":"on","mon_in":"10:00","mon_out":"17:00","mon_max":"09:00","mon_min":"18:00","tue_in":"01:10","tue_out":"04:00","tue_max":"01:00","tue_min":"07:30","wed_in":"00:00","wed_out":"01:30","wed_max":"09:00","wed_min":"16:00","thu_in":"17:00","thu_out":"23:00","thu_max":"16:00","thu_min":"23:10","fri_in":"00:00","fri_out":"00:00","fri_max":"00:00","fri_min":"00:00"}', NULL, 1),
(4, '{"sat_in":"04:00","sat_out":"12:00","sat_max":"12:00","sat_min":"04:00","sun_in":"05:00","sun_out":"12:00","sun_max":"12:00","sun_min":"05:00","sun_day_off":"on","mon_in":"05:00","mon_out":"12:00","mon_max":"12:00","mon_min":"05:00","tue_in":"15:00","tue_out":"02:00","tue_max":"02:00","tue_min":"15:00","tue_day_off":"on","tue_extend_day":"on","wed_in":"05:00","wed_out":"12:00","wed_day_off":"on","wed_max":"12:50","wed_min":"04:00","thu_in":"05:00","thu_out":"12:00","thu_max":"13:00","thu_min":"06:30","thu_day_off":"on","fri_in":"05:00","fri_out":"12:00","fri_max":"12:00","fri_min":"04:00"}', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifts-copy`
--

CREATE TABLE `shifts-copy` (
  `id` int(10) UNSIGNED NOT NULL,
  `sat_in` time DEFAULT NULL,
  `sat_out` time DEFAULT NULL,
  `sun_in` time DEFAULT NULL,
  `sun_out` time DEFAULT NULL,
  `mon_in` time DEFAULT NULL,
  `mon_out` time DEFAULT NULL,
  `tues_in` time DEFAULT NULL,
  `tues_out` time DEFAULT NULL,
  `wed_in` time DEFAULT NULL,
  `wed_out` time DEFAULT NULL,
  `thurs_in` time DEFAULT NULL,
  `thurs_out` time DEFAULT NULL,
  `fri_in` time DEFAULT NULL,
  `fri_out` time DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shifts-copy`
--

INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`) VALUES
(11, '12:00:00', '12:05:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', NULL, 2),
(12, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2),
(13, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2),
(14, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2),
(21, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shift_translations`
--

CREATE TABLE `shift_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shift_translations`
--

INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`) VALUES
(1, 'dfdfd', 'en', 9),
(2, 'gfdgdf en', 'en', 10),
(3, 'fgdfgdfg bn', 'bn', 10),
(4, 'Day', 'en', 11),
(5, 'gfdgdf', 'en', 12),
(6, 'fgdfgdfg', 'bn', 12),
(7, 'gfdgdf', 'en', 13),
(8, 'Morning Bangla', 'bn', 13),
(9, 'gfdgdf', 'en', 14),
(10, 'mornign bn', 'bn', 14),
(11, 'shift en', 'en', 15),
(12, 'fgdfgdfg', 'bn', 15),
(13, 'gfdgdf en', 'en', 21),
(14, 'fgdfgdfg', 'bn', 21),
(15, 'Day', 'en', 1),
(16, 'Morning', 'en', 3),
(17, 'Night', 'en', 4);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'Active'),
(2, 'Pending'),
(3, 'Approved'),
(4, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `dept_join_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `status`, `remember_token`, `birthday`) VALUES
(120, '0667', 'khanna', 'kk@gmail.com', '$2y$10$iMLHPG6vyw/hlPWps.979u.y6BFKvUQWig/5nLg5wrO0karDmEb.G', 17, 2, 2, 5, 4, '2016-02-09', '78787877', NULL, 'txUwFn5fnMLtjvBfw8VK7wXxtLkytKN0IWkO4apAn3DBMPebqNT3fUBa9J6z', '2016-02-09'),
(124, '0635', 'azizulen', 'helleod@hyo.comg', '$2y$10$eTCQkfTNI2Z/EhGdMVMK9OiS3iVPsBOUOKIuGQUnUmn8AjW3P4Lca', 17, 2, 3, 3, 4, '2016-02-17', '0171859632', NULL, 'EpJSXcSkckKGoyflRReD3mbZk4LZJAgAdxBgUTENxjywHSVpXLc6FKR5P1NE', '2016-02-02'),
(128, '0627', 'salman', 'salu@gmail.com', '$2y$10$vZG3Zo.xp0Efhlp/cIAwyOH.J3G9X4zkIvXI6ebLzHCOg.YJWeChi', 17, 2, 2, 5, 4, '2016-02-05', '0171856935', NULL, 'DeNTPGiOKQIpBzjHMSKBocqXAurE08TewUPO803TowZ2TNSD998Z21WERFQB', '2016-02-03'),
(132, '1217', 'Sohagji', 'sohag@gmail.com', '$2y$10$IIml7.4WMnLGjNXJCAGueucHDOIBha8ivwjm6vbbGA..ezEmDiQAK', 17, 2, 2, 5, 4, '2016-03-05', '0171895689', NULL, 'QGiaj9RYIGhyRi4E7BprC7ORB0p6GflOv5dmaLXUlzqN31jimvrblV1Pu5l7', '2014-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `user_salaries`
--

CREATE TABLE `user_salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `basic` double DEFAULT NULL,
  `salary_rule_id` int(11) DEFAULT NULL,
  `overtime_rule_id` int(11) DEFAULT NULL,
  `salary_cut_rule_id` int(11) DEFAULT NULL,
  `bonus_rule_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_salaries`
--

INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`) VALUES
(1, 131, 15000, 1, 1, 1, NULL),
(2, 131, 15000, 1, 1, 1, NULL),
(3, 132, 20000, 4, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_translations`
--

CREATE TABLE `user_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_translations`
--

INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`) VALUES
(130, 120, 'Akshay ', 'Khanna', 'Akshay Sr', 'Mrs Sr Aks', 'jljlkjlkjl', 'ljlkjlkjlj', 'en'),
(134, 124, 'Azizul', 'Khann', 'Heloo', 'jjljd', 'jljljlj', 'jjkljljkjl', 'en'),
(139, 120, 'Aksay bn', 'Khann bna', 'kjkjk bn', 'jkjk bn', 'jkljkljj', 'jkjkj kbn', 'bn'),
(140, 128, 'Salman', 'Khann', 'Selim khan', 'Mrs Selim ', 'India', 'India', 'en'),
(142, 124, 'axdr bn', '', NULL, NULL, '', NULL, 'bn'),
(145, 132, 'Sohag ', 'Ahmed', 'Sohag Sr', 'Mother', 'local addr', 'permanent ', 'en');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_accounts_account_no_unique` (`account_no`),
  ADD UNIQUE KEY `bank_accounts_ifsc_code_unique` (`ifsc_code`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `bonus_attributes`
--
ALTER TABLE `bonus_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_department_id_foreign` (`department_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`);

--
-- Indexes for table `employee_histories`
--
ALTER TABLE `employee_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_histories_user_id_foreign` (`user_id`),
  ADD KEY `employee_histories_department_id_foreign` (`department_id`),
  ADD KEY `employee_histories_designation_id_foreign` (`designation_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_translations`
--
ALTER TABLE `gender_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender_translations_gender_id_locale_unique` (`gender_id`,`locale`),
  ADD KEY `gender_translations_locale_index` (`locale`);

--
-- Indexes for table `holydays`
--
ALTER TABLE `holydays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holydays_type_id_foreign` (`type_id`);

--
-- Indexes for table `holy_day_types`
--
ALTER TABLE `holy_day_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_applications_leave_id_foreign` (`leave_id`),
  ADD KEY `leave_applications_user_id_foreign` (`user_id`);

--
-- Indexes for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_application_translations_leave_application_id_foreign` (`leave_application_id`);

--
-- Indexes for table `log_tables`
--
ALTER TABLE `log_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medias_user_id_foreign` (`user_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passwords`
--
ALTER TABLE `passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `passwords_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_user_id_foreign` (`user_id`);

--
-- Indexes for table `punches`
--
ALTER TABLE `punches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_cut_rules`
--
ALTER TABLE `salary_cut_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_rules`
--
ALTER TABLE `salary_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_types`
--
ALTER TABLE `salary_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts-copy`
--
ALTER TABLE `shifts-copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_translations`
--
ALTER TABLE `shift_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_gender_id_foreign` (`gender_id`),
  ADD KEY `users_religion_id_foreign` (`religion_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_designation_id_foreign` (`designation_id`);

--
-- Indexes for table `user_salaries`
--
ALTER TABLE `user_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_translations`
--
ALTER TABLE `user_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_translations_user_id_locale_unique` (`user_id`,`locale`),
  ADD KEY `user_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `bonus_attributes`
--
ALTER TABLE `bonus_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `employee_histories`
--
ALTER TABLE `employee_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `gender_translations`
--
ALTER TABLE `gender_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `holydays`
--
ALTER TABLE `holydays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `holy_day_types`
--
ALTER TABLE `holy_day_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `log_tables`
--
ALTER TABLE `log_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `passwords`
--
ALTER TABLE `passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `punches`
--
ALTER TABLE `punches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `salary_cut_rules`
--
ALTER TABLE `salary_cut_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `salary_rules`
--
ALTER TABLE `salary_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `salary_types`
--
ALTER TABLE `salary_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shifts-copy`
--
ALTER TABLE `shifts-copy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `shift_translations`
--
ALTER TABLE `shift_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `user_salaries`
--
ALTER TABLE `user_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_translations`
--
ALTER TABLE `user_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_histories`
--
ALTER TABLE `employee_histories`
  ADD CONSTRAINT `employee_histories_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_histories_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gender_translations`
--
ALTER TABLE `gender_translations`
  ADD CONSTRAINT `gender_translations_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_leave_id_foreign` FOREIGN KEY (`leave_id`) REFERENCES `leaves` (`id`);

--
-- Constraints for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  ADD CONSTRAINT `leave_application_translations_leave_application_id_foreign` FOREIGN KEY (`leave_application_id`) REFERENCES `leave_applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_translations`
--
ALTER TABLE `user_translations`
  ADD CONSTRAINT `user_translations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
