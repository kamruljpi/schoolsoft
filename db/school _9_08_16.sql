-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2016 at 01:57 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_qualifications`
--

CREATE TABLE `academic_qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `education_level_id` int(11) NOT NULL,
  `year_of_passing` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `academic_qualification_translations`
--

CREATE TABLE `academic_qualification_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_qualification_id` int(11) DEFAULT NULL,
  `degree_title` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `institute_name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `to_role_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_role_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `amount_type_id` int(11) NOT NULL,
  `amount_category_id` int(11) NOT NULL,
  `receipt_no` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_translations`
--

CREATE TABLE `account_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_type_translations`
--

CREATE TABLE `account_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `account_type_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `add_field_to_tables`
--

CREATE TABLE `add_field_to_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amount_categories`
--

CREATE TABLE `amount_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amount_category_translations`
--

CREATE TABLE `amount_category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount_category_id` int(11) DEFAULT NULL,
  `amount_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amount_types`
--

CREATE TABLE `amount_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amount_type_translations`
--

CREATE TABLE `amount_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount_type_id` int(11) DEFAULT NULL,
  `amount_type_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_of_birth` date NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `author_translations`
--

CREATE TABLE `author_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_birth_place` varchar(255) DEFAULT NULL,
  `author_note` text,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES
(1, 156, 'rrr4565478d', 'rrr56598745d', 'rrkjkkjkjd', 'rrrjlkjjljljljljld', 'rrr562jjjlklkd', NULL, NULL, '2016-07-02', NULL, 1),
(2, 187, '25965874', '2154698', '215478', '25698', '23665487', NULL, NULL, '2016-07-24', NULL, 1),
(3, 207, '2569873025', 'jaigu', '64464664', '5665565', 'kommill', NULL, NULL, '2016-07-26', NULL, 1),
(4, 209, '7879989898987878787', 'hkjhkjhkhkhk', '464646464', '4646464', 'kjkkhkjhkhkjhkhkhkhk', NULL, NULL, '2016-07-26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_attributes`
--

CREATE TABLE `bonus_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `month` int(11) DEFAULT NULL,
  `salary_types` longtext,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bonus_attributes`
--

INSERT INTO `bonus_attributes` (`id`, `month`, `salary_types`, `amount`, `amount_type`, `site_id`) VALUES
(1, 2, '{"total":"total"}', 25, 'percent', 1),
(2, 2, '{"snt":"snt","medical":"medical"}', 20, 'percent', 1),
(4, 6, '{"medical":"medical"}', 20, 'percent', 1),
(5, 6, '{"medical":"medical"}', 20, 'percent', 1),
(6, 4, '{"basic":"basic","Medical":"medical"}', 30, 'percent', 1),
(7, 8, '{"Transport Allowance":"transport_allowance"}', 20, 'percent', 1),
(8, 9, '{"Transport Allowance":"transport_allowance"}', 30, 'percent', 1),
(9, 12, '{"Transport Allowance":"transport_allowance"}', 50, 'percent', 1),
(10, 8, '{"Medical":"medical","Transport Allowance":"transport_allowance"}', 40, 'percent', 1),
(11, 9, '{"snt":"snt","Transport Allowance":"transport_allowance"}', 20, 'percent', 1),
(12, 8, '{"Medical":"medical","Transport Allowance":"transport_allowance"}', 20, 'percent', 1),
(14, 5, '{"snt":"snt","Medical":"medical","Transport Allowance":"transport_allowance"}', 50, 'percent', 1),
(15, 5, 'null', 2000, 'fixed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_rules`
--

CREATE TABLE `bonus_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rules` longtext,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bonus_rules`
--

INSERT INTO `bonus_rules` (`id`, `name`, `rules`, `status`, `position`, `site_id`) VALUES
(21, 'Bonus Rule 1', '"1,2"', 'Active', NULL, 1),
(22, 'Bonus Rule 3', '"5"', 'Active', NULL, 1),
(23, 'Bonus Rule 4', '"6,7"', 'Active', NULL, 1),
(24, 'Bonus Rule 6', '"14,15"', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `book_price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rack_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_category_translations`
--

CREATE TABLE `book_category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_category_id` int(11) DEFAULT NULL,
  `book_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_translations`
--

CREATE TABLE `book_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `building_name`, `status`, `site_id`, `deleted_at`) VALUES
(1, 'Aaaabbbb', 'Active', 1, NULL),
(2, 'Arts', 'Active', 1, NULL),
(3, 'Fhhfg', 'Active', 1, NULL),
(4, 'Rrrrrr', 'Active', 1, NULL),
(5, 'Rrrrrr', 'Active', 1, NULL),
(6, 'Ggggg', 'Active', 1, NULL),
(7, 'Amanullah Building', 'Active', 1, NULL),
(8, 'Top ', 'Active', 1, NULL),
(9, 'Test Building', 'Active', 1, NULL),
(10, 'Building One', 'Active', 1, NULL),
(11, 'Helloo', 'Active', 1, NULL),
(12, 'Fdfdf', 'Inactive', 1, NULL),
(13, 'Dfdfd', 'Inactive', 1, NULL),
(14, 'Fdfdf', 'Active', 1, NULL),
(15, 'Fdfdf', 'Active', 1, NULL),
(16, 'Fdfgdsg', 'Active', 1, NULL),
(17, 'Fdfd', 'Active', 1, NULL),
(18, 'Dsfds', 'Active', 1, NULL),
(19, NULL, NULL, 1, NULL),
(20, NULL, NULL, 1, NULL),
(21, 'Dfsdf', 'Active', 1, NULL),
(22, NULL, NULL, 1, NULL),
(23, NULL, NULL, 1, NULL),
(24, 'Fdfdsfdsf', 'Active', 1, NULL),
(25, 'Lplplplplpll', 'Active', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Active', 1, '2016-06-14 05:29:45', '0000-00-00 00:00:00', NULL),
(2, 'Active', 1, '2016-06-14 05:29:51', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_type_translations`
--

CREATE TABLE `business_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_type_id` int(11) DEFAULT NULL,
  `business_type_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_translations`
--

INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES
(1, 1, 'india', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cv_languages`
--

CREATE TABLE `cv_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cv_languages`
--

INSERT INTO `cv_languages` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Active', 1, '2016-06-14 05:26:15', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cv_language_skills`
--

CREATE TABLE `cv_language_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `cv_language_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `writing` varchar(255) DEFAULT NULL,
  `reading` varchar(255) DEFAULT NULL,
  `speaking` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cv_language_skills`
--

INSERT INTO `cv_language_skills` (`id`, `cv_language_id`, `user_id`, `writing`, `reading`, `speaking`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 120, 'High', 'Low', 'Medium', 'Active', 1, '2016-06-14 05:26:53', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cv_language_translations`
--

CREATE TABLE `cv_language_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `cv_language_id` int(11) DEFAULT NULL,
  `cv_language_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cv_language_translations`
--

INSERT INTO `cv_language_translations` (`id`, `cv_language_id`, `cv_language_name`, `locale`, `site_id`) VALUES
(1, 1, 'turki', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `position`, `site_id`) VALUES
(1, 'Top Management', 'Active', 1, 1),
(2, 'Professor', 'Active', 0, 1),
(3, 'Teacher', 'Active', 0, 1),
(4, 'HR', 'Active', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department_shift`
--

CREATE TABLE `department_shift` (
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department_shift`
--

INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES
(1, 1, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES
(1, 1, 'Managing Director', 'Active', 1, 1),
(2, 2, 'Professor', 'Active', NULL, 1),
(3, 3, 'Teacher', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `country_id`, `division_id`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, 1, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `district_translations`
--

CREATE TABLE `district_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `country_id`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `division_translations`
--

CREATE TABLE `division_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `education_levels`
--

CREATE TABLE `education_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `education_level_translations`
--

CREATE TABLE `education_level_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `education_level_id` int(11) DEFAULT NULL,
  `education_level_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emailer_id` int(11) DEFAULT NULL,
  `emailer_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_histories`
--

INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES
(8, 156, 1, 1, 1, '2016-06-27', NULL, NULL, '2016-07-02', NULL, 1),
(9, 120, 1, 1, 1, '2016-04-20', NULL, NULL, NULL, '2016-07-02', 1),
(10, 126, 2, 2, 1, '2016-04-20', NULL, NULL, NULL, '2016-07-02', 1),
(11, 127, 2, 2, 1, '2016-04-09', NULL, NULL, NULL, '2016-07-02', 1),
(12, 128, 2, 2, 1, '2016-12-31', NULL, NULL, NULL, '2016-07-02', 1),
(13, 139, 2, 2, 1, '2016-04-26', NULL, NULL, NULL, '2016-07-02', 1),
(14, 145, 2, 2, 1, '2016-04-02', NULL, NULL, NULL, '2016-07-02', 1),
(15, 187, 1, 1, 1, '2016-07-24', NULL, NULL, '2016-07-24', NULL, 1),
(16, 207, 1, 1, 1, '2016-07-04', NULL, NULL, '2016-07-26', NULL, 1),
(17, 209, 2, 2, 1, '2016-07-12', NULL, NULL, '2016-07-26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employment_histories`
--

CREATE TABLE `employment_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_type_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `currently_working` tinyint(1) NOT NULL,
  `experience_category_id` int(11) NOT NULL,
  `experience_all` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employment_histories`
--

INSERT INTO `employment_histories` (`id`, `user_id`, `business_type_id`, `from_date`, `to_date`, `currently_working`, `experience_category_id`, `experience_all`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 120, 1, '2016-06-14', '2016-06-15', 1, 1, '1,2', 'Active', 1, '2016-06-14 07:05:28', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employment_history_translations`
--

CREATE TABLE `employment_history_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `employment_history_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `position_held` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `responsibilites` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event_translations`
--

CREATE TABLE `event_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `event_venue` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE `examinations` (
  `id` int(10) UNSIGNED NOT NULL,
  `examination_name` varchar(255) DEFAULT NULL,
  `examination_date` date NOT NULL,
  `examination_note` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`id`, `examination_name`, `examination_date`, `examination_note`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'Class Test', '2016-05-12', 'Dee', 'Active', NULL, 1),
(2, 'Semester Final', '2016-12-10', 'Final Exam.', 'Inactive', NULL, 1),
(3, 'Test', '2016-05-20', 'Rrr', 'Active', NULL, 1),
(4, 'Tesdr', '2016-05-10', 'Ffgghg', 'Active', '2016-05-09 06:59:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `examination_schedules`
--

CREATE TABLE `examination_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `experience_category_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `experience_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Active', 1, '2016-06-14 05:31:32', '0000-00-00 00:00:00', NULL),
(2, 1, 'Active', 1, '2016-06-14 05:31:42', '0000-00-00 00:00:00', NULL),
(3, 2, 'Active', 1, '2016-06-14 05:31:50', '0000-00-00 00:00:00', NULL),
(4, 3, 'Active', 1, '2016-06-14 05:31:57', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_categories`
--

CREATE TABLE `experience_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experience_categories`
--

INSERT INTO `experience_categories` (`id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Active', 1, '2016-06-25 10:22:01', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_category_translations`
--

CREATE TABLE `experience_category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `experience_category_id` int(11) DEFAULT NULL,
  `experience_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experience_category_translations`
--

INSERT INTO `experience_category_translations` (`id`, `experience_category_id`, `experience_category_name`, `locale`, `site_id`) VALUES
(1, 1, 'ex cat', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `experience_translations`
--

CREATE TABLE `experience_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `experience_id` int(11) DEFAULT NULL,
  `experience_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_name` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `building_id`, `floor_name`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, '1', 'Active', NULL, 1),
(2, 2, 'Floor 1', 'Active', NULL, 1),
(3, 2, 'Floor 2', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `status`, `site_id`) VALUES
(1, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gender_translations`
--

CREATE TABLE `gender_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `gender_name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender_translations`
--

INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`, `site_id`) VALUES
(1, 1, 'Male', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_accesses`
--

CREATE TABLE `group_accesses` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `add` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_accesses`
--

INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES
(1, 5, 4, 1, 0, 0, 0, 1),
(2, 17, 4, 1, 0, 0, 0, 1),
(3, 23, 4, 1, 0, 0, 0, 1),
(4, 24, 4, 1, 0, 0, 0, 1),
(5, 25, 4, 1, 0, 0, 0, 1),
(6, 26, 4, 1, 0, 0, 0, 1),
(7, 27, 4, 1, 0, 0, 0, 1),
(8, 28, 4, 1, 0, 0, 0, 1),
(9, 29, 4, 1, 0, 0, 0, 1),
(10, 30, 4, 1, 0, 0, 0, 1),
(11, 31, 4, 1, 0, 0, 0, 1),
(12, 32, 4, 1, 0, 0, 0, 1),
(13, 33, 4, 1, 0, 0, 0, 1),
(14, 34, 4, 1, 0, 0, 0, 1),
(15, 35, 4, 1, 0, 0, 0, 1),
(16, 36, 4, 1, 0, 0, 0, 1),
(17, 37, 4, 1, 0, 0, 0, 1),
(18, 38, 4, 1, 0, 0, 0, 1),
(19, 39, 4, 1, 0, 0, 0, 1),
(20, 40, 4, 1, 0, 0, 0, 1),
(21, 41, 4, 1, 0, 0, 0, 1),
(22, 42, 4, 1, 0, 0, 0, 1),
(23, 43, 4, 1, 0, 0, 0, 1),
(24, 44, 4, 1, 0, 0, 0, 1),
(25, 45, 4, 1, 0, 0, 0, 1),
(26, 46, 4, 1, 0, 0, 0, 1),
(27, 47, 4, 1, 0, 0, 0, 1),
(28, 48, 4, 1, 0, 0, 0, 1),
(29, 49, 4, 1, 0, 0, 0, 1),
(30, 50, 4, 1, 0, 0, 0, 1),
(31, 51, 4, 1, 0, 0, 0, 1),
(32, 52, 4, 1, 0, 0, 0, 1),
(33, 53, 4, 1, 0, 0, 0, 1),
(34, 54, 4, 1, 0, 0, 0, 1),
(35, 55, 4, 1, 0, 0, 0, 1),
(36, 56, 4, 1, 0, 0, 0, 1),
(37, 57, 4, 1, 0, 0, 0, 1),
(38, 58, 4, 1, 0, 0, 0, 1),
(39, 59, 4, 1, 0, 0, 0, 1),
(40, 60, 4, 1, 0, 0, 0, 1),
(41, 61, 4, 1, 0, 0, 0, 1),
(42, 62, 4, 1, 0, 0, 0, 1),
(43, 63, 4, 1, 0, 0, 0, 1),
(44, 64, 4, 1, 0, 0, 0, 1),
(45, 65, 4, 1, 0, 0, 0, 1),
(46, 66, 4, 1, 0, 0, 0, 1),
(47, 67, 4, 1, 0, 0, 0, 1),
(48, 68, 4, 1, 0, 0, 0, 1),
(49, 69, 4, 1, 0, 0, 0, 1),
(50, 70, 4, 1, 0, 0, 0, 1),
(51, 71, 4, 1, 0, 0, 0, 1),
(52, 72, 4, 1, 0, 0, 0, 1),
(53, 73, 4, 1, 0, 0, 0, 1),
(54, 74, 4, 1, 0, 0, 0, 1),
(55, 75, 4, 1, 0, 0, 0, 1),
(56, 76, 4, 1, 0, 0, 0, 1),
(57, 77, 4, 1, 0, 0, 0, 1),
(58, 78, 4, 1, 0, 0, 0, 1),
(59, 79, 4, 1, 0, 0, 0, 1),
(60, 80, 4, 1, 0, 0, 0, 1),
(61, 81, 4, 1, 0, 0, 0, 1),
(62, 82, 4, 1, 0, 0, 0, 1),
(63, 83, 4, 1, 0, 0, 0, 1),
(64, 84, 4, 1, 0, 0, 0, 1),
(65, 85, 4, 1, 0, 0, 0, 1),
(66, 86, 4, 1, 0, 0, 0, 1),
(67, 87, 4, 1, 0, 0, 0, 1),
(68, 88, 4, 1, 0, 0, 0, 1),
(69, 89, 4, 1, 0, 0, 0, 1),
(70, 90, 4, 1, 0, 0, 0, 1),
(71, 91, 4, 1, 0, 0, 0, 1),
(72, 92, 4, 1, 0, 0, 0, 1),
(73, 93, 4, 1, 0, 0, 0, 1),
(74, 94, 4, 1, 0, 0, 0, 1),
(75, 95, 4, 1, 0, 0, 0, 1),
(76, 96, 4, 1, 0, 0, 0, 1),
(77, 97, 4, 1, 0, 0, 0, 1),
(78, 98, 4, 1, 0, 0, 0, 1),
(79, 99, 4, 1, 0, 0, 0, 1),
(80, 100, 4, 1, 0, 0, 0, 1),
(81, 101, 4, 1, 0, 0, 0, 1),
(82, 102, 4, 1, 0, 0, 0, 1),
(83, 103, 4, 1, 0, 0, 0, 1),
(84, 104, 4, 1, 0, 0, 0, 1),
(85, 105, 4, 1, 0, 0, 0, 1),
(86, 106, 4, 1, 0, 0, 0, 1),
(87, 107, 4, 1, 0, 0, 0, 1),
(88, 108, 4, 1, 0, 0, 0, 1),
(89, 109, 4, 1, 0, 0, 0, 1),
(90, 110, 4, 1, 0, 0, 0, 1),
(91, 111, 4, 1, 0, 0, 0, 1),
(92, 112, 4, 1, 0, 0, 0, 1),
(93, 114, 4, 1, 0, 0, 0, 1),
(94, 115, 4, 1, 0, 0, 0, 1),
(95, 116, 4, 1, 0, 0, 0, 1),
(96, 117, 4, 1, 0, 0, 0, 1),
(97, 118, 4, 1, 0, 0, 0, 1),
(98, 119, 4, 1, 0, 0, 0, 1),
(99, 120, 4, 1, 0, 0, 0, 1),
(100, 121, 4, 1, 0, 0, 0, 1),
(101, 122, 4, 1, 0, 0, 0, 1),
(102, 123, 4, 1, 0, 0, 0, 1),
(103, 124, 4, 1, 0, 0, 0, 1),
(104, 125, 4, 1, 0, 0, 0, 1),
(105, 126, 4, 1, 0, 0, 0, 1),
(106, 127, 4, 1, 0, 0, 0, 1),
(107, 128, 4, 1, 0, 0, 0, 1),
(108, 129, 4, 1, 0, 0, 0, 1),
(109, 130, 4, 1, 0, 0, 0, 1),
(110, 131, 4, 1, 0, 0, 0, 1),
(111, 132, 4, 1, 0, 0, 0, 1),
(112, 133, 4, 1, 0, 0, 0, 1),
(113, 134, 4, 1, 0, 0, 0, 1),
(114, 135, 4, 1, 0, 0, 0, 1),
(115, 136, 4, 1, 0, 0, 0, 1),
(116, 137, 4, 1, 0, 0, 0, 1),
(117, 138, 4, 1, 0, 0, 0, 1),
(118, 139, 4, 1, 0, 0, 0, 1),
(119, 140, 4, 1, 0, 0, 0, 1),
(120, 141, 4, 1, 0, 0, 0, 1),
(121, 142, 4, 1, 0, 0, 0, 1),
(122, 143, 4, 1, 0, 0, 0, 1),
(123, 144, 4, 1, 0, 0, 0, 1),
(124, 145, 4, 1, 0, 0, 0, 1),
(125, 146, 4, 1, 0, 0, 0, 1),
(126, 147, 4, 1, 0, 0, 0, 1),
(127, 148, 4, 1, 0, 0, 0, 1),
(128, 149, 4, 1, 0, 0, 0, 1),
(129, 150, 4, 1, 0, 0, 0, 1),
(130, 151, 4, 1, 0, 0, 0, 1),
(131, 152, 4, 1, 0, 0, 0, 1),
(132, 153, 4, 1, 0, 0, 0, 1),
(133, 154, 4, 1, 0, 0, 0, 1),
(134, 155, 4, 1, 0, 0, 0, 1),
(135, 156, 4, 1, 0, 0, 0, 1),
(136, 157, 4, 1, 0, 0, 0, 1),
(137, 158, 4, 1, 0, 0, 0, 1),
(138, 159, 4, 1, 0, 0, 0, 1),
(139, 160, 4, 1, 0, 0, 0, 1),
(140, 161, 4, 1, 0, 0, 0, 1),
(141, 162, 4, 1, 0, 0, 0, 1),
(142, 163, 4, 1, 0, 0, 0, 1),
(143, 164, 4, 1, 0, 0, 0, 1),
(144, 165, 4, 1, 0, 0, 0, 1),
(145, 166, 4, 1, 0, 0, 0, 1),
(146, 167, 4, 1, 0, 0, 0, 1),
(147, 168, 4, 1, 0, 0, 0, 1),
(148, 169, 4, 1, 0, 0, 0, 1),
(149, 170, 4, 1, 0, 0, 0, 1),
(150, 171, 4, 1, 0, 0, 0, 1),
(151, 172, 4, 1, 0, 0, 0, 1),
(152, 173, 4, 1, 0, 0, 0, 1),
(153, 174, 4, 1, 0, 0, 0, 1),
(154, 175, 4, 1, 0, 0, 0, 1),
(155, 176, 4, 1, 0, 0, 0, 1),
(156, 177, 4, 1, 0, 0, 0, 1),
(157, 178, 4, 1, 0, 0, 0, 1),
(158, 179, 4, 1, 0, 0, 0, 1),
(159, 180, 4, 1, 0, 0, 0, 1),
(160, 181, 4, 1, 0, 0, 0, 1),
(161, 182, 4, 1, 0, 0, 0, 1),
(162, 183, 4, 1, 0, 0, 0, 1),
(163, 184, 4, 1, 0, 0, 0, 1),
(164, 185, 4, 1, 0, 0, 0, 1),
(165, 186, 4, 1, 0, 0, 0, 1),
(166, 187, 4, 1, 0, 0, 0, 1),
(167, 188, 4, 1, 0, 0, 0, 1),
(168, 189, 4, 1, 0, 0, 0, 1),
(169, 190, 4, 1, 0, 0, 0, 1),
(170, 191, 4, 1, 0, 0, 0, 1),
(171, 192, 4, 1, 0, 0, 0, 1),
(172, 193, 4, 1, 0, 0, 0, 1),
(173, 194, 4, 1, 0, 0, 0, 1),
(174, 195, 4, 1, 0, 0, 0, 1),
(175, 196, 4, 1, 0, 0, 0, 1),
(176, 197, 4, 1, 0, 0, 0, 1),
(177, 198, 4, 1, 0, 0, 0, 1),
(178, 199, 4, 1, 0, 0, 0, 1),
(179, 200, 4, 1, 0, 0, 0, 1),
(180, 201, 4, 1, 0, 0, 0, 1),
(181, 202, 4, 1, 0, 0, 0, 1),
(182, 204, 4, 1, 0, 0, 0, 1),
(183, 205, 4, 1, 0, 0, 0, 1),
(184, 206, 4, 1, 0, 0, 0, 1),
(185, 207, 4, 1, 0, 0, 0, 1),
(186, 208, 4, 1, 0, 0, 0, 1),
(187, 209, 4, 1, 0, 0, 0, 1),
(188, 210, 4, 1, 0, 0, 0, 1),
(189, 211, 4, 1, 0, 0, 0, 1),
(190, 212, 4, 1, 0, 0, 0, 1),
(191, 213, 4, 1, 0, 0, 0, 1),
(192, 214, 4, 1, 0, 0, 0, 1),
(193, 215, 4, 1, 0, 0, 0, 1),
(194, 216, 4, 1, 0, 0, 0, 1),
(195, 217, 4, 1, 0, 0, 0, 1),
(196, 218, 4, 1, 0, 0, 0, 1),
(197, 219, 4, 1, 0, 0, 0, 1),
(198, 220, 4, 1, 0, 0, 0, 1),
(199, 221, 4, 1, 0, 0, 0, 1),
(200, 222, 4, 1, 0, 0, 0, 1),
(201, 224, 4, 1, 0, 0, 0, 1),
(202, 225, 4, 1, 0, 0, 0, 1),
(203, 226, 4, 1, 0, 0, 0, 1),
(204, 227, 4, 1, 0, 0, 0, 1),
(205, 228, 4, 1, 0, 0, 0, 1),
(206, 229, 4, 1, 0, 0, 0, 1),
(207, 230, 4, 1, 0, 0, 0, 1),
(208, 231, 4, 1, 0, 0, 0, 1),
(209, 232, 4, 1, 0, 0, 0, 1),
(210, 233, 4, 1, 0, 0, 0, 1),
(211, 234, 4, 1, 0, 0, 0, 1),
(212, 235, 4, 1, 0, 0, 0, 1),
(213, 236, 4, 1, 0, 0, 0, 1),
(214, 237, 4, 1, 0, 0, 0, 1),
(215, 238, 4, 1, 0, 0, 0, 1),
(216, 239, 4, 1, 0, 0, 0, 1),
(217, 240, 4, 1, 0, 0, 0, 1),
(218, 241, 4, 1, 0, 0, 0, 1),
(219, 242, 4, 1, 0, 0, 0, 1),
(220, 243, 4, 1, 0, 0, 0, 1),
(221, 244, 4, 1, 0, 0, 0, 1),
(222, 245, 4, 1, 0, 0, 0, 1),
(223, 246, 4, 1, 0, 0, 0, 1),
(224, 247, 4, 1, 0, 0, 0, 1),
(225, 248, 4, 1, 0, 0, 0, 1),
(226, 249, 4, 1, 0, 0, 0, 1),
(227, 250, 4, 1, 0, 0, 0, 1),
(228, 251, 4, 1, 0, 0, 0, 1),
(229, 252, 4, 1, 0, 0, 0, 1),
(230, 253, 4, 1, 0, 0, 0, 1),
(231, 254, 4, 1, 0, 0, 0, 1),
(232, 255, 4, 1, 0, 0, 0, 1),
(233, 256, 4, 1, 0, 0, 0, 1),
(234, 257, 4, 1, 0, 0, 0, 1),
(235, 258, 4, 1, 0, 0, 0, 1),
(236, 259, 4, 1, 0, 0, 0, 1),
(237, 260, 4, 1, 0, 0, 0, 1),
(238, 261, 4, 1, 0, 0, 0, 1),
(239, 262, 4, 1, 0, 0, 0, 1),
(240, 263, 4, 1, 0, 0, 0, 1),
(241, 264, 4, 1, 0, 0, 0, 1),
(242, 265, 4, 1, 0, 0, 0, 1),
(243, 266, 4, 1, 0, 0, 0, 1),
(244, 267, 4, 1, 0, 0, 0, 1),
(245, 269, 4, 1, 0, 0, 0, 1),
(246, 270, 4, 1, 0, 0, 0, 1),
(247, 271, 4, 1, 0, 0, 0, 1),
(248, 272, 4, 1, 0, 0, 0, 1),
(249, 273, 4, 1, 0, 0, 0, 1),
(250, 274, 4, 1, 0, 0, 0, 1),
(251, 275, 4, 1, 0, 0, 0, 1),
(252, 276, 4, 1, 0, 0, 0, 1),
(253, 277, 4, 1, 0, 0, 0, 1),
(254, 278, 4, 1, 0, 0, 0, 1),
(255, 279, 4, 1, 0, 0, 0, 1),
(256, 280, 4, 1, 0, 0, 0, 1),
(257, 281, 4, 1, 0, 0, 0, 1),
(258, 282, 4, 1, 0, 0, 0, 1),
(259, 283, 4, 1, 0, 0, 0, 1),
(260, 284, 4, 1, 0, 0, 0, 1),
(261, 285, 4, 1, 0, 0, 0, 1),
(262, 286, 4, 1, 0, 0, 0, 1),
(263, 287, 4, 1, 0, 0, 0, 1),
(264, 288, 4, 1, 0, 0, 0, 1),
(265, 289, 4, 1, 0, 0, 0, 1),
(266, 290, 4, 1, 0, 0, 0, 1),
(267, 291, 4, 1, 0, 0, 0, 1),
(268, 292, 4, 1, 0, 0, 0, 1),
(269, 293, 4, 1, 0, 0, 0, 1),
(270, 294, 4, 1, 0, 0, 0, 1),
(271, 295, 4, 1, 0, 0, 0, 1),
(272, 296, 4, 1, 0, 0, 0, 1),
(273, 297, 4, 1, 0, 0, 0, 1),
(274, 298, 4, 1, 0, 0, 0, 1),
(275, 299, 4, 1, 0, 0, 0, 1),
(276, 300, 4, 1, 0, 0, 0, 1),
(277, 301, 4, 1, 0, 0, 0, 1),
(278, 302, 4, 1, 0, 0, 0, 1),
(279, 303, 4, 1, 0, 0, 0, 1),
(280, 304, 4, 1, 0, 0, 0, 1),
(281, 305, 4, 1, 0, 0, 0, 1),
(282, 306, 4, 1, 0, 0, 0, 1),
(283, 307, 4, 1, 0, 0, 0, 1),
(284, 308, 4, 1, 0, 0, 0, 1),
(285, 309, 4, 1, 0, 0, 0, 1),
(286, 310, 4, 1, 0, 0, 0, 1),
(287, 311, 4, 1, 0, 0, 0, 1),
(288, 312, 4, 1, 0, 0, 0, 1),
(289, 313, 4, 1, 0, 0, 0, 1),
(290, 314, 4, 1, 0, 0, 0, 1),
(291, 315, 4, 1, 0, 0, 0, 1),
(292, 316, 4, 1, 0, 0, 0, 1),
(293, 317, 4, 1, 0, 0, 0, 1),
(294, 318, 4, 1, 0, 0, 0, 1),
(295, 319, 4, 1, 0, 0, 0, 1),
(296, 320, 4, 1, 0, 0, 0, 1),
(297, 321, 4, 1, 0, 0, 0, 1),
(298, 322, 4, 1, 0, 0, 0, 1),
(299, 323, 4, 1, 0, 0, 0, 1),
(300, 324, 4, 1, 0, 0, 0, 1),
(301, 325, 4, 1, 0, 0, 0, 1),
(302, 326, 4, 1, 0, 0, 0, 1),
(303, 327, 4, 1, 0, 0, 0, 1),
(304, 328, 4, 1, 0, 0, 0, 1),
(305, 329, 4, 1, 0, 0, 0, 1),
(306, 330, 4, 1, 0, 0, 0, 1),
(307, 331, 4, 1, 0, 0, 0, 1),
(308, 332, 4, 1, 0, 0, 0, 1),
(309, 333, 4, 1, 0, 0, 0, 1),
(310, 334, 4, 1, 0, 0, 0, 1),
(311, 335, 4, 1, 0, 0, 0, 1),
(312, 336, 4, 1, 0, 0, 0, 1),
(313, 337, 4, 1, 0, 0, 0, 1),
(314, 338, 4, 1, 0, 0, 0, 1),
(315, 339, 4, 1, 0, 0, 0, 1),
(316, 340, 4, 1, 0, 0, 0, 1),
(317, 341, 4, 1, 0, 0, 0, 1),
(318, 342, 4, 1, 0, 0, 0, 1),
(319, 343, 4, 1, 0, 0, 0, 1),
(320, 344, 4, 1, 0, 0, 0, 1),
(321, 345, 4, 1, 0, 0, 0, 1),
(322, 346, 4, 1, 0, 0, 0, 1),
(323, 347, 4, 1, 0, 0, 0, 1),
(324, 348, 4, 1, 0, 0, 0, 1),
(325, 349, 4, 1, 0, 0, 0, 1),
(326, 350, 4, 1, 0, 0, 0, 1),
(327, 351, 4, 1, 0, 0, 0, 1),
(328, 352, 4, 1, 0, 0, 0, 1),
(329, 353, 4, 1, 0, 0, 0, 1),
(330, 354, 4, 1, 0, 0, 0, 1),
(331, 355, 4, 1, 0, 0, 0, 1),
(332, 356, 4, 1, 0, 0, 0, 1),
(333, 357, 4, 1, 0, 0, 0, 1),
(334, 358, 4, 1, 0, 0, 0, 1),
(335, 359, 4, 1, 0, 0, 0, 1),
(336, 360, 4, 1, 0, 0, 0, 1),
(337, 361, 4, 1, 0, 0, 0, 1),
(338, 362, 4, 1, 0, 0, 0, 1),
(339, 363, 4, 1, 0, 0, 0, 1),
(340, 364, 4, 1, 0, 0, 0, 1),
(341, 365, 4, 1, 0, 0, 0, 1),
(342, 366, 4, 1, 0, 0, 0, 1),
(343, 367, 4, 1, 0, 0, 0, 1),
(344, 368, 4, 1, 0, 0, 0, 1),
(345, 369, 4, 1, 0, 0, 0, 1),
(346, 370, 4, 1, 0, 0, 0, 1),
(347, 371, 4, 1, 0, 0, 0, 1),
(348, 372, 4, 1, 0, 0, 0, 1),
(349, 373, 4, 1, 0, 0, 0, 1),
(350, 374, 4, 1, 0, 0, 0, 1),
(351, 375, 4, 1, 0, 0, 0, 1),
(352, 376, 4, 1, 0, 0, 0, 1),
(353, 377, 4, 1, 0, 0, 0, 1),
(354, 378, 4, 1, 0, 0, 0, 1),
(355, 379, 4, 1, 0, 0, 0, 1),
(356, 380, 4, 1, 0, 0, 0, 1),
(357, 381, 4, 1, 0, 0, 0, 1),
(358, 382, 4, 1, 0, 0, 0, 1),
(359, 383, 4, 1, 0, 0, 0, 1),
(360, 384, 4, 1, 0, 0, 0, 1),
(361, 385, 4, 1, 0, 0, 0, 1),
(362, 386, 4, 1, 0, 0, 0, 1),
(363, 387, 4, 1, 0, 0, 0, 1),
(364, 388, 4, 1, 0, 0, 0, 1),
(365, 389, 4, 1, 0, 0, 0, 1),
(366, 390, 4, 1, 0, 0, 0, 1),
(367, 391, 4, 1, 0, 0, 0, 1),
(368, 392, 4, 1, 0, 0, 0, 1),
(369, 393, 4, 1, 0, 0, 0, 1),
(370, 394, 4, 1, 0, 0, 0, 1),
(371, 395, 4, 1, 0, 0, 0, 1),
(372, 396, 4, 1, 0, 0, 0, 1),
(373, 397, 4, 1, 0, 0, 0, 1),
(374, 398, 4, 1, 0, 0, 0, 1),
(375, 399, 4, 1, 0, 0, 0, 1),
(376, 400, 4, 1, 0, 0, 0, 1),
(377, 401, 4, 1, 0, 0, 0, 1),
(378, 402, 4, 1, 0, 0, 0, 1),
(379, 403, 4, 1, 0, 0, 0, 1),
(380, 404, 4, 1, 0, 0, 0, 1),
(381, 405, 4, 1, 0, 0, 0, 1),
(382, 406, 4, 1, 0, 0, 0, 1),
(383, 407, 4, 1, 0, 0, 0, 1),
(384, 408, 4, 1, 0, 0, 0, 1),
(385, 409, 4, 1, 0, 0, 0, 1),
(386, 410, 4, 1, 0, 0, 0, 1),
(387, 411, 4, 1, 0, 0, 0, 1),
(388, 412, 4, 1, 0, 0, 0, 1),
(389, 413, 4, 1, 0, 0, 0, 1),
(390, 414, 4, 1, 0, 0, 0, 1),
(391, 415, 4, 1, 0, 0, 0, 1),
(392, 416, 4, 1, 0, 0, 0, 1),
(393, 417, 4, 1, 0, 0, 0, 1),
(394, 418, 4, 1, 0, 0, 0, 1),
(395, 419, 4, 1, 0, 0, 0, 1),
(396, 420, 4, 1, 0, 0, 0, 1),
(397, 421, 4, 1, 0, 0, 0, 1),
(398, 422, 4, 1, 0, 0, 0, 1),
(399, 423, 4, 1, 0, 0, 0, 1),
(400, 424, 4, 1, 0, 0, 0, 1),
(401, 425, 4, 1, 0, 0, 0, 1),
(402, 426, 4, 1, 0, 0, 0, 1),
(403, 427, 4, 1, 0, 0, 0, 1),
(404, 428, 4, 1, 0, 0, 0, 1),
(405, 429, 4, 1, 0, 0, 0, 1),
(406, 430, 4, 1, 0, 0, 0, 1),
(407, 431, 4, 1, 0, 0, 0, 1),
(408, 432, 4, 1, 0, 0, 0, 1),
(409, 433, 4, 1, 0, 0, 0, 1),
(410, 434, 4, 1, 0, 0, 0, 1),
(411, 435, 4, 1, 0, 0, 0, 1),
(412, 436, 4, 1, 0, 0, 0, 1),
(413, 437, 4, 1, 0, 0, 0, 1),
(414, 438, 4, 1, 0, 0, 0, 1),
(415, 439, 4, 1, 0, 0, 0, 1),
(416, 440, 4, 1, 0, 0, 0, 1),
(417, 441, 4, 1, 0, 0, 0, 1),
(418, 442, 4, 1, 0, 0, 0, 1),
(419, 443, 4, 1, 0, 0, 0, 1),
(420, 444, 4, 1, 0, 0, 0, 1),
(421, 445, 4, 1, 0, 0, 0, 1),
(422, 446, 4, 1, 0, 0, 0, 1),
(423, 447, 4, 1, 0, 0, 0, 1),
(424, 448, 4, 1, 0, 0, 0, 1),
(425, 449, 4, 1, 0, 0, 0, 1),
(426, 450, 4, 1, 0, 0, 0, 1),
(427, 451, 4, 1, 0, 0, 0, 1),
(428, 452, 4, 1, 0, 0, 0, 1),
(429, 453, 4, 1, 0, 0, 0, 1),
(430, 454, 4, 1, 0, 0, 0, 1),
(431, 455, 4, 1, 0, 0, 0, 1),
(432, 456, 4, 1, 0, 0, 0, 1),
(433, 457, 4, 1, 0, 0, 0, 1),
(434, 458, 4, 1, 0, 0, 0, 1),
(435, 459, 4, 1, 0, 0, 0, 1),
(436, 460, 4, 1, 0, 0, 0, 1),
(437, 461, 4, 1, 0, 0, 0, 1),
(438, 462, 4, 1, 0, 0, 0, 1),
(439, 463, 4, 1, 0, 0, 0, 1),
(440, 464, 4, 1, 0, 0, 0, 1),
(441, 465, 4, 1, 0, 0, 0, 1),
(442, 466, 4, 1, 0, 0, 0, 1),
(443, 467, 4, 1, 0, 0, 0, 1),
(444, 468, 4, 1, 0, 0, 0, 1),
(445, 469, 4, 1, 0, 0, 0, 1),
(446, 470, 4, 1, 0, 0, 0, 1),
(447, 471, 4, 1, 0, 0, 0, 1),
(448, 472, 4, 1, 0, 0, 0, 1),
(449, 473, 4, 1, 0, 0, 0, 1),
(450, 474, 4, 1, 0, 0, 0, 1),
(451, 475, 4, 1, 0, 0, 0, 1),
(452, 476, 4, 1, 0, 0, 0, 1),
(453, 477, 4, 1, 0, 0, 0, 1),
(454, 478, 4, 1, 0, 0, 0, 1),
(455, 479, 4, 1, 0, 0, 0, 1),
(456, 480, 4, 1, 0, 0, 0, 1),
(457, 481, 4, 1, 0, 0, 0, 1),
(458, 482, 4, 1, 0, 0, 0, 1),
(459, 203, 4, 1, 0, 0, 0, 1),
(460, 483, 4, 1, 0, 0, 0, 1),
(461, 484, 4, 1, 0, 0, 0, 1),
(462, 485, 4, 1, 0, 0, 0, 1),
(463, 486, 4, 1, 0, 0, 0, 1),
(464, 487, 4, 1, 0, 0, 0, 1),
(465, 488, 4, 1, 0, 0, 0, 1),
(466, 489, 4, 1, 0, 0, 0, 1),
(467, 490, 4, 1, 0, 0, 0, 1),
(468, 491, 4, 1, 0, 0, 0, 1),
(469, 492, 4, 1, 0, 0, 0, 1),
(470, 493, 4, 1, 0, 0, 0, 1),
(471, 494, 4, 1, 0, 0, 0, 1),
(472, 495, 4, 1, 0, 0, 0, 1),
(473, 496, 4, 1, 0, 0, 0, 1),
(474, 497, 4, 1, 0, 0, 0, 1),
(475, 498, 4, 1, 0, 0, 0, 1),
(476, 499, 4, 1, 0, 0, 0, 1),
(477, 500, 4, 1, 0, 0, 0, 1),
(478, 501, 4, 1, 0, 0, 0, 1),
(479, 502, 4, 1, 0, 0, 0, 1),
(480, 503, 4, 1, 0, 0, 0, 1),
(481, 504, 4, 1, 0, 0, 0, 1),
(482, 505, 4, 1, 0, 0, 0, 1),
(483, 506, 4, 1, 0, 0, 0, 1),
(484, 507, 4, 1, 0, 0, 0, 1),
(485, 508, 4, 1, 0, 0, 0, 1),
(486, 509, 4, 1, 0, 0, 0, 1),
(487, 510, 4, 1, 0, 0, 0, 1),
(488, 511, 4, 1, 0, 0, 0, 1),
(489, 512, 4, 1, 0, 0, 0, 1),
(490, 513, 4, 1, 0, 0, 0, 1),
(491, 514, 4, 1, 0, 0, 0, 1),
(492, 515, 4, 1, 0, 0, 0, 1),
(493, 516, 4, 1, 0, 0, 0, 1),
(494, 5, 191, 1, 0, 0, 0, 51),
(495, 17, 191, 1, 0, 0, 0, 51),
(496, 23, 191, 1, 0, 0, 0, 51),
(497, 24, 191, 1, 0, 0, 0, 51),
(498, 25, 191, 1, 0, 0, 0, 51),
(499, 26, 191, 1, 0, 0, 0, 51),
(500, 27, 191, 1, 0, 0, 0, 51),
(501, 28, 191, 1, 0, 0, 0, 51),
(502, 29, 191, 1, 0, 0, 0, 51),
(503, 30, 191, 1, 0, 0, 0, 51),
(504, 31, 191, 1, 0, 0, 0, 51),
(505, 32, 191, 1, 0, 0, 0, 51),
(506, 33, 191, 1, 0, 0, 0, 51),
(507, 34, 191, 1, 0, 0, 0, 51),
(508, 35, 191, 1, 0, 0, 0, 51),
(509, 36, 191, 1, 0, 0, 0, 51),
(510, 37, 191, 1, 0, 0, 0, 51),
(511, 38, 191, 1, 0, 0, 0, 51),
(512, 39, 191, 1, 0, 0, 0, 51),
(513, 40, 191, 1, 0, 0, 0, 51),
(514, 41, 191, 1, 0, 0, 0, 51),
(515, 42, 191, 1, 0, 0, 0, 51),
(516, 43, 191, 1, 0, 0, 0, 51),
(517, 44, 191, 1, 0, 0, 0, 51),
(518, 45, 191, 1, 0, 0, 0, 51),
(519, 46, 191, 1, 0, 0, 0, 51),
(520, 47, 191, 1, 0, 0, 0, 51),
(521, 48, 191, 1, 0, 0, 0, 51),
(522, 49, 191, 1, 0, 0, 0, 51),
(523, 50, 191, 1, 0, 0, 0, 51),
(524, 51, 191, 1, 0, 0, 0, 51),
(525, 52, 191, 1, 0, 0, 0, 51),
(526, 53, 191, 1, 0, 0, 0, 51),
(527, 54, 191, 1, 0, 0, 0, 51),
(528, 55, 191, 1, 0, 0, 0, 51),
(529, 56, 191, 1, 0, 0, 0, 51),
(530, 57, 191, 1, 0, 0, 0, 51),
(531, 58, 191, 1, 0, 0, 0, 51),
(532, 59, 191, 1, 0, 0, 0, 51),
(533, 60, 191, 1, 0, 0, 0, 51),
(534, 61, 191, 1, 0, 0, 0, 51),
(535, 62, 191, 1, 0, 0, 0, 51),
(536, 63, 191, 1, 0, 0, 0, 51),
(537, 64, 191, 1, 0, 0, 0, 51),
(538, 65, 191, 1, 0, 0, 0, 51),
(539, 66, 191, 1, 0, 0, 0, 51),
(540, 67, 191, 1, 0, 0, 0, 51),
(541, 68, 191, 1, 0, 0, 0, 51),
(542, 69, 191, 1, 0, 0, 0, 51),
(543, 70, 191, 1, 0, 0, 0, 51),
(544, 71, 191, 1, 0, 0, 0, 51),
(545, 72, 191, 1, 0, 0, 0, 51),
(546, 73, 191, 1, 0, 0, 0, 51),
(547, 74, 191, 1, 0, 0, 0, 51),
(548, 75, 191, 1, 0, 0, 0, 51),
(549, 76, 191, 1, 0, 0, 0, 51),
(550, 77, 191, 1, 0, 0, 0, 51),
(551, 78, 191, 1, 0, 0, 0, 51),
(552, 79, 191, 1, 0, 0, 0, 51),
(553, 80, 191, 1, 0, 0, 0, 51),
(554, 81, 191, 1, 0, 0, 0, 51),
(555, 82, 191, 1, 0, 0, 0, 51),
(556, 83, 191, 1, 0, 0, 0, 51),
(557, 84, 191, 1, 0, 0, 0, 51),
(558, 85, 191, 1, 0, 0, 0, 51),
(559, 86, 191, 1, 0, 0, 0, 51),
(560, 87, 191, 1, 0, 0, 0, 51),
(561, 88, 191, 1, 0, 0, 0, 51),
(562, 89, 191, 1, 0, 0, 0, 51),
(563, 90, 191, 1, 0, 0, 0, 51),
(564, 91, 191, 1, 0, 0, 0, 51),
(565, 92, 191, 1, 0, 0, 0, 51),
(566, 93, 191, 1, 0, 0, 0, 51),
(567, 94, 191, 1, 0, 0, 0, 51),
(568, 95, 191, 1, 0, 0, 0, 51),
(569, 96, 191, 1, 0, 0, 0, 51),
(570, 97, 191, 1, 0, 0, 0, 51),
(571, 98, 191, 1, 0, 0, 0, 51),
(572, 99, 191, 1, 0, 0, 0, 51),
(573, 100, 191, 1, 0, 0, 0, 51),
(574, 101, 191, 1, 0, 0, 0, 51),
(575, 102, 191, 1, 0, 0, 0, 51),
(576, 103, 191, 1, 0, 0, 0, 51),
(577, 104, 191, 1, 0, 0, 0, 51),
(578, 105, 191, 1, 0, 0, 0, 51),
(579, 106, 191, 1, 0, 0, 0, 51),
(580, 107, 191, 1, 0, 0, 0, 51),
(581, 108, 191, 1, 0, 0, 0, 51),
(582, 109, 191, 1, 0, 0, 0, 51),
(583, 110, 191, 1, 0, 0, 0, 51),
(584, 111, 191, 1, 0, 0, 0, 51),
(585, 112, 191, 1, 0, 0, 0, 51),
(586, 114, 191, 1, 0, 0, 0, 51),
(587, 115, 191, 1, 0, 0, 0, 51),
(588, 116, 191, 1, 0, 0, 0, 51),
(589, 117, 191, 1, 0, 0, 0, 51),
(590, 118, 191, 1, 0, 0, 0, 51),
(591, 119, 191, 1, 0, 0, 0, 51),
(592, 120, 191, 1, 0, 0, 0, 51),
(593, 121, 191, 1, 0, 0, 0, 51),
(594, 122, 191, 1, 0, 0, 0, 51),
(595, 123, 191, 1, 0, 0, 0, 51),
(596, 124, 191, 1, 0, 0, 0, 51),
(597, 125, 191, 1, 0, 0, 0, 51),
(598, 126, 191, 1, 0, 0, 0, 51),
(599, 127, 191, 1, 0, 0, 0, 51),
(600, 128, 191, 1, 0, 0, 0, 51),
(601, 129, 191, 1, 0, 0, 0, 51),
(602, 130, 191, 1, 0, 0, 0, 51),
(603, 131, 191, 1, 0, 0, 0, 51),
(604, 132, 191, 1, 0, 0, 0, 51),
(605, 133, 191, 1, 0, 0, 0, 51),
(606, 134, 191, 1, 0, 0, 0, 51),
(607, 135, 191, 1, 0, 0, 0, 51),
(608, 136, 191, 1, 0, 0, 0, 51),
(609, 137, 191, 1, 0, 0, 0, 51),
(610, 138, 191, 1, 0, 0, 0, 51),
(611, 139, 191, 1, 0, 0, 0, 51),
(612, 140, 191, 1, 0, 0, 0, 51),
(613, 141, 191, 1, 0, 0, 0, 51),
(614, 142, 191, 1, 0, 0, 0, 51),
(615, 143, 191, 1, 0, 0, 0, 51),
(616, 144, 191, 1, 0, 0, 0, 51),
(617, 145, 191, 1, 0, 0, 0, 51),
(618, 146, 191, 1, 0, 0, 0, 51),
(619, 147, 191, 1, 0, 0, 0, 51),
(620, 148, 191, 1, 0, 0, 0, 51),
(621, 149, 191, 1, 0, 0, 0, 51),
(622, 150, 191, 1, 0, 0, 0, 51),
(623, 151, 191, 1, 0, 0, 0, 51),
(624, 152, 191, 1, 0, 0, 0, 51),
(625, 153, 191, 1, 0, 0, 0, 51),
(626, 154, 191, 1, 0, 0, 0, 51),
(627, 155, 191, 1, 0, 0, 0, 51),
(628, 156, 191, 1, 0, 0, 0, 51),
(629, 157, 191, 1, 0, 0, 0, 51),
(630, 158, 191, 1, 0, 0, 0, 51),
(631, 159, 191, 1, 0, 0, 0, 51),
(632, 160, 191, 1, 0, 0, 0, 51),
(633, 161, 191, 1, 0, 0, 0, 51),
(634, 162, 191, 1, 0, 0, 0, 51),
(635, 163, 191, 1, 0, 0, 0, 51),
(636, 164, 191, 1, 0, 0, 0, 51),
(637, 165, 191, 1, 0, 0, 0, 51),
(638, 166, 191, 1, 0, 0, 0, 51),
(639, 167, 191, 1, 0, 0, 0, 51),
(640, 168, 191, 1, 0, 0, 0, 51),
(641, 169, 191, 1, 0, 0, 0, 51),
(642, 170, 191, 1, 0, 0, 0, 51),
(643, 171, 191, 1, 0, 0, 0, 51),
(644, 172, 191, 1, 0, 0, 0, 51),
(645, 173, 191, 1, 0, 0, 0, 51),
(646, 174, 191, 1, 0, 0, 0, 51),
(647, 175, 191, 1, 0, 0, 0, 51),
(648, 176, 191, 1, 0, 0, 0, 51),
(649, 177, 191, 1, 0, 0, 0, 51),
(650, 178, 191, 1, 0, 0, 0, 51),
(651, 179, 191, 1, 0, 0, 0, 51),
(652, 180, 191, 1, 0, 0, 0, 51),
(653, 181, 191, 1, 0, 0, 0, 51),
(654, 182, 191, 1, 0, 0, 0, 51),
(655, 183, 191, 1, 0, 0, 0, 51),
(656, 184, 191, 1, 0, 0, 0, 51),
(657, 185, 191, 1, 0, 0, 0, 51),
(658, 186, 191, 1, 0, 0, 0, 51),
(659, 187, 191, 1, 0, 0, 0, 51),
(660, 188, 191, 1, 0, 0, 0, 51),
(661, 189, 191, 1, 0, 0, 0, 51),
(662, 190, 191, 1, 0, 0, 0, 51),
(663, 191, 191, 1, 0, 0, 0, 51),
(664, 192, 191, 1, 0, 0, 0, 51),
(665, 193, 191, 1, 0, 0, 0, 51),
(666, 194, 191, 1, 0, 0, 0, 51),
(667, 195, 191, 1, 0, 0, 0, 51),
(668, 196, 191, 1, 0, 0, 0, 51),
(669, 197, 191, 1, 0, 0, 0, 51),
(670, 198, 191, 1, 0, 0, 0, 51),
(671, 199, 191, 1, 0, 0, 0, 51),
(672, 200, 191, 1, 0, 0, 0, 51),
(673, 201, 191, 1, 0, 0, 0, 51),
(674, 202, 191, 1, 0, 0, 0, 51),
(675, 203, 191, 1, 0, 0, 0, 51),
(676, 204, 191, 1, 0, 0, 0, 51),
(677, 205, 191, 1, 0, 0, 0, 51),
(678, 206, 191, 1, 0, 0, 0, 51),
(679, 207, 191, 1, 0, 0, 0, 51),
(680, 208, 191, 1, 0, 0, 0, 51),
(681, 209, 191, 1, 0, 0, 0, 51),
(682, 210, 191, 1, 0, 0, 0, 51),
(683, 211, 191, 1, 0, 0, 0, 51),
(684, 212, 191, 1, 0, 0, 0, 51),
(685, 213, 191, 1, 0, 0, 0, 51),
(686, 214, 191, 1, 0, 0, 0, 51),
(687, 215, 191, 1, 0, 0, 0, 51),
(688, 216, 191, 1, 0, 0, 0, 51),
(689, 217, 191, 1, 0, 0, 0, 51),
(690, 218, 191, 1, 0, 0, 0, 51),
(691, 219, 191, 1, 0, 0, 0, 51),
(692, 220, 191, 1, 0, 0, 0, 51),
(693, 221, 191, 1, 0, 0, 0, 51),
(694, 222, 191, 1, 0, 0, 0, 51),
(695, 224, 191, 1, 0, 0, 0, 51),
(696, 225, 191, 1, 0, 0, 0, 51),
(697, 226, 191, 1, 0, 0, 0, 51),
(698, 227, 191, 1, 0, 0, 0, 51),
(699, 228, 191, 1, 0, 0, 0, 51),
(700, 229, 191, 1, 0, 0, 0, 51),
(701, 230, 191, 1, 0, 0, 0, 51),
(702, 231, 191, 1, 0, 0, 0, 51),
(703, 232, 191, 1, 0, 0, 0, 51),
(704, 233, 191, 1, 0, 0, 0, 51),
(705, 234, 191, 1, 0, 0, 0, 51),
(706, 235, 191, 1, 0, 0, 0, 51),
(707, 236, 191, 1, 0, 0, 0, 51),
(708, 237, 191, 1, 0, 0, 0, 51),
(709, 238, 191, 1, 0, 0, 0, 51),
(710, 239, 191, 1, 0, 0, 0, 51),
(711, 240, 191, 1, 0, 0, 0, 51),
(712, 241, 191, 1, 0, 0, 0, 51),
(713, 242, 191, 1, 0, 0, 0, 51),
(714, 243, 191, 1, 0, 0, 0, 51),
(715, 244, 191, 1, 0, 0, 0, 51),
(716, 245, 191, 1, 0, 0, 0, 51),
(717, 246, 191, 1, 0, 0, 0, 51),
(718, 247, 191, 1, 0, 0, 0, 51),
(719, 248, 191, 1, 0, 0, 0, 51),
(720, 249, 191, 1, 0, 0, 0, 51),
(721, 250, 191, 1, 0, 0, 0, 51),
(722, 251, 191, 1, 0, 0, 0, 51),
(723, 252, 191, 1, 0, 0, 0, 51),
(724, 253, 191, 1, 0, 0, 0, 51),
(725, 254, 191, 1, 0, 0, 0, 51),
(726, 255, 191, 1, 0, 0, 0, 51),
(727, 256, 191, 1, 0, 0, 0, 51),
(728, 257, 191, 1, 0, 0, 0, 51),
(729, 258, 191, 1, 0, 0, 0, 51),
(730, 259, 191, 1, 0, 0, 0, 51),
(731, 260, 191, 1, 0, 0, 0, 51),
(732, 261, 191, 1, 0, 0, 0, 51),
(733, 262, 191, 1, 0, 0, 0, 51),
(734, 263, 191, 1, 0, 0, 0, 51),
(735, 264, 191, 1, 0, 0, 0, 51),
(736, 265, 191, 1, 0, 0, 0, 51),
(737, 266, 191, 1, 0, 0, 0, 51),
(738, 267, 191, 1, 0, 0, 0, 51),
(739, 269, 191, 1, 0, 0, 0, 51),
(740, 270, 191, 1, 0, 0, 0, 51),
(741, 271, 191, 1, 0, 0, 0, 51),
(742, 272, 191, 1, 0, 0, 0, 51),
(743, 273, 191, 1, 0, 0, 0, 51),
(744, 274, 191, 1, 0, 0, 0, 51),
(745, 275, 191, 1, 0, 0, 0, 51),
(746, 276, 191, 1, 0, 0, 0, 51),
(747, 277, 191, 1, 0, 0, 0, 51),
(748, 278, 191, 1, 0, 0, 0, 51),
(749, 279, 191, 1, 0, 0, 0, 51),
(750, 280, 191, 1, 0, 0, 0, 51),
(751, 281, 191, 1, 0, 0, 0, 51),
(752, 282, 191, 1, 0, 0, 0, 51),
(753, 283, 191, 1, 0, 0, 0, 51),
(754, 284, 191, 1, 0, 0, 0, 51),
(755, 285, 191, 1, 0, 0, 0, 51),
(756, 286, 191, 1, 0, 0, 0, 51),
(757, 287, 191, 1, 0, 0, 0, 51),
(758, 288, 191, 1, 0, 0, 0, 51),
(759, 289, 191, 1, 0, 0, 0, 51),
(760, 290, 191, 1, 0, 0, 0, 51),
(761, 291, 191, 1, 0, 0, 0, 51),
(762, 292, 191, 1, 0, 0, 0, 51),
(763, 293, 191, 1, 0, 0, 0, 51),
(764, 294, 191, 1, 0, 0, 0, 51),
(765, 295, 191, 1, 0, 0, 0, 51),
(766, 296, 191, 1, 0, 0, 0, 51),
(767, 297, 191, 1, 0, 0, 0, 51),
(768, 298, 191, 1, 0, 0, 0, 51),
(769, 299, 191, 1, 0, 0, 0, 51),
(770, 300, 191, 1, 0, 0, 0, 51),
(771, 301, 191, 1, 0, 0, 0, 51),
(772, 302, 191, 1, 0, 0, 0, 51),
(773, 303, 191, 1, 0, 0, 0, 51),
(774, 304, 191, 1, 0, 0, 0, 51),
(775, 305, 191, 1, 0, 0, 0, 51),
(776, 306, 191, 1, 0, 0, 0, 51),
(777, 307, 191, 1, 0, 0, 0, 51),
(778, 308, 191, 1, 0, 0, 0, 51),
(779, 309, 191, 1, 0, 0, 0, 51),
(780, 310, 191, 1, 0, 0, 0, 51),
(781, 311, 191, 1, 0, 0, 0, 51),
(782, 312, 191, 1, 0, 0, 0, 51),
(783, 313, 191, 1, 0, 0, 0, 51),
(784, 314, 191, 1, 0, 0, 0, 51),
(785, 315, 191, 1, 0, 0, 0, 51),
(786, 316, 191, 1, 0, 0, 0, 51),
(787, 317, 191, 1, 0, 0, 0, 51),
(788, 318, 191, 1, 0, 0, 0, 51),
(789, 319, 191, 1, 0, 0, 0, 51),
(790, 320, 191, 1, 0, 0, 0, 51),
(791, 321, 191, 1, 0, 0, 0, 51),
(792, 322, 191, 1, 0, 0, 0, 51),
(793, 323, 191, 1, 0, 0, 0, 51),
(794, 324, 191, 1, 0, 0, 0, 51),
(795, 325, 191, 1, 0, 0, 0, 51),
(796, 326, 191, 1, 0, 0, 0, 51),
(797, 327, 191, 1, 0, 0, 0, 51),
(798, 328, 191, 1, 0, 0, 0, 51),
(799, 329, 191, 1, 0, 0, 0, 51),
(800, 330, 191, 1, 0, 0, 0, 51),
(801, 331, 191, 1, 0, 0, 0, 51),
(802, 332, 191, 1, 0, 0, 0, 51),
(803, 333, 191, 1, 0, 0, 0, 51),
(804, 334, 191, 1, 0, 0, 0, 51),
(805, 335, 191, 1, 0, 0, 0, 51),
(806, 336, 191, 1, 0, 0, 0, 51),
(807, 337, 191, 1, 0, 0, 0, 51),
(808, 338, 191, 1, 0, 0, 0, 51),
(809, 339, 191, 1, 0, 0, 0, 51),
(810, 340, 191, 1, 0, 0, 0, 51),
(811, 341, 191, 1, 0, 0, 0, 51),
(812, 342, 191, 1, 0, 0, 0, 51),
(813, 343, 191, 1, 0, 0, 0, 51),
(814, 344, 191, 1, 0, 0, 0, 51),
(815, 345, 191, 1, 0, 0, 0, 51),
(816, 346, 191, 1, 0, 0, 0, 51),
(817, 347, 191, 1, 0, 0, 0, 51),
(818, 348, 191, 1, 0, 0, 0, 51),
(819, 349, 191, 1, 0, 0, 0, 51),
(820, 350, 191, 1, 0, 0, 0, 51),
(821, 351, 191, 1, 0, 0, 0, 51),
(822, 352, 191, 1, 0, 0, 0, 51),
(823, 353, 191, 1, 0, 0, 0, 51),
(824, 354, 191, 1, 0, 0, 0, 51),
(825, 355, 191, 1, 0, 0, 0, 51),
(826, 356, 191, 1, 0, 0, 0, 51),
(827, 357, 191, 1, 0, 0, 0, 51),
(828, 358, 191, 1, 0, 0, 0, 51),
(829, 359, 191, 1, 0, 0, 0, 51),
(830, 360, 191, 1, 0, 0, 0, 51),
(831, 361, 191, 1, 0, 0, 0, 51),
(832, 362, 191, 1, 0, 0, 0, 51),
(833, 363, 191, 1, 0, 0, 0, 51),
(834, 364, 191, 1, 0, 0, 0, 51),
(835, 365, 191, 1, 0, 0, 0, 51),
(836, 366, 191, 1, 0, 0, 0, 51),
(837, 367, 191, 1, 0, 0, 0, 51),
(838, 368, 191, 1, 0, 0, 0, 51),
(839, 369, 191, 1, 0, 0, 0, 51),
(840, 370, 191, 1, 0, 0, 0, 51),
(841, 371, 191, 1, 0, 0, 0, 51),
(842, 372, 191, 1, 0, 0, 0, 51),
(843, 373, 191, 1, 0, 0, 0, 51),
(844, 374, 191, 1, 0, 0, 0, 51),
(845, 375, 191, 1, 0, 0, 0, 51),
(846, 376, 191, 1, 0, 0, 0, 51),
(847, 377, 191, 1, 0, 0, 0, 51),
(848, 378, 191, 1, 0, 0, 0, 51),
(849, 379, 191, 1, 0, 0, 0, 51),
(850, 380, 191, 1, 0, 0, 0, 51),
(851, 381, 191, 1, 0, 0, 0, 51),
(852, 382, 191, 1, 0, 0, 0, 51),
(853, 383, 191, 1, 0, 0, 0, 51),
(854, 384, 191, 1, 0, 0, 0, 51),
(855, 385, 191, 1, 0, 0, 0, 51),
(856, 386, 191, 1, 0, 0, 0, 51),
(857, 387, 191, 1, 0, 0, 0, 51),
(858, 388, 191, 1, 0, 0, 0, 51),
(859, 389, 191, 1, 0, 0, 0, 51),
(860, 390, 191, 1, 0, 0, 0, 51),
(861, 391, 191, 1, 0, 0, 0, 51),
(862, 392, 191, 1, 0, 0, 0, 51),
(863, 393, 191, 1, 0, 0, 0, 51),
(864, 394, 191, 1, 0, 0, 0, 51),
(865, 395, 191, 1, 0, 0, 0, 51),
(866, 396, 191, 1, 0, 0, 0, 51),
(867, 397, 191, 1, 0, 0, 0, 51),
(868, 398, 191, 1, 0, 0, 0, 51),
(869, 399, 191, 1, 0, 0, 0, 51),
(870, 400, 191, 1, 0, 0, 0, 51),
(871, 401, 191, 1, 0, 0, 0, 51),
(872, 402, 191, 1, 0, 0, 0, 51),
(873, 403, 191, 1, 0, 0, 0, 51),
(874, 404, 191, 1, 0, 0, 0, 51),
(875, 405, 191, 1, 0, 0, 0, 51),
(876, 406, 191, 1, 0, 0, 0, 51),
(877, 407, 191, 1, 0, 0, 0, 51),
(878, 408, 191, 1, 0, 0, 0, 51),
(879, 409, 191, 1, 0, 0, 0, 51),
(880, 410, 191, 1, 0, 0, 0, 51),
(881, 411, 191, 1, 0, 0, 0, 51),
(882, 412, 191, 1, 0, 0, 0, 51),
(883, 413, 191, 1, 0, 0, 0, 51),
(884, 414, 191, 1, 0, 0, 0, 51),
(885, 415, 191, 1, 0, 0, 0, 51),
(886, 416, 191, 1, 0, 0, 0, 51),
(887, 417, 191, 1, 0, 0, 0, 51),
(888, 418, 191, 1, 0, 0, 0, 51),
(889, 419, 191, 1, 0, 0, 0, 51),
(890, 420, 191, 1, 0, 0, 0, 51),
(891, 421, 191, 1, 0, 0, 0, 51),
(892, 422, 191, 1, 0, 0, 0, 51),
(893, 423, 191, 1, 0, 0, 0, 51),
(894, 424, 191, 1, 0, 0, 0, 51),
(895, 425, 191, 1, 0, 0, 0, 51),
(896, 426, 191, 1, 0, 0, 0, 51),
(897, 427, 191, 1, 0, 0, 0, 51),
(898, 428, 191, 1, 0, 0, 0, 51),
(899, 429, 191, 1, 0, 0, 0, 51),
(900, 430, 191, 1, 0, 0, 0, 51),
(901, 431, 191, 1, 0, 0, 0, 51),
(902, 432, 191, 1, 0, 0, 0, 51),
(903, 433, 191, 1, 0, 0, 0, 51),
(904, 434, 191, 1, 0, 0, 0, 51),
(905, 435, 191, 1, 0, 0, 0, 51),
(906, 436, 191, 1, 0, 0, 0, 51),
(907, 437, 191, 1, 0, 0, 0, 51),
(908, 438, 191, 1, 0, 0, 0, 51),
(909, 439, 191, 1, 0, 0, 0, 51),
(910, 440, 191, 1, 0, 0, 0, 51),
(911, 441, 191, 1, 0, 0, 0, 51),
(912, 442, 191, 1, 0, 0, 0, 51),
(913, 443, 191, 1, 0, 0, 0, 51),
(914, 444, 191, 1, 0, 0, 0, 51),
(915, 445, 191, 1, 0, 0, 0, 51),
(916, 446, 191, 1, 0, 0, 0, 51),
(917, 447, 191, 1, 0, 0, 0, 51),
(918, 448, 191, 1, 0, 0, 0, 51),
(919, 449, 191, 1, 0, 0, 0, 51),
(920, 450, 191, 1, 0, 0, 0, 51),
(921, 451, 191, 1, 0, 0, 0, 51),
(922, 452, 191, 1, 0, 0, 0, 51),
(923, 453, 191, 1, 0, 0, 0, 51),
(924, 454, 191, 1, 0, 0, 0, 51),
(925, 455, 191, 1, 0, 0, 0, 51),
(926, 456, 191, 1, 0, 0, 0, 51),
(927, 457, 191, 1, 0, 0, 0, 51),
(928, 458, 191, 1, 0, 0, 0, 51),
(929, 459, 191, 1, 0, 0, 0, 51),
(930, 460, 191, 1, 0, 0, 0, 51),
(931, 461, 191, 1, 0, 0, 0, 51),
(932, 462, 191, 1, 0, 0, 0, 51),
(933, 463, 191, 1, 0, 0, 0, 51),
(934, 464, 191, 1, 0, 0, 0, 51),
(935, 465, 191, 1, 0, 0, 0, 51),
(936, 466, 191, 1, 0, 0, 0, 51),
(937, 467, 191, 1, 0, 0, 0, 51),
(938, 468, 191, 1, 0, 0, 0, 51),
(939, 469, 191, 1, 0, 0, 0, 51),
(940, 470, 191, 1, 0, 0, 0, 51),
(941, 471, 191, 1, 0, 0, 0, 51),
(942, 472, 191, 1, 0, 0, 0, 51),
(943, 473, 191, 1, 0, 0, 0, 51),
(944, 474, 191, 1, 0, 0, 0, 51),
(945, 475, 191, 1, 0, 0, 0, 51),
(946, 476, 191, 1, 0, 0, 0, 51),
(947, 477, 191, 1, 0, 0, 0, 51),
(948, 478, 191, 1, 0, 0, 0, 51),
(949, 479, 191, 1, 0, 0, 0, 51),
(950, 480, 191, 1, 0, 0, 0, 51),
(951, 481, 191, 1, 0, 0, 0, 51),
(952, 482, 191, 1, 0, 0, 0, 51),
(953, 483, 191, 1, 0, 0, 0, 51),
(954, 484, 191, 1, 0, 0, 0, 51),
(955, 485, 191, 1, 0, 0, 0, 51),
(956, 486, 191, 1, 0, 0, 0, 51),
(957, 487, 191, 1, 0, 0, 0, 51),
(958, 488, 191, 1, 0, 0, 0, 51),
(959, 489, 191, 1, 0, 0, 0, 51),
(960, 490, 191, 1, 0, 0, 0, 51),
(961, 491, 191, 1, 0, 0, 0, 51),
(962, 492, 191, 1, 0, 0, 0, 51),
(963, 493, 191, 1, 0, 0, 0, 51),
(964, 494, 191, 1, 0, 0, 0, 51),
(965, 495, 191, 1, 0, 0, 0, 51),
(966, 496, 191, 1, 0, 0, 0, 51),
(967, 497, 191, 1, 0, 0, 0, 51),
(968, 498, 191, 1, 0, 0, 0, 51),
(969, 499, 191, 1, 0, 0, 0, 51),
(970, 500, 191, 1, 0, 0, 0, 51),
(971, 501, 191, 1, 0, 0, 0, 51),
(972, 502, 191, 1, 0, 0, 0, 51),
(973, 503, 191, 1, 0, 0, 0, 51),
(974, 504, 191, 1, 0, 0, 0, 51),
(975, 505, 191, 1, 0, 0, 0, 51),
(976, 506, 191, 1, 0, 0, 0, 51),
(977, 507, 191, 1, 0, 0, 0, 51),
(978, 508, 191, 1, 0, 0, 0, 51),
(979, 509, 191, 1, 0, 0, 0, 51),
(980, 510, 191, 1, 0, 0, 0, 51),
(981, 511, 191, 1, 0, 0, 0, 51),
(982, 512, 191, 1, 0, 0, 0, 51),
(983, 513, 191, 1, 0, 0, 0, 51),
(984, 514, 191, 1, 0, 0, 0, 51),
(985, 515, 191, 1, 0, 0, 0, 51),
(986, 516, 191, 1, 0, 0, 0, 51),
(987, 5, 4, 1, 0, 0, 0, 53),
(988, 17, 4, 1, 0, 0, 0, 53),
(989, 23, 4, 1, 0, 0, 0, 53),
(990, 24, 4, 1, 0, 0, 0, 53),
(991, 25, 4, 1, 0, 0, 0, 53),
(992, 26, 4, 1, 0, 0, 0, 53),
(993, 27, 4, 1, 0, 0, 0, 53),
(994, 28, 4, 1, 0, 0, 0, 53),
(995, 29, 4, 1, 0, 0, 0, 53),
(996, 30, 4, 1, 0, 0, 0, 53),
(997, 31, 4, 1, 0, 0, 0, 53),
(998, 32, 4, 1, 0, 0, 0, 53),
(999, 33, 4, 1, 0, 0, 0, 53),
(1000, 34, 4, 1, 0, 0, 0, 53),
(1001, 35, 4, 1, 0, 0, 0, 53),
(1002, 36, 4, 1, 0, 0, 0, 53),
(1003, 37, 4, 1, 0, 0, 0, 53),
(1004, 38, 4, 1, 0, 0, 0, 53),
(1005, 39, 4, 1, 0, 0, 0, 53),
(1006, 40, 4, 1, 0, 0, 0, 53),
(1007, 41, 4, 1, 0, 0, 0, 53),
(1008, 42, 4, 1, 0, 0, 0, 53),
(1009, 43, 4, 1, 0, 0, 0, 53),
(1010, 44, 4, 1, 0, 0, 0, 53),
(1011, 45, 4, 1, 0, 0, 0, 53),
(1012, 46, 4, 1, 0, 0, 0, 53),
(1013, 47, 4, 1, 0, 0, 0, 53),
(1014, 48, 4, 1, 0, 0, 0, 53),
(1015, 49, 4, 1, 0, 0, 0, 53),
(1016, 50, 4, 1, 0, 0, 0, 53),
(1017, 51, 4, 1, 0, 0, 0, 53),
(1018, 52, 4, 1, 0, 0, 0, 53),
(1019, 53, 4, 1, 0, 0, 0, 53),
(1020, 54, 4, 1, 0, 0, 0, 53),
(1021, 55, 4, 1, 0, 0, 0, 53),
(1022, 56, 4, 1, 0, 0, 0, 53),
(1023, 57, 4, 1, 0, 0, 0, 53),
(1024, 58, 4, 1, 0, 0, 0, 53),
(1025, 59, 4, 1, 0, 0, 0, 53),
(1026, 60, 4, 1, 0, 0, 0, 53),
(1027, 61, 4, 1, 0, 0, 0, 53),
(1028, 62, 4, 1, 0, 0, 0, 53),
(1029, 63, 4, 1, 0, 0, 0, 53),
(1030, 64, 4, 1, 0, 0, 0, 53),
(1031, 65, 4, 1, 0, 0, 0, 53),
(1032, 66, 4, 1, 0, 0, 0, 53),
(1033, 67, 4, 1, 0, 0, 0, 53),
(1034, 68, 4, 1, 0, 0, 0, 53),
(1035, 69, 4, 1, 0, 0, 0, 53),
(1036, 70, 4, 1, 0, 0, 0, 53),
(1037, 71, 4, 1, 0, 0, 0, 53),
(1038, 72, 4, 1, 0, 0, 0, 53),
(1039, 73, 4, 1, 0, 0, 0, 53),
(1040, 74, 4, 1, 0, 0, 0, 53),
(1041, 75, 4, 1, 0, 0, 0, 53),
(1042, 76, 4, 1, 0, 0, 0, 53),
(1043, 77, 4, 1, 0, 0, 0, 53),
(1044, 78, 4, 1, 0, 0, 0, 53),
(1045, 79, 4, 1, 0, 0, 0, 53),
(1046, 80, 4, 1, 0, 0, 0, 53),
(1047, 81, 4, 1, 0, 0, 0, 53),
(1048, 82, 4, 1, 0, 0, 0, 53),
(1049, 83, 4, 1, 0, 0, 0, 53),
(1050, 84, 4, 1, 0, 0, 0, 53),
(1051, 85, 4, 1, 0, 0, 0, 53),
(1052, 86, 4, 1, 0, 0, 0, 53),
(1053, 87, 4, 1, 0, 0, 0, 53),
(1054, 88, 4, 1, 0, 0, 0, 53),
(1055, 89, 4, 1, 0, 0, 0, 53),
(1056, 90, 4, 1, 0, 0, 0, 53),
(1057, 91, 4, 1, 0, 0, 0, 53),
(1058, 92, 4, 1, 0, 0, 0, 53),
(1059, 93, 4, 1, 0, 0, 0, 53),
(1060, 94, 4, 1, 0, 0, 0, 53),
(1061, 95, 4, 1, 0, 0, 0, 53),
(1062, 96, 4, 1, 0, 0, 0, 53),
(1063, 97, 4, 1, 0, 0, 0, 53),
(1064, 98, 4, 1, 0, 0, 0, 53),
(1065, 99, 4, 1, 0, 0, 0, 53),
(1066, 100, 4, 1, 0, 0, 0, 53),
(1067, 101, 4, 1, 0, 0, 0, 53),
(1068, 102, 4, 1, 0, 0, 0, 53),
(1069, 103, 4, 1, 0, 0, 0, 53),
(1070, 104, 4, 1, 0, 0, 0, 53),
(1071, 105, 4, 1, 0, 0, 0, 53),
(1072, 106, 4, 1, 0, 0, 0, 53),
(1073, 107, 4, 1, 0, 0, 0, 53),
(1074, 108, 4, 1, 0, 0, 0, 53),
(1075, 109, 4, 1, 0, 0, 0, 53),
(1076, 110, 4, 1, 0, 0, 0, 53),
(1077, 111, 4, 1, 0, 0, 0, 53),
(1078, 112, 4, 1, 0, 0, 0, 53),
(1079, 114, 4, 1, 0, 0, 0, 53),
(1080, 115, 4, 1, 0, 0, 0, 53),
(1081, 116, 4, 1, 0, 0, 0, 53),
(1082, 117, 4, 1, 0, 0, 0, 53),
(1083, 118, 4, 1, 0, 0, 0, 53),
(1084, 119, 4, 1, 0, 0, 0, 53),
(1085, 120, 4, 1, 0, 0, 0, 53),
(1086, 121, 4, 1, 0, 0, 0, 53),
(1087, 122, 4, 1, 0, 0, 0, 53),
(1088, 123, 4, 1, 0, 0, 0, 53),
(1089, 124, 4, 1, 0, 0, 0, 53),
(1090, 125, 4, 1, 0, 0, 0, 53),
(1091, 126, 4, 1, 0, 0, 0, 53),
(1092, 127, 4, 1, 0, 0, 0, 53),
(1093, 128, 4, 1, 0, 0, 0, 53),
(1094, 129, 4, 1, 0, 0, 0, 53),
(1095, 130, 4, 1, 0, 0, 0, 53),
(1096, 131, 4, 1, 0, 0, 0, 53),
(1097, 132, 4, 1, 0, 0, 0, 53),
(1098, 133, 4, 1, 0, 0, 0, 53),
(1099, 134, 4, 1, 0, 0, 0, 53),
(1100, 135, 4, 1, 0, 0, 0, 53),
(1101, 136, 4, 1, 0, 0, 0, 53),
(1102, 137, 4, 1, 0, 0, 0, 53),
(1103, 138, 4, 1, 0, 0, 0, 53),
(1104, 139, 4, 1, 0, 0, 0, 53),
(1105, 140, 4, 1, 0, 0, 0, 53),
(1106, 141, 4, 1, 0, 0, 0, 53),
(1107, 142, 4, 1, 0, 0, 0, 53),
(1108, 143, 4, 1, 0, 0, 0, 53),
(1109, 144, 4, 1, 0, 0, 0, 53),
(1110, 145, 4, 1, 0, 0, 0, 53),
(1111, 146, 4, 1, 0, 0, 0, 53),
(1112, 147, 4, 1, 0, 0, 0, 53),
(1113, 148, 4, 1, 0, 0, 0, 53),
(1114, 149, 4, 1, 0, 0, 0, 53),
(1115, 150, 4, 1, 0, 0, 0, 53),
(1116, 151, 4, 1, 0, 0, 0, 53),
(1117, 152, 4, 1, 0, 0, 0, 53),
(1118, 153, 4, 1, 0, 0, 0, 53),
(1119, 154, 4, 1, 0, 0, 0, 53),
(1120, 155, 4, 1, 0, 0, 0, 53),
(1121, 156, 4, 1, 0, 0, 0, 53),
(1122, 157, 4, 1, 0, 0, 0, 53),
(1123, 158, 4, 1, 0, 0, 0, 53),
(1124, 159, 4, 1, 0, 0, 0, 53),
(1125, 160, 4, 1, 0, 0, 0, 53),
(1126, 161, 4, 1, 0, 0, 0, 53),
(1127, 162, 4, 1, 0, 0, 0, 53),
(1128, 163, 4, 1, 0, 0, 0, 53),
(1129, 164, 4, 1, 0, 0, 0, 53),
(1130, 165, 4, 1, 0, 0, 0, 53),
(1131, 166, 4, 1, 0, 0, 0, 53),
(1132, 167, 4, 1, 0, 0, 0, 53),
(1133, 168, 4, 1, 0, 0, 0, 53),
(1134, 169, 4, 1, 0, 0, 0, 53),
(1135, 170, 4, 1, 0, 0, 0, 53),
(1136, 171, 4, 1, 0, 0, 0, 53),
(1137, 172, 4, 1, 0, 0, 0, 53),
(1138, 173, 4, 1, 0, 0, 0, 53),
(1139, 174, 4, 1, 0, 0, 0, 53),
(1140, 175, 4, 1, 0, 0, 0, 53),
(1141, 176, 4, 1, 0, 0, 0, 53),
(1142, 177, 4, 1, 0, 0, 0, 53),
(1143, 178, 4, 1, 0, 0, 0, 53),
(1144, 179, 4, 1, 0, 0, 0, 53),
(1145, 180, 4, 1, 0, 0, 0, 53),
(1146, 181, 4, 1, 0, 0, 0, 53),
(1147, 182, 4, 1, 0, 0, 0, 53),
(1148, 183, 4, 1, 0, 0, 0, 53),
(1149, 184, 4, 1, 0, 0, 0, 53),
(1150, 185, 4, 1, 0, 0, 0, 53),
(1151, 186, 4, 1, 0, 0, 0, 53),
(1152, 187, 4, 1, 0, 0, 0, 53),
(1153, 188, 4, 1, 0, 0, 0, 53),
(1154, 189, 4, 1, 0, 0, 0, 53),
(1155, 190, 4, 1, 0, 0, 0, 53),
(1156, 191, 4, 1, 0, 0, 0, 53),
(1157, 192, 4, 1, 0, 0, 0, 53),
(1158, 193, 4, 1, 0, 0, 0, 53),
(1159, 194, 4, 1, 0, 0, 0, 53),
(1160, 195, 4, 1, 0, 0, 0, 53),
(1161, 196, 4, 1, 0, 0, 0, 53),
(1162, 197, 4, 1, 0, 0, 0, 53),
(1163, 198, 4, 1, 0, 0, 0, 53),
(1164, 199, 4, 1, 0, 0, 0, 53),
(1165, 200, 4, 1, 0, 0, 0, 53),
(1166, 201, 4, 1, 0, 0, 0, 53),
(1167, 202, 4, 1, 0, 0, 0, 53),
(1168, 203, 4, 1, 0, 0, 0, 53),
(1169, 204, 4, 1, 0, 0, 0, 53),
(1170, 205, 4, 1, 0, 0, 0, 53),
(1171, 206, 4, 1, 0, 0, 0, 53),
(1172, 207, 4, 1, 0, 0, 0, 53),
(1173, 208, 4, 1, 0, 0, 0, 53),
(1174, 209, 4, 1, 0, 0, 0, 53),
(1175, 210, 4, 1, 0, 0, 0, 53),
(1176, 211, 4, 1, 0, 0, 0, 53),
(1177, 212, 4, 1, 0, 0, 0, 53),
(1178, 213, 4, 1, 0, 0, 0, 53),
(1179, 214, 4, 1, 0, 0, 0, 53),
(1180, 215, 4, 1, 0, 0, 0, 53),
(1181, 216, 4, 1, 0, 0, 0, 53),
(1182, 217, 4, 1, 0, 0, 0, 53),
(1183, 218, 4, 1, 0, 0, 0, 53),
(1184, 219, 4, 1, 0, 0, 0, 53),
(1185, 220, 4, 1, 0, 0, 0, 53),
(1186, 221, 4, 1, 0, 0, 0, 53),
(1187, 222, 4, 1, 0, 0, 0, 53),
(1188, 224, 4, 1, 0, 0, 0, 53),
(1189, 225, 4, 1, 0, 0, 0, 53),
(1190, 226, 4, 1, 0, 0, 0, 53),
(1191, 227, 4, 1, 0, 0, 0, 53),
(1192, 228, 4, 1, 0, 0, 0, 53),
(1193, 229, 4, 1, 0, 0, 0, 53),
(1194, 230, 4, 1, 0, 0, 0, 53),
(1195, 231, 4, 1, 0, 0, 0, 53),
(1196, 232, 4, 1, 0, 0, 0, 53),
(1197, 233, 4, 1, 0, 0, 0, 53),
(1198, 234, 4, 1, 0, 0, 0, 53),
(1199, 235, 4, 1, 0, 0, 0, 53),
(1200, 236, 4, 1, 0, 0, 0, 53),
(1201, 237, 4, 1, 0, 0, 0, 53),
(1202, 238, 4, 1, 0, 0, 0, 53),
(1203, 239, 4, 1, 0, 0, 0, 53),
(1204, 240, 4, 1, 0, 0, 0, 53),
(1205, 241, 4, 1, 0, 0, 0, 53),
(1206, 242, 4, 1, 0, 0, 0, 53),
(1207, 243, 4, 1, 0, 0, 0, 53),
(1208, 244, 4, 1, 0, 0, 0, 53),
(1209, 245, 4, 1, 0, 0, 0, 53),
(1210, 246, 4, 1, 0, 0, 0, 53),
(1211, 247, 4, 1, 0, 0, 0, 53),
(1212, 248, 4, 1, 0, 0, 0, 53),
(1213, 249, 4, 1, 0, 0, 0, 53),
(1214, 250, 4, 1, 0, 0, 0, 53),
(1215, 251, 4, 1, 0, 0, 0, 53),
(1216, 252, 4, 1, 0, 0, 0, 53),
(1217, 253, 4, 1, 0, 0, 0, 53),
(1218, 254, 4, 1, 0, 0, 0, 53),
(1219, 255, 4, 1, 0, 0, 0, 53),
(1220, 256, 4, 1, 0, 0, 0, 53),
(1221, 257, 4, 1, 0, 0, 0, 53),
(1222, 258, 4, 1, 0, 0, 0, 53),
(1223, 259, 4, 1, 0, 0, 0, 53),
(1224, 260, 4, 1, 0, 0, 0, 53),
(1225, 261, 4, 1, 0, 0, 0, 53),
(1226, 262, 4, 1, 0, 0, 0, 53),
(1227, 263, 4, 1, 0, 0, 0, 53),
(1228, 264, 4, 1, 0, 0, 0, 53),
(1229, 265, 4, 1, 0, 0, 0, 53),
(1230, 266, 4, 1, 0, 0, 0, 53),
(1231, 267, 4, 1, 0, 0, 0, 53),
(1232, 269, 4, 1, 0, 0, 0, 53),
(1233, 270, 4, 1, 0, 0, 0, 53),
(1234, 271, 4, 1, 0, 0, 0, 53),
(1235, 272, 4, 1, 0, 0, 0, 53),
(1236, 273, 4, 1, 0, 0, 0, 53),
(1237, 274, 4, 1, 0, 0, 0, 53),
(1238, 275, 4, 1, 0, 0, 0, 53),
(1239, 276, 4, 1, 0, 0, 0, 53),
(1240, 277, 4, 1, 0, 0, 0, 53),
(1241, 278, 4, 1, 0, 0, 0, 53),
(1242, 279, 4, 1, 0, 0, 0, 53),
(1243, 280, 4, 1, 0, 0, 0, 53),
(1244, 281, 4, 1, 0, 0, 0, 53),
(1245, 282, 4, 1, 0, 0, 0, 53),
(1246, 283, 4, 1, 0, 0, 0, 53),
(1247, 284, 4, 1, 0, 0, 0, 53),
(1248, 285, 4, 1, 0, 0, 0, 53),
(1249, 286, 4, 1, 0, 0, 0, 53),
(1250, 287, 4, 1, 0, 0, 0, 53),
(1251, 288, 4, 1, 0, 0, 0, 53),
(1252, 289, 4, 1, 0, 0, 0, 53),
(1253, 290, 4, 1, 0, 0, 0, 53),
(1254, 291, 4, 1, 0, 0, 0, 53),
(1255, 292, 4, 1, 0, 0, 0, 53),
(1256, 293, 4, 1, 0, 0, 0, 53),
(1257, 294, 4, 1, 0, 0, 0, 53),
(1258, 295, 4, 1, 0, 0, 0, 53),
(1259, 296, 4, 1, 0, 0, 0, 53),
(1260, 297, 4, 1, 0, 0, 0, 53),
(1261, 298, 4, 1, 0, 0, 0, 53),
(1262, 299, 4, 1, 0, 0, 0, 53),
(1263, 300, 4, 1, 0, 0, 0, 53),
(1264, 301, 4, 1, 0, 0, 0, 53),
(1265, 302, 4, 1, 0, 0, 0, 53),
(1266, 303, 4, 1, 0, 0, 0, 53),
(1267, 304, 4, 1, 0, 0, 0, 53),
(1268, 305, 4, 1, 0, 0, 0, 53),
(1269, 306, 4, 1, 0, 0, 0, 53),
(1270, 307, 4, 1, 0, 0, 0, 53),
(1271, 308, 4, 1, 0, 0, 0, 53),
(1272, 309, 4, 1, 0, 0, 0, 53),
(1273, 310, 4, 1, 0, 0, 0, 53),
(1274, 311, 4, 1, 0, 0, 0, 53),
(1275, 312, 4, 1, 0, 0, 0, 53),
(1276, 313, 4, 1, 0, 0, 0, 53),
(1277, 314, 4, 1, 0, 0, 0, 53),
(1278, 315, 4, 1, 0, 0, 0, 53),
(1279, 316, 4, 1, 0, 0, 0, 53),
(1280, 317, 4, 1, 0, 0, 0, 53),
(1281, 318, 4, 1, 0, 0, 0, 53),
(1282, 319, 4, 1, 0, 0, 0, 53),
(1283, 320, 4, 1, 0, 0, 0, 53),
(1284, 321, 4, 1, 0, 0, 0, 53),
(1285, 322, 4, 1, 0, 0, 0, 53),
(1286, 323, 4, 1, 0, 0, 0, 53),
(1287, 324, 4, 1, 0, 0, 0, 53),
(1288, 325, 4, 1, 0, 0, 0, 53),
(1289, 326, 4, 1, 0, 0, 0, 53),
(1290, 327, 4, 1, 0, 0, 0, 53),
(1291, 328, 4, 1, 0, 0, 0, 53),
(1292, 329, 4, 1, 0, 0, 0, 53),
(1293, 330, 4, 1, 0, 0, 0, 53),
(1294, 331, 4, 1, 0, 0, 0, 53),
(1295, 332, 4, 1, 0, 0, 0, 53),
(1296, 333, 4, 1, 0, 0, 0, 53),
(1297, 334, 4, 1, 0, 0, 0, 53),
(1298, 335, 4, 1, 0, 0, 0, 53),
(1299, 336, 4, 1, 0, 0, 0, 53),
(1300, 337, 4, 1, 0, 0, 0, 53),
(1301, 338, 4, 1, 0, 0, 0, 53),
(1302, 339, 4, 1, 0, 0, 0, 53),
(1303, 340, 4, 1, 0, 0, 0, 53),
(1304, 341, 4, 1, 0, 0, 0, 53),
(1305, 342, 4, 1, 0, 0, 0, 53),
(1306, 343, 4, 1, 0, 0, 0, 53),
(1307, 344, 4, 1, 0, 0, 0, 53),
(1308, 345, 4, 1, 0, 0, 0, 53),
(1309, 346, 4, 1, 0, 0, 0, 53),
(1310, 347, 4, 1, 0, 0, 0, 53),
(1311, 348, 4, 1, 0, 0, 0, 53),
(1312, 349, 4, 1, 0, 0, 0, 53),
(1313, 350, 4, 1, 0, 0, 0, 53),
(1314, 351, 4, 1, 0, 0, 0, 53),
(1315, 352, 4, 1, 0, 0, 0, 53),
(1316, 353, 4, 1, 0, 0, 0, 53),
(1317, 354, 4, 1, 0, 0, 0, 53),
(1318, 355, 4, 1, 0, 0, 0, 53),
(1319, 356, 4, 1, 0, 0, 0, 53),
(1320, 357, 4, 1, 0, 0, 0, 53),
(1321, 358, 4, 1, 0, 0, 0, 53),
(1322, 359, 4, 1, 0, 0, 0, 53),
(1323, 360, 4, 1, 0, 0, 0, 53),
(1324, 361, 4, 1, 0, 0, 0, 53),
(1325, 362, 4, 1, 0, 0, 0, 53),
(1326, 363, 4, 1, 0, 0, 0, 53),
(1327, 364, 4, 1, 0, 0, 0, 53),
(1328, 365, 4, 1, 0, 0, 0, 53),
(1329, 366, 4, 1, 0, 0, 0, 53),
(1330, 367, 4, 1, 0, 0, 0, 53),
(1331, 368, 4, 1, 0, 0, 0, 53),
(1332, 369, 4, 1, 0, 0, 0, 53),
(1333, 370, 4, 1, 0, 0, 0, 53),
(1334, 371, 4, 1, 0, 0, 0, 53),
(1335, 372, 4, 1, 0, 0, 0, 53),
(1336, 373, 4, 1, 0, 0, 0, 53),
(1337, 374, 4, 1, 0, 0, 0, 53),
(1338, 375, 4, 1, 0, 0, 0, 53),
(1339, 376, 4, 1, 0, 0, 0, 53),
(1340, 377, 4, 1, 0, 0, 0, 53),
(1341, 378, 4, 1, 0, 0, 0, 53),
(1342, 379, 4, 1, 0, 0, 0, 53),
(1343, 380, 4, 1, 0, 0, 0, 53),
(1344, 381, 4, 1, 0, 0, 0, 53),
(1345, 382, 4, 1, 0, 0, 0, 53),
(1346, 383, 4, 1, 0, 0, 0, 53),
(1347, 384, 4, 1, 0, 0, 0, 53),
(1348, 385, 4, 1, 0, 0, 0, 53),
(1349, 386, 4, 1, 0, 0, 0, 53),
(1350, 387, 4, 1, 0, 0, 0, 53),
(1351, 388, 4, 1, 0, 0, 0, 53),
(1352, 389, 4, 1, 0, 0, 0, 53),
(1353, 390, 4, 1, 0, 0, 0, 53),
(1354, 391, 4, 1, 0, 0, 0, 53),
(1355, 392, 4, 1, 0, 0, 0, 53),
(1356, 393, 4, 1, 0, 0, 0, 53),
(1357, 394, 4, 1, 0, 0, 0, 53),
(1358, 395, 4, 1, 0, 0, 0, 53),
(1359, 396, 4, 1, 0, 0, 0, 53),
(1360, 397, 4, 1, 0, 0, 0, 53),
(1361, 398, 4, 1, 0, 0, 0, 53),
(1362, 399, 4, 1, 0, 0, 0, 53),
(1363, 400, 4, 1, 0, 0, 0, 53),
(1364, 401, 4, 1, 0, 0, 0, 53),
(1365, 402, 4, 1, 0, 0, 0, 53),
(1366, 403, 4, 1, 0, 0, 0, 53),
(1367, 404, 4, 1, 0, 0, 0, 53),
(1368, 405, 4, 1, 0, 0, 0, 53),
(1369, 406, 4, 1, 0, 0, 0, 53),
(1370, 407, 4, 1, 0, 0, 0, 53),
(1371, 408, 4, 1, 0, 0, 0, 53),
(1372, 409, 4, 1, 0, 0, 0, 53),
(1373, 410, 4, 1, 0, 0, 0, 53),
(1374, 411, 4, 1, 0, 0, 0, 53),
(1375, 412, 4, 1, 0, 0, 0, 53),
(1376, 413, 4, 1, 0, 0, 0, 53),
(1377, 414, 4, 1, 0, 0, 0, 53),
(1378, 415, 4, 1, 0, 0, 0, 53),
(1379, 416, 4, 1, 0, 0, 0, 53),
(1380, 417, 4, 1, 0, 0, 0, 53),
(1381, 418, 4, 1, 0, 0, 0, 53),
(1382, 419, 4, 1, 0, 0, 0, 53),
(1383, 420, 4, 1, 0, 0, 0, 53),
(1384, 421, 4, 1, 0, 0, 0, 53),
(1385, 422, 4, 1, 0, 0, 0, 53),
(1386, 423, 4, 1, 0, 0, 0, 53),
(1387, 424, 4, 1, 0, 0, 0, 53),
(1388, 425, 4, 1, 0, 0, 0, 53),
(1389, 426, 4, 1, 0, 0, 0, 53),
(1390, 427, 4, 1, 0, 0, 0, 53),
(1391, 428, 4, 1, 0, 0, 0, 53),
(1392, 429, 4, 1, 0, 0, 0, 53),
(1393, 430, 4, 1, 0, 0, 0, 53),
(1394, 431, 4, 1, 0, 0, 0, 53),
(1395, 432, 4, 1, 0, 0, 0, 53),
(1396, 433, 4, 1, 0, 0, 0, 53),
(1397, 434, 4, 1, 0, 0, 0, 53),
(1398, 435, 4, 1, 0, 0, 0, 53),
(1399, 436, 4, 1, 0, 0, 0, 53),
(1400, 437, 4, 1, 0, 0, 0, 53),
(1401, 438, 4, 1, 0, 0, 0, 53),
(1402, 439, 4, 1, 0, 0, 0, 53),
(1403, 440, 4, 1, 0, 0, 0, 53),
(1404, 441, 4, 1, 0, 0, 0, 53),
(1405, 442, 4, 1, 0, 0, 0, 53),
(1406, 443, 4, 1, 0, 0, 0, 53),
(1407, 444, 4, 1, 0, 0, 0, 53),
(1408, 445, 4, 1, 0, 0, 0, 53),
(1409, 446, 4, 1, 0, 0, 0, 53),
(1410, 447, 4, 1, 0, 0, 0, 53),
(1411, 448, 4, 1, 0, 0, 0, 53),
(1412, 449, 4, 1, 0, 0, 0, 53),
(1413, 450, 4, 1, 0, 0, 0, 53),
(1414, 451, 4, 1, 0, 0, 0, 53),
(1415, 452, 4, 1, 0, 0, 0, 53),
(1416, 453, 4, 1, 0, 0, 0, 53),
(1417, 454, 4, 1, 0, 0, 0, 53),
(1418, 455, 4, 1, 0, 0, 0, 53),
(1419, 456, 4, 1, 0, 0, 0, 53),
(1420, 457, 4, 1, 0, 0, 0, 53),
(1421, 458, 4, 1, 0, 0, 0, 53),
(1422, 459, 4, 1, 0, 0, 0, 53),
(1423, 460, 4, 1, 0, 0, 0, 53),
(1424, 461, 4, 1, 0, 0, 0, 53),
(1425, 462, 4, 1, 0, 0, 0, 53),
(1426, 463, 4, 1, 0, 0, 0, 53),
(1427, 464, 4, 1, 0, 0, 0, 53),
(1428, 465, 4, 1, 0, 0, 0, 53),
(1429, 466, 4, 1, 0, 0, 0, 53),
(1430, 467, 4, 1, 0, 0, 0, 53),
(1431, 468, 4, 1, 0, 0, 0, 53),
(1432, 469, 4, 1, 0, 0, 0, 53),
(1433, 470, 4, 1, 0, 0, 0, 53),
(1434, 471, 4, 1, 0, 0, 0, 53),
(1435, 472, 4, 1, 0, 0, 0, 53),
(1436, 473, 4, 1, 0, 0, 0, 53),
(1437, 474, 4, 1, 0, 0, 0, 53),
(1438, 475, 4, 1, 0, 0, 0, 53),
(1439, 476, 4, 1, 0, 0, 0, 53),
(1440, 477, 4, 1, 0, 0, 0, 53),
(1441, 478, 4, 1, 0, 0, 0, 53),
(1442, 479, 4, 1, 0, 0, 0, 53),
(1443, 480, 4, 1, 0, 0, 0, 53),
(1444, 481, 4, 1, 0, 0, 0, 53),
(1445, 482, 4, 1, 0, 0, 0, 53),
(1446, 483, 4, 1, 0, 0, 0, 53),
(1447, 484, 4, 1, 0, 0, 0, 53),
(1448, 485, 4, 1, 0, 0, 0, 53),
(1449, 486, 4, 1, 0, 0, 0, 53),
(1450, 487, 4, 1, 0, 0, 0, 53),
(1451, 488, 4, 1, 0, 0, 0, 53),
(1452, 489, 4, 1, 0, 0, 0, 53),
(1453, 490, 4, 1, 0, 0, 0, 53),
(1454, 491, 4, 1, 0, 0, 0, 53),
(1455, 492, 4, 1, 0, 0, 0, 53),
(1456, 493, 4, 1, 0, 0, 0, 53),
(1457, 494, 4, 1, 0, 0, 0, 53),
(1458, 495, 4, 1, 0, 0, 0, 53),
(1459, 496, 4, 1, 0, 0, 0, 53),
(1460, 497, 4, 1, 0, 0, 0, 53),
(1461, 498, 4, 1, 0, 0, 0, 53),
(1462, 499, 4, 1, 0, 0, 0, 53),
(1463, 500, 4, 1, 0, 0, 0, 53),
(1464, 501, 4, 1, 0, 0, 0, 53),
(1465, 502, 4, 1, 0, 0, 0, 53),
(1466, 503, 4, 1, 0, 0, 0, 53),
(1467, 504, 4, 1, 0, 0, 0, 53),
(1468, 505, 4, 1, 0, 0, 0, 53),
(1469, 506, 4, 1, 0, 0, 0, 53),
(1470, 507, 4, 1, 0, 0, 0, 53),
(1471, 508, 4, 1, 0, 0, 0, 53),
(1472, 509, 4, 1, 0, 0, 0, 53),
(1473, 510, 4, 1, 0, 0, 0, 53),
(1474, 511, 4, 1, 0, 0, 0, 53),
(1475, 512, 4, 1, 0, 0, 0, 53),
(1476, 513, 4, 1, 0, 0, 0, 53),
(1477, 514, 4, 1, 0, 0, 0, 53),
(1478, 515, 4, 1, 0, 0, 0, 53),
(1479, 516, 4, 1, 0, 0, 0, 53),
(1480, 5, 235, 1, 0, 0, 0, 64),
(1481, 17, 235, 1, 0, 0, 0, 64),
(1482, 23, 235, 1, 0, 0, 0, 64),
(1483, 24, 235, 1, 0, 0, 0, 64),
(1484, 25, 235, 1, 0, 0, 0, 64),
(1485, 26, 235, 1, 0, 0, 0, 64),
(1486, 27, 235, 1, 0, 0, 0, 64),
(1487, 28, 235, 1, 0, 0, 0, 64),
(1488, 29, 235, 1, 0, 0, 0, 64),
(1489, 30, 235, 1, 0, 0, 0, 64),
(1490, 31, 235, 1, 0, 0, 0, 64),
(1491, 32, 235, 1, 0, 0, 0, 64),
(1492, 33, 235, 1, 0, 0, 0, 64),
(1493, 34, 235, 1, 0, 0, 0, 64),
(1494, 35, 235, 1, 0, 0, 0, 64),
(1495, 36, 235, 1, 0, 0, 0, 64),
(1496, 37, 235, 1, 0, 0, 0, 64),
(1497, 38, 235, 1, 0, 0, 0, 64),
(1498, 39, 235, 1, 0, 0, 0, 64),
(1499, 40, 235, 1, 0, 0, 0, 64),
(1500, 41, 235, 1, 0, 0, 0, 64),
(1501, 42, 235, 1, 0, 0, 0, 64),
(1502, 43, 235, 1, 0, 0, 0, 64),
(1503, 44, 235, 1, 0, 0, 0, 64),
(1504, 45, 235, 1, 0, 0, 0, 64),
(1505, 46, 235, 1, 0, 0, 0, 64),
(1506, 47, 235, 1, 0, 0, 0, 64),
(1507, 48, 235, 1, 0, 0, 0, 64),
(1508, 49, 235, 1, 0, 0, 0, 64),
(1509, 50, 235, 1, 0, 0, 0, 64),
(1510, 51, 235, 1, 0, 0, 0, 64),
(1511, 52, 235, 1, 0, 0, 0, 64),
(1512, 53, 235, 1, 0, 0, 0, 64),
(1513, 54, 235, 1, 0, 0, 0, 64),
(1514, 55, 235, 1, 0, 0, 0, 64),
(1515, 56, 235, 1, 0, 0, 0, 64),
(1516, 57, 235, 1, 0, 0, 0, 64),
(1517, 58, 235, 1, 0, 0, 0, 64),
(1518, 59, 235, 1, 0, 0, 0, 64),
(1519, 60, 235, 1, 0, 0, 0, 64),
(1520, 61, 235, 1, 0, 0, 0, 64),
(1521, 62, 235, 1, 0, 0, 0, 64),
(1522, 63, 235, 1, 0, 0, 0, 64),
(1523, 64, 235, 1, 0, 0, 0, 64),
(1524, 65, 235, 1, 0, 0, 0, 64),
(1525, 66, 235, 1, 0, 0, 0, 64),
(1526, 67, 235, 1, 0, 0, 0, 64),
(1527, 68, 235, 1, 0, 0, 0, 64),
(1528, 69, 235, 1, 0, 0, 0, 64),
(1529, 70, 235, 1, 0, 0, 0, 64),
(1530, 71, 235, 1, 0, 0, 0, 64),
(1531, 72, 235, 1, 0, 0, 0, 64),
(1532, 73, 235, 1, 0, 0, 0, 64),
(1533, 74, 235, 1, 0, 0, 0, 64),
(1534, 75, 235, 1, 0, 0, 0, 64),
(1535, 76, 235, 1, 0, 0, 0, 64),
(1536, 77, 235, 1, 0, 0, 0, 64),
(1537, 78, 235, 1, 0, 0, 0, 64),
(1538, 79, 235, 1, 0, 0, 0, 64),
(1539, 80, 235, 1, 0, 0, 0, 64),
(1540, 81, 235, 1, 0, 0, 0, 64),
(1541, 82, 235, 1, 0, 0, 0, 64),
(1542, 83, 235, 1, 0, 0, 0, 64),
(1543, 84, 235, 1, 0, 0, 0, 64),
(1544, 85, 235, 1, 0, 0, 0, 64),
(1545, 86, 235, 1, 0, 0, 0, 64),
(1546, 87, 235, 1, 0, 0, 0, 64),
(1547, 88, 235, 1, 0, 0, 0, 64),
(1548, 89, 235, 1, 0, 0, 0, 64),
(1549, 90, 235, 1, 0, 0, 0, 64),
(1550, 91, 235, 1, 0, 0, 0, 64),
(1551, 92, 235, 1, 0, 0, 0, 64),
(1552, 93, 235, 1, 0, 0, 0, 64),
(1553, 94, 235, 1, 0, 0, 0, 64),
(1554, 95, 235, 1, 0, 0, 0, 64),
(1555, 96, 235, 1, 0, 0, 0, 64),
(1556, 97, 235, 1, 0, 0, 0, 64),
(1557, 98, 235, 1, 0, 0, 0, 64),
(1558, 99, 235, 1, 0, 0, 0, 64),
(1559, 100, 235, 1, 0, 0, 0, 64),
(1560, 101, 235, 1, 0, 0, 0, 64),
(1561, 102, 235, 1, 0, 0, 0, 64),
(1562, 103, 235, 1, 0, 0, 0, 64),
(1563, 104, 235, 1, 0, 0, 0, 64),
(1564, 105, 235, 1, 0, 0, 0, 64),
(1565, 106, 235, 1, 0, 0, 0, 64),
(1566, 107, 235, 1, 0, 0, 0, 64),
(1567, 108, 235, 1, 0, 0, 0, 64),
(1568, 109, 235, 1, 0, 0, 0, 64),
(1569, 110, 235, 1, 0, 0, 0, 64),
(1570, 111, 235, 1, 0, 0, 0, 64),
(1571, 112, 235, 1, 0, 0, 0, 64),
(1572, 114, 235, 1, 0, 0, 0, 64),
(1573, 115, 235, 1, 0, 0, 0, 64),
(1574, 116, 235, 1, 0, 0, 0, 64),
(1575, 117, 235, 1, 0, 0, 0, 64),
(1576, 118, 235, 1, 0, 0, 0, 64),
(1577, 119, 235, 1, 0, 0, 0, 64),
(1578, 120, 235, 1, 0, 0, 0, 64),
(1579, 121, 235, 1, 0, 0, 0, 64),
(1580, 122, 235, 1, 0, 0, 0, 64),
(1581, 123, 235, 1, 0, 0, 0, 64),
(1582, 124, 235, 1, 0, 0, 0, 64),
(1583, 125, 235, 1, 0, 0, 0, 64),
(1584, 126, 235, 1, 0, 0, 0, 64),
(1585, 127, 235, 1, 0, 0, 0, 64),
(1586, 128, 235, 1, 0, 0, 0, 64),
(1587, 129, 235, 1, 0, 0, 0, 64),
(1588, 130, 235, 1, 0, 0, 0, 64),
(1589, 131, 235, 1, 0, 0, 0, 64),
(1590, 132, 235, 1, 0, 0, 0, 64),
(1591, 133, 235, 1, 0, 0, 0, 64),
(1592, 134, 235, 1, 0, 0, 0, 64),
(1593, 135, 235, 1, 0, 0, 0, 64),
(1594, 136, 235, 1, 0, 0, 0, 64),
(1595, 137, 235, 1, 0, 0, 0, 64),
(1596, 138, 235, 1, 0, 0, 0, 64),
(1597, 139, 235, 1, 0, 0, 0, 64),
(1598, 140, 235, 1, 0, 0, 0, 64),
(1599, 141, 235, 1, 0, 0, 0, 64),
(1600, 142, 235, 1, 0, 0, 0, 64),
(1601, 143, 235, 1, 0, 0, 0, 64),
(1602, 144, 235, 1, 0, 0, 0, 64),
(1603, 145, 235, 1, 0, 0, 0, 64),
(1604, 146, 235, 1, 0, 0, 0, 64),
(1605, 147, 235, 1, 0, 0, 0, 64),
(1606, 148, 235, 1, 0, 0, 0, 64),
(1607, 149, 235, 1, 0, 0, 0, 64),
(1608, 150, 235, 1, 0, 0, 0, 64),
(1609, 151, 235, 1, 0, 0, 0, 64),
(1610, 152, 235, 1, 0, 0, 0, 64),
(1611, 153, 235, 1, 0, 0, 0, 64),
(1612, 154, 235, 1, 0, 0, 0, 64),
(1613, 155, 235, 1, 0, 0, 0, 64),
(1614, 156, 235, 1, 0, 0, 0, 64),
(1615, 157, 235, 1, 0, 0, 0, 64),
(1616, 158, 235, 1, 0, 0, 0, 64),
(1617, 159, 235, 1, 0, 0, 0, 64),
(1618, 160, 235, 1, 0, 0, 0, 64),
(1619, 161, 235, 1, 0, 0, 0, 64),
(1620, 162, 235, 1, 0, 0, 0, 64),
(1621, 163, 235, 1, 0, 0, 0, 64),
(1622, 164, 235, 1, 0, 0, 0, 64),
(1623, 165, 235, 1, 0, 0, 0, 64),
(1624, 166, 235, 1, 0, 0, 0, 64),
(1625, 167, 235, 1, 0, 0, 0, 64),
(1626, 168, 235, 1, 0, 0, 0, 64),
(1627, 169, 235, 1, 0, 0, 0, 64),
(1628, 170, 235, 1, 0, 0, 0, 64),
(1629, 171, 235, 1, 0, 0, 0, 64),
(1630, 172, 235, 1, 0, 0, 0, 64),
(1631, 173, 235, 1, 0, 0, 0, 64),
(1632, 174, 235, 1, 0, 0, 0, 64),
(1633, 175, 235, 1, 0, 0, 0, 64),
(1634, 176, 235, 1, 0, 0, 0, 64),
(1635, 177, 235, 1, 0, 0, 0, 64),
(1636, 178, 235, 1, 0, 0, 0, 64),
(1637, 179, 235, 1, 0, 0, 0, 64),
(1638, 180, 235, 1, 0, 0, 0, 64),
(1639, 181, 235, 1, 0, 0, 0, 64),
(1640, 182, 235, 1, 0, 0, 0, 64),
(1641, 183, 235, 1, 0, 0, 0, 64),
(1642, 184, 235, 1, 0, 0, 0, 64),
(1643, 185, 235, 1, 0, 0, 0, 64),
(1644, 186, 235, 1, 0, 0, 0, 64),
(1645, 187, 235, 1, 0, 0, 0, 64),
(1646, 188, 235, 1, 0, 0, 0, 64),
(1647, 189, 235, 1, 0, 0, 0, 64),
(1648, 190, 235, 1, 0, 0, 0, 64),
(1649, 191, 235, 1, 0, 0, 0, 64),
(1650, 192, 235, 1, 0, 0, 0, 64),
(1651, 193, 235, 1, 0, 0, 0, 64),
(1652, 194, 235, 1, 0, 0, 0, 64),
(1653, 195, 235, 1, 0, 0, 0, 64),
(1654, 196, 235, 1, 0, 0, 0, 64),
(1655, 197, 235, 1, 0, 0, 0, 64),
(1656, 198, 235, 1, 0, 0, 0, 64),
(1657, 199, 235, 1, 0, 0, 0, 64),
(1658, 200, 235, 1, 0, 0, 0, 64),
(1659, 201, 235, 1, 0, 0, 0, 64),
(1660, 202, 235, 1, 0, 0, 0, 64),
(1661, 203, 235, 1, 0, 0, 0, 64),
(1662, 204, 235, 1, 0, 0, 0, 64),
(1663, 205, 235, 1, 0, 0, 0, 64),
(1664, 206, 235, 1, 0, 0, 0, 64),
(1665, 207, 235, 1, 0, 0, 0, 64),
(1666, 208, 235, 1, 0, 0, 0, 64),
(1667, 209, 235, 1, 0, 0, 0, 64),
(1668, 210, 235, 1, 0, 0, 0, 64),
(1669, 211, 235, 1, 0, 0, 0, 64),
(1670, 212, 235, 1, 0, 0, 0, 64),
(1671, 213, 235, 1, 0, 0, 0, 64),
(1672, 214, 235, 1, 0, 0, 0, 64),
(1673, 215, 235, 1, 0, 0, 0, 64),
(1674, 216, 235, 1, 0, 0, 0, 64),
(1675, 217, 235, 1, 0, 0, 0, 64),
(1676, 218, 235, 1, 0, 0, 0, 64),
(1677, 219, 235, 1, 0, 0, 0, 64),
(1678, 220, 235, 1, 0, 0, 0, 64),
(1679, 221, 235, 1, 0, 0, 0, 64),
(1680, 222, 235, 1, 0, 0, 0, 64);
INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES
(1681, 224, 235, 1, 0, 0, 0, 64),
(1682, 225, 235, 1, 0, 0, 0, 64),
(1683, 226, 235, 1, 0, 0, 0, 64),
(1684, 227, 235, 1, 0, 0, 0, 64),
(1685, 228, 235, 1, 0, 0, 0, 64),
(1686, 229, 235, 1, 0, 0, 0, 64),
(1687, 230, 235, 1, 0, 0, 0, 64),
(1688, 231, 235, 1, 0, 0, 0, 64),
(1689, 232, 235, 1, 0, 0, 0, 64),
(1690, 233, 235, 1, 0, 0, 0, 64),
(1691, 234, 235, 1, 0, 0, 0, 64),
(1692, 235, 235, 1, 0, 0, 0, 64),
(1693, 236, 235, 1, 0, 0, 0, 64),
(1694, 237, 235, 1, 0, 0, 0, 64),
(1695, 238, 235, 1, 0, 0, 0, 64),
(1696, 239, 235, 1, 0, 0, 0, 64),
(1697, 240, 235, 1, 0, 0, 0, 64),
(1698, 241, 235, 1, 0, 0, 0, 64),
(1699, 242, 235, 1, 0, 0, 0, 64),
(1700, 243, 235, 1, 0, 0, 0, 64),
(1701, 244, 235, 1, 0, 0, 0, 64),
(1702, 245, 235, 1, 0, 0, 0, 64),
(1703, 246, 235, 1, 0, 0, 0, 64),
(1704, 247, 235, 1, 0, 0, 0, 64),
(1705, 248, 235, 1, 0, 0, 0, 64),
(1706, 249, 235, 1, 0, 0, 0, 64),
(1707, 250, 235, 1, 0, 0, 0, 64),
(1708, 251, 235, 1, 0, 0, 0, 64),
(1709, 252, 235, 1, 0, 0, 0, 64),
(1710, 253, 235, 1, 0, 0, 0, 64),
(1711, 254, 235, 1, 0, 0, 0, 64),
(1712, 255, 235, 1, 0, 0, 0, 64),
(1713, 256, 235, 1, 0, 0, 0, 64),
(1714, 257, 235, 1, 0, 0, 0, 64),
(1715, 258, 235, 1, 0, 0, 0, 64),
(1716, 259, 235, 1, 0, 0, 0, 64),
(1717, 260, 235, 1, 0, 0, 0, 64),
(1718, 261, 235, 1, 0, 0, 0, 64),
(1719, 262, 235, 1, 0, 0, 0, 64),
(1720, 263, 235, 1, 0, 0, 0, 64),
(1721, 264, 235, 1, 0, 0, 0, 64),
(1722, 265, 235, 1, 0, 0, 0, 64),
(1723, 266, 235, 1, 0, 0, 0, 64),
(1724, 267, 235, 1, 0, 0, 0, 64),
(1725, 269, 235, 1, 0, 0, 0, 64),
(1726, 270, 235, 1, 0, 0, 0, 64),
(1727, 271, 235, 1, 0, 0, 0, 64),
(1728, 272, 235, 1, 0, 0, 0, 64),
(1729, 273, 235, 1, 0, 0, 0, 64),
(1730, 274, 235, 1, 0, 0, 0, 64),
(1731, 275, 235, 1, 0, 0, 0, 64),
(1732, 276, 235, 1, 0, 0, 0, 64),
(1733, 277, 235, 1, 0, 0, 0, 64),
(1734, 278, 235, 1, 0, 0, 0, 64),
(1735, 279, 235, 1, 0, 0, 0, 64),
(1736, 280, 235, 1, 0, 0, 0, 64),
(1737, 281, 235, 1, 0, 0, 0, 64),
(1738, 282, 235, 1, 0, 0, 0, 64),
(1739, 283, 235, 1, 0, 0, 0, 64),
(1740, 284, 235, 1, 0, 0, 0, 64),
(1741, 285, 235, 1, 0, 0, 0, 64),
(1742, 286, 235, 1, 0, 0, 0, 64),
(1743, 287, 235, 1, 0, 0, 0, 64),
(1744, 288, 235, 1, 0, 0, 0, 64),
(1745, 289, 235, 1, 0, 0, 0, 64),
(1746, 290, 235, 1, 0, 0, 0, 64),
(1747, 291, 235, 1, 0, 0, 0, 64),
(1748, 292, 235, 1, 0, 0, 0, 64),
(1749, 293, 235, 1, 0, 0, 0, 64),
(1750, 294, 235, 1, 0, 0, 0, 64),
(1751, 295, 235, 1, 0, 0, 0, 64),
(1752, 296, 235, 1, 0, 0, 0, 64),
(1753, 297, 235, 1, 0, 0, 0, 64),
(1754, 298, 235, 1, 0, 0, 0, 64),
(1755, 299, 235, 1, 0, 0, 0, 64),
(1756, 300, 235, 1, 0, 0, 0, 64),
(1757, 301, 235, 1, 0, 0, 0, 64),
(1758, 302, 235, 1, 0, 0, 0, 64),
(1759, 303, 235, 1, 0, 0, 0, 64),
(1760, 304, 235, 1, 0, 0, 0, 64),
(1761, 305, 235, 1, 0, 0, 0, 64),
(1762, 306, 235, 1, 0, 0, 0, 64),
(1763, 307, 235, 1, 0, 0, 0, 64),
(1764, 308, 235, 1, 0, 0, 0, 64),
(1765, 309, 235, 1, 0, 0, 0, 64),
(1766, 310, 235, 1, 0, 0, 0, 64),
(1767, 311, 235, 1, 0, 0, 0, 64),
(1768, 312, 235, 1, 0, 0, 0, 64),
(1769, 313, 235, 1, 0, 0, 0, 64),
(1770, 314, 235, 1, 0, 0, 0, 64),
(1771, 315, 235, 1, 0, 0, 0, 64),
(1772, 316, 235, 1, 0, 0, 0, 64),
(1773, 317, 235, 1, 0, 0, 0, 64),
(1774, 318, 235, 1, 0, 0, 0, 64),
(1775, 319, 235, 1, 0, 0, 0, 64),
(1776, 320, 235, 1, 0, 0, 0, 64),
(1777, 321, 235, 1, 0, 0, 0, 64),
(1778, 322, 235, 1, 0, 0, 0, 64),
(1779, 323, 235, 1, 0, 0, 0, 64),
(1780, 324, 235, 1, 0, 0, 0, 64),
(1781, 325, 235, 1, 0, 0, 0, 64),
(1782, 326, 235, 1, 0, 0, 0, 64),
(1783, 327, 235, 1, 0, 0, 0, 64),
(1784, 328, 235, 1, 0, 0, 0, 64),
(1785, 329, 235, 1, 0, 0, 0, 64),
(1786, 330, 235, 1, 0, 0, 0, 64),
(1787, 331, 235, 1, 0, 0, 0, 64),
(1788, 332, 235, 1, 0, 0, 0, 64),
(1789, 333, 235, 1, 0, 0, 0, 64),
(1790, 334, 235, 1, 0, 0, 0, 64),
(1791, 335, 235, 1, 0, 0, 0, 64),
(1792, 336, 235, 1, 0, 0, 0, 64),
(1793, 337, 235, 1, 0, 0, 0, 64),
(1794, 338, 235, 1, 0, 0, 0, 64),
(1795, 339, 235, 1, 0, 0, 0, 64),
(1796, 340, 235, 1, 0, 0, 0, 64),
(1797, 341, 235, 1, 0, 0, 0, 64),
(1798, 342, 235, 1, 0, 0, 0, 64),
(1799, 343, 235, 1, 0, 0, 0, 64),
(1800, 344, 235, 1, 0, 0, 0, 64),
(1801, 345, 235, 1, 0, 0, 0, 64),
(1802, 346, 235, 1, 0, 0, 0, 64),
(1803, 347, 235, 1, 0, 0, 0, 64),
(1804, 348, 235, 1, 0, 0, 0, 64),
(1805, 349, 235, 1, 0, 0, 0, 64),
(1806, 350, 235, 1, 0, 0, 0, 64),
(1807, 351, 235, 1, 0, 0, 0, 64),
(1808, 352, 235, 1, 0, 0, 0, 64),
(1809, 353, 235, 1, 0, 0, 0, 64),
(1810, 354, 235, 1, 0, 0, 0, 64),
(1811, 355, 235, 1, 0, 0, 0, 64),
(1812, 356, 235, 1, 0, 0, 0, 64),
(1813, 357, 235, 1, 0, 0, 0, 64),
(1814, 358, 235, 1, 0, 0, 0, 64),
(1815, 359, 235, 1, 0, 0, 0, 64),
(1816, 360, 235, 1, 0, 0, 0, 64),
(1817, 361, 235, 1, 0, 0, 0, 64),
(1818, 362, 235, 1, 0, 0, 0, 64),
(1819, 363, 235, 1, 0, 0, 0, 64),
(1820, 364, 235, 1, 0, 0, 0, 64),
(1821, 365, 235, 1, 0, 0, 0, 64),
(1822, 366, 235, 1, 0, 0, 0, 64),
(1823, 367, 235, 1, 0, 0, 0, 64),
(1824, 368, 235, 1, 0, 0, 0, 64),
(1825, 369, 235, 1, 0, 0, 0, 64),
(1826, 370, 235, 1, 0, 0, 0, 64),
(1827, 371, 235, 1, 0, 0, 0, 64),
(1828, 372, 235, 1, 0, 0, 0, 64),
(1829, 373, 235, 1, 0, 0, 0, 64),
(1830, 374, 235, 1, 0, 0, 0, 64),
(1831, 375, 235, 1, 0, 0, 0, 64),
(1832, 376, 235, 1, 0, 0, 0, 64),
(1833, 377, 235, 1, 0, 0, 0, 64),
(1834, 378, 235, 1, 0, 0, 0, 64),
(1835, 379, 235, 1, 0, 0, 0, 64),
(1836, 380, 235, 1, 0, 0, 0, 64),
(1837, 381, 235, 1, 0, 0, 0, 64),
(1838, 382, 235, 1, 0, 0, 0, 64),
(1839, 383, 235, 1, 0, 0, 0, 64),
(1840, 384, 235, 1, 0, 0, 0, 64),
(1841, 385, 235, 1, 0, 0, 0, 64),
(1842, 386, 235, 1, 0, 0, 0, 64),
(1843, 387, 235, 1, 0, 0, 0, 64),
(1844, 388, 235, 1, 0, 0, 0, 64),
(1845, 389, 235, 1, 0, 0, 0, 64),
(1846, 390, 235, 1, 0, 0, 0, 64),
(1847, 391, 235, 1, 0, 0, 0, 64),
(1848, 392, 235, 1, 0, 0, 0, 64),
(1849, 393, 235, 1, 0, 0, 0, 64),
(1850, 394, 235, 1, 0, 0, 0, 64),
(1851, 395, 235, 1, 0, 0, 0, 64),
(1852, 396, 235, 1, 0, 0, 0, 64),
(1853, 397, 235, 1, 0, 0, 0, 64),
(1854, 398, 235, 1, 0, 0, 0, 64),
(1855, 399, 235, 1, 0, 0, 0, 64),
(1856, 400, 235, 1, 0, 0, 0, 64),
(1857, 401, 235, 1, 0, 0, 0, 64),
(1858, 402, 235, 1, 0, 0, 0, 64),
(1859, 403, 235, 1, 0, 0, 0, 64),
(1860, 404, 235, 1, 0, 0, 0, 64),
(1861, 405, 235, 1, 0, 0, 0, 64),
(1862, 406, 235, 1, 0, 0, 0, 64),
(1863, 407, 235, 1, 0, 0, 0, 64),
(1864, 408, 235, 1, 0, 0, 0, 64),
(1865, 409, 235, 1, 0, 0, 0, 64),
(1866, 410, 235, 1, 0, 0, 0, 64),
(1867, 411, 235, 1, 0, 0, 0, 64),
(1868, 412, 235, 1, 0, 0, 0, 64),
(1869, 413, 235, 1, 0, 0, 0, 64),
(1870, 414, 235, 1, 0, 0, 0, 64),
(1871, 415, 235, 1, 0, 0, 0, 64),
(1872, 416, 235, 1, 0, 0, 0, 64),
(1873, 417, 235, 1, 0, 0, 0, 64),
(1874, 418, 235, 1, 0, 0, 0, 64),
(1875, 419, 235, 1, 0, 0, 0, 64),
(1876, 420, 235, 1, 0, 0, 0, 64),
(1877, 421, 235, 1, 0, 0, 0, 64),
(1878, 422, 235, 1, 0, 0, 0, 64),
(1879, 423, 235, 1, 0, 0, 0, 64),
(1880, 424, 235, 1, 0, 0, 0, 64),
(1881, 425, 235, 1, 0, 0, 0, 64),
(1882, 426, 235, 1, 0, 0, 0, 64),
(1883, 427, 235, 1, 0, 0, 0, 64),
(1884, 428, 235, 1, 0, 0, 0, 64),
(1885, 429, 235, 1, 0, 0, 0, 64),
(1886, 430, 235, 1, 0, 0, 0, 64),
(1887, 431, 235, 1, 0, 0, 0, 64),
(1888, 432, 235, 1, 0, 0, 0, 64),
(1889, 433, 235, 1, 0, 0, 0, 64),
(1890, 434, 235, 1, 0, 0, 0, 64),
(1891, 435, 235, 1, 0, 0, 0, 64),
(1892, 436, 235, 1, 0, 0, 0, 64),
(1893, 437, 235, 1, 0, 0, 0, 64),
(1894, 438, 235, 1, 0, 0, 0, 64),
(1895, 439, 235, 1, 0, 0, 0, 64),
(1896, 440, 235, 1, 0, 0, 0, 64),
(1897, 441, 235, 1, 0, 0, 0, 64),
(1898, 442, 235, 1, 0, 0, 0, 64),
(1899, 443, 235, 1, 0, 0, 0, 64),
(1900, 444, 235, 1, 0, 0, 0, 64),
(1901, 445, 235, 1, 0, 0, 0, 64),
(1902, 446, 235, 1, 0, 0, 0, 64),
(1903, 447, 235, 1, 0, 0, 0, 64),
(1904, 448, 235, 1, 0, 0, 0, 64),
(1905, 449, 235, 1, 0, 0, 0, 64),
(1906, 450, 235, 1, 0, 0, 0, 64),
(1907, 451, 235, 1, 0, 0, 0, 64),
(1908, 452, 235, 1, 0, 0, 0, 64),
(1909, 453, 235, 1, 0, 0, 0, 64),
(1910, 454, 235, 1, 0, 0, 0, 64),
(1911, 455, 235, 1, 0, 0, 0, 64),
(1912, 456, 235, 1, 0, 0, 0, 64),
(1913, 457, 235, 1, 0, 0, 0, 64),
(1914, 458, 235, 1, 0, 0, 0, 64),
(1915, 459, 235, 1, 0, 0, 0, 64),
(1916, 460, 235, 1, 0, 0, 0, 64),
(1917, 461, 235, 1, 0, 0, 0, 64),
(1918, 462, 235, 1, 0, 0, 0, 64),
(1919, 463, 235, 1, 0, 0, 0, 64),
(1920, 464, 235, 1, 0, 0, 0, 64),
(1921, 465, 235, 1, 0, 0, 0, 64),
(1922, 466, 235, 1, 0, 0, 0, 64),
(1923, 467, 235, 1, 0, 0, 0, 64),
(1924, 468, 235, 1, 0, 0, 0, 64),
(1925, 469, 235, 1, 0, 0, 0, 64),
(1926, 470, 235, 1, 0, 0, 0, 64),
(1927, 471, 235, 1, 0, 0, 0, 64),
(1928, 472, 235, 1, 0, 0, 0, 64),
(1929, 473, 235, 1, 0, 0, 0, 64),
(1930, 474, 235, 1, 0, 0, 0, 64),
(1931, 475, 235, 1, 0, 0, 0, 64),
(1932, 476, 235, 1, 0, 0, 0, 64),
(1933, 477, 235, 1, 0, 0, 0, 64),
(1934, 478, 235, 1, 0, 0, 0, 64),
(1935, 479, 235, 1, 0, 0, 0, 64),
(1936, 480, 235, 1, 0, 0, 0, 64),
(1937, 481, 235, 1, 0, 0, 0, 64),
(1938, 482, 235, 1, 0, 0, 0, 64),
(1939, 483, 235, 1, 0, 0, 0, 64),
(1940, 484, 235, 1, 0, 0, 0, 64),
(1941, 485, 235, 1, 0, 0, 0, 64),
(1942, 486, 235, 1, 0, 0, 0, 64),
(1943, 487, 235, 1, 0, 0, 0, 64),
(1944, 488, 235, 1, 0, 0, 0, 64),
(1945, 489, 235, 1, 0, 0, 0, 64),
(1946, 490, 235, 1, 0, 0, 0, 64),
(1947, 491, 235, 1, 0, 0, 0, 64),
(1948, 492, 235, 1, 0, 0, 0, 64),
(1949, 493, 235, 1, 0, 0, 0, 64),
(1950, 494, 235, 1, 0, 0, 0, 64),
(1951, 495, 235, 1, 0, 0, 0, 64),
(1952, 496, 235, 1, 0, 0, 0, 64),
(1953, 497, 235, 1, 0, 0, 0, 64),
(1954, 498, 235, 1, 0, 0, 0, 64),
(1955, 499, 235, 1, 0, 0, 0, 64),
(1956, 500, 235, 1, 0, 0, 0, 64),
(1957, 501, 235, 1, 0, 0, 0, 64),
(1958, 502, 235, 1, 0, 0, 0, 64),
(1959, 503, 235, 1, 0, 0, 0, 64),
(1960, 504, 235, 1, 0, 0, 0, 64),
(1961, 505, 235, 1, 0, 0, 0, 64),
(1962, 506, 235, 1, 0, 0, 0, 64),
(1963, 507, 235, 1, 0, 0, 0, 64),
(1964, 508, 235, 1, 0, 0, 0, 64),
(1965, 509, 235, 1, 0, 0, 0, 64),
(1966, 510, 235, 1, 0, 0, 0, 64),
(1967, 511, 235, 1, 0, 0, 0, 64),
(1968, 512, 235, 1, 0, 0, 0, 64),
(1969, 513, 235, 1, 0, 0, 0, 64),
(1970, 514, 235, 1, 0, 0, 0, 64),
(1971, 515, 235, 1, 0, 0, 0, 64),
(1972, 516, 235, 1, 0, 0, 0, 64),
(1973, 5, 250, 1, 0, 0, 0, 67),
(1974, 17, 250, 1, 0, 0, 0, 67),
(1975, 23, 250, 1, 0, 0, 0, 67),
(1976, 24, 250, 1, 0, 0, 0, 67),
(1977, 25, 250, 1, 0, 0, 0, 67),
(1978, 26, 250, 1, 0, 0, 0, 67),
(1979, 27, 250, 1, 0, 0, 0, 67),
(1980, 28, 250, 1, 0, 0, 0, 67),
(1981, 29, 250, 1, 0, 0, 0, 67),
(1982, 30, 250, 1, 0, 0, 0, 67),
(1983, 31, 250, 1, 0, 0, 0, 67),
(1984, 32, 250, 1, 0, 0, 0, 67),
(1985, 33, 250, 1, 0, 0, 0, 67),
(1986, 34, 250, 1, 0, 0, 0, 67),
(1987, 35, 250, 1, 0, 0, 0, 67),
(1988, 36, 250, 1, 0, 0, 0, 67),
(1989, 37, 250, 1, 0, 0, 0, 67),
(1990, 38, 250, 1, 0, 0, 0, 67),
(1991, 39, 250, 1, 0, 0, 0, 67),
(1992, 40, 250, 1, 0, 0, 0, 67),
(1993, 41, 250, 1, 0, 0, 0, 67),
(1994, 42, 250, 1, 0, 0, 0, 67),
(1995, 43, 250, 1, 0, 0, 0, 67),
(1996, 44, 250, 1, 0, 0, 0, 67),
(1997, 45, 250, 1, 0, 0, 0, 67),
(1998, 46, 250, 1, 0, 0, 0, 67),
(1999, 47, 250, 1, 0, 0, 0, 67),
(2000, 48, 250, 1, 0, 0, 0, 67),
(2001, 49, 250, 1, 0, 0, 0, 67),
(2002, 50, 250, 1, 0, 0, 0, 67),
(2003, 51, 250, 1, 0, 0, 0, 67),
(2004, 52, 250, 1, 0, 0, 0, 67),
(2005, 53, 250, 1, 0, 0, 0, 67),
(2006, 54, 250, 1, 0, 0, 0, 67),
(2007, 55, 250, 1, 0, 0, 0, 67),
(2008, 56, 250, 1, 0, 0, 0, 67),
(2009, 57, 250, 1, 0, 0, 0, 67),
(2010, 58, 250, 1, 0, 0, 0, 67),
(2011, 59, 250, 1, 0, 0, 0, 67),
(2012, 60, 250, 1, 0, 0, 0, 67),
(2013, 61, 250, 1, 0, 0, 0, 67),
(2014, 62, 250, 1, 0, 0, 0, 67),
(2015, 63, 250, 1, 0, 0, 0, 67),
(2016, 64, 250, 1, 0, 0, 0, 67),
(2017, 65, 250, 1, 0, 0, 0, 67),
(2018, 66, 250, 1, 0, 0, 0, 67),
(2019, 67, 250, 1, 0, 0, 0, 67),
(2020, 68, 250, 1, 0, 0, 0, 67),
(2021, 69, 250, 1, 0, 0, 0, 67),
(2022, 70, 250, 1, 0, 0, 0, 67),
(2023, 71, 250, 1, 0, 0, 0, 67),
(2024, 72, 250, 1, 0, 0, 0, 67),
(2025, 73, 250, 1, 0, 0, 0, 67),
(2026, 74, 250, 1, 0, 0, 0, 67),
(2027, 75, 250, 1, 0, 0, 0, 67),
(2028, 76, 250, 1, 0, 0, 0, 67),
(2029, 77, 250, 1, 0, 0, 0, 67),
(2030, 78, 250, 1, 0, 0, 0, 67),
(2031, 79, 250, 1, 0, 0, 0, 67),
(2032, 80, 250, 1, 0, 0, 0, 67),
(2033, 81, 250, 1, 0, 0, 0, 67),
(2034, 82, 250, 1, 0, 0, 0, 67),
(2035, 83, 250, 1, 0, 0, 0, 67),
(2036, 84, 250, 1, 0, 0, 0, 67),
(2037, 85, 250, 1, 0, 0, 0, 67),
(2038, 86, 250, 1, 0, 0, 0, 67),
(2039, 87, 250, 1, 0, 0, 0, 67),
(2040, 88, 250, 1, 0, 0, 0, 67),
(2041, 89, 250, 1, 0, 0, 0, 67),
(2042, 90, 250, 1, 0, 0, 0, 67),
(2043, 91, 250, 1, 0, 0, 0, 67),
(2044, 92, 250, 1, 0, 0, 0, 67),
(2045, 93, 250, 1, 0, 0, 0, 67),
(2046, 94, 250, 1, 0, 0, 0, 67),
(2047, 95, 250, 1, 0, 0, 0, 67),
(2048, 96, 250, 1, 0, 0, 0, 67),
(2049, 97, 250, 1, 0, 0, 0, 67),
(2050, 98, 250, 1, 0, 0, 0, 67),
(2051, 99, 250, 1, 0, 0, 0, 67),
(2052, 100, 250, 1, 0, 0, 0, 67),
(2053, 101, 250, 1, 0, 0, 0, 67),
(2054, 102, 250, 1, 0, 0, 0, 67),
(2055, 103, 250, 1, 0, 0, 0, 67),
(2056, 104, 250, 1, 0, 0, 0, 67),
(2057, 105, 250, 1, 0, 0, 0, 67),
(2058, 106, 250, 1, 0, 0, 0, 67),
(2059, 107, 250, 1, 0, 0, 0, 67),
(2060, 108, 250, 1, 0, 0, 0, 67),
(2061, 109, 250, 1, 0, 0, 0, 67),
(2062, 110, 250, 1, 0, 0, 0, 67),
(2063, 111, 250, 1, 0, 0, 0, 67),
(2064, 112, 250, 1, 0, 0, 0, 67),
(2065, 114, 250, 1, 0, 0, 0, 67),
(2066, 115, 250, 1, 0, 0, 0, 67),
(2067, 116, 250, 1, 0, 0, 0, 67),
(2068, 117, 250, 1, 0, 0, 0, 67),
(2069, 118, 250, 1, 0, 0, 0, 67),
(2070, 119, 250, 1, 0, 0, 0, 67),
(2071, 120, 250, 1, 0, 0, 0, 67),
(2072, 121, 250, 1, 0, 0, 0, 67),
(2073, 122, 250, 1, 0, 0, 0, 67),
(2074, 123, 250, 1, 0, 0, 0, 67),
(2075, 124, 250, 1, 0, 0, 0, 67),
(2076, 125, 250, 1, 0, 0, 0, 67),
(2077, 126, 250, 1, 0, 0, 0, 67),
(2078, 127, 250, 1, 0, 0, 0, 67),
(2079, 128, 250, 1, 0, 0, 0, 67),
(2080, 129, 250, 1, 0, 0, 0, 67),
(2081, 130, 250, 1, 0, 0, 0, 67),
(2082, 131, 250, 1, 0, 0, 0, 67),
(2083, 132, 250, 1, 0, 0, 0, 67),
(2084, 133, 250, 1, 0, 0, 0, 67),
(2085, 134, 250, 1, 0, 0, 0, 67),
(2086, 135, 250, 1, 0, 0, 0, 67),
(2087, 136, 250, 1, 0, 0, 0, 67),
(2088, 137, 250, 1, 0, 0, 0, 67),
(2089, 138, 250, 1, 0, 0, 0, 67),
(2090, 139, 250, 1, 0, 0, 0, 67),
(2091, 140, 250, 1, 0, 0, 0, 67),
(2092, 141, 250, 1, 0, 0, 0, 67),
(2093, 142, 250, 1, 0, 0, 0, 67),
(2094, 143, 250, 1, 0, 0, 0, 67),
(2095, 144, 250, 1, 0, 0, 0, 67),
(2096, 145, 250, 1, 0, 0, 0, 67),
(2097, 146, 250, 1, 0, 0, 0, 67),
(2098, 147, 250, 1, 0, 0, 0, 67),
(2099, 148, 250, 1, 0, 0, 0, 67),
(2100, 149, 250, 1, 0, 0, 0, 67),
(2101, 150, 250, 1, 0, 0, 0, 67),
(2102, 151, 250, 1, 0, 0, 0, 67),
(2103, 152, 250, 1, 0, 0, 0, 67),
(2104, 153, 250, 1, 0, 0, 0, 67),
(2105, 154, 250, 1, 0, 0, 0, 67),
(2106, 155, 250, 1, 0, 0, 0, 67),
(2107, 156, 250, 1, 0, 0, 0, 67),
(2108, 157, 250, 1, 0, 0, 0, 67),
(2109, 158, 250, 1, 0, 0, 0, 67),
(2110, 159, 250, 1, 0, 0, 0, 67),
(2111, 160, 250, 1, 0, 0, 0, 67),
(2112, 161, 250, 1, 0, 0, 0, 67),
(2113, 162, 250, 1, 0, 0, 0, 67),
(2114, 163, 250, 1, 0, 0, 0, 67),
(2115, 164, 250, 1, 0, 0, 0, 67),
(2116, 165, 250, 1, 0, 0, 0, 67),
(2117, 166, 250, 1, 0, 0, 0, 67),
(2118, 167, 250, 1, 0, 0, 0, 67),
(2119, 168, 250, 1, 0, 0, 0, 67),
(2120, 169, 250, 1, 0, 0, 0, 67),
(2121, 170, 250, 1, 0, 0, 0, 67),
(2122, 171, 250, 1, 0, 0, 0, 67),
(2123, 172, 250, 1, 0, 0, 0, 67),
(2124, 173, 250, 1, 0, 0, 0, 67),
(2125, 174, 250, 1, 0, 0, 0, 67),
(2126, 175, 250, 1, 0, 0, 0, 67),
(2127, 176, 250, 1, 0, 0, 0, 67),
(2128, 177, 250, 1, 0, 0, 0, 67),
(2129, 178, 250, 1, 0, 0, 0, 67),
(2130, 179, 250, 1, 0, 0, 0, 67),
(2131, 180, 250, 1, 0, 0, 0, 67),
(2132, 181, 250, 1, 0, 0, 0, 67),
(2133, 182, 250, 1, 0, 0, 0, 67),
(2134, 183, 250, 1, 0, 0, 0, 67),
(2135, 184, 250, 1, 0, 0, 0, 67),
(2136, 185, 250, 1, 0, 0, 0, 67),
(2137, 186, 250, 1, 0, 0, 0, 67),
(2138, 187, 250, 1, 0, 0, 0, 67),
(2139, 188, 250, 1, 0, 0, 0, 67),
(2140, 189, 250, 1, 0, 0, 0, 67),
(2141, 190, 250, 1, 0, 0, 0, 67),
(2142, 191, 250, 1, 0, 0, 0, 67),
(2143, 192, 250, 1, 0, 0, 0, 67),
(2144, 193, 250, 1, 0, 0, 0, 67),
(2145, 194, 250, 1, 0, 0, 0, 67),
(2146, 195, 250, 1, 0, 0, 0, 67),
(2147, 196, 250, 1, 0, 0, 0, 67),
(2148, 197, 250, 1, 0, 0, 0, 67),
(2149, 198, 250, 1, 0, 0, 0, 67),
(2150, 199, 250, 1, 0, 0, 0, 67),
(2151, 200, 250, 1, 0, 0, 0, 67),
(2152, 201, 250, 1, 0, 0, 0, 67),
(2153, 202, 250, 1, 0, 0, 0, 67),
(2154, 203, 250, 1, 0, 0, 0, 67),
(2155, 204, 250, 1, 0, 0, 0, 67),
(2156, 205, 250, 1, 0, 0, 0, 67),
(2157, 206, 250, 1, 0, 0, 0, 67),
(2158, 207, 250, 1, 0, 0, 0, 67),
(2159, 208, 250, 1, 0, 0, 0, 67),
(2160, 209, 250, 1, 0, 0, 0, 67),
(2161, 210, 250, 1, 0, 0, 0, 67),
(2162, 211, 250, 1, 0, 0, 0, 67),
(2163, 212, 250, 1, 0, 0, 0, 67),
(2164, 213, 250, 1, 0, 0, 0, 67),
(2165, 214, 250, 1, 0, 0, 0, 67),
(2166, 215, 250, 1, 0, 0, 0, 67),
(2167, 216, 250, 1, 0, 0, 0, 67),
(2168, 217, 250, 1, 0, 0, 0, 67),
(2169, 218, 250, 1, 0, 0, 0, 67),
(2170, 219, 250, 1, 0, 0, 0, 67),
(2171, 220, 250, 1, 0, 0, 0, 67),
(2172, 221, 250, 1, 0, 0, 0, 67),
(2173, 222, 250, 1, 0, 0, 0, 67),
(2174, 224, 250, 1, 0, 0, 0, 67),
(2175, 225, 250, 1, 0, 0, 0, 67),
(2176, 226, 250, 1, 0, 0, 0, 67),
(2177, 227, 250, 1, 0, 0, 0, 67),
(2178, 228, 250, 1, 0, 0, 0, 67),
(2179, 229, 250, 1, 0, 0, 0, 67),
(2180, 230, 250, 1, 0, 0, 0, 67),
(2181, 231, 250, 1, 0, 0, 0, 67),
(2182, 232, 250, 1, 0, 0, 0, 67),
(2183, 233, 250, 1, 0, 0, 0, 67),
(2184, 234, 250, 1, 0, 0, 0, 67),
(2185, 235, 250, 1, 0, 0, 0, 67),
(2186, 236, 250, 1, 0, 0, 0, 67),
(2187, 237, 250, 1, 0, 0, 0, 67),
(2188, 238, 250, 1, 0, 0, 0, 67),
(2189, 239, 250, 1, 0, 0, 0, 67),
(2190, 240, 250, 1, 0, 0, 0, 67),
(2191, 241, 250, 1, 0, 0, 0, 67),
(2192, 242, 250, 1, 0, 0, 0, 67),
(2193, 243, 250, 1, 0, 0, 0, 67),
(2194, 244, 250, 1, 0, 0, 0, 67),
(2195, 245, 250, 1, 0, 0, 0, 67),
(2196, 246, 250, 1, 0, 0, 0, 67),
(2197, 247, 250, 1, 0, 0, 0, 67),
(2198, 248, 250, 1, 0, 0, 0, 67),
(2199, 249, 250, 1, 0, 0, 0, 67),
(2200, 250, 250, 1, 0, 0, 0, 67),
(2201, 251, 250, 1, 0, 0, 0, 67),
(2202, 252, 250, 1, 0, 0, 0, 67),
(2203, 253, 250, 1, 0, 0, 0, 67),
(2204, 254, 250, 1, 0, 0, 0, 67),
(2205, 255, 250, 1, 0, 0, 0, 67),
(2206, 256, 250, 1, 0, 0, 0, 67),
(2207, 257, 250, 1, 0, 0, 0, 67),
(2208, 258, 250, 1, 0, 0, 0, 67),
(2209, 259, 250, 1, 0, 0, 0, 67),
(2210, 260, 250, 1, 0, 0, 0, 67),
(2211, 261, 250, 1, 0, 0, 0, 67),
(2212, 262, 250, 1, 0, 0, 0, 67),
(2213, 263, 250, 1, 0, 0, 0, 67),
(2214, 264, 250, 1, 0, 0, 0, 67),
(2215, 265, 250, 1, 0, 0, 0, 67),
(2216, 266, 250, 1, 0, 0, 0, 67),
(2217, 267, 250, 1, 0, 0, 0, 67),
(2218, 269, 250, 1, 0, 0, 0, 67),
(2219, 270, 250, 1, 0, 0, 0, 67),
(2220, 271, 250, 1, 0, 0, 0, 67),
(2221, 272, 250, 1, 0, 0, 0, 67),
(2222, 273, 250, 1, 0, 0, 0, 67),
(2223, 274, 250, 1, 0, 0, 0, 67),
(2224, 275, 250, 1, 0, 0, 0, 67),
(2225, 276, 250, 1, 0, 0, 0, 67),
(2226, 277, 250, 1, 0, 0, 0, 67),
(2227, 278, 250, 1, 0, 0, 0, 67),
(2228, 279, 250, 1, 0, 0, 0, 67),
(2229, 280, 250, 1, 0, 0, 0, 67),
(2230, 281, 250, 1, 0, 0, 0, 67),
(2231, 282, 250, 1, 0, 0, 0, 67),
(2232, 283, 250, 1, 0, 0, 0, 67),
(2233, 284, 250, 1, 0, 0, 0, 67),
(2234, 285, 250, 1, 0, 0, 0, 67),
(2235, 286, 250, 1, 0, 0, 0, 67),
(2236, 287, 250, 1, 0, 0, 0, 67),
(2237, 288, 250, 1, 0, 0, 0, 67),
(2238, 289, 250, 1, 0, 0, 0, 67),
(2239, 290, 250, 1, 0, 0, 0, 67),
(2240, 291, 250, 1, 0, 0, 0, 67),
(2241, 292, 250, 1, 0, 0, 0, 67),
(2242, 293, 250, 1, 0, 0, 0, 67),
(2243, 294, 250, 1, 0, 0, 0, 67),
(2244, 295, 250, 1, 0, 0, 0, 67),
(2245, 296, 250, 1, 0, 0, 0, 67),
(2246, 297, 250, 1, 0, 0, 0, 67),
(2247, 298, 250, 1, 0, 0, 0, 67),
(2248, 299, 250, 1, 0, 0, 0, 67),
(2249, 300, 250, 1, 0, 0, 0, 67),
(2250, 301, 250, 1, 0, 0, 0, 67),
(2251, 302, 250, 1, 0, 0, 0, 67),
(2252, 303, 250, 1, 0, 0, 0, 67),
(2253, 304, 250, 1, 0, 0, 0, 67),
(2254, 305, 250, 1, 0, 0, 0, 67),
(2255, 306, 250, 1, 0, 0, 0, 67),
(2256, 307, 250, 1, 0, 0, 0, 67),
(2257, 308, 250, 1, 0, 0, 0, 67),
(2258, 309, 250, 1, 0, 0, 0, 67),
(2259, 310, 250, 1, 0, 0, 0, 67),
(2260, 311, 250, 1, 0, 0, 0, 67),
(2261, 312, 250, 1, 0, 0, 0, 67),
(2262, 313, 250, 1, 0, 0, 0, 67),
(2263, 314, 250, 1, 0, 0, 0, 67),
(2264, 315, 250, 1, 0, 0, 0, 67),
(2265, 316, 250, 1, 0, 0, 0, 67),
(2266, 317, 250, 1, 0, 0, 0, 67),
(2267, 318, 250, 1, 0, 0, 0, 67),
(2268, 319, 250, 1, 0, 0, 0, 67),
(2269, 320, 250, 1, 0, 0, 0, 67),
(2270, 321, 250, 1, 0, 0, 0, 67),
(2271, 322, 250, 1, 0, 0, 0, 67),
(2272, 323, 250, 1, 0, 0, 0, 67),
(2273, 324, 250, 1, 0, 0, 0, 67),
(2274, 325, 250, 1, 0, 0, 0, 67),
(2275, 326, 250, 1, 0, 0, 0, 67),
(2276, 327, 250, 1, 0, 0, 0, 67),
(2277, 328, 250, 1, 0, 0, 0, 67),
(2278, 329, 250, 1, 0, 0, 0, 67),
(2279, 330, 250, 1, 0, 0, 0, 67),
(2280, 331, 250, 1, 0, 0, 0, 67),
(2281, 332, 250, 1, 0, 0, 0, 67),
(2282, 333, 250, 1, 0, 0, 0, 67),
(2283, 334, 250, 1, 0, 0, 0, 67),
(2284, 335, 250, 1, 0, 0, 0, 67),
(2285, 336, 250, 1, 0, 0, 0, 67),
(2286, 337, 250, 1, 0, 0, 0, 67),
(2287, 338, 250, 1, 0, 0, 0, 67),
(2288, 339, 250, 1, 0, 0, 0, 67),
(2289, 340, 250, 1, 0, 0, 0, 67),
(2290, 341, 250, 1, 0, 0, 0, 67),
(2291, 342, 250, 1, 0, 0, 0, 67),
(2292, 343, 250, 1, 0, 0, 0, 67),
(2293, 344, 250, 1, 0, 0, 0, 67),
(2294, 345, 250, 1, 0, 0, 0, 67),
(2295, 346, 250, 1, 0, 0, 0, 67),
(2296, 347, 250, 1, 0, 0, 0, 67),
(2297, 348, 250, 1, 0, 0, 0, 67),
(2298, 349, 250, 1, 0, 0, 0, 67),
(2299, 350, 250, 1, 0, 0, 0, 67),
(2300, 351, 250, 1, 0, 0, 0, 67),
(2301, 352, 250, 1, 0, 0, 0, 67),
(2302, 353, 250, 1, 0, 0, 0, 67),
(2303, 354, 250, 1, 0, 0, 0, 67),
(2304, 355, 250, 1, 0, 0, 0, 67),
(2305, 356, 250, 1, 0, 0, 0, 67),
(2306, 357, 250, 1, 0, 0, 0, 67),
(2307, 358, 250, 1, 0, 0, 0, 67),
(2308, 359, 250, 1, 0, 0, 0, 67),
(2309, 360, 250, 1, 0, 0, 0, 67),
(2310, 361, 250, 1, 0, 0, 0, 67),
(2311, 362, 250, 1, 0, 0, 0, 67),
(2312, 363, 250, 1, 0, 0, 0, 67),
(2313, 364, 250, 1, 0, 0, 0, 67),
(2314, 365, 250, 1, 0, 0, 0, 67),
(2315, 366, 250, 1, 0, 0, 0, 67),
(2316, 367, 250, 1, 0, 0, 0, 67),
(2317, 368, 250, 1, 0, 0, 0, 67),
(2318, 369, 250, 1, 0, 0, 0, 67),
(2319, 370, 250, 1, 0, 0, 0, 67),
(2320, 371, 250, 1, 0, 0, 0, 67),
(2321, 372, 250, 1, 0, 0, 0, 67),
(2322, 373, 250, 1, 0, 0, 0, 67),
(2323, 374, 250, 1, 0, 0, 0, 67),
(2324, 375, 250, 1, 0, 0, 0, 67),
(2325, 376, 250, 1, 0, 0, 0, 67),
(2326, 377, 250, 1, 0, 0, 0, 67),
(2327, 378, 250, 1, 0, 0, 0, 67),
(2328, 379, 250, 1, 0, 0, 0, 67),
(2329, 380, 250, 1, 0, 0, 0, 67),
(2330, 381, 250, 1, 0, 0, 0, 67),
(2331, 382, 250, 1, 0, 0, 0, 67),
(2332, 383, 250, 1, 0, 0, 0, 67),
(2333, 384, 250, 1, 0, 0, 0, 67),
(2334, 385, 250, 1, 0, 0, 0, 67),
(2335, 386, 250, 1, 0, 0, 0, 67),
(2336, 387, 250, 1, 0, 0, 0, 67),
(2337, 388, 250, 1, 0, 0, 0, 67),
(2338, 389, 250, 1, 0, 0, 0, 67),
(2339, 390, 250, 1, 0, 0, 0, 67),
(2340, 391, 250, 1, 0, 0, 0, 67),
(2341, 392, 250, 1, 0, 0, 0, 67),
(2342, 393, 250, 1, 0, 0, 0, 67),
(2343, 394, 250, 1, 0, 0, 0, 67),
(2344, 395, 250, 1, 0, 0, 0, 67),
(2345, 396, 250, 1, 0, 0, 0, 67),
(2346, 397, 250, 1, 0, 0, 0, 67),
(2347, 398, 250, 1, 0, 0, 0, 67),
(2348, 399, 250, 1, 0, 0, 0, 67),
(2349, 400, 250, 1, 0, 0, 0, 67),
(2350, 401, 250, 1, 0, 0, 0, 67),
(2351, 402, 250, 1, 0, 0, 0, 67),
(2352, 403, 250, 1, 0, 0, 0, 67),
(2353, 404, 250, 1, 0, 0, 0, 67),
(2354, 405, 250, 1, 0, 0, 0, 67),
(2355, 406, 250, 1, 0, 0, 0, 67),
(2356, 407, 250, 1, 0, 0, 0, 67),
(2357, 408, 250, 1, 0, 0, 0, 67),
(2358, 409, 250, 1, 0, 0, 0, 67),
(2359, 410, 250, 1, 0, 0, 0, 67),
(2360, 411, 250, 1, 0, 0, 0, 67),
(2361, 412, 250, 1, 0, 0, 0, 67),
(2362, 413, 250, 1, 0, 0, 0, 67),
(2363, 414, 250, 1, 0, 0, 0, 67),
(2364, 415, 250, 1, 0, 0, 0, 67),
(2365, 416, 250, 1, 0, 0, 0, 67),
(2366, 417, 250, 1, 0, 0, 0, 67),
(2367, 418, 250, 1, 0, 0, 0, 67),
(2368, 419, 250, 1, 0, 0, 0, 67),
(2369, 420, 250, 1, 0, 0, 0, 67),
(2370, 421, 250, 1, 0, 0, 0, 67),
(2371, 422, 250, 1, 0, 0, 0, 67),
(2372, 423, 250, 1, 0, 0, 0, 67),
(2373, 424, 250, 1, 0, 0, 0, 67),
(2374, 425, 250, 1, 0, 0, 0, 67),
(2375, 426, 250, 1, 0, 0, 0, 67),
(2376, 427, 250, 1, 0, 0, 0, 67),
(2377, 428, 250, 1, 0, 0, 0, 67),
(2378, 429, 250, 1, 0, 0, 0, 67),
(2379, 430, 250, 1, 0, 0, 0, 67),
(2380, 431, 250, 1, 0, 0, 0, 67),
(2381, 432, 250, 1, 0, 0, 0, 67),
(2382, 433, 250, 1, 0, 0, 0, 67),
(2383, 434, 250, 1, 0, 0, 0, 67),
(2384, 435, 250, 1, 0, 0, 0, 67),
(2385, 436, 250, 1, 0, 0, 0, 67),
(2386, 437, 250, 1, 0, 0, 0, 67),
(2387, 438, 250, 1, 0, 0, 0, 67),
(2388, 439, 250, 1, 0, 0, 0, 67),
(2389, 440, 250, 1, 0, 0, 0, 67),
(2390, 441, 250, 1, 0, 0, 0, 67),
(2391, 442, 250, 1, 0, 0, 0, 67),
(2392, 443, 250, 1, 0, 0, 0, 67),
(2393, 444, 250, 1, 0, 0, 0, 67),
(2394, 445, 250, 1, 0, 0, 0, 67),
(2395, 446, 250, 1, 0, 0, 0, 67),
(2396, 447, 250, 1, 0, 0, 0, 67),
(2397, 448, 250, 1, 0, 0, 0, 67),
(2398, 449, 250, 1, 0, 0, 0, 67),
(2399, 450, 250, 1, 0, 0, 0, 67),
(2400, 451, 250, 1, 0, 0, 0, 67),
(2401, 452, 250, 1, 0, 0, 0, 67),
(2402, 453, 250, 1, 0, 0, 0, 67),
(2403, 454, 250, 1, 0, 0, 0, 67),
(2404, 455, 250, 1, 0, 0, 0, 67),
(2405, 456, 250, 1, 0, 0, 0, 67),
(2406, 457, 250, 1, 0, 0, 0, 67),
(2407, 458, 250, 1, 0, 0, 0, 67),
(2408, 459, 250, 1, 0, 0, 0, 67),
(2409, 460, 250, 1, 0, 0, 0, 67),
(2410, 461, 250, 1, 0, 0, 0, 67),
(2411, 462, 250, 1, 0, 0, 0, 67),
(2412, 463, 250, 1, 0, 0, 0, 67),
(2413, 464, 250, 1, 0, 0, 0, 67),
(2414, 465, 250, 1, 0, 0, 0, 67),
(2415, 466, 250, 1, 0, 0, 0, 67),
(2416, 467, 250, 1, 0, 0, 0, 67),
(2417, 468, 250, 1, 0, 0, 0, 67),
(2418, 469, 250, 1, 0, 0, 0, 67),
(2419, 470, 250, 1, 0, 0, 0, 67),
(2420, 471, 250, 1, 0, 0, 0, 67),
(2421, 472, 250, 1, 0, 0, 0, 67),
(2422, 473, 250, 1, 0, 0, 0, 67),
(2423, 474, 250, 1, 0, 0, 0, 67),
(2424, 475, 250, 1, 0, 0, 0, 67),
(2425, 476, 250, 1, 0, 0, 0, 67),
(2426, 477, 250, 1, 0, 0, 0, 67),
(2427, 478, 250, 1, 0, 0, 0, 67),
(2428, 479, 250, 1, 0, 0, 0, 67),
(2429, 480, 250, 1, 0, 0, 0, 67),
(2430, 481, 250, 1, 0, 0, 0, 67),
(2431, 482, 250, 1, 0, 0, 0, 67),
(2432, 483, 250, 1, 0, 0, 0, 67),
(2433, 484, 250, 1, 0, 0, 0, 67),
(2434, 485, 250, 1, 0, 0, 0, 67),
(2435, 486, 250, 1, 0, 0, 0, 67),
(2436, 487, 250, 1, 0, 0, 0, 67),
(2437, 488, 250, 1, 0, 0, 0, 67),
(2438, 489, 250, 1, 0, 0, 0, 67),
(2439, 490, 250, 1, 0, 0, 0, 67),
(2440, 491, 250, 1, 0, 0, 0, 67),
(2441, 492, 250, 1, 0, 0, 0, 67),
(2442, 493, 250, 1, 0, 0, 0, 67),
(2443, 494, 250, 1, 0, 0, 0, 67),
(2444, 495, 250, 1, 0, 0, 0, 67),
(2445, 496, 250, 1, 0, 0, 0, 67),
(2446, 497, 250, 1, 0, 0, 0, 67),
(2447, 498, 250, 1, 0, 0, 0, 67),
(2448, 499, 250, 1, 0, 0, 0, 67),
(2449, 500, 250, 1, 0, 0, 0, 67),
(2450, 501, 250, 1, 0, 0, 0, 67),
(2451, 502, 250, 1, 0, 0, 0, 67),
(2452, 503, 250, 1, 0, 0, 0, 67),
(2453, 504, 250, 1, 0, 0, 0, 67),
(2454, 505, 250, 1, 0, 0, 0, 67),
(2455, 506, 250, 1, 0, 0, 0, 67),
(2456, 507, 250, 1, 0, 0, 0, 67),
(2457, 508, 250, 1, 0, 0, 0, 67),
(2458, 509, 250, 1, 0, 0, 0, 67),
(2459, 510, 250, 1, 0, 0, 0, 67),
(2460, 511, 250, 1, 0, 0, 0, 67),
(2461, 512, 250, 1, 0, 0, 0, 67),
(2462, 513, 250, 1, 0, 0, 0, 67),
(2463, 514, 250, 1, 0, 0, 0, 67),
(2464, 515, 250, 1, 0, 0, 0, 67),
(2465, 516, 250, 1, 0, 0, 0, 67),
(2466, 5, 255, 1, 0, 0, 0, 68),
(2467, 17, 255, 1, 0, 0, 0, 68),
(2468, 23, 255, 1, 0, 0, 0, 68),
(2469, 24, 255, 1, 0, 0, 0, 68),
(2470, 25, 255, 1, 0, 0, 0, 68),
(2471, 26, 255, 1, 0, 0, 0, 68),
(2472, 27, 255, 1, 0, 0, 0, 68),
(2473, 28, 255, 1, 0, 0, 0, 68),
(2474, 29, 255, 1, 0, 0, 0, 68),
(2475, 30, 255, 1, 0, 0, 0, 68),
(2476, 31, 255, 1, 0, 0, 0, 68),
(2477, 32, 255, 1, 0, 0, 0, 68),
(2478, 33, 255, 1, 0, 0, 0, 68),
(2479, 34, 255, 1, 0, 0, 0, 68),
(2480, 35, 255, 1, 0, 0, 0, 68),
(2481, 36, 255, 1, 0, 0, 0, 68),
(2482, 37, 255, 1, 0, 0, 0, 68),
(2483, 38, 255, 1, 0, 0, 0, 68),
(2484, 39, 255, 1, 0, 0, 0, 68),
(2485, 40, 255, 1, 0, 0, 0, 68),
(2486, 41, 255, 1, 0, 0, 0, 68),
(2487, 42, 255, 1, 0, 0, 0, 68),
(2488, 43, 255, 1, 0, 0, 0, 68),
(2489, 44, 255, 1, 0, 0, 0, 68),
(2490, 45, 255, 1, 0, 0, 0, 68),
(2491, 46, 255, 1, 0, 0, 0, 68),
(2492, 47, 255, 1, 0, 0, 0, 68),
(2493, 48, 255, 1, 0, 0, 0, 68),
(2494, 49, 255, 1, 0, 0, 0, 68),
(2495, 50, 255, 1, 0, 0, 0, 68),
(2496, 51, 255, 1, 0, 0, 0, 68),
(2497, 52, 255, 1, 0, 0, 0, 68),
(2498, 53, 255, 1, 0, 0, 0, 68),
(2499, 54, 255, 1, 0, 0, 0, 68),
(2500, 55, 255, 1, 0, 0, 0, 68),
(2501, 56, 255, 1, 0, 0, 0, 68),
(2502, 57, 255, 1, 0, 0, 0, 68),
(2503, 58, 255, 1, 0, 0, 0, 68),
(2504, 59, 255, 1, 0, 0, 0, 68),
(2505, 60, 255, 1, 0, 0, 0, 68),
(2506, 61, 255, 1, 0, 0, 0, 68),
(2507, 62, 255, 1, 0, 0, 0, 68),
(2508, 63, 255, 1, 0, 0, 0, 68),
(2509, 64, 255, 1, 0, 0, 0, 68),
(2510, 65, 255, 1, 0, 0, 0, 68),
(2511, 66, 255, 1, 0, 0, 0, 68),
(2512, 67, 255, 1, 0, 0, 0, 68),
(2513, 68, 255, 1, 0, 0, 0, 68),
(2514, 69, 255, 1, 0, 0, 0, 68),
(2515, 70, 255, 1, 0, 0, 0, 68),
(2516, 71, 255, 1, 0, 0, 0, 68),
(2517, 72, 255, 1, 0, 0, 0, 68),
(2518, 73, 255, 1, 0, 0, 0, 68),
(2519, 74, 255, 1, 0, 0, 0, 68),
(2520, 75, 255, 1, 0, 0, 0, 68),
(2521, 76, 255, 1, 0, 0, 0, 68),
(2522, 77, 255, 1, 0, 0, 0, 68),
(2523, 78, 255, 1, 0, 0, 0, 68),
(2524, 79, 255, 1, 0, 0, 0, 68),
(2525, 80, 255, 1, 0, 0, 0, 68),
(2526, 81, 255, 1, 0, 0, 0, 68),
(2527, 82, 255, 1, 0, 0, 0, 68),
(2528, 83, 255, 1, 0, 0, 0, 68),
(2529, 84, 255, 1, 0, 0, 0, 68),
(2530, 85, 255, 1, 0, 0, 0, 68),
(2531, 86, 255, 1, 0, 0, 0, 68),
(2532, 87, 255, 1, 0, 0, 0, 68),
(2533, 88, 255, 1, 0, 0, 0, 68),
(2534, 89, 255, 1, 0, 0, 0, 68),
(2535, 90, 255, 1, 0, 0, 0, 68),
(2536, 91, 255, 1, 0, 0, 0, 68),
(2537, 92, 255, 1, 0, 0, 0, 68),
(2538, 93, 255, 1, 0, 0, 0, 68),
(2539, 94, 255, 1, 0, 0, 0, 68),
(2540, 95, 255, 1, 0, 0, 0, 68),
(2541, 96, 255, 1, 0, 0, 0, 68),
(2542, 97, 255, 1, 0, 0, 0, 68),
(2543, 98, 255, 1, 0, 0, 0, 68),
(2544, 99, 255, 1, 0, 0, 0, 68),
(2545, 100, 255, 1, 0, 0, 0, 68),
(2546, 101, 255, 1, 0, 0, 0, 68),
(2547, 102, 255, 1, 0, 0, 0, 68),
(2548, 103, 255, 1, 0, 0, 0, 68),
(2549, 104, 255, 1, 0, 0, 0, 68),
(2550, 105, 255, 1, 0, 0, 0, 68),
(2551, 106, 255, 1, 0, 0, 0, 68),
(2552, 107, 255, 1, 0, 0, 0, 68),
(2553, 108, 255, 1, 0, 0, 0, 68),
(2554, 109, 255, 1, 0, 0, 0, 68),
(2555, 110, 255, 1, 0, 0, 0, 68),
(2556, 111, 255, 1, 0, 0, 0, 68),
(2557, 112, 255, 1, 0, 0, 0, 68),
(2558, 114, 255, 1, 0, 0, 0, 68),
(2559, 115, 255, 1, 0, 0, 0, 68),
(2560, 116, 255, 1, 0, 0, 0, 68),
(2561, 117, 255, 1, 0, 0, 0, 68),
(2562, 118, 255, 1, 0, 0, 0, 68),
(2563, 119, 255, 1, 0, 0, 0, 68),
(2564, 120, 255, 1, 0, 0, 0, 68),
(2565, 121, 255, 1, 0, 0, 0, 68),
(2566, 122, 255, 1, 0, 0, 0, 68),
(2567, 123, 255, 1, 0, 0, 0, 68),
(2568, 124, 255, 1, 0, 0, 0, 68),
(2569, 125, 255, 1, 0, 0, 0, 68),
(2570, 126, 255, 1, 0, 0, 0, 68),
(2571, 127, 255, 1, 0, 0, 0, 68),
(2572, 128, 255, 1, 0, 0, 0, 68),
(2573, 129, 255, 1, 0, 0, 0, 68),
(2574, 130, 255, 1, 0, 0, 0, 68),
(2575, 131, 255, 1, 0, 0, 0, 68),
(2576, 132, 255, 1, 0, 0, 0, 68),
(2577, 133, 255, 1, 0, 0, 0, 68),
(2578, 134, 255, 1, 0, 0, 0, 68),
(2579, 135, 255, 1, 0, 0, 0, 68),
(2580, 136, 255, 1, 0, 0, 0, 68),
(2581, 137, 255, 1, 0, 0, 0, 68),
(2582, 138, 255, 1, 0, 0, 0, 68),
(2583, 139, 255, 1, 0, 0, 0, 68),
(2584, 140, 255, 1, 0, 0, 0, 68),
(2585, 141, 255, 1, 0, 0, 0, 68),
(2586, 142, 255, 1, 0, 0, 0, 68),
(2587, 143, 255, 1, 0, 0, 0, 68),
(2588, 144, 255, 1, 0, 0, 0, 68),
(2589, 145, 255, 1, 0, 0, 0, 68),
(2590, 146, 255, 1, 0, 0, 0, 68),
(2591, 147, 255, 1, 0, 0, 0, 68),
(2592, 148, 255, 1, 0, 0, 0, 68),
(2593, 149, 255, 1, 0, 0, 0, 68),
(2594, 150, 255, 1, 0, 0, 0, 68),
(2595, 151, 255, 1, 0, 0, 0, 68),
(2596, 152, 255, 1, 0, 0, 0, 68),
(2597, 153, 255, 1, 0, 0, 0, 68),
(2598, 154, 255, 1, 0, 0, 0, 68),
(2599, 155, 255, 1, 0, 0, 0, 68),
(2600, 156, 255, 1, 0, 0, 0, 68),
(2601, 157, 255, 1, 0, 0, 0, 68),
(2602, 158, 255, 1, 0, 0, 0, 68),
(2603, 159, 255, 1, 0, 0, 0, 68),
(2604, 160, 255, 1, 0, 0, 0, 68),
(2605, 161, 255, 1, 0, 0, 0, 68),
(2606, 162, 255, 1, 0, 0, 0, 68),
(2607, 163, 255, 1, 0, 0, 0, 68),
(2608, 164, 255, 1, 0, 0, 0, 68),
(2609, 165, 255, 1, 0, 0, 0, 68),
(2610, 166, 255, 1, 0, 0, 0, 68),
(2611, 167, 255, 1, 0, 0, 0, 68),
(2612, 168, 255, 1, 0, 0, 0, 68),
(2613, 169, 255, 1, 0, 0, 0, 68),
(2614, 170, 255, 1, 0, 0, 0, 68),
(2615, 171, 255, 1, 0, 0, 0, 68),
(2616, 172, 255, 1, 0, 0, 0, 68),
(2617, 173, 255, 1, 0, 0, 0, 68),
(2618, 174, 255, 1, 0, 0, 0, 68),
(2619, 175, 255, 1, 0, 0, 0, 68),
(2620, 176, 255, 1, 0, 0, 0, 68),
(2621, 177, 255, 1, 0, 0, 0, 68),
(2622, 178, 255, 1, 0, 0, 0, 68),
(2623, 179, 255, 1, 0, 0, 0, 68),
(2624, 180, 255, 1, 0, 0, 0, 68),
(2625, 181, 255, 1, 0, 0, 0, 68),
(2626, 182, 255, 1, 0, 0, 0, 68),
(2627, 183, 255, 1, 0, 0, 0, 68),
(2628, 184, 255, 1, 0, 0, 0, 68),
(2629, 185, 255, 1, 0, 0, 0, 68),
(2630, 186, 255, 1, 0, 0, 0, 68),
(2631, 187, 255, 1, 0, 0, 0, 68),
(2632, 188, 255, 1, 0, 0, 0, 68),
(2633, 189, 255, 1, 0, 0, 0, 68),
(2634, 190, 255, 1, 0, 0, 0, 68),
(2635, 191, 255, 1, 0, 0, 0, 68),
(2636, 192, 255, 1, 0, 0, 0, 68),
(2637, 193, 255, 1, 0, 0, 0, 68),
(2638, 194, 255, 1, 0, 0, 0, 68),
(2639, 195, 255, 1, 0, 0, 0, 68),
(2640, 196, 255, 1, 0, 0, 0, 68),
(2641, 197, 255, 1, 0, 0, 0, 68),
(2642, 198, 255, 1, 0, 0, 0, 68),
(2643, 199, 255, 1, 0, 0, 0, 68),
(2644, 200, 255, 1, 0, 0, 0, 68),
(2645, 201, 255, 1, 0, 0, 0, 68),
(2646, 202, 255, 1, 0, 0, 0, 68),
(2647, 203, 255, 1, 0, 0, 0, 68),
(2648, 204, 255, 1, 0, 0, 0, 68),
(2649, 205, 255, 1, 0, 0, 0, 68),
(2650, 206, 255, 1, 0, 0, 0, 68),
(2651, 207, 255, 1, 0, 0, 0, 68),
(2652, 208, 255, 1, 0, 0, 0, 68),
(2653, 209, 255, 1, 0, 0, 0, 68),
(2654, 210, 255, 1, 0, 0, 0, 68),
(2655, 211, 255, 1, 0, 0, 0, 68),
(2656, 212, 255, 1, 0, 0, 0, 68),
(2657, 213, 255, 1, 0, 0, 0, 68),
(2658, 214, 255, 1, 0, 0, 0, 68),
(2659, 215, 255, 1, 0, 0, 0, 68),
(2660, 216, 255, 1, 0, 0, 0, 68),
(2661, 217, 255, 1, 0, 0, 0, 68),
(2662, 218, 255, 1, 0, 0, 0, 68),
(2663, 219, 255, 1, 0, 0, 0, 68),
(2664, 220, 255, 1, 0, 0, 0, 68),
(2665, 221, 255, 1, 0, 0, 0, 68),
(2666, 222, 255, 1, 0, 0, 0, 68),
(2667, 224, 255, 1, 0, 0, 0, 68),
(2668, 225, 255, 1, 0, 0, 0, 68),
(2669, 226, 255, 1, 0, 0, 0, 68),
(2670, 227, 255, 1, 0, 0, 0, 68),
(2671, 228, 255, 1, 0, 0, 0, 68),
(2672, 229, 255, 1, 0, 0, 0, 68),
(2673, 230, 255, 1, 0, 0, 0, 68),
(2674, 231, 255, 1, 0, 0, 0, 68),
(2675, 232, 255, 1, 0, 0, 0, 68),
(2676, 233, 255, 1, 0, 0, 0, 68),
(2677, 234, 255, 1, 0, 0, 0, 68),
(2678, 235, 255, 1, 0, 0, 0, 68),
(2679, 236, 255, 1, 0, 0, 0, 68),
(2680, 237, 255, 1, 0, 0, 0, 68),
(2681, 238, 255, 1, 0, 0, 0, 68),
(2682, 239, 255, 1, 0, 0, 0, 68),
(2683, 240, 255, 1, 0, 0, 0, 68),
(2684, 241, 255, 1, 0, 0, 0, 68),
(2685, 242, 255, 1, 0, 0, 0, 68),
(2686, 243, 255, 1, 0, 0, 0, 68),
(2687, 244, 255, 1, 0, 0, 0, 68),
(2688, 245, 255, 1, 0, 0, 0, 68),
(2689, 246, 255, 1, 0, 0, 0, 68),
(2690, 247, 255, 1, 0, 0, 0, 68),
(2691, 248, 255, 1, 0, 0, 0, 68),
(2692, 249, 255, 1, 0, 0, 0, 68),
(2693, 250, 255, 1, 0, 0, 0, 68),
(2694, 251, 255, 1, 0, 0, 0, 68),
(2695, 252, 255, 1, 0, 0, 0, 68),
(2696, 253, 255, 1, 0, 0, 0, 68),
(2697, 254, 255, 1, 0, 0, 0, 68),
(2698, 255, 255, 1, 0, 0, 0, 68),
(2699, 256, 255, 1, 0, 0, 0, 68),
(2700, 257, 255, 1, 0, 0, 0, 68),
(2701, 258, 255, 1, 0, 0, 0, 68),
(2702, 259, 255, 1, 0, 0, 0, 68),
(2703, 260, 255, 1, 0, 0, 0, 68),
(2704, 261, 255, 1, 0, 0, 0, 68),
(2705, 262, 255, 1, 0, 0, 0, 68),
(2706, 263, 255, 1, 0, 0, 0, 68),
(2707, 264, 255, 1, 0, 0, 0, 68),
(2708, 265, 255, 1, 0, 0, 0, 68),
(2709, 266, 255, 1, 0, 0, 0, 68),
(2710, 267, 255, 1, 0, 0, 0, 68),
(2711, 269, 255, 1, 0, 0, 0, 68),
(2712, 270, 255, 1, 0, 0, 0, 68),
(2713, 271, 255, 1, 0, 0, 0, 68),
(2714, 272, 255, 1, 0, 0, 0, 68),
(2715, 273, 255, 1, 0, 0, 0, 68),
(2716, 274, 255, 1, 0, 0, 0, 68),
(2717, 275, 255, 1, 0, 0, 0, 68),
(2718, 276, 255, 1, 0, 0, 0, 68),
(2719, 277, 255, 1, 0, 0, 0, 68),
(2720, 278, 255, 1, 0, 0, 0, 68),
(2721, 279, 255, 1, 0, 0, 0, 68),
(2722, 280, 255, 1, 0, 0, 0, 68),
(2723, 281, 255, 1, 0, 0, 0, 68),
(2724, 282, 255, 1, 0, 0, 0, 68),
(2725, 283, 255, 1, 0, 0, 0, 68),
(2726, 284, 255, 1, 0, 0, 0, 68),
(2727, 285, 255, 1, 0, 0, 0, 68),
(2728, 286, 255, 1, 0, 0, 0, 68),
(2729, 287, 255, 1, 0, 0, 0, 68),
(2730, 288, 255, 1, 0, 0, 0, 68),
(2731, 289, 255, 1, 0, 0, 0, 68),
(2732, 290, 255, 1, 0, 0, 0, 68),
(2733, 291, 255, 1, 0, 0, 0, 68),
(2734, 292, 255, 1, 0, 0, 0, 68),
(2735, 293, 255, 1, 0, 0, 0, 68),
(2736, 294, 255, 1, 0, 0, 0, 68),
(2737, 295, 255, 1, 0, 0, 0, 68),
(2738, 296, 255, 1, 0, 0, 0, 68),
(2739, 297, 255, 1, 0, 0, 0, 68),
(2740, 298, 255, 1, 0, 0, 0, 68),
(2741, 299, 255, 1, 0, 0, 0, 68),
(2742, 300, 255, 1, 0, 0, 0, 68),
(2743, 301, 255, 1, 0, 0, 0, 68),
(2744, 302, 255, 1, 0, 0, 0, 68),
(2745, 303, 255, 1, 0, 0, 0, 68),
(2746, 304, 255, 1, 0, 0, 0, 68),
(2747, 305, 255, 1, 0, 0, 0, 68),
(2748, 306, 255, 1, 0, 0, 0, 68),
(2749, 307, 255, 1, 0, 0, 0, 68),
(2750, 308, 255, 1, 0, 0, 0, 68),
(2751, 309, 255, 1, 0, 0, 0, 68),
(2752, 310, 255, 1, 0, 0, 0, 68),
(2753, 311, 255, 1, 0, 0, 0, 68),
(2754, 312, 255, 1, 0, 0, 0, 68),
(2755, 313, 255, 1, 0, 0, 0, 68),
(2756, 314, 255, 1, 0, 0, 0, 68),
(2757, 315, 255, 1, 0, 0, 0, 68),
(2758, 316, 255, 1, 0, 0, 0, 68),
(2759, 317, 255, 1, 0, 0, 0, 68),
(2760, 318, 255, 1, 0, 0, 0, 68),
(2761, 319, 255, 1, 0, 0, 0, 68),
(2762, 320, 255, 1, 0, 0, 0, 68),
(2763, 321, 255, 1, 0, 0, 0, 68),
(2764, 322, 255, 1, 0, 0, 0, 68),
(2765, 323, 255, 1, 0, 0, 0, 68),
(2766, 324, 255, 1, 0, 0, 0, 68),
(2767, 325, 255, 1, 0, 0, 0, 68),
(2768, 326, 255, 1, 0, 0, 0, 68),
(2769, 327, 255, 1, 0, 0, 0, 68),
(2770, 328, 255, 1, 0, 0, 0, 68),
(2771, 329, 255, 1, 0, 0, 0, 68),
(2772, 330, 255, 1, 0, 0, 0, 68),
(2773, 331, 255, 1, 0, 0, 0, 68),
(2774, 332, 255, 1, 0, 0, 0, 68),
(2775, 333, 255, 1, 0, 0, 0, 68),
(2776, 334, 255, 1, 0, 0, 0, 68),
(2777, 335, 255, 1, 0, 0, 0, 68),
(2778, 336, 255, 1, 0, 0, 0, 68),
(2779, 337, 255, 1, 0, 0, 0, 68),
(2780, 338, 255, 1, 0, 0, 0, 68),
(2781, 339, 255, 1, 0, 0, 0, 68),
(2782, 340, 255, 1, 0, 0, 0, 68),
(2783, 341, 255, 1, 0, 0, 0, 68),
(2784, 342, 255, 1, 0, 0, 0, 68),
(2785, 343, 255, 1, 0, 0, 0, 68),
(2786, 344, 255, 1, 0, 0, 0, 68),
(2787, 345, 255, 1, 0, 0, 0, 68),
(2788, 346, 255, 1, 0, 0, 0, 68),
(2789, 347, 255, 1, 0, 0, 0, 68),
(2790, 348, 255, 1, 0, 0, 0, 68),
(2791, 349, 255, 1, 0, 0, 0, 68),
(2792, 350, 255, 1, 0, 0, 0, 68),
(2793, 351, 255, 1, 0, 0, 0, 68),
(2794, 352, 255, 1, 0, 0, 0, 68),
(2795, 353, 255, 1, 0, 0, 0, 68),
(2796, 354, 255, 1, 0, 0, 0, 68),
(2797, 355, 255, 1, 0, 0, 0, 68),
(2798, 356, 255, 1, 0, 0, 0, 68),
(2799, 357, 255, 1, 0, 0, 0, 68),
(2800, 358, 255, 1, 0, 0, 0, 68),
(2801, 359, 255, 1, 0, 0, 0, 68),
(2802, 360, 255, 1, 0, 0, 0, 68),
(2803, 361, 255, 1, 0, 0, 0, 68),
(2804, 362, 255, 1, 0, 0, 0, 68),
(2805, 363, 255, 1, 0, 0, 0, 68),
(2806, 364, 255, 1, 0, 0, 0, 68),
(2807, 365, 255, 1, 0, 0, 0, 68),
(2808, 366, 255, 1, 0, 0, 0, 68),
(2809, 367, 255, 1, 0, 0, 0, 68),
(2810, 368, 255, 1, 0, 0, 0, 68),
(2811, 369, 255, 1, 0, 0, 0, 68),
(2812, 370, 255, 1, 0, 0, 0, 68),
(2813, 371, 255, 1, 0, 0, 0, 68),
(2814, 372, 255, 1, 0, 0, 0, 68),
(2815, 373, 255, 1, 0, 0, 0, 68),
(2816, 374, 255, 1, 0, 0, 0, 68),
(2817, 375, 255, 1, 0, 0, 0, 68),
(2818, 376, 255, 1, 0, 0, 0, 68),
(2819, 377, 255, 1, 0, 0, 0, 68),
(2820, 378, 255, 1, 0, 0, 0, 68),
(2821, 379, 255, 1, 0, 0, 0, 68),
(2822, 380, 255, 1, 0, 0, 0, 68),
(2823, 381, 255, 1, 0, 0, 0, 68),
(2824, 382, 255, 1, 0, 0, 0, 68),
(2825, 383, 255, 1, 0, 0, 0, 68),
(2826, 384, 255, 1, 0, 0, 0, 68),
(2827, 385, 255, 1, 0, 0, 0, 68),
(2828, 386, 255, 1, 0, 0, 0, 68),
(2829, 387, 255, 1, 0, 0, 0, 68),
(2830, 388, 255, 1, 0, 0, 0, 68),
(2831, 389, 255, 1, 0, 0, 0, 68),
(2832, 390, 255, 1, 0, 0, 0, 68),
(2833, 391, 255, 1, 0, 0, 0, 68),
(2834, 392, 255, 1, 0, 0, 0, 68),
(2835, 393, 255, 1, 0, 0, 0, 68),
(2836, 394, 255, 1, 0, 0, 0, 68),
(2837, 395, 255, 1, 0, 0, 0, 68),
(2838, 396, 255, 1, 0, 0, 0, 68),
(2839, 397, 255, 1, 0, 0, 0, 68),
(2840, 398, 255, 1, 0, 0, 0, 68),
(2841, 399, 255, 1, 0, 0, 0, 68),
(2842, 400, 255, 1, 0, 0, 0, 68),
(2843, 401, 255, 1, 0, 0, 0, 68),
(2844, 402, 255, 1, 0, 0, 0, 68),
(2845, 403, 255, 1, 0, 0, 0, 68),
(2846, 404, 255, 1, 0, 0, 0, 68),
(2847, 405, 255, 1, 0, 0, 0, 68),
(2848, 406, 255, 1, 0, 0, 0, 68),
(2849, 407, 255, 1, 0, 0, 0, 68),
(2850, 408, 255, 1, 0, 0, 0, 68),
(2851, 409, 255, 1, 0, 0, 0, 68),
(2852, 410, 255, 1, 0, 0, 0, 68),
(2853, 411, 255, 1, 0, 0, 0, 68),
(2854, 412, 255, 1, 0, 0, 0, 68),
(2855, 413, 255, 1, 0, 0, 0, 68),
(2856, 414, 255, 1, 0, 0, 0, 68),
(2857, 415, 255, 1, 0, 0, 0, 68),
(2858, 416, 255, 1, 0, 0, 0, 68),
(2859, 417, 255, 1, 0, 0, 0, 68),
(2860, 418, 255, 1, 0, 0, 0, 68),
(2861, 419, 255, 1, 0, 0, 0, 68),
(2862, 420, 255, 1, 0, 0, 0, 68),
(2863, 421, 255, 1, 0, 0, 0, 68),
(2864, 422, 255, 1, 0, 0, 0, 68),
(2865, 423, 255, 1, 0, 0, 0, 68),
(2866, 424, 255, 1, 0, 0, 0, 68),
(2867, 425, 255, 1, 0, 0, 0, 68),
(2868, 426, 255, 1, 0, 0, 0, 68),
(2869, 427, 255, 1, 0, 0, 0, 68),
(2870, 428, 255, 1, 0, 0, 0, 68),
(2871, 429, 255, 1, 0, 0, 0, 68),
(2872, 430, 255, 1, 0, 0, 0, 68),
(2873, 431, 255, 1, 0, 0, 0, 68),
(2874, 432, 255, 1, 0, 0, 0, 68),
(2875, 433, 255, 1, 0, 0, 0, 68),
(2876, 434, 255, 1, 0, 0, 0, 68),
(2877, 435, 255, 1, 0, 0, 0, 68),
(2878, 436, 255, 1, 0, 0, 0, 68),
(2879, 437, 255, 1, 0, 0, 0, 68),
(2880, 438, 255, 1, 0, 0, 0, 68),
(2881, 439, 255, 1, 0, 0, 0, 68),
(2882, 440, 255, 1, 0, 0, 0, 68),
(2883, 441, 255, 1, 0, 0, 0, 68),
(2884, 442, 255, 1, 0, 0, 0, 68),
(2885, 443, 255, 1, 0, 0, 0, 68),
(2886, 444, 255, 1, 0, 0, 0, 68),
(2887, 445, 255, 1, 0, 0, 0, 68),
(2888, 446, 255, 1, 0, 0, 0, 68),
(2889, 447, 255, 1, 0, 0, 0, 68),
(2890, 448, 255, 1, 0, 0, 0, 68),
(2891, 449, 255, 1, 0, 0, 0, 68),
(2892, 450, 255, 1, 0, 0, 0, 68),
(2893, 451, 255, 1, 0, 0, 0, 68),
(2894, 452, 255, 1, 0, 0, 0, 68),
(2895, 453, 255, 1, 0, 0, 0, 68),
(2896, 454, 255, 1, 0, 0, 0, 68),
(2897, 455, 255, 1, 0, 0, 0, 68),
(2898, 456, 255, 1, 0, 0, 0, 68),
(2899, 457, 255, 1, 0, 0, 0, 68),
(2900, 458, 255, 1, 0, 0, 0, 68),
(2901, 459, 255, 1, 0, 0, 0, 68),
(2902, 460, 255, 1, 0, 0, 0, 68),
(2903, 461, 255, 1, 0, 0, 0, 68),
(2904, 462, 255, 1, 0, 0, 0, 68),
(2905, 463, 255, 1, 0, 0, 0, 68),
(2906, 464, 255, 1, 0, 0, 0, 68),
(2907, 465, 255, 1, 0, 0, 0, 68),
(2908, 466, 255, 1, 0, 0, 0, 68),
(2909, 467, 255, 1, 0, 0, 0, 68),
(2910, 468, 255, 1, 0, 0, 0, 68),
(2911, 469, 255, 1, 0, 0, 0, 68),
(2912, 470, 255, 1, 0, 0, 0, 68),
(2913, 471, 255, 1, 0, 0, 0, 68),
(2914, 472, 255, 1, 0, 0, 0, 68),
(2915, 473, 255, 1, 0, 0, 0, 68),
(2916, 474, 255, 1, 0, 0, 0, 68),
(2917, 475, 255, 1, 0, 0, 0, 68),
(2918, 476, 255, 1, 0, 0, 0, 68),
(2919, 477, 255, 1, 0, 0, 0, 68),
(2920, 478, 255, 1, 0, 0, 0, 68),
(2921, 479, 255, 1, 0, 0, 0, 68),
(2922, 480, 255, 1, 0, 0, 0, 68),
(2923, 481, 255, 1, 0, 0, 0, 68),
(2924, 482, 255, 1, 0, 0, 0, 68),
(2925, 483, 255, 1, 0, 0, 0, 68),
(2926, 484, 255, 1, 0, 0, 0, 68),
(2927, 485, 255, 1, 0, 0, 0, 68),
(2928, 486, 255, 1, 0, 0, 0, 68),
(2929, 487, 255, 1, 0, 0, 0, 68),
(2930, 488, 255, 1, 0, 0, 0, 68),
(2931, 489, 255, 1, 0, 0, 0, 68),
(2932, 490, 255, 1, 0, 0, 0, 68),
(2933, 491, 255, 1, 0, 0, 0, 68),
(2934, 492, 255, 1, 0, 0, 0, 68),
(2935, 493, 255, 1, 0, 0, 0, 68),
(2936, 494, 255, 1, 0, 0, 0, 68),
(2937, 495, 255, 1, 0, 0, 0, 68),
(2938, 496, 255, 1, 0, 0, 0, 68),
(2939, 497, 255, 1, 0, 0, 0, 68),
(2940, 498, 255, 1, 0, 0, 0, 68),
(2941, 499, 255, 1, 0, 0, 0, 68),
(2942, 500, 255, 1, 0, 0, 0, 68),
(2943, 501, 255, 1, 0, 0, 0, 68),
(2944, 502, 255, 1, 0, 0, 0, 68),
(2945, 503, 255, 1, 0, 0, 0, 68),
(2946, 504, 255, 1, 0, 0, 0, 68),
(2947, 505, 255, 1, 0, 0, 0, 68),
(2948, 506, 255, 1, 0, 0, 0, 68),
(2949, 507, 255, 1, 0, 0, 0, 68),
(2950, 508, 255, 1, 0, 0, 0, 68),
(2951, 509, 255, 1, 0, 0, 0, 68),
(2952, 510, 255, 1, 0, 0, 0, 68),
(2953, 511, 255, 1, 0, 0, 0, 68),
(2954, 512, 255, 1, 0, 0, 0, 68),
(2955, 513, 255, 1, 0, 0, 0, 68),
(2956, 514, 255, 1, 0, 0, 0, 68),
(2957, 515, 255, 1, 0, 0, 0, 68),
(2958, 516, 255, 1, 0, 0, 0, 68),
(2959, 517, 4, 1, 0, 0, 0, 1),
(2960, 518, 4, 1, 0, 0, 0, 1),
(2961, 519, 4, 1, 0, 0, 0, 1),
(2962, 520, 4, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holydays`
--

CREATE TABLE `holydays` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `occasion` varchar(255) DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holy_day_types`
--

CREATE TABLE `holy_day_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `is_rtl` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `leave_details` varchar(255) DEFAULT NULL,
  `max_days` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leave_application_translations`
--

CREATE TABLE `leave_application_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_application_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `explanation` text,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log_tables`
--

CREATE TABLE `log_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `loggable_id` int(11) NOT NULL,
  `loggable_type` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `examination_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `mark_types` text,
  `total` double(8,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES
(1, 137, '566987', 1, 1, 2, 1, '{"Written":"40","MCQ":"40"}', 80.00, 'Active', NULL, 1),
(2, 138, '987654', 1, 1, 2, 1, '{"Written":"24 ","MCQ":"52"}', 76.00, 'Active', NULL, 1),
(3, 146, '6589', 1, 1, 2, 1, '{"Written":"20 ","MCQ":"40 "}', 60.00, 'Active', NULL, 1),
(4, 147, '2345', 1, 1, 4, 1, '{"Written":"25","MCQ":"52","Practical":"10"}', 87.00, 'Active', NULL, 1),
(5, 150, '589', 1, 1, 2, 1, '{"Written":"35","MCQ":"34","Practical":"25"}', 94.00, 'Active', NULL, 1),
(6, 137, '566987', 1, 1, 2, 3, '{"Written":"52","MCQ":"45 "}', 97.00, 'Active', NULL, 1),
(7, 138, '987654', 1, 1, 2, 3, '{"Written":"30","MCQ":"45"}', 75.00, 'Active', NULL, 1),
(8, 148, '3333', 1, 2, 6, 4, '{"Written":"35 ","MCQ":"35 "}', 70.00, 'Active', NULL, 1),
(9, 137, '566987', 1, 1, 2, 5, '{"Written":"40","MCQ":"30","Practical":"25"}', 95.00, 'Active', NULL, 1),
(10, 137, '566987', 1, 1, 2, 6, '{"Written":"25","MCQ":"30"}', 55.00, 'Active', NULL, 1),
(12, 137, '566987', 1, 1, 2, 7, '{"Written":"20 ","MCQ":"20 ","Practical":"10 "}', 50.00, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks_types`
--

CREATE TABLE `marks_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marks_types`
--

INSERT INTO `marks_types` (`id`, `marks_type`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'Written', 'Active', NULL, 1),
(2, 'MCQ', 'Active', NULL, 1),
(3, 'Practical', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `filable_id` int(11) DEFAULT NULL,
  `filable_type` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_displayable` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `icon_name` varchar(255) DEFAULT NULL,
  `is_common_access` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES
(5, 'student-list', 41, 0, 1, 1, 1, NULL, '', 0),
(6, 'log-out', 0, 0, 1, 0, 1, NULL, '', 1),
(7, 'sign-in', 0, 0, 1, 0, 1, NULL, '', 1),
(8, 'sign-in-form', 0, 0, 1, 0, 1, NULL, '', 1),
(9, 'log-in', 0, 0, 1, 0, 1, NULL, '', 1),
(10, 'role-check', 0, 0, 1, 0, 1, NULL, '', 1),
(11, '''/''', 0, 0, 1, 1, 1, '2016-05-28 22:18:31', '', 0),
(12, 'login-form', 0, 0, 1, 0, 1, NULL, '', 1),
(13, 'admin', 0, 0, 1, 1, 1, NULL, '', 1),
(14, 'employee-profile', 0, 0, 1, 0, 1, NULL, '', 1),
(15, 'choose-lang', 0, 0, 1, 0, 1, NULL, '', 1),
(16, 'imagecache', 0, 0, 1, 0, 1, NULL, '', 1),
(17, 'menu-list', 0, 0, 1, 1, 1, NULL, '', 0),
(18, 'menu-create-form', 0, 0, 1, 0, 1, NULL, '', 1),
(19, 'menu-create', 0, 0, 1, 0, 1, NULL, '', 1),
(20, 'menu-edit-form', 0, 0, 1, 0, 1, NULL, '', 1),
(21, 'menu-edit', 0, 0, 1, 0, 1, NULL, '', 1),
(22, 'menu-delete', 0, 0, 1, 0, 1, NULL, '', 1),
(23, 'status-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(24, 'status-create', 0, 0, 1, 0, 1, NULL, '', 0),
(25, 'status-list', 90, 0, 1, 1, 1, NULL, '', 0),
(26, 'edit-status-form', 0, 0, 1, 0, 1, NULL, '', 0),
(27, 'edit-status', 0, 0, 1, 0, 1, NULL, '', 0),
(28, 'group-info', 0, 0, 1, 0, 1, NULL, '', 0),
(29, 'role-list', 90, 0, 1, 1, 1, NULL, '', 0),
(30, 'role-assign-form', 90, 0, 1, 1, 1, NULL, '', 0),
(31, 'assign-permission-form', 90, 0, 1, 1, 1, NULL, '', 0),
(32, 'role-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(33, 'role-create', 0, 0, 1, 0, 1, NULL, '', 0),
(34, 'role-assign', 0, 0, 1, 0, 1, NULL, '', 0),
(35, 'role-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(36, 'role-view', 0, 0, 1, 0, 1, NULL, '', 0),
(37, 'role-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(38, 'role-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(39, 'group-access', 0, 0, 1, 0, 1, NULL, '', 0),
(40, 'role-access', 0, 0, 1, 0, 1, NULL, '', 0),
(41, '#', 0, 0, 1, 1, 1, NULL, '', 0),
(42, 'user-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(43, 'user-create', 0, 0, 1, 0, 1, NULL, '', 0),
(44, 'user-view', 0, 0, 1, 0, 1, NULL, '', 0),
(45, 'user-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(46, 'user-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(47, 'user-list', 41, 0, 1, 1, 1, NULL, '', 0),
(48, 'student_add_form', 0, 0, 1, 0, 1, NULL, '', 0),
(49, 'student-create', 0, 0, 1, 0, 1, NULL, '', 0),
(50, 'student-list-by-class', 0, 0, 1, 0, 1, NULL, '', 0),
(51, 'student-list-by-section', 0, 0, 1, 0, 1, NULL, '', 0),
(52, 'student-list-by-sub', 0, 0, 1, 0, 1, NULL, '', 0),
(53, 'student-class', 0, 0, 1, 0, 1, NULL, '', 0),
(54, 'student-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(55, 'student-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(56, 'student-view', 0, 0, 1, 0, 1, NULL, '', 0),
(57, 'student-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(58, 'teacher-list', 41, 0, 1, 1, 1, NULL, '', 0),
(59, 'teacher-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(60, 'teacher-create', 0, 0, 1, 0, 1, NULL, '', 0),
(61, 'teacher-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(62, 'teacher-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(63, 'teacher-view', 0, 0, 1, 0, 1, NULL, '', 0),
(64, 'teacher-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(65, 'guardian-list', 41, 0, 1, 1, 1, NULL, '', 0),
(66, 'guardian-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(67, 'guardian-create', 0, 0, 1, 0, 1, NULL, '', 0),
(68, 'guardian-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(69, 'guardian-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(70, 'guardian-view', 0, 0, 1, 0, 1, NULL, '', 0),
(71, 'guardian-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(72, 'gender-religion', 0, 0, 1, 0, 1, NULL, '', 0),
(73, 'gender-list', 90, 0, 1, 1, 1, NULL, '', 0),
(74, 'gender-add-form', 72, 0, 1, 0, 1, NULL, '', 0),
(75, 'religion-list', 90, 0, 1, 1, 1, NULL, '', 0),
(76, 'religion-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(77, 'religion-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(78, 'religion-view', 0, 0, 1, 0, 1, NULL, '', 0),
(79, 'religion-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(80, 'gender-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(81, 'gender-view', 0, 0, 1, 0, 1, NULL, '', 0),
(82, 'gender-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(83, 'gender-add', 0, 0, 1, 0, 1, NULL, '', 0),
(84, 'religion-add', 0, 0, 1, 0, 1, NULL, '', 0),
(85, 'department-designation', 0, 0, 1, 0, 1, NULL, '', 0),
(86, 'gender-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(87, 'religion-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(88, 'department-list', 90, 0, 1, 1, 1, NULL, '', 0),
(89, 'designation-list', 90, 0, 1, 1, 1, NULL, '', 0),
(90, 'user-settings', 0, 0, 1, 1, 1, NULL, '', 0),
(91, 'academic-settings', 0, 0, 1, 1, 1, NULL, '', 0),
(92, 'department-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(93, 'department-create', 0, 0, 1, 0, 1, NULL, '', 0),
(94, 'department-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(95, 'department-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(96, 'department-view', 0, 0, 1, 0, 1, NULL, '', 0),
(97, 'department-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(98, 'designation-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(99, 'designation-add', 0, 0, 1, 0, 1, NULL, '', 0),
(100, 'designation-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(101, 'designation-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(102, 'designation-view', 0, 0, 1, 0, 1, NULL, '', 0),
(103, 'designation-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(104, 'designation-dept', 0, 0, 1, 0, 1, NULL, '', 0),
(105, 'designation-user', 0, 0, 1, 0, 1, NULL, '', 0),
(106, 'building-list', 91, 0, 1, 1, 1, NULL, '', 0),
(107, 'floor-list', 91, 0, 1, 1, 1, NULL, '', 0),
(108, 'room-list', 91, 0, 1, 1, 1, NULL, '', 0),
(109, 'class-list', 91, 0, 1, 1, 1, NULL, '', 0),
(110, 'section-list', 91, 0, 1, 1, 1, NULL, '', 0),
(111, 'subject-list', 91, 0, 1, 1, 1, NULL, '', 0),
(112, 'routine-list', 91, 0, 1, 1, 1, NULL, '', 0),
(114, 'marks-marks', 0, 0, 1, 1, 1, NULL, '', 0),
(115, 'mark-type-list', 114, 0, 1, 1, 1, NULL, '', 0),
(116, 'create-marks-form', 114, 0, 1, 1, 1, NULL, '', 0),
(117, 'student-marks-form', 114, 0, 1, 1, 1, NULL, '', 0),
(118, 'exam-results', 0, 0, 1, 1, 1, NULL, '', 0),
(119, 'examination-list', 118, 0, 1, 1, 1, NULL, '', 0),
(120, 'examinationSchedule-list', 118, 0, 1, 1, 1, NULL, '', 0),
(121, 'result-system-list', 118, 0, 1, 1, 1, NULL, '', 0),
(122, 'att', 0, 0, 1, 1, 1, NULL, '', 0),
(123, 'student-attendance-list', 122, 0, 1, 1, 1, NULL, '', 0),
(124, 'monthly-device-attendance', 122, 0, 1, 1, 1, NULL, '', 0),
(125, 'shiftf', 0, 0, 1, 1, 1, NULL, '', 0),
(126, 'shift-list', 125, 0, 1, 1, 1, NULL, '', 0),
(127, 'assign-shift-dept-form', 125, 0, 1, 1, 1, NULL, '', 0),
(128, 'building-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(129, 'building-create', 0, 0, 1, 0, 1, NULL, '', 0),
(130, 'building-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(131, 'building-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(132, 'building-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(133, 'floor-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(134, 'floor-create', 0, 0, 1, 0, 1, NULL, '', 0),
(135, 'floor-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(136, 'floor-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(137, 'floor-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(138, 'room-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(139, 'room-create', 0, 0, 1, 0, 1, NULL, '', 0),
(140, 'room-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(141, 'room-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(142, 'room-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(143, 'class-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(144, 'class-create', 0, 0, 1, 0, 1, NULL, '', 0),
(145, 'class-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(146, 'class-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(147, 'class-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(148, 'section_add_form', 0, 0, 1, 0, 1, NULL, '', 0),
(149, 'section-create', 0, 0, 1, 0, 1, NULL, '', 0),
(150, 'section-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(151, 'section-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(152, 'section-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(153, 'subject-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(154, 'subject-create', 0, 0, 1, 0, 1, NULL, '', 0),
(155, 'subject-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(156, 'subject-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(157, 'subject-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(158, 'routine-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(159, 'routine-create', 0, 0, 1, 0, 1, NULL, '', 0),
(160, 'routine-view', 0, 0, 1, 0, 1, NULL, '', 0),
(161, 'routine-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(162, 'routine-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(163, 'routine-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(164, 'marks-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(165, 'marks-type-create', 0, 0, 1, 0, 1, NULL, '', 0),
(166, 'marks-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(167, 'mark-type-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(168, 'marks-type-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(169, 'create-marks', 0, 0, 1, 0, 1, NULL, '', 0),
(170, 'student-mark-add', 0, 0, 1, 0, 1, NULL, '', 0),
(171, 'examination-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(172, 'examination-create', 0, 0, 1, 0, 1, NULL, '', 0),
(173, 'examination-view', 0, 0, 1, 0, 1, NULL, '', 0),
(174, 'examination-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(175, 'examination-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(176, 'examination-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(177, 'examinationSchedule-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(178, 'examinationSchedule-create', 0, 0, 1, 0, 1, NULL, '', 0),
(179, 'examinationSchedule-view', 0, 0, 1, 0, 1, NULL, '', 0),
(180, 'examinationSchedule-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(181, 'examinationSchedule-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(182, 'examinationSchedule-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(183, 'result-system-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(184, 'create-result-system', 0, 0, 1, 0, 1, NULL, '', 0),
(185, 'result-system-view', 0, 0, 1, 0, 1, NULL, '', 0),
(186, 'add-student-attendance-form', 0, 0, 1, 0, 1, NULL, '', 0),
(187, 'add-student-attendance', 0, 0, 1, 0, 1, NULL, '', 0),
(188, 'monthly-device-data-upload', 0, 0, 1, 0, 1, NULL, '', 0),
(189, 'monthly-device-data-preview', 0, 0, 1, 0, 1, NULL, '', 0),
(190, 'shift-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(191, 'shift-create-json', 0, 0, 1, 0, 1, NULL, '', 0),
(192, 'shift-view', 0, 0, 1, 0, 1, NULL, '', 0),
(193, 'shift-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(194, 'shift-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(195, 'shift-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(196, 'snt_location', 0, 0, 1, 1, 1, NULL, '', 0),
(197, 'country-list', 196, 0, 1, 1, 1, NULL, '', 0),
(198, 'country-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(199, 'country-create', 0, 0, 1, 0, 1, NULL, '', 0),
(200, 'country-view', 0, 0, 1, 0, 1, NULL, '', 0),
(201, 'country-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(202, 'country-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(203, 'country-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(204, 'division-list', 196, 0, 1, 1, 1, NULL, '', 0),
(205, 'district-list', 196, 0, 1, 1, 1, NULL, '', 0),
(206, 'snt_message', 0, 0, 1, 1, 1, NULL, '', 0),
(207, 'message-add-form', 206, 0, 1, 1, 1, NULL, '', 0),
(208, 'message-sent', 206, 0, 1, 1, 1, NULL, '', 0),
(209, 'message-inbox', 206, 0, 1, 1, 1, NULL, '', 0),
(210, 'message-trash', 206, 0, 1, 1, 1, NULL, '', 0),
(211, 'message-trash-view', 0, 0, 1, 0, 1, NULL, '', 0),
(212, 'message-create', 0, 0, 1, 0, 1, NULL, '', 0),
(213, 'message-user-list', 0, 0, 1, 0, 1, NULL, '', 0),
(214, 'message-view', 0, 0, 1, 0, 1, NULL, '', 0),
(215, 'message-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(216, 'message-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(217, 'message-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(218, 'notice-list', 0, 0, 1, 1, 1, NULL, '', 0),
(219, 'notice-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(220, 'notice-create', 0, 0, 1, 0, 1, NULL, '', 0),
(221, 'notice-view', 0, 0, 1, 0, 1, NULL, '', 0),
(222, 'notice-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(223, 'notice-edit', 0, 0, 1, 0, 1, NULL, '', 1),
(224, 'notice-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(225, 'event-list', 0, 0, 1, 1, 1, NULL, '', 0),
(226, 'event-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(227, 'event-create', 0, 0, 1, 0, 1, NULL, '', 0),
(228, 'event-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(229, 'event-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(230, 'event-view', 0, 0, 1, 0, 1, NULL, '', 0),
(231, 'event-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(232, 'snt_account_info', 0, 0, 1, 1, 1, NULL, '', 0),
(233, 'account-type-list', 232, 0, 1, 1, 1, NULL, '', 0),
(234, 'account-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(235, 'account-type-create', 0, 0, 1, 0, 1, NULL, '', 0),
(236, 'account-type-view', 0, 0, 1, 0, 1, NULL, '', 0),
(237, 'account-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(238, 'account-type-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(239, 'account-type-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(240, 'amount-type-list', 232, 0, 1, 1, 1, NULL, '', 0),
(241, 'amount-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(242, 'amount-type-create', 0, 0, 1, 0, 1, NULL, '', 0),
(243, 'amount-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(244, 'amount-type-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(245, 'amount-type-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(246, 'amount-category-list', 232, 0, 1, 1, 1, NULL, '', 0),
(247, 'amount-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(248, 'amount-category-create', 0, 0, 1, 0, 1, NULL, '', 0),
(249, 'amount-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(250, 'amount-category-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(251, 'amount-category-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(252, 'account-list', 232, 0, 1, 1, 1, NULL, '', 0),
(253, 'account-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(254, 'account-create', 0, 0, 1, 0, 1, NULL, '', 0),
(255, 'account-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(256, 'account-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(257, 'account-view', 0, 0, 1, 0, 1, NULL, '', 0),
(258, 'account-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(259, 'account-report', 262, 0, 1, 1, 1, NULL, '', 0),
(260, 'account-user-list', 0, 0, 1, 0, 1, NULL, '', 0),
(261, 'account-report-details', 0, 0, 1, 0, 1, NULL, '', 0),
(262, 'snt_report', 0, 0, 1, 1, 1, NULL, '', 0),
(263, 'your-timesheet', 262, 0, 1, 1, 1, NULL, '', 0),
(264, 'my-timesheet', 0, 0, 1, 0, 1, NULL, '', 0),
(265, 'my-timesheet-report', 0, 0, 1, 0, 1, NULL, '', 0),
(266, 'timesheet-report', 0, 0, 1, 0, 1, NULL, '', 0),
(267, 'user-month-timesheet-details', 0, 0, 1, 0, 1, NULL, '', 0),
(268, 'get-salary-from-punch', 262, 0, 1, 1, 1, NULL, '', 1),
(269, 'monthly-salary-report', 0, 0, 1, 0, 1, NULL, '', 0),
(270, 'user-year-salary-details', 0, 0, 1, 0, 1, NULL, '', 0),
(271, 'report-student-id-card', 262, 0, 1, 1, 1, NULL, '', 0),
(272, 'report-student-admit-card', 262, 0, 1, 1, 1, NULL, '', 0),
(273, 'report-testimonial', 262, 0, 1, 1, 1, NULL, '', 0),
(274, 'report-tc', 262, 0, 1, 1, 1, NULL, '', 0),
(275, 'report-clearance', 262, 0, 1, 1, 1, NULL, '', 0),
(276, 'report-certification', 262, 0, 1, 1, 1, NULL, '', 0),
(277, 'report-section', 0, 0, 1, 0, 1, NULL, '', 0),
(278, 'student-id-card-details', 0, 0, 1, 0, 1, NULL, '', 0),
(279, 'student-admit-card-details', 0, 0, 1, 0, 1, NULL, '', 0),
(280, 'testimonial-details', 0, 0, 1, 0, 1, NULL, '', 0),
(281, 'tc-details', 0, 0, 1, 0, 1, NULL, '', 0),
(282, 'clearance-details', 0, 0, 1, 0, 1, NULL, '', 0),
(283, 'certification-details', 0, 0, 1, 0, 1, NULL, '', 0),
(284, 'class-section', 0, 0, 1, 0, 1, NULL, '', 0),
(285, 'snt_salary', 0, 0, 1, 1, 1, NULL, '', 0),
(286, 'salary-type-create-form', 285, 0, 1, 0, 1, NULL, '', 0),
(287, 'salary-type-list', 285, 0, 1, 1, 1, NULL, '', 0),
(288, 'salary-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(289, 'salary-type-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(290, 'salary-type-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(291, 'create-salary-type', 0, 0, 1, 0, 1, NULL, '', 0),
(292, 'salary-rules-create-form', 285, 0, 1, 0, 1, NULL, '', 0),
(293, 'create-salary-rules', 0, 0, 1, 0, 1, NULL, '', 0),
(294, 'salary-allowance-rules-list', 285, 0, 1, 1, 1, NULL, '', 0),
(295, 'allowance-rule-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(296, 'allowance-rule-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(297, 'allowance-rule-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(298, 'overtime-rules-create-form', 285, 0, 1, 0, 1, NULL, '', 0),
(299, 'create-overtime-rules', 0, 0, 1, 0, 1, NULL, '', 0),
(300, 'salary-overtime-rules-list', 285, 0, 1, 1, 1, NULL, '', 0),
(301, 'cut-rules-create-form', 285, 0, 1, 0, 1, NULL, '', 0),
(302, 'create-salary-cut-rules', 0, 0, 1, 0, 1, NULL, '', 0),
(303, 'salary-cut-rules-list', 285, 0, 1, 1, 1, NULL, '', 0),
(304, 'bonus-rules-create-form', 285, 0, 1, 0, 1, NULL, '', 0),
(305, 'create-bonus-rules', 0, 0, 1, 0, 1, NULL, '', 0),
(306, 'salary-bonus-rules-list', 285, 0, 1, 1, 1, NULL, '', 0),
(307, 'create-bonus-attr', 0, 0, 1, 0, 1, NULL, '', 0),
(308, 'check-bonus-attr', 0, 0, 1, 0, 1, NULL, '', 0),
(309, 'delete-bonus-attr', 0, 0, 1, 0, 1, NULL, '', 0),
(310, 'employee-salary', 0, 0, 1, 0, 1, NULL, '', 0),
(311, 'form-setting-list', 0, 0, 1, 1, 1, NULL, '', 0),
(312, 'form-setting-form', 0, 0, 1, 0, 1, NULL, '', 0),
(313, 'add-form-settings', 0, 0, 1, 0, 1, NULL, '', 0),
(314, 'form-setting-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(315, 'form-setting-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(316, 'form-setting-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(317, 'leave-list', 0, 0, 1, 1, 1, NULL, '', 0),
(318, 'leave-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(319, 'leave-create', 0, 0, 1, 0, 1, NULL, '', 0),
(320, 'leave-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(321, 'leave-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(322, 'leave-view', 0, 0, 1, 0, 1, NULL, '', 0),
(323, 'leave-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(324, 'snt_leave_application', 0, 0, 1, 1, 1, NULL, '', 0),
(325, 'application-list', 324, 0, 1, 1, 1, NULL, '', 0),
(326, 'application-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(327, 'application-create', 0, 0, 1, 0, 1, NULL, '', 0),
(328, 'application-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(329, 'application-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(330, 'application-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(331, 'employee-leave', 0, 0, 1, 0, 1, NULL, '', 0),
(332, 'snt_holyday', 0, 0, 1, 1, 1, NULL, '', 0),
(333, 'holydaytype-list', 332, 0, 1, 1, 1, NULL, '', 0),
(334, 'holydaytype-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(335, 'holydaytype-add', 0, 0, 1, 0, 1, NULL, '', 0),
(336, 'edit-holidaytype-form', 0, 0, 1, 0, 1, NULL, '', 0),
(337, 'edit-holidaytype', 0, 0, 1, 0, 1, NULL, '', 0),
(338, 'view-holidaytype', 0, 0, 1, 0, 1, NULL, '', 0),
(339, 'delete-holidaytype', 0, 0, 1, 0, 1, NULL, '', 0),
(340, 'holyday-list', 332, 0, 1, 1, 1, NULL, '', 0),
(341, 'holyday-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(342, 'holyday-add', 0, 0, 1, 0, 1, NULL, '', 0),
(343, 'edit-holiday-form', 0, 0, 1, 0, 1, NULL, '', 0),
(344, 'edit-holiday', 0, 0, 1, 0, 1, NULL, '', 0),
(345, 'view-holiday', 0, 0, 1, 0, 1, NULL, '', 0),
(346, 'delete-holiday', 0, 0, 1, 0, 1, NULL, '', 0),
(347, 'holyday-month', 0, 0, 1, 0, 1, NULL, '', 0),
(348, 'snt_library', 0, 0, 1, 1, 1, NULL, '', 0),
(349, 'author-list', 348, 0, 1, 1, 1, NULL, '', 0),
(350, 'author-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(351, 'author-create', 0, 0, 1, 0, 1, NULL, '', 0),
(352, 'author-view', 0, 0, 1, 0, 1, NULL, '', 0),
(353, 'author-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(354, 'author-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(355, 'author-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(356, 'rack-list', 348, 0, 1, 0, 1, NULL, '', 0),
(357, 'rack-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(358, 'rack-create', 0, 0, 1, 0, 1, NULL, '', 0),
(359, 'rack-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(360, 'rack-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(361, 'rack-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(362, 'floor-build', 0, 0, 1, 0, 1, NULL, '', 0),
(363, 'room-floor', 0, 0, 1, 0, 1, NULL, '', 0),
(364, 'book-category-list', 348, 0, 1, 1, 1, NULL, '', 0),
(365, 'book-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(366, 'book-category-create', 0, 0, 1, 0, 1, NULL, '', 0),
(367, 'book-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(368, 'book-category-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(369, 'book-category-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(370, 'book-list', 348, 0, 1, 1, 1, NULL, '', 0),
(371, 'book-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(372, 'book-create', 0, 0, 1, 0, 1, NULL, '', 0),
(373, 'book-view', 0, 0, 1, 0, 1, NULL, '', 0),
(374, 'book-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(375, 'book-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(376, 'book-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(377, 'general-report-page', 262, 0, 1, 1, 1, NULL, '', 0),
(378, 'general-report-teacher', 0, 0, 1, 0, 1, NULL, '', 0),
(379, 'general-report-student', 0, 0, 1, 0, 1, NULL, '', 0),
(380, 'general-report-routine', 0, 0, 1, 0, 1, NULL, '', 0),
(381, 'snt_profile_setting', 0, 0, 1, 1, 1, NULL, '', 0),
(382, 'training-list', 381, 0, 1, 1, 1, NULL, '', 0),
(383, 'training-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(384, 'training-create', 0, 0, 1, 0, 1, NULL, '', 0),
(385, 'training-view', 0, 0, 1, 0, 1, NULL, '', 0),
(386, 'training-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(387, 'training-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(388, 'training-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(389, 'professional-qualification-list', 381, 0, 1, 1, 1, NULL, '', 0),
(390, 'professional-qualification-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(391, 'professional-qualification-create', 0, 0, 1, 0, 1, NULL, '', 0),
(392, 'professional-qualification-view', 0, 0, 1, 0, 1, NULL, '', 0),
(393, 'professional-qualification-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(394, 'professional-qualification-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(395, 'professional-qualification-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(396, 'business-type-list', 381, 0, 1, 1, 1, NULL, '', 0),
(397, 'business-type-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(398, 'business-type-create', 0, 0, 1, 0, 1, NULL, '', 0),
(399, 'business-type-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(400, 'business-type-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(401, 'business-type-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(402, 'experience-category-list', 381, 0, 1, 1, 1, NULL, '', 0),
(403, 'experience-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(404, 'experience-category-create', 0, 0, 1, 0, 1, NULL, '', 0),
(405, 'experience-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(406, 'experience-category-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(407, 'experience-category-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(408, 'category-experience', 0, 0, 1, 0, 1, NULL, '', 0),
(409, 'experience-list', 381, 0, 1, 1, 1, NULL, '', 0),
(410, 'experience-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(411, 'experience-create', 0, 0, 1, 0, 1, NULL, '', 0),
(412, 'experience-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(413, 'experience-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(414, 'experience-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(415, 'employment-history-list', 381, 0, 1, 1, 1, NULL, '', 0),
(416, 'employment-history-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(417, 'employment-history-create', 0, 0, 1, 0, 1, NULL, '', 0),
(418, 'employment-history-view', 0, 0, 1, 0, 1, NULL, '', 0),
(419, 'employment-history-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(420, 'employment-history-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(421, 'employment-history-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(422, 'skill-category-list', 381, 0, 1, 1, 1, NULL, '', 0),
(423, 'skill-category-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(424, 'skill-category-create', 0, 0, 1, 0, 1, NULL, '', 0),
(425, 'skill-category-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(426, 'skill-category-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(427, 'skill-category-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(428, 'category-skill', 0, 0, 1, 0, 1, NULL, '', 0),
(429, 'skill-list', 381, 0, 1, 1, 1, NULL, '', 0),
(430, 'skill-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(431, 'skill-create', 0, 0, 1, 0, 1, NULL, '', 0),
(432, 'skill-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(433, 'skill-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(434, 'skill-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(435, 'cv-language-list', 381, 0, 1, 1, 1, NULL, '', 0),
(436, 'cv-language-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(437, 'cv-language-create', 0, 0, 1, 0, 1, NULL, '', 0),
(438, 'cv-language-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(439, 'cv-language-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(440, 'cv-language-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(441, 'cv-language-skill-list', 381, 0, 1, 1, 1, NULL, '', 0),
(442, 'cv-language-skill-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(443, 'cv-language-skill-create', 0, 0, 1, 0, 1, NULL, '', 0),
(444, 'cv-language-skill-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(445, 'cv-language-skill-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(446, 'cv-language-skill-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(447, 'relation-list', 381, 0, 1, 1, 1, NULL, '', 0),
(448, 'relation-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(449, 'relation-create', 0, 0, 1, 0, 1, NULL, '', 0),
(450, 'relation-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(451, 'relation-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(452, 'relation-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(453, 'reference-list', 381, 0, 1, 1, 1, NULL, '', 0),
(454, 'reference-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(455, 'reference-create', 0, 0, 1, 0, 1, NULL, '', 0),
(456, 'reference-view', 0, 0, 1, 0, 1, NULL, '', 0),
(457, 'reference-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(458, 'reference-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(459, 'reference-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(460, 'specialization-list', 381, 0, 1, 1, 1, NULL, '', 0),
(461, 'specialization-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(462, 'specialization-create', 0, 0, 1, 0, 1, NULL, '', 0),
(463, 'specialization-view', 0, 0, 1, 0, 1, NULL, '', 0),
(464, 'specialization-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(465, 'specialization-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(466, 'specialization-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(467, 'education-level-list', 381, 0, 1, 1, 1, NULL, '', 0),
(468, 'education-level-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(469, 'education-level-create', 0, 0, 1, 0, 1, NULL, '', 0),
(470, 'education-level-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(471, 'education-level-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(472, 'education-level-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(473, 'academic-qualification-list', 381, 0, 1, 1, 1, NULL, '', 0),
(474, 'academic-qualification-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(475, 'academic-qualification-create', 0, 0, 1, 0, 1, NULL, '', 0),
(476, 'academic-qualification-view', 0, 0, 1, 0, 1, NULL, '', 0),
(477, 'academic-qualification-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(478, 'academic-qualification-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(479, 'academic-qualification-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(480, 'student-marks-view', 0, 0, 1, 0, 1, NULL, '', 0),
(481, 'section-list-by-class', 0, 0, 1, 0, 1, NULL, '', 0),
(482, 'student-list-view-marks', 0, 0, 1, 0, 1, NULL, '', 0),
(483, 'division-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(484, 'division-create', 0, 0, 1, 0, 1, NULL, '', 0),
(485, 'division-view', 0, 0, 1, 0, 1, NULL, '', 0),
(486, 'division-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(487, 'division-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(488, 'division-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(489, 'district-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(490, 'district-create', 0, 0, 1, 0, 1, NULL, '', 0),
(491, 'district-view', 0, 0, 1, 0, 1, NULL, '', 0),
(492, 'district-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(493, 'district-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(494, 'district-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(495, 'snt_site', 0, 0, 1, 1, 1, NULL, '', 0),
(496, 'site-list', 495, 0, 1, 1, 1, NULL, '', 0),
(497, 'site-create-form', 0, 0, 1, 0, 1, NULL, '', 0),
(498, 'site-create', 0, 0, 1, 0, 1, NULL, '', 0),
(499, 'site-view', 0, 0, 1, 0, 1, NULL, '', 0),
(500, 'site-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(501, 'site-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(502, 'site-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(503, 'site-group-list', 495, 0, 1, 1, 1, NULL, '', 0),
(504, 'site-group-create-form', 0, 0, 1, 0, 1, NULL, '', 0),
(505, 'site-group-create', 0, 0, 1, 0, 1, NULL, '', 0),
(506, 'site-group-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(507, 'site-group-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(508, 'site-membership-list', 495, 0, 1, 1, 1, NULL, '', 0),
(509, 'site-membership-create-form', 0, 0, 1, 0, 1, NULL, '', 0),
(510, 'site-membership-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(511, 'site-membership-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(512, 'site-report', 495, 0, 1, 1, 1, NULL, '', 0),
(513, 'official-site-report', 0, 0, 1, 0, 1, NULL, '', 0),
(514, 'salary-cut-rule-view', 0, 0, 1, 0, 1, NULL, '', 0),
(515, 'student-list-for-marks', 0, 0, 1, 0, 1, NULL, '', 0),
(516, 'shift-user', 0, 0, 1, 0, 1, NULL, '', 0),
(517, 'tabulation-sheet-page', 118, 0, 1, 1, 1, NULL, '', 0),
(518, 'tabulation-sheet-report', 118, 0, 1, 0, 1, NULL, '', 0),
(519, 'create-result-settings', 0, 0, 1, 0, 1, NULL, '', 0),
(520, 'delete-result-settings', 0, 0, 1, 0, 1, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES
(5, 5, 'Students', 'en', 1),
(6, 6, 'Sign Out', 'en', 1),
(7, 7, 'Sign In', 'en', 1),
(8, 8, 'Sign In Form', 'en', 1),
(9, 9, 'Log In', 'en', 1),
(10, 10, 'Role Check', 'en', 1),
(11, 11, 'First Sign In', 'en', 1),
(12, 12, 'First Sign In', 'en', 1),
(13, 13, 'Dashboard', 'en', 1),
(14, 14, 'Profile', 'en', 1),
(15, 15, 'Language Chooser', 'en', 1),
(16, 16, 'Imagecache', 'en', 1),
(17, 17, 'Menu', 'en', 1),
(18, 18, 'Create Menu Get', 'en', 1),
(19, 19, 'Create Menu Post', 'en', 1),
(20, 20, 'Edit Menu Form', 'en', 1),
(21, 21, 'Edit Menu', 'en', 1),
(22, 22, 'Delete Menu', 'en', 1),
(23, 23, 'Create Status Form', 'en', 1),
(24, 24, 'Create Status', 'en', 1),
(25, 25, 'Status', 'en', 1),
(26, 26, 'Edit Status Form', 'en', 1),
(27, 27, 'Edit Status', 'en', 1),
(28, 28, 'Group Info', 'en', 1),
(29, 29, 'User Group', 'en', 1),
(30, 30, 'Assign Role', 'en', 1),
(31, 31, 'Assign Permission', 'en', 1),
(32, 32, 'Create Role Form', 'en', 1),
(33, 33, 'Create Role', 'en', 1),
(34, 34, 'Assign Role Post', 'en', 1),
(35, 35, 'Edit Role Form', 'en', 1),
(36, 36, 'View Role', 'en', 1),
(37, 37, 'Delete Role', 'en', 1),
(38, 38, 'Edit Role', 'en', 1),
(39, 39, 'Group Access', 'en', 1),
(40, 40, 'Role Access', 'en', 1),
(41, 41, 'Users', 'en', 1),
(42, 42, 'Add User Form', 'en', 1),
(43, 43, 'Create User', 'en', 1),
(44, 44, 'View User', 'en', 1),
(45, 45, 'Edit User Form', 'en', 1),
(46, 46, 'Edit User', 'en', 1),
(47, 47, 'Employees', 'en', 1),
(48, 48, 'Add Student Form', 'en', 1),
(49, 49, 'Add Student', 'en', 1),
(50, 50, 'Student List By Class', 'en', 1),
(51, 51, 'Student List by Section', 'en', 1),
(52, 52, 'Student List by Subject', 'en', 1),
(53, 53, 'Student Class for Department', 'en', 1),
(54, 54, 'Edit Student Form', 'en', 1),
(55, 55, 'Edit Student', 'en', 1),
(56, 56, 'View Students', 'en', 1),
(57, 57, 'Delete Student', 'en', 1),
(58, 58, 'Teachers', 'en', 1),
(59, 59, 'Add Teacher Form', 'en', 1),
(60, 60, 'Create Teacher', 'en', 1),
(61, 61, 'Edit Teacher Form', 'en', 1),
(62, 62, 'Edit Teacher', 'en', 1),
(63, 63, 'View Teacher', 'en', 1),
(64, 64, 'Delete Teacher', 'en', 1),
(65, 65, 'Guardians', 'en', 1),
(66, 66, 'Add Guardian Form', 'en', 1),
(67, 67, 'Add Guardian', 'en', 1),
(68, 68, 'Edit Guardian Form', 'en', 1),
(69, 69, 'Edit Guardian', 'en', 1),
(70, 70, 'View Guardian', 'en', 1),
(71, 71, 'Delete Guardian', 'en', 1),
(72, 72, 'Gender & Religion', 'en', 1),
(73, 73, 'Gender', 'en', 1),
(74, 74, 'Add Gender Form', 'en', 1),
(75, 75, 'Religion', 'en', 1),
(76, 76, 'Add Religion Form', 'en', 1),
(77, 77, 'Edit Religion Form', 'en', 1),
(78, 78, 'View Religion', 'en', 1),
(79, 79, 'Delete Religion', 'en', 1),
(80, 80, 'Edit Gender Form', 'en', 1),
(81, 81, 'View Gender', 'en', 1),
(82, 82, 'Delete Gender', 'en', 1),
(83, 83, 'Add Gender', 'en', 1),
(84, 84, 'Add Religion', 'en', 1),
(85, 85, 'Department & Designation', 'en', 1),
(86, 86, 'Edit Gender', 'en', 1),
(87, 87, 'Edit Religion', 'en', 1),
(88, 88, 'Department', 'en', 1),
(89, 89, 'Designation', 'en', 1),
(90, 90, 'User Settings', 'en', 1),
(91, 91, 'Academic Settings', 'en', 1),
(92, 92, 'Add Department Form', 'en', 1),
(93, 93, 'Add Department', 'en', 1),
(94, 94, 'Edit Department Form', 'en', 1),
(95, 95, 'Edit Department', 'en', 1),
(96, 96, 'View Department', 'en', 1),
(97, 97, 'Delete Department', 'en', 1),
(98, 98, 'Add Designation Form', 'en', 1),
(99, 99, 'Add Designation', 'en', 1),
(100, 100, 'Edit Designation Form', 'en', 1),
(101, 101, 'Edit Designation', 'en', 1),
(102, 102, 'View Designation', 'en', 1),
(103, 103, 'Delete Designation', 'en', 1),
(104, 104, 'Designation of Dept', 'en', 1),
(105, 105, 'Edit User Designation', 'en', 1),
(106, 106, 'Buildings', 'en', 1),
(107, 107, 'Floors', 'en', 1),
(108, 108, 'Rooms', 'en', 1),
(109, 109, 'Classes', 'en', 1),
(110, 110, 'Sections', 'en', 1),
(111, 111, 'Subjects', 'en', 1),
(112, 112, 'Routine', 'en', 1),
(113, 113, 'Marks', 'en', 1),
(114, 114, 'Marks', 'en', 1),
(115, 115, 'Mark Types', 'en', 1),
(116, 116, 'Add Marks Form', 'en', 1),
(117, 117, 'Student Marks Form', 'en', 1),
(118, 118, 'Exam & Results', 'en', 1),
(119, 119, 'Exams', 'en', 1),
(120, 120, 'Exam Schedule', 'en', 1),
(121, 121, 'Result System', 'en', 1),
(122, 122, 'Attendance', 'en', 1),
(123, 123, 'Student Attendance', 'en', 1),
(124, 124, 'Upload Device Attendance', 'en', 1),
(125, 125, 'Shift', 'en', 1),
(126, 126, 'Shift List', 'en', 1),
(127, 127, 'Assign Shift to Department', 'en', 1),
(128, 128, 'Create Building Form', 'en', 1),
(129, 129, 'Create Building', 'en', 1),
(130, 130, 'Edit Building Form', 'en', 1),
(131, 131, 'Edit Building', 'en', 1),
(132, 132, 'Delete Building', 'en', 1),
(133, 133, 'Add Floor Form', 'en', 1),
(134, 134, 'Add Floor', 'en', 1),
(135, 135, 'Edit Floor Form', 'en', 1),
(136, 136, 'Edit Floor', 'en', 1),
(137, 137, 'Delete Floor', 'en', 1),
(138, 138, 'Add Room Form', 'en', 1),
(139, 139, 'Add Room', 'en', 1),
(140, 140, 'Edit Room Form', 'en', 1),
(141, 141, 'Edit Room', 'en', 1),
(142, 142, 'Delete Room', 'en', 1),
(143, 143, 'Add Class Form', 'en', 1),
(144, 144, 'Add Class', 'en', 1),
(145, 145, 'Edit Class Form', 'en', 1),
(146, 146, 'Edit Class', 'en', 1),
(147, 147, 'Delete Class', 'en', 1),
(148, 148, 'Add Section Form', 'en', 1),
(149, 149, 'Add Section', 'en', 1),
(150, 150, 'Edit Section Form', 'en', 1),
(151, 151, 'Edit Section', 'en', 1),
(152, 152, 'Delete Section', 'en', 1),
(153, 153, 'Add Subject Form', 'en', 1),
(154, 154, 'Add Subject', 'en', 1),
(155, 155, 'Edit Subject Form', 'en', 1),
(156, 156, 'Edit Subject', 'en', 1),
(157, 157, 'Delete Subject', 'en', 1),
(158, 158, 'Add Routine Form', 'en', 1),
(159, 159, 'Add Routine', 'en', 1),
(160, 160, 'View Routine', 'en', 1),
(161, 161, 'Edit Routine Form', 'en', 1),
(162, 162, 'Edit Routine', 'en', 1),
(163, 163, 'Delete Routine', 'en', 1),
(164, 164, 'Add Marks Type Form', 'en', 1),
(165, 165, 'Add Marks Type', 'en', 1),
(166, 166, 'Edit Marks Type Form', 'en', 1),
(167, 167, 'Edit Marks Type', 'en', 1),
(168, 168, 'Delete Marks Type', 'en', 1),
(169, 169, 'Add Marks', 'en', 1),
(170, 170, 'Student Mark Add', 'en', 1),
(171, 171, 'Add Exam Form', 'en', 1),
(172, 172, 'Add Exam', 'en', 1),
(173, 173, 'View Exam', 'en', 1),
(174, 174, 'Edit Exam Form', 'en', 1),
(175, 175, 'Edit Exam', 'en', 1),
(176, 176, 'Delete Exam', 'en', 1),
(177, 177, 'Add Exam Schedule Form', 'en', 1),
(178, 178, 'Add Exam Schedule', 'en', 1),
(179, 179, 'View Exam Schedule', 'en', 1),
(180, 180, 'Edit Exam Schedule Form', 'en', 1),
(181, 181, 'Edit Exam Schedule', 'en', 1),
(182, 182, 'Delete Exam Schedule', 'en', 1),
(183, 183, 'Add Result System Form', 'en', 1),
(184, 184, 'Add Result System', 'en', 1),
(185, 185, 'View Result System', 'en', 1),
(186, 186, 'Add Student Attendance Form', 'en', 1),
(187, 187, 'Add Student Attendance', 'en', 1),
(188, 188, 'Monthly Device Data Upload', 'en', 1),
(189, 189, 'Preview Monthly Device Data', 'en', 1),
(190, 190, 'Add Shift Form', 'en', 1),
(191, 191, 'Add Shift', 'en', 1),
(192, 192, 'View Shift', 'en', 1),
(193, 193, 'Edit Shift Form', 'en', 1),
(194, 194, 'Edit Shift', 'en', 1),
(195, 195, 'Delete Shift', 'en', 1),
(196, 196, 'Locations', 'en', 1),
(197, 197, 'Country', 'en', 1),
(198, 198, 'Add Country Form', 'en', 1),
(199, 199, 'Add Country', 'en', 1),
(200, 200, 'View Country', 'en', 1),
(201, 201, 'Country Edit Form', 'en', 1),
(202, 202, 'Edit Country', 'en', 1),
(203, 203, 'Delete Country', 'en', 1),
(204, 198, 'Create Country Form', 'en', 1),
(205, 199, 'Create Country', 'en', 1),
(206, 197, 'দেশ', 'bn', 1),
(207, 200, 'Country View', 'en', 1),
(208, 204, 'Division', 'en', 1),
(209, 205, 'District', 'en', 1),
(210, 206, 'Message', 'en', 1),
(211, 207, 'Compose', 'en', 1),
(212, 208, 'Sent', 'en', 1),
(213, 209, 'Inbox', 'en', 1),
(214, 210, 'Trash', 'en', 1),
(215, 211, 'message trash view', 'en', 1),
(216, 212, 'message create', 'en', 1),
(217, 213, 'message user list', 'en', 1),
(218, 214, 'message view', 'en', 1),
(219, 215, 'message edit form', 'en', 1),
(220, 216, 'message edit', 'en', 1),
(221, 217, 'message delete', 'en', 1),
(222, 218, 'Notice', 'en', 1),
(223, 219, 'notice add form', 'en', 1),
(224, 220, 'notice create', 'en', 1),
(225, 221, 'notice view', 'en', 1),
(226, 222, 'notice edit form', 'en', 1),
(227, 223, 'notice edit', 'en', 1),
(228, 224, 'notice delete', 'en', 1),
(229, 225, 'Event', 'en', 1),
(230, 226, 'event add form', 'en', 1),
(231, 227, 'event create', 'en', 1),
(232, 228, 'event edit form', 'en', 1),
(233, 229, 'event edit', 'en', 1),
(234, 230, 'event view', 'en', 1),
(235, 231, 'event delete', 'en', 1),
(236, 232, 'Account Info', 'en', 1),
(237, 233, 'Account Type', 'en', 1),
(238, 234, 'account type add form', 'en', 1),
(239, 235, 'account type create', 'en', 1),
(240, 236, 'account type view', 'en', 1),
(241, 237, 'account type edit form', 'en', 1),
(242, 238, 'account type edit', 'en', 1),
(243, 239, 'account type delete', 'en', 1),
(244, 240, 'Amount Type ', 'en', 1),
(245, 241, 'amount type add form', 'en', 1),
(246, 242, 'amount type create', 'en', 1),
(247, 243, 'amount type edit form', 'en', 1),
(248, 244, 'amount type edit', 'en', 1),
(249, 245, 'amount type delete', 'en', 1),
(250, 246, 'Amount Category', 'en', 1),
(251, 247, 'amount category add form', 'en', 1),
(252, 248, 'amount category create', 'en', 1),
(253, 249, 'amount category edit form', 'en', 1),
(254, 250, 'amount category edit', 'en', 1),
(255, 251, 'amount category delete', 'en', 1),
(256, 252, 'Account', 'en', 1),
(257, 253, 'account add form', 'en', 1),
(258, 254, 'account create', 'en', 1),
(259, 255, 'account edit form', 'en', 1),
(260, 256, 'account edit', 'en', 1),
(261, 257, 'account view', 'en', 1),
(262, 258, 'account delete', 'en', 1),
(263, 259, 'Accounts', 'en', 1),
(264, 260, 'account user list', 'en', 1),
(265, 261, 'account report details', 'en', 1),
(266, 262, 'Report', 'en', 1),
(267, 263, 'Timesheet', 'en', 1),
(268, 264, 'my timesheet', 'en', 1),
(269, 265, 'my timesheet report', 'en', 1),
(270, 266, 'timesheet report', 'en', 1),
(271, 267, 'user month timesheet details', 'en', 1),
(272, 268, 'Salary', 'en', 1),
(273, 269, 'monthly salary report', 'en', 1),
(274, 270, 'user year salary details', 'en', 1),
(275, 271, 'Student Id Card', 'en', 1),
(276, 272, 'Student Admit Card', 'en', 1),
(277, 273, 'Testimonial', 'en', 1),
(278, 274, 'Transfer Certificate', 'en', 1),
(279, 275, 'Clearance', 'en', 1),
(280, 276, 'Certification', 'en', 1),
(281, 277, 'report-section', 'en', 1),
(282, 278, 'student-id-card-details', 'en', 1),
(283, 279, 'student admit card details', 'en', 1),
(284, 280, 'testimonial details', 'en', 1),
(285, 281, 'tc details', 'en', 1),
(286, 282, 'clearance details', 'en', 1),
(287, 283, 'certification details', 'en', 1),
(288, 284, 'class section', 'en', 1),
(289, 285, 'Salary Setting', 'en', 1),
(290, 286, 'Create Salary Type', 'en', 1),
(291, 287, 'Salary Type List', 'en', 1),
(292, 288, 'salary type edit form', 'en', 1),
(293, 289, 'salary type edit', 'en', 1),
(294, 290, 'salary type delete', 'en', 1),
(295, 291, 'create salary type', 'en', 1),
(296, 292, 'Create Allowance Rules', 'en', 1),
(297, 293, 'create salary rules', 'en', 1),
(298, 294, 'Allowance Rules List', 'en', 1),
(299, 295, 'allowance rule edit form', 'en', 1),
(300, 296, 'allowance rule edit', 'en', 1),
(301, 297, 'allowance rule delete', 'en', 1),
(302, 298, 'Create Overtime Rules', 'en', 1),
(303, 299, 'create overtime rules', 'en', 1),
(304, 300, 'Overtime Rules List', 'en', 1),
(305, 301, 'Create Salary Cut Rules', 'en', 1),
(306, 302, 'create salary cut rules', 'en', 1),
(307, 303, 'Salary Cut Rules List', 'en', 1),
(308, 304, 'Create Bonus Rules', 'en', 1),
(309, 305, 'create bonus rules', 'en', 1),
(310, 306, 'Bonus Rules List', 'en', 1),
(311, 307, 'create bonus attr', 'en', 1),
(312, 308, 'check bonus attr', 'en', 1),
(313, 309, 'delete bonus attr', 'en', 1),
(314, 310, 'employee salary', 'en', 1),
(315, 311, 'Form Settings', 'en', 1),
(316, 312, 'form setting form', 'en', 1),
(317, 313, 'add form settings', 'en', 1),
(318, 314, 'form setting edit form', 'en', 1),
(319, 315, 'form setting edit', 'en', 1),
(320, 316, 'form setting delete', 'en', 1),
(321, 317, 'Leave List', 'en', 1),
(322, 318, 'leave add form', 'en', 1),
(323, 319, 'leave create', 'en', 1),
(324, 320, 'leave edit form', 'en', 1),
(325, 321, 'leave edit', 'en', 1),
(326, 322, 'leave view', 'en', 1),
(327, 323, 'leave delete', 'en', 1),
(328, 324, 'Leave Applications', 'en', 1),
(329, 325, 'Application List', 'en', 1),
(330, 326, 'application add form', 'en', 1),
(331, 327, 'application create', 'en', 1),
(332, 328, 'application edit form', 'en', 1),
(333, 329, 'application edit', 'en', 1),
(334, 330, 'application delete', 'en', 1),
(335, 331, 'employee leave', 'en', 1),
(336, 332, 'Holydays', 'en', 1),
(337, 333, 'Holyday Types', 'en', 1),
(338, 334, 'holydaytype add form', 'en', 1),
(339, 335, 'holydaytype add', 'en', 1),
(340, 336, 'edit holidaytype form', 'en', 1),
(341, 337, 'edit holiday type', 'en', 1),
(342, 338, 'view holiday type', 'en', 1),
(343, 339, 'delete holiday type', 'en', 1),
(344, 340, 'Holyday', 'en', 1),
(345, 341, 'holyday add form', 'en', 1),
(346, 342, 'holyday add', 'en', 1),
(347, 343, 'edit holiday form', 'en', 1),
(348, 344, 'edit holiday', 'en', 1),
(349, 345, 'view holiday', 'en', 1),
(350, 346, 'delete holiday', 'en', 1),
(351, 347, 'holyday month', 'en', 1),
(352, 348, 'Library', 'en', 1),
(353, 349, 'Author', 'en', 1),
(354, 350, 'author add form', 'en', 1),
(355, 351, 'author create', 'en', 1),
(356, 352, 'author view', 'en', 1),
(357, 353, 'author edit form', 'en', 1),
(358, 354, 'author edit', 'en', 1),
(359, 355, 'author delete', 'en', 1),
(360, 356, 'Rack', 'en', 1),
(361, 357, 'rack add form', 'en', 1),
(362, 358, 'rack create', 'en', 1),
(363, 359, 'rack edit form', 'en', 1),
(364, 360, 'rack edit', 'en', 1),
(365, 361, 'rack delete', 'en', 1),
(366, 362, 'floor of building', 'en', 1),
(367, 363, 'room of floor', 'en', 1),
(368, 364, 'Book Category', 'en', 1),
(369, 365, 'book category add form', 'en', 1),
(370, 366, 'book category create', 'en', 1),
(371, 367, 'book category edit form', 'en', 1),
(372, 368, 'book category edit', 'en', 1),
(373, 369, 'book category delete', 'en', 1),
(374, 370, 'Book', 'en', 1),
(375, 371, 'book add form', 'en', 1),
(376, 372, 'book create', 'en', 1),
(377, 373, 'book view', 'en', 1),
(378, 374, 'book edit form', 'en', 1),
(379, 375, 'book edit', 'en', 1),
(380, 376, 'book delete', 'en', 1),
(381, 377, 'General Report', 'en', 1),
(382, 378, 'general report teacher', 'en', 1),
(383, 379, 'general report student', 'en', 1),
(384, 380, 'general report routine', 'en', 1),
(385, 381, 'Profile Setting', 'en', 1),
(386, 382, 'Training', 'en', 1),
(387, 383, 'training add form', 'en', 1),
(388, 384, 'training create', 'en', 1),
(389, 385, 'training view', 'en', 1),
(390, 386, 'training edit form', 'en', 1),
(391, 387, 'training edit', 'en', 1),
(392, 388, 'training delete', 'en', 1),
(393, 389, 'Professional Qualification', 'en', 1),
(394, 390, 'Professional qualification add form', 'en', 1),
(395, 391, 'Professional qualification create', 'en', 1),
(396, 392, 'Professional qualification view', 'en', 1),
(397, 393, 'Professional qualification edit form', 'en', 1),
(398, 394, 'Professional qualification edit', 'en', 1),
(399, 395, 'Professional qualification delete', 'en', 1),
(400, 396, 'Business Type', 'en', 1),
(401, 397, 'Business type add form', 'en', 1),
(402, 398, 'Business type create', 'en', 1),
(403, 399, 'Business type edit form', 'en', 1),
(404, 400, 'Business type edit', 'en', 1),
(405, 401, 'Business type delete', 'en', 1),
(406, 402, 'Experience Category', 'en', 1),
(407, 403, 'Experience category add form', 'en', 1),
(408, 404, 'Experience category create', 'en', 1),
(409, 405, 'Experience category edit form', 'en', 1),
(410, 406, 'Experience category edit', 'en', 1),
(411, 407, 'Experience category delete', 'en', 1),
(412, 408, 'category-experience', 'en', 1),
(413, 409, 'Experience', 'en', 1),
(414, 410, 'Experience add form', 'en', 1),
(415, 411, 'Experience create', 'en', 1),
(416, 412, 'Experience edit form', 'en', 1),
(417, 413, 'Experience edit', 'en', 1),
(418, 414, 'Experience delete', 'en', 1),
(419, 415, 'Employment History', 'en', 1),
(420, 416, 'Employment history add form', 'en', 1),
(421, 417, 'Employment history create', 'en', 1),
(422, 418, 'Employment history view', 'en', 1),
(423, 419, 'Employment history edit form', 'en', 1),
(424, 420, 'Employment history edit', 'en', 1),
(425, 421, 'Employment history delete', 'en', 1),
(426, 422, 'Skill Category', 'en', 1),
(427, 423, 'Skill category add form', 'en', 1),
(428, 424, 'Skill category create', 'en', 1),
(429, 425, 'Skill category edit form', 'en', 1),
(430, 426, 'Skill category edit', 'en', 1),
(431, 427, 'Skill category delete', 'en', 1),
(432, 428, 'category skill', 'en', 1),
(433, 429, 'Skill', 'en', 1),
(434, 430, 'Skill add form', 'en', 1),
(435, 431, 'Skill create', 'en', 1),
(436, 432, 'Skill edit form', 'en', 1),
(437, 433, 'Skill edit', 'en', 1),
(438, 434, 'Skill delete', 'en', 1),
(439, 435, 'Language', 'en', 1),
(440, 436, 'Language add form', 'en', 1),
(441, 437, 'Language create', 'en', 1),
(442, 438, 'cv language edit form', 'en', 1),
(443, 439, 'cv language edit', 'en', 1),
(444, 440, 'cv language delete', 'en', 1),
(445, 441, 'Language Skill', 'en', 1),
(446, 442, 'cv language skill add form', 'en', 1),
(447, 443, 'cv language skill create', 'en', 1),
(448, 444, 'cv language skill edit form', 'en', 1),
(449, 445, 'cv language skill edit', 'en', 1),
(450, 446, 'cv language skill delete', 'en', 1),
(451, 447, 'Relation', 'en', 1),
(452, 448, 'relation add form', 'en', 1),
(453, 449, 'relation create', 'en', 1),
(454, 450, 'relation edit form', 'en', 1),
(455, 451, 'relation edit', 'en', 1),
(456, 452, 'relation delete', 'en', 1),
(457, 453, 'Reference', 'en', 1),
(458, 454, 'reference add form', 'en', 1),
(459, 455, 'reference create', 'en', 1),
(460, 456, 'reference view', 'en', 1),
(461, 457, 'reference edit form', 'en', 1),
(462, 458, 'reference edit', 'en', 1),
(463, 459, 'reference delete', 'en', 1),
(464, 460, 'Specialization', 'en', 1),
(465, 461, 'specialization add form', 'en', 1),
(466, 462, 'specialization create', 'en', 1),
(467, 463, 'specialization view', 'en', 1),
(468, 464, 'specialization edit form', 'en', 1),
(469, 465, 'specialization edit', 'en', 1),
(470, 466, 'specialization delete', 'en', 1),
(471, 467, 'Education Level', 'en', 1),
(472, 468, 'Education level add form', 'en', 1),
(473, 469, 'Education level create', 'en', 1),
(474, 470, 'Education level edit form', 'en', 1),
(475, 471, 'Education level edit', 'en', 1),
(476, 472, 'Education level delete', 'en', 1),
(477, 473, 'Academic Qualification', 'en', 1),
(478, 474, 'academic qualification add form', 'en', 1),
(479, 475, 'Academic qualification create', 'en', 1),
(480, 476, 'Academic qualification view', 'en', 1),
(481, 477, 'Academic qualification edit form', 'en', 1),
(482, 478, 'Academic qualification edit', 'en', 1),
(483, 479, 'Academic qualification delete', 'en', 1),
(484, 480, 'view student marks by stId and examId', 'en', 1),
(485, 481, 'Section list by class', 'en', 1),
(486, 482, 'Student list view marks', 'en', 1),
(487, 483, 'Division add form', 'en', 1),
(488, 484, 'Division create', 'en', 1),
(489, 485, 'Division view', 'en', 1),
(490, 486, 'Division edit form', 'en', 1),
(491, 487, 'Division edit', 'en', 1),
(492, 488, 'Division delete', 'en', 1),
(493, 489, 'District add form', 'en', 1),
(494, 490, 'District create', 'en', 1),
(495, 491, 'District view', 'en', 1),
(496, 492, 'District edit form', 'en', 1),
(497, 493, 'District edit', 'en', 1),
(498, 494, 'District delete', 'en', 1),
(499, 495, 'Site', 'en', 1),
(500, 496, 'Site Info', 'en', 1),
(501, 497, 'site create form', 'en', 1),
(502, 498, 'site create', 'en', 1),
(503, 499, 'site view', 'en', 1),
(504, 500, 'site edit form', 'en', 1),
(505, 501, 'site edit', 'en', 1),
(506, 502, 'site delete', 'en', 1),
(507, 503, 'Site Group', 'en', 1),
(508, 504, 'site group create form', 'en', 1),
(509, 505, 'site group create', 'en', 1),
(510, 506, 'site group edit form', 'en', 1),
(511, 507, 'site group edit', 'en', 1),
(512, 508, 'Site Membership', 'en', 1),
(513, 509, 'site membership create form', 'en', 1),
(514, 510, 'site membership edit form', 'en', 1),
(515, 511, 'site membership edit', 'en', 1),
(516, 512, 'Site Report', 'en', 1),
(517, 513, 'official site report', 'en', 1),
(518, 514, 'View Salary Cut Rule', 'en', 1),
(519, 515, 'Add Marks Form', 'en', 1),
(520, 516, 'User Shift', 'en', 1),
(521, 517, 'Tabulation Sheet', 'en', 1),
(522, 518, 'Tabulation Report', 'en', 1),
(523, 519, 'Add Result Settings', 'en', 1),
(524, 520, 'Delete Menu', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meta_settings`
--

CREATE TABLE `meta_settings` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `is_displayable` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_translatable` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_settings`
--

INSERT INTO `meta_settings` (`id`, `form_field_name`, `field_level`, `field_type`, `field_options`, `field_value_type`, `default_value`, `labclass`, `wrapclass`, `field_style`, `field_class`, `field_id`, `form_name`, `validation_type`, `description`, `is_displayable`, `is_required`, `is_translatable`, `is_deleted`, `status`, `position`, `site_id`) VALUES
(1, 'test', 'Test', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, 0, 0, 0, 0, 'Inactive', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES
('2014_10_12_000000_create_users_table', 1, 1),
('2014_10_12_100000_create_password_resets_table', 1, 1),
('2015_12_05_053734_languages', 1, 1),
('2015_12_05_055339_create_company_groups_table', 2, 1),
('2015_12_05_061945_create_companies_table', 3, 1),
('2015_12_05_064229_create_genders_table', 4, 1),
('2015_12_05_072222_create_religions_table', 4, 1),
('2015_12_05_072649_create_emails_table', 5, 1),
('2015_12_05_081947_update_users_table', 6, 1),
('2015_12_05_091238_create_passwords_table', 7, 1),
('2015_11_15_103357_create_roles_table', 8, 1),
('2015_12_05_094138_create_log_tables_table', 9, 1),
('2015_12_05_101349_create_options_table', 10, 1),
('2015_12_05_101607_create_add_field_to_tables_table', 11, 1),
('2015_12_05_102313_create_media_table', 12, 1),
('2015_12_05_104930_create_departments_table', 13, 1),
('2015_12_05_111042_add_company_id_dept_id_to_users_table', 14, 1),
('2015_12_06_040317_create_user_translations_table', 15, 1),
('2015_12_06_041229_add_address_to_user_translations', 16, 1),
('2015_12_06_042029_drop_address_firstname_lastname_from_users_table', 17, 1),
('2015_12_06_045020_sixty_password_passwords_table', 18, 1),
('2015_12_06_050155_email_unique_emails_table', 19, 1),
('2015_12_06_050802_create_gender_translations_table', 20, 1),
('2015_12_06_051417_drop_name_from_genders', 21, 1),
('2015_12_06_051659_unique_username_in_users_table', 22, 1),
('2015_12_22_045955_ttts', 23, 1),
('2015_12_26_063509_drop_company_id_from_depts', 24, 1),
('2015_12_26_064252_drop_company_id_from_depts', 25, 1),
('2016_01_17_054556_create_bank_accounts_table', 26, 1),
('2016_01_17_104403_create_designations_table', 27, 1),
('2016_01_17_110047_create_employee_histories_table', 28, 1),
('2016_01_17_110819_add_status_position_to_bankaccounts_table', 29, 1),
('2016_01_18_101033_add_dept_id_to_users', 30, 1),
('2016_01_18_101654_add_dept_id_to_users', 31, 1),
('2016_01_19_064429_add_join_date_to_users', 32, 1),
('2016_01_19_091227_add_father_mother_name_to_users_translation', 33, 1),
('2016_01_19_091438_add_father_mother_name_to_users_translation', 34, 1),
('2016_01_19_091611_add_father_mother_name_to_users_translation', 35, 1),
('2016_01_19_095659_add_joining_salary_user_translations', 36, 1),
('2016_01_19_095851_add_joining_salary_user_translations', 37, 1),
('2016_01_19_100322_add_birthday_users', 38, 1),
('2016_01_19_100447_add_birthday_users', 39, 1),
('2016_01_19_105234_remove_foreign_account_no_bank_accounts', 40, 1),
('2014_10_12_000000_create_users_table', 1, 1),
('2014_10_12_100000_create_password_resets_table', 1, 1),
('2015_09_10_092223_creat_photos_table', 1, 1),
('2015_09_12_072416_add_profession_to_users_table', 2, 1),
('2015_09_13_101110_create_types_table', 3, 1),
('2015_09_13_110004_create_types_table', 4, 1),
('2015_09_13_110906_add_type_id_to_users', 5, 1),
('2015_09_13_111634_type_id_foregign_key_to_users', 6, 1),
('2015_09_13_112849_add_user_id_to_photos_table_foreign_key', 7, 1),
('2015_09_14_102825_add_user_type_collumn_to_users', 8, 1),
('2015_09_14_112353_change_user_type_to_users_type', 9, 1),
('2015_09_15_045419_add_utype_to_users', 10, 1),
('2015_09_16_101646_create_articles_table', 11, 1),
('2015_09_17_204114_create_countries_table', 12, 1),
('2016_01_20_074201_add_polymorph_to_medias_table', 41, 1),
('2016_01_20_113443_create_photos_table', 42, 1),
('2016_01_21_104136_create_leaves_tables', 43, 1),
('2016_01_21_110133_create_models_leave_leave_applications_table', 44, 1),
('2016_01_23_071904_add_leave_details_and_max_days', 45, 1),
('2016_01_23_072314_add_leave_details_and_max_days', 46, 1),
('2016_01_23_090556_add_foregin_keys_leav_applications', 47, 1),
('2016_01_23_091300_create_statuses_table', 48, 1),
('2016_01_23_095851_create_leave_application_translations_table', 49, 1),
('2016_01_23_111945_add_applied_on_to_leave_applications', 50, 1),
('2016_01_24_045117_set_default_value_to_leave_applications', 51, 1),
('2016_01_24_055451_change_status_to_status_id_leave_applications', 52, 1),
('2016_01_24_055954_change_status_to_status_id_leave_applications', 53, 1),
('2016_01_24_060502_ljjllj', 54, 1),
('2016_01_24_091714_create_holydays_table', 55, 1),
('2016_01_24_093813_create_holy_day_types_table', 56, 1),
('2016_01_24_095732_add_status_positon_holy_day_types', 57, 1),
('2016_01_24_100226_add_status_position_holydays', 58, 1),
('2016_01_25_043900_rename_date_in_holydays', 59, 1),
('2016_01_25_044332_add_to_in_holydays', 60, 1),
('2016_01_25_071926_change_from_to_date_holydays', 61, 1),
('2016_01_27_044212_change_holiday_foreign_key', 62, 1),
('2016_01_27_103106_create_notice_boards_table', 63, 1),
('2016_01_31_055951_create_shifts_table', 64, 1),
('2016_01_31_062226_change_status_type_in_shifts', 65, 1),
('2016_01_31_071159_drop_name_from_shifts', 66, 1),
('2016_01_31_071711_create_shift_translations_table', 67, 1),
('2016_02_01_090809_add_shift_id_to_shift_translations', 68, 1),
('2016_02_01_102232_create_department_shifts_table', 69, 1),
('2016_02_02_041905_add_shift_id_to_users', 70, 1),
('2016_02_02_091556_create_punches_table', 71, 1),
('2016_02_03_075337_add_punch_flag_to_punches', 72, 1),
('2016_02_07_051953_create_shifts', 73, 1),
('2016_02_07_053855_change_status_to_status_id_int', 74, 1),
('2016_02_10_043613_change_and_add_collumn_name_punches', 75, 1),
('2016_02_10_044656_change_punch_out_datetime_position_punches', 76, 1),
('2016_02_10_051636_punch_out_date_time', 77, 1),
('2016_02_10_051826_punch_out_dat_time', 78, 1),
('2016_02_13_043857_add_overtime_to_punches', 79, 1),
('2016_02_13_102300_add_working_hours_to_punches', 80, 1),
('2016_02_14_094813_add_punch_date_time', 81, 1),
('2016_02_20_053644_create_salary_types_table', 82, 1),
('2016_02_20_100927_create_salary_rules_table', 83, 1),
('2016_02_23_045539_create_overtime_rules_table', 84, 1),
('2016_02_23_050838_add_status_overtimerules', 85, 1),
('2016_02_23_052252_create_salary_cuts_table', 86, 1),
('2016_02_23_052303_create_bonuses_table', 86, 1),
('2016_02_24_054731_create_user_salaries_table', 87, 1),
('2016_02_24_063123_add_basic_to_user_salaries', 88, 1),
('2016_02_27_084038_modify_bonus_rules', 89, 1),
('2016_02_27_092643_create_bonus_attributes_table', 90, 1),
('2016_03_28_055450_add_employee_id_to_users', 91, 1),
('2016_03_28_062815_add_employee_id_to_punches', 92, 1),
('2016_04_04_051213_add_shift_id_to_employee_histories', 93, 1),
('2016_04_04_052705_add_shift_id_to_employee_histories', 94, 1),
('2016_04_05_054348_add_month_year_day_to_employee_histories', 95, 1),
('2016_04_06_051639_add_timestamps_to_user_salaries', 96, 1),
('2016_04_09_094121_add_created_at_updated_at_to_bank_accounts', 97, 1),
('2016_04_23_070022_add_fields_to_users', 98, 1),
('2016_04_23_080849_create_student_classes_table', 99, 1),
('2016_04_23_081759_create_sections_table', 100, 1),
('2016_04_23_082251_change_studentclass_nullable', 101, 1),
('2016_04_23_082402_change_sections_nullable', 102, 1),
('2016_04_23_084759_create_student_histories_table', 103, 1),
('2016_04_25_062931_add_more_fields_users', 104, 1),
('2016_04_25_070712_rename_field_in_sections', 105, 1),
('2016_04_27_043314_create_result_systems_table', 106, 1),
('2016_04_28_090914_create_meta_settings_table', 107, 1),
('2016_04_30_094312_create_subjects_table', 108, 1),
('2016_05_02_045315_add_more_field_subjects', 109, 1),
('2016_05_02_055208_create_buildings_table', 109, 1),
('2016_05_02_055717_create_floors_table', 109, 1),
('2016_05_02_055942_create_rooms_table', 109, 1),
('2016_05_02_084103_create_student_attendances_table', 109, 1),
('2016_05_03_063943_create_routines_table', 110, 1),
('2016_05_03_082053_create_examinations_table', 110, 1),
('2016_05_03_083604_create_examination_schedules_table', 110, 1),
('2016_05_07_043822_create_countries_table', 111, 1),
('2016_05_07_045031_create_country_translations_table', 111, 1),
('2016_05_07_082853_create_divisions_table', 112, 1),
('2016_05_07_084154_create_division_translations_table', 112, 1),
('2016_05_07_105354_create_districts_table', 112, 1),
('2016_05_07_110114_create_district_translations_table', 112, 1),
('2016_05_08_064334_add_soft_delete_option_in_district_table', 113, 1),
('2016_05_08_085425_add_soft_delete_option_in_division_table', 113, 1),
('2016_05_08_090518_add_soft_delete_option_in_countries_table', 113, 1),
('2016_05_08_092224_add_soft_delete_option_in_users_table', 113, 1),
('2016_05_09_123350_add_soft_delete_option_in_buildings_table', 114, 1),
('2016_05_09_124045_add_soft_delete_option_in_floors_table', 114, 1),
('2016_05_09_124511_add_soft_delete_option_in_rooms_table', 114, 1),
('2016_05_09_125123_add_soft_delete_option_in_routines_table', 114, 1),
('2016_05_09_125613_add_soft_delete_option_in_examinations_table', 114, 1),
('2016_05_09_130048_add_soft_delete_option_in_examination_schedules_table', 114, 1),
('2016_05_09_144304_add_soft_delete_option_in_student_classes_table', 114, 1),
('2016_05_09_145012_add_soft_delete_option_in_sections_table', 114, 1),
('2016_05_10_094424_create_marks_types_table', 115, 1),
('2016_05_10_124729_add_deleted_at_to_marks_types', 116, 1),
('2016_05_10_150031_create_marks_table', 117, 1),
('2016_05_10_153734_add_sof_delete_to_marks', 118, 1),
('2016_05_10_170632_create_marks_table', 119, 1),
('2016_05_10_171237_add_subject_total_subjects', 119, 1),
('2016_05_10_171944_change_class_id_to_student_class_id', 120, 1),
('2016_05_11_114202_add_roll_marks', 121, 1),
('2016_05_15_155101_add_site_id', 122, 1),
('2016_05_16_125605_create_notices_table', 123, 1),
('2016_05_16_132543_create_notice_translations_table', 124, 1),
('2016_05_17_135030_site_id_default_1', 125, 1),
('2016_05_18_112128_site_id_default', 126, 1),
('2016_05_18_112745_jkjkkj', 127, 1),
('2016_05_18_114540_siteIdSubjectDefault', 128, 1),
('2016_05_18_114701_siteIdtDefault', 129, 1),
('2016_05_18_123943_create_account_types_table', 130, 1),
('2016_05_18_125203_create_account_type_translations_table', 130, 1),
('2016_05_18_160928_create_amount_types_table', 130, 1),
('2016_05_18_162302_create_amount_type_translations_table', 130, 1),
('2016_05_18_172221_create_amount_categories_table', 130, 1),
('2016_05_18_174103_create_amount_category_translations_table', 130, 1),
('2016_05_22_120552_create_accounts_table', 131, 1),
('2016_05_22_122442_create_account_translations_table', 131, 1),
('2016_05_24_131706_create_menus_table', 132, 1),
('2016_05_25_155451_create_events_table', 133, 1),
('2016_05_25_160739_create_event_translations_table', 133, 1),
('2016_05_26_103310_add_soft_delete_menus', 134, 1),
('2016_05_26_104130_add_soft_delete_menus', 135, 1),
('2016_05_26_105454_create_group_accesses_table', 136, 1),
('2016_05_26_125918_add_site_id_group_access', 137, 1),
('2016_05_29_114400_add_common_access', 138, 1),
('2016_05_31_123459_create_site_infos_table', 139, 1),
('2016_06_01_130900_create_sessions_table', 140, 1),
('2016_06_04_163632_book_categories_table', 141, 1),
('2016_06_04_164245_book_category_translations_table', 141, 1),
('2016_06_05_112535_create_authors_table', 142, 1),
('2016_06_05_113318_create_author_translations_table', 142, 1),
('2016_06_05_154944_create_racks_table', 142, 1),
('2016_06_06_105206_create_books_table', 143, 1),
('2016_06_06_111630_create_book_translations', 143, 1),
('2016_06_07_122401_add_more_fields_to_site_groups', 144, 1),
('2016_06_06_174526_create_trainings_table', 145, 1),
('2016_06_07_103524_create_training_translations', 145, 1),
('2016_06_07_141807_create_professional_qualifications_table', 145, 1),
('2016_06_07_142612_create_professional_qualification_translations_table', 145, 1),
('2016_06_08_110838_create_site_memberships_table', 146, 1),
('2016_06_08_120252_site_type_id_to_site_membership_id', 147, 1),
('2016_06_08_122016_add_status', 148, 1),
('2016_06_09_095700_create_business_types_table', 149, 1),
('2016_06_09_100044_create_business_type_translations_table', 149, 1),
('2016_06_09_112610_create_experience_categories_table', 149, 1),
('2016_06_09_113018_create_experience_category_translations_table', 149, 1),
('2016_06_09_122959_create_experiences_table', 149, 1),
('2016_06_09_123602_create_experience_translations_table', 149, 1),
('2016_06_09_144252_create_skill_categories_table', 149, 1),
('2016_06_09_145018_create_skill_category_translations', 149, 1),
('2016_06_09_153735_create_skills_table', 149, 1),
('2016_06_09_154043_create_skill_translations_table', 149, 1),
('2016_06_11_120959_create_cv_languages_table', 149, 1),
('2016_06_11_121406_create_cv_language_translations', 149, 1),
('2016_06_11_135502_create_cv_language_skills_table', 149, 1),
('2016_06_12_103056_create_relations_table', 149, 1),
('2016_06_12_103847_create_relation_translations_table', 149, 1),
('2016_06_12_112603_create_references_table', 149, 1),
('2016_06_12_113411_create_reference_translations_table', 149, 1),
('2016_06_12_142443_create_employment_histories_table', 150, 1),
('2016_06_12_144025_create_employment_history_translations_table', 150, 1),
('2016_06_12_160302_create_specializations_table', 150, 1),
('2016_06_12_160911_create_specialization_translations_table', 150, 1),
('2016_06_18_110101_default_site_id_1', 151, 1),
('2016_06_18_111051_add_site_ie_1', 152, 1),
('2016_06_19_151617_truncate_tables', 153, 1),
('2016_06_19_135642_create_education_levels_table', 154, 1),
('2016_06_19_140251_create_education_level_translations_table', 154, 1),
('2016_06_19_152734_create_academic_qualifications_table', 155, 1),
('2016_06_19_153939_create_academic_qualification_translations_table', 155, 1),
('2016_06_23_215647_create_site_amount_receives_table', 156, 1),
('2016_07_18_153536_add_mark_types_json_to_subjects', 157, 1),
('2016_08_08_150847_add_resul_system_id_subjects', 158, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1',
  `from_send` varchar(150) NOT NULL,
  `to_send` varchar(300) NOT NULL,
  `type` varchar(150) NOT NULL,
  `is_read` varchar(50) NOT NULL,
  `access_lists` longtext,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES
(1, '2016-05-16', 'Active', 1, '120', 'Student', 'Notice', '0', NULL, '2016-05-16 11:48:42'),
(2, '2016-05-17', 'Active', 1, '120', 'Teacher', 'notice', '0', NULL, NULL),
(3, '2016-05-11', 'Active', 1, '120', 'Student', 'Notice', '0', NULL, NULL),
(4, '2016-05-25', 'Active', 1, '120', 'Teacher', 'Notice', '0', NULL, NULL),
(5, '2016-05-28', 'Inactive', 1, '120', 'All', 'notice', '0', NULL, NULL),
(6, '2016-05-16', 'Active', 1, '120', 'Manager', 'notice', '0', NULL, NULL),
(7, '2016-05-11', 'Active', 1, '120', 'All', 'notice', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notice_translations`
--

CREATE TABLE `notice_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_id` int(11) DEFAULT NULL,
  `notice_name` varchar(255) DEFAULT NULL,
  `notice_description` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_rules`
--

CREATE TABLE `overtime_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary_types` longtext,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `overtime_rules`
--

INSERT INTO `overtime_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES
(4, 'overtime 1', '{"total":"total"}', 25, 'percent', 'Active', NULL, 1),
(5, 'overtime 2', '[]', 5000, 'fixed', 'Active', NULL, 1),
(6, 'overtime 3', '{"basic":"basic","home_rent":"2","medical_allowance":"3"}', 25, 'percent', 'Active', NULL, 1),
(7, 'one  level', '{"basic":"basic"}', 200, 'percent', 'Active', NULL, 1),
(8, 'Overtime Rule Tes', '{"total":"total"}', 25, 'percent', 'Active', NULL, 1),
(9, 'Overtime 3', '[]', 5000, 'fixed', 'Active', NULL, 1),
(10, 'overtime rule 55', '{"medical":"2"}', 50, 'percent', 'Active', NULL, 1),
(11, 'overtime test 5', '{"medical":"2","transport_allowance":"3"}', 25, 'percent', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passwords`
--

CREATE TABLE `passwords` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`, `site_id`) VALUES
(1, 'Create Things', 'whoever assigned this permission can create anything in the system', '0', 0, 1),
(2, 'Edit', 'whoever assigned this permission can edit anything in the system', '0', 0, 1),
(3, 'Hello', 'Hello World', '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`, `site_id`) VALUES
(2, 1, 1),
(2, 3, 1),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `extension` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES
(1, 120, 120, 'Erp\\Models\\User\\User', '1453291583SFf2016-01-09-195845', NULL, 'jpg', 1),
(2, 120, 120, 'Erp\\Models\\User\\User', '1453352490Hk12016-01-09-195845.jpg', NULL, '', 1),
(3, 122, 122, 'Erp\\Models\\User\\User', '1453354270gnI2016-01-09-195845.jpg', NULL, '', 1),
(4, 123, 123, 'Erp\\Models\\User\\User', '1453357797aWn2016-01-09-195845.jpg', NULL, '', 1),
(5, 120, 120, 'Erp\\Models\\User\\User', '1453358953q8M2016-01-09-195845.jpg', NULL, '', 1),
(6, 124, 124, 'Erp\\Models\\User\\User', '1453359264oDW2016-01-09-195845.jpg', NULL, '', 1),
(7, 125, 125, 'Erp\\Models\\User\\User', '1453360599lqb2016-01-09-195845.jpg', NULL, '', 1),
(8, 124, 124, 'Erp\\Models\\User\\User', '1453360985VaD2016-01-09-195845.jpg', NULL, '', 1),
(9, 126, 126, 'Erp\\Models\\User\\User', '1453370411lXy2016-01-09-195845.jpg', NULL, '', 1),
(10, 126, 126, 'Erp\\Models\\User\\User', '1453370772wJa2016-01-09-195845.jpg', NULL, '', 1),
(11, 127, 127, 'Erp\\Models\\User\\User', '1453714476BE52016-01-09-195845.jpg', NULL, '', 1),
(12, 120, 120, 'Erp\\Models\\User\\User', '1453888494hDG2016-01-09-195845.jpg', NULL, '', 1),
(13, 128, 128, 'Erp\\Models\\User\\User', '1453894001vx62016-01-09-195845.jpg', NULL, '', 1),
(14, 129, 129, 'Erp\\Models\\User\\User', '14543895801Fp2016-01-09-195845.jpg', NULL, '', 1),
(15, 124, 124, 'Erp\\Models\\User\\User', '1454395442KPt2016-01-09-195845.jpg', NULL, '', 1),
(16, 120, 120, 'Erp\\Models\\User\\User', '145440801153H2016-01-09-195845.jpg', NULL, '', 1),
(17, 120, 120, 'Erp\\Models\\User\\User', '1454836303ttZ2016-01-09-195845.jpg', NULL, '', 1),
(18, 120, 120, 'Erp\\Models\\User\\User', '1455012726XVp2016-01-09-195845.jpg', NULL, '', 1),
(19, 128, 128, 'Erp\\Models\\User\\User', '1455348360YWW2016-01-09-195845.jpg', NULL, '', 1),
(20, 130, 130, 'Erp\\Models\\User\\User', '14553609881ji2016-01-09-195845.jpg', NULL, '', 1),
(21, 131, 131, 'Erp\\Models\\User\\User', '1456306315aLT2016-01-09-195845.jpg', NULL, '', 1),
(22, 131, 131, 'Erp\\Models\\User\\User', '1456309612Vdk2016-01-09-195845.jpg', NULL, '', 1),
(23, 132, 132, 'Erp\\Models\\User\\User', '14575012467Xv2016-01-09-195845.jpg', NULL, '', 1),
(24, 135, 135, 'Erp\\Models\\User\\User', '14596693990Im2016-01-09-195845.jpg', NULL, '', 1),
(25, 141, 141, 'Erp\\Models\\User\\User', '1459671065Wvp2016-01-09-195845.jpg', NULL, '', 1),
(26, 141, 141, 'Erp\\Models\\User\\User', '1459743056mDf2016-01-09-195845.jpg', NULL, '', 1),
(27, 141, 141, 'Erp\\Models\\User\\User', '1459743481RQT2016-01-09-195845.jpg', NULL, '', 1),
(28, 141, 141, 'Erp\\Models\\User\\User', '1459743743Nq42016-01-09-195845.jpg', NULL, '', 1),
(29, 124, 124, 'Erp\\Models\\User\\User', '1459748909vMy2016-01-09-195845.jpg', NULL, '', 1),
(30, 124, 124, 'Erp\\Models\\User\\User', '1459749302aQF2016-01-09-195845.jpg', NULL, '', 1),
(31, 125, 125, 'Erp\\Models\\User\\User', '1460186989fed2016-01-09-195845.jpg', NULL, '', 1),
(32, 126, 126, 'Erp\\Models\\User\\User', '1460187894LGZ2016-01-09-195845.jpg', NULL, '', 1),
(33, 127, 127, 'Erp\\Models\\User\\User', '1460199087a6V2016-01-09-195845.jpg', NULL, '', 1),
(34, 128, 128, 'Erp\\Models\\User\\User', '1460264476LG22016-01-09-195845.jpg', NULL, '', 1),
(35, 131, 131, 'Erp\\Models\\User\\User', '1461498533Giacorn.jpg', NULL, '', 1),
(36, 132, 132, 'Erp\\Models\\User\\User', '1461558440JNcJellyfish.jpg', NULL, '', 1),
(37, 133, 133, 'Erp\\Models\\User\\User', '1461565946DUxcorn.jpg', NULL, '', 1),
(38, 134, 134, 'Erp\\Models\\User\\User', '1461575788S6nTulips.jpg', NULL, '', 1),
(39, 135, 135, 'Erp\\Models\\User\\User', '1461577019fUqHydrangeas.jpg', NULL, '', 1),
(40, 136, 136, 'Erp\\Models\\User\\User', '1461647333WMxDesert - Copy.jpg', NULL, '', 1),
(41, 137, 137, 'Erp\\Models\\User\\User', '1461648608bAtcorn.jpg', NULL, '', 1),
(42, 138, 138, 'Erp\\Models\\User\\User', '1461651368wsLKoala.jpg', NULL, '', 1),
(43, 139, 139, 'Erp\\Models\\User\\User', '1461729679VYaChrysanthemum.jpg', NULL, '', 1),
(44, 140, 140, 'Erp\\Models\\User\\User', '14617355069xzKoala.jpg', NULL, '', 1),
(45, 141, 141, 'Erp\\Models\\User\\User', '1462705236Z6D54137718697553feed 3.jpg', NULL, '', 1),
(46, 142, 142, 'Erp\\Models\\User\\User', '1462773161xfcDesert - Copy.jpg', NULL, '', 1),
(47, 143, 143, 'Erp\\Models\\User\\User', '1462773432oVNChrysanthemum.jpg', NULL, '', 1),
(48, 144, 144, 'Erp\\Models\\User\\User', '146277478833i54137718697553feed 3.jpg', NULL, '', 1),
(49, 145, 145, 'Erp\\Models\\User\\User', '1462788523hREcorn.jpg', NULL, '', 1),
(50, 146, 146, 'Erp\\Models\\User\\User', '1462790709hXacontact_man.png', NULL, '', 1),
(51, 147, 147, 'Erp\\Models\\User\\User', '1462967862QkPcontact_man.png', NULL, '', 1),
(52, 8, 8, 'Erp\\Models\\Event\\Event', '1464245449oHycorn.jpg', NULL, '', 1),
(53, 9, 9, 'Erp\\Models\\Event\\Event', '1464245662kTNChrysanthemum.jpg', NULL, '', 1),
(54, 9, 9, 'Erp\\Models\\Event\\Event', '1464246898Y37Jellyfish.jpg', NULL, '', 1),
(55, 10, 10, 'Erp\\Models\\Event\\Event', '1464250835TQ754137718697553feed 3.jpg', NULL, '', 1),
(56, 1, 1, 'Erp\\Models\\Event\\Event', '1464254229KsWTulips.jpg', NULL, '', 1),
(57, 148, 148, 'Erp\\Models\\User\\User', '1464605043Fpmcontact_man.png', NULL, '', 1),
(58, 2, 2, 'Erp\\Models\\Author\\Author', '1465117777Xt7shakespeare.jpg', NULL, '', 1),
(59, 1, 1, 'Erp\\Models\\Author\\Author', '14651182348KQkazi_nazrul_islam.jpg', NULL, '', 1),
(60, 1, 1, 'Erp\\Models\\Author\\Author', '1465118901Ouonews_image_2013-08-27_27571.jpg', NULL, '', 1),
(61, 137, 137, 'Erp\\Models\\User\\User', '1467086539DBhChrysanthemum.jpg', NULL, '', NULL),
(62, 149, 149, 'Erp\\Models\\User\\User', '1467090398F5QTulips.jpg', NULL, '', NULL),
(63, 150, 150, 'Erp\\Models\\User\\User', '1467101680nF8Hydrangeas.jpg', NULL, '', NULL),
(64, 156, 156, 'Erp\\Models\\User\\User', '146743854711y2016-01-09-195845.jpg', NULL, '', NULL),
(65, 187, 187, 'Erp\\Models\\User\\User', '1469342855NAxCUET_logo.png', NULL, '', NULL),
(66, 207, 207, 'Erp\\Models\\User\\User', '1469510612AydCUET_logo.png', NULL, '', NULL),
(67, 208, 208, 'Erp\\Models\\User\\User', '1469511180ZZOCUET_logo.png', NULL, '', NULL),
(68, 209, 209, 'Erp\\Models\\User\\User', '1469511616ILDCUET_logo.png', NULL, '', NULL),
(69, 210, 210, 'Erp\\Models\\User\\User', '1469511740mxQCUET_logo.png', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professional_qualifications`
--

CREATE TABLE `professional_qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professional_qualifications`
--

INSERT INTO `professional_qualifications` (`id`, `user_id`, `from_date`, `to_date`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 120, '2016-06-01', '2016-06-30', 'Active', 1, '2016-06-25 10:21:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professional_qualification_translations`
--

CREATE TABLE `professional_qualification_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `professional_qualification_id` int(11) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `institute_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professional_qualification_translations`
--

INSERT INTO `professional_qualification_translations` (`id`, `professional_qualification_id`, `certification`, `institute_name`, `location`, `locale`, `site_id`) VALUES
(1, 1, 'mcse', 'new horizon', 'dhaka', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `punches`
--

CREATE TABLE `punches` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
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
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `punches`
--

INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES
(122, 120, '0667', '04:56:02', NULL, '2016-02-18', NULL, '2016-02-18 04:56:02', '2016-02-18 04:56:15', 0.00, 0, 2016, 2, 19, 0, 1),
(125, 120, '0667', '11:35:25', NULL, '2016-02-19', NULL, '2016-02-19 11:35:25', '2016-02-19 11:35:30', 0.00, 0, 2016, 2, 20, 0, 1),
(126, 120, '0667', '04:33:10', NULL, '2016-03-20', NULL, '0000-00-00 00:00:00', '2016-03-20 06:57:05', 0.00, 1, 2016, 3, 20, 0, 1),
(127, 120, '0667', '06:48:54', NULL, '2016-03-20', NULL, '2016-03-20 06:58:59', '2016-03-20 06:59:05', 0.00, 0, 2016, 3, 20, 0, 1),
(128, 120, '0667', '06:56:58', NULL, '2016-03-20', NULL, '2016-03-20 06:59:30', '2016-03-20 06:59:55', 0.00, 0, 2016, 3, 20, 0, 1),
(129, 128, '0627', '07:00:46', NULL, '2016-03-20', NULL, '2016-03-20 07:00:46', '2016-03-20 07:00:55', 0.00, 0, 2016, 3, 20, 0, 1),
(130, 128, '0627', '09:39:21', NULL, '2016-03-20', NULL, '2016-03-20 09:39:21', '2016-03-20 09:39:24', 0.00, 0, 2016, 3, 20, 0, 1),
(131, 128, '0627', '09:39:28', NULL, '2016-03-20', NULL, '2016-03-20 09:39:28', '2016-03-20 12:00:00', 0.00, 0, 2016, 3, 20, 0, 1),
(132, 120, '0667', '06:45:42', NULL, '2016-03-21', NULL, '2016-03-21 05:45:42', '2016-03-21 06:45:47', 0.00, 0, 2016, 3, 21, 0, 1),
(133, 120, '0667', '06:46:40', NULL, '2016-03-21', NULL, '2016-03-21 06:46:40', '2016-03-21 06:46:49', 0.00, 0, 2016, 3, 21, 0, 1),
(135, 132, '1217', '07:07:43', NULL, '2016-03-21', NULL, '2016-03-21 07:07:43', '2016-03-21 07:07:48', 0.00, 0, 2016, 3, 21, 0, 1),
(136, 124, '0635', '07:08:43', NULL, '2016-03-21', NULL, '2016-03-21 07:08:43', '2016-03-21 07:08:46', 0.00, 0, 2016, 3, 21, 0, 1),
(137, 120, '0667', '08:36:06', NULL, '2016-03-21', NULL, '2016-03-21 08:36:06', '2016-03-21 08:36:36', 0.01, 0, 2016, 3, 21, 0, 1),
(138, 120, '0667', '08:37:14', NULL, '2016-03-21', NULL, '2016-03-21 08:37:14', '2016-03-21 08:37:17', 0.00, 0, 2016, 3, 21, 0, 1),
(139, 120, '0667', '08:42:19', NULL, '2016-03-21', NULL, '2016-03-21 08:42:19', '2016-03-21 08:42:23', 0.00, 0, 2016, 3, 21, 0, 1),
(140, 120, '0667', '08:44:26', NULL, '2016-03-21', NULL, '2016-03-21 08:44:26', '2016-03-21 08:44:33', 0.00, 0, 2016, 3, 21, 0, 1),
(141, 128, '0627', '08:45:51', NULL, '2016-03-21', NULL, '2016-03-21 08:45:51', '2016-03-21 08:45:54', 0.00, 0, 2016, 3, 21, 0, 1),
(142, 128, '0627', '08:52:12', NULL, '2016-03-21', NULL, '2016-03-21 08:52:12', '2016-03-21 08:52:15', 0.00, 0, 2016, 3, 21, 0, 1),
(143, 128, '0627', '08:52:46', NULL, '2016-03-21', NULL, '2016-03-21 08:52:46', '2016-03-21 08:52:49', 0.00, 0, 2016, 3, 21, 0, 1),
(144, 124, '0635', '08:54:13', NULL, '2016-03-21', NULL, '2016-03-21 08:54:13', '2016-03-21 08:54:16', 0.00, 0, 2016, 3, 21, 0, 1),
(145, 132, '1217', '08:56:11', NULL, '2016-03-21', NULL, '2016-03-21 08:56:11', '2016-03-21 08:56:14', 0.00, 0, 2016, 3, 21, 0, 1),
(146, 132, '1217', '09:19:31', NULL, '2016-03-21', NULL, '2016-03-21 09:19:31', '2016-03-21 09:19:35', 0.00, 0, 2016, 3, 21, 0, 1),
(147, 120, '0667', '11:26:39', NULL, '2016-03-21', NULL, '2016-03-21 11:26:39', '2016-03-21 11:26:44', 0.00, 0, 2016, 3, 21, 0, 1),
(148, 120, '0667', '10:42:12', NULL, '2016-03-22', NULL, '2016-03-22 10:42:12', '2016-03-22 10:42:16', 0.00, 1, 2016, 3, 22, 0, 1),
(149, 128, '0627', '10:44:59', NULL, '2016-03-22', NULL, '2016-03-22 10:44:59', '2016-03-22 10:45:03', 0.00, 1, 2016, 3, 22, 0, 1),
(150, 120, '0667', '15:17:17', NULL, '2016-05-14', NULL, '2016-05-14 15:17:17', '2016-05-14 15:17:28', 0.00, 0, 2016, 5, 14, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE `racks` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `rack_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` int(10) UNSIGNED NOT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `office_phone` varchar(255) DEFAULT NULL,
  `home_phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `relation_id`, `user_id`, `office_phone`, `home_phone`, `mobile`, `email`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 120, '544', '4545', '544', 'fdggd@fdggd.dfggd', 'Active', 1, '2016-06-14 05:28:11', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reference_translations`
--

CREATE TABLE `reference_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `reference_name` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relation_translations`
--

CREATE TABLE `relation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`, `site_id`) VALUES
(1, 'Islam', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_settings`
--

CREATE TABLE `result_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result_settings`
--

INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES
(49, '{"grade_class":"A+","gpa":"5.0","sub_min":"80","sub_max":"100","total_min":"5.0","total_max":"5.0"}', 1),
(50, '{"grade_class":"A","gpa":"4.0","sub_min":"70","sub_max":"79","total_min":"4.0","total_max":"4.99"}', 1),
(51, '{"grade_class":"A-","gpa":"3.5","sub_min":"60","sub_max":"69","total_min":"3.5","total_max":"3.99"}', 1),
(52, '{"grade_class":"B","gpa":"3.0","sub_min":"50","sub_max":"59","total_min":"3.0","total_max":"3.49"}', 1),
(53, '{"grade_class":"C","gpa":"2.0","sub_min":"40","sub_max":"49","total_min":"2.0","total_max":"2.99"}', 1),
(54, '{"grade_class":"D","gpa":"1.0","sub_min":"33","sub_max":"39","total_min":"1.00","total_max":"1.99"}', 1),
(56, '{"grade_class":"First Division","gpa":"60","sub_min":"60","sub_max":"100","total_min":"180","total_max":"300"}', 1),
(57, '{"grade_class":"2nd Division","gpa":"45","sub_min":"45","sub_max":"59","total_min":"135","total_max":"179"}', 1),
(58, '{"grade_class":"3rd Division","gpa":"33","sub_min":"33","sub_max":"44","total_min":"99","total_max":"134"}', 1),
(59, '{"grade_class":"Fail","gpa":"0","sub_min":"0","sub_max":"32","total_min":"0","total_max":"98"}', 1),
(60, '{"grade_class":"F","gpa":"0.0","sub_min":"0","sub_max":"32","total_min":"0","total_max":".99"}', 1),
(61, '{"grade_class":"","gpa":"","sub_min":"","sub_max":"","total_min":"","total_max":""}', 1),
(62, '{"grade_class":"","gpa":"","sub_min":"","sub_max":"","total_min":"","total_max":""}', 1),
(63, '{"grade_class":"","gpa":"","sub_min":"","sub_max":"","total_min":"","total_max":""}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_systems`
--

CREATE TABLE `result_systems` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `result_rule` varchar(50) NOT NULL,
  `setting_ids` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result_systems`
--

INSERT INTO `result_systems` (`id`, `name`, `result_rule`, `setting_ids`, `status_id`, `site_id`) VALUES
(14, 'Grading System', 'grade', '"49,50,51,52,53,54,60"', NULL, 1),
(15, 'Division', 'division', '"56,57,58,59"', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `role_description`, `status`, `position`, `site_id`) VALUES
(2, 'Employee', 'An employee can access his personal page only.', NULL, 1, 1),
(3, 'Manager', 'A Manager can view management related details of an employee ', NULL, 2, 1),
(4, 'superadmin', 'Can create Admins including anything else', NULL, 3, 1),
(5, 'Producer', 'A producer can -----------', NULL, 4, 1),
(6, 'Teacher', 'A teacher will teach students', NULL, 5, 1),
(7, 'Student', 'A student will learn', NULL, 6, 1),
(8, 'Guardian', 'guardians of students', NULL, 7, 1),
(150, 'superadmin', 'This is Superadmin..', 'Active', 0, 47),
(151, 'teacher', 'This is teacher..', 'Active', 0, 47),
(152, 'employee', 'This is employee..', 'Active', 0, 47),
(153, 'student', 'This is student..', 'Active', 0, 47),
(154, 'guardian', 'This is guardian..', 'Active', 0, 47),
(155, 'superadmin', 'This is Superadmin..', 'Active', 0, 48),
(156, 'teacher', 'This is teacher..', 'Active', 0, 48),
(157, 'employee', 'This is employee..', 'Active', 0, 48),
(158, 'student', 'This is student..', 'Active', 0, 48),
(159, 'guardian', 'This is guardian..', 'Active', 0, 48),
(160, 'superadmin', 'This is Superadmin..', 'Active', 0, 49),
(161, 'teacher', 'This is teacher..', 'Active', 0, 49),
(162, 'employee', 'This is employee..', 'Active', 0, 49),
(163, 'student', 'This is student..', 'Active', 0, 49),
(164, 'guardian', 'This is guardian..', 'Active', 0, 49),
(165, 'superadmin', 'This is Superadmin..', 'Active', 0, 50),
(166, 'teacher', 'This is teacher..', 'Active', 0, 50),
(167, 'employee', 'This is employee..', 'Active', 0, 50),
(168, 'student', 'This is student..', 'Active', 0, 50),
(169, 'guardian', 'This is guardian..', 'Active', 0, 50),
(170, 'superadmin', 'This is Superadmin..', 'Active', 0, 51),
(171, 'teacher', 'This is teacher..', 'Active', 0, 51),
(172, 'employee', 'This is employee..', 'Active', 0, 51),
(173, 'student', 'This is student..', 'Active', 0, 51),
(174, 'guardian', 'This is guardian..', 'Active', 0, 51),
(175, 'superadmin', 'This is Superadmin..', 'Active', 0, 52),
(176, 'teacher', 'This is teacher..', 'Active', 0, 52),
(177, 'employee', 'This is employee..', 'Active', 0, 52),
(178, 'student', 'This is student..', 'Active', 0, 52),
(179, 'guardian', 'This is guardian..', 'Active', 0, 52),
(180, 'superadmin', 'This is Superadmin..', 'Active', 0, 53),
(181, 'teacher', 'This is teacher..', 'Active', 0, 53),
(182, 'employee', 'This is employee..', 'Active', 0, 53),
(183, 'student', 'This is student..', 'Active', 0, 53),
(184, 'guardian', 'This is guardian..', 'Active', 0, 53),
(185, 'superadmin', 'This is Superadmin..', 'Active', 0, 54),
(186, 'teacher', 'This is teacher..', 'Active', 0, 54),
(187, 'employee', 'This is employee..', 'Active', 0, 54),
(188, 'student', 'This is student..', 'Active', 0, 54),
(189, 'guardian', 'This is guardian..', 'Active', 0, 54),
(190, 'superadmin', 'This is Superadmin..', 'Active', 0, 55),
(191, 'teacher', 'This is teacher..', 'Active', 0, 55),
(192, 'employee', 'This is employee..', 'Active', 0, 55),
(193, 'student', 'This is student..', 'Active', 0, 55),
(194, 'guardian', 'This is guardian..', 'Active', 0, 55),
(195, 'superadmin', 'This is Superadmin..', 'Active', 0, 56),
(196, 'teacher', 'This is teacher..', 'Active', 0, 56),
(197, 'employee', 'This is employee..', 'Active', 0, 56),
(198, 'student', 'This is student..', 'Active', 0, 56),
(199, 'guardian', 'This is guardian..', 'Active', 0, 56),
(200, 'superadmin', 'This is Superadmin..', 'Active', 0, 57),
(201, 'teacher', 'This is teacher..', 'Active', 0, 57),
(202, 'employee', 'This is employee..', 'Active', 0, 57),
(203, 'student', 'This is student..', 'Active', 0, 57),
(204, 'guardian', 'This is guardian..', 'Active', 0, 57),
(205, 'superadmin', 'This is Superadmin..', 'Active', 0, 58),
(206, 'teacher', 'This is teacher..', 'Active', 0, 58),
(207, 'employee', 'This is employee..', 'Active', 0, 58),
(208, 'student', 'This is student..', 'Active', 0, 58),
(209, 'guardian', 'This is guardian..', 'Active', 0, 58),
(210, 'superadmin', 'This is Superadmin..', 'Active', 0, 59),
(211, 'teacher', 'This is teacher..', 'Active', 0, 59),
(212, 'employee', 'This is employee..', 'Active', 0, 59),
(213, 'student', 'This is student..', 'Active', 0, 59),
(214, 'guardian', 'This is guardian..', 'Active', 0, 59),
(215, 'superadmin', 'This is Superadmin..', 'Active', 0, 60),
(216, 'teacher', 'This is teacher..', 'Active', 0, 60),
(217, 'employee', 'This is employee..', 'Active', 0, 60),
(218, 'student', 'This is student..', 'Active', 0, 60),
(219, 'guardian', 'This is guardian..', 'Active', 0, 60),
(220, 'superadmin', 'This is Superadmin..', 'Active', 0, 61),
(221, 'teacher', 'This is teacher..', 'Active', 0, 61),
(222, 'employee', 'This is employee..', 'Active', 0, 61),
(223, 'student', 'This is student..', 'Active', 0, 61),
(224, 'guardian', 'This is guardian..', 'Active', 0, 61),
(225, 'superadmin', 'This is Superadmin..', 'Active', 0, 62),
(226, 'teacher', 'This is teacher..', 'Active', 0, 62),
(227, 'employee', 'This is employee..', 'Active', 0, 62),
(228, 'student', 'This is student..', 'Active', 0, 62),
(229, 'guardian', 'This is guardian..', 'Active', 0, 62),
(230, 'superadmin', 'This is Superadmin..', 'Active', 0, 63),
(231, 'teacher', 'This is teacher..', 'Active', 0, 63),
(232, 'employee', 'This is employee..', 'Active', 0, 63),
(233, 'student', 'This is student..', 'Active', 0, 63),
(234, 'guardian', 'This is guardian..', 'Active', 0, 63),
(235, 'superadmin', 'This is Superadmin..', 'Active', 0, 64),
(236, 'teacher', 'This is teacher..', 'Active', 0, 64),
(237, 'employee', 'This is employee..', 'Active', 0, 64),
(238, 'student', 'This is student..', 'Active', 0, 64),
(239, 'guardian', 'This is guardian..', 'Active', 0, 64),
(240, 'superadmin', 'This is Superadmin..', 'Active', 0, 65),
(241, 'teacher', 'This is teacher..', 'Active', 0, 65),
(242, 'employee', 'This is employee..', 'Active', 0, 65),
(243, 'student', 'This is student..', 'Active', 0, 65),
(244, 'guardian', 'This is guardian..', 'Active', 0, 65),
(245, 'superadmin', 'This is Superadmin..', 'Active', 0, 66),
(246, 'teacher', 'This is teacher..', 'Active', 0, 66),
(247, 'employee', 'This is employee..', 'Active', 0, 66),
(248, 'student', 'This is student..', 'Active', 0, 66),
(249, 'guardian', 'This is guardian..', 'Active', 0, 66),
(250, 'superadmin', 'This is Superadmin..', 'Active', 0, 67),
(251, 'teacher', 'This is teacher..', 'Active', 0, 67),
(252, 'employee', 'This is employee..', 'Active', 0, 67),
(253, 'student', 'This is student..', 'Active', 0, 67),
(254, 'guardian', 'This is guardian..', 'Active', 0, 67),
(255, 'superadmin', 'This is Superadmin..', 'Active', 0, 68),
(256, 'teacher', 'This is teacher..', 'Active', 0, 68),
(257, 'employee', 'This is employee..', 'Active', 0, 68),
(258, 'student', 'This is student..', 'Active', 0, 68),
(259, 'guardian', 'This is guardian..', 'Active', 0, 68);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES
(120, 4, 1),
(126, 2, 1),
(127, 2, 1),
(128, 2, 1),
(132, 6, 1),
(133, 6, 1),
(134, 8, 1),
(135, 8, 1),
(136, 8, 1),
(137, 7, 1),
(138, 7, 1),
(139, 2, 1),
(140, 5, 1),
(141, 7, 1),
(142, 6, 1),
(143, 8, 1),
(144, 8, 1),
(145, 3, 1),
(146, 7, 1),
(147, 7, 1),
(148, 7, 1),
(149, 6, 1),
(150, 7, 1),
(156, 2, 1),
(160, 4, 1),
(161, 4, 1),
(162, 30, 1),
(163, 4, 1),
(164, 4, 1),
(186, 4, 47),
(187, 2, 1),
(188, 4, 48),
(189, 4, 49),
(190, 4, 50),
(191, 4, 51),
(192, 4, 52),
(193, 180, 53),
(204, 235, 64),
(205, 250, 67),
(206, 255, 68),
(207, 2, 1),
(208, 7, 1),
(209, 6, 1),
(210, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `building_id`, `floor_id`, `room_name`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, 1, '102', 'Active', NULL, 1),
(2, 1, 1, 'Room1', 'Active', NULL, 1),
(3, 1, 1, 'Room 2', 'Active', NULL, 1),
(4, 2, 2, 'Room1', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES
(1, 1, 2, 1, 157, 1, 1, 1, '00:00:09', '00:00:10', 'Active', 'SUNDAY', 145, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(2, 1, 2, 1, 132, 2, 2, 4, '00:06:00', '00:06:00', 'Active', 'SATURDAY', 132, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(3, 1, 2, 3, 161, 2, 2, 4, '00:08:00', '00:08:00', 'Active', 'SATURDAY', 160, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(4, 1, 2, 3, 161, 2, 2, 4, '01:09:45', '01:09:45', 'Active', 'MONDAY', 159, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(5, 1, 2, 1, 161, 2, 2, 4, '10:09:45', '01:12:00', 'Active', 'SUNDAY', 159, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(6, 1, 2, 1, 161, 2, 2, 4, '12:09:45', '12:12:00', 'Active', 'SATURDAY', 159, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(7, 1, 2, 1, 161, 2, 2, 4, '08:09:45', '11:12:00', 'Active', 'SUNDAY', 159, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(8, 1, 2, 1, 161, 2, 2, 4, '23:09:45', '23:12:00', 'Active', 'SUNDAY', 159, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(9, 1, 2, 3, 132, 2, 2, 4, '16:40:45', '16:47:45', 'Active', 'WEDNESDAY', 128, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(10, 1, 2, 5, 132, 1, 1, 1, '03:13:00', '04:13:00', 'Active', 'THURSDAY', 132, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_cut_rules`
--

CREATE TABLE `salary_cut_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary_types` longtext,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_cut_rules`
--

INSERT INTO `salary_cut_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status`, `position`, `site_id`) VALUES
(1, 'Salary Cut 1', '{"basic":"Basic","medical":"2"}', 25, 'percent', 'Active', NULL, 1),
(2, 'Cut Rule 2', '{"total":"Total"}', 25, 'percent', 'Active', NULL, 1),
(3, 'Cut 3', '[]', 2000, 'plus', 'Active', NULL, 1),
(4, 'Cut 4', '{"basic":"Basic","snt":"1","medical":"2"}', 20, 'fixed', 'Active', NULL, 1),
(5, 'Cut 5', '[]', 5444, 'plus', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_rules`
--

CREATE TABLE `salary_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rules_content` longtext,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_rules`
--

INSERT INTO `salary_rules` (`id`, `name`, `rules_content`, `status`, `position`, `site_id`) VALUES
(1, 'Allowance Rule 1', '{"snt_amount":"1000","snt_amount_type":"fixed","medical_amount":"25","medical_amount_type":"percent"}', 'Active', NULL, 1),
(2, 'Allowance Rule 2', '{"snt_amount":"200","snt_amount_type":"fixed","medical_amount":"20","medical_amount_type":"fixed","transport_allowance_amount":"20","transport_allowance_amount_type":"fixed"}', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_types`
--

CREATE TABLE `salary_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_types`
--

INSERT INTO `salary_types` (`id`, `name`, `status`, `position`, `site_id`) VALUES
(1, 'snt', 'Active', NULL, 1),
(2, 'Medical', 'Active', NULL, 1),
(3, 'Transport Allowance', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `merit_level` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `student_class_id`, `user_id`, `section_name`, `merit_level`, `status`, `deleted_at`, `site_id`) VALUES
(2, 1, 132, 'A', 'High', 'Active', NULL, 1),
(4, 1, 133, 'B', 'Medium', 'Active', NULL, 1),
(5, 1, 133, 'C', 'Low', 'Active', '2016-05-09 08:53:01', 1),
(6, 2, 133, 'Rose', 'High', 'Active', NULL, 1),
(7, 2, 132, 'Chameli', 'Medium', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('36d5b522c5f27b09b6356c27edc7c785b67ef28f', 'YTo4OntzOjg6Inh4c2l0ZUlkIjtpOjE2O3M6NjoiX3Rva2VuIjtzOjQwOiJpQmtWc2ZtdzV4VXJiNW9PbHNxR3dwWmYxTkNSWUVNN0J0d0c4TFVMIjtzOjg6Imxhbmd1YWdlIjtzOjc6IkVuZ2xpc2giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjczOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvaW1hZ2VjYWNoZS9sYXJnZS8xNDU1MDEyNzI2WFZwMjAxNi0wMS0wOS0xOTU4NDUuanBnIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE1OiJwcmV2aW91c1JlcXVlc3QiO3M6NToiYWRtaW4iO3M6Mzg6ImxvZ2luXzgyZTVkMmM1NmJkZDA4MTEzMThmMGNmMDc4Yjc4YmZjIjtzOjM6IjEyMCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NjQ3Njk2MzI7czoxOiJjIjtpOjE0NjQ3NjUxNjI7czoxOiJsIjtzOjE6IjAiO319', 1464769633);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contents` longtext,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `contents`, `position`, `status_id`, `site_id`) VALUES
(1, '{"sat_in":"12:00:00","sat_out":"13:30:00","sat_max":"12:00:00","sat_min":"13:30:00","sat_extend_day":"on","sat_day_off":"","sun_in":"12:00:00","sun_out":"13:30:00","sun_max":"12:00:00","sun_min":"13:30:00","sun_extend_day":"on","sun_day_off":"","mon_in":"12:00:00","mon_out":"13:30:00","mon_max":"05:00:00","mon_min":"13:30:00","mon_extend_day":"on","mon_day_off":"","tue_in":"12:00:00","tue_out":"13:30:00","tue_max":"06:00","tue_min":"07:50","tue_extend_day":"on","tue_day_off":"","wed_in":"12:00:00","wed_out":"13:30:00","wed_max":"12:00:00","wed_min":"13:30:00","wed_extend_day":"on","wed_day_off":"","thu_in":"12:00:00","thu_out":"13:30:00","thu_max":"12:00:00","thu_min":"13:30:00","thu_extend_day":"on","thu_day_off":"","fri_in":"12:00:00","fri_out":"13:15:00","fri_max":"12:00:00","fri_min":"13:30:00","fri_extend_day":"on","tue_day_off":"on"}', 1, 1, 1);

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
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shifts-copy`
--

INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`, `site_id`) VALUES
(11, '12:00:00', '12:05:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', NULL, 2, 1),
(12, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1),
(13, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1),
(14, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1),
(21, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shift_translations`
--

CREATE TABLE `shift_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shift_translations`
--

INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES
(1, 'Day', 'en', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_amount_receives`
--

CREATE TABLE `site_amount_receives` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `site_groups`
--

CREATE TABLE `site_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `group_alias` varchar(255) DEFAULT NULL,
  `group_email` varchar(255) DEFAULT NULL,
  `group_address` varchar(255) DEFAULT NULL,
  `group_phone` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_groups`
--

INSERT INTO `site_groups` (`id`, `name`, `group_alias`, `group_email`, `group_address`, `group_phone`, `position`, `status`, `deleted_at`) VALUES
(1, 'public', 'site-group-alias1', 'email1@gmail.com', 'Borisal', '5698745', 1, 1, NULL),
(2, 'private', NULL, NULL, NULL, NULL, 1, 1, NULL),
(3, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL),
(4, 'Viqa', 'viqa', 'viqa@email.com', 'dhaka', '021547899', 1, 1, NULL),
(5, 'Bibit', 'bibi', 'bibi@yahoo.com', 'Narayanganj', '1236589', 1, 1, NULL),
(6, 'Viqaurunnesa', 'viqqq', 'jjjj@gmail.com', 'dhaka', '017125689', 1, 1, NULL),
(7, 'ccc', 'ccc', 'hjdjs@fghfh.com', 'gdhsg', '123444', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_membership_id` int(10) UNSIGNED NOT NULL,
  `site_group_id` int(10) UNSIGNED NOT NULL,
  `site_alias` varchar(255) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `site_phone` int(11) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `site_membership_id`, `site_group_id`, `site_alias`, `site_email`, `site_phone`, `site_logo`, `status`, `deleted_at`) VALUES
(1, 1, 1, 'site-alias1', 'site@email.com', 1032658, 'logo1', 1, NULL),
(12, 1, 1, 'sntsnt', 'dgbfd@fdgfd.fgfg', 123456789, NULL, 1, NULL),
(13, 1, 1, 'alias', 'sss@email.com', 123456, NULL, 1, NULL),
(14, 1, 1, 'jjjjj', 'hhh@hhh.jjj', 123456, NULL, 1, NULL),
(15, 1, 1, 'gdgd', 'gd@df.hgh', 454545, NULL, 1, NULL),
(16, 2, 1, 'asad', 'dfd@fdf.hgh', 44545, NULL, 1, NULL),
(17, 1, 1, 'l,lm.m.m', 'kjkj@gfr.kll', 2147483647, NULL, 1, NULL),
(18, 1, 1, 'klklkioio', 'kjkj@gfr.klll', 2147483647, NULL, 1, NULL),
(19, 1, 1, 'iiiiii', 'kkk@fff.jjjj', 123456, NULL, 1, NULL),
(20, 1, 2, 'dfdfdfdfd', 'dfdfdfdfd@fdfddf.fgff', 125487999, NULL, 1, NULL),
(21, 2, 4, 'jjjiiioooo', 'kkrr@jya.ll', 258963, NULL, 1, NULL),
(22, 1, 2, 'lopi', 'dd4@wee.cjj', 1254, NULL, 1, NULL),
(23, 2, 1, 'new-delhi', 'new@new.com', 123456789, NULL, 1, NULL),
(24, 1, 2, 'kuet', 'kuet@kuet.com', 123456, NULL, 1, NULL),
(25, 1, 1, 'globald', 'global@yahoo.com', 123456, NULL, 1, NULL),
(26, 1, 1, 'jadu', 'jadu@jadu.jadu', 123456, NULL, 1, NULL),
(27, 1, 1, 'glo', 'glo@glo.glo', 123456, NULL, 1, NULL),
(28, 1, 1, 'gold', 'gold@gold.com', 123456, NULL, 1, NULL),
(29, 1, 1, 'holad', 'holad@gmail.com', 123456, NULL, 1, NULL),
(30, 1, 1, 'holada', 'holad@gmail.coma', 123456, NULL, 1, NULL),
(31, 1, 1, 'holadas', 'holad@gmail.comas', 123456, NULL, 1, NULL),
(32, 1, 1, 'holadasd', 'holad@gmail.comasd', 123456, NULL, 1, NULL),
(33, 1, 1, 'hhh', 'hhh@jjj.kkkk', 123456, NULL, 1, NULL),
(34, 1, 1, 'hhhf', 'hhh@jjj.kkkkf', 123456, NULL, 1, NULL),
(35, 2, 1, 'uuuuu', 'uuu@uuu.com', 15963587, NULL, 1, NULL),
(36, 1, 1, 'kkk@kkk', 'kkk@kkkk.kkk', 55555555, NULL, 1, NULL),
(37, 1, 1, 'oo', 'oo@oo.oo', 123456, NULL, 1, NULL),
(38, 1, 1, 'kkk', 'kk@kk.kk', 159357, NULL, 1, NULL),
(39, 1, 1, 'ppp', 'pppp@pp.pp', 1598657, NULL, 1, NULL),
(40, 1, 1, 'kiujh', 'hhh@kui.njjj', 123456, NULL, 1, NULL),
(41, 1, 2, 'pop', 'pop@pop.pp', 2147483647, NULL, 1, NULL),
(42, 1, 1, 'lol', 'lol@lol', 159357, NULL, 1, NULL),
(43, 1, 1, 'juju', 'juju@juju.net', 21548698, NULL, 1, NULL),
(44, 1, 2, 'ololo', 'olol@olol.lolo', 159357, NULL, 1, NULL),
(45, 1, 1, 'jujujujuj', 'hyhy@juhu.nji', 12565987, NULL, 1, NULL),
(46, 1, 1, 'kokikikikkk', 'kokiju@juji', 1254689, NULL, 1, NULL),
(47, 1, 2, 'ggggg', 'gggg@gggg.kkk', 123654, NULL, 1, NULL),
(48, 1, 1, 'site-site', 'site@site.site', 123456789, NULL, 1, NULL),
(49, 1, 1, 'ereter', 'rere@rerere.tyty', 656565656, NULL, 1, NULL),
(50, 1, 2, 'killllllllll', 'kkkk@kk.mmm', 2147483647, NULL, 1, NULL),
(51, 1, 4, 'bidda', 'bidda@bidda.bidda', 123456, NULL, 1, NULL),
(52, 2, 2, 'jakka', 'jakk@jakka.jakka', 12586987, NULL, 1, NULL),
(53, 1, 1, 'kala', 'kala@jaika.com', 123456, NULL, 1, NULL),
(54, 1, 2, 'insti-name', 'name@name.name', 123456, NULL, 1, NULL),
(55, 1, 2, 'insti-nname', 'name@namee.name', 123456, NULL, 1, NULL),
(56, 1, 1, 'sdswewe', 'dss@gg.gfg', 123456, NULL, 1, NULL),
(57, 1, 1, 'jahid', 'jahid@jjj.jj', 1458799, NULL, 1, NULL),
(58, 1, 1, 'jahidf', 'jahid@jjj.jjf', 1458799, NULL, 1, NULL),
(59, 1, 1, 'jahidfh', 'jahid@jjj.jjfh', 1458799, NULL, 1, NULL),
(60, 1, 1, 'jahidfhf', 'jahid@jjj.jjfhf', 1458799, NULL, 1, NULL),
(61, 1, 1, 'jahidfhff', 'jahid@jjj.jjfhff', 1458799, NULL, 1, NULL),
(62, 1, 1, 'jahidfhffg', 'jahid@jjj.jjfhffg', 1458799, NULL, 1, NULL),
(63, 1, 1, 'jahidfhffgd', 'jahid@jjj.jjfhffgd', 1458799, NULL, 1, NULL),
(64, 1, 1, 'jahidfhffgdg', 'jahid@jjj.jjfhffgdg', 1458799, NULL, 1, NULL),
(66, 1, 1, 'kk-kkk', 'kk@gmail.com', 123654789, NULL, 1, NULL),
(67, 1, 1, 'kkkk', 'kk@yahoo.com', 1234567, NULL, 1, NULL),
(68, 1, 1, 'raja', 'raja@sntbd.com', 178526588, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_info_translations`
--

CREATE TABLE `site_info_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_info_id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `locale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_info_translations`
--

INSERT INTO `site_info_translations` (`id`, `site_info_id`, `site_name`, `address`, `locale`) VALUES
(1, 1, 'ghf', 'fghf', 'en'),
(2, 1, 'xcvx', 'xcvx', 'bn'),
(3, 12, 'xgxcv', 'xcvxcvx', 'en'),
(4, 13, 'test-institute', 'addrress', 'en'),
(5, 14, 'jjjj', 'jjjjj', 'en'),
(6, 15, 'fgddg', 'ggdg', 'en'),
(7, 16, 'fdfdg4', 'dfwd', 'en'),
(8, 17, 'dsdsdsrere', 'lklkl', 'en'),
(9, 18, 'lklklkll', 'klklkl', 'en'),
(10, 19, 'ouo', 'oioio', 'en'),
(11, 20, 'dfdfdf', 'dfdfdf', 'en'),
(12, 21, 'jjjjjooooo', 'oooooppppp', 'en'),
(13, 22, 'jjiuuj', 'lloohy', 'en'),
(14, 23, 'newi', 'new delhi', 'en'),
(15, 24, 'global', 'inaddress', 'en'),
(16, 25, 'global-institute', 'global-dhaka', 'en'),
(17, 26, 'jadu', 'jadu', 'en'),
(18, 27, 'glo', 'glo', 'en'),
(19, 28, 'gold', 'gold', 'en'),
(20, 29, 'holad', 'holad', 'en'),
(21, 30, 'holad', 'holad', 'en'),
(22, 31, 'holad', 'holad', 'en'),
(23, 32, 'holad', 'holad', 'en'),
(24, 33, 'hhhh', 'hhh', 'en'),
(25, 34, 'hhhh', 'hhh', 'en'),
(26, 35, 'uuuu', 'uuuuu', 'en'),
(27, 36, 'kkkk', 'kkkkk', 'en'),
(28, 37, 'iiiiiii', 'iiiiiiii', 'en'),
(29, 38, 'kjuijju', 'kkkk', 'en'),
(30, 39, 'pppp', 'pppp', 'en'),
(31, 40, 'kkkkkk', 'kkkkuii', 'en'),
(32, 41, 'poiop', 'pop', 'en'),
(33, 42, 'lol', 'lol', 'en'),
(34, 43, 'juju', 'juju', 'en'),
(35, 44, 'ololo', 'ololo', 'en'),
(36, 45, 'jujujj', 'jujuju8ju', 'en'),
(37, 46, 'lolopol', 'koiju', 'en'),
(38, 47, 'jujujjhy', 'ggggg', 'en'),
(39, 48, 'site-site', 'sitedhaka', 'en'),
(40, 49, 'fdfdf', 'rerere', 'en'),
(41, 50, 'klll', 'killl', 'en'),
(42, 51, 'vidda', 'biddaloy', 'en'),
(43, 52, 'jaka', 'jaka', 'en'),
(44, 53, 'kala', 'kala', 'en'),
(45, 54, 'intstinam', 'ddddhhhakkkaa', 'en'),
(46, 55, 'intstinam', 'ddddhhhakkkaa', 'en'),
(47, 56, 'dsdsdsd', 'sdsdsds', 'en'),
(48, 57, 'jahid', 'jahid', 'en'),
(49, 58, 'jahid', 'jahid', 'en'),
(50, 59, 'jahid', 'jahid', 'en'),
(51, 60, 'jahid', 'jahid', 'en'),
(52, 61, 'jahid', 'jahid', 'en'),
(53, 62, 'jahid', 'jahid', 'en'),
(54, 63, 'jahid', 'jahid', 'en'),
(55, 64, 'jahid', 'jahid', 'en'),
(56, 65, 'kk', 'jjjj', 'en'),
(57, 66, 'kk', 'jjjj', 'en'),
(58, 67, 'kk', 'kk', 'en'),
(59, 68, 'raja', 'nganj', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `site_memberships`
--

CREATE TABLE `site_memberships` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_memberships`
--

INSERT INTO `site_memberships` (`id`, `name`, `payment_type`, `payment_type_duration`, `payment_amount`, `payment_installment`, `late_payment_membership_status`, `late_payment_membership_days`, `late_fee`, `alumni_login`, `alumni_fee`, `discount_type`, `discount`, `deleted_at`, `status`) VALUES
(1, 'Site Membership two', 'fixed', '0', 50000.25, 12, 1, 20, 1199.00, 1, 10000.00, 'fixed', 5000.00, NULL, 1),
(5, 'mambership 2', 'per-student', '0', 2000.00, 1, 1, 25, 22222.00, 1, 4562.00, 'fixed', 2581.00, NULL, 1),
(7, 'member 3', 'fixed', '0', 256358.00, 6, 1, 25, 35.00, 1, 568.00, 'fixed', 6589.00, NULL, 1),
(8, 'Site Member 4', 'fixed', '0', 25698.00, 2, 1, 53, 25689.00, 1, 658.00, 'fixed', 2568.00, NULL, 1),
(9, 'Membership 5', 'fixed', '0', 54862.00, 1, 0, 0, 5555.00, 0, 0.00, 'fixed', 3569.00, NULL, 1),
(10, 'Membership 6', 'per-student', '0', 580.00, 2, 1, 20, 2586.00, 1, 3569.00, 'fixed', 3598.00, NULL, 1),
(11, 'radio 5', 'fixed', '0', 2586.00, 2, 1, 0, 2500.00, 1, 0.00, 'fixed', 2568.00, NULL, 1),
(12, 'radio 6', 'fixed', '0', 25869.00, 4, 0, 0, 25689.00, 1, 0.00, 'fixed', 2536.00, NULL, 1),
(13, 'platinum', 'per-student', '0', 588851.00, 1, 0, 0, 0.00, 1, 0.00, 'percent', 20.00, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_types`
--

CREATE TABLE `site_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_types`
--

INSERT INTO `site_types` (`id`, `name`, `position`, `status`, `deleted_at`) VALUES
(1, 'monthly', 1, 1, NULL),
(2, 'yearly', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_category_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_category_id`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Active', 1, '2016-06-13 09:46:32', '0000-00-00 00:00:00', NULL),
(2, 3, 'Active', 1, '2016-06-14 05:25:24', '0000-00-00 00:00:00', NULL),
(3, 1, 'Active', 1, '2016-06-14 05:34:20', '0000-00-00 00:00:00', NULL),
(4, 1, 'Active', 1, '2016-06-14 05:34:30', '0000-00-00 00:00:00', NULL),
(5, 1, 'Active', 1, '2016-06-14 05:34:38', '0000-00-00 00:00:00', NULL),
(6, 2, 'Active', 1, '2016-06-14 05:34:47', '0000-00-00 00:00:00', NULL),
(7, 2, 'Active', 1, '2016-06-14 05:34:55', '0000-00-00 00:00:00', NULL),
(8, 2, 'Active', 1, '2016-06-14 05:35:05', '0000-00-00 00:00:00', NULL),
(9, 2, 'Active', 1, '2016-06-14 05:35:14', '0000-00-00 00:00:00', NULL),
(10, 3, 'Active', 1, '2016-06-14 05:35:23', '0000-00-00 00:00:00', NULL),
(11, 3, 'Active', 1, '2016-06-14 05:35:31', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skill_categories`
--

CREATE TABLE `skill_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill_category_translations`
--

CREATE TABLE `skill_category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_category_id` int(11) DEFAULT NULL,
  `skill_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill_translations`
--

CREATE TABLE `skill_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_category_id` int(11) NOT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specialization_translations`
--

CREATE TABLE `specialization_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `specialization_id` int(11) DEFAULT NULL,
  `skill_description` varchar(255) DEFAULT NULL,
  `extracurricular_activities` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `user_id`, `roll_no`, `present_type`, `present_type_id`, `in_time`, `out_time`, `present_date`, `present_date_time`, `present_year`, `present_month`, `present_day`, `site_id`) VALUES
(35, 137, '566987', 'A', 2, '02:00:00', '04:13:00', '2016-07-14', '2016-07-14 17:04:37', 2016, 7, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `result_system_id` int(10) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `class_name`, `user_id`, `result_system_id`, `note`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'Play', 132, 14, '', 'Active', NULL, 1),
(2, 'One', 132, 14, 'Class One', 'Active', NULL, 1),
(5, 'Three', 133, 15, 'Class three', 'Inactive', NULL, 1),
(6, 'test', 132, 15, 'sssss', 'Active', '2016-05-09 08:49:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_histories`
--

CREATE TABLE `student_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `guardian_id` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_histories`
--

INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES
(1, 141, 2, 1, NULL, NULL, NULL, '2016-04-24', NULL, 1),
(2, 142, 2, 1, NULL, NULL, NULL, '2016-04-24', NULL, 1),
(3, 143, 2, 1, NULL, NULL, NULL, '2016-04-24', NULL, 1),
(4, 144, 2, 1, NULL, NULL, '128', '2016-04-25', NULL, 1),
(5, 145, 3, 1, 2, '45454554', '128', '2016-04-25', NULL, 1),
(6, 146, 2, 1, 1, '454545454', '128', '2016-04-25', NULL, 1),
(7, 147, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, 1),
(8, 148, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, 1),
(9, 149, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, 1),
(10, 150, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, 1),
(11, 151, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, 1),
(12, 152, 2, 1, 3, '4545454545', '128', '2016-05-01', NULL, 1),
(13, 153, 2, 1, 2, '4545454', '128', '2016-05-01', NULL, 1),
(14, 154, 2, 1, 2, '454454', '128', '2016-05-01', NULL, 1),
(15, 155, 2, 1, 2, '45454545', '128', '2016-05-01', NULL, 1),
(16, 156, 2, 1, 1, '77797897978', '128', '2016-05-01', NULL, 1),
(17, 158, 2, 2, 2, '124589', '128', '2016-05-12', NULL, 1),
(18, 158, 2, 2, 1, '124589', '128', NULL, '2016-05-12', 1),
(19, 167, NULL, 2, 1, '3578956', '128', '2016-05-18', NULL, 1),
(20, 137, 2, 1, 2, '566987', '136', NULL, '2016-06-30', 1),
(21, 208, NULL, 1, 2, '25698', '134', '2016-07-26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `subject_total_marks` double(8,2) DEFAULT NULL,
  `subject_author` varchar(255) DEFAULT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `subject_credit` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `subject_marks_type` longtext NOT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1',
  `marks_type_info` longtext,
  `result_system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `status`, `subject_marks_type`, `site_id`, `marks_type_info`, `result_system_id`) VALUES
(1, 1, 132, 'Bangla', 100.00, '', 'BN-001', 2, 'Active', '1,2', 1, '{"1":{"markTypeMax":"60","markTypePass":"25"},"2":{"markTypeMax":"40","markTypePass":"18"}}', 14),
(3, 1, 133, 'English', 100.00, 'Michael Swan', 'ENG-001', 1, 'Active', '1,2', 1, '{"1":{"markTypeMax":"60","markTypePass":"25"},"2":{"markTypeMax":"40","markTypePass":"18"}}', 14),
(4, 2, 133, 'English', 100.00, 'Hori Das Paul', 'Eng-002', 2, 'Active', '1,2', 1, '{"1":{"markTypeMax":"60","markTypePass":"25"},"2":{"markTypeMax":"40","markTypePass":"18"}}', 14),
(5, 1, 132, 'Math', NULL, '', 'Math-001', 3, 'Active', '1,2,3', 1, '{"1":{"markTypeMax":"75","markTypePass":"25"},"2":{"markTypeMax":"25","markTypePass":"10"},"3":{"markTypeMax":"25","markTypePass":"10"}}', 14),
(6, 1, 133, 'General Science', NULL, '', 'S-259', 4, 'Active', '1,2', 1, '{"1":{"markTypeMax":"60","markTypePass":"25"},"2":{"markTypeMax":"40","markTypePass":"18"}}', 14),
(7, 1, 132, 'Social Science', NULL, '', 'SS-257', 3, 'Active', '1,2,3', 1, '{"1":{"markTypeMax":"75","markTypePass":"25"},"2":{"markTypeMax":"25","markTypePass":"10"},"3":{"markTypeMax":"25","markTypePass":"10"}}', 14),
(12, 1, 132, 'Testing', NULL, 'Testing', '125', 2, 'Active', '1,2', 1, '{"1":{"markTypeMax":"75","markTypePass":"25"},"2":{"markTypeMax":"25","markTypePass":"10"}}', 14),
(13, 1, 132, 'Jhek', 100.00, 'Kkk', '4545', 4, 'Active', '1,2', 1, '{"1":{"markTypeMax":"60","markTypePass":"25"},"2":{"markTypeMax":"40","markTypePass":"18"}}', 14),
(14, 1, 132, 'Dfd', 100.00, 'Dfd', 'fddfd', 1, 'Active', '1,3', 1, '{"1":{"markTypeMax":"50","markTypePass":"15"},"3":{"markTypeMax":"50","markTypePass":"14"}}', 14),
(15, 1, 132, 'Hello', 100.00, '', '25', 1, 'Active', '1,2', 1, '{"1":{"markTypeMax":"50","markTypePass":"15"},"2":{"markTypeMax":"50","markTypePass":"15"}}', 14),
(16, 1, 133, 'Phsychology', 100.00, 'Dhanu', '145', 2, 'Active', '1,2', 1, '{"1":{"markTypeMax":"75","markTypePass":"25"},"2":{"markTypeMax":"25","markTypePass":"10"}}', 14),
(17, 1, 133, 'Farsil', 100.00, 'Hola', '555', 1, 'Active', '1,2', 1, '{"1":{"markTypeMax":"50","markTypePass":"25"},"2":{"markTypeMax":"50","markTypePass":"25"}}', 14);

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `training_year` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `user_id`, `country_id`, `training_year`, `duration`, `status`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 120, 1, '2014', '3', 'Active', 1, '2016-06-25 10:19:16', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `training_translations`
--

CREATE TABLE `training_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `training_id` int(11) DEFAULT NULL,
  `training_title` varchar(255) DEFAULT NULL,
  `training_cover` text,
  `institute_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `training_translations`
--

INSERT INTO `training_translations` (`id`, `training_id`, `training_title`, `training_cover`, `institute_name`, `location`, `locale`, `site_id`) VALUES
(1, 1, 'BED', 'sdsfsf', 'Bed dhaka training center', 'dhxhvjx', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
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
  `site_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES
(120, '0667', 'khanna', 'kk@gmail.com', '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2016-04-20', '78787877', '12352566', '32547486', NULL, NULL, NULL, 'CCKk6AMEqiai4BFEbSvW0IGrxjTOx6flOjyTCJ2zfUXV0fmZc4eVQ0PUJT0J', '2016-04-20', NULL, 1),
(126, '6589', 'hannan', 'hannan@gmail.com', '$2y$10$BdZgLHneikszX6VpqKTvaeEWq/E31dfPI2FQnpnw/L.fJxHo3Z66y', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-04-20', '0171526859', '99999999999999', '99999999999999', '999999999999999', '99999999999999', NULL, 'OwVgbTUGp0Vrwxhackh52dX9pfrxe8JJc3cMlmuVc7MS9xIqRzvSFQv0KMGD', '2016-03-27', NULL, 1),
(127, '6598', 'test', 'test@test.com', '$2y$10$ccEjf4UWE3eND6nEuAn7Ne2dcpmIUihW6WMREqS9kaCQNIOQAxmRi', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-04-09', '0171256985', '12548974', '5656659889777', NULL, NULL, NULL, 'cFJeZmPHgh1B5nVvYjNPeBUzuBTJ5OUciPeey7U2Rv4wULcmoTq7dDeXuUuV', '2016-04-06', NULL, 1),
(128, '65987', 'joyraj', 'joy@gmail.com', '$2y$10$AZ3ywpPbBtNQkBllLauD1OQHgfqdBjD7jWpNWVZMMp9UzammR2LD.', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-12-31', '0171525632', '856958745', '236598472', '258963', '2586623', NULL, NULL, '2016-04-06', NULL, 1),
(132, 'kjuyt500', 'mahmud_user', 'mahmud@gmail.com', '$2y$10$HSS23zos.RvSSI3JtxuQT.5ACBhL3HOOWhiUmnR4KLhn812M1ysGq', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-04-25', '123456', '125647', '36598', '65444', '55558', NULL, 'TnkOyjD8WPVQqzPZsrn9wi1MONSelYRMrDhl9ESCmsZOPbgs745XQWix1ggV', '2016-03-28', NULL, 1),
(133, 'kjhuytr45t', 'jamil888t', 'jamil@gmail.com', '$2y$10$y8CGdCjwcM.STxX8GThzdezGrI3OE9vv1gx/d6gBt4vRND7MMcjAS', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '1992-07-08', '658954', '3455', '22334', '333', '333', NULL, NULL, '1973-08-15', NULL, 1),
(134, 'GID-0987', 'masuda', 'masuda@gmail.com', '$2y$10$G5bz5EnNE0xL2XZwCNfd6OzsTw45pI4RBAZ1cCWs2GepTUpjIp9m6', 17, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '54689', '54566', '11255', '22235', '45666', NULL, NULL, '2016-04-12', NULL, 1),
(135, 'GID-0543_p', 'safiq', 'safiq@gmail.com', '$2y$10$Qv.aT6yrxvSzhMhYul2oh.efGXcZPSMsbJuohX8gbaV70qnx2V0ji', 17, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '258947', '23445', '55677', '5567', '5667', NULL, NULL, '2016-04-12', NULL, 1),
(136, 'Gid-0986444', 'test1', 'test1@gmail.com', '$2y$10$8YXFpOLQiVqJRFBtsA9aEOr5JU7i8PzKzDRQY0WBkf6h660PIrP5W', 18, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '123654', '123654', '0215478', '688877', '55888', NULL, NULL, '2016-04-04', NULL, 1),
(137, 'st-123', 'st', 'st@gmail.com', '$2y$10$ploBYxNg8uPCIBogyKMrVOlHkL/mm05HZISjs9U5kUPX8n1.0uYpm', 1, 1, 1, 2, '566987', NULL, 136, 2, NULL, NULL, '2016-05-01', '45689997', '214555656', '5545585', '45555656', '5555-08', NULL, 'oqWOLOtnibvUeREFzuW8ZC4sb91ibXM8WVIvqntibqODZQ0M3GE7yGFwEJot', '2016-03-31', NULL, 1),
(138, 'st-401', 'koala9', 'keya@gmail.com', '$2y$10$6D1TrML00/5vU2HG26X3x.Rb1WGaLiHhI.jmX/8CqsS2Dw82C.416', 18, 3, 1, 2, '987654', NULL, 136, 3, NULL, NULL, '2016-05-01', '987654', '987654', '987654', '987654', '987654', NULL, NULL, '2016-03-07', NULL, 1),
(139, 'hjiijjjjndd', 'okokdd', 'w@r.com', '$2y$10$RELhp93yvlo875pwwjKiY.zfzX23buBMS7aKDbxRvB453GySID4Su', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-04-26', '22344533', '6521478', '25988885', NULL, NULL, NULL, NULL, '2016-04-12', NULL, 1),
(140, 'p-0987', 'pppppp', 'p@gmail.com', '$2y$10$hb9K7M/ZUHts6PxFbCG9jeqvKYelDxMyfln3YUC9pgwtt9opGeaC6', 18, 4, NULL, NULL, NULL, NULL, NULL, 2, 5, 4, '2016-04-12', '3456789', '2345567', '3435678', '3457788', '33456789', NULL, NULL, '2016-03-29', '2016-05-08 03:43:54', 1),
(141, 'tyyyuu555', 'ayman', 'ayman@gmail.com', '$2y$10$ElP96VnMpOPcaHjHF.gscenmRuEodt74Z4XMJerrzAM.q0jzSWN2W', 17, 1, 1, 2, '4455', NULL, 134, 2, NULL, NULL, '2016-05-08', '345566', '45566', '55666', '6554', '44434', NULL, NULL, '2016-05-01', '2016-05-08 05:12:19', 1),
(142, '2345', 'dert', 'yuyui@gmail.com', '$2y$10$GDjqnouydD4Nkdl7LCM7EuHt7fgBkO/QNrH7CCTJ4BCLFQiUVLMP2', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-05-09', '334556', '34566', '65678', '45675', '4465677', NULL, NULL, '2016-05-01', '2016-05-09 05:52:53', 1),
(143, '3456', 'sdfgh', 'gg@gmail.com', '$2y$10$KaSj9j9u2A.4n8GREm2C7.EK5wkDNh/QsZKaJ6mrL0pxVns9ubZs2', 17, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '234567', '123345', '1232356', '1233456', '1234556', NULL, NULL, '2016-05-01', '2016-05-09 06:20:32', 1),
(144, '23243455', 'dfgtrer', 'pp@gmail.com', '$2y$10$0hzPW1KQ2t/KABUhtReYROJga9e/wN/EsTnUZ8WSfNvS/OvYhiNZ6', 18, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '234444', '2244566', '3445566', '344566', '454566', NULL, NULL, '1989-04-17', NULL, 1),
(145, '2332435', 'dsfdg', 'k@gmail.com', '$2y$10$idekT6R7AtEwzUMmnAloVOYxQLfaQq0N/6EFgqtIjk3T.8ZU7HWOq', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-04-02', '12343546', '4365657', '456754756', '565756', '5657657', NULL, NULL, '1993-03-03', NULL, 1),
(146, '454657', 'dfgfghgj', 'w@gmail.com', '$2y$10$sM60ZsK9dqLhejm5z3cKxeNRC7rKnkJOPMkaz7SGg8IdZv/RFD.V6', 17, 1, 1, 2, '6589', NULL, 134, 2, NULL, NULL, '2016-01-05', '344457', '768798', '6998090', '787980', '7676879', NULL, NULL, '1990-08-14', NULL, 1),
(147, 'gghj', 'yyyuji', 'hasan@yahoo.com', '$2y$10$ONF6poblTgyMU7tWglt0KOB63.2jGwW0LGzOFVa.h3uNyCOdLG116', 17, 1, 1, 4, '2345', NULL, 135, 2, NULL, NULL, '2016-01-05', '345678', '688900', '778900', '7888900', '3456778', NULL, NULL, '1989-06-07', NULL, 1),
(148, 'sdsfeerer', 'sdgfd', 'fahim@gmail.com', '$2y$10$Ji.SsWOKMCJMEX6GgJVdyOoRy8lIVxFRGAn/mWC4FY/g4S8gJXOcK', 17, 1, 2, 6, '3333', NULL, 134, 4, NULL, NULL, '2016-05-25', '23334454', '6566888', '87988908', '567687', '676879', NULL, NULL, '2016-05-02', NULL, 1),
(149, 'T-004', 'Saju', 'saju@gmail.com', '$2y$10$Dq/UTIqi0fffhp0Q6eUCbe1YlZi1LbeB0GXpDdqoGx/oj9iq/v5My', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-06-01', '01245788', '01245879', '58965475', '32547895', '32548965', NULL, NULL, '1973-05-09', NULL, 1),
(156, '563598asf', 'knownuserf', 'gggg@gmail.com', '$2y$10$pPWQNzpvrKo6ecmdd4CNFuvZrmJETWyMRBKjx85arX89PlQNhHKG2', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2016-06-27', '01719526356', '0172536985', '5869584745', NULL, NULL, NULL, NULL, '2016-06-28', NULL, 1),
(157, '11231s', 'zafaf', 'sntsnt@snt.com', '$2y$10$1gMF6rT/LM/sdjJbV1D8n.LLfvGQ2DxlvSNw01xwYt9sabfbgHH06', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2016-07-01', '131334343', '32232323', '23223', '233232', '3232', NULL, NULL, '2016-07-19', NULL, 1),
(158, NULL, '', 'kjkj@gfr.kll', '$2y$10$NvEwvlW17DKSKNnftttxi.pvZGbKNBKlHd5FyGANbPu8ZbM4oUyB2', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(160, NULL, 'school_jeL', 'kkk@fff.jjjj', '$2y$10$lfWq2rjpBV2PEKhR2Tva8.7utLL0HtyrkbWjDdoVsjGye/Gbzeu8u', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(161, NULL, 'school_fub', 'dfdfdfdfd@fdfddf.fgff', '$2y$10$LN5z7OIATx3.ZslzIxSS.uuusN5Cp0EVk2gR3fS404uDukRSzD9DS', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20),
(162, NULL, 'school_zmI', 'kkrr@jya.ll', '$2y$10$VWxEl44UyEArzmOyLEZ4o.obGFjXeNTPk/IHaTN60pNfBqyxQE56i', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21),
(163, NULL, 'school_29F', 'dd4@wee.cjj', '$2y$10$SC9nrNEMqL70xhW5a3cHr.iSAfrjHa4YPd0UeFZxXxwdHbIF1gXZ6', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(164, NULL, 'school_kbb', 'new@new.com', '$2y$10$5Fz.ZyzjjEUQ./lbRp0dH.i0fsLxws.1EuKaVhMNEeGyjyPt8Eujm', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(165, NULL, 'school_W43', 'global@yahoo.com', '$2y$10$/jXXFR7N6alAUiJ0dAaT3.HCKt.8rwoH.bc4KAmMfTeDGz3bALwTS', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25),
(166, NULL, 'school_YhZ', 'jadu@jadu.jadu', '$2y$10$cFogMl.oLPDupF3VT5YUDuBRJ13nI2mdSM5Y.A30dAGyvOj2Z.WVO', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26),
(167, NULL, 'school_kPa', 'glo@glo.glo', '$2y$10$oRuOAJMs/rIWoUGnJfExA.Gazn9NID7xNLO.q0Oe79U9WAdtrEHeu', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27),
(168, NULL, 'school_2cf', 'gold@gold.com', '$2y$10$hpCLEeCUGFvQ.avhN3fgKeaoRDiXa0S8.r4ERxEqE3rTY1/QV03ti', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28),
(169, NULL, 'school_SXa', 'holad@gmail.coma', '$2y$10$jimIEvsWB5zBIDTqcUi37.rYMo9I5XvoYOdHcNIWPUXM4BDSiyiQK', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30),
(170, NULL, 'school_s4z', 'holad@gmail.comas', '$2y$10$m3DiyjWb64r8TjfDHn.BKulwy6CHDL6Z7GXQ3aV0584slo3SuStcy', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31),
(171, NULL, 'school_5Nb', 'holad@gmail.comasd', '$2y$10$1nXSKc6MuE5mqKFvQzdwjO6ojNGPIE7CbwEleLmskXfnKlUsWOwiS', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32),
(172, NULL, 'school_Xra', 'hhh@jjj.kkkk', '$2y$10$qalMY3avuf7gAHQGvmuqUOj57iv/K9IYeiyeQW70GUF0Re/grKU12', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33),
(173, NULL, 'school_d0i', 'hhh@jjj.kkkkf', '$2y$10$IkagBvj/6Cj0xzHWOTl3KOOSv.vE/kEZRfhTValwqTxjYOSpvNLwO', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34),
(174, NULL, 'school_G2j', 'uuu@uuu.com', '$2y$10$HV6GEPjLucu8c.oXnJy9VOCNryzOsmtmSE7iO4drQa10oQcW92u4a', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35),
(175, NULL, 'school_Ij2', 'kkk@kkkk.kkk', '$2y$10$A1ltCDGoZ7I1rv6eVD4V6e703sAbr.9fCdc2egnBPvtf7MPVR/KnW', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36),
(176, NULL, 'school_uWW', 'oo@oo.oo', '$2y$10$FLao2vvNMQFw6nmW1oQFIuTB0j4R1QxHTIlCLhIhnMSskImCbZZaS', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37),
(177, NULL, 'school_sMf', 'kk@kk.kk', '$2y$10$POfS7ECrY7W..vRtdcF9uuW6xwsF1wtz6ealmJlMoRtghDqT00yQe', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38),
(178, NULL, 'school_VnK', 'pppp@pp.pp', '$2y$10$EoXVC983dJ1H5imj33Kse.r7bXQCj92ZzWN.QwTPwXm60vbtx.64.', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39),
(179, NULL, 'school_pQa', 'hhh@kui.njjj', '$2y$10$cu1oAU39Pwoi/MbmHWq1X.Gmp73/E.U37Fc99Ff0VsdICkPE7/g3S', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40),
(180, NULL, 'school_Hfz', 'pop@pop.pp', '$2y$10$CBLYLYFqaglxVCkAuYtzw.EWzL7X.PibfC6rbpnAq5V6V6BhAwHtW', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41),
(181, NULL, 'school_9A1', 'lol@lol', '$2y$10$saqhHJXfo5Oo8wPXTDmxaOqXfTd5zuvPMnBV33KfGlhqGkTIVPLvq', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42),
(182, NULL, 'school_oDB', 'juju@juju.net', '$2y$10$yJ4c6txubD5nyomOcFy/VeWQdfm9iyIrRCgTvYgR1NZdPIIDGTjPq', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43),
(183, NULL, 'school_7w0', 'olol@olol.lolo', '$2y$10$ULJNUeTbX4HQeatT5YHu4efpeRhqyhbIBpsylMnVjj.d81F65XLBa', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44),
(184, NULL, 'school_MJX', 'hyhy@juhu.nji', '$2y$10$b3zqfMiwcopPoUQxSQTD0u5KLpUv4jnkKPtmgaCQqwK89qOpVPPKi', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45),
(185, NULL, 'school_qgS', 'kokiju@juji', '$2y$10$YkdAg6IpOuIV5h56yx2LKuEi7Y2ZjQMR31.YXmy/p1ElCWkcMs2ii', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46),
(186, NULL, 'school_NaB', 'gggg@gggg.kkk', '$2y$10$Aug/.Mf4Be18KK9zrFMLZ.PMtsfpluU5YmzwdS7wtciuBKF7Ahj/y', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47),
(187, 'hh-1245', 'ccuuet', 'hh@ki.ki', '$2y$10$QvA3P/983ropZ/OUMog4zedFjjGckprzDbHeDJK7OjjzkU2IcDr3O', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2016-07-24', '258654987', '258698547', '123456789', '21466987', '25478955', NULL, NULL, '2016-07-03', NULL, 1),
(188, NULL, 'school_6tK', 'site@site.site', '$2y$10$Fu5otLWTTd7Y5XaU4wq25eIpCY5MBjt0Ib/1IvddfOD2Gqi4JHlTq', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48),
(189, NULL, 'school_wch', 'rere@rerere.tyty', '$2y$10$LPFVK/WN/kD9XC7TJpjpaucXQsJLH6BT/HEx2c2x5BAnVdDA5cj/e', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49),
(190, NULL, 'school_XBV', 'kkkk@kk.mmm', '$2y$10$bSf6SHzv5gjffuoIBPHBquKf0zvvXevMxsWKTIGvqHQ5GgL/DmsKu', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50),
(191, NULL, 'school_cia', 'bidda@bidda.bidda', '$2y$10$NmyAfgOeTPMpeOA8HlAEy.JULTO0wXGZXjNY5bJOai/3yDRmlWEi6', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51),
(192, NULL, 'school_6Mb', 'jakk@jakka.jakka', '$2y$10$m4t4D2XnbAtaDZF5nqM/fOoy5PQRAsKleSrSF2hVcA1TmAQkraKja', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52),
(193, NULL, 'school_m63', 'kala@jaika.com', '$2y$10$0tmpcGCJpaxDbdE07GH0COg8G1o.IcZeipK5f4zO0LhtSZl11yQhG', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53),
(194, NULL, 'school_54ztG', 'name@name.name', '$2y$10$UqCyiUcLJ7jRHtO98kCAU.dZU6sEW/Uqp9fPIOeYKvOlfN/k0kkKe', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54),
(195, NULL, 'school_55ULN', 'name@namee.name', '$2y$10$IX/IdQ5PfOQPqZkeePgG.OziK5A2x7IJ9OzAse.0rmExQ3ejFXHU2', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55),
(196, NULL, 'school_56vdS', 'dss@gg.gfg', '$2y$10$f.JluIFTxAwRNYv0gWl.T.cLQmKDo5GcAS15Gin687Gmw8S5RaFuC', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56),
(197, NULL, 'school_57kZV', 'jahid@jjj.jj', '$2y$10$/omsDQPg2FdJpJNfFz0.UeLSC46FSgkisGrNUQaIyHPW3AplQk/1.', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57),
(198, NULL, 'school_584L3', 'jahid@jjj.jjf', '$2y$10$BRo8Dzuf84ahJM4dacTZtuplfdyj0w.Jtuz5abE8Ug1T9x6LF/bc.', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58),
(199, NULL, 'school_59y72', 'jahid@jjj.jjfh', '$2y$10$JlMMNZd6IcmQcw2ouqA9Z.1n1Wqo4mGzgJUEQTy119eVdmgihWDii', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59),
(200, NULL, 'school_60Wnf', 'jahid@jjj.jjfhf', '$2y$10$PXO0qYXnF3zzkmstHAeLNuPlSjh.7wucjxQHzdpt99hKDIeypoE/2', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60),
(201, NULL, 'school_61ZNY', 'jahid@jjj.jjfhff', '$2y$10$i..4eMBR5jfyPT28KAupDuLvV7e1uxR9D1EJZtNfsd.N2yVHvtReu', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61),
(202, NULL, 'school_62WJc', 'jahid@jjj.jjfhffg', '$2y$10$Llmar4OHA7rtyTr7j0OXCOcJQN/8GZ1UivUu9S9aF00.8zf1AYYCC', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62),
(203, NULL, 'school_63BZA', 'jahid@jjj.jjfhffgd', '$2y$10$9E8V5HPO1djd4oSFk3WJ.u8kpoZZ8.ZreZEXc6N1cQVqWpsPNsw36', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63),
(204, NULL, 'school_64C22', 'jahid@jjj.jjfhffgdg', '$2y$10$y1MWs5Y8cX9XxXQm9la.R.1fai3inncYj8mmoFPs4bZpDlYYBMC8i', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64),
(205, NULL, 'school_67Dmp', 'kk@yahoo.com', '$2y$10$OkogCksNXDdKzIAI6Qe.RuSM9E5/WaOfOxvHL8HRm1O2OSFb3pQG.', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67),
(206, NULL, 'school_68Z4X', 'raja@sntbd.com', '$2y$10$IkacafXPcAVJIwJwsPg.0u99A28dI2q7zLhUYUkTjFv.HNDz19o3W', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68),
(207, 'oo-555', 'ckuet', 'hh@gmail.com', '$2y$10$CfQosCU6GZaMdZvhLSTYBedcsWMeVoCjNhK5ydTmE7q/8Ne7DfmuS', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2016-07-04', '58774666', '5656556565', '5585555', '5555555', '56598977', NULL, NULL, '2016-07-04', NULL, 1),
(208, '5656565', 'sttt', 'studk@stu.com', '$2y$10$4ENzc1lBr/SfJr3WpYlW9OQIp0mxnuW3MOQ5.xMPOOHRgB62PcwYe', 1, 1, 1, 2, '25698', NULL, 134, 0, NULL, NULL, '2016-07-19', '256987', '44544545454', '55454546897', '464641313121', '99711466812487', NULL, NULL, '2016-07-11', NULL, 1),
(209, 't-546', 'ttteeacher', 'teacher@teach.teach', '$2y$10$ct4KxNw4hD.O9fvoktddm.RWc92SCBKP9Jv9ozaS5T335UmifA9Ei', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-07-12', '454545454', '454454545', '5454454545', '4545454545454546665', '565657875454', NULL, NULL, '2016-07-01', NULL, 1),
(210, '4646464', 'guhuhh', 'guard@guard.guard', '$2y$10$608i52hBXjG3tR66T2OZVOfz2AD6e5x6TdeYNGtusg4RGWvFbR092', 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '454545', '4654646464', '6465464878979', '664649876464', '646645464654', NULL, NULL, '2016-06-29', NULL, 1);

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
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_salaries`
--

INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES
(1, 156, 25000, 1, 4, 1, 21, '2016-07-02', NULL, 1),
(2, 120, 50000, 1, 4, 1, 21, NULL, '2016-07-02', 1),
(3, 126, 20000, 1, 4, 1, 21, NULL, '2016-07-02', 1),
(4, 127, 20000, 1, 4, 1, 21, NULL, '2016-07-02', 1),
(5, 128, 15000, 1, 5, 2, 21, NULL, '2016-07-02', 1),
(6, 139, 15000, 1, 5, 2, 22, NULL, '2016-07-02', 1),
(7, 145, 10000, 2, 6, 3, 21, NULL, '2016-07-02', 1),
(8, 187, 20000, 1, 5, 1, 21, '2016-07-24', NULL, 1),
(9, 207, 20000, 1, 4, 1, 21, '2016-07-26', NULL, 1),
(10, 209, 568989, 1, 4, 1, 21, '2016-07-26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_translations`
--

CREATE TABLE `user_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_translations`
--

INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES
(130, 120, 'Akshay ', 'Khanna', 'Akshay Sr', 'Mrs Sr Aks', 'jljlkjlkjl', 'ljlkjlkjlj', 'en', 1),
(139, 120, 'Aksay bn', 'Khann bna', 'kjkjk bn', 'jkjk bn', 'jkljkljj', 'jkjkj kbn', 'bn', 1),
(144, 126, 'Hannan', 'Rashid', 'Malek', 'Maleka', 'dhaka', 'rangpur', 'en', 1),
(145, 127, 'Users', 'Tester', 'Father', 'Mother', 'Test', 'Teste', 'en', 1),
(146, 127, 'tester bn', 'tester bn', 'fatbnt', 'motbnt', 'dhaka bn', 'dhaka bn', 'bn', 1),
(147, 128, 'Abul Mal', 'JOytu', 'Abdul Kal', 'Karina', 'dhaka', 'dhaka', 'en', 1),
(149, 132, 'Mahmudd', 'Zamand', 'wweed', 'eerrrd', 'Dhakad', 'Dhakad', 'en', 1),
(150, 133, 'Jamilt', 'Howladart', 'kkjjt', 'kliiit', 'Dhakat', 'Madaripurt', 'en', 1),
(151, 134, 'Masuda', 'Khatun', 'wwee', 'kliii', 'Dhaka', 'Dhaka', 'en', 1),
(152, 135, 'Safiqul', 'Islam', 'lkji_p', 'njjh_p', 'Dhaka', 'Dhaka', 'en', 1),
(153, 135, 'Safiqul', 'Islam', 'kkkoo', 'mnbgt', 'Dhaka', 'Dhaka', 'bn', 1),
(154, 136, 'testf', 'testl', 'jhhu', 'kjjjh', 'kkki', 'kkkjj', 'en', 1),
(155, 137, 'Abdul', 'Khalek', 'lkji', 'kjjjh', 'jjhhghh', 'kkjjyu', 'en', 1),
(156, 138, 'Keyav9', 'Banuv9', 'ddd9', 'wwe9', 'sddd9', 'wewed9', 'en', 1),
(157, 139, 'rezafdd', 'rrrffdd', 'frfgsss', 'gggss', 'dddsss', 'dsefffggss', 'en', 1),
(158, 140, 'sdffghh', 'eerfghh', 'cfgrgth', 'frrrrere', 'vghjfdjytj', 'vxggfjgkh', 'en', 1),
(159, 141, 'ayman', 'khann', 'fffffgh', 'ffdgedgg', 'cdd', 'dddff', 'en', 1),
(160, 142, 'dffgff', 'ddfff', 'ddfgf', 'dddfff', 'dfgfgghh', 'ddfgghhh', 'en', 1),
(161, 143, 'dddfgh', 'ssdfffgg', 'swrthyj', 'dfghhh', 'ddffgghhj', 'sddfgghhjj', 'en', 1),
(162, 144, 'sddfghg', 'sdder', 'ddfghh', 'sddfggh', 'ddghhd', 'dddffgg', 'en', 1),
(163, 145, 'sfdgfdg', 'afsdgf', 'afdgg', 'afdgg', 'afgsdg', 'afdgdfg', 'en', 1),
(164, 146, 'dfjhghjhk', 'dhgfjuhgi', 'djuyiuyyi', 'dytuyiuo', 'ghjhkjl', 'dhjhkkl', 'en', 1),
(165, 147, 'Mahmud', 'Hasan', 'dddffdfg', 'gfghh', 'dffg', 'fggfff', 'en', 1),
(166, 148, 'Fahim', 'Ahmed', 'cffedfef', 'dffdf', 'dfdvfd', 'dfdfdf', 'en', 1),
(167, 149, 'Sajedur', 'Rahman', 'Musfikur Rahman', 'Rahima Khatun', 'dee', 'wwee', 'en', 1),
(174, 156, 'New ', 'User', 'Mr Father', 'Mrs Mother', 'dhaka', 'Dhaka', 'en', 1),
(175, 170, 'holad', '', NULL, NULL, '', NULL, '', 31),
(176, 171, 'holad', '', NULL, NULL, '', NULL, '', 32),
(177, 172, 'hhhh', '', NULL, NULL, '', NULL, '', 33),
(178, 174, 'uuuu', '', NULL, NULL, '', NULL, '', 35),
(179, 175, 'kkkk', '', NULL, NULL, '', NULL, '', 36),
(180, 176, 'iiiiiii', '', NULL, NULL, '', NULL, '', 37),
(181, 177, 'kjuijju', '', NULL, NULL, '', NULL, '', 38),
(182, 182, 'juju', '', NULL, NULL, '', NULL, '', 43),
(183, 183, 'ololo', '', NULL, NULL, '', NULL, '', 44),
(184, 184, 'jujujj', '', NULL, NULL, '', NULL, '', 45),
(185, 185, 'lolopol', '', NULL, NULL, '', NULL, '', 46),
(186, 186, 'jujujjhy', '', NULL, NULL, '', NULL, '', 47),
(187, 187, 'ccuuettt', 'kkkkkkk', 'kkkkkkkk', 'kkkkkk', 'kkkkkkk', 'kkkkkkk', 'en', 1),
(188, 188, 'site-site', '', NULL, NULL, '', NULL, '', 48),
(189, 189, 'fdfdf', '', NULL, NULL, '', NULL, '', 49),
(190, 190, 'klll', '', NULL, NULL, '', NULL, '', 50),
(191, 191, 'vidda', '', NULL, NULL, '', NULL, '', 51),
(192, 192, 'jaka', '', NULL, NULL, '', NULL, '', 52),
(193, 193, 'kala', '', NULL, NULL, '', NULL, '', 53),
(194, 195, 'intstinam', '', NULL, NULL, '', NULL, '', 55),
(195, 196, 'dsdsdsd', '', NULL, NULL, '', NULL, '', 56),
(196, 197, 'jahid', '', NULL, NULL, '', NULL, '', 57),
(197, 198, 'jahid', '', NULL, NULL, '', NULL, '', 58),
(198, 199, 'jahid', '', NULL, NULL, '', NULL, '', 59),
(199, 200, 'jahid', '', NULL, NULL, '', NULL, '', 60),
(200, 201, 'jahid', '', NULL, NULL, '', NULL, '', 61),
(201, 202, 'jahid', '', NULL, NULL, '', NULL, '', 62),
(202, 203, 'jahid', '', NULL, NULL, '', NULL, '', 63),
(203, 204, 'jahid', '', NULL, NULL, '', NULL, '', 64),
(204, 205, 'kk', '', NULL, NULL, '', NULL, '', 67),
(205, 206, 'raja', '', NULL, NULL, '', NULL, '', 68),
(206, 207, 'ckuet ', 'kklass', 'kyurs', 'kiooo', 'khaka', 'permanen', 'en', 1),
(207, 208, 'aaannisss', 'aaniisss', 'annnissss', 'NNIII', 'NGANJ', 'dhaka', 'en', 1),
(208, 209, 'mithun', 'mithun', 'mithun', 'mithun', 'minthu', 'kolkaata', 'en', 1),
(209, 210, 'hkhkhkh', 'khkhkjhkjhkh', 'khkhkhkhkhkh', 'khkhkhkhkh', 'khkjhhkhkhkh', 'hkhkjhkjhk', 'en', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_qualifications`
--
ALTER TABLE `academic_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_qualification_translations`
--
ALTER TABLE `academic_qualification_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_translations`
--
ALTER TABLE `account_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_type_translations`
--
ALTER TABLE `account_type_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_categories`
--
ALTER TABLE `amount_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_category_translations`
--
ALTER TABLE `amount_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_types`
--
ALTER TABLE `amount_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_type_translations`
--
ALTER TABLE `amount_type_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author_translations`
--
ALTER TABLE `author_translations`
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
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category_translations`
--
ALTER TABLE `book_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_translations`
--
ALTER TABLE `book_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_type_translations`
--
ALTER TABLE `business_type_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_languages`
--
ALTER TABLE `cv_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_language_skills`
--
ALTER TABLE `cv_language_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_language_translations`
--
ALTER TABLE `cv_language_translations`
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
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district_translations`
--
ALTER TABLE `district_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division_translations`
--
ALTER TABLE `division_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_levels`
--
ALTER TABLE `education_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_level_translations`
--
ALTER TABLE `education_level_translations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `employment_histories`
--
ALTER TABLE `employment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_history_translations`
--
ALTER TABLE `employment_history_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examination_schedules`
--
ALTER TABLE `examination_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_categories`
--
ALTER TABLE `experience_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_category_translations`
--
ALTER TABLE `experience_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_translations`
--
ALTER TABLE `experience_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `group_accesses`
--
ALTER TABLE `group_accesses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_types`
--
ALTER TABLE `marks_types`
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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_settings`
--
ALTER TABLE `meta_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_translations`
--
ALTER TABLE `notice_translations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `professional_qualifications`
--
ALTER TABLE `professional_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professional_qualification_translations`
--
ALTER TABLE `professional_qualification_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `punches`
--
ALTER TABLE `punches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference_translations`
--
ALTER TABLE `reference_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relation_translations`
--
ALTER TABLE `relation_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_settings`
--
ALTER TABLE `result_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_systems`
--
ALTER TABLE `result_systems`
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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

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
-- Indexes for table `site_amount_receives`
--
ALTER TABLE `site_amount_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_groups`
--
ALTER TABLE `site_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_info_translations`
--
ALTER TABLE `site_info_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_memberships`
--
ALTER TABLE `site_memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_types`
--
ALTER TABLE `site_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_categories`
--
ALTER TABLE `skill_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_category_translations`
--
ALTER TABLE `skill_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_translations`
--
ALTER TABLE `skill_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialization_translations`
--
ALTER TABLE `specialization_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_histories`
--
ALTER TABLE `student_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_translations`
--
ALTER TABLE `training_translations`
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
-- AUTO_INCREMENT for table `academic_qualifications`
--
ALTER TABLE `academic_qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `academic_qualification_translations`
--
ALTER TABLE `academic_qualification_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_translations`
--
ALTER TABLE `account_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_type_translations`
--
ALTER TABLE `account_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amount_categories`
--
ALTER TABLE `amount_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amount_category_translations`
--
ALTER TABLE `amount_category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amount_types`
--
ALTER TABLE `amount_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amount_type_translations`
--
ALTER TABLE `amount_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `author_translations`
--
ALTER TABLE `author_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bonus_attributes`
--
ALTER TABLE `bonus_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_category_translations`
--
ALTER TABLE `book_category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_translations`
--
ALTER TABLE `book_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `business_type_translations`
--
ALTER TABLE `business_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cv_languages`
--
ALTER TABLE `cv_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cv_language_skills`
--
ALTER TABLE `cv_language_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cv_language_translations`
--
ALTER TABLE `cv_language_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `district_translations`
--
ALTER TABLE `district_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `division_translations`
--
ALTER TABLE `division_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education_levels`
--
ALTER TABLE `education_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education_level_translations`
--
ALTER TABLE `education_level_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_histories`
--
ALTER TABLE `employee_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `employment_histories`
--
ALTER TABLE `employment_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employment_history_translations`
--
ALTER TABLE `employment_history_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_translations`
--
ALTER TABLE `event_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `examination_schedules`
--
ALTER TABLE `examination_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `experience_categories`
--
ALTER TABLE `experience_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `experience_category_translations`
--
ALTER TABLE `experience_category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `experience_translations`
--
ALTER TABLE `experience_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gender_translations`
--
ALTER TABLE `gender_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `group_accesses`
--
ALTER TABLE `group_accesses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2963;
--
-- AUTO_INCREMENT for table `holydays`
--
ALTER TABLE `holydays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `holy_day_types`
--
ALTER TABLE `holy_day_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_tables`
--
ALTER TABLE `log_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `marks_types`
--
ALTER TABLE `marks_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;
--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;
--
-- AUTO_INCREMENT for table `meta_settings`
--
ALTER TABLE `meta_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `notice_translations`
--
ALTER TABLE `notice_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `passwords`
--
ALTER TABLE `passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `professional_qualifications`
--
ALTER TABLE `professional_qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `professional_qualification_translations`
--
ALTER TABLE `professional_qualification_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `punches`
--
ALTER TABLE `punches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reference_translations`
--
ALTER TABLE `reference_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `relation_translations`
--
ALTER TABLE `relation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `result_settings`
--
ALTER TABLE `result_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `result_systems`
--
ALTER TABLE `result_systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `salary_cut_rules`
--
ALTER TABLE `salary_cut_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `salary_rules`
--
ALTER TABLE `salary_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `salary_types`
--
ALTER TABLE `salary_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shifts-copy`
--
ALTER TABLE `shifts-copy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `shift_translations`
--
ALTER TABLE `shift_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `site_amount_receives`
--
ALTER TABLE `site_amount_receives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `site_groups`
--
ALTER TABLE `site_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `site_info_translations`
--
ALTER TABLE `site_info_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `site_memberships`
--
ALTER TABLE `site_memberships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `site_types`
--
ALTER TABLE `site_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `skill_categories`
--
ALTER TABLE `skill_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `skill_category_translations`
--
ALTER TABLE `skill_category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `skill_translations`
--
ALTER TABLE `skill_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `specialization_translations`
--
ALTER TABLE `specialization_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student_histories`
--
ALTER TABLE `student_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `training_translations`
--
ALTER TABLE `training_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `user_salaries`
--
ALTER TABLE `user_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_translations`
--
ALTER TABLE `user_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- Constraints for dumped tables
--

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
