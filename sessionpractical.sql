-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 22, 2020 at 06:33 PM
-- Server version: 10.4.10-MariaDB
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
-- Database: `sessionpractical`
--

-- --------------------------------------------------------

--
-- Table structure for table `ans_table`
--

DROP TABLE IF EXISTS `ans_table`;
CREATE TABLE IF NOT EXISTS `ans_table` (
  `aid` int(255) NOT NULL AUTO_INCREMENT,
  `answer` varchar(1000) DEFAULT NULL,
  `ans_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ans_table`
--

INSERT INTO `ans_table` (`aid`, `answer`, `ans_id`) VALUES
(1, 'CSS is used to control the style of a web document in a simple and easy way.', 1),
(2, ' CSS is the acronym for \'Cascading Style Sheet.\'', 1),
(3, ' You can write CSS once and then reuse same sheet in multiple HTML pages.', 1),
(4, ' All of the above.', 1),
(5, 'in', 2),
(6, 'mm', 2),
(7, 'pc', 2),
(8, 'pt', 2),
(9, 'in', 3),
(10, 'mm', 3),
(11, 'pc', 3),
(12, 'pt', 3),
(13, 'background-color', 4),
(14, 'background-image', 4),
(15, 'background-repeat', 4),
(16, 'background-position', 4),
(17, 'text-indent', 5),
(18, 'text-align', 5),
(19, 'text-decoration', 5),
(20, 'text-transform', 5),
(21, 'link', 6),
(22, 'visited', 6),
(23, 'hover', 6),
(24, 'active', 6),
(25, 'link', 7),
(26, 'visited', 7),
(27, 'hover', 7),
(28, 'active', 7),
(29, ':border-bottom-width', 8),
(30, ':border-top-width', 8),
(31, ':border-left-width', 8),
(32, ':border-right-width', 8),
(33, 'list-style-type', 9),
(34, 'list-style-position', 9),
(35, 'list-style-image', 9),
(36, ' list-style', 9),
(37, 'padding-bottom', 10),
(38, 'padding-top', 10),
(39, 'padding-left', 10),
(40, 'padding-right', 10);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `Time`) VALUES
(1, 'Deep', 'deep@gmail.com', '$advbav', '', '2020-04-26 05:23:08'),
(2, 'Deep', 'deep@gmail.com', 'advbav', '', '2020-04-26 05:23:08'),
(3, 'Deep', 'deep@gmail.com', 'advbav', '', '2020-04-26 05:23:08'),
(4, 'Deep', 'gja@gmail,co', 'sfvjrevqjl', 'adhjv akh wekj hwekvh vj kj ewchjwe HJECebwchWEBLhwebcWLHEFBWLIBLSDKVsdVAEKFH .EFKevghs', '2020-04-26 05:23:08'),
(5, 'rohn', 'rohan@gmail.com', 'topic`', 'dlkjvbsDvlkv.jdvlksdghslkughwuthgufkbvkjdbrkugb', '2020-04-26 05:23:08'),
(7, 'Deep Gajiwala', 'gajiwala.deep6776@gmail.com', 'topic', 'lzjksdvblzdvbkjsdff f', '2020-04-26 05:23:08'),
(8, 'rohan', 'rohan6776@gmail.com', 'topic ', 'lasdkjvbavjbwfjawndjcnwaefjksfuahcevf                ', '2020-04-26 05:33:25'),
(9, '', '', '', '', '2020-04-27 18:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `fac_login`
--

DROP TABLE IF EXISTS `fac_login`;
CREATE TABLE IF NOT EXISTS `fac_login` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fl_email` varchar(30) NOT NULL,
  `fl_password` varchar(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_login`
--

INSERT INTO `fac_login` (`id`, `fl_email`, `fl_password`, `Time`) VALUES
(8, 'patel@gmail.com', '1234567890', '2020-04-29 04:13:44'),
(7, 'devesh@gmail.com', '9874563210', '2020-04-26 11:28:09'),
(6, 'harsh@gmail.com', '1236547890', '2020-04-26 11:11:43'),
(9, 'patel@gmail.com', '1234567890', '2020-04-29 04:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `fac_signup`
--

DROP TABLE IF EXISTS `fac_signup`;
CREATE TABLE IF NOT EXISTS `fac_signup` (
  `f_id` int(255) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) NOT NULL,
  `f_username` varchar(30) NOT NULL,
  `f_email` varchar(50) NOT NULL,
  `f_password` varchar(25) NOT NULL,
  `f_phone` bigint(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_signup`
--

INSERT INTO `fac_signup` (`f_id`, `f_name`, `f_username`, `f_email`, `f_password`, `f_phone`, `Time`) VALUES
(1, 'Deep', 'deep_gajiwala', 'gajiwala.deep@gmail.com', '', 0, '2020-04-26 10:10:51'),
(2, 'Deep', 'deep_gajiwala', 'gajiwala.deep@gmail.com', '1234567890', 0, '2020-04-26 10:10:51'),
(6, '', '', '', '', 0, '2020-04-26 11:18:37'),
(4, 'harsh', 'harhs_20', 'harsh@gmail.com', '1236547890', 0, '2020-04-26 10:13:55'),
(7, 'devesh', 'devesh_3185', 'devesh@gmail.com', '9874563210', 0, '2020-04-26 11:27:29'),
(8, 'patel', 'patel_06', 'patel@gmail.com', '1234567890', 0, '2020-04-29 04:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'gajiwala.deepo@gmail.com', '123321'),
(2, 'vasu@gmail.com', '123456'),
(3, 'vasu@gmail.com', '123456'),
(4, 'vasu@gmail.com', '123456'),
(5, 'vasu@gmail.com', '123456'),
(6, 'vasu@gmail.com', '123456'),
(7, 'vasu@gmail.com', '123456'),
(8, 'vasu@gmail.com', '123456'),
(9, 'vasu@gmail.com', '123456'),
(10, 'vasu@gmail.com', '123456'),
(11, 'vasu@gmail.com', '123456'),
(12, 'vasu@gmail.com', '123456'),
(13, 'vasu@gmail.com', '123456'),
(14, 'vasu@gmail.com', '123456'),
(15, 'vasu@gmail.com', '123456'),
(16, 'vasu@gmail.com', '123456'),
(17, 'vasu@gmail.com', '123456'),
(20, 'vasu@gmail.com', '123456'),
(19, 'rohan@gmail.com', 'rohan6776'),
(21, 'vasu@gmail.com', '123456'),
(22, 'vasu@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `que_table`
--

DROP TABLE IF EXISTS `que_table`;
CREATE TABLE IF NOT EXISTS `que_table` (
  `qid` int(255) NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) DEFAULT NULL,
  `ans_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `que_table`
--

INSERT INTO `que_table` (`qid`, `question`, `ans_id`) VALUES
(1, ' Which of the following is correct about CSS? ', 4),
(2, ' Which of the following defines a measurement in inches?', 5),
(3, 'Which of the following defines a measurement in points?', 12),
(4, ' Which of the following property is used to control the position of an image in the background?', 16),
(5, 'Which of the following property is used to align the text of a document?', 18),
(6, 'Which of the following property of a anchor element signifies an element that currently has the user\'s mouse pointer hovering over it?', 23),
(7, ' Which of the following property of a anchor element signifies an element on which the user is currently clicking?', 28),
(8, 'Which of the following property changes the width of top border?', 30),
(9, 'Which of the following property specifies an image for the marker rather than a bullet point or number?', 35),
(10, 'Which of the following property specifies the right padding of an element?', 40);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_data`
--

DROP TABLE IF EXISTS `quiz_data`;
CREATE TABLE IF NOT EXISTS `quiz_data` (
  `quiz_id` int(255) NOT NULL AUTO_INCREMENT,
  `quiz_sub` varchar(30) NOT NULL,
  `quiz_question` int(255) NOT NULL,
  `quiz_right` bigint(255) NOT NULL,
  `quiz_wrong` bigint(255) NOT NULL,
  `quiz_time` bigint(255) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_data`
--

INSERT INTO `quiz_data` (`quiz_id`, `quiz_sub`, `quiz_question`, `quiz_right`, `quiz_wrong`, `quiz_time`) VALUES
(2, 'php', 10, 0, 0, 0),
(3, 'WT', 10, 0, 0, 0),
(4, 'DBMS', 10, 0, 0, 0),
(5, 'co', 10, 0, 0, 0),
(6, 'd', 5, 1, 0, 10),
(7, 'Web Technology', 5, 1, 0, 10),
(8, 'dbms', 5, 5, 0, 10),
(9, 'pikachu', 5, 5, 0, 10),
(10, 'pikachu', 5, 5, 0, 10),
(11, 'pikachu', 5, 5, 0, 10),
(12, 'pikachu', 5, 5, 0, 10),
(13, 'pikachu', 5, 5, 0, 10),
(14, 'pikachu', 5, 5, 0, 10),
(15, 'pikachu', 5, 5, 0, 10),
(16, 'pikachu', 5, 5, 0, 10),
(17, 'pikachu', 5, 5, 0, 10),
(18, 'pikachu', 5, 5, 0, 10),
(19, 'pikachu', 5, 5, 0, 10),
(20, 'pikachu', 5, 5, 0, 10),
(21, 'pikachu', 5, 5, 0, 10),
(22, 'pikachu', 5, 5, 0, 10),
(23, 'pikachu', 5, 5, 0, 10),
(24, 'pikachu', 5, 5, 0, 10),
(25, 'pikachu', 5, 5, 0, 10),
(26, 'pikachu', 5, 5, 0, 10),
(27, 'pikachu', 5, 5, 0, 10),
(28, 'pikachu', 5, 5, 0, 10),
(29, 'pikachu', 5, 5, 0, 10),
(30, 'pikachu', 5, 5, 0, 10),
(31, 'pikachu', 5, 5, 0, 10),
(32, 'pikachu', 5, 5, 0, 10),
(33, 'pikachu', 5, 5, 0, 10),
(34, 'pikachu', 5, 5, 0, 10),
(35, 'pikachu', 5, 5, 0, 10),
(36, 'pikachu', 5, 5, 0, 10),
(37, 'pikachu', 5, 5, 0, 10),
(38, 'pikachu', 5, 5, 0, 10),
(39, 'pikachu', 5, 5, 0, 10),
(40, 'pikachu', 5, 5, 0, 10),
(41, 'pikachu', 5, 5, 0, 10),
(42, 'pikachu', 5, 5, 0, 10),
(43, 'pikachu', 5, 5, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_history`
--

DROP TABLE IF EXISTS `quiz_history`;
CREATE TABLE IF NOT EXISTS `quiz_history` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `quiz_email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_history`
--

INSERT INTO `quiz_history` (`id`, `quiz_email`) VALUES
(1, 'Deep@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

DROP TABLE IF EXISTS `signin`;
CREATE TABLE IF NOT EXISTS `signin` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Deeep', 'gaj@gmil.com', 'asfdsvz'),
(10, 'rakshit', 'rakshit@gmail.com', '234567890'),
(9, 'Deep', 'gajiwala.deep@gmai.com', '12345678'),
(11, 'Deepo', 'gajiwala.deepo@gmail.com', '123321'),
(12, 'vasu', 'vasu@gmail.com', '123456'),
(15, 'rohan', '', ''),
(14, 'rohan', 'rohan@gmail.com', 'rohan6776'),
(16, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stu_login`
--

DROP TABLE IF EXISTS `stu_login`;
CREATE TABLE IF NOT EXISTS `stu_login` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sl_email` varchar(30) NOT NULL,
  `sl_password` varchar(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_login`
--

INSERT INTO `stu_login` (`id`, `sl_email`, `sl_password`, `Time`) VALUES
(1, 'bhavesh@gmail.com', '1478523690', '2020-04-26 11:26:46'),
(2, 'krishna@gmail.com', 'krishna123', '2020-04-29 04:12:17'),
(4, 'krishna@gmail.com', 'krishna123', '2020-04-29 05:10:13'),
(5, 'krina@gmail.com', 'krina12345', '2020-04-29 05:12:24'),
(6, 'krina@gmail.com', 'krina12345', '2020-04-29 05:13:33'),
(7, 'krishna@gmail.com', 'krishna123', '2020-04-29 05:16:15'),
(8, 'krina@gmail.com', 'krina12345', '2020-04-29 05:16:54'),
(9, 'bhavesh@gmail.com', '1478523690', '2020-04-29 05:20:04'),
(10, 'bhavesh@gmail.com', '1478523690', '2020-04-29 05:21:44'),
(11, 'krishna@gmail.com', 'krishna123', '2020-04-29 05:22:12'),
(12, 'bhavesh@gmail.com', '1478523690', '2020-04-29 05:23:58'),
(13, 'krina@gmail.com', 'krina12345', '2020-04-29 05:24:46'),
(14, 'krina@gmail.com', 'krina12345', '2020-04-29 05:24:54'),
(15, 'fenil@gmail.com', 'fenil54321', '2020-04-29 05:26:15'),
(16, 'fenil@gmail.com', 'fenil54321', '2020-04-29 05:26:26'),
(17, 'bhavesh@gmail.com', '1478523690', '2020-04-29 05:28:01'),
(18, 'krishna@gmail.com', 'krishna123', '2020-04-29 05:29:19'),
(19, 'bhavesh@gmail.com', '1478523690', '2020-04-29 05:33:11'),
(20, 'bhavesh@gmail.com', '1478523690', '2020-04-29 05:33:34'),
(21, 'krishna@gmail.com', 'krishna123', '2020-04-29 06:01:36'),
(22, 'krishna@gmail.com', 'krishna123', '2020-04-29 06:03:41'),
(23, 'krishna@gmail.com', 'krishna123', '2020-04-29 06:09:49'),
(24, 'bhavesh@gmail.com', '1478523690', '2020-04-29 06:23:34'),
(25, 'krishna@gmail.com', 'krishna123', '2020-04-29 06:39:18'),
(26, 'fenil@gmail.com', 'fenil54321', '2020-04-30 16:46:48'),
(27, 'krishna@gmail.com', 'krishna123', '2020-04-30 16:47:02'),
(28, 'krishna@gmail.com', 'krishna123', '2020-04-30 16:49:26'),
(29, 'krishna@gmail.com', 'krishna123', '2020-04-30 16:50:58'),
(30, 'krishna@gmail.com', 'krishna123', '2020-04-30 16:51:35'),
(31, 'krishna@gmail.com', 'krishna123', '2020-04-30 16:52:34'),
(32, 'krishna@gmail.com', 'krishna123', '2020-04-30 16:55:28'),
(33, 'krishna@gmail.com', 'krishna123', '2020-04-30 17:00:37'),
(34, 'krishna@gmail.com', 'krishna123', '2020-04-30 17:02:13'),
(35, 'krishna@gmail.com', 'krishna123', '2020-05-01 03:50:03'),
(36, 'bhavesh@gmail.com', '1478523690', '2020-05-03 06:46:55'),
(37, 'krishna@gmail.com', 'krishna123', '2020-05-07 12:05:36'),
(38, 'fenil@gmail.com', 'fenil54321', '2020-05-07 12:06:11'),
(39, 'krishna@gmail.com', 'krishna123', '2020-05-07 12:06:21'),
(40, 'harshil@gmail.com', 'harshil123', '2020-05-07 12:09:03'),
(41, 'harshil@gmail.com', 'harshil123', '2020-05-07 12:12:01'),
(42, 'harshil@gmail.com', 'harshil123', '2020-05-07 12:13:09'),
(43, 'krishna@gmail.com', 'krishna123', '2020-05-09 04:37:45'),
(44, 'krishna@gmail.com', 'krishna123', '2020-05-09 06:29:51'),
(45, 'krishna@gmail.com', 'krishna123', '2020-05-11 08:37:27'),
(46, 'krishna@gmail.com', 'krishna123', '2020-05-11 08:39:16'),
(47, 'krishna@gmail.com', 'krishna123', '2020-05-11 09:01:16'),
(48, 'krishna@gmail.com', 'krishna123', '2020-05-11 09:06:50'),
(49, 'krishna@gmail.com', 'krishna123', '2020-05-22 16:46:53'),
(50, 'krishna@gmail.com', 'krishna123', '2020-05-22 17:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `stu_signup`
--

DROP TABLE IF EXISTS `stu_signup`;
CREATE TABLE IF NOT EXISTS `stu_signup` (
  `s_id` int(255) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(30) NOT NULL,
  `s_email` varchar(30) NOT NULL,
  `s_password` varchar(25) NOT NULL,
  `s_username` varchar(15) NOT NULL,
  `s_phone` bigint(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_signup`
--

INSERT INTO `stu_signup` (`s_id`, `s_name`, `s_email`, `s_password`, `s_username`, `s_phone`, `Time`) VALUES
(4, 'Deep ', 'deep@gmail.com', '', 'Deep_06', 0, '2020-04-26 10:11:16'),
(3, 'Deep ', 'deep@gmail.com', '', 'Deep_06', 0, '2020-04-26 10:11:16'),
(5, 'raju', 'raju@gmail.com', '1234567890', 'raju_06', 0, '2020-04-26 10:11:16'),
(6, 'rohan', 'rohan@gmail.com', '1234567890', 'rohan_06', 0, '2020-04-26 10:12:19'),
(9, 'bhavesh', 'bhavesh@gmail.com', '1478523690', 'bhaves_15', 0, '2020-04-26 11:23:24'),
(13, 'krina', 'krina@gmail.com', 'krina12345', 'krina_06', 0, '2020-04-29 05:12:04'),
(11, 'Krishna', 'krishna@gmail.com', 'krishna123', 'krishna_06', 0, '2020-04-29 04:10:34'),
(19, 'rakshit', 'rakshit@gmail.com', 'rakshit06', 'rakshit_06', 8000555577, '2020-05-06 06:48:07'),
(15, 'fenil', 'fenil@gmail.com', 'fenil54321', 'fenil_14', 0, '2020-04-29 05:26:00'),
(18, 'harsh', 'Harsh@gmail.com', 'Harsh6776', 'Harsh_06', 8490073186, '2020-05-06 04:16:13'),
(20, 'harshil', 'harshil@gmail.com', 'harshil123', 'harshil_06', 1234567890, '2020-05-07 12:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `total_ques` int(255) DEFAULT NULL,
  `ans_correct` int(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `total_ques`, `ans_correct`) VALUES
(1, 'vasu', 10, 10),
(3, 'vasu', 10, 1),
(4, 'vasu', 10, 1),
(5, 'vasu', 10, 1),
(6, 'vasu', 10, 1),
(7, 'vasu', 10, 1),
(8, 'vasu', 10, 1),
(9, 'vasu', 10, 1),
(10, 'vasu', 10, 1),
(11, 'vasu', 10, 1),
(12, 'vasu', 10, 1),
(13, 'vasu', 10, 1),
(14, 'vasu', 10, 1),
(15, 'vasu', 10, 3),
(16, 'vasu', 10, 3),
(17, 'vasu', 10, 3),
(18, 'vasu', 10, 3),
(19, 'vasu', 10, 3),
(20, 'vasu', 10, 3),
(21, 'vasu', 10, 3),
(22, 'vasu', 10, 3),
(23, 'vasu', 10, 3),
(24, 'vasu', 10, 3),
(25, 'vasu', 10, 3),
(26, 'vasu', 10, 3),
(27, 'vasu', 10, 3),
(28, 'vasu', 10, 3),
(29, 'vasu', 10, 3),
(30, 'vasu', 10, 3),
(31, 'vasu', 10, 3),
(32, 'vasu', 10, 3),
(33, 'vasu', 10, 3),
(34, 'vasu', 10, 3),
(35, 'vasu', 10, 3),
(36, 'vasu', 10, 3),
(37, 'vasu', 10, 3),
(38, 'vasu', 10, 3),
(39, '', 10, 2),
(40, '', 10, 2),
(41, '', 10, 2),
(42, '', 10, 1),
(43, 'Krishna', 10, 2),
(44, '', 10, 0),
(45, '', 10, 0),
(46, NULL, 10, 0),
(47, NULL, 10, 0),
(48, NULL, 10, 0),
(49, NULL, 10, 0),
(50, NULL, 10, 0),
(51, NULL, 10, 0),
(52, NULL, 10, 0),
(53, NULL, 10, 0),
(54, NULL, 10, 0),
(55, NULL, 10, 3),
(56, NULL, 10, 6),
(57, NULL, 10, 6),
(58, NULL, 10, 6),
(59, NULL, 10, 5),
(60, NULL, 10, 5),
(61, NULL, 10, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
