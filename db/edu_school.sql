-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2016 at 08:50 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `edu_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_qualifications`
--

CREATE TABLE IF NOT EXISTS `academic_qualifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `education_level_id` int(11) NOT NULL,
  `year_of_passing` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `academic_qualifications`
--

INSERT INTO `academic_qualifications` (`id`, `user_id`, `education_level_id`, `year_of_passing`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 120, 1, '2001', '10 Years', 'Active', 1, '2016-06-19 10:45:07', '2016-06-20 05:33:50', NULL);
INSERT INTO `academic_qualifications` (`id`, `user_id`, `education_level_id`, `year_of_passing`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 120, 2, '2003', '2 Years', 'Active', 1, '2016-06-20 04:13:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `academic_qualifications` (`id`, `user_id`, `education_level_id`, `year_of_passing`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 120, 3, '1994', '1 Year', 'Active', 1, '2016-06-20 05:41:55', '0000-00-00 00:00:00', '2016-06-20 05:44:41');
INSERT INTO `academic_qualifications` (`id`, `user_id`, `education_level_id`, `year_of_passing`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 120, 4, '2021', 'wwd', 'Active', 1, '2016-06-20 07:53:49', '2016-06-20 07:58:45', '2016-06-20 08:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `academic_qualification_translations`
--

CREATE TABLE IF NOT EXISTS `academic_qualification_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academic_qualification_id` int(11) DEFAULT NULL,
  `degree_title` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `institute_name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to_role_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_role_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `amount_type_id` int(11) NOT NULL,
  `amount_category_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `to_role_id`, `to_user_id`, `from_role_id`, `from_user_id`, `account_type_id`, `amount_type_id`, `amount_category_id`, `amount`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 7, 147, 6, 132, 1, 1, 1, 2050.5, 'Active', 1, '2016-05-22 09:22:37', '2016-05-22 11:41:38', NULL);
INSERT INTO `accounts` (`id`, `to_role_id`, `to_user_id`, `from_role_id`, `from_user_id`, `account_type_id`, `amount_type_id`, `amount_category_id`, `amount`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 6, 133, 3, 145, 2, 2, 2, 23000, 'Active', 1, '2016-05-22 09:39:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `accounts` (`id`, `to_role_id`, `to_user_id`, `from_role_id`, `from_user_id`, `account_type_id`, `amount_type_id`, `amount_category_id`, `amount`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 2, 126, 4, 120, 4, 2, 1, 500, 'Active', 1, '2016-05-22 09:57:31', '0000-00-00 00:00:00', '2016-05-22 09:57:44');
INSERT INTO `accounts` (`id`, `to_role_id`, `to_user_id`, `from_role_id`, `from_user_id`, `account_type_id`, `amount_type_id`, `amount_category_id`, `amount`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 2, 126, 3, 120, 2, 2, 2, 200, 'Active', 1, '2016-05-24 04:48:41', '2016-06-04 08:21:47', NULL);
INSERT INTO `accounts` (`id`, `to_role_id`, `to_user_id`, `from_role_id`, `from_user_id`, `account_type_id`, `amount_type_id`, `amount_category_id`, `amount`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 6, 133, 3, 120, 2, 2, 2, 23500.75, 'Active', 1, '2016-05-24 06:32:54', '2016-05-24 06:34:18', NULL);
INSERT INTO `accounts` (`id`, `to_role_id`, `to_user_id`, `from_role_id`, `from_user_id`, `account_type_id`, `amount_type_id`, `amount_category_id`, `amount`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 6, 133, 2, 126, 4, 1, 1, 150, 'Active', 1, '2016-06-04 06:22:06', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_translations`
--

CREATE TABLE IF NOT EXISTS `account_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `account_translations`
--

INSERT INTO `account_translations` (`id`, `account_id`, `account_name`, `account_description`, `locale`, `site_id`) VALUES(1, 1, 'Admission Fee of 2016 edit', 'desc edit', 'en', 1);
INSERT INTO `account_translations` (`id`, `account_id`, `account_name`, `account_description`, `locale`, `site_id`) VALUES(2, 2, 'Salary of April 2016', 'Salary of April 2016. desc', 'en', 1);
INSERT INTO `account_translations` (`id`, `account_id`, `account_name`, `account_description`, `locale`, `site_id`) VALUES(3, 3, 'Electrical bill', 'notes', 'en', 1);
INSERT INTO `account_translations` (`id`, `account_id`, `account_name`, `account_description`, `locale`, `site_id`) VALUES(4, 4, 'Account Subject', 'Account Note', 'en', 1);
INSERT INTO `account_translations` (`id`, `account_id`, `account_name`, `account_description`, `locale`, `site_id`) VALUES(5, 5, 'Salary of May 2016', 'desc', 'en', 1);
INSERT INTO `account_translations` (`id`, `account_id`, `account_name`, `account_description`, `locale`, `site_id`) VALUES(6, 6, 'test', 'test', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE IF NOT EXISTS `account_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-05-18 09:12:34', '2016-05-18 09:54:07', NULL);
INSERT INTO `account_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-05-18 09:13:56', '2016-05-18 09:54:45', NULL);
INSERT INTO `account_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-05-18 09:58:57', '0000-00-00 00:00:00', '2016-05-18 10:02:04');
INSERT INTO `account_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-05-18 10:41:50', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_type_translations`
--

CREATE TABLE IF NOT EXISTS `account_type_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_type_id` int(11) DEFAULT NULL,
  `account_type_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `account_type_translations`
--

INSERT INTO `account_type_translations` (`id`, `account_type_id`, `account_type_name`, `locale`, `site_id`) VALUES(1, 1, 'Admission Fee', 'en', 1);
INSERT INTO `account_type_translations` (`id`, `account_type_id`, `account_type_name`, `locale`, `site_id`) VALUES(2, 2, 'Salary', 'en', 1);
INSERT INTO `account_type_translations` (`id`, `account_type_id`, `account_type_name`, `locale`, `site_id`) VALUES(3, 3, 'Test', 'en', 1);
INSERT INTO `account_type_translations` (`id`, `account_type_id`, `account_type_name`, `locale`, `site_id`) VALUES(4, 4, 'Bill', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_field_to_tables`
--

CREATE TABLE IF NOT EXISTS `add_field_to_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `amount_categories`
--

CREATE TABLE IF NOT EXISTS `amount_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `amount_categories`
--

INSERT INTO `amount_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-05-22 05:04:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `amount_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-05-22 05:09:22', '2016-05-22 05:22:11', NULL);
INSERT INTO `amount_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-05-22 05:26:54', '0000-00-00 00:00:00', '2016-05-22 05:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `amount_category_translations`
--

CREATE TABLE IF NOT EXISTS `amount_category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount_category_id` int(11) DEFAULT NULL,
  `amount_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `amount_category_translations`
--

INSERT INTO `amount_category_translations` (`id`, `amount_category_id`, `amount_category_name`, `locale`, `site_id`) VALUES(1, 1, 'Petty cash', 'en', 1);
INSERT INTO `amount_category_translations` (`id`, `amount_category_id`, `amount_category_name`, `locale`, `site_id`) VALUES(2, 2, 'AB Bank', 'en', 1);
INSERT INTO `amount_category_translations` (`id`, `amount_category_id`, `amount_category_name`, `locale`, `site_id`) VALUES(3, 3, 'test', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amount_types`
--

CREATE TABLE IF NOT EXISTS `amount_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `amount_types`
--

INSERT INTO `amount_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`, `alias`) VALUES(1, 'Active', 1, '2016-05-18 10:57:08', '2016-06-04 06:46:18', NULL, 'income');
INSERT INTO `amount_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`, `alias`) VALUES(2, 'Active', 1, '2016-05-18 10:57:42', '0000-00-00 00:00:00', NULL, 'expense');
INSERT INTO `amount_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`, `alias`) VALUES(4, 'Active', 1, '2016-06-04 06:47:36', '2016-06-04 06:51:49', '2016-06-04 06:54:12', 'income');
INSERT INTO `amount_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`, `alias`) VALUES(5, 'Inactive', 1, '2016-06-04 06:52:37', '2016-06-04 06:53:22', '2016-06-04 06:54:03', 'expense');

-- --------------------------------------------------------

--
-- Table structure for table `amount_type_translations`
--

CREATE TABLE IF NOT EXISTS `amount_type_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount_type_id` int(11) DEFAULT NULL,
  `amount_type_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `amount_type_translations`
--

INSERT INTO `amount_type_translations` (`id`, `amount_type_id`, `amount_type_name`, `locale`, `site_id`) VALUES(1, 1, 'Income', 'en', 1);
INSERT INTO `amount_type_translations` (`id`, `amount_type_id`, `amount_type_name`, `locale`, `site_id`) VALUES(2, 2, 'Expense', 'en', 1);
INSERT INTO `amount_type_translations` (`id`, `amount_type_id`, `amount_type_name`, `locale`, `site_id`) VALUES(4, 4, 'test', 'en', 1);
INSERT INTO `amount_type_translations` (`id`, `amount_type_id`, `amount_type_name`, `locale`, `site_id`) VALUES(5, 5, 'test e', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_of_birth` date NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `date_of_birth`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, '1899-05-24', 'Active', 1, '2016-06-05 09:04:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `authors` (`id`, `date_of_birth`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, '1564-04-26', 'Active', 1, '2016-06-05 09:09:37', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `author_translations`
--

CREATE TABLE IF NOT EXISTS `author_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_birth_place` varchar(255) DEFAULT NULL,
  `author_note` text,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `author_translations`
--

