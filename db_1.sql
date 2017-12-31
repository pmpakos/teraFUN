-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 14 Δεκ 2017 στις 12:10:04
-- Έκδοση διακομιστή: 10.1.28-MariaDB
-- Έκδοση PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `db_1`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `administrator`
--

CREATE TABLE `administrator` (
  `AdminID` int(10) NOT NULL,
  `Username` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FirstName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LastName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PersonalEmail` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `administrator`
--

INSERT INTO `administrator` (`AdminID`, `Username`, `FirstName`, `LastName`, `PersonalEmail`, `Password`) VALUES
(1, 'stevesam', 'Stefanos', 'Samonas', 'steveofsam@gmail.com', 'lamar190808'),
(2, 'royfixtra', 'Panoulis', 'Mpakoulis', 'royf@hotmail.gr', 'roufoglou');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `adminprofile`
--

CREATE TABLE `adminprofile` (
  `AdminProfileID` int(10) NOT NULL,
  `TotalAmount` int(10) NOT NULL,
  `Email` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NameOfTeraFUN` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'teraFUN',
  `Address` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BankAccount` bigint(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `adminprofile`
--

INSERT INTO `adminprofile` (`AdminProfileID`, `TotalAmount`, `Email`, `NameOfTeraFUN`, `Address`, `PostalCode`, `TelephoneNumber`, `Description`, `BankAccount`) VALUES
(1, 0, 'teraFUN@gmail.com', 'teraFUN', 'Hroon Polytexniou 13', 15244, 2106812345, '', 6554788231098789);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(10) NOT NULL,
  `ParentID` int(10) NOT NULL,
  `EventID` int(11) NOT NULL,
  `BookDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `booking`
--

INSERT INTO `booking` (`BookingID`, `ParentID`, `EventID`, `BookDate`) VALUES
(1, 1, 2, '2017-12-12');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `companyservice`
--

CREATE TABLE `companyservice` (
  `CompanyID` int(10) NOT NULL,
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
  `YPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `companyservice`
--

INSERT INTO `companyservice` (`CompanyID`, `Username`, `CompanyName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `AFM`, `Password`, `BankAccount`, `Description`, `Status`, `Points`, `XPosition`, `YPosition`) VALUES
(1, 'el peder', 'Paidomazwma', 'Anonymoy 87', 12345, 2109992211, 'papapa@gmail.gr', 123456788, 'nooooo13', 1234567890123456, '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `event`
--

CREATE TABLE `event` (
  `EventID` int(10) NOT NULL,
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
  `TagDescription` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `event`
--

INSERT INTO `event` (`EventID`, `CompanyID`, `Name`, `Address`, `Date`, `Hour`, `TicketCounter`, `IncomingCash`, `Description`, `XPosition`, `YPosition`, `MaxCapacity`, `Indoor`, `MinAge`, `MaxAge`, `Fun`, `Sport`, `Education`, `Team`, `TagDescription`) VALUES
(2, 1, 'Paidomazwma', 'Sfagiou 22', '2017-12-25', '21.00', 0, 0, 'elateeeeeee', '', '', 10000, 0, 3, 7, 1, 0, 0, 1, 'podosfairo omadiko ');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `parent`
--

CREATE TABLE `parent` (
  `ParentID` int(10) NOT NULL,
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
  `YPosition` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `parent`
--

INSERT INTO `parent` (`ParentID`, `Username`, `FirstName`, `LastName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `Password`, `Status`, `CounterEvents`, `Points`, `BankAccount`, `Xposition`, `YPosition`) VALUES
(1, 'sharknado', 'Anna', 'Dardana', 'Rozariou 2', 18799, 2109999999, 'rozenberg@gmail.com', 'loulou7', 0, 0, 0, 2569385547185520, '', '');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Ευρετήρια για πίνακα `adminprofile`
--
ALTER TABLE `adminprofile`
  ADD PRIMARY KEY (`AdminProfileID`);

--
-- Ευρετήρια για πίνακα `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Ευρετήρια για πίνακα `companyservice`
--
ALTER TABLE `companyservice`
  ADD PRIMARY KEY (`CompanyID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `CompanyName` (`CompanyName`);

--
-- Ευρετήρια για πίνακα `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `CompanyID` (`CompanyID`);

--
-- Ευρετήρια για πίνακα `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`ParentID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `administrator`
--
ALTER TABLE `administrator`
  MODIFY `AdminID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `adminprofile`
--
ALTER TABLE `adminprofile`
  MODIFY `AdminProfileID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT για πίνακα `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT για πίνακα `companyservice`
--
ALTER TABLE `companyservice`
  MODIFY `CompanyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `event`
--
ALTER TABLE `event`
  MODIFY `EventID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `parent`
--
ALTER TABLE `parent`
  MODIFY `ParentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`);

--
-- Περιορισμοί για πίνακα `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `companyservice` (`CompanyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
