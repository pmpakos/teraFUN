-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 15 Δεκ 2017 στις 10:41:18
-- Έκδοση διακομιστή: 10.1.21-MariaDB
-- Έκδοση PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `αα`
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
(2, 'royfixtra', 'Panoulis', 'Mpakoulis', 'royf@hotmail.gr', 'roufoglou'),
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
(1, 0, 'teraFUN@gmail.com', 'teraFUN', 'Hroon Polytexniou 13', 15244, 2106812345, '', 6554788231098789),
(4, 10000, 'ody_21@hotmail.com', 'teraFUN', 'papadopoulou 13', 15125, 2106821294, '', 41241),
(5, 20000, 'xrhstos11@hotmail.com', 'teraFUN', 'karaolh21', 15125, 6944211321, '', 523523632523),
(6, 423232, 'anesths22@hotmail.com', 'teraFUN', 'papandreu4', 15124, 6922222876, '', 42341512414),
(7, 302230, 'simoes@hotmail.com', 'teraFUN', 'kokkinopouloy19', 15235, 6912973524, '', 12512412);

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
(1, 1, 2, '2017-12-12'),
(2, 5, 4, '2017-12-19'),
(3, 4, 4, '2017-12-25'),
(4, 3, 2, '2017-12-30'),
(5, 3, 4, '2017-12-23'),
(6, 6, 4, '2017-12-27');

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
(1, 'el peder', 'Paidomazwma', 'Anonymoy 87', 12345, 2109992211, 'papapa@gmail.gr', 123456788, 'nooooo13', 1234567890123456, '', 0, 0, '', ''),
(3, 'GIGATECH21', 'Gigatech', 'mandrea 9', 16425, 2107455197, 'gigatech@hotmail.com', 657398323, 'giga1', 54363462, 'best company in greece ;)', 3, 523, '5234', '32423'),
(4, 'dem21', 'dem', 'karaiskaki32', 15125, 2106965324, 'dem@hotmail.com', 532532523, 'dem257', 52523423, '', 8, 588, '364', '634643'),
(5, 'cyclo', 'cyclo222', 'olympu32', 15142, 2106844215, 'monocyclo@hotmail.com', 5322523, '43232', 535454343, '', 5, 31, '522', '4634'),
(6, 'byzan1', 'byzan', 'byzan@hotmail.com', 15165, 6987635412, 'byzan@hotmail.com', 14523532, '52332', 634623525, '', 7, 46, '63453', '4223');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `companyupdate`
--

