-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2016 at 12:27 PM
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
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`) VALUES
(26, 120, '4878756ljkhgufyg', 'gfxhghjkl899g', 'sryuhihhgfy797g', 'xygvrrtuh988g', 'hghvcrtryuij8978g', 'Active', 1, NULL, NULL),
(27, 120, '4878756ljkhgufygd', 'dgfxhghjkl899g', 'sryuhihhgfy797gd', 'dxygvrrtuh988g', 'hghvcrtryuij8978gd', 'Active', 1, NULL, NULL),
(31, 120, '4878756ldjkhgufygd', 'dgfxhghdjkl899g', 'sryuhihhdgfy797gd', 'dxygvrrtuh98d8g', 'hghvcrtrdyuij8978gd', 'Active', 1, NULL, NULL),
(33, 120, '4878756ldjkshgufygd', 'dgfxhghdjkl899gs', 'ssryuhihhdgfy797gd', 'dxygvrrtuh98d8gs', 'hghvcrtrdyuij8978gds', 'Active', 1, NULL, NULL),
(34, 120, 's4878756ldjkshgufygd', 'dsgfxhghdjkl899gs', 'ssryushihhdgfy797gd', 'dxygvrsrtuh98d8gs', 'hghsvcrtrdyuij8978gds', 'Active', 1, NULL, NULL),
(35, 120, 's487c8756ldjkshgufygd', 'dsgfxhghdjkl899gsc', 'ssryushihhdgfy797cgd', 'dxygvrsrtuh98d8cgs', 'hghsvcrtrdyuij8978gdsc', 'Active', 1, NULL, NULL),
(36, 120, 's487c8756ldjkshgufygdf', 'dsgfxhghdjkl899gscf', 'ssryushihhdgfy797cgdf', 'dxygvrsrtuh98d8cgsf', 'hghsvcrtrdyuij8978gdscf', 'Active', 1, NULL, NULL),
(37, 120, 's487c8756ldjkshgudfygdf', 'dsgfxhghdjkl89d9gscf', 'ssryushihhdgfy797dcgdf', 'dxygvrsrtuh98dd8cgsf', 'hghsvcrtrdyuij89d78gdscf', 'Active', 1, NULL, NULL),
(38, 120, 's487c8756ldjkdshgudfygdf', 'dsgfxhghdjkld89d9gscf', 'ssryushihhddgfy797dcgdf', 'dxygvrsrtuhd98dd8cgsf', 'hghsvcrtrdyudij89d78gdscf', 'Active', 1, NULL, NULL),
(39, 124, '1258963', '3695214', '125896', '245879', '1258963', 'Active', 1, NULL, NULL),
(41, 120, 's487c8756ldjekdshgudfygdf', 'dsgfxhghdjkled89d9gscf', 'ssryushihhddgefy797dcgdf', 'dxygvrsrtuhd98dd8cgsfe', 'hghsvcrtrdyudeij89d78gdscf', 'Active', 1, NULL, NULL),
(42, 120, 's487c8756ldjekdshgudfygdfr', 'dsgfxhghdjkled89d9gscfr', 'ssryushihhddgefy797dcgdfr', 'dxygvrsrtuhd98dd8cgsfer', 'hghsvcrtrdyudeij89d78gdscfr', 'Active', 1, NULL, NULL),
(43, 120, 's487c8756ldjekddshgudfygdfr', 'dsgfxhghdjkleqd89d9gscfr', 'ssryushihhdrdgefy797dcgdfr', 'dxygvrsrturhd98dd8cgsfer', 'hghsvcrtrdryudeij89d78gdscfr', 'Active', 1, NULL, NULL),
(44, 120, 's487c8756ldjekddsdhgudfygdfr', 'dsgfxhghdjkleqdd89d9gscfr', 'ssryushihhdrdgefd797dcgdfr', 'dxygvrsrturhd98ddd8cgsfer', 'hghsvcrtrdryudeid89d78gdscfr', 'Active', 1, NULL, NULL),
(46, 124, '12589632', '36952142', '1258962', '2458792', '12589632', 'Active', 1, NULL, NULL),
(47, 124, '12589632f', '36952142f', 'f1258962', '2458792f', '12589632f', 'Active', 1, NULL, NULL),
(51, 120, 'akshay123', 'Chandra', '1598647', '5789425', 'Mayaboti', 'Active', 1, NULL, NULL),
(52, 128, 'salman', 'IFIC', '12348957', 'abc125489', 'Delhi', 'Active', 1, NULL, NULL),
(54, 124, '12589632fd', '36952142fd', 'f1258962d', '2458792fd', '12589632fd', 'Active', 1, NULL, NULL),
(55, 120, 'akshay123d', 'Chandrad', '1598647d', '5789425d', 'Mayabotid', 'Active', 1, NULL, NULL),
(56, 120, 'akshay123dd', 'Chandradd', '1598647dd', '5789425dd', 'Mayabotidd', 'Active', 1, NULL, NULL),
(57, 120, 'akshay123ddf', 'Chandraddf', '1598647ddf', '5789425ddf', 'Mayabotiddf', 'Active', 1, NULL, NULL),
(58, 128, 'salmana', 'IFICb', '12348957f', 'abc125489f', 'Delhibr', 'Active', 1, NULL, NULL),
(62, 132, '12345896', 'habijabi', '456789', '123569', 'habdab', 'Active', 1, NULL, NULL),
(63, 133, '1598745623', 'hello world', '87koil', '251lki', 'hello', 'Active', 1, NULL, NULL),
(65, 135, 'jkjkjk456', '45454iuytr', 'hhkjk9898201487', 'asoythkhk7878', '58984567klkl', 'Active', 1, NULL, NULL),
(66, 136, '7979898', '989898989', '98989898988', '8989898989', '898989898', 'Active', 1, NULL, NULL),
(68, 138, '7979898aa', '989898989aa', '98989898988aa', '8989898989aa', '898989898aa', 'Active', 1, NULL, NULL),
(69, 139, '7979898aad', '989898989aad', '98989898988aad', '8989898989aad', '898989898aad', 'Active', 1, NULL, NULL),
(70, 140, '7979898aads', '989898989aads', '98989898988aads', '8989898989aads', '898989898aads', 'Active', 1, NULL, NULL),
(71, 141, '7979898aadsh', 'h989898989aads', 'h98989898988aads', '8989898989aadsh', '898989898aadsh', 'Active', 1, NULL, NULL),
(72, 141, '454545454', '45454554545', '545454545454', '54545454545', '545454545454', 'Active', 1, NULL, NULL),
(73, 141, '454545454f', '45454554545f', '545454545454f', '54545454545f', '545454545454f', 'Active', 1, NULL, NULL),
(74, 141, '454545454fd', '45454554545fd', '545454545454fd', '54545454545fd', '545454545454fd', 'Active', 1, NULL, NULL),
(75, 124, '12589632fdf', '36952142fdf', 'f1258962df', '2458792fdf', '12589632fdf', 'Active', 1, NULL, NULL),
(76, 124, '12589632fdff', '36952142fdff', 'f1258962dff', '2458792fdff', '12589632fdff', 'Active', 1, NULL, NULL),
(84, 125, '454545448987878jkj', '56599744jkgyfy', '45878hghghg', '454878988956', 'jjjhgjg5896', NULL, NULL, NULL, NULL),
(85, 126, '869547', '1523', '25496', '23658', '54879', NULL, NULL, NULL, NULL),
(86, 127, '2546897kkl', 'fdfd87964', '569897', 'hjhjjjkjkj458', 'fdsf1545', NULL, NULL, '2016-04-09', NULL),
(87, 128, '5623014', '89653', '215689', '698741', '2569847', NULL, NULL, '2016-04-10', NULL);

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
(217, 3, '{"total":"total"}', 50, 'percent'),
(218, 3, 'null', 5000, 'fixed'),
(219, 6, '{"basic":"basic","home_rent":"home_rent"}', 50, 'percent'),
(220, 9, '{"extra":"extra"}', 25, 'percent');

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
(18, 'bonus 1', '"217,218"', NULL, NULL),
(19, 'bonus 2', '"219,220"', NULL, NULL);

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
(5, 'Eeeeeee', 'Active', 0),
(6, 'Department 5', 'Active', 0);

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
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailer_id` int(11) DEFAULT NULL,
  `emailer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
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
(157, 'sohag@gmail.com', 132, 'Erp\\Models\\User\\User', 0, 0),
(158, 'admin@admin.com', 133, 'Erp\\Models\\User\\User', 0, 0),
(159, 'adminn@admin.com', 134, 'Erp\\Models\\User\\User', 0, 0),
(160, 'helloadmin@gmail.com', 135, 'Erp\\Models\\User\\User', 0, 0),
(161, 'edu@gmail.com', 136, 'Erp\\Models\\User\\User', 0, 0),
(162, 'eduu@gmail.com', 137, 'Erp\\Models\\User\\User', 0, 0),
(163, 'eduud@gmail.com', 138, 'Erp\\Models\\User\\User', 0, 0),
(164, 'eduudd@gmail.com', 139, 'Erp\\Models\\User\\User', 0, 0),
(165, 'eduudd@gmail.comd', 140, 'Erp\\Models\\User\\User', 0, 0),
(166, 'eduudd@gmail.comdf', 141, 'Erp\\Models\\User\\User', 0, 0),
(167, 'hello@hello.com', 141, 'Erp\\Models\\User\\User', 0, 0),
(168, 'hello@helloo.com', 141, 'Erp\\Models\\User\\User', 0, 0),
(169, 'helloo@helloo.com', 141, 'Erp\\Models\\User\\User', 0, 0),
(170, 'helleod@hello.comg', 124, 'Erp\\Models\\User\\User', 0, 0),
(171, 'hell@hello.com', 124, 'Erp\\Models\\User\\User', 0, 0),
(172, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL),
(173, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL),
(174, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL),
(175, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL),
(176, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL),
(177, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL),
(178, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_histories`
--

