-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2018 at 01:34 μμ
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
  `Username` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `PersonalEmail` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  PRIMARY KEY (`AdminID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`AdminID`, `Username`, `FirstName`, `LastName`, `PersonalEmail`, `Password`) VALUES
(1, 'stevesam', 'Στέφανος', 'Σαμωνάς', 'steveofsam@gmail.com', 'lamar190808'),
(2, 'mancasil', 'Σύλβια', ' Μάνκα', 'silv.manca@gmail.com', 'starlet'),
(3, 'Odysseas21', 'Οδυσσέας', 'Δρόσσης', 'odysseas-11@hotmail.com', '2121'),
(4, 'nifo', 'Νικόλαος', 'Φώτος', 'nickfotosgr@gmail.com', '012345'),
(5, 'mofista', 'Φίλιππος', 'Στάμος', 'filipp_st@hotmail.com', 'chess123'),
(6, 'ntgvou', 'Νικόλαος', 'Βούλγαρης', 'voulgarisgn@gmail.com', 'deutsche'),
(7, 'pmpakos', 'Παναγιώτης', 'Μπάκος', 'pmpakos@hotmail.com', 'plamar190808');

-- --------------------------------------------------------

--
-- Table structure for table `adminprofile`
--

CREATE TABLE IF NOT EXISTS `adminprofile` (
  `AdminProfileID` int(10) NOT NULL AUTO_INCREMENT,
  `TotalAmount` int(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `NameOfTeraFUN` varchar(25) NOT NULL DEFAULT 'teraFUN',
  `Address` varchar(25) NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Description` text NOT NULL,
  `BankAccount` bigint(16) NOT NULL,
  PRIMARY KEY (`AdminProfileID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `EventID` int(10) NOT NULL,
  `BookDate` date NOT NULL,
  `NumberOfTickets` int(10) NOT NULL,
  `Code` varchar(5) NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `EventID` (`EventID`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `CommentID` int(10) NOT NULL AUTO_INCREMENT,
  `ParentID` int(10) NOT NULL,
  `CompanyID` int(10) NOT NULL,
  `Comment` text CHARACTER SET utf8,
  `Rate` int(1) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CommentID`),
  KEY `ParentID` (`ParentID`),
  KEY `CompanyID` (`CompanyID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`CommentID`, `ParentID`, `CompanyID`, `Comment`, `Rate`, `Status`) VALUES
(1, 6, 5, 'Εκπληκτικός χώρος. Πολύ φιλοκό προσωπικό! Το συνιστώ ΑΝΕΠΙΦΎΛΑΚΤΑ!!!', 5, 0),
(2, 6, 10, NULL, 3, 1),
(3, 8, 12, NULL, 4, 1),
(4, 9, 4, 'Η κοπέλα που μας εξυπηρέτησε στην είσοδο ήταν αγενής!! Κατά τα άλλα το μέρος είναι συμπαθητικό', 3, 0),
(5, 12, 4, NULL, 5, 1),
(6, 10, 12, NULL, 1, 1),
(7, 5, 6, NULL, 4, 1),
(8, 1, 3, NULL, 5, 1),
(9, 12, 13, 'Οι καθηγητές είναι πολύ ευγενικοί και ακούω τα καλύτερα για τον τρόπο εκπαίδευσης από τα παιδία μου. Είναι από τα καλύτερα φροντιστήρια στην περιοχή!', 5, 0),
(10, 11, 14, NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `companyservice`
--

CREATE TABLE IF NOT EXISTS `companyservice` (
  `CompanyID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(25) NOT NULL,
  `CompanyName` varchar(25) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `AFM` int(9) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `BankAccount` bigint(16) NOT NULL,
  `WebPage` text,
  `Description` text NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `Points` bigint(10) NOT NULL DEFAULT '0',
  `PhotosFolder` text,
  `Xposition` varchar(25) NOT NULL,
  `Yposition` varchar(25) NOT NULL,
  PRIMARY KEY (`CompanyID`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `CompanyName` (`CompanyName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `companyservice`
--

INSERT INTO `companyservice` (`CompanyID`, `Username`, `CompanyName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `AFM`, `Password`, `BankAccount`, `WebPage`, `Description`, `Status`, `Points`, `PhotosFolder`, `Xposition`, `Yposition`) VALUES
(3, 'GIGATECH21', 'Gigatech', ' Εριγόνης 3, Κάτω Πετράλωνα', 11854, 2107455197, 'gigatech@hotmail.com', 657398323, 'giga1', 5436346254363462, 'http://www.gigatech.com', 'Οι γονείς/ συνοδοί μπορούν είτε να βοηθούν τα παιδιά στα εργαστήρια είτε να απολαμβάνουν τον καφέ τους έχοντας οπτική επαφή με τα παιδιά. Ο χώρος του καφέ είναι ένα αίθριο, που απευθύνεται σε... εναλλακτικούς γονείς, αφού δεν θυμίζει κλασική καφετέρια. \r\n\r\n', 1, 523, NULL, '37.973996', '23.709231'),
(4, 'dem21', 'Dem', 'Τροπαίων 4, Αθήνα', 11364, 2106965324, 'dem@hotmail.com', 532532523, 'dem257', 5252342352523423, 'http://www.demathens.gr', '', 1, 588, NULL, '38.005634', '23.744703'),
(5, 'myplayce', 'MY PLAYCE', 'Αδριανείου 44, Ελληνορώσων', 11525, 2106844215, 'monocyclo@hotmail.com', 532252325, '43232', 5354543435454343, 'http://www.myplayce.gr', '-ΔΗΜΙΟΥΡΓΙΚΗ ΑΠΑΣΧΟΛΗΣΗ \r\n-ΜΑΓΕΙΡΙΚΗΧΟΡΟΣ ΓΙΑ ΠΑΙΔΙΑ 14 Μ.\r\n-6 ΕΤΩΝ ΜΟΥΣΙΚΗΘΕΑΤΡΙΚΟ ΠΑΙΧΝΙΔΙ \r\n-PLAY GROUPS ΓΥΜΝ/ΚΗΣΥΜΒΟΥΛΕΥΤΙΚΗ ΓΟΝΕΩΝ ΘΕΜΑΤΑ ΠΑΙΔΙΟΥ', 1, 310, NULL, '38.000017', '23.773398'),
(6, 'SmartPlay', 'Smart Playfun', 'Αγίου Δημητρίου, Χριστούπολη', 19004, 6987635412, 'smartplay@hotmail.com', 14523532, '52332', 6346235263462352, 'http://www.smartplayland.gr', 'Ελάτε να παίξουμε μαζί στον μεγαλύτερο παιδότοπο που υπάρχει στην Αθήνα!', 1, 460, NULL, '37.984142', '23.912865'),
(7, 'sefer', 'SeferFun', 'Φιλικών 86 Περιστέρι', 12131, 2105755197, 'sefer@gmail.com', 156987452, '12345', 1234569878456336, 'http://www.seferFun.com', 'Ένας μοναδικός πολυχώρος ψυχαγωγίας για μικρούς που όμως σίγουρα θα εντυπωσιάσει και τους μεγάλους. Εκτός από τις διασκεδαστικές εκδηλώσεις που διοργανώνονται ειδικά για παιδιά, ο παιδότοπος θα τα μεταφέρει στον βυθό της θάλασσας με το γιγάντιο χταπόδι του, τις γοργόνες και τα ψάρια. Οι γονείς θα μπορείτε να απολαύσετε τον καφέ σας μέσα σ’ ένα πειρατικό καράβι!', 1, 250, NULL, '38.0006377', '23.6912765'),
(8, 'fairytale', 'Παραμυθοχωριό', 'Λεωφόρος Αναπαύσεως 18, Βριλήσσια', 15235, 2108155645, 'fairytale@otenet.gr', 698456125, '33333', 1654981235478964, 'http://www.facebook.com/fairytale.athens', 'Ένας ξεχωριστός παιδότοπος βγαλμένος από τα παραμύθια περιμένει τα παιδιά να τον ανακαλύψουν. Μέσα από το κουκλοθέατρο, τα παραμύθια, και το θεατρικό παιχνίδι, τα παιδιά έρχονται σε επαφή με την τέχνη και αφήνουν τη φαντασία τους να δουλέψει. Παράλληλα, ειδικά κάθε Τρίτη απόγευμα, διοργανώνεται τμήμα πιλάτες για ενήλικες ενώ τα παιδιά απασχολούνται δημιουργικά. Αν μάλιστα, είστε καινούρια μαμά, στον χώρο διοργανώνονται και μαθήματα baby yoga για να χαλαρώσετε παρέα με το μωράκι σας.', 1, 50, NULL, '38.0434715', '23.8423344'),
(9, 'krataios', 'Α.Σ. ΚΡΑΤΑΙΟΣ', 'Χαριλάου Τρικούπη 17, Γλυφάδα', 16675, 2109658485, 'krataios@gmail.com', 194857382, 'askrataios', 9584372819384732, 'http://www.krataosas.gr', 'Προφίλ Τεχνών\r\n\r\nΤο Kick Boxing είναι ένα δυναμικό άθλημα και προσφέρει άριστη εκγύμναση ολόκληρου του σώματος. Ενισχύει την εκρηκτικότητα και ευλυγισία του σώματος καθώς αυξάνει την αρμονία και ισορροπία του μθικού συστήματος. Κατάληλο για αποτελεσματική αυτοάμυνα.\r\n\r\nΠυγμαχια-Boxing. Κλασσική και η πιο αναγνωρισμένη πολεμική τέχνη. Προσφέρει δύναμη και ταχύτητα ιδιαίτερα στους άνω μύς και πόδια. Βοηθάει πολύ αποτελεσματικά στο αναπνευστικό σύστημα προσδίδοντας υψηλές αντοχές και υψηλά αντανακλαστικά.', 1, 200, NULL, '37.884856', '23.746830'),
(10, 'fukifisia', 'FU JOW PAI ΚΗΦΙΣΙΑΣ', 'Αριστοτέλους 18, Πολιτεία, Κηφισιά ', 14563, 6985478125, 'fujowkif@gmail.com', 23904392, 'fujow', 293845782123406, 'http://www.fukifisia.gr', 'Προφίλ Τέχνης\r\n\r\nΤο φου τζο πάι, είναι ένα ακόμα σύγχρονο κινεζικό στιλ - «σύγχρονο» με την έννοια ότι ή γενεαλογία του εμφανίζεται στα μέσα του 19ου αιώνα, με το δάσκαλο Ουόνγκ Μπιλ Χονγκ (1841-1934), ο οποίος είχε μελετήσει το στιλ χανγκ γκαρ μέχρι που κάποια στιγμή μαθήτευσε κοντά σε κάποιον μοναχό ο οποίος και του δίδαξε τα επιπλέον στοιχεία που πρόσθεσε στο χανγκ γκαρ για να δημιουργήσει το σημερινό φου τζο πάι. Διάδοχος του Ουόνγκ Μπιλ Χονγκ και συνεχιστής του στο σύστημα ήταν ο ανιψιός του, Ουόνγκ Μουν Τόι (1907-1960) ο οποίος και το μετέφερε στις ΗΠΑ, ενώ ακόμα μεγαλύτερη άνθιση γνώρισε μετά τη δεκαετία του 1960 από το μαθητή του Ουόνγκ Μουν Τόι, Ουάι Χονγκ Νγκ (γ. 1938).\r\n\r\nH ενασχόληση με το Fu Jow Pai από την παιδική ηλικία συμβάλλει στην μικτή πλευρίωση του εγκεφάλου καθώς και στη σωστή διαπαιδαγώγηση περνώντας θετικά μηνύματα στο υποσυνείδητο των παιδιών. Παράλληλα, το παιδί αναπτύσσει εσωτερική πειθαρχία και αποκτά πρότυπα για την ζωή του. Ευπρόσδεκτοι είναι οι άνθρωποι όλων των ηλικιών που προσδοκούν να συνδυάσουν την γυμναστική στο πλαίσιο των αρχών του Fu Jow Pai.', 1, 0, NULL, '38.086662', '23.832728'),
(11, 'orionas', 'A.Σ. ΩΡΙΩΝΑΣ ΠΑΓΚΡΑΤΙΟΥ', 'Β.Λάσκου 37 και Αγ.Φανουρίου, Παγκράτι', 11633, 6945269871, 'orionaspag@hotmail.com', 840194851, 'orionas21', 30192847381021, 'http://www.orionaspag.blogspot.com', 'Ο Α.Σ Ωρίωνας είναι αναγνωρισμένος σύλλογος από τη Γενική Γραμματεία Αθλητισμού και όλοι οι δάσκαλοι και εκπαιδευτές είναι έμπειροι και διαπιστευμένοι ο καθένας στον χώρο του. \r\n\r\nΠροφίλ Δασκάλου\r\n\r\nMάκης Ποτήρης: Ο Μάκης Ποτήρης ξεκίνησε την ενασχόληση με το Aikido τον Φεβρουάριο του 1998 σε ηλικία 20 ετών στο FukuShinKan dojo (Aθήνα) υπο την καθοδήγηση του sensei Γιώργου Κολιόπουλου (6th dan Aikikai). Κατα την πολυετή ενασχόληση με το Αikido έχει συμμετάσχει σε σεμινάρια με κορυφαίους δασκάλους όπως:W. Smith, G. Jones, P. Brady, K. Hayward, P. Smith, S. Sugano, Y. Kobayashi, T. Mori, T. Sugawara, M. Minegishi, C. Tissier, B.E. Olsen, P. Guillemin κ.α. Είναι κάτοχος 3 dan.', 1, 100, NULL, '37.965062', '23.751515'),
(12, 'EnInAct', 'English In Action', 'Βυζαντίου & Βιθυνίας 17, Καλογρέζα', 14234, 2102784569, 'englishaction@yahoo.com', 382910498, '41englishaction', 234598121857, 'http://www.englishaction.com', 'Το ENGLISH IN ACTION είναι ένα σύγχρονο Φροντιστήριο Ξένων Γλωσσών που βρίσκεται στη Νέα Ιωνία και παρέχει πιστοποιημένα μαθήματα ξένων γλωσσών και υπολογιστών.\r\n\r\nΣτο φροντιστήριό μας μικροί και μεγάλοι μαθαίνουν ξένες γλώσσες και πληροφορική σωστά και ευχάριστα, δίπλα σε ένα έμπειρο και εξειδικευμένο προσωπικό.', 1, 0, NULL, '38.036988', '23.767065'),
(13, 'FUN2LEARN', 'FUN2LEARN', 'Βερελή 60, Άνω Γλυφάδα', 16561, 2109684562, 'fun2learn@yahoo.com', 698541236, '123456fun', 2205668945881230, 'http://www.fun2learn.com', 'Το FUN2LEARN - ΠΡΟΤΥΠΟ ΚΕΝΤΡΟ ΕΚΠΑΙΔΕΥΣΗΣ, Φροντιστήριο Ξένων Γλωσσών, που βρίσκεται στη Γλυφάδα, σας καλωσορίζει σε έναν υπερσύγχρονο διώροφο πολυχώρο, σχεδιασμένο με υψηλές προδιαγραφές.\r\n\r\nΣτόχος μας είναι η διάκριση και η επιτυχία των σπουδαστών μας κάθε ηλικίας στις απαιτήσεις της σύγχρονης παιδείας και επαγγελματικής αποκατάστασης. Ο δυναμικός συνδυασμός: Ξένες Γλώσσες - Σχολική Μελέτη - Πληροφορική διευκολύνει τη ραγδαία πρόοδο και βελτίωση των επιδόσεων των σπουδαστών, εξοικονομώντας χρόνο και επιπλέον κόστος.', 0, 0, NULL, '37.883892', '23.759233'),
(14, 'akadimos', 'Φροντιστήρια Ακάδημος', 'Λεωφ. Μαραθώνος 37', 15351, 2106045898, 'akadimos@gmail.com', 654896512, 'akadimias64', 3262584919113020, 'http://www.akadimos.edu.gr', 'Το Φροντιστήριο Μέσης Εκπαίδευσης Ακάδημος αποτελεί έναν σημαντικό φορέα παιδείας, που διακρίνεται για την παροχή εκπαιδευτικών υπηρεσιών υψηλών προδιαγραφών.\r\n\r\nΣτόχος μας, καθημερινά, είναι να καλύπτουμε το σύνολο των εκπαιδευτικών αναγκών των μαθητών μας. Με μία εξαιρετική ομάδα έμπειρων και καταρτισμένων καθηγητών, στεκόμαστε δίπλα στους μαθητές μας, που μας εμπιστεύονται τόσο για τη βελτίωση της σχολικής τους επίδοσης, όσο και για την άρτια προετοιμασία για την εισαγωγή τους στην Τριτοβάθμια εκπαίδευση.\r\n\r\nΗ επιλογή τους να απευθυνθούν στο φροντιστήριό μας μάς κάνει, σίγουρα, να αισθανόμαστε περηφάνια, αλλά μας προσδίδει και υψηλό αίσθημα ευθύνης απέναντί τους. Αφουγκραζόμαστε τις ανησυχίες τους για το μέλλον και την ανάγκη τους να αποκτήσουν όλα τα απαραίτητα εφόδια για να πετύχουν τους στόχους τους.\r\n\r\nΕμπνέουμε στους μαθητές μας την αξία της γνώσης, τους εξασφαλίζουμε το πλέον κατάλληλο πρόγραμμα σπουδών και… συμπορευόμαστε μαζί τους στην πραγματοποίηση των ονείρων τους.\r\n', 0, 0, NULL, '38.003990', '23.877270');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `EventID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyID` int(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Date` date NOT NULL,
  `Hour` varchar(25) NOT NULL,
  `TicketCounter` int(10) NOT NULL DEFAULT '0',
  `IncomingCash` int(10) NOT NULL DEFAULT '0',
  `Cost` int(10) NOT NULL,
  `Description` text NOT NULL,
  `PhotosFolder` text,
  `IsOffer` int(1) NOT NULL DEFAULT '0',
  `Visits` int(10) NOT NULL DEFAULT '0',
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
  `TagDescription` text NOT NULL,
  PRIMARY KEY (`EventID`),
  KEY `CompanyID` (`CompanyID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `ParentID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `CounterEvents` int(10) NOT NULL DEFAULT '0',
  `Points` bigint(10) NOT NULL DEFAULT '0',
  `BankAccount` bigint(16) NOT NULL,
  `Xposition` varchar(25) NOT NULL,
  `Yposition` varchar(25) NOT NULL,
  PRIMARY KEY (`ParentID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`ParentID`, `Username`, `FirstName`, `LastName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `Password`, `Status`, `CounterEvents`, `Points`, `BankAccount`, `Xposition`, `Yposition`) VALUES
(1, 'nick_nif', 'Nikolaos', 'Nifos', 'Armodiou 24 Kantza', 15351, 2106041245, 'nicknifosgr@gmail.com', 'soeasy2', 1, 0, 310, 2569385547185520, '37.989766', '23.861698'),
(3, 'petros21', 'Πέτρος', 'Μανταλίδης', 'Παναγιώτη Μικρόπουλου 40', 14121, 6985424125, 'mantalos.21@hotmail.com', '21212121', 1, 0, 100, 5135235251352352, '38.040432', '23.768538'),
(4, 'liva10', 'Μάρκος', 'Λιβαγίνης', 'Δημ. Γούναρη 58 Περιστέρι', 12131, 6944255818, 'marko10@hotmail.com', 'marko21', 0, 0, 50, 5252332442549265, '38.007617', '23.692363'),
(5, 'kalverg', 'Καλλιόπη', 'Βεργέτη', 'Αισχύλου 7 Χαλάνδρι', 15234, 2106821253, 'kalverg81@hotmail.com', 'aravia11', 1, 0, 220, 25353253245584, '38.023493', '23.806676'),
(6, 'vagpal22', 'Βαγγέλης', 'Παλαιολόγου', 'Καραϊσκάκη 13 Δάφνη', 17234, 6975439843, 'palaiovag@hotmail.com', 'gasgas', 2, 0, 45, 4352352343523523, ' 37.954760', '23.733910'),
(7, 'pantelnik', 'Νικηφόρος', 'Παντελιάδης', 'Κων/νου Παλαιολόγου 28, Αθήνα', 10438, 6949876311, 'nikifopante7@hotmail.com', 'olympiakos', 1, 0, 540, 5325233495220169, '37.988585', '23.722194'),
(8, 'kostasthan4', 'Κώστας', 'Θανασόπουλος', 'Ικαρίας 6, Γέρακας', 15344, 2106048598, 'kostasthanaso@yahoo.com', '12fun12', 1, 0, 10, 1654896578965245, '38.015302', '23.854202'),
(9, 'chriskal', 'Χριστίνα', 'Καλογήρου', 'Δαιρπέφελδ 5, Aθήνα', 11144, 6954897126, 'christk84@hotmail.com', 'christ12christ', 1, 0, 85, 6598481532326500, '38.021527', '23.735035'),
(10, 'ismipan', 'Ισμήνη', 'Παναγιωτόπουλου', 'Έκτορος 3 Κηφισιά', 14561, 6974125368, 'ismini73@hotmail.com', 'ismini123pan', 1, 0, 150, 1616200005847822, '38.068881', '23.800614'),
(11, 'dhmixron', 'Δήμητρα-Ελένη', 'Χρονοπούλου', 'Περικλέους 29 Καλλιθέα ', 17673, 6945858030, 'dhmelench@yahoo.com', 'eleni82dimitra', 1, 0, 0, 2023060584126972, '37.950201', '23.698349'),
(12, 'sablil', 'Sabien', 'Lilaj', 'Φιλαδελφέως 24 Αθήνα', 11253, 2104587326, 'sabienlil@hotmail.com', 'sabien24', 1, 0, 35, 6549875410203650, '38.006870', '23.734193');

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
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`CompanyID`) REFERENCES `companyservice` (`CompanyID`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `companyservice` (`CompanyID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
