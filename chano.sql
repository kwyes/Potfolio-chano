-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 25, 2021 at 10:46 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chano`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_04_22_174016_create_portfolio_table', 1),
(10, '2021_04_22_185411_create_portfolioimages_table', 1),
(11, '2021_05_11_185908_create_contact_us_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `description`, `link`, `github`, `mainimg`, `created_at`, `updated_at`) VALUES
(4, 'MY CHILD PORTAL MOBILE APP', '<p><span style=\"  font-weight: bold;\">Languages : </span>React Native, MSSQL, PHP, PHP Slim Frameworks, JAVASCRIPT</p>\r\n\r\n<p><span style=\"font-weight: bold;\">Features : </span>Grade data for child, Child Life, Past term data, Pulling video, photo data from Canto(Digital Asset Management Solutions) thourgh Canto api, Push Notification System. etc</p>\r\n\r\n<p><span style=\"font-weight:bold;\">Timeline : </span>2019-03 ~ 2019-06</p>\r\n\r\n<p>Restful API, Api server I built with PHP Slim Frameworks. For the database, I used Mssql.</p>', 'https://apps.apple.com/ca/app/mybodwell-mobile/id1486680935', 'https://github.com/github-admin-bodwell/MyBodwellApp', '/Portfolio/app1.png', '2021-05-07 01:49:25', '2021-05-26 00:01:03'),
(5, 'MY CHILD PORTAL', '<p><span style=\" font-weight: bold;\">Languages : </span>HTML5, CSS, MSSQL, PHP, JAVASCRIPT, JQUERY, AJAX, Canto Api\r\n</p>\r\n <p>\r\n<span style=\"font-weight: bold;\">Features : </span>Grade data for child, Voluteer hours, Past term data, Pulling video, photo data from Canto(Digital Asset Management Solutions) thourgh Canto api\r\n</p>\r\n <p>\r\n<span style=\"font-weight:bold;\">\r\nTimeline : </span>2020-03 ~ 2020-04\r\n</p> \r\n<p>\r\nThis website used to be wordpress website and there was performance issue. I replaced with pure php website in order to solve performance issue. Basically this website provides all student data including grade, volunteer detail, activities, school photos and videos etc.\r\n</p>', 'https://mychild.bodwell.edu/', 'https://github.com/github-admin-bodwell/MyChild', '/Portfolio/ch.png', '2021-05-07 01:49:48', '2021-05-26 00:40:53'),
(6, 'MESSAGE PORTAL', '<p>\r\n<span style=\" font-weight: bold;\">Languages : </span>\r\nHTML5, CSS, MSSQL, PHP, JAVASCRIPT, JQUERY, AJAX, TextEditor Library, Curl, PHP Mailer\r\n\r\n</p> \r\n<p>\r\n <span style=\"font-weight: bold;\">Features : </span> \r\nCreating message for MyChild Mobile app. Notification sent to whoever got the vaild token. Mass Email sending\r\n</p>\r\n<p> <span style=\"font-weight:bold;\"> Timeline : </span>2020-01 ~ 2020-02</p> \r\n<p> \r\nThis Student Portal Admin website is not just only one department. Faculty, Counsellors, Boarding Staff, Administration. Based on users department, Some of the features and web pages are not allowed to see and it creates different dashboard page.\r\n</p>', 'https://msgctr.bodwell.edu', 'https://github.com/github-admin-bodwell/messagePortal', '/Portfolio/msg.png', '2021-05-07 01:50:27', '2021-05-26 04:30:59'),
(7, 'STUDENT PORTAL ADMIN', '<p>\r\n<span style=\" font-weight: bold;\">Languages : </span>\r\nHTML5, CSS, MSSQL, PHP, JAVASCRIPT, JQUERY, AJAX, PHPMailer, PHPExcel\r\n\r\n</p> \r\n<p>\r\n <span style=\"font-weight: bold;\">Features : </span> \r\nFaculty, Counsellor, Boarding, Admin.   Approving Self Submitted hours, School activities, Checking my students, current students, Checking Leave Request and Leave Ban, \r\nChecking Student grade\r\n</p>\r\n<p> <span style=\"font-weight:bold;\"> Timeline : </span>2019-04 ~ 2019-08</p> \r\n<p> \r\nThis Student Portal Admin website is not just only one department. Faculty, Counsellors, Boarding Staff, Administration. Based on users department, Some of the features and web pages are not allowed to see and it creates different dashboard page.\r\n</p>', 'https://spadmin.bodwell.edu/', 'https://github.com/github-admin-bodwell/SPAdmin', '/Portfolio/spa1.png', '2021-05-26 01:41:13', '2021-05-26 01:52:15'),
(8, 'STUDENT PORTAL', '<p> <span style=\" font-weight: bold;\">Languages : </span> HTML5, CSS, MSSQL, PHP, JAVASCRIPT, JQUERY, AJAX, PHPMailer</p> <p> <span style=\"font-weight: bold;\">Features : </span> Faculty, Counsellor, Boarding, Admin. Approving Self Submitted hours, School activities, Checking my students, current students, Checking Leave Request and Leave Ban, Checking Student grade </p> <p> <span style=\"font-weight:bold;\"> Timeline : </span>2019-04 ~ 2019-08</p> <p> This Student Portal Admin website is not just only one department. Faculty, Counsellors, Boarding Staff, Administration. Based on users department, Some of the features and web pages are not allowed to see and it creates different dashboard page. </p>', 'https://student.bodwell.edu', 'https://github.com/github-admin-bodwell/student-portal', '/Portfolio/sp.png', '2021-05-26 02:00:22', '2021-05-26 04:29:45'),
(9, 'GIFTICON', '<p><span style=\" font-weight: bold;\">Languages : </span>HTML5, CSS, BOOTSTRAP, PHP, MSSQL, JAVASCRIPT, JQUERY, AJAX, ELAVON PAYMENT API\r\n</p>\r\n <p>\r\n<span style=\"font-weight: bold;\">Features : </span>Access POS DB Server, Getting Current stock , Generating Gift Coupon Image automatically based on the product that customer is purchasing. Sending email to customer with Gift Coupon </p>\r\n <p>\r\n<span style=\"font-weight:bold;\">\r\nTimeline : </span>2017-08 ~ 2017-11\r\n</p> \r\n<p>\r\nThings I was in charge of : Research, Database Design, Server Configuration, Front-End Developing, Back-End Developing\r\n</p>\r\n<p>\r\nOther Roles : Time scheduling, Presentation to Boss, Contact Card Company for Payment API\r\n</p>', 'https://hannamsm.com/gifticon/', NULL, '/Portfolio/gifticon1.png', '2021-05-26 04:59:44', '2021-05-26 04:59:44'),
(12, 'CAFETERIA MEAL SYSTEM', '<p>\r\n<span style=\" font-weight: bold;\">Languages : </span>\r\nHTML5, CSS, MSSQL, PHP, JAVASCRIPT, JQUERY, AJAX, Google Voice Api\r\n</p> \r\n<p>\r\n <span style=\"font-weight: bold;\">Features : </span> \r\nLetting students and staff scan the barcode and get the meal.\r\n</p>\r\n<p> <span style=\"font-weight:bold;\"> Timeline : </span>1 Months</p> \r\n<p> \r\nApplication itself is not too complex but since we had more than 600 students and around 80 staffs, the website should not have any performance issue. I had to take most of time to work on making better query. Furthermore, some of the student who has taken meal more than 5 times should get warning voice message with Beeping sound. So, I used google api to make it work\r\n</p>', 'https://dev.bodwell.edu/cafeteria', 'https://github.com/github-admin-bodwell/cafeteria', '/Portfolio/cafeteria.png', '2021-05-26 05:17:48', '2021-05-26 05:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `portfolioimages`
--

DROP TABLE IF EXISTS `portfolioimages`;
CREATE TABLE IF NOT EXISTS `portfolioimages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
  `FileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OriginalFileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolioimages_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolioimages`
