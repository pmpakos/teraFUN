-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2017 at 11:52 μμ
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
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `AdminID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FirstName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LastName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PersonalEmail` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`AdminID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`AdminID`, `Username`, `FirstName`, `LastName`, `PersonalEmail`, `Password`) VALUES
(1, 'stevesam', 'Stefanos', 'Samonas', 'steveofsam@gmail.com', 'lamar190808'),
(2, 'royfixtra', 'Panoulis', 'Mpakoulis', 'royf@hotmail.gr', 'roufoglou');

-- --------------------------------------------------------

--
-- Table structure for table `adminprofile`
--

CREATE TABLE IF NOT EXISTS `adminprofile` (
  `AdminProfileID` int(10) NOT NULL AUTO_INCREMENT,
  `TotalAmount` int(10) NOT NULL,
  `Email` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NameOfTeraFUN` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'teraFUN',
  `Address` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BankAccount` bigint(16) NOT NULL,
  PRIMARY KEY (`AdminProfileID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `adminprofile`
--

INSERT INTO `adminprofile` (`AdminProfileID`, `TotalAmount`, `Email`, `NameOfTeraFUN`, `Address`, `PostalCode`, `TelephoneNumber`, `Description`, `BankAccount`) VALUES
(1, 0, 'teraFUN@gmail.com', 'teraFUN', 'Hroon Polytexniou 13', 15244, 2106812345, '', 6554788231098789);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `BookingID` int(10) NOT NULL AUTO_INCREMENT,
  `ParentID` int(10) NOT NULL,
  `EventID` int(11) NOT NULL,
  `BookDate` date NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `EventID` (`EventID`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `ParentID`, `EventID`, `BookDate`) VALUES
(1, 1, 2, '2017-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `companyservice`
--

CREATE TABLE IF NOT EXISTS `companyservice` (
  `CompanyID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CompanyName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Address` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Email` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AFM` int(9) NOT NULL,
  `Password` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BankAccount` bigint(16) NOT NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `Points` bigint(10) NOT NULL DEFAULT '0',
  `XPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `YPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`CompanyID`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `CompanyName` (`CompanyName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `companyservice`
--

INSERT INTO `companyservice` (`CompanyID`, `Username`, `CompanyName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `AFM`, `Password`, `BankAccount`, `Description`, `Status`, `Points`, `XPosition`, `YPosition`) VALUES
(1, 'el peder', 'Paidomazwma', 'Anonymoy 87', 12345, 2109992211, 'papapa@gmail.gr', 123456788, 'nooooo13', 1234567890123456, '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `companyupdate`
--

CREATE TABLE IF NOT EXISTS `companyupdate` (
  `ChangeID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyID` int(10) NOT NULL,
  `Username` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CompanyName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PostalCode` int(5) DEFAULT NULL,
  `TelephoneNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `AFM` int(9) DEFAULT NULL,
  `Password` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BankAccount` bigint(16) DEFAULT NULL,
  `Description` text,
  `XPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `YPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `IssueDate` date NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChangeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `EventID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyID` int(10) NOT NULL,
  `Name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Address` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Date` date NOT NULL,
  `Hour` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TicketCounter` int(10) NOT NULL DEFAULT '0',
  `IncomingCash` int(10) NOT NULL DEFAULT '0',
  `Description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `XPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `YPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MaxCapacity` int(10) NOT NULL,
  `Indoor` int(1) NOT NULL,
  `MinAge` int(2) NOT NULL,
  `MaxAge` int(2) NOT NULL,
  `Fun` int(1) NOT NULL,
  `Sport` int(1) NOT NULL,
  `Education` int(1) NOT NULL,
  `Team` int(1) NOT NULL,
  `TagDescription` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`EventID`),
  KEY `CompanyID` (`CompanyID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EventID`, `CompanyID`, `Name`, `Address`, `Date`, `Hour`, `TicketCounter`, `IncomingCash`, `Description`, `XPosition`, `YPosition`, `MaxCapacity`, `Indoor`, `MinAge`, `MaxAge`, `Fun`, `Sport`, `Education`, `Team`, `TagDescription`) VALUES
(2, 1, 'Paidomazwma', 'Sfagiou 22', '2017-12-25', '21.00', 0, 0, 'elateeeeeee', '', '', 10000, 0, 3, 7, 1, 0, 0, 1, 'podosfairo omadiko ');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `ParentID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FirstName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LastName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Address` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Email` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `CounterEvents` int(10) NOT NULL DEFAULT '0',
  `Points` bigint(10) NOT NULL DEFAULT '0',
  `BankAccount` bigint(16) NOT NULL,
  `Xposition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `YPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ParentID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`ParentID`, `Username`, `FirstName`, `LastName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `Password`, `Status`, `CounterEvents`, `Points`, `BankAccount`, `Xposition`, `YPosition`) VALUES
(1, 'sharknado', 'Anna', 'Dardana', 'Rozariou 2', 18799, 2109999999, 'rozenberg@gmail.com', 'loulou7', 0, 0, 0, 2569385547185520, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `parentupdate`
--

CREATE TABLE IF NOT EXISTS `parentupdate` (
  `ChangeID` int(10) NOT NULL AUTO_INCREMENT,
  `ParentID` int(10) NOT NULL,
  `Username` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Password` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FirstName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LastName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PostalCode` int(5) DEFAULT NULL,
  `TelephoneNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BankAccount` bigint(16) DEFAULT NULL,
  `Xposition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Yposition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `IssueDate` date NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChangeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `companyservice` (`CompanyID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