CREATE TABLE `employee_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `dept_join_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_histories`
--

INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`) VALUES
(56, 120, 2, 5, 4, '2016-01-21', NULL, NULL, NULL, '2016-03-05'),
(110, 120, 2, 5, 4, '2016-04-13', NULL, NULL, NULL, '2016-04-09'),
(111, 120, 2, 5, 1, '2016-04-13', NULL, NULL, NULL, '2016-04-09'),
(112, 120, 2, 5, 1, '2016-11-21', NULL, NULL, NULL, '2016-04-09'),
(114, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09'),
(115, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09'),
(116, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09'),
(117, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09'),
(118, 126, 2, 5, 1, '2016-04-06', NULL, NULL, NULL, '2016-04-09'),
(119, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09'),
(120, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09'),
(121, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09'),
(122, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09'),
(123, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09'),
(124, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09'),
(125, 127, 2, 5, 4, '2016-03-09', NULL, NULL, '2016-04-09', NULL),
(126, 127, 2, 5, 1, '2016-06-09', NULL, NULL, '2016-04-09', NULL),
(127, 127, 2, 5, 1, '2016-06-09', NULL, NULL, '2016-04-09', NULL),
(128, 127, 2, 5, 4, '2016-04-09', NULL, NULL, '2016-04-09', NULL),
(129, 128, 2, 5, 1, '2016-12-31', NULL, NULL, '2016-04-10', NULL),
(130, 120, 2, 5, 1, '2016-04-20', NULL, NULL, NULL, '2016-04-20');

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
('2016_03_28_062815_add_employee_id_to_punches', 92),
('2016_04_04_051213_add_shift_id_to_employee_histories', 93),
('2016_04_04_052705_add_shift_id_to_employee_histories', 94),
('2016_04_05_054348_add_month_year_day_to_employee_histories', 95),
('2016_04_06_051639_add_timestamps_to_user_salaries', 96),
('2016_04_09_094121_add_created_at_updated_at_to_bank_accounts', 97);

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
(4, 'overtime 1', '{"total":"total"}', 25, 'percent', 1, NULL),
(5, 'overtime 2', '[]', 5000, 'fixed', 1, NULL),
(6, 'overtime 3', '{"basic":"basic","home_rent":"2","medical_allowance":"3"}', 25, 'percent', 1, NULL);

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
(148, '$2y$10$IIml7.4WMnLGjNXJCAGueucHDOIBha8ivwjm6vbbGA..ezEmDiQAK', 0, 132, 0),
(149, '$2y$10$DPcKANayp9yscMDa3u0XwOctHB5ncNYE9YwGZKS08Jvm2aNt0Ce2y', 0, 133, 0),
(150, '$2y$10$bgXVIaxN9cVYnUFYDr6rfOKhqVCdOlMZ.DxsAMB3y8sYqYn/MBVCu', 0, 134, 0),
(151, '$2y$10$BKWGE7/QlEUARaCYiEYSWOfZmu5AUX/G2PsYTfA6SqSCO35BS8V7q', 0, 135, 0),
(152, '$2y$10$L5MzlYoD0hFKJohErDK..OVgIwWANawopsTp8mHlhwjtc8bquBsRi', 0, 136, 0),
(153, '$2y$10$Jt2fwAWiDAowV4K6Hlb61eVGgT0ktfJAL8VJquKLlzIyWAxWzd8e2', 0, 137, 0),
(154, '$2y$10$Adfs4uzZO9s.OenfBCLdq.p.2pSiSzjeu4S7l0Gv2J9g/wf/oqQ.C', 0, 138, 0),
(155, '$2y$10$VBrXO76qz7YhmoUcHknNrOo3GzalBbmKXAe8kJoM85wuicnGs3Rvu', 0, 139, 0),
(156, '$2y$10$LhieZOpRbA5o8X5ZEGYQ4efW6EH.9ImRNE76UGpswwQ2asT3OMXOq', 0, 140, 0),
(157, '$2y$10$6/TDeOcZxlUlZlDmik26HOSrD939K0TvWRQuqrsoPD6ciobZ4sVr6', 0, 141, 0),
(158, '$2y$10$chhjMNNslrheV..thRj2guCNvQnriqiPcSpv0GxfpJX3wQIRN1Gnm', 0, 141, 0),
(159, '$2y$10$2rxHqUo3GkrltlzlNQJnOOiGLnIJv0bm9MLs8rLKdOdc83BbFboEG', 0, 141, 0),
(160, '$2y$10$7YIqqDOrbpAHEXoGrwBMl.6GvJNM672HqtNQ0Vn/FXedmmJz2.opq', 0, 141, 0),
(161, '$2y$10$AYR.URWTJYlbo.eyTmm.rOQmCyLBQYq0PYAI91ueYtcOZdoF9dXyK', 0, 124, 0),
(162, '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 0, 124, 0),
(163, '$2y$10$OTxuYgQaNP6NvaQz4pGwaOBJKCfndUlDWULClEpMriRArR9Qf.FyK', 0, 120, 0),
(164, '$2y$10$7/KFhha0VxaMU8ltTpw8PuRMlmQl2bt6WQ3qXB1yVj54kDfwBEwqK', 0, 120, 0),
(165, '$2y$10$c2.SS.hOohSAxMlyRqEpBut.Xj80DFVhznn44M5sDXrtEk/uFxuCa', 0, 120, 0),
(166, '$2y$10$ATtiNRH9DV3O.l5hA63moO8yMFwRps2ee.m13Or3xxh.zHpHddaGG', 0, 120, 0),
(167, '$2y$10$9LFXUZndK/HZE6AL4TCdReaSvlSKprGrKb3wXkmj9YY9mBQIA9mvW', 0, 120, 0),
(168, '$2y$10$ja0UWYB7NnHWQs.2m2AAkeWAI57bKfqCy2XMyKq4vyF/eAh7yBosW', 0, 120, 0),
(169, '$2y$10$jb0u7h/WWnfzrmPUl/zf3.x/melScq4ro5nORUY/wHEN7WkgaccqW', 0, 120, 0);

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
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`) VALUES
(1, 'Create Things', 'whoever assigned this permission can create anything in the system', '0', 0),
(2, 'Edit', 'whoever assigned this permission can edit anything in the system', '0', 0),
(3, 'Hello', 'Hello World', '0', 0);

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
(23, 132, 132, 'Erp\\Models\\User\\User', '14575012467Xv2016-01-09-195845.jpg', NULL, ''),
(24, 135, 135, 'Erp\\Models\\User\\User', '14596693990Im2016-01-09-195845.jpg', NULL, ''),
(25, 141, 141, 'Erp\\Models\\User\\User', '1459671065Wvp2016-01-09-195845.jpg', NULL, ''),
(26, 141, 141, 'Erp\\Models\\User\\User', '1459743056mDf2016-01-09-195845.jpg', NULL, ''),
(27, 141, 141, 'Erp\\Models\\User\\User', '1459743481RQT2016-01-09-195845.jpg', NULL, ''),
(28, 141, 141, 'Erp\\Models\\User\\User', '1459743743Nq42016-01-09-195845.jpg', NULL, ''),
(29, 124, 124, 'Erp\\Models\\User\\User', '1459748909vMy2016-01-09-195845.jpg', NULL, ''),
(30, 124, 124, 'Erp\\Models\\User\\User', '1459749302aQF2016-01-09-195845.jpg', NULL, ''),
(31, 125, 125, 'Erp\\Models\\User\\User', '1460186989fed2016-01-09-195845.jpg', NULL, ''),
(32, 126, 126, 'Erp\\Models\\User\\User', '1460187894LGZ2016-01-09-195845.jpg', NULL, ''),
(33, 127, 127, 'Erp\\Models\\User\\User', '1460199087a6V2016-01-09-195845.jpg', NULL, ''),
(34, 128, 128, 'Erp\\Models\\User\\User', '1460264476LG22016-01-09-195845.jpg', NULL, '');

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
(149, 128, '0627', '10:44:59', NULL, '2016-03-22', NULL, '2016-03-22 10:44:59', '2016-03-22 10:45:03', 0.00, 1, 2016, 3, 22, 0);

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
(126, 2),
(127, 2),
(128, 2),
(120, 3),
(120, 4);

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
(2, 'Cut 1', '{"total":"Total"}', 25, 'percent', NULL, NULL),
(3, 'Cut 2', '{"basic":"Basic"}', 30, 'percent', NULL, NULL),
(4, 'cut 3', '{"total":"Total"}', 2000, 'plus', NULL, NULL);

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
(6, 'allowance 1', '{"home_rent_amount":"50","home_rent_amount_type":"percent","medical_allowance_amount":"25","medical_allowance_amount_type":"percent","travel_allowance_amount":"30","travel_allowance_amount_type":"percent","extra_amount":"35","extra_amount_type":"percent"}', 1, NULL);

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
(8, 'Extra', 1, NULL);

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
(120, '0667', 'khanna', 'kk@gmail.com', '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 17, 2, 2, 5, 1, '2016-04-20', '78787877', NULL, 'nCpMWVvajrFusDs14GEQilP5CvVeEaOSqDa6jzq8weCnpGJFIg5oa4rsx81A', '2016-04-20'),
(126, '6589', 'hannan', 'hannan@gmail.com', '$2y$10$BdZgLHneikszX6VpqKTvaeEWq/E31dfPI2FQnpnw/L.fJxHo3Z66y', 17, 2, 2, 5, 1, '2016-04-09', '0171526859', NULL, 'OwVgbTUGp0Vrwxhackh52dX9pfrxe8JJc3cMlmuVc7MS9xIqRzvSFQv0KMGD', '2016-04-05'),
(127, '6598', 'test', 'test@test.com', '$2y$10$ccEjf4UWE3eND6nEuAn7Ne2dcpmIUihW6WMREqS9kaCQNIOQAxmRi', 17, 1, 2, 5, 4, '2016-04-09', '0171256985', NULL, 'cFJeZmPHgh1B5nVvYjNPeBUzuBTJ5OUciPeey7U2Rv4wULcmoTq7dDeXuUuV', '2016-04-06'),
(128, '65987', 'joyraj', 'joy@gmail.com', '$2y$10$AZ3ywpPbBtNQkBllLauD1OQHgfqdBjD7jWpNWVZMMp9UzammR2LD.', 17, 2, 2, 5, 1, '2016-12-31', '0171525632', NULL, NULL, '2016-04-06');

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
  `bonus_rule_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_salaries`
--

INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`) VALUES
(16, 120, 25000, 6, 4, 2, 18, '2016-04-06', NULL),
(17, 120, 25000, 6, 6, 2, 18, NULL, '2016-04-06'),
(34, 126, 20000, 6, 4, 2, 18, '2016-04-09', '2016-04-09'),
(35, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL),
(36, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL),
(37, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL),
(38, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL),
(39, 128, 15606, 6, 4, 2, 18, '2016-04-10', NULL),
(40, 120, 50000, 6, 6, 2, 18, NULL, '2016-04-20');

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
(139, 120, 'Aksay bn', 'Khann bna', 'kjkjk bn', 'jkjk bn', 'jkljkljj', 'jkjkj kbn', 'bn'),
(144, 126, 'Hannan', 'Rashid', 'Malek', 'Maleka', 'dhaka', 'rangpur', 'en'),
(145, 127, 'Users', 'Tester', 'Father', 'Mother', 'Test', 'Teste', 'en'),
(146, 127, 'tester bn', 'tester bn', 'fatbnt', 'motbnt', 'dhaka bn', 'dhaka bn', 'bn'),
(147, 128, 'Abul Mal', 'JOytu', 'Abdul Kal', 'Karina', 'dhaka', 'dhaka', 'en');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `bonus_attributes`
--
ALTER TABLE `bonus_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `employee_histories`
--
ALTER TABLE `employee_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `passwords`
--
ALTER TABLE `passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `punches`
--
ALTER TABLE `punches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `salary_rules`
--
ALTER TABLE `salary_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `salary_types`
--
ALTER TABLE `salary_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `user_salaries`
--
ALTER TABLE `user_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `user_translations`
--
ALTER TABLE `user_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
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
