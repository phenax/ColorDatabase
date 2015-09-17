-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2015 at 04:56 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `colors`
--

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `class`) VALUES
(1, '#51e980', 'green'),
(2, '#F44336', 'red'),
(3, '#D32F2F', 'red'),
(4, '#E57373', 'red'),
(5, '#7B1FA2', 'violet'),
(6, '#9C27B0', 'violet'),
(7, '#BA68C8', 'violet'),
(8, '#03A9F4', 'blue'),
(9, '#303F9F', 'blue'),
(10, '#3F51B5', 'blue'),
(11, '#7986CB', 'blue'),
(12, '#4FC3F7', 'blue'),
(13, '#009688', 'green'),
(14, '#AED581', 'green'),
(15, '#8BC34A', 'green'),
(16, '#689F38', 'green'),
(17, '#FFF176', 'yellow'),
(18, '#FFEB3B', 'yellow'),
(19, '#FBC02D', 'yellow'),
(20, '#FFB74D', 'orange'),
(21, '#FF9800', 'orange'),
(22, '#F57C00', 'orange'),
(23, '#202020', 'grey'),
(24, '#FF7A7A', 'red'),
(25, '#42a6df', 'blue'),
(26, '#53646e', 'grey'),
(27, '#e91e63', 'red'),
(28, '#3b50ce', 'blue'),
(29, '#00bcd4', 'blue'),
(30, '#ffc107', 'yellow'),
(31, '#ff4081', 'red'),
(32, '#ff5252', 'red'),
(33, '#ff3366', 'red');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