INSERT INTO `author_translations` (`id`, `author_id`, `author_name`, `author_birth_place`, `author_note`, `locale`, `site_id`) VALUES(1, 1, 'Kazi Nazrul Islam', 'Churulia, Bengal Presidency, British Raj', 'Kazi Nazrul Islam (Bengali: কাজী নজরুল ইসলাম, pronounced: [kadʒi nodʒrul islam]) (24 May 1899 – 29 August 1976) was a Bangladeshi poet, writer, musician, and revolutionary, and is the national poet of Bangladesh. Popularly known as Nazrul, he produced a large body of poetry and music that included themes of Islamic renaissance and spiritual rebellion against fascism and oppression. Nazrul''s activism for political and social justice earned him the title of the "Rebel Poet" (Bengali: বিদ্রোহী কবি; Bidrohi Kobi). His compositions form the avant-garde genre of Nazrul Sangeet (Music of Nazrul). In addition to being revered in Bangladesh, he is also commemorated and revered in India, especially in West Bengal and Tripura.', 'en', 1);
INSERT INTO `author_translations` (`id`, `author_id`, `author_name`, `author_birth_place`, `author_note`, `locale`, `site_id`) VALUES(2, 2, 'William Shakespeare', 'Stratford-upon-Avon, Warwickshire, West Midlands, England', 'William Shakespeare (/ˈʃeɪkspɪər/; 26 April 1564 (baptised) – 23 April 1616) was an English poet, playwright, and actor, widely regarded as the greatest writer in the English language and the world''s pre-eminent dramatist. He is often called England''s national poet, and the "Bard of Avon". His extant works, including collaborations, consist of approximately 38 plays, 154 sonnets, two long narrative poems, and a few other verses, some of uncertain authorship. His plays have been translated into every major living language and are performed more often than those of any other playwright.', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bank_accounts_account_no_unique` (`account_no`),
  UNIQUE KEY `bank_accounts_ifsc_code_unique` (`ifsc_code`),
  KEY `bank_accounts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(26, 120, '4878756ljkhgufyg', 'gfxhghjkl899g', 'sryuhihhgfy797g', 'xygvrrtuh988g', 'hghvcrtryuij8978g', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(27, 120, '4878756ljkhgufygd', 'dgfxhghjkl899g', 'sryuhihhgfy797gd', 'dxygvrrtuh988g', 'hghvcrtryuij8978gd', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(31, 120, '4878756ldjkhgufygd', 'dgfxhghdjkl899g', 'sryuhihhdgfy797gd', 'dxygvrrtuh98d8g', 'hghvcrtrdyuij8978gd', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(33, 120, '4878756ldjkshgufygd', 'dgfxhghdjkl899gs', 'ssryuhihhdgfy797gd', 'dxygvrrtuh98d8gs', 'hghvcrtrdyuij8978gds', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(34, 120, 's4878756ldjkshgufygd', 'dsgfxhghdjkl899gs', 'ssryushihhdgfy797gd', 'dxygvrsrtuh98d8gs', 'hghsvcrtrdyuij8978gds', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(35, 120, 's487c8756ldjkshgufygd', 'dsgfxhghdjkl899gsc', 'ssryushihhdgfy797cgd', 'dxygvrsrtuh98d8cgs', 'hghsvcrtrdyuij8978gdsc', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(36, 120, 's487c8756ldjkshgufygdf', 'dsgfxhghdjkl899gscf', 'ssryushihhdgfy797cgdf', 'dxygvrsrtuh98d8cgsf', 'hghsvcrtrdyuij8978gdscf', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(37, 120, 's487c8756ldjkshgudfygdf', 'dsgfxhghdjkl89d9gscf', 'ssryushihhdgfy797dcgdf', 'dxygvrsrtuh98dd8cgsf', 'hghsvcrtrdyuij89d78gdscf', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(38, 120, 's487c8756ldjkdshgudfygdf', 'dsgfxhghdjkld89d9gscf', 'ssryushihhddgfy797dcgdf', 'dxygvrsrtuhd98dd8cgsf', 'hghsvcrtrdyudij89d78gdscf', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(39, 124, '1258963', '3695214', '125896', '245879', '1258963', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(41, 120, 's487c8756ldjekdshgudfygdf', 'dsgfxhghdjkled89d9gscf', 'ssryushihhddgefy797dcgdf', 'dxygvrsrtuhd98dd8cgsfe', 'hghsvcrtrdyudeij89d78gdscf', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(42, 120, 's487c8756ldjekdshgudfygdfr', 'dsgfxhghdjkled89d9gscfr', 'ssryushihhddgefy797dcgdfr', 'dxygvrsrtuhd98dd8cgsfer', 'hghsvcrtrdyudeij89d78gdscfr', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(43, 120, 's487c8756ldjekddshgudfygdfr', 'dsgfxhghdjkleqd89d9gscfr', 'ssryushihhdrdgefy797dcgdfr', 'dxygvrsrturhd98dd8cgsfer', 'hghsvcrtrdryudeij89d78gdscfr', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(44, 120, 's487c8756ldjekddsdhgudfygdfr', 'dsgfxhghdjkleqdd89d9gscfr', 'ssryushihhdrdgefd797dcgdfr', 'dxygvrsrturhd98ddd8cgsfer', 'hghsvcrtrdryudeid89d78gdscfr', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(46, 124, '12589632', '36952142', '1258962', '2458792', '12589632', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(47, 124, '12589632f', '36952142f', 'f1258962', '2458792f', '12589632f', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(51, 120, 'akshay123', 'Chandra', '1598647', '5789425', 'Mayaboti', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(52, 128, 'salman', 'IFIC', '12348957', 'abc125489', 'Delhi', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(54, 124, '12589632fd', '36952142fd', 'f1258962d', '2458792fd', '12589632fd', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(55, 120, 'akshay123d', 'Chandrad', '1598647d', '5789425d', 'Mayabotid', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(56, 120, 'akshay123dd', 'Chandradd', '1598647dd', '5789425dd', 'Mayabotidd', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(57, 120, 'akshay123ddf', 'Chandraddf', '1598647ddf', '5789425ddf', 'Mayabotiddf', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(58, 128, 'salmana', 'IFICb', '12348957f', 'abc125489f', 'Delhibr', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(62, 132, '12345896', 'habijabi', '456789', '123569', 'habdab', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(63, 133, '1598745623', 'hello world', '87koil', '251lki', 'hello', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(65, 135, 'jkjkjk456', '45454iuytr', 'hhkjk9898201487', 'asoythkhk7878', '58984567klkl', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(66, 136, '7979898', '989898989', '98989898988', '8989898989', '898989898', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(68, 138, '7979898aa', '989898989aa', '98989898988aa', '8989898989aa', '898989898aa', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(69, 139, '7979898aad', '989898989aad', '98989898988aad', '8989898989aad', '898989898aad', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(70, 140, '7979898aads', '989898989aads', '98989898988aads', '8989898989aads', '898989898aads', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(71, 141, '7979898aadsh', 'h989898989aads', 'h98989898988aads', '8989898989aadsh', '898989898aadsh', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(72, 141, '454545454', '45454554545', '545454545454', '54545454545', '545454545454', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(73, 141, '454545454f', '45454554545f', '545454545454f', '54545454545f', '545454545454f', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(74, 141, '454545454fd', '45454554545fd', '545454545454fd', '54545454545fd', '545454545454fd', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(75, 124, '12589632fdf', '36952142fdf', 'f1258962df', '2458792fdf', '12589632fdf', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(76, 124, '12589632fdff', '36952142fdff', 'f1258962dff', '2458792fdff', '12589632fdff', 'Active', 1, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(84, 125, '454545448987878jkj', '56599744jkgyfy', '45878hghghg', '454878988956', 'jjjhgjg5896', NULL, NULL, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(85, 126, '869547', '1523', '25496', '23658', '54879', NULL, NULL, NULL, NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(86, 127, '2546897kkl', 'fdfd87964', '569897', 'hjhjjjkjkj458', 'fdsf1545', NULL, NULL, '2016-04-09', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(87, 128, '5623014', '89653', '215689', '698741', '2569847', NULL, NULL, '2016-04-10', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(88, 131, '33334', 'ttttj', NULL, NULL, 'rrrry', NULL, NULL, '2016-04-24', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(89, 132, '123456', 'lllllll', '256', '987', 'kkkk', NULL, NULL, '2016-04-25', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(90, 133, '1254879', 'plkjy', '2589', '3255', 'jhgff', NULL, NULL, '2016-04-25', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(91, 132, '12345655', 'llllllld', '2569', '9879', 'kkkkd', NULL, NULL, NULL, '2016-04-25', 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(92, 139, '2233', 'dff', '223', '333', 'swss', NULL, NULL, '2016-04-27', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(93, 140, '32589', 'lkjyyss', '123456', '22456', 'dcvghh', NULL, NULL, '2016-04-27', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(94, 142, '12345', 'fddert', '12345', '12345', 'derrttt', NULL, NULL, '2016-05-09', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(95, 145, '234354', 'gfggfh', '454657', '7676', 'fghgfhg', NULL, NULL, '2016-05-09', NULL, 1);
INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(96, 149, '2154879', 'DBDL', NULL, NULL, 'Badda', NULL, NULL, '2016-06-28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_attributes`
--

CREATE TABLE IF NOT EXISTS `bonus_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `month` int(11) DEFAULT NULL,
  `salary_types` longtext,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

--
-- Dumping data for table `bonus_attributes`
--

INSERT INTO `bonus_attributes` (`id`, `month`, `salary_types`, `amount`, `amount_type`, `site_id`) VALUES(217, 3, '{"total":"total"}', 50, 'percent', 1);
INSERT INTO `bonus_attributes` (`id`, `month`, `salary_types`, `amount`, `amount_type`, `site_id`) VALUES(218, 3, 'null', 5000, 'fixed', 1);
INSERT INTO `bonus_attributes` (`id`, `month`, `salary_types`, `amount`, `amount_type`, `site_id`) VALUES(219, 6, '{"basic":"basic","home_rent":"home_rent"}', 50, 'percent', 1);
INSERT INTO `bonus_attributes` (`id`, `month`, `salary_types`, `amount`, `amount_type`, `site_id`) VALUES(220, 9, '{"extra":"extra"}', 25, 'percent', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_rules`
--

CREATE TABLE IF NOT EXISTS `bonus_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rules` longtext,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `bonus_rules`
--

INSERT INTO `bonus_rules` (`id`, `name`, `rules`, `status`, `position`, `site_id`) VALUES(18, 'bonus 1', '"217,218"', NULL, NULL, 1);
INSERT INTO `bonus_rules` (`id`, `name`, `rules`, `status`, `position`, `site_id`) VALUES(19, 'bonus 2', '"219,220"', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `book_price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rack_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_category_id`, `author_id`, `subject_code`, `book_price`, `quantity`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 1, 1, 's-008', 550.00, 5, 'r-0008', 'Inactive', 1, '2016-06-06 06:23:03', '2016-06-15 08:55:30', NULL);
INSERT INTO `books` (`id`, `book_category_id`, `author_id`, `subject_code`, `book_price`, `quantity`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 1, 1, 's-009', 350.00, 3, 'r-008', 'Active', 1, '2016-06-06 06:24:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `books` (`id`, `book_category_id`, `author_id`, `subject_code`, `book_price`, `quantity`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 5, 2, 'h-098', 450.00, 3, 'r-009', 'Active', 1, '2016-06-06 07:01:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `books` (`id`, `book_category_id`, `author_id`, `subject_code`, `book_price`, `quantity`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 4, 2, '3456', 850.00, 5, 'r-099', 'Active', 1, '2016-06-06 08:38:36', '0000-00-00 00:00:00', '2016-06-06 08:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE IF NOT EXISTS `book_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-06-05 04:32:36', '2016-06-05 05:06:14', NULL);
INSERT INTO `book_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-06-05 05:11:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `book_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-06-05 05:14:35', '0000-00-00 00:00:00', '2016-06-05 05:14:54');
INSERT INTO `book_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-06-05 06:05:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `book_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 'Active', 1, '2016-06-06 07:00:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `book_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 'Inactive', 1, '2016-06-15 08:46:17', '2016-06-15 08:47:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category_translations`
--

CREATE TABLE IF NOT EXISTS `book_category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_category_id` int(11) DEFAULT NULL,
  `book_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `book_category_translations`
--

INSERT INTO `book_category_translations` (`id`, `book_category_id`, `book_category_name`, `locale`, `site_id`) VALUES(1, 1, 'Poetry', 'en', 1);
INSERT INTO `book_category_translations` (`id`, `book_category_id`, `book_category_name`, `locale`, `site_id`) VALUES(2, 2, 'Science', 'en', 1);
INSERT INTO `book_category_translations` (`id`, `book_category_id`, `book_category_name`, `locale`, `site_id`) VALUES(3, 3, 'test', 'en', 1);
INSERT INTO `book_category_translations` (`id`, `book_category_id`, `book_category_name`, `locale`, `site_id`) VALUES(4, 4, 'Arts', 'en', 1);
INSERT INTO `book_category_translations` (`id`, `book_category_id`, `book_category_name`, `locale`, `site_id`) VALUES(5, 5, 'Play', 'en', 1);
INSERT INTO `book_category_translations` (`id`, `book_category_id`, `book_category_name`, `locale`, `site_id`) VALUES(6, 6, 'Etc', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_translations`
--

CREATE TABLE IF NOT EXISTS `book_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `book_translations`
--

INSERT INTO `book_translations` (`id`, `book_id`, `book_name`, `locale`, `site_id`) VALUES(1, 1, 'Agni Bina', 'en', 1);
INSERT INTO `book_translations` (`id`, `book_id`, `book_name`, `locale`, `site_id`) VALUES(2, 2, 'Phanimanasa ', 'en', 1);
INSERT INTO `book_translations` (`id`, `book_id`, `book_name`, `locale`, `site_id`) VALUES(3, 3, 'Hamlet', 'en', 1);
INSERT INTO `book_translations` (`id`, `book_id`, `book_name`, `locale`, `site_id`) VALUES(4, 4, 'dfggg', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE IF NOT EXISTS `buildings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_name` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `building_name`, `status`, `deleted_at`, `site_id`) VALUES(1, 'Science Building', 'Active', NULL, 1);
INSERT INTO `buildings` (`id`, `building_name`, `status`, `deleted_at`, `site_id`) VALUES(3, 'Commerce Building', 'Active', NULL, 1);
INSERT INTO `buildings` (`id`, `building_name`, `status`, `deleted_at`, `site_id`) VALUES(4, 'Administration Building', 'Active', '2016-05-09 06:39:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE IF NOT EXISTS `business_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-06-09 04:35:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-06-09 04:36:08', '2016-06-15 09:46:05', NULL);
INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-06-09 04:36:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-06-09 04:37:45', '0000-00-00 00:00:00', NULL);
INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 'Active', 1, '2016-06-09 04:38:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 'Active', 1, '2016-06-09 04:49:54', '2016-06-09 05:08:22', NULL);
INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(7, 'Active', 1, '2016-06-09 05:06:10', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_type_translations`
--

CREATE TABLE IF NOT EXISTS `business_type_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_type_id` int(11) DEFAULT NULL,
  `business_type_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `business_type_translations`
--

INSERT INTO `business_type_translations` (`id`, `business_type_id`, `business_type_name`, `locale`, `site_id`) VALUES(1, 1, 'ICT', 'en', 1);
INSERT INTO `business_type_translations` (`id`, `business_type_id`, `business_type_name`, `locale`, `site_id`) VALUES(2, 2, 'Garments', 'en', 1);
INSERT INTO `business_type_translations` (`id`, `business_type_id`, `business_type_name`, `locale`, `site_id`) VALUES(3, 3, 'School', 'en', 1);
INSERT INTO `business_type_translations` (`id`, `business_type_id`, `business_type_name`, `locale`, `site_id`) VALUES(4, 4, 'College', 'en', 1);
INSERT INTO `business_type_translations` (`id`, `business_type_id`, `business_type_name`, `locale`, `site_id`) VALUES(5, 5, 'University', 'en', 1);
INSERT INTO `business_type_translations` (`id`, `business_type_id`, `business_type_name`, `locale`, `site_id`) VALUES(6, 6, 'Hospital', 'en', 1);
INSERT INTO `business_type_translations` (`id`, `business_type_id`, `business_type_name`, `locale`, `site_id`) VALUES(7, 7, 'test', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `status`, `deleted_at`, `site_id`) VALUES(1, 'Active', NULL, 1);
INSERT INTO `countries` (`id`, `status`, `deleted_at`, `site_id`) VALUES(2, 'Active', '2016-05-08 03:12:51', 1);
INSERT INTO `countries` (`id`, `status`, `deleted_at`, `site_id`) VALUES(3, 'Active', NULL, 1);
INSERT INTO `countries` (`id`, `status`, `deleted_at`, `site_id`) VALUES(7, 'Active', NULL, 1);
INSERT INTO `countries` (`id`, `status`, `deleted_at`, `site_id`) VALUES(8, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE IF NOT EXISTS `country_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `country_translations`
--

INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(1, 1, 'Bangladesh', 'en', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(2, 2, 'Germany', 'en', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(3, 1, 'ভালবাসা', 'bn', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(4, 3, 'Srilanka', 'en', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(17, 7, 'শ্রীলঙ্কা', 'en', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(18, 7, 'শ্রীলঙ্কা', 'fr', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(19, 7, 'শ্রীলঙ্কা', 'bn', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(20, 7, 'শ্রীলঙ্কা', 'es', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(21, 8, 'Iraq', 'en', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(22, 8, 'iraq', 'fr', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(23, 8, 'ইরাক', 'bn', 1);
INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES(24, 8, 'iraq', 'es', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cv_languages`
--

CREATE TABLE IF NOT EXISTS `cv_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cv_languages`
--

INSERT INTO `cv_languages` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-06-11 06:46:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `cv_languages` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-06-11 06:46:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `cv_languages` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-06-11 06:48:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `cv_languages` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-06-11 06:52:16', '2016-06-14 05:17:25', NULL);
INSERT INTO `cv_languages` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 'Active', 1, '2016-06-11 07:17:27', '0000-00-00 00:00:00', '2016-06-11 07:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `cv_language_skills`
--

CREATE TABLE IF NOT EXISTS `cv_language_skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cv_language_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `writing` varchar(255) DEFAULT NULL,
  `reading` varchar(255) DEFAULT NULL,
  `speaking` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cv_language_skills`
--

INSERT INTO `cv_language_skills` (`id`, `cv_language_id`, `user_id`, `writing`, `reading`, `speaking`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 1, 120, 'High', 'High', 'High', 'Active', 1, '2016-06-11 09:09:09', '2016-06-11 09:51:34', NULL);
INSERT INTO `cv_language_skills` (`id`, `cv_language_id`, `user_id`, `writing`, `reading`, `speaking`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 2, 120, 'High', 'High', 'Medium', 'Active', 1, '2016-06-11 09:18:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `cv_language_skills` (`id`, `cv_language_id`, `user_id`, `writing`, `reading`, `speaking`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 3, 120, 'Low', 'Medium', 'Low', 'Active', 1, '2016-06-11 09:41:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `cv_language_skills` (`id`, `cv_language_id`, `user_id`, `writing`, `reading`, `speaking`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 4, 120, 'Low', 'Low', 'Low', 'Inactive', 1, '2016-06-11 09:54:11', '0000-00-00 00:00:00', '2016-06-11 09:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `cv_language_translations`
--

CREATE TABLE IF NOT EXISTS `cv_language_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cv_language_id` int(11) DEFAULT NULL,
  `cv_language_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cv_language_translations`
--

INSERT INTO `cv_language_translations` (`id`, `cv_language_id`, `cv_language_name`, `locale`, `site_id`) VALUES(1, 1, 'Bangla', 'en', 1);
INSERT INTO `cv_language_translations` (`id`, `cv_language_id`, `cv_language_name`, `locale`, `site_id`) VALUES(2, 2, 'English', 'en', 1);
INSERT INTO `cv_language_translations` (`id`, `cv_language_id`, `cv_language_name`, `locale`, `site_id`) VALUES(3, 3, 'Arabic', 'en', 1);
INSERT INTO `cv_language_translations` (`id`, `cv_language_id`, `cv_language_name`, `locale`, `site_id`) VALUES(4, 4, 'France', 'en', 1);
INSERT INTO `cv_language_translations` (`id`, `cv_language_id`, `cv_language_name`, `locale`, `site_id`) VALUES(5, 5, 'test', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `position`, `site_id`) VALUES(2, 'Hr', 'Active', 0, 1);
INSERT INTO `departments` (`id`, `name`, `status`, `position`, `site_id`) VALUES(3, 'Management', 'Active', 0, 1);
INSERT INTO `departments` (`id`, `name`, `status`, `position`, `site_id`) VALUES(4, 'IT', 'Active', 0, 1);
INSERT INTO `departments` (`id`, `name`, `status`, `position`, `site_id`) VALUES(5, 'Eeeeeee', 'Active', 0, 1);
INSERT INTO `departments` (`id`, `name`, `status`, `position`, `site_id`) VALUES(6, 'Department 5', 'Active', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department_shift`
--

CREATE TABLE IF NOT EXISTS `department_shift` (
  `department_id` int(10) unsigned DEFAULT NULL,
  `shift_id` int(10) unsigned DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department_shift`
--

INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES(2, 11, 1);
INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES(4, 11, 1);
INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES(4, 10, 1);
INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES(3, 11, 1);
INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES(2, 1, 1);
INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES(2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE IF NOT EXISTS `designations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designations_department_id_foreign` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(1, 4, 'Sr Software Engineer', 'Active', NULL, 1);
INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(3, 3, 'Officer', 'Active', NULL, 1);
INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(4, 4, 'Web Developer', 'Active', NULL, 1);
INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(5, 2, 'Dfdsf', 'Sdfdsf', NULL, 1);
INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(6, 3, 'Sr Officer', 'Active', NULL, 1);
INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(7, 3, 'Jr Officer', '454', NULL, 1);
INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(8, 3, 'Sr Manager', 'Active', NULL, 1);
INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES(9, 2, 'Hr2', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `country_id`, `division_id`, `status`, `deleted_at`, `site_id`) VALUES(1, 1, 1, 'Active', NULL, 1);
INSERT INTO `districts` (`id`, `country_id`, `division_id`, `status`, `deleted_at`, `site_id`) VALUES(2, 1, 1, 'Active', '2016-05-08 02:17:09', 1);
INSERT INTO `districts` (`id`, `country_id`, `division_id`, `status`, `deleted_at`, `site_id`) VALUES(3, 1, 2, 'Active', '2016-05-08 03:38:10', 1);
INSERT INTO `districts` (`id`, `country_id`, `division_id`, `status`, `deleted_at`, `site_id`) VALUES(4, 1, 6, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `district_translations`
--

CREATE TABLE IF NOT EXISTS `district_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `district_translations`
--

INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES(1, 1, 'Dhaka', 'en', 1);
INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES(2, 2, 'Narayanganj', 'en', 1);
INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES(3, 3, 'Chittagong', 'en', 1);
INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES(4, 4, 'Hobiganj', 'en', 1);
INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES(5, 4, 'hobiganj', 'fr', 1);
INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES(6, 4, 'হবিগঞ্জ', 'bn', 1);
INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES(7, 4, 'hobiganj', 'es', 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE IF NOT EXISTS `divisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `country_id`, `status`, `deleted_at`, `site_id`) VALUES(1, 1, 'Active', NULL, 1);
INSERT INTO `divisions` (`id`, `country_id`, `status`, `deleted_at`, `site_id`) VALUES(2, 1, 'Active', NULL, 1);
INSERT INTO `divisions` (`id`, `country_id`, `status`, `deleted_at`, `site_id`) VALUES(3, 1, 'Active', '2016-05-08 03:02:44', 1);
INSERT INTO `divisions` (`id`, `country_id`, `status`, `deleted_at`, `site_id`) VALUES(4, 1, 'Active', NULL, 1);
INSERT INTO `divisions` (`id`, `country_id`, `status`, `deleted_at`, `site_id`) VALUES(6, 1, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `division_translations`
--

CREATE TABLE IF NOT EXISTS `division_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `division_translations`
--

INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(1, 1, 'Dhaka', 'en', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(2, 2, 'Chittagong', 'en', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(3, 3, 'Khulna', 'en', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(4, 3, '', 'bn', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(5, 4, 'Rajshahi', 'en', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(6, 4, '', 'bn', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(11, 6, 'Sylhet', 'en', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(12, 6, 'sylhet', 'fr', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(13, 6, 'সিলেট', 'bn', 1);
INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES(14, 6, 'sylhet', 'es', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education_levels`
--

CREATE TABLE IF NOT EXISTS `education_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `education_levels`
--

INSERT INTO `education_levels` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-06-19 08:46:22', '2016-06-19 09:20:46', '2016-06-26 04:00:10');
INSERT INTO `education_levels` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-06-19 08:47:30', '0000-00-00 00:00:00', '2016-06-26 04:00:12');
INSERT INTO `education_levels` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-06-19 08:47:57', '0000-00-00 00:00:00', '2016-06-26 04:00:14');
INSERT INTO `education_levels` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-06-19 08:48:30', '0000-00-00 00:00:00', '2016-06-26 04:00:18');
INSERT INTO `education_levels` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 'Active', 1, '2016-06-19 09:05:04', '0000-00-00 00:00:00', '2016-06-26 04:00:20');
INSERT INTO `education_levels` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 'Active', 1, '2016-06-19 09:22:01', '0000-00-00 00:00:00', '2016-06-19 09:23:12');
INSERT INTO `education_levels` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(7, 'Inactive', 1, '2016-06-20 06:59:15', '2016-06-20 07:46:14', '2016-06-20 07:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `education_level_translations`
--

CREATE TABLE IF NOT EXISTS `education_level_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `education_level_id` int(11) DEFAULT NULL,
  `education_level_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `education_level_translations`
--

INSERT INTO `education_level_translations` (`id`, `education_level_id`, `education_level_name`, `locale`, `site_id`) VALUES(1, 1, 'Secondary', 'en', 1);
INSERT INTO `education_level_translations` (`id`, `education_level_id`, `education_level_name`, `locale`, `site_id`) VALUES(2, 2, 'Higher Secondary', 'en', 1);
INSERT INTO `education_level_translations` (`id`, `education_level_id`, `education_level_name`, `locale`, `site_id`) VALUES(3, 3, 'Diploma', 'en', 1);
INSERT INTO `education_level_translations` (`id`, `education_level_id`, `education_level_name`, `locale`, `site_id`) VALUES(4, 4, 'Bachelor/Honors', 'en', 1);
INSERT INTO `education_level_translations` (`id`, `education_level_id`, `education_level_name`, `locale`, `site_id`) VALUES(5, 5, 'Masters', 'en', 1);
INSERT INTO `education_level_translations` (`id`, `education_level_id`, `education_level_name`, `locale`, `site_id`) VALUES(6, 6, 'test', 'en', 1);
INSERT INTO `education_level_translations` (`id`, `education_level_id`, `education_level_name`, `locale`, `site_id`) VALUES(7, 7, 'test level e', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `emailer_id` int(11) DEFAULT NULL,
  `emailer_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=179 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(42, 'raja@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(43, 'kamu@kamu.com', 73, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(44, 'anis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(45, 'harun@harun.com', 76, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(46, 'ala@ala.com', 77, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(47, 'harun@gmail.com', 76, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(48, 'sami@gmail.com', 80, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(49, 'masum@gmail.com', 83, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(50, 'masum@yahoo.com', 84, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(51, 'masum@email.com', 83, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(60, 'danis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(61, 'monir@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(62, 'monirul@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(63, 'huzurd@gmail.com', 87, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(64, 'admin@yahoo.com', 90, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(65, 'huzurr@gmail.com', 91, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(66, 'suniya@yahoo.com', 92, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(67, 'rajas@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(68, 'raj@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(69, 'superadmin@superadmin.com', 93, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(70, 'firoza@yahoo.com', 94, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(71, 'firozaa@yahoo.com', 95, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(72, 'so@gmail.com', 96, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(73, 'jjkjjk@yahoo.com', 97, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(74, 'jkjkjk@ouo.com', 98, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(75, 'kjkjkjkj@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(76, 'kjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(77, 'dkjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(78, 'dkjkjkff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(79, 'dkjkjkffse@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(80, 'dkjkjkffse@uiuytjhjg.kj', 99, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(81, 'hjk@yu.piouiy', 100, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(82, 'lftrt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(83, 'lftrdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(84, 'lftrdft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(85, 'lftrdftg@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(86, 'lft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(87, 'lfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(88, 'ulfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(89, 'ulfdht@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(90, 'ulfdhft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(91, 'ulfdhfft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(92, 'ulfdhffwt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(93, 'jlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(94, 'jerlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(95, 'jerlretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(96, 'jer4lretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(97, 'jer4lretyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(98, 'jer4lrfetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(99, 'jer4lrfeetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(100, 'jer4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(101, 'jerw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(102, 'rw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(103, 'w4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(104, 'lkjljl@jl.khkjh', 104, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(105, 'lkjljwl@jl.khkjh', 105, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(106, 'lkjljwl@jl.khkjhf', 106, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(107, 'qlkjljwl@jl.khkjhf', 107, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(108, 'qlkjwwl@jl.khkjhf', 108, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(109, 'qluipoil@jl.khkjhf', 109, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(110, 'kjk@iyt.com', 110, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(111, 'kjke@iyt.com', 111, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(112, 'email@uyty.kjhjk', 112, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(113, 'lhlkhlh@jh.joiuo', 113, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(114, 'hals@uyo.com', 114, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(115, 'halsr@uyo.com', 115, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(116, 'iuyt@jiue.com', 116, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(117, 'iuyt@jiure.com', 117, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(118, 'iuytqw@jiudre.com', 118, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(119, 'hemD@email.com', 119, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(120, 'hemD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(121, 'hemeD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(122, 'ljlkjlkjlj@hjh.jk', 121, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(123, 'ljlkjlkwjlj@hjh.jk', 122, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(124, 'sami@sami.com', 123, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(125, 'hemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(126, 'hsemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(127, 'hsemesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(128, 'hsesmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(129, 'hsesdmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(130, 'hsesdfmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(131, 'hsesdfmesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(132, 'hsesdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(133, 'hello@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(134, 'hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(135, '1hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(136, '1hsedfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(137, '1hsedfmfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(138, '1hsedfemfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(139, 'hekki@heu.com', 125, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(140, 'helleo@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(141, 'helleod@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(142, 'r@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(143, 'sumaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(144, 'sumaaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(145, 'sdsd@kjk.jkjk', 127, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(146, 'akki@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(147, 'sallu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(148, 'rrr@gmail.com', 129, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(149, 'helleod@hyo.comg', 124, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(150, 'ak@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(151, 'akk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(152, 'kk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(153, 'salu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(154, 'test@gmail.com', 130, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(155, 'saifu@gmail.com', 131, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(156, 'saifu5@gmail.com', 131, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(157, 'sohag@gmail.com', 132, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(158, 'admin@admin.com', 133, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(159, 'adminn@admin.com', 134, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(160, 'helloadmin@gmail.com', 135, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(161, 'edu@gmail.com', 136, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(162, 'eduu@gmail.com', 137, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(163, 'eduud@gmail.com', 138, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(164, 'eduudd@gmail.com', 139, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(165, 'eduudd@gmail.comd', 140, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(166, 'eduudd@gmail.comdf', 141, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(167, 'hello@hello.com', 141, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(168, 'hello@helloo.com', 141, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(169, 'helloo@helloo.com', 141, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(170, 'helleod@hello.comg', 124, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(171, 'hell@hello.com', 124, 'Erp\\Models\\User\\User', 0, 0, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(172, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(173, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(174, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(175, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(176, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(177, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, 1);
INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES(178, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_histories`
--

CREATE TABLE IF NOT EXISTS `employee_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `designation_id` int(10) unsigned NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `dept_join_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_histories_user_id_foreign` (`user_id`),
  KEY `employee_histories_department_id_foreign` (`department_id`),
  KEY `employee_histories_designation_id_foreign` (`designation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `employee_histories`
--

INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(56, 120, 2, 5, 4, '2016-01-21', NULL, NULL, NULL, '2016-03-05', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(110, 120, 2, 5, 4, '2016-04-13', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(111, 120, 2, 5, 1, '2016-04-13', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(112, 120, 2, 5, 1, '2016-11-21', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(114, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(115, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(116, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(117, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(118, 126, 2, 5, 1, '2016-04-06', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(119, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(120, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(121, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(122, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(123, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(124, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(125, 127, 2, 5, 4, '2016-03-09', NULL, NULL, '2016-04-09', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(126, 127, 2, 5, 1, '2016-06-09', NULL, NULL, '2016-04-09', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(127, 127, 2, 5, 1, '2016-06-09', NULL, NULL, '2016-04-09', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(128, 127, 2, 5, 4, '2016-04-09', NULL, NULL, '2016-04-09', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(129, 128, 2, 5, 1, '2016-12-31', NULL, NULL, '2016-04-10', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(130, 120, 2, 5, 1, '2016-04-20', NULL, NULL, NULL, '2016-04-20', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(132, 132, 2, 5, 4, '2016-04-24', NULL, NULL, '2016-04-25', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(133, 133, 2, 5, 1, '1993-06-16', NULL, NULL, '2016-04-25', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(134, 132, 2, 5, 1, '2016-04-25', NULL, NULL, NULL, '2016-04-25', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(135, 132, 2, 5, 1, '2016-04-24', NULL, NULL, NULL, '2016-04-25', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(136, 133, 2, 5, 1, '2016-04-05', NULL, NULL, NULL, '2016-04-25', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(137, 139, 2, 5, 1, '2016-02-27', NULL, NULL, '2016-04-27', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(138, 139, 2, 5, 4, '2016-04-26', NULL, NULL, NULL, '2016-04-27', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(139, 132, 2, 5, 1, '2016-04-25', NULL, NULL, NULL, '2016-04-27', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(140, 126, 2, 5, 1, '2016-04-20', NULL, NULL, NULL, '2016-04-27', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(141, 140, 2, 5, 4, '2016-04-12', NULL, NULL, '2016-04-27', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(142, 142, 2, 5, 1, '2016-05-09', NULL, NULL, '2016-05-09', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(143, 145, 2, 5, 1, '2016-05-01', NULL, NULL, '2016-05-09', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(144, 145, 2, 5, 1, '2016-04-02', NULL, NULL, NULL, '2016-05-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(145, 133, 2, 5, 1, '1992-07-08', NULL, NULL, NULL, '2016-05-09', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(146, 149, 2, 5, 4, '2016-06-01', NULL, NULL, '2016-06-28', NULL, 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(147, 149, 2, 5, 1, '2016-06-01', NULL, NULL, NULL, '2016-06-28', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(148, 149, 2, 5, 1, '2016-06-01', NULL, NULL, NULL, '2016-06-28', 1);
INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES(149, 120, 2, 5, 1, '2016-04-20', NULL, NULL, NULL, '2016-06-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employment_histories`
--

CREATE TABLE IF NOT EXISTS `employment_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `business_type_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `currently_working` tinyint(1) NOT NULL,
  `experience_category_id` int(11) NOT NULL,
  `experience_all` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employment_histories`
--

INSERT INTO `employment_histories` (`id`, `user_id`, `business_type_id`, `from_date`, `to_date`, `currently_working`, `experience_category_id`, `experience_all`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 120, 1, '2009-08-01', '2010-06-09', 1, 2, '11,12', 'Active', 1, '2016-06-14 06:45:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `employment_histories` (`id`, `user_id`, `business_type_id`, `from_date`, `to_date`, `currently_working`, `experience_category_id`, `experience_all`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 120, 6, '2009-01-07', '2009-03-31', 1, 3, '7', 'Active', 1, '2016-06-14 06:48:11', '2016-06-14 08:20:38', NULL);
INSERT INTO `employment_histories` (`id`, `user_id`, `business_type_id`, `from_date`, `to_date`, `currently_working`, `experience_category_id`, `experience_all`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 120, 3, '2016-06-01', '2016-06-30', 1, 1, '4,5', 'Active', 1, '2016-06-14 08:06:18', '0000-00-00 00:00:00', '2016-06-14 08:29:24');
INSERT INTO `employment_histories` (`id`, `user_id`, `business_type_id`, `from_date`, `to_date`, `currently_working`, `experience_category_id`, `experience_all`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 120, 3, '2016-01-01', '2016-06-30', 1, 5, '16', 'Active', 1, '2016-06-14 08:29:01', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employment_history_translations`
--

CREATE TABLE IF NOT EXISTS `employment_history_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employment_history_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `position_held` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `responsibilites` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employment_history_translations`
--

INSERT INTO `employment_history_translations` (`id`, `employment_history_id`, `company_name`, `company_location`, `position_held`, `department`, `responsibilites`, `locale`, `site_id`) VALUES(1, 1, 'Scan Bangla', 'Dhaka', 'Web Developer', 'rrrr', 'deer', 'en', 1);
INSERT INTO `employment_history_translations` (`id`, `employment_history_id`, `company_name`, `company_location`, `position_held`, `department`, `responsibilites`, `locale`, `site_id`) VALUES(2, 2, 'eicra edit', 'Dhaka r', 'rr', 'tt', 'dswdwd edit', 'en', 1);
INSERT INTO `employment_history_translations` (`id`, `employment_history_id`, `company_name`, `company_location`, `position_held`, `department`, `responsibilites`, `locale`, `site_id`) VALUES(3, 3, 'test', 'dew', 'dssss', 'sswsw', 'cxssdsd', 'en', 1);
INSERT INTO `employment_history_translations` (`id`, `employment_history_id`, `company_name`, `company_location`, `position_held`, `department`, `responsibilites`, `locale`, `site_id`) VALUES(4, 4, 'B M High School', 'Dhaka', 'Teacher', NULL, 'pddefe', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, '2016-12-16 00:00:01', '2016-12-16 00:00:09', 'Active', 1, '2016-05-26 04:47:44', '2016-05-26 05:26:06', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, '2016-05-26 00:00:00', '2016-05-28 00:00:00', 'Active', 1, '2016-05-26 04:51:11', '2016-05-26 05:26:28', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, '2016-05-03 00:00:00', '2016-05-19 00:00:00', 'Inactive', 1, '2016-05-26 04:53:45', '0000-00-00 00:00:00', '2016-05-26 05:28:01');
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, '2016-05-26 00:00:00', '2016-05-28 00:00:00', 'Active', 1, '2016-05-26 05:08:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, '2016-05-26 00:00:00', '2016-05-26 00:00:00', 'Active', 1, '2016-05-26 05:53:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, '2016-05-27 00:00:00', '2016-05-27 00:00:00', 'Active', 1, '2016-05-26 06:42:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(7, '2016-05-27 00:00:00', '2016-05-27 00:00:00', 'Active', 1, '2016-05-26 06:49:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(8, '2016-05-27 00:00:00', '2016-05-27 00:00:00', 'Active', 1, '2016-05-26 06:50:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(9, '2016-05-28 00:00:01', '2016-05-30 00:00:09', 'Active', 1, '2016-05-26 06:54:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(10, '2016-05-28 00:00:00', '2016-05-28 00:00:01', 'Active', 1, '2016-05-26 08:20:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `events` (`id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(11, '2016-05-26 00:00:00', '2016-06-02 00:00:00', 'Active', 1, '2016-05-26 09:25:50', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_translations`
--

CREATE TABLE IF NOT EXISTS `event_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `event_venue` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `event_translations`
--

INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(1, 1, 'Victory Day', 'Victory Day details edit', 'School  edit', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(2, 2, 'test', 'dsddswex', 'outside', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(3, 3, NULL, 'sdfdvfcx', 'dswddgfv', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(4, 4, 'Test', 'ddwseewewe', 'wewewr', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(5, 5, 'Protest', ' Protest details', 'school', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(6, 5, 'প্রতিবাদ', 'প্রতিবাদ', 'স্কুল', 'bn', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(7, 6, 'scout', 'scout details', 'playground', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(8, 7, 'scout', 's d', 'playground', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(9, 8, 'scout', 'sd', 'playground', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(10, 9, 'Sports edited', 'sports d edited', 'playground r', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(11, 10, 'pppppppppp', 'ddddddddddddd', 'eeeeeeeeeee', 'en', 1);
INSERT INTO `event_translations` (`id`, `event_id`, `event_title`, `event_description`, `event_venue`, `locale`, `site_id`) VALUES(12, 11, 'y', 'bnn', 's', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE IF NOT EXISTS `examinations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `examination_name` varchar(255) DEFAULT NULL,
  `examination_date` date NOT NULL,
  `examination_note` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`id`, `examination_name`, `examination_date`, `examination_note`, `status`, `deleted_at`, `site_id`) VALUES(1, 'Class Test', '2016-05-12', 'Dee', 'Active', NULL, 1);
INSERT INTO `examinations` (`id`, `examination_name`, `examination_date`, `examination_note`, `status`, `deleted_at`, `site_id`) VALUES(2, 'Semester Final', '2016-12-10', 'Final Exam.', 'Inactive', NULL, 1);
INSERT INTO `examinations` (`id`, `examination_name`, `examination_date`, `examination_note`, `status`, `deleted_at`, `site_id`) VALUES(3, 'Test', '2016-05-20', 'Rrr', 'Active', NULL, 1);
INSERT INTO `examinations` (`id`, `examination_name`, `examination_date`, `examination_note`, `status`, `deleted_at`, `site_id`) VALUES(4, 'Tesdr', '2016-05-10', 'Ffgghg', 'Active', '2016-05-09 06:59:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `examination_schedules`
--

CREATE TABLE IF NOT EXISTS `examination_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `examination_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `examination_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `examination_schedules`
--

INSERT INTO `examination_schedules` (`id`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `examination_date`, `start_time`, `end_time`, `building_id`, `floor_id`, `room_id`, `status`, `deleted_at`, `site_id`) VALUES(1, 1, 1, 2, 1, '2016-05-10', '10:30:00', '12:30:00', 1, 3, 1, 'Active', NULL, 1);
INSERT INTO `examination_schedules` (`id`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `examination_date`, `start_time`, `end_time`, `building_id`, `floor_id`, `room_id`, `status`, `deleted_at`, `site_id`) VALUES(3, 2, 1, 4, 3, '2016-12-15', '10:00:00', '01:30:00', 3, 1, 2, 'Active', NULL, 1);
INSERT INTO `examination_schedules` (`id`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `examination_date`, `start_time`, `end_time`, `building_id`, `floor_id`, `room_id`, `status`, `deleted_at`, `site_id`) VALUES(4, 1, 1, 2, 1, '2016-05-11', '10:00:00', '12:00:00', 1, 3, 1, 'Inactive', '2016-05-09 08:22:42', 1);
INSERT INTO `examination_schedules` (`id`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `examination_date`, `start_time`, `end_time`, `building_id`, `floor_id`, `room_id`, `status`, `deleted_at`, `site_id`) VALUES(5, 2, 1, 4, 5, '2016-06-25', '10:00:00', '13:00:00', 3, 1, 2, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `experience_category_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 2, 'Active', 1, '2016-06-09 07:53:59', '0000-00-00 00:00:00', '2016-06-26 04:00:22');
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 2, 'Active', 1, '2016-06-09 07:54:55', '0000-00-00 00:00:00', '2016-06-26 04:00:24');
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 2, 'Active', 1, '2016-06-09 07:55:22', '0000-00-00 00:00:00', '2016-06-26 04:00:25');
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 1, 'Active', 1, '2016-06-09 08:09:15', '0000-00-00 00:00:00', '2016-06-26 04:00:27');
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 1, 'Active', 1, '2016-06-09 08:09:32', '0000-00-00 00:00:00', '2016-06-26 04:00:29');
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 1, 'Active', 1, '2016-06-09 08:09:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(7, 3, 'Active', 1, '2016-06-09 08:10:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(8, 3, 'Active', 1, '2016-06-09 08:10:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(9, 3, 'Active', 1, '2016-06-09 08:11:14', '2016-06-09 08:23:22', NULL);
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(10, 3, 'Active', 1, '2016-06-09 08:26:24', '0000-00-00 00:00:00', '2016-06-09 08:27:12');
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(11, 2, 'Active', 1, '2016-06-14 06:15:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(12, 2, 'Active', 1, '2016-06-14 06:16:13', '2016-06-14 06:16:56', NULL);
INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(16, 5, 'Active', 1, '2016-06-14 08:27:19', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_categories`
--

CREATE TABLE IF NOT EXISTS `experience_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `experience_categories`
--

INSERT INTO `experience_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-06-09 05:58:24', '2016-06-09 06:14:36', NULL);
INSERT INTO `experience_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-06-09 05:59:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `experience_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-06-09 06:06:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `experience_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-06-09 06:16:34', '0000-00-00 00:00:00', '2016-06-09 06:17:02');
INSERT INTO `experience_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 'Active', 1, '2016-06-14 08:26:24', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_category_translations`
--

CREATE TABLE IF NOT EXISTS `experience_category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `experience_category_id` int(11) DEFAULT NULL,
  `experience_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `experience_category_translations`
--

INSERT INTO `experience_category_translations` (`id`, `experience_category_id`, `experience_category_name`, `locale`, `site_id`) VALUES(1, 1, 'Accounting/Finance', 'en', 1);
INSERT INTO `experience_category_translations` (`id`, `experience_category_id`, `experience_category_name`, `locale`, `site_id`) VALUES(2, 2, 'IT/Telecommunication', 'en', 1);
INSERT INTO `experience_category_translations` (`id`, `experience_category_id`, `experience_category_name`, `locale`, `site_id`) VALUES(3, 3, 'Marketing/Sales', 'en', 1);
INSERT INTO `experience_category_translations` (`id`, `experience_category_id`, `experience_category_name`, `locale`, `site_id`) VALUES(4, 4, 'test', 'en', 1);
INSERT INTO `experience_category_translations` (`id`, `experience_category_id`, `experience_category_name`, `locale`, `site_id`) VALUES(5, 5, 'Teaching', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `experience_translations`
--

CREATE TABLE IF NOT EXISTS `experience_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `experience_id` int(11) DEFAULT NULL,
  `experience_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `experience_translations`
--

INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(1, 1, 'Software Engineer', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(2, 2, 'Project Manager (Software)', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(3, 3, 'Hardware Engineer', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(4, 4, 'Accounts', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(5, 5, 'Audit', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(6, 6, 'Cash Management', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(7, 7, 'Marketing', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(8, 8, 'Market Research', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(9, 9, 'Public Relation', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(10, 10, 'test', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(11, 11, 'Programmer', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(12, 12, 'Front End Developer ', 'en', 1);
INSERT INTO `experience_translations` (`id`, `experience_id`, `experience_name`, `locale`, `site_id`) VALUES(13, 16, 'Senior Teacher', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE IF NOT EXISTS `floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` int(11) DEFAULT NULL,
  `floor_name` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `building_id`, `floor_name`, `status`, `deleted_at`, `site_id`) VALUES(1, 3, '2nd Floor', 'Active', NULL, 1);
INSERT INTO `floors` (`id`, `building_id`, `floor_name`, `status`, `deleted_at`, `site_id`) VALUES(3, 1, '1st Floor', 'Active', NULL, 1);
INSERT INTO `floors` (`id`, `building_id`, `floor_name`, `status`, `deleted_at`, `site_id`) VALUES(4, 1, '3rd Floor', 'Active', NULL, 1);
INSERT INTO `floors` (`id`, `building_id`, `floor_name`, `status`, `deleted_at`, `site_id`) VALUES(5, 3, '4th Floor', 'Active', '2016-05-09 06:44:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE IF NOT EXISTS `genders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `status`, `site_id`) VALUES(17, 'Active', 1);
INSERT INTO `genders` (`id`, `status`, `site_id`) VALUES(18, 'Active', 1);
INSERT INTO `genders` (`id`, `status`, `site_id`) VALUES(19, NULL, 1);
INSERT INTO `genders` (`id`, `status`, `site_id`) VALUES(20, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gender_translations`
--

CREATE TABLE IF NOT EXISTS `gender_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gender_id` int(10) unsigned NOT NULL,
  `gender_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gender_translations_gender_id_locale_unique` (`gender_id`,`locale`),
  KEY `gender_translations_locale_index` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `gender_translations`
--

INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`, `site_id`) VALUES(17, 17, 'Male', 'en', 1);
INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`, `site_id`) VALUES(18, 18, 'Female', 'en', 1);
INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`, `site_id`) VALUES(19, 19, 'Common', 'en', 1);
INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`, `site_id`) VALUES(20, 20, 'Gender', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_accesses`
--

CREATE TABLE IF NOT EXISTS `group_accesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `add` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1015 ;

--
-- Dumping data for table `group_accesses`
--

INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1, 5, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(2, 17, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(3, 23, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(4, 24, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(5, 25, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(6, 26, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(7, 27, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(8, 28, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(9, 29, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(10, 30, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(11, 31, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(12, 32, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(13, 33, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(14, 34, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(15, 35, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(16, 36, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(17, 37, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(18, 38, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(19, 39, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(20, 40, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(21, 41, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(22, 42, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(23, 43, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(24, 44, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(25, 45, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(26, 46, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(27, 47, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(28, 48, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(29, 49, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(30, 50, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(31, 51, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(32, 52, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(33, 53, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(34, 54, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(35, 55, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(36, 56, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(37, 57, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(38, 58, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(39, 59, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(40, 60, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(41, 61, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(42, 62, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(43, 63, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(44, 64, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(45, 65, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(46, 66, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(47, 67, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(48, 68, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(49, 69, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(50, 70, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(51, 71, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(52, 72, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(53, 73, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(54, 74, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(55, 75, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(56, 76, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(57, 77, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(58, 78, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(59, 79, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(60, 80, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(61, 81, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(62, 82, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(63, 83, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(64, 84, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(65, 85, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(66, 86, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(67, 87, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(68, 88, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(69, 89, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(70, 90, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(71, 91, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(72, 92, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(73, 93, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(74, 94, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(75, 95, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(76, 96, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(77, 97, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(78, 98, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(79, 99, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(80, 100, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(81, 101, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(82, 102, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(83, 103, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(84, 104, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(85, 105, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(86, 106, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(87, 107, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(88, 108, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(89, 109, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(90, 110, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(91, 111, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(92, 112, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(93, 114, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(94, 115, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(95, 116, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(96, 117, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(97, 118, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(98, 119, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(99, 120, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(100, 121, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(101, 122, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(102, 123, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(103, 124, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(104, 125, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(105, 126, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(106, 127, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(107, 128, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(108, 129, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(109, 130, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(110, 131, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(111, 132, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(112, 133, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(113, 134, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(114, 135, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(115, 136, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(116, 137, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(117, 138, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(118, 139, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(119, 140, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(120, 141, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(121, 142, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(122, 143, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(123, 144, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(124, 145, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(125, 146, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(126, 147, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(127, 148, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(128, 149, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(129, 150, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(130, 151, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(131, 152, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(132, 153, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(133, 154, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(134, 155, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(135, 156, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(136, 157, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(137, 158, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(138, 159, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(139, 160, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(140, 161, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(141, 162, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(142, 163, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(143, 164, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(144, 165, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(145, 166, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(146, 167, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(147, 168, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(148, 169, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(149, 170, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(150, 171, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(151, 172, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(152, 173, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(153, 174, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(154, 175, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(155, 176, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(156, 177, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(157, 178, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(158, 179, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(159, 180, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(160, 181, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(161, 182, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(162, 183, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(163, 184, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(164, 185, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(165, 186, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(166, 187, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(167, 188, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(168, 189, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(169, 190, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(170, 191, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(171, 192, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(172, 193, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(173, 194, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(174, 195, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(175, 196, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(176, 197, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(177, 198, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(178, 199, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(179, 200, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(180, 201, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(181, 202, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(182, 204, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(183, 205, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(184, 206, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(185, 207, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(186, 208, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(187, 209, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(188, 210, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(189, 211, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(190, 212, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(191, 213, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(192, 214, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(193, 215, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(194, 216, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(195, 217, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(196, 218, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(197, 219, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(198, 220, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(199, 221, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(200, 222, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(201, 224, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(202, 225, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(203, 226, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(204, 227, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(205, 228, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(206, 229, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(207, 230, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(208, 231, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(209, 232, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(210, 233, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(211, 234, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(212, 235, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(213, 236, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(214, 237, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(215, 238, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(216, 239, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(217, 240, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(218, 241, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(219, 242, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(220, 243, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(221, 244, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(222, 245, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(223, 246, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(224, 247, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(225, 248, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(226, 249, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(227, 250, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(228, 251, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(229, 252, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(230, 253, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(231, 254, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(232, 255, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(233, 256, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(234, 257, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(235, 258, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(236, 259, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(237, 260, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(238, 261, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(239, 262, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(240, 263, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(241, 264, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(242, 265, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(243, 266, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(244, 267, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(245, 269, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(246, 270, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(247, 271, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(248, 272, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(249, 273, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(250, 274, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(251, 275, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(252, 276, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(253, 277, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(254, 278, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(255, 279, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(256, 280, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(257, 281, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(258, 282, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(259, 283, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(260, 284, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(261, 285, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(262, 286, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(263, 287, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(264, 288, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(265, 289, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(266, 290, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(267, 291, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(268, 292, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(269, 293, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(270, 294, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(271, 295, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(272, 296, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(273, 297, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(274, 298, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(275, 299, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(276, 300, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(277, 301, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(278, 302, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(279, 303, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(280, 304, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(281, 305, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(282, 306, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(283, 307, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(284, 308, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(285, 309, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(286, 310, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(287, 311, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(288, 312, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(289, 313, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(290, 314, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(291, 315, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(292, 316, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(293, 317, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(294, 318, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(295, 319, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(296, 320, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(297, 321, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(298, 322, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(299, 323, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(300, 324, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(301, 325, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(302, 326, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(303, 327, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(304, 328, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(305, 329, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(306, 330, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(307, 331, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(308, 332, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(309, 333, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(310, 334, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(311, 335, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(312, 336, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(313, 337, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(314, 338, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(315, 339, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(316, 340, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(317, 341, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(318, 342, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(319, 343, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(320, 344, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(321, 345, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(322, 346, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(323, 347, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(324, 348, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(325, 349, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(326, 350, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(327, 351, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(328, 352, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(329, 353, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(330, 354, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(331, 355, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(332, 356, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(333, 357, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(334, 358, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(335, 359, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(336, 360, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(337, 361, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(338, 362, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(339, 363, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(340, 364, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(341, 365, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(342, 366, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(343, 367, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(344, 368, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(345, 369, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(346, 370, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(347, 371, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(348, 372, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(349, 373, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(350, 374, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(351, 375, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(352, 376, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(353, 377, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(354, 378, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(355, 379, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(356, 380, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(357, 381, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(358, 382, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(359, 383, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(360, 384, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(361, 385, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(362, 386, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(363, 387, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(364, 388, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(365, 389, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(366, 390, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(367, 391, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(368, 392, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(369, 393, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(370, 394, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(371, 395, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(372, 396, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(373, 397, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(374, 398, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(375, 399, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(376, 400, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(377, 401, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(378, 402, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(379, 403, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(380, 404, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(381, 405, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(382, 406, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(383, 407, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(384, 408, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(385, 409, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(386, 410, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(387, 411, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(388, 412, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(389, 413, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(390, 414, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(391, 415, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(392, 416, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(393, 417, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(394, 418, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(395, 419, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(396, 420, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(397, 421, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(398, 422, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(399, 423, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(400, 424, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(401, 425, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(402, 426, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(403, 427, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(404, 428, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(405, 429, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(406, 430, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(407, 431, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(408, 432, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(409, 433, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(410, 434, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(411, 435, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(412, 436, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(413, 437, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(414, 438, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(415, 439, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(416, 440, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(417, 441, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(418, 442, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(419, 443, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(420, 444, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(421, 445, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(422, 446, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(423, 447, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(424, 448, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(425, 449, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(426, 450, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(427, 451, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(428, 452, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(429, 453, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(430, 454, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(431, 455, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(432, 456, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(433, 457, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(434, 458, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(435, 459, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(436, 460, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(437, 461, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(438, 462, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(439, 463, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(440, 464, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(441, 465, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(442, 466, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(443, 467, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(444, 468, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(445, 469, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(446, 470, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(447, 471, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(448, 472, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(449, 473, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(450, 474, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(451, 475, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(452, 476, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(453, 477, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(454, 478, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(455, 479, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(456, 480, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(457, 481, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(458, 482, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(459, 203, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(460, 483, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(461, 484, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(462, 485, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(463, 486, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(464, 487, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(465, 488, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(466, 489, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(467, 490, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(468, 491, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(469, 492, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(470, 493, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(471, 494, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(472, 495, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(473, 496, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(474, 497, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(475, 498, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(476, 499, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(477, 500, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(478, 501, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(479, 502, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(480, 503, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(481, 504, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(482, 505, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(483, 506, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(484, 507, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(485, 508, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(486, 509, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(487, 510, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(488, 511, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(489, 512, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(490, 513, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(491, 514, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(492, 515, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(493, 516, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(494, 517, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(495, 518, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(496, 519, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(497, 520, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(498, 5, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(499, 23, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(500, 17, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(501, 24, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(502, 25, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(503, 26, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(504, 27, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(505, 28, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(506, 29, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(507, 30, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(508, 31, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(509, 32, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(510, 33, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(511, 34, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(512, 35, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(513, 36, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(514, 37, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(515, 38, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(516, 39, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(517, 40, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(518, 41, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(519, 42, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(520, 43, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(521, 44, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(522, 45, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(523, 46, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(524, 47, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(525, 48, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(526, 49, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(527, 50, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(528, 51, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(529, 52, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(530, 53, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(531, 54, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(532, 55, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(533, 56, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(534, 57, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(535, 58, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(536, 59, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(537, 60, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(538, 61, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(539, 62, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(540, 63, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(541, 64, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(542, 65, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(543, 66, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(544, 67, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(545, 68, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(546, 69, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(547, 70, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(548, 71, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(549, 72, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(550, 73, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(551, 74, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(552, 75, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(553, 76, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(554, 77, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(555, 78, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(556, 79, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(557, 80, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(558, 81, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(559, 82, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(560, 83, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(561, 84, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(562, 85, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(563, 86, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(564, 87, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(565, 88, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(566, 89, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(567, 90, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(568, 91, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(569, 92, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(570, 93, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(571, 94, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(572, 95, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(573, 96, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(574, 97, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(575, 98, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(576, 99, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(577, 100, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(578, 101, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(579, 102, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(580, 103, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(581, 104, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(582, 105, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(583, 106, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(584, 107, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(585, 108, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(586, 109, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(587, 110, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(588, 111, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(589, 112, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(590, 114, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(591, 115, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(592, 116, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(593, 117, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(594, 118, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(595, 119, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(596, 120, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(597, 121, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(598, 122, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(599, 123, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(600, 124, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(601, 125, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(602, 126, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(603, 127, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(604, 128, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(605, 129, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(606, 130, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(607, 131, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(608, 132, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(609, 133, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(610, 134, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(611, 135, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(612, 136, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(613, 137, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(614, 138, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(615, 139, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(616, 140, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(617, 141, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(618, 142, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(619, 143, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(620, 144, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(621, 145, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(622, 146, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(623, 147, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(624, 148, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(625, 149, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(626, 150, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(627, 151, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(628, 152, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(629, 153, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(630, 154, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(631, 155, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(632, 156, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(633, 157, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(634, 158, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(635, 159, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(636, 160, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(637, 161, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(638, 162, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(639, 163, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(640, 164, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(641, 165, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(642, 166, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(643, 167, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(644, 168, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(645, 169, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(646, 170, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(647, 171, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(648, 172, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(649, 173, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(650, 174, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(651, 175, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(652, 176, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(653, 177, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(654, 178, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(655, 179, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(656, 180, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(657, 181, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(658, 182, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(659, 183, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(660, 184, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(661, 185, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(662, 186, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(663, 187, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(664, 188, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(665, 189, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(666, 190, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(667, 191, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(668, 192, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(669, 193, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(670, 194, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(671, 195, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(672, 196, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(673, 197, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(674, 198, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(675, 199, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(676, 200, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(677, 201, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(678, 202, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(679, 203, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(680, 204, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(681, 205, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(682, 206, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(683, 207, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(684, 208, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(685, 209, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(686, 210, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(687, 211, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(688, 212, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(689, 213, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(690, 214, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(691, 215, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(692, 216, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(693, 217, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(694, 218, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(695, 219, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(696, 220, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(697, 221, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(698, 222, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(699, 224, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(700, 225, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(701, 226, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(702, 227, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(703, 228, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(704, 229, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(705, 230, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(706, 231, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(707, 232, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(708, 233, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(709, 234, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(710, 235, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(711, 236, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(712, 237, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(713, 238, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(714, 239, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(715, 240, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(716, 241, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(717, 242, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(718, 243, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(719, 244, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(720, 245, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(721, 246, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(722, 247, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(723, 248, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(724, 249, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(725, 250, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(726, 251, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(727, 252, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(728, 253, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(729, 254, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(730, 255, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(731, 256, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(732, 257, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(733, 258, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(734, 259, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(735, 260, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(736, 261, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(737, 262, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(738, 263, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(739, 264, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(740, 265, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(741, 266, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(742, 267, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(743, 269, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(744, 270, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(745, 271, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(746, 272, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(747, 273, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(748, 274, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(749, 275, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(750, 276, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(751, 277, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(752, 278, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(753, 279, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(754, 280, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(755, 281, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(756, 282, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(757, 283, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(758, 284, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(759, 285, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(760, 286, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(761, 287, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(762, 288, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(763, 289, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(764, 290, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(765, 291, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(766, 292, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(767, 293, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(768, 294, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(769, 295, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(770, 296, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(771, 297, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(772, 298, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(773, 299, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(774, 300, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(775, 301, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(776, 302, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(777, 303, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(778, 304, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(779, 305, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(780, 306, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(781, 307, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(782, 308, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(783, 309, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(784, 310, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(785, 311, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(786, 312, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(787, 313, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(788, 314, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(789, 315, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(790, 316, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(791, 317, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(792, 318, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(793, 319, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(794, 320, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(795, 321, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(796, 322, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(797, 323, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(798, 324, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(799, 325, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(800, 326, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(801, 327, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(802, 328, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(803, 329, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(804, 330, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(805, 331, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(806, 332, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(807, 333, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(808, 334, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(809, 335, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(810, 336, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(811, 337, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(812, 338, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(813, 339, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(814, 340, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(815, 341, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(816, 342, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(817, 343, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(818, 344, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(819, 345, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(820, 346, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(821, 347, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(822, 348, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(823, 349, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(824, 350, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(825, 351, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(826, 352, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(827, 353, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(828, 354, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(829, 355, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(830, 356, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(831, 357, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(832, 358, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(833, 359, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(834, 360, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(835, 361, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(836, 362, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(837, 363, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(838, 364, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(839, 365, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(840, 366, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(841, 367, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(842, 368, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(843, 369, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(844, 370, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(845, 371, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(846, 372, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(847, 373, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(848, 374, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(849, 375, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(850, 376, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(851, 377, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(852, 378, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(853, 379, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(854, 380, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(855, 381, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(856, 382, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(857, 383, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(858, 384, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(859, 385, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(860, 386, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(861, 387, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(862, 388, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(863, 389, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(864, 390, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(865, 391, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(866, 392, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(867, 393, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(868, 394, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(869, 395, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(870, 396, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(871, 397, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(872, 398, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(873, 399, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(874, 400, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(875, 401, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(876, 402, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(877, 403, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(878, 404, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(879, 405, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(880, 406, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(881, 407, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(882, 408, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(883, 409, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(884, 410, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(885, 411, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(886, 412, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(887, 413, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(888, 414, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(889, 415, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(890, 416, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(891, 417, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(892, 418, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(893, 419, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(894, 420, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(895, 421, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(896, 422, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(897, 423, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(898, 424, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(899, 425, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(900, 426, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(901, 427, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(902, 428, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(903, 429, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(904, 430, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(905, 431, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(906, 432, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(907, 433, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(908, 434, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(909, 435, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(910, 436, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(911, 437, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(912, 438, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(913, 439, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(914, 440, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(915, 441, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(916, 442, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(917, 443, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(918, 444, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(919, 445, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(920, 446, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(921, 447, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(922, 448, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(923, 449, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(924, 450, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(925, 451, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(926, 452, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(927, 453, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(928, 454, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(929, 455, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(930, 456, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(931, 457, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(932, 458, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(933, 459, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(934, 460, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(935, 461, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(936, 462, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(937, 463, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(938, 464, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(939, 465, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(940, 466, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(941, 467, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(942, 468, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(943, 469, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(944, 470, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(945, 471, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(946, 472, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(947, 473, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(948, 474, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(949, 475, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(950, 476, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(951, 477, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(952, 478, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(953, 479, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(954, 480, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(955, 481, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(956, 482, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(957, 483, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(958, 484, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(959, 485, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(960, 486, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(961, 487, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(962, 488, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(963, 489, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(964, 490, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(965, 491, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(966, 492, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(967, 493, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(968, 494, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(969, 495, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(970, 496, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(971, 497, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(972, 498, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(973, 499, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(974, 500, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(975, 501, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(976, 502, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(977, 503, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(978, 504, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(979, 505, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(980, 506, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(981, 507, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(982, 508, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(983, 509, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(984, 510, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(985, 511, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(986, 512, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(987, 513, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(988, 514, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(989, 515, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(990, 516, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(991, 517, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(992, 518, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(993, 519, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(994, 520, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(995, 521, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(996, 522, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(997, 521, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(998, 522, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(999, 523, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1000, 524, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1001, 523, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1002, 524, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1003, 525, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1004, 526, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1005, 525, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1006, 526, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1007, 527, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1008, 528, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1009, 529, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1010, 527, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1011, 528, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1012, 529, 7, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1013, 530, 4, 1, 0, 0, 0, 1);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES(1014, 530, 7, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holydays`
--

CREATE TABLE IF NOT EXISTS `holydays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `occasion` varchar(255) DEFAULT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `holydays_type_id_foreign` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `holydays`
--

INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(1, '2016-01-24', 'Optional', 2, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(2, '2016-01-04', 'Winter', 2, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(3, '2016-01-06', 'Tour', 2, 2, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(4, '2016-01-07', 'Hello Trip', 2, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(5, '0000-00-00', 'Study Tour', 2, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(6, '2016-01-25', 'Dfdsgdsgsd', 1, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(7, '2016-01-25', 'New Vacation', 2, 2, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(8, '2016-01-06', 'Gsdgsdg', 1, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(9, '2016-01-07', 'Testing', 1, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(10, '2016-01-06', 'Fdsfsdf', 1, 2, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(11, '2016-02-02', 'Martyrs Day', 5, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(12, '2016-03-01', 'Dayoff', 6, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(13, '2016-03-12', 'Testing Holiday', 2, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(14, '2016-03-13', 'Gfgfd', 1, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(15, '2016-05-19', 'Optional', 1, 1, NULL, 1);
INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES(16, '2016-03-31', 'Kkkkkkkk', 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holy_day_types`
--

CREATE TABLE IF NOT EXISTS `holy_day_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `holy_day_types`
--

INSERT INTO `holy_day_types` (`id`, `type`, `status_id`, `position`, `site_id`) VALUES(1, 'Rgional', 1, NULL, 1);
INSERT INTO `holy_day_types` (`id`, `type`, `status_id`, `position`, `site_id`) VALUES(2, 'Office Owned ', 1, NULL, 1);
INSERT INTO `holy_day_types` (`id`, `type`, `status_id`, `position`, `site_id`) VALUES(5, 'Hype', 1, NULL, 1);
INSERT INTO `holy_day_types` (`id`, `type`, `status_id`, `position`, `site_id`) VALUES(6, 'Weekend', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `is_rtl` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE IF NOT EXISTS `leaves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `leave_details` varchar(255) DEFAULT NULL,
  `max_days` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `type`, `leave_details`, `max_days`, `status`, `position`, `site_id`) VALUES(2, 'Maternal', 'When a female employee conceives, she will go under this type of leave', 180, 'Active', 1, 1);
INSERT INTO `leaves` (`id`, `type`, `leave_details`, `max_days`, `status`, `position`, `site_id`) VALUES(3, 'Casual Leave', 'sfsdfsdfdsfdsfdsf', 25, 'Fdsfsdfsd', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE IF NOT EXISTS `leave_applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leave_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `applied_on` date DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT '2',
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_applications_leave_id_foreign` (`leave_id`),
  KEY `leave_applications_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_id`, `user_id`, `from`, `to`, `applied_on`, `status_id`, `position`, `site_id`) VALUES(10, 2, 120, '2016-01-08', '2016-01-01', '2016-01-28', 2, NULL, 1);
INSERT INTO `leave_applications` (`id`, `leave_id`, `user_id`, `from`, `to`, `applied_on`, `status_id`, `position`, `site_id`) VALUES(11, 3, 128, '2016-01-28', '2016-02-02', '2016-01-27', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_application_translations`
--

CREATE TABLE IF NOT EXISTS `leave_application_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leave_application_id` int(10) unsigned NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `explanation` text,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_application_translations_leave_application_id_foreign` (`leave_application_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `leave_application_translations`
--

INSERT INTO `leave_application_translations` (`id`, `leave_application_id`, `subject`, `explanation`, `locale`, `site_id`) VALUES(9, 10, 'testing', 'explaination', 'en', 1);
INSERT INTO `leave_application_translations` (`id`, `leave_application_id`, `subject`, `explanation`, `locale`, `site_id`) VALUES(10, 11, 'Travel', 'Travel', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_tables`
--

CREATE TABLE IF NOT EXISTS `log_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `loggable_id` int(11) NOT NULL,
  `loggable_type` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `examination_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `mark_types` text,
  `total` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES(1, 137, '566987', 1, 1, 2, 3, '[]', 82, 'Active', NULL, 1);
INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES(2, 137, '566987', 1, 1, 2, 1, '{"written":"14","ClassTest":"12","QuizTest":"18"}', 44, 'Active', NULL, 1);
INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES(3, 137, '566987', 1, 1, 4, 1, '{"Written":"40","ClassTest":"15","QuizTest":"15"}', 70, 'Active', NULL, 1);
INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES(4, 138, '987654', 1, 1, 4, 1, '{"Written":"40","ClassTest":"14","QuizTest":"16"}', 70, 'Active', NULL, 1);
INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES(5, 146, '6589', 1, 1, 4, 1, '{"Written":"45","ClassTest":"12","QuizTest":"16"}', 73, 'Active', NULL, 1);
INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES(6, 147, '2345', 1, 1, 4, 1, '{"Written":"45","ClassTest":"15","QuizTest":"15"}', 75, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks_types`
--

CREATE TABLE IF NOT EXISTS `marks_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `marks_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `marks_types`
--

INSERT INTO `marks_types` (`id`, `marks_type`, `status`, `deleted_at`, `site_id`) VALUES(1, 'Written', 'Active', NULL, 1);
INSERT INTO `marks_types` (`id`, `marks_type`, `status`, `deleted_at`, `site_id`) VALUES(2, 'Objective', 'Active', NULL, 1);
INSERT INTO `marks_types` (`id`, `marks_type`, `status`, `deleted_at`, `site_id`) VALUES(3, 'Practical', 'Active', NULL, 1);
INSERT INTO `marks_types` (`id`, `marks_type`, `status`, `deleted_at`, `site_id`) VALUES(4, 'ClassTest', 'Active', NULL, 1);
INSERT INTO `marks_types` (`id`, `marks_type`, `status`, `deleted_at`, `site_id`) VALUES(5, 'QuizTest', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE IF NOT EXISTS `medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `filable_id` int(11) DEFAULT NULL,
  `filable_type` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medias_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(1, NULL, NULL, '14532854550b12016-01-09-195845.jpg', NULL, 109, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(2, '1453286207UBY2016-01-09-195845.jpg', 'jpg', NULL, 111, 111, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(3, '14532867245mY2016-01-09-195845', 'jpg', NULL, 112, 112, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(4, '1453287116Rb92016-01-09-195845', 'jpg', NULL, 113, 113, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(5, '1453289014dfHsadi-min', 'sql~', NULL, 115, 115, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(6, '1453289014K1vschoolsoft', 'sql', NULL, 115, 115, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(7, '1453290599Sejsvecommerce', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(8, '14532905992W7schoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(9, '1453290599oAjsadi-excel', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(10, '1453290599QfAsadi', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(11, '1453290599YqQschoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(12, '1453290942pqqsvecommerce', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(13, '1453290942cIoschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(14, '14532909422Vdschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(15, '1453290942yAcsadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(16, '1453290942ERssadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(17, '1453291476NPpsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(18, '1453291476EO5sadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(19, '1453291476aRxschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(20, '14532914762hoschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(21, '1453291476dKTsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(22, '1453291583RXeschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(23, '1453291583Waesadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(24, '1453291583fZOschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(25, '1453291583YKWsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(26, '1453291583MbJschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(27, '1453352490bCqsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(28, '1453352490Rdvschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(29, '1453352490w6kschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(30, '1453352490rwFschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(31, '1453352490l2Msadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(32, '1453357796Ksfschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(33, '1453357797syrsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(34, '145335779720qsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(35, '14533577977Rrsadi-min', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(36, '1453357797yhbschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(37, '1453360363ylxsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(38, '1453360440merschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(39, '1453360986fbSschoolsoft', 'sql', NULL, 124, 124, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(40, '1453370772nXnschoolsoft', 'sql', NULL, 126, 126, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(41, '1453714476Evuexel1', 'xlsx', NULL, 127, 127, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(42, '1461577020zUaPenguins', 'jpg', NULL, 135, 135, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(43, '1461647333lIk54137718697553feed 3', 'jpg', NULL, 136, 136, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(44, '14616486085ytLighthouse - Copy', 'jpg', NULL, 137, 137, 'Erp\\Models\\User\\User', 1);
INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES(45, '1461651368dFD54137718697553feed 3', 'jpg', NULL, 138, 138, 'Erp\\Models\\User\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_displayable` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `icon_name` varchar(255) DEFAULT NULL,
  `is_common_access` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=531 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(5, 'student-list', 41, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(6, 'log-out', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(7, 'sign-in', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(8, 'sign-in-form', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(9, 'log-in', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(10, 'role-check', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(11, '''/''', 0, 0, 1, 1, 1, '2016-05-28 22:18:31', '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(12, 'login-form', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(13, 'admin', 0, 0, 1, 1, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(14, 'employee-profile', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(15, 'choose-lang', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(16, 'imagecache', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(17, 'menu-list', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(18, 'menu-create-form', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(19, 'menu-create', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(20, 'menu-edit-form', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(21, 'menu-edit', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(22, 'menu-delete', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(23, 'status-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(24, 'status-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(25, 'status-list', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(26, 'edit-status-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(27, 'edit-status', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(28, 'group-info', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(29, 'role-list', 90, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(30, 'role-assign-form', 90, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(31, 'assign-permission-form', 90, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(32, 'role-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(33, 'role-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(34, 'role-assign', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(35, 'role-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(36, 'role-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(37, 'role-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(38, 'role-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(39, 'group-access', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(40, 'role-access', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(41, '#', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(42, 'user-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(43, 'user-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(44, 'user-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(45, 'user-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(46, 'user-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(47, 'user-list', 41, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(48, 'student_add_form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(49, 'student-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(50, 'student-list-by-class', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(51, 'student-list-by-section', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(52, 'student-list-by-sub', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(53, 'student-class', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(54, 'student-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(55, 'student-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(56, 'student-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(57, 'student-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(58, 'teacher-list', 41, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(59, 'teacher-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(60, 'teacher-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(61, 'teacher-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(62, 'teacher-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(63, 'teacher-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(64, 'teacher-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(65, 'guardian-list', 41, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(66, 'guardian-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(67, 'guardian-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(68, 'guardian-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(69, 'guardian-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(70, 'guardian-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(71, 'guardian-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(72, 'gender-religion', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(73, 'gender-list', 90, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(74, 'gender-add-form', 72, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(75, 'religion-list', 90, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(76, 'religion-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(77, 'religion-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(78, 'religion-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(79, 'religion-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(80, 'gender-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(81, 'gender-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(82, 'gender-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(83, 'gender-add', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(84, 'religion-add', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(85, 'department-designation', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(86, 'gender-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(87, 'religion-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(88, 'department-list', 90, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(89, 'designation-list', 90, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(90, 'user-settings', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(91, 'academic-settings', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(92, 'department-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(93, 'department-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(94, 'department-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(95, 'department-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(96, 'department-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(97, 'department-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(98, 'designation-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(99, 'designation-add', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(100, 'designation-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(101, 'designation-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(102, 'designation-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(103, 'designation-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(104, 'designation-dept', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(105, 'designation-user', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(106, 'building-list', 91, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(107, 'floor-list', 91, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(108, 'room-list', 91, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(109, 'class-list', 91, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(110, 'section-list', 91, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(111, 'subject-list', 91, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(112, 'routine-list', 91, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(114, 'marks-marks', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(115, 'mark-type-list', 114, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(116, 'create-marks-form', 114, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(117, 'student-marks-form', 114, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(118, 'exam-results', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(119, 'examination-list', 118, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(120, 'examinationSchedule-list', 118, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(121, 'result-system-list', 118, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(122, 'att', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(123, 'student-attendance-list', 122, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(124, 'monthly-device-attendance', 122, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(125, 'shiftf', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(126, 'shift-list', 125, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(127, 'assign-shift-dept-form', 125, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(128, 'building-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(129, 'building-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(130, 'building-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(131, 'building-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(132, 'building-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(133, 'floor-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(134, 'floor-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(135, 'floor-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(136, 'floor-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(137, 'floor-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(138, 'room-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(139, 'room-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(140, 'room-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(141, 'room-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(142, 'room-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(143, 'class-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(144, 'class-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(145, 'class-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(146, 'class-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(147, 'class-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(148, 'section_add_form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(149, 'section-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(150, 'section-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(151, 'section-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(152, 'section-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(153, 'subject-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(154, 'subject-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(155, 'subject-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(156, 'subject-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(157, 'subject-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(158, 'routine-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(159, 'routine-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(160, 'routine-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(161, 'routine-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(162, 'routine-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(163, 'routine-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(164, 'marks-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(165, 'marks-type-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(166, 'marks-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(167, 'mark-type-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(168, 'marks-type-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(169, 'create-marks', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(170, 'student-mark-add', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(171, 'examination-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(172, 'examination-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(173, 'examination-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(174, 'examination-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(175, 'examination-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(176, 'examination-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(177, 'examinationSchedule-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(178, 'examinationSchedule-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(179, 'examinationSchedule-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(180, 'examinationSchedule-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(181, 'examinationSchedule-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(182, 'examinationSchedule-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(183, 'result-system-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(184, 'create-result-system', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(185, 'result-system-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(186, 'add-student-attendance-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(187, 'add-student-attendance', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(188, 'monthly-device-data-upload', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(189, 'monthly-device-data-preview', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(190, 'shift-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(191, 'shift-create-json', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(192, 'shift-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(193, 'shift-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(194, 'shift-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(195, 'shift-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(196, 'snt_location', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(197, 'country-list', 196, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(198, 'country-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(199, 'country-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(200, 'country-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(201, 'country-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(202, 'country-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(203, 'country-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(204, 'division-list', 196, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(205, 'district-list', 196, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(206, 'snt_message', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(207, 'message-add-form', 206, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(208, 'message-sent', 206, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(209, 'message-inbox', 206, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(210, 'message-trash', 206, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(211, 'message-trash-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(212, 'message-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(213, 'message-user-list', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(214, 'message-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(215, 'message-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(216, 'message-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(217, 'message-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(218, 'notice-list', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(219, 'notice-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(220, 'notice-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(221, 'notice-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(222, 'notice-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(223, 'notice-edit', 0, 0, 1, 0, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(224, 'notice-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(225, 'event-list', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(226, 'event-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(227, 'event-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(228, 'event-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(229, 'event-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(230, 'event-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(231, 'event-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(232, 'snt_account_info', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(233, 'account-type-list', 232, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(234, 'account-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(235, 'account-type-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(236, 'account-type-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(237, 'account-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(238, 'account-type-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(239, 'account-type-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(240, 'amount-type-list', 232, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(241, 'amount-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(242, 'amount-type-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(243, 'amount-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(244, 'amount-type-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(245, 'amount-type-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(246, 'amount-category-list', 232, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(247, 'amount-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(248, 'amount-category-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(249, 'amount-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(250, 'amount-category-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(251, 'amount-category-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(252, 'account-list', 232, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(253, 'account-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(254, 'account-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(255, 'account-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(256, 'account-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(257, 'account-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(258, 'account-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(259, 'account-report', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(260, 'account-user-list', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(261, 'account-report-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(262, 'snt_report', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(263, 'your-timesheet', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(264, 'my-timesheet', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(265, 'my-timesheet-report', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(266, 'timesheet-report', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(267, 'user-month-timesheet-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(268, 'get-salary-from-punch', 262, 0, 1, 1, 1, NULL, '', 1);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(269, 'monthly-salary-report', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(270, 'user-year-salary-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(271, 'report-student-id-card', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(272, 'report-student-admit-card', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(273, 'report-testimonial', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(274, 'report-tc', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(275, 'report-clearance', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(276, 'report-certification', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(277, 'report-section', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(278, 'student-id-card-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(279, 'student-admit-card-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(280, 'testimonial-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(281, 'tc-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(282, 'clearance-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(283, 'certification-details', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(284, 'class-section', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(285, 'snt_salary', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(286, 'salary-type-create-form', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(287, 'salary-type-list', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(288, 'salary-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(289, 'salary-type-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(290, 'salary-type-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(291, 'create-salary-type', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(292, 'salary-rules-create-form', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(293, 'create-salary-rules', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(294, 'salary-allowance-rules-list', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(295, 'allowance-rule-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(296, 'allowance-rule-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(297, 'allowance-rule-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(298, 'overtime-rules-create-form', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(299, 'create-overtime-rules', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(300, 'salary-overtime-rules-list', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(301, 'cut-rules-create-form', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(302, 'create-salary-cut-rules', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(303, 'salary-cut-rules-list', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(304, 'bonus-rules-create-form', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(305, 'create-bonus-rules', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(306, 'salary-bonus-rules-list', 285, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(307, 'create-bonus-attr', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(308, 'check-bonus-attr', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(309, 'delete-bonus-attr', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(310, 'employee-salary', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(311, 'form-setting-list', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(312, 'form-setting-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(313, 'add-form-settings', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(314, 'form-setting-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(315, 'form-setting-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(316, 'form-setting-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(317, 'leave-list', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(318, 'leave-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(319, 'leave-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(320, 'leave-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(321, 'leave-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(322, 'leave-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(323, 'leave-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(324, 'snt_leave_application', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(325, 'application-list', 324, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(326, 'application-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(327, 'application-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(328, 'application-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(329, 'application-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(330, 'application-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(331, 'employee-leave', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(332, 'snt_holyday', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(333, 'holydaytype-list', 332, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(334, 'holydaytype-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(335, 'holydaytype-add', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(336, 'edit-holidaytype-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(337, 'edit-holidaytype', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(338, 'view-holidaytype', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(339, 'delete-holidaytype', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(340, 'holyday-list', 332, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(341, 'holyday-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(342, 'holyday-add', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(343, 'edit-holiday-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(344, 'edit-holiday', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(345, 'view-holiday', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(346, 'delete-holiday', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(347, 'holyday-month', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(348, 'snt_library', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(349, 'author-list', 348, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(350, 'author-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(351, 'author-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(352, 'author-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(353, 'author-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(354, 'author-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(355, 'author-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(356, 'rack-list', 348, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(357, 'rack-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(358, 'rack-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(359, 'rack-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(360, 'rack-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(361, 'rack-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(362, 'floor-build', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(363, 'room-floor', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(364, 'book-category-list', 348, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(365, 'book-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(366, 'book-category-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(367, 'book-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(368, 'book-category-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(369, 'book-category-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(370, 'book-list', 348, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(371, 'book-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(372, 'book-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(373, 'book-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(374, 'book-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(375, 'book-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(376, 'book-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(377, 'general-report-page', 262, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(378, 'general-report-teacher', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(379, 'general-report-student', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(380, 'general-report-routine', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(381, 'snt_profile_setting', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(382, 'training-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(383, 'training-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(384, 'training-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(385, 'training-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(386, 'training-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(387, 'training-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(388, 'training-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(389, 'professional-qualification-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(390, 'professional-qualification-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(391, 'professional-qualification-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(392, 'professional-qualification-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(393, 'professional-qualification-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(394, 'professional-qualification-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(395, 'professional-qualification-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(396, 'business-type-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(397, 'business-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(398, 'business-type-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(399, 'business-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(400, 'business-type-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(401, 'business-type-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(402, 'experience-category-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(403, 'experience-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(404, 'experience-category-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(405, 'experience-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(406, 'experience-category-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(407, 'experience-category-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(408, 'category-experience', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(409, 'experience-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(410, 'experience-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(411, 'experience-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(412, 'experience-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(413, 'experience-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(414, 'experience-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(415, 'employment-history-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(416, 'employment-history-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(417, 'employment-history-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(418, 'employment-history-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(419, 'employment-history-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(420, 'employment-history-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(421, 'employment-history-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(422, 'skill-category-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(423, 'skill-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(424, 'skill-category-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(425, 'skill-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(426, 'skill-category-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(427, 'skill-category-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(428, 'category-skill', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(429, 'skill-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(430, 'skill-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(431, 'skill-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(432, 'skill-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(433, 'skill-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(434, 'skill-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(435, 'cv-language-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(436, 'cv-language-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(437, 'cv-language-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(438, 'cv-language-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(439, 'cv-language-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(440, 'cv-language-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(441, 'cv-language-skill-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(442, 'cv-language-skill-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(443, 'cv-language-skill-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(444, 'cv-language-skill-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(445, 'cv-language-skill-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(446, 'cv-language-skill-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(447, 'relation-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(448, 'relation-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(449, 'relation-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(450, 'relation-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(451, 'relation-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(452, 'relation-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(453, 'reference-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(454, 'reference-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(455, 'reference-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(456, 'reference-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(457, 'reference-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(458, 'reference-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(459, 'reference-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(460, 'specialization-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(461, 'specialization-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(462, 'specialization-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(463, 'specialization-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(464, 'specialization-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(465, 'specialization-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(466, 'specialization-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(467, 'education-level-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(468, 'education-level-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(469, 'education-level-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(470, 'education-level-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(471, 'education-level-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(472, 'education-level-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(473, 'academic-qualification-list', 381, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(474, 'academic-qualification-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(475, 'academic-qualification-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(476, 'academic-qualification-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(477, 'academic-qualification-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(478, 'academic-qualification-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(479, 'academic-qualification-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(480, 'student-marks-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(481, 'section-list-by-class', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(482, 'student-list-view-marks', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(483, 'division-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(484, 'division-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(485, 'division-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(486, 'division-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(487, 'division-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(488, 'division-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(489, 'district-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(490, 'district-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(491, 'district-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(492, 'district-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(493, 'district-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(494, 'district-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(495, 'snt_site', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(496, 'site-list', 495, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(497, 'site-create-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(498, 'site-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(499, 'site-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(500, 'site-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(501, 'site-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(502, 'site-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(503, 'site-group-list', 495, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(504, 'site-group-create-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(505, 'site-group-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(506, 'site-group-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(507, 'site-group-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(508, 'site-membership-list', 495, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(509, 'site-membership-create-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(510, 'site-membership-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(511, 'site-membership-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(512, 'site-report', 495, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(513, 'official-site-report', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(514, 'site-amount-receive-list', 495, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(515, 'site-amount-receive-add-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(516, 'site-amount-receive-create', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(517, 'site-amount-receive-view', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(518, 'site-amount-receive-edit-form', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(519, 'site-amount-receive-edit', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(520, 'site-amount-receive-delete', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(521, 'snt_student_panel', 0, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(522, 'student-report-page', 521, 0, 1, 1, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(523, 'student-report-routine', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(524, 'student-report-exam', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(525, 'student-report-account', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(526, 'menu-search', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(527, 'student-list-for-marks', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(528, 'general-report-exam', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(529, 'shift-user', 0, 0, 1, 0, 1, NULL, '', 0);
INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES(530, 'student-report-testimonial', 0, 0, 1, 0, 1, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE IF NOT EXISTS `menu_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=535 ;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(5, 5, 'Students', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(6, 6, 'Sign Out', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(7, 7, 'Sign In', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(8, 8, 'Sign In Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(9, 9, 'Log In', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(10, 10, 'Role Check', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(11, 11, 'First Sign In', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(12, 12, 'First Sign In', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(13, 13, 'Dashboard', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(14, 14, 'Profile', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(15, 15, 'Language Chooser', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(16, 16, 'Imagecache', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(17, 17, 'Menu', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(18, 18, 'Create Menu Get', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(19, 19, 'Create Menu Post', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(20, 20, 'Edit Menu Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(21, 21, 'Edit Menu', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(22, 22, 'Delete Menu', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(23, 23, 'Create Status Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(24, 24, 'Create Status', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(25, 25, 'Status', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(26, 26, 'Edit Status Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(27, 27, 'Edit Status', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(28, 28, 'Group Info', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(29, 29, 'User Group', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(30, 30, 'Assign Role', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(31, 31, 'Assign Permission', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(32, 32, 'Create Role Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(33, 33, 'Create Role', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(34, 34, 'Assign Role Post', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(35, 35, 'Edit Role Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(36, 36, 'View Role', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(37, 37, 'Delete Role', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(38, 38, 'Edit Role', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(39, 39, 'Group Access', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(40, 40, 'Role Access', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(41, 41, 'Users', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(42, 42, 'Add User Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(43, 43, 'Create User', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(44, 44, 'View User', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(45, 45, 'Edit User Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(46, 46, 'Edit User', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(47, 47, 'Employees', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(48, 48, 'Add Student Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(49, 49, 'Add Student', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(50, 50, 'Student List By Class', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(51, 51, 'Student List by Section', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(52, 52, 'Student List by Subject', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(53, 53, 'Student Class for Department', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(54, 54, 'Edit Student Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(55, 55, 'Edit Student', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(56, 56, 'View Students', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(57, 57, 'Delete Student', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(58, 58, 'Teachers', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(59, 59, 'Add Teacher Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(60, 60, 'Create Teacher', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(61, 61, 'Edit Teacher Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(62, 62, 'Edit Teacher', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(63, 63, 'View Teacher', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(64, 64, 'Delete Teacher', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(65, 65, 'Guardians', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(66, 66, 'Add Guardian Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(67, 67, 'Add Guardian', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(68, 68, 'Edit Guardian Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(69, 69, 'Edit Guardian', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(70, 70, 'View Guardian', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(71, 71, 'Delete Guardian', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(72, 72, 'Gender & Religion', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(73, 73, 'Gender', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(74, 74, 'Add Gender Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(75, 75, 'Religion', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(76, 76, 'Add Religion Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(77, 77, 'Edit Religion Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(78, 78, 'View Religion', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(79, 79, 'Delete Religion', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(80, 80, 'Edit Gender Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(81, 81, 'View Gender', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(82, 82, 'Delete Gender', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(83, 83, 'Add Gender', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(84, 84, 'Add Religion', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(85, 85, 'Department & Designation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(86, 86, 'Edit Gender', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(87, 87, 'Edit Religion', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(88, 88, 'Department', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(89, 89, 'Designation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(90, 90, 'User Settings', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(91, 91, 'Academic Settings', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(92, 92, 'Add Department Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(93, 93, 'Add Department', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(94, 94, 'Edit Department Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(95, 95, 'Edit Department', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(96, 96, 'View Department', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(97, 97, 'Delete Department', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(98, 98, 'Add Designation Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(99, 99, 'Add Designation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(100, 100, 'Edit Designation Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(101, 101, 'Edit Designation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(102, 102, 'View Designation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(103, 103, 'Delete Designation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(104, 104, 'Designation of Dept', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(105, 105, 'Edit User Designation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(106, 106, 'Buildings', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(107, 107, 'Floors', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(108, 108, 'Rooms', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(109, 109, 'Classes', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(110, 110, 'Sections', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(111, 111, 'Subjects', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(112, 112, 'Routine', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(113, 113, 'Marks', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(114, 114, 'Marks', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(115, 115, 'Mark Types', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(116, 116, 'Add Marks Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(117, 117, 'Student Marks Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(118, 118, 'Exam & Results', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(119, 119, 'Exams', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(120, 120, 'Exam Schedule', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(121, 121, 'Result System', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(122, 122, 'Attendance', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(123, 123, 'Student Attendance', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(124, 124, 'Upload Device Attendance', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(125, 125, 'Shift', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(126, 126, 'Shift List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(127, 127, 'Assign Shift to Department', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(128, 128, 'Create Building Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(129, 129, 'Create Building', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(130, 130, 'Edit Building Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(131, 131, 'Edit Building', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(132, 132, 'Delete Building', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(133, 133, 'Add Floor Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(134, 134, 'Add Floor', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(135, 135, 'Edit Floor Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(136, 136, 'Edit Floor', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(137, 137, 'Delete Floor', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(138, 138, 'Add Room Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(139, 139, 'Add Room', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(140, 140, 'Edit Room Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(141, 141, 'Edit Room', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(142, 142, 'Delete Room', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(143, 143, 'Add Class Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(144, 144, 'Add Class', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(145, 145, 'Edit Class Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(146, 146, 'Edit Class', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(147, 147, 'Delete Class', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(148, 148, 'Add Section Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(149, 149, 'Add Section', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(150, 150, 'Edit Section Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(151, 151, 'Edit Section', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(152, 152, 'Delete Section', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(153, 153, 'Add Subject Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(154, 154, 'Add Subject', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(155, 155, 'Edit Subject Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(156, 156, 'Edit Subject', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(157, 157, 'Delete Subject', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(158, 158, 'Add Routine Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(159, 159, 'Add Routine', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(160, 160, 'View Routine', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(161, 161, 'Edit Routine Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(162, 162, 'Edit Routine', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(163, 163, 'Delete Routine', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(164, 164, 'Add Marks Type Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(165, 165, 'Add Marks Type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(166, 166, 'Edit Marks Type Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(167, 167, 'Edit Marks Type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(168, 168, 'Delete Marks Type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(169, 169, 'Add Marks', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(170, 170, 'Student Mark Add', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(171, 171, 'Add Exam Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(172, 172, 'Add Exam', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(173, 173, 'View Exam', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(174, 174, 'Edit Exam Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(175, 175, 'Edit Exam', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(176, 176, 'Delete Exam', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(177, 177, 'Add Exam Schedule Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(178, 178, 'Add Exam Schedule', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(179, 179, 'View Exam Schedule', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(180, 180, 'Edit Exam Schedule Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(181, 181, 'Edit Exam Schedule', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(182, 182, 'Delete Exam Schedule', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(183, 183, 'Add Result System Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(184, 184, 'Add Result System', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(185, 185, 'View Result System', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(186, 186, 'Add Student Attendance Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(187, 187, 'Add Student Attendance', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(188, 188, 'Monthly Device Data Upload', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(189, 189, 'Preview Monthly Device Data', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(190, 190, 'Add Shift Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(191, 191, 'Add Shift', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(192, 192, 'View Shift', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(193, 193, 'Edit Shift Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(194, 194, 'Edit Shift', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(195, 195, 'Delete Shift', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(196, 196, 'Locations', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(197, 197, 'Country', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(198, 198, 'Add Country Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(199, 199, 'Add Country', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(200, 200, 'View Country', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(201, 201, 'Country Edit Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(202, 202, 'Edit Country', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(203, 203, 'Delete Country', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(204, 198, 'Create Country Form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(205, 199, 'Create Country', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(206, 197, 'দেশ', 'bn', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(207, 200, 'Country View', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(208, 204, 'Division', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(209, 205, 'District', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(210, 206, 'Message', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(211, 207, 'Compose', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(212, 208, 'Sent', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(213, 209, 'Inbox', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(214, 210, 'Trash', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(215, 211, 'message trash view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(216, 212, 'message create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(217, 213, 'message user list', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(218, 214, 'message view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(219, 215, 'message edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(220, 216, 'message edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(221, 217, 'message delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(222, 218, 'Notice', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(223, 219, 'notice add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(224, 220, 'notice create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(225, 221, 'notice view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(226, 222, 'notice edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(227, 223, 'notice edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(228, 224, 'notice delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(229, 225, 'Event', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(230, 226, 'event add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(231, 227, 'event create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(232, 228, 'event edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(233, 229, 'event edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(234, 230, 'event view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(235, 231, 'event delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(236, 232, 'Account Info', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(237, 233, 'Account Type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(238, 234, 'account type add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(239, 235, 'account type create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(240, 236, 'account type view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(241, 237, 'account type edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(242, 238, 'account type edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(243, 239, 'account type delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(244, 240, 'Amount Type ', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(245, 241, 'amount type add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(246, 242, 'amount type create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(247, 243, 'amount type edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(248, 244, 'amount type edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(249, 245, 'amount type delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(250, 246, 'Amount Category', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(251, 247, 'amount category add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(252, 248, 'amount category create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(253, 249, 'amount category edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(254, 250, 'amount category edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(255, 251, 'amount category delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(256, 252, 'Account', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(257, 253, 'account add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(258, 254, 'account create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(259, 255, 'account edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(260, 256, 'account edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(261, 257, 'account view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(262, 258, 'account delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(263, 259, 'Accounts', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(264, 260, 'account user list', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(265, 261, 'account report details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(266, 262, 'Report', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(267, 263, 'Timesheet', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(268, 264, 'my timesheet', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(269, 265, 'my timesheet report', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(270, 266, 'timesheet report', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(271, 267, 'user month timesheet details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(272, 268, 'Salary', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(273, 269, 'monthly salary report', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(274, 270, 'user year salary details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(275, 271, 'Student Id Card', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(276, 272, 'Student Admit Card', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(277, 273, 'Testimonial', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(278, 274, 'Transfer Certificate', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(279, 275, 'Clearance', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(280, 276, 'Certification', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(281, 277, 'report-section', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(282, 278, 'student-id-card-details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(283, 279, 'student admit card details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(284, 280, 'testimonial details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(285, 281, 'tc details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(286, 282, 'clearance details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(287, 283, 'certification details', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(288, 284, 'class section', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(289, 285, 'Salary Setting', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(290, 286, 'Create Salary Type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(291, 287, 'Salary Type List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(292, 288, 'salary type edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(293, 289, 'salary type edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(294, 290, 'salary type delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(295, 291, 'create salary type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(296, 292, 'Create Allowance Rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(297, 293, 'create salary rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(298, 294, 'Allowance Rules List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(299, 295, 'allowance rule edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(300, 296, 'allowance rule edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(301, 297, 'allowance rule delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(302, 298, 'Create Overtime Rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(303, 299, 'create overtime rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(304, 300, 'Overtime Rules List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(305, 301, 'Create Salary Cut Rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(306, 302, 'create salary cut rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(307, 303, 'Salary Cut Rules List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(308, 304, 'Create Bonus Rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(309, 305, 'create bonus rules', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(310, 306, 'Bonus Rules List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(311, 307, 'create bonus attr', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(312, 308, 'check bonus attr', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(313, 309, 'delete bonus attr', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(314, 310, 'employee salary', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(315, 311, 'Form Settings', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(316, 312, 'form setting form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(317, 313, 'add form settings', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(318, 314, 'form setting edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(319, 315, 'form setting edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(320, 316, 'form setting delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(321, 317, 'Leave List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(322, 318, 'leave add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(323, 319, 'leave create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(324, 320, 'leave edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(325, 321, 'leave edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(326, 322, 'leave view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(327, 323, 'leave delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(328, 324, 'Leave Applications', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(329, 325, 'Application List', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(330, 326, 'application add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(331, 327, 'application create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(332, 328, 'application edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(333, 329, 'application edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(334, 330, 'application delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(335, 331, 'employee leave', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(336, 332, 'Holydays', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(337, 333, 'Holyday Types', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(338, 334, 'holydaytype add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(339, 335, 'holydaytype add', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(340, 336, 'edit holidaytype form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(341, 337, 'edit holiday type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(342, 338, 'view holiday type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(343, 339, 'delete holiday type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(344, 340, 'Holyday', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(345, 341, 'holyday add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(346, 342, 'holyday add', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(347, 343, 'edit holiday form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(348, 344, 'edit holiday', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(349, 345, 'view holiday', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(350, 346, 'delete holiday', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(351, 347, 'holyday month', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(352, 348, 'Library', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(353, 349, 'Author', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(354, 350, 'author add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(355, 351, 'author create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(356, 352, 'author view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(357, 353, 'author edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(358, 354, 'author edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(359, 355, 'author delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(360, 356, 'Rack', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(361, 357, 'rack add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(362, 358, 'rack create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(363, 359, 'rack edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(364, 360, 'rack edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(365, 361, 'rack delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(366, 362, 'floor of building', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(367, 363, 'room of floor', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(368, 364, 'Book Category', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(369, 365, 'book category add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(370, 366, 'book category create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(371, 367, 'book category edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(372, 368, 'book category edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(373, 369, 'book category delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(374, 370, 'Book', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(375, 371, 'book add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(376, 372, 'book create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(377, 373, 'book view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(378, 374, 'book edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(379, 375, 'book edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(380, 376, 'book delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(381, 377, 'General Report', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(382, 378, 'general report teacher', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(383, 379, 'general report student', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(384, 380, 'general report routine', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(385, 381, 'Profile Setting', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(386, 382, 'Training', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(387, 383, 'training add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(388, 384, 'training create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(389, 385, 'training view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(390, 386, 'training edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(391, 387, 'training edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(392, 388, 'training delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(393, 389, 'Professional Qualification', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(394, 390, 'Professional qualification add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(395, 391, 'Professional qualification create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(396, 392, 'Professional qualification view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(397, 393, 'Professional qualification edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(398, 394, 'Professional qualification edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(399, 395, 'Professional qualification delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(400, 396, 'Business Type', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(401, 397, 'Business type add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(402, 398, 'Business type create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(403, 399, 'Business type edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(404, 400, 'Business type edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(405, 401, 'Business type delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(406, 402, 'Experience Category', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(407, 403, 'Experience category add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(408, 404, 'Experience category create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(409, 405, 'Experience category edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(410, 406, 'Experience category edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(411, 407, 'Experience category delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(412, 408, 'category-experience', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(413, 409, 'Experience', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(414, 410, 'Experience add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(415, 411, 'Experience create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(416, 412, 'Experience edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(417, 413, 'Experience edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(418, 414, 'Experience delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(419, 415, 'Employment History', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(420, 416, 'Employment history add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(421, 417, 'Employment history create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(422, 418, 'Employment history view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(423, 419, 'Employment history edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(424, 420, 'Employment history edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(425, 421, 'Employment history delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(426, 422, 'Skill Category', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(427, 423, 'Skill category add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(428, 424, 'Skill category create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(429, 425, 'Skill category edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(430, 426, 'Skill category edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(431, 427, 'Skill category delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(432, 428, 'category skill', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(433, 429, 'Skill', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(434, 430, 'Skill add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(435, 431, 'Skill create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(436, 432, 'Skill edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(437, 433, 'Skill edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(438, 434, 'Skill delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(439, 435, 'Language', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(440, 436, 'Language add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(441, 437, 'Language create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(442, 438, 'cv language edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(443, 439, 'cv language edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(444, 440, 'cv language delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(445, 441, 'Language Skill', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(446, 442, 'cv language skill add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(447, 443, 'cv language skill create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(448, 444, 'cv language skill edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(449, 445, 'cv language skill edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(450, 446, 'cv language skill delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(451, 447, 'Relation', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(452, 448, 'relation add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(453, 449, 'relation create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(454, 450, 'relation edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(455, 451, 'relation edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(456, 452, 'relation delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(457, 453, 'Reference', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(458, 454, 'reference add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(459, 455, 'reference create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(460, 456, 'reference view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(461, 457, 'reference edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(462, 458, 'reference edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(463, 459, 'reference delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(464, 460, 'Specialization', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(465, 461, 'specialization add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(466, 462, 'specialization create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(467, 463, 'specialization view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(468, 464, 'specialization edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(469, 465, 'specialization edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(470, 466, 'specialization delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(471, 467, 'Education Level', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(472, 468, 'Education level add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(473, 469, 'Education level create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(474, 470, 'Education level edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(475, 471, 'Education level edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(476, 472, 'Education level delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(477, 473, 'Academic Qualification', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(478, 474, 'academic qualification add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(479, 475, 'Academic qualification create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(480, 476, 'Academic qualification view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(481, 477, 'Academic qualification edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(482, 478, 'Academic qualification edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(483, 479, 'Academic qualification delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(484, 480, 'view student marks by stId and examId', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(485, 481, 'Section list by class', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(486, 482, 'Student list view marks', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(487, 483, 'Division add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(488, 484, 'Division create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(489, 485, 'Division view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(490, 486, 'Division edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(491, 487, 'Division edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(492, 488, 'Division delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(493, 489, 'District add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(494, 490, 'District create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(495, 491, 'District view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(496, 492, 'District edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(497, 493, 'District edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(498, 494, 'District delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(499, 495, 'Site', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(500, 496, 'Site Info', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(501, 497, 'site create form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(502, 498, 'site create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(503, 499, 'site view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(504, 500, 'site edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(505, 501, 'site edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(506, 502, 'site delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(507, 503, 'Site Group', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(508, 504, 'site group create form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(509, 505, 'site group create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(510, 506, 'site group edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(511, 507, 'site group edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(512, 508, 'Site Membership', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(513, 509, 'site membership create form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(514, 510, 'site membership edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(515, 511, 'site membership edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(516, 512, 'Site Report', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(517, 513, 'official site report', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(518, 514, 'Site Amount Receive', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(519, 515, 'Site amount receive add form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(520, 516, 'Site amount receive create', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(521, 517, 'Site amount receive view', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(522, 518, 'Site amount receive edit form', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(523, 519, 'Site amount receive edit', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(524, 520, 'Site amount receive delete', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(525, 521, 'Student Panel', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(526, 522, 'Student Reports', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(527, 523, 'Student report routine', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(528, 524, 'Student report exam', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(529, 525, 'Student report account', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(530, 526, 'Menu search', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(531, 527, 'Student list for marks', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(532, 528, 'General report exam', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(533, 529, 'Shift user', 'en', 1);
INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES(534, 530, 'Student report testimonial', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meta_settings`
--

CREATE TABLE IF NOT EXISTS `meta_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_field_name` varchar(255) DEFAULT NULL,
  `field_level` varchar(255) DEFAULT NULL,
  `field_type` varchar(255) DEFAULT NULL,
  `field_options` varchar(255) DEFAULT NULL,
  `field_value_type` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `labclass` varchar(255) DEFAULT NULL,
  `wrapclass` varchar(255) DEFAULT NULL,
  `field_style` varchar(255) DEFAULT NULL,
  `field_class` varchar(255) DEFAULT NULL,
  `field_id` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `validation_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT NULL,
  `is_translatable` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2014_10_12_000000_create_users_table', 1, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2014_10_12_100000_create_password_resets_table', 1, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_053734_languages', 1, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_055339_create_company_groups_table', 2, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_061945_create_companies_table', 3, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_064229_create_genders_table', 4, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_072222_create_religions_table', 4, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_072649_create_emails_table', 5, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_081947_update_users_table', 6, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_091238_create_passwords_table', 7, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_11_15_103357_create_roles_table', 8, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_094138_create_log_tables_table', 9, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_101349_create_options_table', 10, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_101607_create_add_field_to_tables_table', 11, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_102313_create_media_table', 12, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_104930_create_departments_table', 13, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_05_111042_add_company_id_dept_id_to_users_table', 14, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_040317_create_user_translations_table', 15, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_041229_add_address_to_user_translations', 16, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_042029_drop_address_firstname_lastname_from_users_table', 17, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_045020_sixty_password_passwords_table', 18, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_050155_email_unique_emails_table', 19, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_050802_create_gender_translations_table', 20, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_051417_drop_name_from_genders', 21, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_06_051659_unique_username_in_users_table', 22, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_22_045955_ttts', 23, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_26_063509_drop_company_id_from_depts', 24, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_12_26_064252_drop_company_id_from_depts', 25, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_17_054556_create_bank_accounts_table', 26, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_17_104403_create_designations_table', 27, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_17_110047_create_employee_histories_table', 28, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_17_110819_add_status_position_to_bankaccounts_table', 29, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_18_101033_add_dept_id_to_users', 30, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_18_101654_add_dept_id_to_users', 31, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_064429_add_join_date_to_users', 32, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_091227_add_father_mother_name_to_users_translation', 33, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_091438_add_father_mother_name_to_users_translation', 34, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_091611_add_father_mother_name_to_users_translation', 35, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_095659_add_joining_salary_user_translations', 36, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_095851_add_joining_salary_user_translations', 37, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_100322_add_birthday_users', 38, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_100447_add_birthday_users', 39, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_19_105234_remove_foreign_account_no_bank_accounts', 40, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2014_10_12_000000_create_users_table', 1, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2014_10_12_100000_create_password_resets_table', 1, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_10_092223_creat_photos_table', 1, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_12_072416_add_profession_to_users_table', 2, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_13_101110_create_types_table', 3, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_13_110004_create_types_table', 4, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_13_110906_add_type_id_to_users', 5, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_13_111634_type_id_foregign_key_to_users', 6, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_13_112849_add_user_id_to_photos_table_foreign_key', 7, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_14_102825_add_user_type_collumn_to_users', 8, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_14_112353_change_user_type_to_users_type', 9, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_15_045419_add_utype_to_users', 10, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_16_101646_create_articles_table', 11, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2015_09_17_204114_create_countries_table', 12, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_20_074201_add_polymorph_to_medias_table', 41, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_20_113443_create_photos_table', 42, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_21_104136_create_leaves_tables', 43, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_21_110133_create_models_leave_leave_applications_table', 44, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_23_071904_add_leave_details_and_max_days', 45, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_23_072314_add_leave_details_and_max_days', 46, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_23_090556_add_foregin_keys_leav_applications', 47, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_23_091300_create_statuses_table', 48, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_23_095851_create_leave_application_translations_table', 49, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_23_111945_add_applied_on_to_leave_applications', 50, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_045117_set_default_value_to_leave_applications', 51, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_055451_change_status_to_status_id_leave_applications', 52, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_055954_change_status_to_status_id_leave_applications', 53, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_060502_ljjllj', 54, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_091714_create_holydays_table', 55, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_093813_create_holy_day_types_table', 56, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_095732_add_status_positon_holy_day_types', 57, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_24_100226_add_status_position_holydays', 58, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_25_043900_rename_date_in_holydays', 59, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_25_044332_add_to_in_holydays', 60, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_25_071926_change_from_to_date_holydays', 61, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_27_044212_change_holiday_foreign_key', 62, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_27_103106_create_notice_boards_table', 63, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_31_055951_create_shifts_table', 64, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_31_062226_change_status_type_in_shifts', 65, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_31_071159_drop_name_from_shifts', 66, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_01_31_071711_create_shift_translations_table', 67, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_01_090809_add_shift_id_to_shift_translations', 68, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_01_102232_create_department_shifts_table', 69, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_02_041905_add_shift_id_to_users', 70, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_02_091556_create_punches_table', 71, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_03_075337_add_punch_flag_to_punches', 72, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_07_051953_create_shifts', 73, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_07_053855_change_status_to_status_id_int', 74, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_10_043613_change_and_add_collumn_name_punches', 75, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_10_044656_change_punch_out_datetime_position_punches', 76, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_10_051636_punch_out_date_time', 77, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_10_051826_punch_out_dat_time', 78, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_13_043857_add_overtime_to_punches', 79, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_13_102300_add_working_hours_to_punches', 80, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_14_094813_add_punch_date_time', 81, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_20_053644_create_salary_types_table', 82, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_20_100927_create_salary_rules_table', 83, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_23_045539_create_overtime_rules_table', 84, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_23_050838_add_status_overtimerules', 85, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_23_052252_create_salary_cuts_table', 86, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_23_052303_create_bonuses_table', 86, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_24_054731_create_user_salaries_table', 87, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_24_063123_add_basic_to_user_salaries', 88, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_27_084038_modify_bonus_rules', 89, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_02_27_092643_create_bonus_attributes_table', 90, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_03_28_055450_add_employee_id_to_users', 91, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_03_28_062815_add_employee_id_to_punches', 92, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_04_051213_add_shift_id_to_employee_histories', 93, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_04_052705_add_shift_id_to_employee_histories', 94, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_05_054348_add_month_year_day_to_employee_histories', 95, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_06_051639_add_timestamps_to_user_salaries', 96, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_09_094121_add_created_at_updated_at_to_bank_accounts', 97, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_23_070022_add_fields_to_users', 98, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_23_080849_create_student_classes_table', 99, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_23_081759_create_sections_table', 100, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_23_082251_change_studentclass_nullable', 101, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_23_082402_change_sections_nullable', 102, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_23_084759_create_student_histories_table', 103, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_25_062931_add_more_fields_users', 104, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_25_070712_rename_field_in_sections', 105, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_27_043314_create_result_systems_table', 106, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_30_094312_create_subjects_table', 107, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_02_045315_add_more_field_subjects', 108, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_02_055208_create_buildings_table', 109, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_02_055717_create_floors_table', 110, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_02_055942_create_rooms_table', 111, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_04_28_090914_create_meta_settings_table', 112, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_02_084103_create_student_attendances_table', 113, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_03_063943_create_routines_table', 114, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_03_082053_create_examinations_table', 115, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_03_083604_create_examination_schedules_table', 116, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_07_043822_create_countries_table', 117, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_07_045031_create_country_translations_table', 118, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_07_082853_create_divisions_table', 119, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_07_084154_create_division_translations_table', 120, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_07_105354_create_districts_table', 121, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_07_110114_create_district_translations_table', 122, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_08_064334_add_soft_delete_option_in_district_table', 123, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_08_085425_add_soft_delete_option_in_division_table', 124, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_08_090518_add_soft_delete_option_in_countries_table', 125, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_08_092224_add_soft_delete_option_in_users_table', 126, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_123350_add_soft_delete_option_in_buildings_table', 127, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_124045_add_soft_delete_option_in_floors_table', 128, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_124511_add_soft_delete_option_in_rooms_table', 129, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_125123_add_soft_delete_option_in_routines_table', 130, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_125613_add_soft_delete_option_in_examinations_table', 131, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_130048_add_soft_delete_option_in_examination_schedules_table', 132, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_144304_add_soft_delete_option_in_student_classes_table', 133, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_09_145012_add_soft_delete_option_in_sections_table', 134, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_10_094424_create_marks_types_table', 135, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_10_124729_add_deleted_at_to_marks_types', 135, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_10_170632_create_marks_table', 135, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_10_171237_add_subject_total_subjects', 135, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_10_171944_change_class_id_to_student_class_id', 135, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_11_114202_add_roll_marks', 136, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_15_155101_add_site_id', 137, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_16_132543_create_notice_translations_table', 137, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_18_123943_create_account_types_table', 138, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_18_125203_create_account_type_translations_table', 139, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_18_160928_create_amount_types_table', 140, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_18_162302_create_amount_type_translations_table', 141, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_18_172221_create_amount_categories_table', 142, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_18_174103_create_amount_category_translations_table', 143, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_22_120552_create_accounts_table', 144, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_22_122442_create_account_translations_table', 145, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_24_131706_create_menus_table', 146, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_25_155451_create_events_table', 147, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_25_160739_create_event_translations_table', 148, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_26_104130_add_soft_delete_menus', 149, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_26_105454_create_group_accesses_table', 149, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_26_125918_add_site_id_group_access', 149, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_29_114400_add_common_access', 150, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_05_31_123459_create_site_infos_table', 151, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_01_130900_create_sessions_table', 152, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_04_163632_book_categories_table', 152, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_04_164245_book_category_translations_table', 153, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_05_112535_create_authors_table', 154, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_05_113318_create_author_translations_table', 155, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_05_154944_create_racks_table', 156, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_06_105206_create_books_table', 157, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_06_111630_create_book_translations', 157, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_06_174526_create_trainings_table', 158, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_07_103524_create_training_translations', 159, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_07_141807_create_professional_qualifications_table', 160, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_07_142612_create_professional_qualification_translations_table', 161, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_07_122401_add_more_fields_to_site_groups', 162, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_08_110838_create_site_memberships_table', 162, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_08_120252_site_type_id_to_site_membership_id', 162, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_08_122016_add_status', 162, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_095700_create_business_types_table', 163, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_100044_create_business_type_translations_table', 164, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_112610_create_experience_categories_table', 165, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_113018_create_experience_category_translations_table', 166, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_122959_create_experiences_table', 167, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_123602_create_experience_translations_table', 168, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_144252_create_skill_categories_table', 169, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_145018_create_skill_category_translations', 170, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_153735_create_skills_table', 171, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_09_154043_create_skill_translations_table', 172, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_11_120959_create_cv_languages_table', 173, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_11_121406_create_cv_language_translations', 174, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_11_135502_create_cv_language_skills_table', 175, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_103056_create_relations_table', 176, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_103847_create_relation_translations_table', 177, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_112603_create_references_table', 178, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_113411_create_reference_translations_table', 179, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_142443_create_employment_histories_table', 180, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_144025_create_employment_history_translations_table', 181, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_160302_create_specializations_table', 182, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_12_160911_create_specialization_translations_table', 183, 1);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_18_111051_add_site_ie_1', 184, NULL);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_19_135642_create_education_levels_table', 185, NULL);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_19_140251_create_education_level_translations_table', 186, NULL);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_19_152734_create_academic_qualifications_table', 187, NULL);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_19_153939_create_academic_qualification_translations_table', 188, NULL);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_23_215647_create_site_amount_receives_table', 188, NULL);
INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES('2016_06_27_155918_rename_field_to_roles_table', 189, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `from_send` varchar(150) NOT NULL,
  `to_send` varchar(300) NOT NULL,
  `type` varchar(150) NOT NULL,
  `is_read` varchar(50) NOT NULL,
  `access_lists` longtext,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES(1, '2016-05-17', 'Active', 1, '120', 'Guardian', 'notice', '0', NULL, NULL);
INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES(2, '2016-05-18', 'Active', 1, '120', 'Teacher', 'notice', '0', NULL, NULL);
INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES(3, '2016-05-17', 'Active', 1, '120', '147', 'message', '0', NULL, NULL);
INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES(4, '2016-05-17', 'Active', 1, '120', '133', 'message', '0', NULL, '2016-05-17 09:52:57');
INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES(5, '2016-05-17', 'Active', 1, '137', '120', 'message', '0', NULL, NULL);
INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES(6, '2016-05-18', 'Active', 1, '132', '120', 'message', '0', NULL, '2016-05-18 04:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `notice_translations`
--

CREATE TABLE IF NOT EXISTS `notice_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) DEFAULT NULL,
  `notice_name` varchar(255) DEFAULT NULL,
  `notice_description` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notice_translations`
--

INSERT INTO `notice_translations` (`id`, `notice_id`, `notice_name`, `notice_description`, `locale`, `site_id`) VALUES(1, 1, 'fgbhnhg', 'fgfhn rfhgf', 'en', 1);
INSERT INTO `notice_translations` (`id`, `notice_id`, `notice_name`, `notice_description`, `locale`, `site_id`) VALUES(2, 2, 'test notice', 'dddf', 'en', 1);
INSERT INTO `notice_translations` (`id`, `notice_id`, `notice_name`, `notice_description`, `locale`, `site_id`) VALUES(3, 3, 'test message edit', 'body of test message edit', 'en', 1);
INSERT INTO `notice_translations` (`id`, `notice_id`, `notice_name`, `notice_description`, `locale`, `site_id`) VALUES(4, 4, 'message title', 'message body', 'en', 1);
INSERT INTO `notice_translations` (`id`, `notice_id`, `notice_name`, `notice_description`, `locale`, `site_id`) VALUES(5, 5, 'Message from 137', 'Message from Abdul Khalek', 'en', 1);
INSERT INTO `notice_translations` (`id`, `notice_id`, `notice_name`, `notice_description`, `locale`, `site_id`) VALUES(6, 6, 'test 18', 'body of message', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_rules`
--

CREATE TABLE IF NOT EXISTS `overtime_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `salary_types` longtext,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `overtime_rules`
--

INSERT INTO `overtime_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES(4, 'overtime 1', '{"total":"total"}', 25, 'percent', '1', NULL, 1);
INSERT INTO `overtime_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES(5, 'overtime 2', '[]', 5000, 'fixed', '1', NULL, 1);
INSERT INTO `overtime_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES(6, 'overtime 3', '{"basic":"basic","home_rent":"2","medical_allowance":"3"}', 25, 'percent', '1', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passwords`
--

CREATE TABLE IF NOT EXISTS `passwords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `passwords_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

--
-- Dumping data for table `passwords`
--

INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(111, '$2y$10$w.czDutnybbXFgpCXUB7ieEitXgAqN0qMOcp70Sb.Xr2KgC16kEPW', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(112, '$2y$10$7Uk6cSf7xyiQFm5fIujcMuix0C6avAkxccO6zbyu4xwFl9BiLNNoW', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(116, '$2y$10$3kz4tdhaT0w7r/ZnZZUu0eGlG55/9fOSaPd5TXI2wS3ct8ylPSjPm', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(117, '$2y$10$1LdXgo1HsFhdoTWgzfMfYettz0TWBTXSXjdNlQA/6Gov8d2iSBsXy', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(118, '$2y$10$fFHNMTPY5cudxs75pztkeOeTQ.IdkUREsOpoqxtoeksc1J2ZlNC/e', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(119, '$2y$10$X6A5.iPnogLEmt24gK5a2OWwHvNQeBeS1wOohxP3bDsSaYrtTKCBu', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(120, '$2y$10$sLhLyzNYzYEIKDS5cMxivuF.kyOzZ469/LKlyRqYjophY3oNHF8EC', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(121, '$2y$10$6H4FfW0jrHyY72MCVE9dg.31Pa5uCOatEQr9CSe2d.WtoY.bClMuK', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(122, '$2y$10$Y6kQwu8ZfxzuBc.T3yaQH.CrtjdStEMaR1JXmBk7SGOrcx4/LZlgS', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(123, '$2y$10$tmlqSun8RLI7MCYbUdwmXuAYXwXX3jA14RbltNL3PZ1Tk9l49DA/y', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(124, '$2y$10$HVib762lX6.icwyhXULkDu0arqw5GkBIBcims1qN8/ueamfZm7rpG', 0, 124, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(125, '$2y$10$nKct.VUYIrTcP0LJfU6SqOU52j0LeKEQo7/3PtVnJBRf4jbfKd0wO', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(126, '$2y$10$fPfZw1BoNpT54ifguxZkmOp63mEgsREc.Gfixn5WbagF.enK.3WTW', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(127, '$2y$10$YhucaRcbO8HRE6yrFHBoLOxK1mHKKWF4tMnFImyXjhvTUNZD.UzGa', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(128, '$2y$10$rL40Wt/8mmb6LyB3CI.EyOSRwyZWvHh5/aVWZbcZ8UNuXdnC2MDVK', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(129, '$2y$10$q.hllN77hArRPBJtmml40uH./kV6XpCSvNf.e36.6.1gReifITnie', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(131, '$2y$10$jUUqq8.yrSMEiYPqJC7Afe3cFOqwovnE66TBcRfm89M2uN.T7UcSy', 0, 124, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(132, '$2y$10$dgC4daA/TMXg60zMtKaruuPil2gG.MbCUlMjw39R1vX0kETD6khZC', 0, 124, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(137, '$2y$10$19QW6/oFuV4UjgjQVY4QV.yU93GTdZJ4/kRmJim41H9tUYoSy8ngO', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(138, '$2y$10$q9h5epByrsjgA8IGvx4kYebL6YjYSDrtXC9LY1Cbc6iA5bAHckz66', 0, 128, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(140, '$2y$10$eTCQkfTNI2Z/EhGdMVMK9OiS3iVPsBOUOKIuGQUnUmn8AjW3P4Lca', 0, 124, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(141, '$2y$10$Dkne.dSvBokCdbNX8tgl4O44arraASlgXDHN469ub3tNWu80Cxu2y', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(142, '$2y$10$UvLWkdo.9fEWnkvQgAUnleyjjF2GZh40MMa3xbSc4HFrzu5afYR.C', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(143, '$2y$10$iMLHPG6vyw/hlPWps.979u.y6BFKvUQWig/5nLg5wrO0karDmEb.G', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(144, '$2y$10$vZG3Zo.xp0Efhlp/cIAwyOH.J3G9X4zkIvXI6ebLzHCOg.YJWeChi', 0, 128, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(148, '$2y$10$IIml7.4WMnLGjNXJCAGueucHDOIBha8ivwjm6vbbGA..ezEmDiQAK', 0, 132, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(149, '$2y$10$DPcKANayp9yscMDa3u0XwOctHB5ncNYE9YwGZKS08Jvm2aNt0Ce2y', 0, 133, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(150, '$2y$10$bgXVIaxN9cVYnUFYDr6rfOKhqVCdOlMZ.DxsAMB3y8sYqYn/MBVCu', 0, 134, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(151, '$2y$10$BKWGE7/QlEUARaCYiEYSWOfZmu5AUX/G2PsYTfA6SqSCO35BS8V7q', 0, 135, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(152, '$2y$10$L5MzlYoD0hFKJohErDK..OVgIwWANawopsTp8mHlhwjtc8bquBsRi', 0, 136, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(153, '$2y$10$Jt2fwAWiDAowV4K6Hlb61eVGgT0ktfJAL8VJquKLlzIyWAxWzd8e2', 0, 137, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(154, '$2y$10$Adfs4uzZO9s.OenfBCLdq.p.2pSiSzjeu4S7l0Gv2J9g/wf/oqQ.C', 0, 138, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(155, '$2y$10$VBrXO76qz7YhmoUcHknNrOo3GzalBbmKXAe8kJoM85wuicnGs3Rvu', 0, 139, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(156, '$2y$10$LhieZOpRbA5o8X5ZEGYQ4efW6EH.9ImRNE76UGpswwQ2asT3OMXOq', 0, 140, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(157, '$2y$10$6/TDeOcZxlUlZlDmik26HOSrD939K0TvWRQuqrsoPD6ciobZ4sVr6', 0, 141, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(158, '$2y$10$chhjMNNslrheV..thRj2guCNvQnriqiPcSpv0GxfpJX3wQIRN1Gnm', 0, 141, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(159, '$2y$10$2rxHqUo3GkrltlzlNQJnOOiGLnIJv0bm9MLs8rLKdOdc83BbFboEG', 0, 141, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(160, '$2y$10$7YIqqDOrbpAHEXoGrwBMl.6GvJNM672HqtNQ0Vn/FXedmmJz2.opq', 0, 141, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(161, '$2y$10$AYR.URWTJYlbo.eyTmm.rOQmCyLBQYq0PYAI91ueYtcOZdoF9dXyK', 0, 124, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(162, '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 0, 124, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(163, '$2y$10$OTxuYgQaNP6NvaQz4pGwaOBJKCfndUlDWULClEpMriRArR9Qf.FyK', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(164, '$2y$10$7/KFhha0VxaMU8ltTpw8PuRMlmQl2bt6WQ3qXB1yVj54kDfwBEwqK', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(165, '$2y$10$c2.SS.hOohSAxMlyRqEpBut.Xj80DFVhznn44M5sDXrtEk/uFxuCa', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(166, '$2y$10$ATtiNRH9DV3O.l5hA63moO8yMFwRps2ee.m13Or3xxh.zHpHddaGG', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(167, '$2y$10$9LFXUZndK/HZE6AL4TCdReaSvlSKprGrKb3wXkmj9YY9mBQIA9mvW', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(168, '$2y$10$ja0UWYB7NnHWQs.2m2AAkeWAI57bKfqCy2XMyKq4vyF/eAh7yBosW', 0, 120, 0, 1);
INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES(169, '$2y$10$jb0u7h/WWnfzrmPUl/zf3.x/melScq4ro5nORUY/wHEN7WkgaccqW', 0, 120, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`, `site_id`) VALUES(1, 'Create Things', 'whoever assigned this permission can create anything in the system', '0', 0, 1);
INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`, `site_id`) VALUES(2, 'Edit', 'whoever assigned this permission can edit anything in the system', '0', 0, 1);
INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`, `site_id`) VALUES(3, 'Hello', 'Hello World', '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`, `site_id`) VALUES(2, 1, 1);
INSERT INTO `permission_role` (`role_id`, `permission_id`, `site_id`) VALUES(2, 3, 1);
INSERT INTO `permission_role` (`role_id`, `permission_id`, `site_id`) VALUES(3, 1, 1);
INSERT INTO `permission_role` (`role_id`, `permission_id`, `site_id`) VALUES(3, 2, 1);
INSERT INTO `permission_role` (`role_id`, `permission_id`, `site_id`) VALUES(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `extension` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photos_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(1, 120, 120, 'Erp\\Models\\User\\User', '1453291583SFf2016-01-09-195845', NULL, 'jpg', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(2, 120, 120, 'Erp\\Models\\User\\User', '1453352490Hk12016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(3, 122, 122, 'Erp\\Models\\User\\User', '1453354270gnI2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(4, 123, 123, 'Erp\\Models\\User\\User', '1453357797aWn2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(5, 120, 120, 'Erp\\Models\\User\\User', '1453358953q8M2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(6, 124, 124, 'Erp\\Models\\User\\User', '1453359264oDW2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(7, 125, 125, 'Erp\\Models\\User\\User', '1453360599lqb2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(8, 124, 124, 'Erp\\Models\\User\\User', '1453360985VaD2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(9, 126, 126, 'Erp\\Models\\User\\User', '1453370411lXy2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(10, 126, 126, 'Erp\\Models\\User\\User', '1453370772wJa2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(11, 127, 127, 'Erp\\Models\\User\\User', '1453714476BE52016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(12, 120, 120, 'Erp\\Models\\User\\User', '1453888494hDG2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(13, 128, 128, 'Erp\\Models\\User\\User', '1453894001vx62016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(14, 129, 129, 'Erp\\Models\\User\\User', '14543895801Fp2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(15, 124, 124, 'Erp\\Models\\User\\User', '1454395442KPt2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(16, 120, 120, 'Erp\\Models\\User\\User', '145440801153H2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(17, 120, 120, 'Erp\\Models\\User\\User', '1454836303ttZ2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(18, 120, 120, 'Erp\\Models\\User\\User', '1455012726XVp2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(19, 128, 128, 'Erp\\Models\\User\\User', '1455348360YWW2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(20, 130, 130, 'Erp\\Models\\User\\User', '14553609881ji2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(21, 131, 131, 'Erp\\Models\\User\\User', '1456306315aLT2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(22, 131, 131, 'Erp\\Models\\User\\User', '1456309612Vdk2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(23, 132, 132, 'Erp\\Models\\User\\User', '14575012467Xv2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(24, 135, 135, 'Erp\\Models\\User\\User', '14596693990Im2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(25, 141, 141, 'Erp\\Models\\User\\User', '1459671065Wvp2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(26, 141, 141, 'Erp\\Models\\User\\User', '1459743056mDf2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(27, 141, 141, 'Erp\\Models\\User\\User', '1459743481RQT2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(28, 141, 141, 'Erp\\Models\\User\\User', '1459743743Nq42016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(29, 124, 124, 'Erp\\Models\\User\\User', '1459748909vMy2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(30, 124, 124, 'Erp\\Models\\User\\User', '1459749302aQF2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(31, 125, 125, 'Erp\\Models\\User\\User', '1460186989fed2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(32, 126, 126, 'Erp\\Models\\User\\User', '1460187894LGZ2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(33, 127, 127, 'Erp\\Models\\User\\User', '1460199087a6V2016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(34, 128, 128, 'Erp\\Models\\User\\User', '1460264476LG22016-01-09-195845.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(35, 131, 131, 'Erp\\Models\\User\\User', '1461498533Giacorn.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(36, 132, 132, 'Erp\\Models\\User\\User', '1461558440JNcJellyfish.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(37, 133, 133, 'Erp\\Models\\User\\User', '1461565946DUxcorn.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(38, 134, 134, 'Erp\\Models\\User\\User', '1461575788S6nTulips.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(39, 135, 135, 'Erp\\Models\\User\\User', '1461577019fUqHydrangeas.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(40, 136, 136, 'Erp\\Models\\User\\User', '1461647333WMxDesert - Copy.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(41, 137, 137, 'Erp\\Models\\User\\User', '1461648608bAtcorn.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(42, 138, 138, 'Erp\\Models\\User\\User', '1461651368wsLKoala.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(43, 139, 139, 'Erp\\Models\\User\\User', '1461729679VYaChrysanthemum.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(44, 140, 140, 'Erp\\Models\\User\\User', '14617355069xzKoala.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(45, 141, 141, 'Erp\\Models\\User\\User', '1462705236Z6D54137718697553feed 3.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(46, 142, 142, 'Erp\\Models\\User\\User', '1462773161xfcDesert - Copy.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(47, 143, 143, 'Erp\\Models\\User\\User', '1462773432oVNChrysanthemum.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(48, 144, 144, 'Erp\\Models\\User\\User', '146277478833i54137718697553feed 3.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(49, 145, 145, 'Erp\\Models\\User\\User', '1462788523hREcorn.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(50, 146, 146, 'Erp\\Models\\User\\User', '1462790709hXacontact_man.png', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(51, 147, 147, 'Erp\\Models\\User\\User', '1462967862QkPcontact_man.png', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(52, 8, 8, 'Erp\\Models\\Event\\Event', '1464245449oHycorn.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(53, 9, 9, 'Erp\\Models\\Event\\Event', '1464245662kTNChrysanthemum.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(54, 9, 9, 'Erp\\Models\\Event\\Event', '1464246898Y37Jellyfish.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(55, 10, 10, 'Erp\\Models\\Event\\Event', '1464250835TQ754137718697553feed 3.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(56, 1, 1, 'Erp\\Models\\Event\\Event', '1464254229KsWTulips.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(57, 148, 148, 'Erp\\Models\\User\\User', '1464605043Fpmcontact_man.png', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(58, 2, 2, 'Erp\\Models\\Author\\Author', '1465117777Xt7shakespeare.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(59, 1, 1, 'Erp\\Models\\Author\\Author', '14651182348KQkazi_nazrul_islam.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(60, 1, 1, 'Erp\\Models\\Author\\Author', '1465118901Ouonews_image_2013-08-27_27571.jpg', NULL, '', 1);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(61, 137, 137, 'Erp\\Models\\User\\User', '1467086539DBhChrysanthemum.jpg', NULL, '', NULL);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(62, 149, 149, 'Erp\\Models\\User\\User', '1467090398F5QTulips.jpg', NULL, '', NULL);
INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES(63, 150, 150, 'Erp\\Models\\User\\User', '1467101680nF8Hydrangeas.jpg', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professional_qualifications`
--

CREATE TABLE IF NOT EXISTS `professional_qualifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `professional_qualifications`
--

INSERT INTO `professional_qualifications` (`id`, `user_id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 120, '2015-02-01', '2016-05-31', 'Active', 1, '2016-06-07 09:16:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `professional_qualifications` (`id`, `user_id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 120, '2016-05-01', '2016-06-09', 'Inactive', 1, '2016-06-07 09:39:44', '2016-06-09 03:41:45', NULL);
INSERT INTO `professional_qualifications` (`id`, `user_id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 120, '2016-06-01', '2016-06-09', 'Active', 1, '2016-06-09 03:45:38', '0000-00-00 00:00:00', '2016-06-09 03:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `professional_qualification_translations`
--

CREATE TABLE IF NOT EXISTS `professional_qualification_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `professional_qualification_id` int(11) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `institute_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `professional_qualification_translations`
--

INSERT INTO `professional_qualification_translations` (`id`, `professional_qualification_id`, `certification`, `institute_name`, `location`, `locale`, `site_id`) VALUES(1, 1, 'test Certification', 'test Institute', 'dddfff', 'en', 1);
INSERT INTO `professional_qualification_translations` (`id`, `professional_qualification_id`, `certification`, `institute_name`, `location`, `locale`, `site_id`) VALUES(2, 2, 'retrthyyj edit', 'etrttuyu edit', 'etryty edit', 'en', 1);
INSERT INTO `professional_qualification_translations` (`id`, `professional_qualification_id`, `certification`, `institute_name`, `location`, `locale`, `site_id`) VALUES(3, 3, 'test', 'test', 'test', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `punches`
--

CREATE TABLE IF NOT EXISTS `punches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
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
  `punch_flag` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `punches`
--

INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(122, 120, '0667', '04:56:02', NULL, '2016-02-18', NULL, '2016-02-18 04:56:02', '2016-02-18 04:56:15', 0.00, 0, 2016, 2, 19, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(125, 120, '0667', '11:35:25', NULL, '2016-02-19', NULL, '2016-02-19 11:35:25', '2016-02-19 11:35:30', 0.00, 0, 2016, 2, 20, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(126, 120, '0667', '04:33:10', NULL, '2016-03-20', NULL, '0000-00-00 00:00:00', '2016-03-20 06:57:05', 0.00, 1, 2016, 3, 20, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(127, 120, '0667', '06:48:54', NULL, '2016-03-20', NULL, '2016-03-20 06:58:59', '2016-03-20 06:59:05', 0.00, 0, 2016, 3, 20, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(128, 120, '0667', '06:56:58', NULL, '2016-03-20', NULL, '2016-03-20 06:59:30', '2016-03-20 06:59:55', 0.00, 0, 2016, 3, 20, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(129, 128, '0627', '07:00:46', NULL, '2016-03-20', NULL, '2016-03-20 07:00:46', '2016-03-20 07:00:55', 0.00, 0, 2016, 3, 20, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(130, 128, '0627', '09:39:21', NULL, '2016-03-20', NULL, '2016-03-20 09:39:21', '2016-03-20 09:39:24', 0.00, 0, 2016, 3, 20, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(131, 128, '0627', '09:39:28', NULL, '2016-03-20', NULL, '2016-03-20 09:39:28', '2016-03-20 12:00:00', 0.00, 0, 2016, 3, 20, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(132, 120, '0667', '06:45:42', NULL, '2016-03-21', NULL, '2016-03-21 05:45:42', '2016-03-21 06:45:47', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(133, 120, '0667', '06:46:40', NULL, '2016-03-21', NULL, '2016-03-21 06:46:40', '2016-03-21 06:46:49', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(135, 132, '1217', '07:07:43', NULL, '2016-03-21', NULL, '2016-03-21 07:07:43', '2016-03-21 07:07:48', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(136, 124, '0635', '07:08:43', NULL, '2016-03-21', NULL, '2016-03-21 07:08:43', '2016-03-21 07:08:46', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(137, 120, '0667', '08:36:06', NULL, '2016-03-21', NULL, '2016-03-21 08:36:06', '2016-03-21 08:36:36', 0.01, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(138, 120, '0667', '08:37:14', NULL, '2016-03-21', NULL, '2016-03-21 08:37:14', '2016-03-21 08:37:17', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(139, 120, '0667', '08:42:19', NULL, '2016-03-21', NULL, '2016-03-21 08:42:19', '2016-03-21 08:42:23', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(140, 120, '0667', '08:44:26', NULL, '2016-03-21', NULL, '2016-03-21 08:44:26', '2016-03-21 08:44:33', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(141, 128, '0627', '08:45:51', NULL, '2016-03-21', NULL, '2016-03-21 08:45:51', '2016-03-21 08:45:54', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(142, 128, '0627', '08:52:12', NULL, '2016-03-21', NULL, '2016-03-21 08:52:12', '2016-03-21 08:52:15', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(143, 128, '0627', '08:52:46', NULL, '2016-03-21', NULL, '2016-03-21 08:52:46', '2016-03-21 08:52:49', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(144, 124, '0635', '08:54:13', NULL, '2016-03-21', NULL, '2016-03-21 08:54:13', '2016-03-21 08:54:16', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(145, 132, '1217', '08:56:11', NULL, '2016-03-21', NULL, '2016-03-21 08:56:11', '2016-03-21 08:56:14', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(146, 132, '1217', '09:19:31', NULL, '2016-03-21', NULL, '2016-03-21 09:19:31', '2016-03-21 09:19:35', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(147, 120, '0667', '11:26:39', NULL, '2016-03-21', NULL, '2016-03-21 11:26:39', '2016-03-21 11:26:44', 0.00, 0, 2016, 3, 21, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(148, 120, '0667', '10:42:12', NULL, '2016-03-22', NULL, '2016-03-22 10:42:12', '2016-03-22 10:42:16', 0.00, 1, 2016, 3, 22, 0, 1);
INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES(149, 128, '0627', '10:44:59', NULL, '2016-03-22', NULL, '2016-03-22 10:44:59', '2016-03-22 10:45:03', 0.00, 1, 2016, 3, 22, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE IF NOT EXISTS `racks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `rack_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `racks`
--

INSERT INTO `racks` (`id`, `building_id`, `floor_id`, `room_id`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 1, 3, 1, 's-001', 'Active', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `racks` (`id`, `building_id`, `floor_id`, `room_id`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 3, 1, 2, 'c-001', 'Active', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `racks` (`id`, `building_id`, `floor_id`, `room_id`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 3, 1, 2, 'c-002', 'Active', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `racks` (`id`, `building_id`, `floor_id`, `room_id`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 1, 4, 3, 'd-09', 'Active', 1, '2016-06-05 11:02:42', '2016-06-05 11:41:50', '2016-06-05 11:44:00');
INSERT INTO `racks` (`id`, `building_id`, `floor_id`, `room_id`, `rack_no`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 1, 4, 3, '8888', 'Active', 1, '2016-06-15 08:37:53', '2016-06-15 08:39:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE IF NOT EXISTS `references` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `office_phone` varchar(255) DEFAULT NULL,
  `home_phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `relation_id`, `user_id`, `office_phone`, `home_phone`, `mobile`, `email`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 3, 120, '11111111111111', '111111111111', '111111111111', 'zunayed10qu@gmail.com', 'Active', 1, '2016-06-12 06:24:03', '2016-06-12 07:16:42', NULL);
INSERT INTO `references` (`id`, `relation_id`, `user_id`, `office_phone`, `home_phone`, `mobile`, `email`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 2, 120, '20255665', '685847', '0124578', 'drlucky09987@yahoo.com', 'Active', 1, '2016-06-12 06:26:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `references` (`id`, `relation_id`, `user_id`, `office_phone`, `home_phone`, `mobile`, `email`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 5, 120, '9544', '445954', '4559', 'kk@gmail.com', 'Active', 1, '2016-06-12 06:28:20', '0000-00-00 00:00:00', '2016-06-12 07:18:20');
INSERT INTO `references` (`id`, `relation_id`, `user_id`, `office_phone`, `home_phone`, `mobile`, `email`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 1, 120, '', '', '', 'aminul_epillion@yahoo.com', 'Active', 1, '2016-06-12 06:50:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reference_translations`
--

CREATE TABLE IF NOT EXISTS `reference_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int(11) DEFAULT NULL,
  `reference_name` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `reference_translations`
--

INSERT INTO `reference_translations` (`id`, `reference_id`, `reference_name`, `organization`, `designation`, `address`, `locale`, `site_id`) VALUES(1, 1, 'Zunayed Al Habib', 'Ranges Electronics', 'Software Engineer', 'Dhaka --', 'en', 1);
INSERT INTO `reference_translations` (`id`, `reference_id`, `reference_name`, `organization`, `designation`, `address`, `locale`, `site_id`) VALUES(2, 2, 'Ayman', 'xyz', 'abc', 'dfgef', 'en', 1);
INSERT INTO `reference_translations` (`id`, `reference_id`, `reference_name`, `organization`, `designation`, `address`, `locale`, `site_id`) VALUES(3, 3, 'Mahmud', 'kjugj', 'mkjuhgu ', 'nnnhi j', 'en', 1);
INSERT INTO `reference_translations` (`id`, `reference_id`, `reference_name`, `organization`, `designation`, `address`, `locale`, `site_id`) VALUES(4, 4, 'Aminul Islam', 'Epillion', 'Director', 'Dhaka', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE IF NOT EXISTS `relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-06-12 05:01:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `relations` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-06-12 05:02:03', '2016-06-12 05:16:01', NULL);
INSERT INTO `relations` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-06-12 05:02:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `relations` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-06-12 05:02:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `relations` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 'Active', 1, '2016-06-12 05:02:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `relations` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 'Inactive', 1, '2016-06-12 05:17:43', '0000-00-00 00:00:00', '2016-06-12 05:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `relation_translations`
--

CREATE TABLE IF NOT EXISTS `relation_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relation_id` int(11) DEFAULT NULL,
  `relation_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `relation_translations`
--

INSERT INTO `relation_translations` (`id`, `relation_id`, `relation_name`, `locale`, `site_id`) VALUES(1, 1, 'Relative', 'en', 1);
INSERT INTO `relation_translations` (`id`, `relation_id`, `relation_name`, `locale`, `site_id`) VALUES(2, 2, 'Family Friend', 'en', 1);
INSERT INTO `relation_translations` (`id`, `relation_id`, `relation_name`, `locale`, `site_id`) VALUES(3, 3, 'Academic', 'en', 1);
INSERT INTO `relation_translations` (`id`, `relation_id`, `relation_name`, `locale`, `site_id`) VALUES(4, 4, 'Professional', 'en', 1);
INSERT INTO `relation_translations` (`id`, `relation_id`, `relation_name`, `locale`, `site_id`) VALUES(5, 5, 'Others', 'en', 1);
INSERT INTO `relation_translations` (`id`, `relation_id`, `relation_name`, `locale`, `site_id`) VALUES(6, 6, 'test', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE IF NOT EXISTS `religions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`, `site_id`) VALUES(1, 'Est', 'Active', 1);
INSERT INTO `religions` (`id`, `name`, `status`, `site_id`) VALUES(2, 'Islam', 'Active', 1);
INSERT INTO `religions` (`id`, `name`, `status`, `site_id`) VALUES(3, 'Budhism', 'Active', 1);
INSERT INTO `religions` (`id`, `name`, `status`, `site_id`) VALUES(4, 'Hvjvkk', '1', 1);
INSERT INTO `religions` (`id`, `name`, `status`, `site_id`) VALUES(5, 'Shik', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_settings`
--

CREATE TABLE IF NOT EXISTS `result_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `settings` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `result_settings`
--

INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(1, '{"grade_class":"A+","gpa":"5.0","sub_min":"80","sub_max":"100","total_min":"40","total_max":"40"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(2, '{"grade_class":"A","gpa":"4.5","sub_min":"70","sub_max":"79","total_min":"36","total_max":"36"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(3, '{"grade_class":"A-","gpa":"4.0","sub_min":"60","sub_max":"69","total_min":"32","total_max":"32"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(4, '{"grade_class":"B","gpa":"3.5","sub_min":"50","sub_max":"59","total_min":"28","total_max":"28"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(5, '{"grade_class":"C","gpa":"3.0","sub_min":"40","sub_max":"49","total_min":"24","total_max":"24"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(6, '{"grade_class":"D","gpa":"2.5","sub_min":"33","sub_max":"39","total_min":"20","total_max":"20"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(7, '{"grade_class":"F","gpa":"0.0","sub_min":"0","sub_max":"32","total_min":"0","total_max":"0"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(8, '{"grade_class":"1st Division","gpa":"5","sub_min":"60","sub_max":"100","total_min":"600","total_max":"1000"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(10, '{"grade_class":"2nd Division","gpa":"4","sub_min":"45","sub_max":"59","total_min":"450","total_max":"599"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(12, '{"grade_class":"jokok","gpa":"8","sub_min":"15","sub_max":"22","total_min":"555","total_max":"222"}', 1);
INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES(13, '{"grade_class":"","gpa":"","sub_min":"","sub_max":"","total_min":"","total_max":""}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_systems`
--

CREATE TABLE IF NOT EXISTS `result_systems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `setting_ids` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `result_systems`
--

INSERT INTO `result_systems` (`id`, `name`, `setting_ids`, `status_id`, `site_id`) VALUES(1, 'Grading', '"1,2,3,4,5,6,7"', NULL, 1);
INSERT INTO `result_systems` (`id`, `name`, `setting_ids`, `status_id`, `site_id`) VALUES(2, 'Division', '"8,10"', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(2, 'Employee', 'An employee can access his personal page only.', NULL, 0, 1);
INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(3, 'Manager', 'A Manager can view management related details of an employee ', NULL, 0, 1);
INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(4, 'superadmin', 'Can create Admins including anything else', NULL, 0, 1);
INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(5, 'Producer', 'A producer can -----------', NULL, 0, 1);
INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(6, 'Teacher', 'Teacher role', NULL, 0, 1);
INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(7, 'Student', 'Student', NULL, 0, 1);
INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(8, 'Guardian', 'Guardian', NULL, 0, 1);
INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES(9, 'Admin', 'Administrative role ', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(120, 4, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(126, 2, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(127, 2, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(128, 2, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(132, 6, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(133, 6, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(134, 8, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(135, 8, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(136, 8, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(137, 7, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(138, 7, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(139, 2, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(140, 5, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(141, 7, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(142, 6, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(143, 8, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(144, 8, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(145, 3, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(146, 7, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(147, 7, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(148, 7, 1);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(149, 6, NULL);
INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES(150, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `building_id`, `floor_id`, `room_name`, `status`, `deleted_at`, `site_id`) VALUES(1, 1, 3, '201', 'Active', NULL, 1);
INSERT INTO `rooms` (`id`, `building_id`, `floor_id`, `room_name`, `status`, `deleted_at`, `site_id`) VALUES(2, 3, 1, '301', 'Active', NULL, 1);
INSERT INTO `rooms` (`id`, `building_id`, `floor_id`, `room_name`, `status`, `deleted_at`, `site_id`) VALUES(3, 1, 4, '401', 'Active', NULL, 1);
INSERT INTO `rooms` (`id`, `building_id`, `floor_id`, `room_name`, `status`, `deleted_at`, `site_id`) VALUES(4, 3, 1, '310', 'Active', '2016-05-09 06:48:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE IF NOT EXISTS `routines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `class_start_time` time DEFAULT NULL,
  `class_end_time` time DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `weekday` varchar(255) DEFAULT NULL,
  `coordinator_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(1, 1, 2, 1, 132, 3, 1, 2, '09:00:00', '10:00:00', 'Active', 'SATURDAY', 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(2, 1, 2, 3, 133, 1, 3, 1, '11:00:00', '12:00:00', 'Active', 'SATURDAY', 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(3, 1, 2, 5, 132, 1, 4, 3, '09:00:00', '10:00:00', 'Active', 'MONDAY', 136, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(4, 1, 2, 6, 133, 1, 3, 1, '09:00:00', '10:00:00', 'Active', 'MONDAY', 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(5, 1, 2, 6, 132, 3, 1, 2, '02:00:00', '03:00:00', 'Active', 'MONDAY', 137, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(6, 1, 4, 1, 132, 1, 3, 1, '10:00:00', '11:00:00', 'Active', 'SATURDAY', 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(7, 1, 4, 3, 133, 3, 1, 2, '11:00:00', '12:00:00', 'Active', 'SATURDAY', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(8, 1, 4, 5, 132, 1, 3, 1, '12:00:00', '13:00:00', 'Active', 'SATURDAY', 134, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(9, 1, 4, 6, 132, 1, 4, 3, '10:00:00', '11:00:00', 'Active', 'SUNDAY', 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES(10, 1, 4, 7, 133, 3, 1, 2, '11:00:00', '12:00:00', 'Active', 'SUNDAY', 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_cut_rules`
--

CREATE TABLE IF NOT EXISTS `salary_cut_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `salary_types` longtext,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `salary_cut_rules`
--

INSERT INTO `salary_cut_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES(2, 'Cut 1', '{"total":"Total"}', 25, 'percent', NULL, NULL, 1);
INSERT INTO `salary_cut_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES(3, 'Cut 2', '{"basic":"Basic"}', 30, 'percent', NULL, NULL, 1);
INSERT INTO `salary_cut_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES(4, 'cut 3', '{"total":"Total"}', 2000, 'plus', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_rules`
--

CREATE TABLE IF NOT EXISTS `salary_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rules_content` longtext,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `salary_rules`
--

INSERT INTO `salary_rules` (`id`, `name`, `rules_content`, `status`, `position`, `site_id`) VALUES(6, 'allowance 1', '{"home_rent_amount":"50","home_rent_amount_type":"percent","medical_allowance_amount":"25","medical_allowance_amount_type":"percent","travel_allowance_amount":"30","travel_allowance_amount_type":"percent","extra_amount":"35","extra_amount_type":"percent"}', '1', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_types`
--

CREATE TABLE IF NOT EXISTS `salary_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `salary_types`
--

INSERT INTO `salary_types` (`id`, `name`, `status`, `position`, `site_id`) VALUES(2, 'Home Rent', '1', NULL, 1);
INSERT INTO `salary_types` (`id`, `name`, `status`, `position`, `site_id`) VALUES(3, 'Medical Allowance', '1', NULL, 1);
INSERT INTO `salary_types` (`id`, `name`, `status`, `position`, `site_id`) VALUES(7, 'Travel Allowance', '1', NULL, 1);
INSERT INTO `salary_types` (`id`, `name`, `status`, `position`, `site_id`) VALUES(8, 'Extra', '1', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_class_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `merit_level` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `student_class_id`, `user_id`, `section_name`, `merit_level`, `status`, `deleted_at`, `site_id`) VALUES(2, 1, 132, 'A', 'High', 'Active', NULL, 1);
INSERT INTO `sections` (`id`, `student_class_id`, `user_id`, `section_name`, `merit_level`, `status`, `deleted_at`, `site_id`) VALUES(4, 1, 133, 'B', 'Medium', 'Active', NULL, 1);
INSERT INTO `sections` (`id`, `student_class_id`, `user_id`, `section_name`, `merit_level`, `status`, `deleted_at`, `site_id`) VALUES(5, 1, 133, 'C', 'Low', 'Active', '2016-05-09 08:53:01', 1);
INSERT INTO `sections` (`id`, `student_class_id`, `user_id`, `section_name`, `merit_level`, `status`, `deleted_at`, `site_id`) VALUES(6, 2, 133, 'Rose', 'High', 'Active', NULL, 1);
INSERT INTO `sections` (`id`, `student_class_id`, `user_id`, `section_name`, `merit_level`, `status`, `deleted_at`, `site_id`) VALUES(7, 2, 132, 'Chameli', 'Medium', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE IF NOT EXISTS `shifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contents` longtext,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `contents`, `position`, `status_id`, `site_id`) VALUES(1, '{"sat_in":"12:00:00","sat_out":"13:30:00","sat_max":"12:00:00","sat_min":"13:30:00","sat_extend_day":"on","sat_day_off":"","sun_in":"12:00:00","sun_out":"13:30:00","sun_max":"12:00:00","sun_min":"13:30:00","sun_extend_day":"on","sun_day_off":"","mon_in":"12:00:00","mon_out":"13:30:00","mon_max":"05:00:00","mon_min":"13:30:00","mon_extend_day":"on","mon_day_off":"","tue_in":"12:00:00","tue_out":"13:30:00","tue_max":"06:00","tue_min":"07:50","tue_extend_day":"on","tue_day_off":"","wed_in":"12:00:00","wed_out":"13:30:00","wed_max":"12:00:00","wed_min":"13:30:00","wed_extend_day":"on","wed_day_off":"","thu_in":"12:00:00","thu_out":"13:30:00","thu_max":"12:00:00","thu_min":"13:30:00","thu_extend_day":"on","thu_day_off":"","fri_in":"12:00:00","fri_out":"13:15:00","fri_max":"12:00:00","fri_min":"13:30:00","fri_extend_day":"on","tue_day_off":"on"}', NULL, 1, 1);
INSERT INTO `shifts` (`id`, `contents`, `position`, `status_id`, `site_id`) VALUES(3, '{"sat_in":"17:00","sat_out":"01:00","sat_max":"16:00","sat_min":"02:00","sat_extend_day":"on","sun_in":"17:00","sun_out":"01:00","sun_max":"16:00","sun_min":"02:00","sun_extend_day":"on","mon_in":"10:00","mon_out":"17:00","mon_max":"09:00","mon_min":"18:00","tue_in":"01:10","tue_out":"04:00","tue_max":"01:00","tue_min":"07:30","wed_in":"00:00","wed_out":"01:30","wed_max":"09:00","wed_min":"16:00","thu_in":"17:00","thu_out":"23:00","thu_max":"16:00","thu_min":"23:10","fri_in":"00:00","fri_out":"00:00","fri_max":"00:00","fri_min":"00:00"}', NULL, 1, 1);
INSERT INTO `shifts` (`id`, `contents`, `position`, `status_id`, `site_id`) VALUES(4, '{"sat_in":"04:00","sat_out":"12:00","sat_max":"12:00","sat_min":"04:00","sun_in":"05:00","sun_out":"12:00","sun_max":"12:00","sun_min":"05:00","sun_day_off":"on","mon_in":"05:00","mon_out":"12:00","mon_max":"12:00","mon_min":"05:00","tue_in":"15:00","tue_out":"02:00","tue_max":"02:00","tue_min":"15:00","tue_day_off":"on","tue_extend_day":"on","wed_in":"05:00","wed_out":"12:00","wed_day_off":"on","wed_max":"12:50","wed_min":"04:00","thu_in":"05:00","thu_out":"12:00","thu_max":"13:00","thu_min":"06:30","thu_day_off":"on","fri_in":"05:00","fri_out":"12:00","fri_max":"12:00","fri_min":"04:00"}', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifts-copy`
--

CREATE TABLE IF NOT EXISTS `shifts-copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `shifts-copy`
--

INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`, `site_id`) VALUES(11, '12:00:00', '12:05:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', NULL, 2, 1);
INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`, `site_id`) VALUES(12, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1);
INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`, `site_id`) VALUES(13, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1);
INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`, `site_id`) VALUES(14, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1);
INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`, `site_id`) VALUES(21, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shift_translations`
--

CREATE TABLE IF NOT EXISTS `shift_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `shift_id` int(10) unsigned DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `shift_translations`
--

INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(1, 'dfdfd', 'en', 9, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(2, 'gfdgdf en', 'en', 10, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(3, 'fgdfgdfg bn', 'bn', 10, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(4, 'Day', 'en', 11, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(5, 'gfdgdf', 'en', 12, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(6, 'fgdfgdfg', 'bn', 12, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(7, 'gfdgdf', 'en', 13, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(8, 'Morning Bangla', 'bn', 13, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(9, 'gfdgdf', 'en', 14, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(10, 'mornign bn', 'bn', 14, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(11, 'shift en', 'en', 15, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(12, 'fgdfgdfg', 'bn', 15, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(13, 'gfdgdf en', 'en', 21, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(14, 'fgdfgdfg', 'bn', 21, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(15, 'Day', 'en', 1, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(16, 'Morning', 'en', 3, 1);
INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES(17, 'Night', 'en', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_amount_receives`
--

CREATE TABLE IF NOT EXISTS `site_amount_receives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `site_amount_receives`
--

INSERT INTO `site_amount_receives` (`id`, `user_id`, `amount`, `date`, `site_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 120, 50000, '2016-06-23', 1, 'Active', '2016-06-23 17:05:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `site_amount_receives` (`id`, `user_id`, `amount`, `date`, `site_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 120, 10000, '2016-05-11', 1, 'Active', '2016-06-23 18:06:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `site_amount_receives` (`id`, `user_id`, `amount`, `date`, `site_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 120, 12000, '2016-04-12', 1, 'Active', '2016-06-23 18:07:43', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_groups`
--

CREATE TABLE IF NOT EXISTS `site_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group_alias` varchar(255) DEFAULT NULL,
  `group_email` varchar(255) DEFAULT NULL,
  `group_address` varchar(255) DEFAULT NULL,
  `group_phone` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `site_groups`
--

INSERT INTO `site_groups` (`id`, `name`, `group_alias`, `group_email`, `group_address`, `group_phone`, `position`, `status`, `deleted_at`) VALUES(1, 'School', 'school', 'test@gmail.com', 'Chittagong', '0121458', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE IF NOT EXISTS `site_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_membership_id` int(10) unsigned NOT NULL,
  `site_group_id` int(10) unsigned NOT NULL,
  `site_alias` varchar(255) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `site_phone` int(11) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `site_membership_id`, `site_group_id`, `site_alias`, `site_email`, `site_phone`, `site_logo`, `status`, `deleted_at`) VALUES(1, 1, 1, 'cuet', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_info_translations`
--

CREATE TABLE IF NOT EXISTS `site_info_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_info_id` int(10) unsigned NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `site_info_translations`
--

INSERT INTO `site_info_translations` (`id`, `site_info_id`, `site_name`, `address`, `locale`) VALUES(1, 1, 'Cuet', 'Chittagong', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `site_memberships`
--

CREATE TABLE IF NOT EXISTS `site_memberships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_type_duration` varchar(255) NOT NULL DEFAULT 'yearly',
  `payment_amount` double(8,2) DEFAULT NULL,
  `payment_installment` int(11) DEFAULT NULL,
  `late_payment_membership_status` tinyint(1) DEFAULT NULL,
  `late_payment_membership_days` int(11) DEFAULT NULL,
  `late_fee` double(8,2) DEFAULT NULL,
  `alumni_login` tinyint(1) DEFAULT NULL,
  `alumni_fee` double(8,2) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `site_types`
--

CREATE TABLE IF NOT EXISTS `site_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_category_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 2, 'Active', 1, '2016-06-11 05:08:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 2, 'Active', 1, '2016-06-11 05:09:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 2, 'Active', 1, '2016-06-11 05:10:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 2, 'Active', 1, '2016-06-11 05:10:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 2, 'Active', 1, '2016-06-11 05:11:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 2, 'Active', 1, '2016-06-11 05:11:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(7, 2, 'Active', 1, '2016-06-11 05:12:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(8, 2, 'Active', 1, '2016-06-11 05:26:01', '2016-06-11 05:33:58', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(9, 1, 'Active', 1, '2016-06-11 05:35:03', '0000-00-00 00:00:00', '2016-06-11 05:37:11');
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(10, 1, 'Active', 1, '2016-06-13 06:31:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(11, 4, 'Active', 1, '2016-06-14 04:44:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(12, 4, 'Active', 1, '2016-06-14 04:45:14', '2016-06-14 05:16:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skill_categories`
--

CREATE TABLE IF NOT EXISTS `skill_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `skill_categories`
--

INSERT INTO `skill_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 'Active', 1, '2016-06-09 09:14:57', '2016-06-09 09:29:01', NULL);
INSERT INTO `skill_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 'Active', 1, '2016-06-09 09:15:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `skill_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 'Active', 1, '2016-06-09 09:15:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `skill_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 'Active', 1, '2016-06-09 09:22:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `skill_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 'Active', 1, '2016-06-09 09:31:03', '0000-00-00 00:00:00', '2016-06-09 09:31:42');
INSERT INTO `skill_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 'Active', 1, '2016-06-11 03:57:32', '0000-00-00 00:00:00', '2016-06-11 03:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `skill_category_translations`
--

CREATE TABLE IF NOT EXISTS `skill_category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_category_id` int(11) DEFAULT NULL,
  `skill_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `skill_category_translations`
--

INSERT INTO `skill_category_translations` (`id`, `skill_category_id`, `skill_category_name`, `locale`, `site_id`) VALUES(1, 1, 'Accounting/Finance', 'en', 1);
INSERT INTO `skill_category_translations` (`id`, `skill_category_id`, `skill_category_name`, `locale`, `site_id`) VALUES(2, 2, 'IT/Telecommunication', 'en', 1);
INSERT INTO `skill_category_translations` (`id`, `skill_category_id`, `skill_category_name`, `locale`, `site_id`) VALUES(3, 3, 'Marketing', 'en', 1);
INSERT INTO `skill_category_translations` (`id`, `skill_category_id`, `skill_category_name`, `locale`, `site_id`) VALUES(4, 4, 'Education/Training', 'en', 1);
INSERT INTO `skill_category_translations` (`id`, `skill_category_id`, `skill_category_name`, `locale`, `site_id`) VALUES(5, 5, 'test', 'en', 1);
INSERT INTO `skill_category_translations` (`id`, `skill_category_id`, `skill_category_name`, `locale`, `site_id`) VALUES(6, 6, 'rewww', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skill_translations`
--

CREATE TABLE IF NOT EXISTS `skill_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_id` int(11) DEFAULT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `skill_translations`
--

INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(1, 1, 'PHP', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(2, 2, 'MySQL', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(3, 3, 'JavaScript', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(4, 4, 'jQuery', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(5, 5, 'CodeIgniter', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(6, 6, 'CakePHP', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(7, 7, 'Laravel', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(8, 8, 'CSS', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(9, 9, 'test', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(10, 10, 'MBA', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(11, 11, 'B. Ed', 'en', 1);
INSERT INTO `skill_translations` (`id`, `skill_id`, `skill_name`, `locale`, `site_id`) VALUES(12, 12, 'M. Ed', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE IF NOT EXISTS `specializations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skill_category_id` int(11) NOT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `user_id`, `skill_category_id`, `skills`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 120, 2, '1,2,3,4,6,7', 'Active', 1, '2016-06-13 08:14:10', '2016-06-14 05:40:45', '2016-06-26 03:59:48');
INSERT INTO `specializations` (`id`, `user_id`, `skill_category_id`, `skills`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 120, 1, '10', 'Active', 1, '2016-06-13 08:54:35', '0000-00-00 00:00:00', '2016-06-26 03:59:50');
INSERT INTO `specializations` (`id`, `user_id`, `skill_category_id`, `skills`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 120, 4, '11,12', 'Active', 1, '2016-06-14 04:46:16', '0000-00-00 00:00:00', '2016-06-14 05:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `specialization_translations`
--

CREATE TABLE IF NOT EXISTS `specialization_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specialization_id` int(11) DEFAULT NULL,
  `skill_description` varchar(255) DEFAULT NULL,
  `extracurricular_activities` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `specialization_translations`
--

INSERT INTO `specialization_translations` (`id`, `specialization_id`, `skill_description`, `extracurricular_activities`, `locale`, `site_id`) VALUES(1, 1, 'Web development skills edit', 'Cricket edit', 'en', 1);
INSERT INTO `specialization_translations` (`id`, `specialization_id`, `skill_description`, `extracurricular_activities`, `locale`, `site_id`) VALUES(2, 2, 'test', 'none', 'en', 1);
INSERT INTO `specialization_translations` (`id`, `specialization_id`, `skill_description`, `extracurricular_activities`, `locale`, `site_id`) VALUES(3, 3, 'desc', 'none', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `site_id`) VALUES(1, 'Active', 1);
INSERT INTO `statuses` (`id`, `name`, `site_id`) VALUES(2, 'Pending', 1);
INSERT INTO `statuses` (`id`, `name`, `site_id`) VALUES(3, 'Approved', 1);
INSERT INTO `statuses` (`id`, `name`, `site_id`) VALUES(4, 'Rejected', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE IF NOT EXISTS `student_attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `present_type` varchar(255) DEFAULT NULL,
  `present_type_id` int(11) DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `present_date` date DEFAULT NULL,
  `present_date_time` datetime DEFAULT NULL,
  `present_year` int(11) DEFAULT NULL,
  `present_month` int(11) DEFAULT NULL,
  `present_day` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `user_id`, `roll_no`, `present_type`, `present_type_id`, `in_time`, `out_time`, `present_date`, `present_date_time`, `present_year`, `present_month`, `present_day`, `site_id`) VALUES(1, 137, '566987', 'Bangla', 1, '15:04:20', NULL, '2016-05-09', '2016-05-09 15:04:20', 2016, 5, 9, 1);
INSERT INTO `student_attendances` (`id`, `user_id`, `roll_no`, `present_type`, `present_type_id`, `in_time`, `out_time`, `present_date`, `present_date_time`, `present_year`, `present_month`, `present_day`, `site_id`) VALUES(2, 138, '987654', 'Bangla', 1, '15:04:21', NULL, '2016-05-09', '2016-05-09 15:04:21', 2016, 5, 9, 1);
INSERT INTO `student_attendances` (`id`, `user_id`, `roll_no`, `present_type`, `present_type_id`, `in_time`, `out_time`, `present_date`, `present_date_time`, `present_year`, `present_month`, `present_day`, `site_id`) VALUES(3, 138, '987654', 'Bangla', 1, '17:06:45', NULL, '2016-05-09', '2016-05-09 15:04:38', 2016, 5, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE IF NOT EXISTS `student_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `result_system_id` int(10) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `class_name`, `user_id`, `result_system_id`, `note`, `status`, `deleted_at`, `site_id`) VALUES(1, 'Play', 132, 1, '', 'Active', NULL, 1);
INSERT INTO `student_classes` (`id`, `class_name`, `user_id`, `result_system_id`, `note`, `status`, `deleted_at`, `site_id`) VALUES(2, 'One', 132, 1, 'Class One', 'Active', NULL, 1);
INSERT INTO `student_classes` (`id`, `class_name`, `user_id`, `result_system_id`, `note`, `status`, `deleted_at`, `site_id`) VALUES(5, 'Three', 133, 1, 'Class three', 'Inactive', NULL, 1);
INSERT INTO `student_classes` (`id`, `class_name`, `user_id`, `result_system_id`, `note`, `status`, `deleted_at`, `site_id`) VALUES(6, 'test', 132, 1, 'sssss', 'Active', '2016-05-09 08:49:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_histories`
--

CREATE TABLE IF NOT EXISTS `student_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `guardian_id` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `student_histories`
--

INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(1, 137, 2, 1, 1, '566987', '136', '2016-04-26', NULL, 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(2, 138, 4, 1, 1, '123456', '136', '2016-04-26', NULL, 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(3, 138, 3, 1, 1, '987654', '136', NULL, '2016-04-26', 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(4, 141, 2, 1, 2, '4455', '134', '2016-05-08', NULL, 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(5, 137, 2, 1, 2, '566987', '136', NULL, '2016-05-09', 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(6, 138, 3, 1, 2, '987654', '136', NULL, '2016-05-09', 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(7, 146, 2, 1, 2, '6589', '134', '2016-05-09', NULL, 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(8, 147, 2, 1, 4, '2345', '135', '2016-05-11', NULL, 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(9, 137, 2, 1, 2, '566987', '136', NULL, '2016-05-29', 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(10, 148, 4, 2, 6, '3333', '134', '2016-05-30', NULL, 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(11, 137, 2, 1, 2, '566987', '136', NULL, '2016-06-28', 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(12, 137, 2, 1, 2, '566987', '136', NULL, '2016-06-28', 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(13, 137, 2, 1, 2, '566987', '136', NULL, '2016-06-28', 1);
INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES(14, 150, 4, 1, 2, '589', '135', '2016-06-28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_class_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `subject_total_marks` double(8,2) DEFAULT NULL,
  `subject_author` varchar(255) DEFAULT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `subject_credit` int(11) DEFAULT NULL,
  `subject_marks_type` varchar(400) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `subject_marks_type`, `status`, `site_id`) VALUES(1, 1, 132, 'Bangla', 100.00, '', 'BN-001', 1, '1,2,3,4,5', 'Active', 1);
INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `subject_marks_type`, `status`, `site_id`) VALUES(3, 1, 133, 'English', NULL, '', 'ENG-001', 1, '', 'Active', 1);
INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `subject_marks_type`, `status`, `site_id`) VALUES(4, 2, 133, 'English', NULL, '', 'Eng-002', 2, '', 'Active', 1);
INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `subject_marks_type`, `status`, `site_id`) VALUES(5, 1, 132, 'Math', NULL, '', 'Math-001', 3, '1,4,5', 'Active', 1);
INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `subject_marks_type`, `status`, `site_id`) VALUES(6, 1, 133, 'General Science', NULL, '', 'S-259', 4, '1,2,4,5', 'Active', 1);
INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `subject_marks_type`, `status`, `site_id`) VALUES(7, 1, 132, 'Social Science', NULL, '', 'SS-257', 3, '1,4,5', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE IF NOT EXISTS `trainings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `training_year` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `user_id`, `country_id`, `training_year`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 120, 1, '2012', '5 Months', 'Active', 1, '2016-06-07 06:08:42', '2016-06-07 07:50:09', NULL);
INSERT INTO `trainings` (`id`, `user_id`, `country_id`, `training_year`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 120, 1, '2015', '4 Months', 'Active', 1, '2016-06-07 06:49:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `trainings` (`id`, `user_id`, `country_id`, `training_year`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 120, 1, '2016', '4 Months', 'Active', 1, '2016-06-07 07:52:58', '0000-00-00 00:00:00', '2016-06-07 07:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `training_translations`
--

CREATE TABLE IF NOT EXISTS `training_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `training_id` int(11) DEFAULT NULL,
  `training_title` varchar(255) DEFAULT NULL,
  `training_cover` text,
  `institute_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `training_translations`
--

INSERT INTO `training_translations` (`id`, `training_id`, `training_title`, `training_cover`, `institute_name`, `location`, `locale`, `site_id`) VALUES(1, 1, 'Codeigniter', 'PHP MVC', 'Basis', 'Dhaka, Bangladesh', 'en', 1);
INSERT INTO `training_translations` (`id`, `training_id`, `training_title`, `training_cover`, `institute_name`, `location`, `locale`, `site_id`) VALUES(2, 2, 'Android ', 'Android ', 'Basis', 'Dhaka, Bangladesh', 'en', 1);
INSERT INTO `training_translations` (`id`, `training_id`, `training_title`, `training_cover`, `institute_name`, `location`, `locale`, `site_id`) VALUES(3, 3, 'test', 'test', 'Basis--', 'errt', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `gender_id` int(10) unsigned NOT NULL,
  `religion_id` int(10) unsigned NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `designation_id` int(10) unsigned DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `dept_join_date` date DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `emergency_contact` varchar(255) DEFAULT NULL,
  `nid_number` varchar(255) DEFAULT NULL,
  `passport_no` varchar(255) DEFAULT NULL,
  `birth_certificate_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_gender_id_foreign` (`gender_id`),
  KEY `users_religion_id_foreign` (`religion_id`),
  KEY `users_department_id_foreign` (`department_id`),
  KEY `users_designation_id_foreign` (`designation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(120, '0667', 'khanna', 'kk@gmail.com', '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 17, 2, 1, 4, '203', NULL, NULL, 2, 5, 1, '2016-04-20', '78787877', '12352566', '32547486', NULL, NULL, NULL, 'Zwbm9fVcUMYmUidTTDg8ZvMGBud2f4BpfXKayFXvFawh5r3DaLWJ3PuiRVhP', '2016-04-20', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(126, '6589', 'hannan', 'hannan@gmail.com', '$2y$10$BdZgLHneikszX6VpqKTvaeEWq/E31dfPI2FQnpnw/L.fJxHo3Z66y', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-04-20', '0171526859', '99999999999999', '99999999999999', '999999999999999', '99999999999999', NULL, 'OwVgbTUGp0Vrwxhackh52dX9pfrxe8JJc3cMlmuVc7MS9xIqRzvSFQv0KMGD', '2016-03-27', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(127, '6598', 'test', 'test@test.com', '$2y$10$ccEjf4UWE3eND6nEuAn7Ne2dcpmIUihW6WMREqS9kaCQNIOQAxmRi', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 4, '2016-04-09', '0171256985', NULL, NULL, NULL, NULL, NULL, 'cFJeZmPHgh1B5nVvYjNPeBUzuBTJ5OUciPeey7U2Rv4wULcmoTq7dDeXuUuV', '2016-04-06', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(128, '65987', 'joyraj', 'joy@gmail.com', '$2y$10$AZ3ywpPbBtNQkBllLauD1OQHgfqdBjD7jWpNWVZMMp9UzammR2LD.', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-12-31', '0171525632', NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-06', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(132, 'kjuyt500', 'mahmud_user', 'mahmud@gmail.com', '$2y$10$HSS23zos.RvSSI3JtxuQT.5ACBhL3HOOWhiUmnR4KLhn812M1ysGq', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-04-25', '123456', '125647', '36598', '65444', '55558', NULL, 'TnkOyjD8WPVQqzPZsrn9wi1MONSelYRMrDhl9ESCmsZOPbgs745XQWix1ggV', '2016-03-28', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(133, 'kjhuytr45t', 'jamil888t', 'jamil@gmail.com', '$2y$10$y8CGdCjwcM.STxX8GThzdezGrI3OE9vv1gx/d6gBt4vRND7MMcjAS', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '1992-07-08', '658954', '3455', '22334', '333', '333', NULL, NULL, '1973-08-15', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(134, 'GID-0987', 'masuda', 'masuda@gmail.com', '$2y$10$G5bz5EnNE0xL2XZwCNfd6OzsTw45pI4RBAZ1cCWs2GepTUpjIp9m6', 17, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '54689', '54566', '11255', '22235', '45666', NULL, NULL, '2016-04-12', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(135, 'GID-0543_p', 'safiq', 'safiq@gmail.com', '$2y$10$Qv.aT6yrxvSzhMhYul2oh.efGXcZPSMsbJuohX8gbaV70qnx2V0ji', 17, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '258947', '23445', '55677', '5567', '5667', NULL, NULL, '2016-04-12', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(136, 'Gid-0986444', 'test1', 'test1@gmail.com', '$2y$10$8YXFpOLQiVqJRFBtsA9aEOr5JU7i8PzKzDRQY0WBkf6h660PIrP5W', 18, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '123654', '123654', '0215478', '688877', '55888', NULL, NULL, '2016-04-04', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(137, 'st-123', 'st', 'st@gmail.com', '$2y$10$ploBYxNg8uPCIBogyKMrVOlHkL/mm05HZISjs9U5kUPX8n1.0uYpm', 17, 2, 1, 2, '566987', NULL, 136, 2, NULL, NULL, '2016-05-01', '45689997', '214555656', '5545585', '45555656', '5555-08', NULL, 'WGQPSfvFTOqoP4vgaN03DsCsmsyUyWNI29Mz1P5xpfB0METW24MILQTzxK4s', '2016-03-31', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(138, 'st-401', 'koala9', 'keya@gmail.com', '$2y$10$6D1TrML00/5vU2HG26X3x.Rb1WGaLiHhI.jmX/8CqsS2Dw82C.416', 18, 3, 1, 2, '987654', NULL, 136, 3, NULL, NULL, '2016-05-01', '987654', '987654', '987654', '987654', '987654', NULL, NULL, '2016-03-07', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(139, 'hjiijjjjndd', 'okokdd', 'w@r.com', '$2y$10$RELhp93yvlo875pwwjKiY.zfzX23buBMS7aKDbxRvB453GySID4Su', 17, 4, NULL, NULL, NULL, NULL, NULL, 2, 5, 4, '2016-04-26', '22344533', NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-12', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(140, 'p-0987', 'pppppp', 'p@gmail.com', '$2y$10$hb9K7M/ZUHts6PxFbCG9jeqvKYelDxMyfln3YUC9pgwtt9opGeaC6', 18, 4, NULL, NULL, NULL, NULL, NULL, 2, 5, 4, '2016-04-12', '3456789', '2345567', '3435678', '3457788', '33456789', NULL, NULL, '2016-03-29', '2016-05-08 03:43:54', 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(141, 'tyyyuu555', 'ayman', 'ayman@gmail.com', '$2y$10$ElP96VnMpOPcaHjHF.gscenmRuEodt74Z4XMJerrzAM.q0jzSWN2W', 17, 2, 1, 2, '4455', NULL, 134, 2, NULL, NULL, '2016-05-08', '345566', '45566', '55666', '6554', '44434', NULL, NULL, '2016-05-01', '2016-05-08 05:12:19', 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(142, '2345', 'dert', 'yuyui@gmail.com', '$2y$10$GDjqnouydD4Nkdl7LCM7EuHt7fgBkO/QNrH7CCTJ4BCLFQiUVLMP2', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-05-09', '334556', '34566', '65678', '45675', '4465677', NULL, NULL, '2016-05-01', '2016-05-09 05:52:53', 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(143, '3456', 'sdfgh', 'gg@gmail.com', '$2y$10$KaSj9j9u2A.4n8GREm2C7.EK5wkDNh/QsZKaJ6mrL0pxVns9ubZs2', 17, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '234567', '123345', '1232356', '1233456', '1234556', NULL, NULL, '2016-05-01', '2016-05-09 06:20:32', 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(144, '23243455', 'dfgtrer', 'pp@gmail.com', '$2y$10$0hzPW1KQ2t/KABUhtReYROJga9e/wN/EsTnUZ8WSfNvS/OvYhiNZ6', 18, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '234444', '2244566', '3445566', '344566', '454566', NULL, NULL, '1989-04-17', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(145, '2332435', 'dsfdg', 'k@gmail.com', '$2y$10$idekT6R7AtEwzUMmnAloVOYxQLfaQq0N/6EFgqtIjk3T.8ZU7HWOq', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-04-02', '12343546', '4365657', '456754756', '565756', '5657657', NULL, NULL, '1993-03-03', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(146, '454657', 'dfgfghgj', 'w@gmail.com', '$2y$10$sM60ZsK9dqLhejm5z3cKxeNRC7rKnkJOPMkaz7SGg8IdZv/RFD.V6', 17, 2, 1, 2, '6589', NULL, 134, 2, NULL, NULL, '2016-01-05', '344457', '768798', '6998090', '787980', '7676879', NULL, NULL, '1990-08-14', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(147, 'gghj', 'yyyuji', 'hasan@yahoo.com', '$2y$10$ONF6poblTgyMU7tWglt0KOB63.2jGwW0LGzOFVa.h3uNyCOdLG116', 17, 2, 1, 4, '2345', NULL, 135, 2, NULL, NULL, '2016-01-05', '345678', '688900', '778900', '7888900', '3456778', NULL, NULL, '1989-06-07', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(148, 'sdsfeerer', 'sdgfd', 'fahim@gmail.com', '$2y$10$Ji.SsWOKMCJMEX6GgJVdyOoRy8lIVxFRGAn/mWC4FY/g4S8gJXOcK', 17, 2, 2, 6, '3333', NULL, 134, 4, NULL, NULL, '2016-05-25', '23334454', '6566888', '87988908', '567687', '676879', NULL, NULL, '2016-05-02', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(149, 'T-004', 'Saju', 'saju@gmail.com', '$2y$10$Dq/UTIqi0fffhp0Q6eUCbe1YlZi1LbeB0GXpDdqoGx/oj9iq/v5My', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-06-01', '01245788', '01245879', '58965475', '32547895', '32548965', NULL, NULL, '1973-05-09', NULL, 1);
INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES(150, '698766668', 'Pervez', 'pervez@gmail.com', '$2y$10$FdIr4pAS9ZfR6o5Xtdj68u28jAE3EgKUKpSAAH5I.a8hAeW6zaEnW', 17, 2, 1, 2, '589', NULL, 135, 4, NULL, NULL, '2016-01-02', '232445', '44555', '4444', '3344', '33332', NULL, NULL, '2012-05-09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_salaries`
--

CREATE TABLE IF NOT EXISTS `user_salaries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `basic` double DEFAULT NULL,
  `salary_rule_id` int(11) DEFAULT NULL,
  `overtime_rule_id` int(11) DEFAULT NULL,
  `salary_cut_rule_id` int(11) DEFAULT NULL,
  `bonus_rule_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `user_salaries`
--

INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(16, 120, 25000, 6, 4, 2, 18, '2016-04-06', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(17, 120, 25000, 6, 6, 2, 18, NULL, '2016-04-06', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(34, 126, 20000, 6, 4, 2, 18, '2016-04-09', '2016-04-09', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(35, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(36, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(37, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(38, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(39, 128, 15606, 6, 4, 2, 18, '2016-04-10', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(40, 120, 50000, 6, 6, 2, 18, NULL, '2016-04-20', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(41, 132, 10000, 6, 5, 3, 19, '2016-04-25', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(42, 133, 15000, 6, 5, 4, 18, '2016-04-25', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(43, 132, 100005, 6, 4, 2, 18, NULL, '2016-04-25', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(44, 132, 100005, 6, 4, 2, 18, NULL, '2016-04-25', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(45, 133, 150005, 6, 4, 2, 18, NULL, '2016-04-25', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(46, 139, 2234444, 6, 4, 2, 18, '2016-04-27', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(47, 139, 223444455, 6, 4, 2, 18, NULL, '2016-04-27', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(48, 132, 100005, 6, 4, 2, 18, NULL, '2016-04-27', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(49, 126, 20000, 6, 4, 2, 18, NULL, '2016-04-27', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(50, 140, 12345777, 6, 4, 2, 19, '2016-04-27', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(51, 142, 3346566, 6, 4, 2, 18, '2016-05-09', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(52, 145, 12332435, 6, 4, 2, 18, '2016-05-09', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(53, 145, 12332435, 6, 4, 2, 18, NULL, '2016-05-09', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(54, 133, 150005, 6, 4, 2, 18, NULL, '2016-05-09', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(55, 149, 15000, 6, 4, 2, 18, '2016-06-28', NULL, 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(56, 149, 15000, 6, 4, 2, 18, NULL, '2016-06-28', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(57, 149, 15000, 6, 4, 2, 18, NULL, '2016-06-28', 1);
INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES(58, 120, 50000, 6, 6, 2, 18, NULL, '2016-06-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_translations`
--

CREATE TABLE IF NOT EXISTS `user_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_translations_user_id_locale_unique` (`user_id`,`locale`),
  KEY `user_translations_locale_index` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `user_translations`
--

INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(130, 120, 'Akshay ', 'Khanna', 'Akshay Sr', 'Mrs Sr Aks', 'jljlkjlkjl', 'ljlkjlkjlj', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(139, 120, 'Aksay bn', 'Khann bna', 'kjkjk bn', 'jkjk bn', 'jkljkljj', 'jkjkj kbn', 'bn', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(144, 126, 'Hannan', 'Rashid', 'Malek', 'Maleka', 'dhaka', 'rangpur', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(145, 127, 'Users', 'Tester', 'Father', 'Mother', 'Test', 'Teste', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(146, 127, 'tester bn', 'tester bn', 'fatbnt', 'motbnt', 'dhaka bn', 'dhaka bn', 'bn', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(147, 128, 'Abul Mal', 'JOytu', 'Abdul Kal', 'Karina', 'dhaka', 'dhaka', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(149, 132, 'Mahmudd', 'Zamand', 'wweed', 'eerrrd', 'Dhakad', 'Dhakad', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(150, 133, 'Jamilt', 'Howladart', 'kkjjt', 'kliiit', 'Dhakat', 'Madaripurt', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(151, 134, 'Masuda', 'Khatun', 'wwee', 'kliii', 'Dhaka', 'Dhaka', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(152, 135, 'Safiqul', 'Islam', 'lkji_p', 'njjh_p', 'Dhaka', 'Dhaka', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(153, 135, 'Safiqul', 'Islam', 'kkkoo', 'mnbgt', 'Dhaka', 'Dhaka', 'bn', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(154, 136, 'testf', 'testl', 'jhhu', 'kjjjh', 'kkki', 'kkkjj', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(155, 137, 'Abdul', 'Khalek', 'lkji', 'kjjjh', 'jjhhghh', 'kkjjyu', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(156, 138, 'Keyav9', 'Banuv9', 'ddd9', 'wwe9', 'sddd9', 'wewed9', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(157, 139, 'rezafdd', 'rrrffdd', 'frfgsss', 'gggss', 'dddsss', 'dsefffggss', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(158, 140, 'sdffghh', 'eerfghh', 'cfgrgth', 'frrrrere', 'vghjfdjytj', 'vxggfjgkh', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(159, 141, 'ayman', 'khann', 'fffffgh', 'ffdgedgg', 'cdd', 'dddff', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(160, 142, 'dffgff', 'ddfff', 'ddfgf', 'dddfff', 'dfgfgghh', 'ddfgghhh', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(161, 143, 'dddfgh', 'ssdfffgg', 'swrthyj', 'dfghhh', 'ddffgghhj', 'sddfgghhjj', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(162, 144, 'sddfghg', 'sdder', 'ddfghh', 'sddfggh', 'ddghhd', 'dddffgg', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(163, 145, 'sfdgfdg', 'afsdgf', 'afdgg', 'afdgg', 'afgsdg', 'afdgdfg', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(164, 146, 'dfjhghjhk', 'dhgfjuhgi', 'djuyiuyyi', 'dytuyiuo', 'ghjhkjl', 'dhjhkkl', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(165, 147, 'Mahmud', 'Hasan', 'dddffdfg', 'gfghh', 'dffg', 'fggfff', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(166, 148, 'Fahim', 'Ahmed', 'cffedfef', 'dffdf', 'dfdvfd', 'dfdfdf', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(167, 149, 'Sajedur', 'Rahman', 'Musfikur Rahman', 'Rahima Khatun', 'dee', 'wwee', 'en', 1);
INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES(168, 150, 'Pervez', 'Ahmed', 'Musfikur Rahman', 'Rahima Khatun', 'dddf', 'ssddf', 'en', 1);

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