CREATE TABLE `companyupdate` (
  `ChangeID` int(10) NOT NULL,
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
  `Status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `companyupdate`
--

INSERT INTO `companyupdate` (`ChangeID`, `CompanyID`, `Username`, `CompanyName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `AFM`, `Password`, `BankAccount`, `Description`, `XPosition`, `YPosition`, `IssueDate`, `Status`) VALUES
(2, 2, 'byzan1', 'byzan', 'mandrea32', 15126, 2106821251, 'byzan@hotmail.com', 523523, '23523', 653534, NULL, '7546', '3432', '2017-12-20', 4),
(3, 0, 'enigma1', 'enigma', 'karaolh32', 15121, 2106844195, 'enigma@hotmail.com', 45323532, '523322', 975869674, NULL, '52332', '35225', '2017-12-27', 5),
(4, 4, 'buyit2', 'buyit', 'kamateru21', 15265, 697654923, 'buyit@hotmail.com', 2332233, '6343442', 432423432, NULL, '63246', '64334', '2017-12-31', 6),
(7, 7, 'clone22', 'clone', 'amarusiu xalandriu22', 15125, 2106965443, 'clone@hotmail.com', 5325235, '6235632', 634623352, NULL, '636', '8596', '2017-12-28', 8);

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
(2, 1, 'Paidomazwma', 'Sfagiou 22', '2017-12-25', '21.00', 0, 0, 'elateeeeeee', '', '', 10000, 0, 3, 7, 1, 0, 0, 1, 'podosfairo omadiko '),
(4, 4, 'kalosorisma', 'karaolh2', '2017-12-21', '13:00', 0, 0, '', '5341', '53443', 100, 1, 0, 12, 1, 1, 1, 1, ''),
(5, 6, 'partaki1', 'papadopoulou 121', '2017-12-31', '12:00', 0, 0, '', '43234', '843423', 68, 1, 0, 16, 1, 0, 1, 0, ''),
(6, 6, 'paidiko party', 'raxeas6', '2017-12-26', '17:00', 0, 0, '', '3113', '121', 100, 0, 5, 10, 1, 1, 1, 0, ''),
(7, 6, 'paidiko party2', 'raxeas82', '2017-12-28', '12:00', 0, 0, '', '14211', '52352', 100, 1, 10, 15, 1, 1, 1, 1, '');

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
(1, 'sharknado', 'Anna', 'Dardana', 'Rozariou 2', 18799, 2109999999, 'rozenberg@gmail.com', 'loulou7', 0, 0, 0, 2569385547185520, '', ''),
(3, 'petros21', 'petros', 'mantalos', 'filadelfeia21', 15123, 692121212121, 'mantalos.21@hotmail.com', '21212121', 4, 2, 100, 51352352, '42', '64'),
(4, 'livaja10', 'marko', 'livaja', 'spata21', 15125, 6944255818, 'marko10@hotmail.com', 'marko21', 6, 3, 21, 5252332442, '40', '888'),
(5, 'aravas21', 'xrhstos', 'aravidis', 'gavrilidu3', 16346, 2106821253, 'aravas21@hotmail.com', 'aravia11', 2, 6, 1000, 2535325324, '', ''),
(6, 'xrhstos321', 'xrhstos', 'mpele', 'katexakh32', 15244, 6975439843, 'xrhstos22@hotmail.com', 'gasgas', 6, 7, 90, 43523523, '', ''),
(7, 'ronaldo7', 'ronaldo', 'cristiano', 'katexakh352', 12412, 694987631, 'cr7@hotmail.com', 'cr7', 5, 2, 982, 532523, '', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `parentupdate`
--

CREATE TABLE `parentupdate` (
  `ChangeID` int(10) NOT NULL,
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
  `Status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `parentupdate`
--

INSERT INTO `parentupdate` (`ChangeID`, `ParentID`, `Username`, `Password`, `FirstName`, `LastName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `BankAccount`, `Xposition`, `Yposition`, `IssueDate`, `Status`) VALUES
(1, 1, 'odysseas2121', '2121', 'odysseas', 'drosis', 'karaolh111', 15125, 6987656432, 'odysseas-222@hotmail.com', 43232, '234238', '523', '2017-12-28', 6),
(2, 2, 'giorgos51', 'giorgaras21', 'giorgos', 'papadopolos', 'krhths7', 13312, 2106834231, 'giorgos_51@hotmail.com', 432432, '4234', '634643', '2017-12-24', 3),
(3, 3, 'fil21', 'fil111', 'filippos', 'stamos', 'koniakh31', 41212, 6976590876, 'fil_1@hotmail.com', 52325, '769', '8432', '2017-12-26', 7);

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
-- Ευρετήρια για πίνακα `companyupdate`
--
ALTER TABLE `companyupdate`
  ADD PRIMARY KEY (`ChangeID`);

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
-- Ευρετήρια για πίνακα `parentupdate`
--
ALTER TABLE `parentupdate`
  ADD PRIMARY KEY (`ChangeID`);

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
-- AUTO_INCREMENT για πίνακα `companyupdate`
--
ALTER TABLE `companyupdate`
  MODIFY `ChangeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
-- AUTO_INCREMENT για πίνακα `parentupdate`
--
ALTER TABLE `parentupdate`
  MODIFY `ChangeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
