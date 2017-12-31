-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: localhost
-- Χρόνος δημιουργίας: 31 Δεκ 2017 στις 16:04:26
-- Έκδοση διακομιστή: 5.7.20-0ubuntu0.16.04.1
-- Έκδοση PHP: 7.1.12-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `teraFUN`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `administrator`
--

CREATE TABLE `administrator` (
  `AdminID` int(10) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `PersonalEmail` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `administrator`
--

INSERT INTO `administrator` (`AdminID`, `Username`, `FirstName`, `LastName`, `PersonalEmail`, `Password`) VALUES
(1, 'stevesam', 'Stefanos', 'Samonas', 'steveofsam@gmail.com', 'lamar190808'),
(3, 'Odysseas21', 'odysseas', 'drosis', 'odysseas-11@hotmail.com', '2121'),
(4, 'giorgos11', 'giorgos', 'mpakopulos', 'gmpak@hotmail.com', '1111'),
(5, 'araujo', 'sergio', 'araujo', 'sergio21@hotmail.com', 'araujo21'),
(6, 'anestis22', 'giannis', 'anestis', 'anestis_g@hotmail.com', 'g21ane'),
(7, 'simo8', 'andre', 'simoes', 'simoes8@hotmail.com', 'andre8simoes');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `adminprofile`
--

CREATE TABLE `adminprofile` (
  `AdminProfileID` int(10) NOT NULL,
  `TotalAmount` int(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `NameOfTeraFUN` varchar(25) NOT NULL DEFAULT 'teraFUN',
  `Address` varchar(25) NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Description` text NOT NULL,
  `BankAccount` bigint(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `EventID` int(10) NOT NULL,
  `BookDate` date NOT NULL,
  `NumberOfTickets` int(10) NOT NULL,
  `Code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `booking`
--

INSERT INTO `booking` (`BookingID`, `ParentID`, `EventID`, `BookDate`, `NumberOfTickets`, `Code`) VALUES
(2, 5, 4, '2017-12-19', 2, 'fd34a'),
(3, 4, 4, '2017-12-25', 1, 'rd432'),
(5, 3, 4, '2017-12-23', 3, '23hj7'),
(6, 6, 4, '2017-12-27', 2, '5gfr3');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `companyservice`
--

CREATE TABLE `companyservice` (
  `CompanyID` int(10) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `CompanyName` varchar(25) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `AFM` int(9) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `BankAccount` bigint(16) NOT NULL,
  `Description` text NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `Points` bigint(10) NOT NULL DEFAULT '0',
  `Xposition` varchar(25) NOT NULL,
  `Yposition` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `companyservice`
--

INSERT INTO `companyservice` (`CompanyID`, `Username`, `CompanyName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `AFM`, `Password`, `BankAccount`, `Description`, `Status`, `Points`, `Xposition`, `Yposition`) VALUES
(3, 'GIGATECH21', 'Gigatech', 'mandrea 9', 16425, 2107455197, 'gigatech@hotmail.com', 657398323, 'giga1', 54363462, 'best company in greece ;)', 3, 523, '5234.00000000000000', '32423.00000000000000'),
(4, 'dem21', 'dem', 'karaiskaki32', 15125, 2106965324, 'dem@hotmail.com', 532532523, 'dem257', 52523423, '', 8, 588, '364.00000000000000', '634643.00000000000000'),
(5, 'cyclo', 'cyclo222', 'olympu32', 15142, 2106844215, 'monocyclo@hotmail.com', 5322523, '43232', 535454343, '', 5, 31, '522.00000000000000', '4634.00000000000000'),
(6, 'byzan1', 'byzan', 'byzan@hotmail.com', 15165, 6987635412, 'byzan@hotmail.com', 14523532, '52332', 634623525, '', 7, 46, '63453.00000000000000', '4223.00000000000000');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `event`
--

CREATE TABLE `event` (
  `EventID` int(10) NOT NULL,
  `CompanyID` int(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Date` date NOT NULL,
  `Hour` varchar(25) NOT NULL,
  `TicketCounter` int(10) NOT NULL DEFAULT '0',
  `IncomingCash` int(10) NOT NULL DEFAULT '0',
  `Cost` int(10) NOT NULL,
  `Description` text NOT NULL,
  `Xposition` varchar(25) NOT NULL,
  `Yposition` varchar(25) NOT NULL,
  `MaxCapacity` int(10) NOT NULL,
  `Indoor` int(1) NOT NULL,
  `MinAge` int(2) NOT NULL,
  `MaxAge` int(2) NOT NULL,
  `Fun` int(1) NOT NULL,
  `Sport` int(1) NOT NULL,
  `Education` int(1) NOT NULL,
  `Team` int(1) NOT NULL,
  `TagDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `event`
--

INSERT INTO `event` (`EventID`, `CompanyID`, `Name`, `Address`, `Date`, `Hour`, `TicketCounter`, `IncomingCash`, `Cost`, `Description`, `Xposition`, `Yposition`, `MaxCapacity`, `Indoor`, `MinAge`, `MaxAge`, `Fun`, `Sport`, `Education`, `Team`, `TagDescription`) VALUES
(4, 4, 'kalosorisma', 'karaolh2', '2017-12-21', '13:00', 0, 0, 10, '', '\05341.00000000000000', '53443.00000000000000', 100, 1, 0, 12, 1, 1, 1, 1, ''),
(5, 6, 'partaki1', 'papadopoulou 121', '2017-12-31', '12:00', 0, 0, 20, '', '43234.00000000000000', '843423.00000000000000', 68, 1, 0, 16, 1, 0, 1, 0, ''),
(6, 6, 'paidiko party', 'raxeas6', '2017-12-26', '17:00', 0, 0, 30, '', '\03113.00000000000000', '121.00000000000000', 100, 0, 5, 10, 1, 1, 1, 0, ''),
(7, 6, 'paidiko party2', 'raxeas82', '2017-12-28', '12:00', 0, 0, 40, '', '14211.00000000000000', '52352.00000000000000', 100, 1, 10, 15, 1, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `parent`
--

CREATE TABLE `parent` (
  `ParentID` int(10) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `CounterEvents` int(10) NOT NULL DEFAULT '0',
  `Points` bigint(10) NOT NULL DEFAULT '0',
  `BankAccount` bigint(16) NOT NULL,
  `Xposition` varchar(25) NOT NULL,
  `Yposition` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `parent`
--

INSERT INTO `parent` (`ParentID`, `Username`, `FirstName`, `LastName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `Password`, `Status`, `CounterEvents`, `Points`, `BankAccount`, `Xposition`, `Yposition`) VALUES
(1, 'sharknado', 'Anna', 'Dardana', 'Rozariou 2', 18799, 2109999999, 'rozenberg@gmail.com', 'loulou7', 0, 0, 0, 2569385547185520, '1.00000000000000', '1.00000000000000'),
(3, 'petros21', 'petros', 'mantalos', 'filadelfeia21', 15123, 692121212121, 'mantalos.21@hotmail.com', '21212121', 4, 2, 100, 51352352, '1.00000000000000', '1.00000000000000'),
(4, 'livaja10', 'marko', 'livaja', 'spata21', 15125, 6944255818, 'marko10@hotmail.com', 'marko21', 6, 3, 21, 5252332442, '1.00000000000000', '1.00000000000000'),
(5, 'aravas21', 'xrhstos', 'aravidis', 'gavrilidu3', 16346, 2106821253, 'aravas21@hotmail.com', 'aravia11', 2, 6, 1000, 2535325324, '1.00000000000000', '1.00000000000000'),
(6, 'xrhstos321', 'xrhstos', 'mpele', 'katexakh32', 15244, 6975439843, 'xrhstos22@hotmail.com', 'gasgas', 6, 7, 90, 43523523, '1.00000000000000', '1.00000000000000'),
(7, 'ronaldo7', 'ronaldo', 'cristiano', 'katexakh352', 12412, 694987631, 'cr7@hotmail.com', 'cr7', 5, 2, 982, 532523, '1.00000000000000', '1.00000000000000');

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
  MODIFY `AdminID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT για πίνακα `adminprofile`
--
ALTER TABLE `adminprofile`
  MODIFY `AdminProfileID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT για πίνακα `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT για πίνακα `companyservice`
--
ALTER TABLE `companyservice`
  MODIFY `CompanyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT για πίνακα `event`
--
ALTER TABLE `event`
  MODIFY `EventID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT για πίνακα `parent`
--
ALTER TABLE `parent`
  MODIFY `ParentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
