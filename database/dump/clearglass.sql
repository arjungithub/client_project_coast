-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2019 at 12:17 AM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clearglass`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`) VALUES
(1, 'Avengers'),
(2, 'Defenders'),
(3, 'Guardians of the Galaxy');

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `cost_type_id` int(11) UNSIGNED DEFAULT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `amount`, `cost_type_id`, `project_id`) VALUES
(1, '259428.00', 1, 1),
(2, '101824.00', 2, 1),
(3, '80976.00', 3, 1),
(4, '169857.00', 4, 1),
(5, '8709.00', 5, 1),
(6, '80862.00', 6, 1),
(7, '51479.00', 7, 1),
(8, '37204.00', 8, 1),
(9, '13141.00', 9, 1),
(10, '39591.00', 10, 1),
(11, '41385.00', 11, 1),
(12, '92801.00', 12, 1),
(13, '77056.00', 13, 1),
(14, '3412.00', 14, 1),
(15, '5297.00', 15, 1),
(16, '75020.00', 16, 1),
(17, '1217.00', 17, 1),
(18, '4625.00', 18, 1),
(19, '274189.00', 1, 2),
(20, '117198.00', 2, 2),
(21, '92856.00', 3, 2),
(22, '205822.00', 4, 2),
(23, '12132.00', 5, 2),
(24, '56235.00', 6, 2),
(25, '72901.00', 7, 2),
(26, '33750.00', 8, 2),
(27, '10547.00', 9, 2),
(28, '53946.00', 10, 2),
(29, '38910.00', 11, 2),
(30, '131750.00', 12, 2),
(31, '74072.00', 13, 2),
(32, '2585.00', 14, 2),
(33, '9547.00', 15, 2),
(34, '50087.00', 16, 2),
(35, '1463.00', 17, 2),
(36, '4685.00', 18, 2),
(37, '320469.00', 1, 3),
(38, '137880.00', 2, 3),
(39, '71644.00', 3, 3),
(40, '253894.00', 4, 3),
(41, '11924.00', 5, 3),
(42, '54651.00', 6, 3),
(43, '82045.00', 7, 3),
(44, '46000.00', 8, 3),
(45, '9835.00', 9, 3),
(46, '45660.00', 10, 3),
(47, '25984.00', 11, 3),
(48, '162184.00', 12, 3),
(49, '91710.00', 13, 3),
(50, '2596.00', 14, 3),
(51, '9328.00', 15, 3),
(52, '48171.00', 16, 3),
(53, '1550.00', 17, 3),
(54, '4930.00', 18, 3),
(55, '287079.00', 1, 4),
(56, '122860.00', 2, 4),
(57, '88916.00', 3, 4),
(58, '215166.00', 4, 4),
(59, '11030.00', 5, 4),
(60, '60883.00', 6, 4),
(61, '82842.00', 7, 4),
(62, '26713.00', 8, 4),
(63, '13305.00', 9, 4),
(64, '47650.00', 10, 4),
(65, '41266.00', 11, 4),
(66, '130015.00', 12, 4),
(67, '85151.00', 13, 4),
(68, '2341.00', 14, 4),
(69, '8689.00', 15, 4),
(70, '55320.00', 16, 4),
(71, '1399.00', 17, 4),
(72, '4164.00', 18, 4),
(73, '339293.00', 1, 5),
(74, '118560.00', 2, 5),
(75, '87843.00', 3, 5),
(76, '257678.00', 4, 5),
(77, '11908.00', 5, 5),
(78, '69707.00', 6, 5),
(79, '80342.00', 7, 5),
(80, '25483.00', 8, 5),
(81, '12735.00', 9, 5),
(82, '47972.00', 10, 5),
(83, '39871.00', 11, 5),
(84, '133534.00', 12, 5),
(85, '124144.00', 13, 5),
(86, '2083.00', 14, 5),
(87, '9825.00', 15, 5),
(88, '63413.00', 16, 5),
(89, '1437.00', 17, 5),
(90, '4857.00', 18, 5),
(91, '282039.00', 1, 6),
(92, '121840.00', 2, 6),
(93, '71691.00', 3, 6),
(94, '202257.00', 4, 6),
(95, '11990.00', 5, 6),
(96, '67792.00', 6, 6),
(97, '78702.00', 7, 6),
(98, '32707.00', 8, 6),
(99, '10431.00', 9, 6),
(100, '28636.00', 10, 6),
(101, '43055.00', 11, 6),
(102, '101200.00', 12, 6),
(103, '101057.00', 13, 6),
(104, '3081.00', 14, 6),
(105, '8909.00', 15, 6),
(106, '60790.00', 16, 6),
(107, '1612.00', 17, 6),
(108, '5390.00', 18, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cost_types`
--

CREATE TABLE `cost_types` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost_types`
--

INSERT INTO `cost_types` (`id`, `name`, `parent_id`) VALUES
(1, 'Development', NULL),
(2, 'Designing', NULL),
(3, 'Marketing', NULL),
(4, 'Website Development', 1),
(5, 'Mobile App Development', 1),
(6, 'DevOps', 1),
(7, 'Wireframing', 2),
(8, 'UI Design', 2),
(9, 'Brochure Design', 2),
(10, 'Social Media Marketing', 3),
(11, 'Print Media Marketing', 3),
(12, 'Payment Gateway License', 4),
(13, 'JavaScript Plugin License', 4),
(14, 'Google Play Store Fees', 5),
(15, 'Apple App Store Fees', 5),
(16, 'Servers', 6),
(17, 'Domain Name', 6),
(18, 'SSL Certificate', 6);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `client_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `client_id`) VALUES
(1, 'Project 1', 1),
(2, 'Project 2', 1),
(3, 'Project 3', 2),
(4, 'Project 4', 2),
(5, 'Project 5', 2),
(6, 'Project 6', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
