-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2017 at 01:11 πμ
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `TeraFUN`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE IF NOT EXISTS `Admins` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) COLLATE utf8_bin NOT NULL,
  `LastName` varchar(25) COLLATE utf8_bin NOT NULL,
  `Username` varchar(10) COLLATE utf8_bin NOT NULL,
  `Password` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE IF NOT EXISTS `Events` (
  `Event_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Cost` int(11) NOT NULL,
  `Active` int(1) NOT NULL,
  `Address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Lng` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Lat` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`Event_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(10) COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) COLLATE utf8_bin NOT NULL,
  `FirstName` varchar(25) COLLATE utf8_bin NOT NULL,
  `LastName` varchar(25) COLLATE utf8_bin NOT NULL,
  `Address` varchar(25) COLLATE utf8_bin NOT NULL,
  `PostalCode` varchar(10) COLLATE utf8_bin NOT NULL,
  `Points` int(11) NOT NULL DEFAULT '0',
  `History` text COLLATE utf8_bin,
  `Lng` text COLLATE utf8_bin,
  `Lat` text COLLATE utf8_bin,
  PRIMARY KEY (`User_Id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`User_Id`, `Username`, `Password`, `FirstName`, `LastName`, `Address`, `PostalCode`, `Points`, `History`, `Lng`, `Lat`) VALUES
(2, 'nifo', '12345', 'Nikolaos', 'Fotos', 'Armodiou 24 Kantza', '153 51', 0, NULL, NULL, NULL),
(3, 'pants', '67890', 'Panagiotis', 'Tsiagkas', 'Armodiou 24 Kantza', '153 51', 0, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
