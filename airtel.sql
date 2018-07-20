-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 20, 2018 at 11:18 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `airtel`
--

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE IF NOT EXISTS `consumer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address1` varchar(500) NOT NULL,
  `address2` varchar(500) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`id`, `firstname`, `lastname`, `gender`, `address1`, `address2`, `city`, `zip`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'vijay', 'kumar', 'Male', 'btm layout', 'tavrekere', 'Bangalore', '560001', '2018-07-20', '2018-07-20 00:00:00', '0000-00-00 00:00:00'),
(2, 'vijay11', 'kumar11', 'Male', 'btm layout', 'tavrekere', 'Bangalore', '560001', '2018-07-20', '2018-07-20 00:00:00', '0000-00-00 00:00:00'),
(3, 'vijay11', 'kumar11', 'Male', 'btm layout11', 'tavrekere', 'Bangalore', '560001', '2018-07-20', '2018-07-20 00:00:00', '0000-00-00 00:00:00'),
(4, 'IND-2016-00001', '123456', 'Male', '', '', '', '', '0000-00-00', '2018-07-20 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `mobile`, `email`, `password`, `created_at`) VALUES
(1, 'Vijay', 'kumar', '7204563432', 'vijaykumarsaurav@gmail.com', '123456', '2018-07-20 04:14:31'),
(2, 'vvv', 'kkk', '7204563433', 'vijaykumarsaurav@gmail.com', '123456', '2018-07-20 04:17:06');
