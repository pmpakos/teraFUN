-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2018 at 03:59 πμ
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teraFUN`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
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
-- Dumping data for table `adminprofile`
--

INSERT INTO `adminprofile` (`AdminProfileID`, `TotalAmount`, `Email`, `NameOfTeraFUN`, `Address`, `PostalCode`, `TelephoneNumber`, `Description`, `BankAccount`) VALUES
(1, 341, 'teraFUN@gmail.com', 'teraFUN', 'Ηρώων Πολυτεχνείου 13', 15244, 2106812345, 'Start-up νερντ φοιτητών', 6554788231098789);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
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
-- Triggers `booking`
--
DELIMITER $$
CREATE TRIGGER `Ενημέρωση event` AFTER INSERT ON `booking` FOR EACH ROW UPDATE event, parent, companyservice, adminprofile  SET event.TicketCounter = event.TicketCounter + new.NumberOfTickets, event.IncomingCash = event.IncomingCash + (event.Cost * new.NumberOfTickets*0.9), parent.Points=parent.Points-(event.Cost * new.NumberOfTickets), companyservice.Points=companyservice.Points+(event.Cost * new.NumberOfTickets)*0.9, adminprofile.TotalAmount=adminprofile.TotalAmount+(event.Cost * new.NumberOfTickets)*0.1 WHERE event.EventID = new.EventID AND  parent.ParentID = new.ParentID AND companyservice.CompanyID = event.CompanyID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `companyservice`
--

CREATE TABLE `companyservice` (
  `CompanyID` int(10) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `CompanyName` varchar(25) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` int(5) NOT NULL,
  `TelephoneNumber` bigint(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `AFM` int(9) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `BankAccount` varchar(32) NOT NULL,
  `WebPage` text,
  `Description` text NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `Points` int(10) NOT NULL DEFAULT '0',
  `PhotosFolder` text,
  `Latitude` decimal(20,14) NOT NULL,
  `Longitude` decimal(20,14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companyservice`
--

INSERT INTO `companyservice` (`CompanyID`, `Username`, `CompanyName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `AFM`, `Password`, `BankAccount`, `WebPage`, `Description`, `Status`, `Points`, `PhotosFolder`, `Latitude`, `Longitude`) VALUES
(15, 'giga21', 'Gigatech', ' Εριγόνης 3, Κάτω Πετράλωνα', 11854, 2107455197, 'gigatech1@gmail.com', 145896215, 'giga21', 'GR1601101250000000012300695', 'http://www.gigatech.com', 'Οι γονείς/ συνοδοί μπορούν είτε να βοηθούν τα παιδιά στα εργαστήρια είτε να απολαμβάνουν τον καφέ τους έχοντας οπτική επαφή με τα παιδιά. Ο χώρος του καφέ είναι ένα αίθριο, που απευθύνεται σε... εναλλακτικούς γονείς, αφού δεν θυμίζει κλασική καφετέρια. ', 0, 0, 'images/user_profiles/giga21/user.png', '37.97399400000000', '23.70918069999993'),
(16, 'myplayce', 'My Playce', 'Αδριανείου 44, Ελληνορώσων', 11525, 2106844215, 'my.playce@hotmail.com', 999999999, '12345', 'GR1600012839501101250054860', 'myplayce@hotmail.com', 'Ένας διαφορετικός παιδικός σταθμός για την δημιουργική απασχόληση των παιδιών σας τις απογευματινές ώρες! Κάθε εβδομάδα διοργανώνουμε πολλές διαφορετικές εκδηλώσεις, για κάθε γούστο. Διαλέξτε μεταξύ θεατρικών παιχνιδιών, μαθήματα τραγουδιού, κυνήγι θησαυρού, εργαστήρια παρασκευής γλυκισμάτων και πολλά πολλά ακόμα! ', 1, 0, 'images/user_profiles/myplayce/user.png', '38.00001300000000', '23.77339099999995'),
(17, 'smartplay', 'Smart Play', 'Αγίου Δημητρίου, Χριστούπολη', 19004, 6987635412, 'smartplay@hotmail.com', 145289654, 'lalala', 'GR1670456330069501012532500', 'http://www.smartplayland.gr', 'Ελάτε να παίξουμε μαζί στον μεγαλύτερο παιδότοπο που υπάρχει στην Αθήνα! Παραμυθένια κάστρα, γιγάντιαιες τσουλήθρες, φουσκωτά παιχνίδια και πολλά πολλά ακόμη υποχόνται στο παιδί σας μερικές ώρες ατελείωτης διασκέδασης.', 1, 0, 'images/user_profiles/smartplay/Smart-Play-logo-2.jpg', '37.97995390000000', '23.91578129999994'),
(18, 'englishinaction', 'English In Action', 'Βυζαντίου & Βιθυνίας 17, Καλογρέζα', 14234, 2102784569, 'englishaction@yahoo.com', 541874521, '14521', 'GR1633482230695053783612468', 'http://www.englishaction.com', 'Το ENGLISH IN ACTION είναι ένα σύγχρονο Φροντιστήριο Ξένων Γλωσσών που βρίσκεται στη Νέα Ιωνία και παρέχει πιστοποιημένα μαθήματα ξένων γλωσσών και υπολογιστών.\n\nΣτο φροντιστήριό μας μικροί και μεγάλοι μαθαίνουν ξένες γλώσσες και πληροφορική σωστά και ευχάριστα, δίπλα σε ένα έμπειρο και εξειδικευμένο προσωπικό.', 1, 0, 'images/user_profiles/englishinaction/user.png', '38.03697980000000', '23.76707590000001'),
(19, 'advPark', 'Adventure Park', 'Epar.Od. Malakasas-Markopoulou', 19011, 6947905699, 'advanture@hotmail1.com', 745214965, '12345', 'GR1600088230695053789500000', 'http://adventure-park.gr/index.php', '\"Δυο βήματα\" από την Αθήνα, στη Μαλακάσα, το Adventure Park υπόσχεται ώρες δράσης και για όσους δεν έχουν διαρκώς την πολυτέλεια να εγκαταλείπουν τα τείχη της πόλης για περισσότερο από μία ημέρα.\nΤο Adventure Park είναι ένας χώρος αναψυχής και διημέρευσης όπου διοργανώνονται δραστηριότητες που έχουν σχέση με τη φύση. Οι επισκέπτες επιλέγουν να «πετάξουν» από δένδρο σε δένδρο, σε ύψος μέχρι 15 μέτρων με τη χρήση ειδικού εξοπλισμού.\nΟι δοκιμασίες του Adventure Park είναι ”προσιτές” σε όλους , μικρούς - μεγάλους, τολμηρούς και... λιγότερο τολμηρούς, αφού πρόκειται για διαφορετικές διαδρομές με κλιμακούμενο βαθμό δυσκολίας και ύψη.\nΠέραν του ειδικού εξοπλισμού που παρέχεται, όλοι οι συμμετέχοντες περνούν από προηγούμενη υποχρεωτική εκπαίδευση και για την πλέον εύκολη διαδρομή.\nΔεν χρειάζεται να είστε γυμνασμένοι, ειδήμονες της αναρρίχησης, ή λάτρεις των extreme sports , αφού οι διαδρομές του είναι για όλους, αρκεί να ακολουθήσετε τις οδηγίες που σας δίνει το προσωπικό μας κατά την υποχρεωτική εκπαίδευση και τον κανονισμό ασφαλείας και λειτουργίας.\nΤο Adventure park αποτελεί μια νέα δραστηριότητα που γνωρίζει παγκόσμια επιτυχία. Ανταποκρίνεται σε ένα τρόπο ζωής με έντονη ψυχαγωγία και σε μία τάση επιστροφής στη φύση δίνοντας παράλληλα έμφαση στην περιβαντολογική μας εκπαίδευση και δράση.', 1, 0, 'images/user_profiles/advPark/a_1000.jpg', '38.23307190000000', '23.80827869999996'),
(20, 'paramyth', 'Παραμυθοχώρα', 'Αναπαύσεως 14 & Τυρταίου 1', 11636, 2109216346, 'paramyt@hotmail1.com', 124589632, '12345', 'GR1600088230695053789500000', 'http://www.paramythohora.gr/', 'H Παραμυθοχώρα απο το Οκτώβριο του 2004  στεγάζεται σ\'ένα πανέμορφο νεοκλασικό κτήριο του 1880 πλήρως ανακαινισμένο (πρώην Bajazzo),πίσω από τους στύλους Ολυμπίου Διός στο Μετς. Ένας παραμυθένιος πολυχώρος φτιαγμένος με πολύ μεράκιΝεράιδες,ξωτικά,πύργοι μυθικοί και μία μαγική αυλή,σας περιμένουν για ονειρεμένα ταξίδια, προσφέροντας ποιοτική ψυχαγωγία στα παιδιά!', 1, 0, 'images/user_profiles/paramyth/Screenshot from 2018-03-01 02-07-03.png', '37.96662690000000', '23.73425550000002'),
(21, 'Kiddie', 'Kiddie Creative Time', 'Α. Παπανδρέου 9, Χαλάνδρι', 15234, 2106728382, 'kiddie@hot.com', 854123651, '21032', 'GR1670456330069501012532500', 'https://www.facebook.com/kiddiebyplakas/', 'Ένας ξεχωριστός πολυχώρος δραστηριοτήτων στο Χαλάνδρι υποδέχεται τα παιδιά προσχολικής ηλικίας με εκπαιδευτικά προγράμματα, όπως η αρχιτεκτονική και η ρομποτική, φυσικά κομμένες και ραμμένες στα μέτρα τους, αλλά και με καλλιτεχνικές δραστηριότητες όπως τα εικαστικά, το θέατρο και το χορόδραμα. Το φετινό πρόγραμμα ξεκινά το Σάββατο 9 Σεπτεμβρίου.', 1, 0, 'images/user_profiles/Kiddie/kiddie.jpg', '38.02208660000001', '23.79989520000004'),
(22, 'paidotropos', 'Παιδότροπος', 'Λεωφ. Καλαμακίου 97', 17455, 2109812555, 'paido@hot.com', 145236985, '12547', 'GR1600012839501541250054860', 'http://paidotropos.gr/', 'Δραστηριότητες του χώρου που εκτονώνουν, ηρεμούν & εκπαιδεύουν τους μικρούς μας πρωταγωνιστές και θα λειτουργήσουν από το μήνα Σεπτέμβριο:\n\nΕκπαιδευτικά & επιμορφωτικά σεμινάρια για παιδιά και γονείς\nΠαιδική Yoga & Pilates\nΠαιδική Zumba\nΒιβλιοθήκη (Ανάγνωση, συζήτηση, παρουσιάσεις βιβλίων & παραμυθιών)\nΔιαδραστικό Αμφιθέατρο (Προβολές εκπαιδευτικού υλικού, παραστάσεις κ.λπ.)\nΠαιδική Disco\nΚαραόκε\nΠαιδικό Θέατρο\nΚαραγκιόζης\nΚλόουν\nΑνιματέρ\nΚουζίνα', 1, 0, 'images/user_profiles/paidotropos/LOGO_FINAL_209X47.png', '37.91946890000000', '23.72061039999994'),
(23, 'mindtrap', 'THE MINDTRAP', 'Μητροπόλεως 74', 10563, 2103254850, 'mind@hota.com', 145874521, '14521', 'GR1600012839501101250054860', 'https://themindtrap.com/', 'Η γνωστότερη εταιρεία με Escape Rooms στην Ελλάδα επιστρέφει και για τους μικρούς μας φίλους! Διαλέξτε από την τεράστια ποικιλλία μας από ιστορίες και χαρίστε στα παιδιά σας μία εμπειρία που θα τους μείνει αξέχαστη. ', 1, 0, 'images/user_profiles/mindtrap/51e1f8e701669a7cc94fc899a42a7c8c39672a94-themindtraplogo.jpeg', '37.97605620000000', '23.72787510000001'),
(24, 'fairpl', 'Fair Play', 'Λεωφόρος Ανθούσης 12,Παλλήνη', 15349, 2106666628, 'fairpl@hotmai.com', 652145236, '14785', 'GR1670456330069501962532500', 'http://fairplay5x5.gr/', 'Party στο Fair Play για στιγμές που αξίζουν να τις θυμάστε… Επιλέξτε το Fair Play για το party σας και θα φροντίσουμε να κάνουμε την στιγμή μια ωραία ανάμνηση που θα την θυμάστε για καιρό. Η διοργάνωση party για μικρούς και μεγάλους γίνετε με μεγάλη φροντίδα και σεβασμό και διαμορφώνεται ειδικά για εσάς. Ο χώρος μας είναι διαμορφωμένος για να απολαύσετε την ροή του πάρτι σας καθ΄ όλη την διάρκεια και να δείτε τη δράση σε εξέλιξη.', 0, 0, 'images/user_profiles/fairpl/Screenshot from 2018-03-01 02-38-34.png', '38.00941800000000', '23.87106199999994');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EventID` int(10) NOT NULL,
  `CompanyID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `DateEvent` date NOT NULL,
  `Hour` varchar(25) NOT NULL,
  `Duration` int(11) NOT NULL,
  `TicketCounter` int(10) NOT NULL DEFAULT '0',
  `IncomingCash` int(10) NOT NULL DEFAULT '0',
  `Cost` int(10) NOT NULL,
  `Description` text NOT NULL,
  `PhotosFolder` text,
  `IsOffer` int(1) NOT NULL DEFAULT '0',
  `Visits` int(10) NOT NULL DEFAULT '0',
  `Latitude` decimal(20,14) NOT NULL,
  `Longitude` decimal(20,14) NOT NULL,
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
-- Dumping data for table `event`
--

INSERT INTO `event` (`EventID`, `CompanyID`, `Name`, `Address`, `DateEvent`, `Hour`, `Duration`, `TicketCounter`, `IncomingCash`, `Cost`, `Description`, `PhotosFolder`, `IsOffer`, `Visits`, `Latitude`, `Longitude`, `MaxCapacity`, `Indoor`, `MinAge`, `MaxAge`, `Fun`, `Sport`, `Education`, `Team`, `TagDescription`) VALUES
(11, 16, 'Κηνύγι Θησαυρού', 'Αδριανείου 44, Ελληνορώσων', '2018-02-16', '12:30πμ', 120, 0, 0, 70, 'Το πόσο αγαπάνε τα παιδιά το κηνύγι θησαυρού είναι γνωστό! Σας καλούμε να έρθετε να παίξετε μαζί μας και ακολουθώντας ένα ένα τα καλά κρυμμένα στοιχεία να ανακαλύψετε τον θησαυρό! ', 'images/events/event11', 0, 1, '38.00001300000000', '23.77339099999995', 20, 0, 5, 12, 0, 0, 0, 0, 'κηνύγι θησαυρού στοιχεία μυστήριο κρυφό παιχνίδι ομάδες έπαθλο'),
(12, 16, 'Κηνύγι Θησαυρού Vol 2', 'Αδριανείου 44, Ελληνορώσων', '2018-03-24', '3:00πμ', 120, 0, 0, 70, 'Το πόσο αγαπάνε τα παιδιά το κηνύγι θησαυρού είναι γνωστό! Σας καλούμε να έρθετε να παίξετε μαζί μας και ακολουθώντας ένα ένα τα καλά κρυμμένα στοιχεία να ανακαλύψετε τον θησαυρό! ', 'images/events/event12', 0, 1, '38.00001300000000', '23.77339099999995', 20, 0, 5, 12, 0, 0, 0, 0, 'κηνύγι θησαυρού στοιχεία μυστήριο κρυφό παιχνίδι ομάδες έπαθλο'),
(13, 16, 'Χορεύοντας Rock n\' Roll', 'Αδριανείου 44, Ελληνορώσων', '2018-03-10', '3:00πμ', 180, 0, 0, 100, 'Ήρθε η ώρα για λίγο χορό! Τα παιδιά σας μπορούν να συμμετέχουν σε μία εύκολη χορογραφία την οποία μπορούν να παρουσιάσουν στο τέλος του μαθήματος. Εξοικειώνονται με τον ρυθμό και την μουσική της δεκατίας του 50!', 'images/events/event13', 0, 1, '38.00001300000000', '23.77339099999995', 10, 0, 7, 10, 0, 0, 0, 0, 'χορός ζευγάρια μουσική ρυθμός χορευτικό rock roll shake dance lesson μάθημα'),
(14, 16, 'Παρασκευή Muffin!', 'Αδριανείου 44, Ελληνορώσων', '2018-01-15', '6:00πμ', 90, 0, 0, 150, 'Όλοι οι γονείς εύχονται το παιδί τους να μαγείρευε καμιά φορά γι\' αυτούς! Στο εργαστήριο αυτό τα παιδιά φτιάχνουν την δική τους ζύμη για λαχταριστά muffin και ίσως ανακαλύψουν την αγάπη τους για την μαγειρική!', 'images/events/event14', 0, 0, '38.00001300000000', '23.77339099999995', 10, 0, 8, 13, 0, 0, 0, 0, 'μαγειρική κέικ μάγειρες ζαχαροπλαστική γλυκό muffin κεκάκι παρασκευή κουζίνα'),
(15, 16, 'Παρασκευή muffin vol2 ', 'Αδριανείου 44, Ελληνορώσων', '2018-04-13', '7:00πμ', 90, 0, 0, 150, 'Το επιτυχημένο εργαστήριο παρασκευής muffin επιστρέφει! Τα παιδιά σας τα φτιάχνουν και εσείς τα δοκιμάζετε! Στο εργαστήριο αυτό σκεφτήκαμε να δώσουμε και βραβείο στα 5 νοστιμότερα muffin! Για να δούμε ποιος θα είναι ο νικητής!', 'images/events/event15', 0, 6, '38.00001300000000', '23.77339099999995', 15, 0, 5, 12, 0, 0, 0, 0, 'μαγειρική κέικ μάγειρες ζαχαροπλαστική γλυκό muffin κεκάκι παρασκευή κουζίνα βραβείο διαγωνισμός παιχνίδι'),
(16, 16, 'Κατασκευή Κεραμεικών', 'Αδριανείου 44, Ελληνορώσων', '2018-05-04', '1:30πμ', 240, 0, 0, 200, 'Ένα εργαστήρι που λατρεύουν τα παιδιά! Το κάθε παιδί έχει την δυνατότητα να κατασκευάσει με πηλό την δικιά του κούπα, μπόλ ή ότι άλλο έχει το μυαλό του. Αφού ψήσουμε τον πηλό κάνοντας ένα ευχάριστο διάλειμμα μετά τα παιδιά ζωγραφίζουν τα κεραμεικά που κατασκεύασαν', 'images/events/event16', 0, 0, '38.00001300000000', '23.77339099999995', 20, 0, 5, 10, 0, 0, 0, 0, 'κεραμεικά πήλινα κατασκευή τέχνη ζωγραφική ζωγραφίζει κούπα μπόλ κατασκεύασμα δημιουργία'),
(17, 17, 'Πειρατικό Πάρτυ', 'Αγίου Δημητρίου, Χριστούπολη', '2018-02-18', '12:00μμ', 240, 0, 0, 100, 'Ήρθαν οι απόκριες! Ντυθείτε μαζί με το παιδί σας και ελάτε να γιορτάσουμε τις απόκριες σε ένα ανεπανάλειπτο πειρατικό πάρτυ μασκέ! Παιχνίδια μόνο για πειρατές σας περιμένουν καθώς και άλλες πολλές εκπλήξεις. Βάλτε τα δυνατά σας επειδή οι καλύτεροι μασκαρεμένοι κερδίζουν έπαθλο! Στο πάρτυ αυτό όμως έχουμε πολλά δώρα να δώσουμε.. ', 'images/events/event17', 0, 1, '37.97995390000000', '23.91578129999994', 100, 0, 3, 15, 0, 0, 0, 0, 'πάρτυ απόκριες μασκέ μασκαρεμένοι γονείς παιδιά σαρακοστή παιχνίδι δώρα έπαθλο '),
(18, 17, 'Διαγωνισμός Τραμπολίνο', 'Αγίου Δημητρίου, Χριστούπολη', '2018-03-23', '10:00πμ', 60, 0, 0, 50, 'Πήραμε καινούργια τραμπολίνο και το γιορτάζουμε. Φέρτε τα παιδιά σας σε αυτό το ξέφρενο πάρτυ χοροπηδητού που δεν θα ξεχάσει κανείς! ', 'images/events/event18', 0, 1, '37.97995390000000', '23.91578129999994', 10, 0, 5, 15, 0, 0, 0, 0, 'τραμπολίνο παιδότοπος πάρτυ προσφορά άθληση χοροπηδητό φουσκωτά'),
(19, 17, 'Βραδιά Ταχυδακτυλουργών', 'Αγίου Δημητρίου, Χριστούπολη', '2018-03-30', '7:00μμ', 60, 0, 0, 100, 'Καλέσαμε τους καλύτερους ταχυδαχτυλουργούς στην Αθήνα για ένα μοναδικό σόου έκπληξη, εντυπωσιακό για μικρούς και μεγάλους! Κατά την διάρκεια της εκδήλωσης ο παιδότοπος μας θα είναι ανοιχτός όλη την μέρα για ατελείωτη διασκέδαση!', 'images/events/event19', 0, 2, '37.97995390000000', '23.91578129999994', 100, 0, 2, 18, 0, 0, 0, 0, 'ταχυδακτυλουργος κολπα μάγος μαγικά σόου εκδήλωση παράσταση παιδιά '),
(20, 18, 'Έναρξη τμήματος Proficiency', 'Βυζαντίου & Βιθυνίας 17, Καλογρέζα', '2018-03-03', '7:00μμ', 60, 0, 0, 50, 'Ελάτε στην englishinaction για να προετοιμάσετε το παιδί σας σωστά για το πτυχίο proficiency! Ελάτε να γνωρίσετε το έμπειρο προσωπικό μας και να εγγραφείτε καθώς τα μαθήματα ξεκινούν αμέσως!', 'images/events/event20', 0, 0, '38.03697980000000', '23.76707590000001', 10, 0, 10, 18, 0, 0, 0, 0, 'μάθημα αγγλικά ξένες γλώσσες εξμάθηση φροντιστήριο δίπλωμα proficiency'),
(21, 18, 'Όταν τα αγγλικά γίνονται παιχνίδι', 'Βυζαντίου & Βιθυνίας 17, Καλογρέζα', '2018-03-17', '5:30μμ', 120, 0, 0, 200, 'Όλα είναι ενδιαφέροντα εάν τα παρουσίασεις με τον σωστό τρόπο σε ένα παιδί! Στην εκδήλωση αυτή το παιδί σας θα ακούσει απλές ιστορίες, θα τραγουδήσει αγγλικά τραγουδάκια, θα κάνει καινούργιους φίλους όσο εξοικειώνεται με την αγγλική γλώσσα μέσα από το παιχνίδι!', 'images/events/event21', 0, 0, '38.03697980000000', '23.76707590000001', 30, 0, 5, 10, 0, 0, 0, 0, 'παιχνίδι αγγλικά μάθημα τραγούδια ομαδικά παιχνίδια διασκέδαση '),
(22, 19, 'Μάθημα αρχαρίων αναρρίχηση', 'Epar.Od. Malakasas-Markopoulou', '2018-04-07', '12:00πμ', 60, 0, 0, 50, 'Σας προσφέρουμε δοκιμαστικά μαθήματα σε όλες τις δραστηριότητες μας με σκοπό να γνωριστούμε και να δείτε τις πλήρως εξοπλισμένες εγκαταστάσεις μας! Τα παιδιά σας ταυτόχρονα, δοκιμάζοντας πολλά διαφορετικά πράγματα μπορούν να ανακαλύψουν τι τους αρέσει περισσότερο!', 'images/events/event22', 0, 0, '38.23307190000000', '23.80827869999996', 15, 0, 10, 15, 0, 0, 0, 0, 'αναρρίχηση άθλημα φύση εξωτερικό σπορ βουνό ορειβασία σκαρφάλωμα τοίχος '),
(23, 19, 'Μάθημα αρχαρίων τοξοβολία', 'Epar.Od. Malakasas-Markopoulou', '2018-03-31', '11:00πμ', 60, 0, 0, 50, 'Σας προσφέρουμε δοκιμαστικά μαθήματα σε όλες τις δραστηριότητες μας με σκοπό να γνωριστούμε και να δείτε τις πλήρως εξοπλισμένες εγκαταστάσεις μας! Τα παιδιά σας ταυτόχρονα, δοκιμάζοντας πολλά διαφορετικά πράγματα μπορούν να ανακαλύψουν τι τους αρέσει περισσότερο!', 'images/events/event23', 0, 0, '38.23307190000000', '23.80827869999996', 15, 0, 8, 15, 0, 0, 0, 0, 'τοξοβολια αθληση αθλημα στοχος σπορ βελη εξωτερικος χωρος σπορ'),
(24, 20, 'Μαθαίνοντας μέσα από το θεατρικό παιχνίδι', 'Αναπαύσεως 14 & Τυρταίου 1', '2018-04-27', '7:00μμ', 120, 0, 0, 100, 'Ένα ιδιαίτερο θεατρικό παιχνίδι στο οποίο τα παιδιά μαθαίνουν αγγλικά.. διασκεδάζοντας! Παιδαγωγοί με άριστη γνώση της αγγλικής στήνουν ένα παραμύθι βάζοντας και τα παιδιά σας να συμμετέχουν σε αυτό. Χρησιμοποιώντας μόνο απλά αγγλικά και την γλώσσα του σώματος τα παιδιά έχουν την ευκαιρία μέσα σε δύο ώρες να εξασκήσουν τα αγγλικά τους, με κίνητρο το παιχνίδι! ', 'images/events/event24', 0, 0, '37.96662690000000', '23.73425550000002', 30, 0, 5, 10, 0, 0, 0, 0, 'αγγλικά θέατρο παιχνίδι μαθήματα ξένες γλώσσες παιδιά παραμύθι παράσταση μάθημα'),
(25, 20, 'Sci-fi θέατρο \"Το απίθανο ταξίδι\"', 'Αναπαύσεως 14 & Τυρταίου 1', '2018-03-24', '1:00μμ', 120, 0, 0, 150, 'Sci-fi θέατρο έχετε ξαναδεί; Να, που ήρθε η ώρα! Η Μικρή Σκηνή της Στέγης γίνεται κινηματογραφικό πλατό και μια παράσταση για όλη την οικογένεια μας ταξιδεύει στον χρόνο, στην εποχή του βωβού κινηματογράφου, τότε που ο Γάλλος πρωτοπόρος σκηνοθέτης και ταχυδακτυλουργός Ζωρζ Μελιές γύριζε την πρώτη ταινία επιστημονικής φαντασίας, Ταξίδι στο Φεγγάρι (1902). \n\nΑυτός είναι και ο \"αόρατος\" πρωταγωνιστής της μαγικής παράστασης που στήνει ο διακεκριμένος κινηματογραφιστής Άγγελος Φραντζής, με έναν τριμελή θίασο, ζωντανή μουσική, ψηφιακές προβολές, κινηματογραφικά εφέ, χορό και κίνηση. \n\nΘέατρο ή σινεμά; Επιστημονική φαντασία ή περιπέτεια ενηλικίωσης; \nΤο απίθανο ταξίδι είναι, πάνω απ’ όλα, ένας ύμνος στην \"απίθανη\" δύναμη της φαντασίας. ', 'images/events/event25', 0, 0, '37.96662690000000', '23.73425550000002', 30, 0, 5, 15, 0, 0, 0, 0, 'Θέατρο Παράσταση Παιδική Αλεξία Πετροπούλου Αστρονομία sci fi '),
(26, 20, 'Η κα. Αστροφυσική και τα όνειρα των αστεριών', 'Αναπαύσεως 14 & Τυρταίου 1', '2018-04-07', '6:00μμ', 120, 0, 0, 200, '«Η κα Αστροφυσική και τα όνειρα των αστεριών» γράφτηκε για να παρουσιαστεί μια διασκεδαστική και ενδιαφέρουσα παράσταση γνώσης για την επιστήμη της Αστρονομίας και της Αστροφυσικής για τους μικρούς αλλά και τους μεγάλους φίλους.\n\nΜια ευφάνταστη παράσταση που θα δίνει τη δυνατότητα στο μαθητή να εμπλακεί με τη θεατρική δράση προσφέροντας του γνώση και αναζήτηση για τις βαθμίδες της εκπαίδευσης των θετικών επιστημών αλλά και της φιλοσοφίας διευρύνοντας τον ορίζοντα της γνώσης του μαθητή μέσω διαφόρων εννοιών της επιστήμης παραστατικά δοσμένες αλλά και μέσω προβολής εικόνων από το σύμπαν καθώς και κινούμενων σχεδίων για την κατανόηση του ηλιακού μας συστήματος και του πλανήτη μας.\n\nΜε πρωτότυπη μουσική σύμφωνη και αρμονική με τη θεματική του έργου η «κα Αστροφυσική και τα όνειρα των αστεριών»  και επαγγελματίες ηθοποιούς με μεγάλη προϋπηρεσία, επαγγελματική πορεία  στο καλό θέατρο, καλό παιδικό θέατρο και στο παιδί.', 'images/events/event26', 0, 0, '37.96662690000000', '23.73425550000002', 30, 0, 5, 15, 0, 0, 0, 0, 'σύμπαν αστέρια αστροφυσική διάστημα θέατρο παράσταση παιχνίδι ');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `ParentID` int(10) NOT NULL,
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
  `Points` int(10) NOT NULL DEFAULT '0',
  `BankAccount` bigint(16) NOT NULL,
  `Latitude` decimal(20,14) NOT NULL,
  `Longitude` decimal(20,14) NOT NULL,
  `VerificationCode` bigint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`ParentID`, `Username`, `FirstName`, `LastName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `Password`, `Status`, `CounterEvents`, `Points`, `BankAccount`, `Latitude`, `Longitude`, `VerificationCode`) VALUES
(1, 'nick_nif', 'Nikolaos', 'Nifos', 'Armodiou 24 Kantza', 15351, 2106041245, 'nicknifosgr@gmail.com', 'soeasy2', 2, 0, 0, 2569385547185520, '37.98976600000000', '23.86169800000000', 12345),
(3, 'petros21', 'Πέτρος', 'Μανταλίδης', 'Παναγιώτη Μικρόπουλου 40', 14121, 6985424125, 'mantalos.21@hotmail.com', '21212121', 1, 0, 0, 5135235251352352, '38.04043200000000', '23.76853800000000', 23456),
(4, 'liva10', 'Μάρκος', 'Λιβαγίνης', 'Δημ. Γούναρη 58 Περιστέρι', 12131, 6944255818, 'marko10@hotmail.com', 'marko21', 0, 0, 0, 5252332442549265, '38.00761700000000', '23.69236300000000', 34567),
(5, 'kalverg', 'Καλλιόπη', 'Βεργέτη', 'Αισχύλου 7 Χαλάνδρι', 15234, 2106821253, 'kalverg81@hotmail.com', 'aravia11', 1, 0, 0, 25353253245584, '38.02349300000000', '23.80667600000000', 45678),
(6, 'vagpal22', 'Βαγγέλης', 'Παλαιολόγου', 'Καραϊσκάκη 13 Δάφνη', 17234, 6975439843, 'palaiovag@hotmail.com', 'gasgas', 3, 0, 0, 4352352343523523, '37.95476000000000', '23.73391000000000', 56789),
(7, 'pantelnik', 'Νικηφόρος', 'Παντελιάδης', 'Κων/νου Παλαιολόγου 28, Αθήνα', 10438, 6949876311, 'nikifopante7@hotmail.com', 'olympiakos', 1, 0, 0, 5325233495220169, '37.98858500000000', '23.72219400000000', 67890),
(8, 'kostasthan4', 'Κώστας', 'Θανασόπουλος', 'Ικαρίας 6, Γέρακας', 15344, 2106048598, 'kostasthanaso@yahoo.com', '12fun12', 3, 0, 0, 1654896578965245, '38.01530200000000', '23.85420200000000', 78901),
(9, 'chriskal', 'Χριστίνα', 'Καλογήρου', 'Δαιρπέφελδ 5, Aθήνα', 11144, 6954897126, 'christk84@hotmail.com', 'christ12christ', 2, 0, 0, 6598481532326500, '38.02152700000000', '23.73503500000000', 89012),
(10, 'ismipan', 'Ισμήνη', 'Παναγιωτόπουλου', 'Έκτορος 3 Κηφισιά', 14561, 6974125368, 'ismini73@hotmail.com', 'ismini123pan', 1, 0, 0, 1616200005847822, '38.06888100000000', '23.80061400000000', 90123),
(11, 'dhmixron', 'Δήμητρα-Ελένη', 'Χρονοπούλου', 'Περικλέους 29 Καλλιθέα ', 17673, 6945858030, 'dhmelench@yahoo.com', 'eleni82dimitra', 1, 0, 0, 2023060584126972, '37.95020100000000', '23.69834900000000', 12340),
(12, 'sablil', 'Sabien', 'Lilaj', 'Φιλαδελφέως 24 Αθήνα', 11253, 2104587326, 'sabienlil@hotmail.com', 'sabien24', 3, 0, 0, 6549875410203650, '38.00687000000000', '23.73419300000000', 14201),
(17, 'kdot', 'Kendrick', 'Lamar', 'Filolaou 4', 16121, 2107010892, 'kdot@compton.com', '12345', 0, 0, 0, 1234123412341234, '37.96317180000000', '23.74637559999997', 67482),
(18, 'mancasil', 'Σύλβια Δήμητρα', 'Μάνκα', 'alkiviadou 5', 15231, 6999949621, 'silvia-manca@hotmail.com', 'starlet', 1, 0, 0, 1234123412123434, '38.01561320000000', '23.78856459999997', 24185);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `adminprofile`
--
ALTER TABLE `adminprofile`
  ADD PRIMARY KEY (`AdminProfileID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `companyservice`
--
ALTER TABLE `companyservice`
  ADD PRIMARY KEY (`CompanyID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `CompanyName` (`CompanyName`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `CompanyID` (`CompanyID`);
ALTER TABLE `event` ADD FULLTEXT KEY `TagDescription` (`TagDescription`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`ParentID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `AdminID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `adminprofile`
--
ALTER TABLE `adminprofile`
  MODIFY `AdminProfileID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `companyservice`
--
ALTER TABLE `companyservice`
  MODIFY `CompanyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `EventID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `ParentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `companyservice` (`CompanyID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
