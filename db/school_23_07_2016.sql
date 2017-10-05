-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 23, 2016 at 06:57 AM
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
(1, 156, 'rrr4565478d', 'rrr56598745d', 'rrkjkkjkjd', 'rrrjlkjjljljljljld', 'rrr562jjjlklkd', NULL, NULL, '2016-07-02', NULL, 1);

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
(14, 145, 2, 2, 1, '2016-04-02', NULL, NULL, NULL, '2016-07-02', 1);

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
(493, 516, 4, 1, 0, 0, 0, 1);

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
(4, 147, '2345', 1, 1, 2, 1, '{"Written":"25","MCQ":"52","Practical":"10"}', 87.00, 'Active', NULL, 1),
(5, 150, '589', 1, 1, 2, 1, '{"Written":"35","MCQ":"34","Practical":"25"}', 94.00, 'Active', NULL, 1),
(6, 137, '566987', 1, 1, 2, 3, '{"Written":"52","MCQ":"45 "}', 97.00, 'Active', NULL, 1),
(7, 138, '987654', 1, 1, 2, 3, '{"Written":"30","MCQ":"45"}', 75.00, 'Active', NULL, 1),
(8, 148, '3333', 1, 2, 6, 4, '{"Written":"35 ","MCQ":"35 "}', 70.00, 'Active', NULL, 1),
(9, 137, '566987', 1, 1, 2, 5, '{"Written":"40","MCQ":"30","Practical":"25"}', 95.00, 'Active', NULL, 1),
(10, 137, '566987', 1, 1, 2, 6, '{"Written":"45","MCQ":"30"}', 75.00, 'Active', NULL, 1),
(12, 137, '566987', 1, 1, 2, 7, '{"Written":"20 ","MCQ":"20 ","Practical":"20 "}', 60.00, 'Active', NULL, 1);

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
(516, 'shift-user', 0, 0, 1, 0, 1, NULL, '', 0);

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
(520, 516, 'User Shift', 'en', 1);

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
('2016_07_18_153536_add_mark_types_json_to_subjects', 157, 1);

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
(64, 156, 156, 'Erp\\Models\\User\\User', '146743854711y2016-01-09-195845.jpg', NULL, '', NULL);

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
(60, '{"grade_class":"F","gpa":"0.0","sub_min":"0","sub_max":"32","total_min":"0","total_max":".99"}', 1);

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
(8, 'Guardian', 'guardians of students', NULL, 7, 1);

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
(156, 2, 1);

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
(12, 1, 1, 'sntsnt', 'dgbfd@fdgfd.fgfg', 123456789, NULL, 1, NULL);

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
(3, 12, 'xgxcv', 'xcvxcvx', 'en');

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
(20, 137, 2, 1, 2, '566987', '136', NULL, '2016-06-30', 1);

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
  `marks_type_info` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `status`, `subject_marks_type`, `site_id`, `marks_type_info`) VALUES