--

INSERT INTO `portfolioimages` (`id`, `portfolio_id`, `FileName`, `OriginalFileName`, `URL`, `created_at`, `updated_at`) VALUES
(25, 4, 'app1.png', 'app1.png', '/Portfolio/app1.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(26, 4, 'app20.png', 'app20.png', '/Portfolio/app20.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(27, 4, 'app21.png', 'app21.png', '/Portfolio/app21.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(28, 4, 'app22.png', 'app22.png', '/Portfolio/app22.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(29, 4, 'app23.png', 'app23.png', '/Portfolio/app23.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(30, 4, 'app24.png', 'app24.png', '/Portfolio/app24.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(31, 4, 'app25.png', 'app25.png', '/Portfolio/app25.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(32, 4, 'app26.png', 'app26.png', '/Portfolio/app26.png', '2021-05-07 01:49:25', '2021-05-07 01:49:25'),
(33, 5, 'ch.png', 'ch.png', '/Portfolio/ch.png', '2021-05-07 01:49:48', '2021-05-07 01:49:48'),
(34, 5, 'ch1.png', 'ch1.png', '/Portfolio/ch1.png', '2021-05-07 01:49:48', '2021-05-07 01:49:48'),
(35, 6, 'msg.png', 'msg.png', '/Portfolio/msg.png', '2021-05-07 01:50:27', '2021-05-07 01:50:27'),
(36, 6, 'msg1.png', 'msg1.png', '/Portfolio/msg1.png', '2021-05-07 01:50:27', '2021-05-07 01:50:27'),
(37, 7, 'spa1.png', 'spa1.png', '/Portfolio/spa1.png', '2021-05-26 01:41:13', '2021-05-26 01:41:13'),
(38, 7, 'spa2.png', 'spa2.png', '/Portfolio/spa2.png', '2021-05-26 01:41:13', '2021-05-26 01:41:13'),
(39, 7, 'spa3.png', 'spa3.png', '/Portfolio/spa3.png', '2021-05-26 01:41:13', '2021-05-26 01:41:13'),
(40, 7, 'spa4.png', 'spa4.png', '/Portfolio/spa4.png', '2021-05-26 01:41:13', '2021-05-26 01:41:13'),
(41, 7, 'spa5.png', 'spa5.png', '/Portfolio/spa5.png', '2021-05-26 01:41:13', '2021-05-26 01:41:13'),
(42, 7, 'spa6.png', 'spa6.png', '/Portfolio/spa6.png', '2021-05-26 01:41:13', '2021-05-26 01:41:13'),
(43, 8, 'sp.png', 'sp.png', '/Portfolio/sp.png', '2021-05-26 02:00:22', '2021-05-26 02:00:22'),
(44, 8, 'sp1.png', 'sp1.png', '/Portfolio/sp1.png', '2021-05-26 02:00:22', '2021-05-26 02:00:22'),
(45, 8, 'sp2.png', 'sp2.png', '/Portfolio/sp2.png', '2021-05-26 02:00:22', '2021-05-26 02:00:22'),
(46, 8, 'sp3.png', 'sp3.png', '/Portfolio/sp3.png', '2021-05-26 02:00:22', '2021-05-26 02:00:22'),
(47, 8, 'sp4.png', 'sp4.png', '/Portfolio/sp4.png', '2021-05-26 02:00:22', '2021-05-26 02:00:22'),
(48, 8, 'sp5.png', 'sp5.png', '/Portfolio/sp5.png', '2021-05-26 02:00:22', '2021-05-26 02:00:22'),
(49, 9, 'gifticon1.png', 'gifticon1.png', '/Portfolio/gifticon1.png', '2021-05-26 04:59:44', '2021-05-26 04:59:44'),
(50, 9, 'gifticon2.png', 'gifticon2.png', '/Portfolio/gifticon2.png', '2021-05-26 04:59:44', '2021-05-26 04:59:44'),
(51, 9, 'gifticon3.png', 'gifticon3.png', '/Portfolio/gifticon3.png', '2021-05-26 04:59:44', '2021-05-26 04:59:44'),
(52, 9, 'gifticon4.png', 'gifticon4.png', '/Portfolio/gifticon4.png', '2021-05-26 04:59:44', '2021-05-26 04:59:44'),
(53, 9, 'gifticon5.jpg', 'gifticon5.jpg', '/Portfolio/gifticon5.jpg', '2021-05-26 04:59:44', '2021-05-26 04:59:44'),
(54, 9, 'gifticon6.jpg', 'gifticon6.jpg', '/Portfolio/gifticon6.jpg', '2021-05-26 04:59:44', '2021-05-26 04:59:44'),
(56, 12, 'cafeteria.png', 'cafeteria.png', '/Portfolio/cafeteria.png', '2021-05-26 05:17:48', '2021-05-26 05:17:48'),
(57, 12, 'cafeteria1.png', 'cafeteria1.png', '/Portfolio/cafeteria1.png', '2021-05-26 05:17:48', '2021-05-26 05:17:48'),
(58, 12, 'cafeteria2.png', 'cafeteria2.png', '/Portfolio/cafeteria2.png', '2021-05-26 05:17:48', '2021-05-26 05:17:48'),
(59, 12, 'cafeteria3.png', 'cafeteria3.png', '/Portfolio/cafeteria3.png', '2021-05-26 05:17:48', '2021-05-26 05:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Chanho Lee', 'kwyes2@hotmail.com', NULL, '$2y$10$xe5r61LKSqBjgXUYmp3kNeI6ItQdFLvzPpGDUDlQoat98nIB9NMHy', NULL, '2021-05-07 01:32:37', '2021-05-07 01:32:37');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfolioimages`
--
ALTER TABLE `portfolioimages`
  ADD CONSTRAINT `portfolioimages_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolio` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