(1, 1, 132, 'Bangla', 100.00, '', 'BN-001', 2, 'Active', '1,2', 1, NULL),
(3, 1, 133, 'English', 100.00, 'Michael Swan', 'ENG-001', 1, 'Active', '1,2', 1, NULL),
(4, 2, 133, 'English', 100.00, 'Hori Das Paul', 'Eng-002', 2, 'Active', '1,2', 1, '{"1":{"markTypeMax":"60","markTypePass":"25"},"2":{"markTypeMax":"40","markTypePass":"18"}}'),
(5, 1, 132, 'Math', NULL, '', 'Math-001', 3, 'Active', '1,2,3', 1, NULL),
(6, 1, 133, 'General Science', NULL, '', 'S-259', 4, 'Active', '1,2', 1, NULL),
(7, 1, 132, 'Social Science', NULL, '', 'SS-257', 3, 'Active', '1,2,3', 1, NULL),
(12, 1, 132, 'Testing', NULL, 'Testing', '125', 2, 'Active', '1,2', 1, NULL),
(13, 1, 132, 'Jhek', 100.00, 'Kkk', '4545', 4, 'Active', '', 1, '[]'),
(14, 1, 132, 'Dfd', 100.00, 'Dfd', 'fddfd', 55, 'Active', '1,3', 1, '{"1":{"markTypeMax":"50","markTypePass":"15"},"3":{"markTypeMax":"50","markTypePass":"14"}}'),
(15, 1, 132, 'Hello', 100.00, '', '25', 1, 'Active', '1,2', 1, '{"1":{"markTypeMax":"50","markTypePass":"15"},"2":{"markTypeMax":"50","markTypePass":"15"}}'),
(16, 1, 133, 'Phsychology', 100.00, 'Dhanu', '145', 25, 'Active', '1,2', 1, '{"1":{"markTypeMax":"75","markTypePass":"25"},"2":{"markTypeMax":"25","markTypePass":"10"}}');

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
(120, '0667', 'khanna', 'kk@gmail.com', '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 1, 1, 1, 4, '203', NULL, NULL, 1, 1, 1, '2016-04-20', '78787877', '12352566', '32547486', NULL, NULL, NULL, 'yajpLRFmeE5CazC9Tq9Vn0uJmtHdFKJWvevhCfw0lFpNdRURH1LetBXRNPPL', '2016-04-20', NULL, 1),
(126, '6589', 'hannan', 'hannan@gmail.com', '$2y$10$BdZgLHneikszX6VpqKTvaeEWq/E31dfPI2FQnpnw/L.fJxHo3Z66y', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-04-20', '0171526859', '99999999999999', '99999999999999', '999999999999999', '99999999999999', NULL, 'OwVgbTUGp0Vrwxhackh52dX9pfrxe8JJc3cMlmuVc7MS9xIqRzvSFQv0KMGD', '2016-03-27', NULL, 1),
(127, '6598', 'test', 'test@test.com', '$2y$10$ccEjf4UWE3eND6nEuAn7Ne2dcpmIUihW6WMREqS9kaCQNIOQAxmRi', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-04-09', '0171256985', '12548974', '5656659889777', NULL, NULL, NULL, 'cFJeZmPHgh1B5nVvYjNPeBUzuBTJ5OUciPeey7U2Rv4wULcmoTq7dDeXuUuV', '2016-04-06', NULL, 1),
(128, '65987', 'joyraj', 'joy@gmail.com', '$2y$10$AZ3ywpPbBtNQkBllLauD1OQHgfqdBjD7jWpNWVZMMp9UzammR2LD.', 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, '2016-12-31', '0171525632', '856958745', '236598472', '258963', '2586623', NULL, NULL, '2016-04-06', NULL, 1),
(132, 'kjuyt500', 'mahmud_user', 'mahmud@gmail.com', '$2y$10$HSS23zos.RvSSI3JtxuQT.5ACBhL3HOOWhiUmnR4KLhn812M1ysGq', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-04-25', '123456', '125647', '36598', '65444', '55558', NULL, 'TnkOyjD8WPVQqzPZsrn9wi1MONSelYRMrDhl9ESCmsZOPbgs745XQWix1ggV', '2016-03-28', NULL, 1),
(133, 'kjhuytr45t', 'jamil888t', 'jamil@gmail.com', '$2y$10$y8CGdCjwcM.STxX8GThzdezGrI3OE9vv1gx/d6gBt4vRND7MMcjAS', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '1992-07-08', '658954', '3455', '22334', '333', '333', NULL, NULL, '1973-08-15', NULL, 1),
(134, 'GID-0987', 'masuda', 'masuda@gmail.com', '$2y$10$G5bz5EnNE0xL2XZwCNfd6OzsTw45pI4RBAZ1cCWs2GepTUpjIp9m6', 17, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '54689', '54566', '11255', '22235', '45666', NULL, NULL, '2016-04-12', NULL, 1),
(135, 'GID-0543_p', 'safiq', 'safiq@gmail.com', '$2y$10$Qv.aT6yrxvSzhMhYul2oh.efGXcZPSMsbJuohX8gbaV70qnx2V0ji', 17, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '258947', '23445', '55677', '5567', '5667', NULL, NULL, '2016-04-12', NULL, 1),
(136, 'Gid-0986444', 'test1', 'test1@gmail.com', '$2y$10$8YXFpOLQiVqJRFBtsA9aEOr5JU7i8PzKzDRQY0WBkf6h660PIrP5W', 18, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '123654', '123654', '0215478', '688877', '55888', NULL, NULL, '2016-04-04', NULL, 1),
(137, 'st-123', 'st', 'st@gmail.com', '$2y$10$ploBYxNg8uPCIBogyKMrVOlHkL/mm05HZISjs9U5kUPX8n1.0uYpm', 1, 1, 1, 2, '566987', NULL, 136, 2, NULL, NULL, '2016-05-01', '45689997', '214555656', '5545585', '45555656', '5555-08', NULL, 'aj7RNRePCuvEbguWXZgHMpU0nvOVLcUXxo75k86Mv9qKHNYUWaA950UswWKv', '2016-03-31', NULL, 1),
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
(156, '563598asf', 'knownuserf', 'gggg@gmail.com', '$2y$10$pPWQNzpvrKo6ecmdd4CNFuvZrmJETWyMRBKjx85arX89PlQNhHKG2', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2016-06-27', '01719526356', '0172536985', '5869584745', NULL, NULL, NULL, NULL, '2016-06-28', NULL, 1);

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
(7, 145, 10000, 2, 6, 3, 21, NULL, '2016-07-02', 1);

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
(174, 156, 'New ', 'User', 'Mr Father', 'Mrs Mother', 'dhaka', 'Dhaka', 'en', 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;
--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `result_systems`
--
ALTER TABLE `result_systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `site_info_translations`
--
ALTER TABLE `site_info_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `user_salaries`
--
ALTER TABLE `user_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_translations`
--
ALTER TABLE `user_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
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
