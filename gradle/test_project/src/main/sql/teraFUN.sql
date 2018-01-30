-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: localhost
-- Χρόνος δημιουργίας: 30 Ιαν 2018 στις 12:43:44
-- Έκδοση διακομιστή: 5.7.21-0ubuntu0.16.04.1
-- Έκδοση PHP: 7.2.1-1+ubuntu16.04.1+deb.sury.org+1

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
(1, 'stevesam', 'Στέφανος', 'Σαμωνάς', 'steveofsam@gmail.com', 'lamar190808'),
(2, 'mancasil', 'Σύλβια', ' Μάνκα', 'silv.manca@gmail.com', 'starlet'),
(3, 'Odysseas21', 'Οδυσσέας', 'Δρόσσης', 'odysseas-11@hotmail.com', '2121'),
(4, 'nifo', 'Νικόλαος', 'Φώτος', 'nickfotosgr@gmail.com', '012345'),
(5, 'mofista', 'Φίλιππος', 'Στάμος', 'filipp_st@hotmail.com', 'chess123'),
(6, 'ntgvou', 'Νικόλαος', 'Βούλγαρης', 'voulgarisgn@gmail.com', 'deutsche'),
(7, 'pmpakos', 'Παναγιώτης', 'Μπάκος', 'pmpakos@hotmail.com', 'plamar190808');

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

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `companyservice`
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
  `BankAccount` bigint(16) NOT NULL,
  `WebPage` text,
  `Description` text NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `Points` int(10) NOT NULL DEFAULT '0',
  `PhotosFolder` text,
  `Latitude` decimal(20,14) NOT NULL,
  `Longitude` decimal(20,14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `companyservice`
--

INSERT INTO `companyservice` (`CompanyID`, `Username`, `CompanyName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `AFM`, `Password`, `BankAccount`, `WebPage`, `Description`, `Status`, `Points`, `PhotosFolder`, `Latitude`, `Longitude`) VALUES
(3, 'GIGATECH21', 'Gigatech', ' Εριγόνης 3, Κάτω Πετράλωνα', 11854, 2107455197, 'gigatech@hotmail.com', 657398323, 'giga1', 5436346254363462, 'http://www.gigatech.com', 'Οι γονείς/ συνοδοί μπορούν είτε να βοηθούν τα παιδιά στα εργαστήρια είτε να απολαμβάνουν τον καφέ τους έχοντας οπτική επαφή με τα παιδιά. Ο χώρος του καφέ είναι ένα αίθριο, που απευθύνεται σε... εναλλακτικούς γονείς, αφού δεν θυμίζει κλασική καφετέρια. \r\n\r\n', 1, 523, 'images/user_profiles/GIGATECH21/', '37.97399600000000', '23.70923100000000'),
(4, 'dem21', 'Dem', 'Τροπαίων 4, Αθήνα', 11364, 2106965324, 'dem@hotmail.com', 532532523, 'dem257', 5252342352523423, 'http://www.demathens.gr', '', 1, 588, 'images/user_profiles/dem21/', '38.00563400000000', '23.74470300000000'),
(5, 'myplayce', 'MY PLAYCE', 'Αδριανείου 44, Ελληνορώσων', 11525, 2106844215, 'monocyclo@hotmail.com', 532252325, '43232', 5354543435454343, 'http://www.myplayce.gr', '-ΔΗΜΙΟΥΡΓΙΚΗ ΑΠΑΣΧΟΛΗΣΗ \r\n-ΜΑΓΕΙΡΙΚΗΧΟΡΟΣ ΓΙΑ ΠΑΙΔΙΑ 14 Μ.\r\n-6 ΕΤΩΝ ΜΟΥΣΙΚΗΘΕΑΤΡΙΚΟ ΠΑΙΧΝΙΔΙ \r\n-PLAY GROUPS ΓΥΜΝ/ΚΗΣΥΜΒΟΥΛΕΥΤΙΚΗ ΓΟΝΕΩΝ ΘΕΜΑΤΑ ΠΑΙΔΙΟΥ', 1, 310, 'images/user_profiles/myplayce/', '38.00001700000000', '23.77339800000000'),
(6, 'SmartPlay', 'Smart Playfun', 'Αγίου Δημητρίου, Χριστούπολη', 19004, 6987635412, 'smartplay@hotmail.com', 14523532, '52332', 6346235263462352, 'http://www.smartplayland.gr', 'Ελάτε να παίξουμε μαζί στον μεγαλύτερο παιδότοπο που υπάρχει στην Αθήνα!', 1, 460, 'images/user_profiles/SmartPlay/', '37.98414200000000', '23.91286500000000'),
(7, 'sefer', 'SeferFun', 'Φιλικών 86 Περιστέρι', 12131, 2105755197, 'sefer@gmail.com', 156987452, '12345', 1234569878456336, 'http://www.seferFun.com', 'Ένας μοναδικός πολυχώρος ψυχαγωγίας για μικρούς που όμως σίγουρα θα εντυπωσιάσει και τους μεγάλους. Εκτός από τις διασκεδαστικές εκδηλώσεις που διοργανώνονται ειδικά για παιδιά, ο παιδότοπος θα τα μεταφέρει στον βυθό της θάλασσας με το γιγάντιο χταπόδι του, τις γοργόνες και τα ψάρια. Οι γονείς θα μπορείτε να απολαύσετε τον καφέ σας μέσα σ’ ένα πειρατικό καράβι!', 1, 250, 'images/user_profiles/sefer/', '38.00063770000000', '23.69127650000000'),
(8, 'fairytale', 'Παραμυθοχωριό', 'Λεωφόρος Αναπαύσεως 18, Βριλήσσια', 15235, 2108155645, 'fairytale@otenet.gr', 698456125, '33333', 1654981235478964, 'http://www.facebook.com/fairytale.athens', 'Ένας ξεχωριστός παιδότοπος βγαλμένος από τα παραμύθια περιμένει τα παιδιά να τον ανακαλύψουν. Μέσα από το κουκλοθέατρο, τα παραμύθια, και το θεατρικό παιχνίδι, τα παιδιά έρχονται σε επαφή με την τέχνη και αφήνουν τη φαντασία τους να δουλέψει. Παράλληλα, ειδικά κάθε Τρίτη απόγευμα, διοργανώνεται τμήμα πιλάτες για ενήλικες ενώ τα παιδιά απασχολούνται δημιουργικά. Αν μάλιστα, είστε καινούρια μαμά, στον χώρο διοργανώνονται και μαθήματα baby yoga για να χαλαρώσετε παρέα με το μωράκι σας.', 1, 50, 'images/user_profiles/fairytale/', '38.04347150000000', '23.84233440000000'),
(9, 'krataios', 'Α.Σ. ΚΡΑΤΑΙΟΣ', 'Χαριλάου Τρικούπη 17, Γλυφάδα', 16675, 2109658485, 'krataios@gmail.com', 194857382, 'askrataios', 9584372819384732, 'http://www.krataosas.gr', 'Προφίλ Τεχνών\r\n\r\nΤο Kick Boxing είναι ένα δυναμικό άθλημα και προσφέρει άριστη εκγύμναση ολόκληρου του σώματος. Ενισχύει την εκρηκτικότητα και ευλυγισία του σώματος καθώς αυξάνει την αρμονία και ισορροπία του μθικού συστήματος. Κατάληλο για αποτελεσματική αυτοάμυνα.\r\n\r\nΠυγμαχια-Boxing. Κλασσική και η πιο αναγνωρισμένη πολεμική τέχνη. Προσφέρει δύναμη και ταχύτητα ιδιαίτερα στους άνω μύς και πόδια. Βοηθάει πολύ αποτελεσματικά στο αναπνευστικό σύστημα προσδίδοντας υψηλές αντοχές και υψηλά αντανακλαστικά.', 1, 200, 'images/user_profiles/krataios/', '37.88485600000000', '23.74683000000000'),
(10, 'fukifisia', 'FU JOW PAI ΚΗΦΙΣΙΑΣ', 'Αριστοτέλους 18, Πολιτεία, Κηφισιά ', 14563, 6985478125, 'fujowkif@gmail.com', 23904392, 'fujow', 293845782123406, 'http://www.fukifisia.gr', 'Προφίλ Τέχνης\r\n\r\nΤο φου τζο πάι, είναι ένα ακόμα σύγχρονο κινεζικό στιλ - «σύγχρονο» με την έννοια ότι ή γενεαλογία του εμφανίζεται στα μέσα του 19ου αιώνα, με το δάσκαλο Ουόνγκ Μπιλ Χονγκ (1841-1934), ο οποίος είχε μελετήσει το στιλ χανγκ γκαρ μέχρι που κάποια στιγμή μαθήτευσε κοντά σε κάποιον μοναχό ο οποίος και του δίδαξε τα επιπλέον στοιχεία που πρόσθεσε στο χανγκ γκαρ για να δημιουργήσει το σημερινό φου τζο πάι. Διάδοχος του Ουόνγκ Μπιλ Χονγκ και συνεχιστής του στο σύστημα ήταν ο ανιψιός του, Ουόνγκ Μουν Τόι (1907-1960) ο οποίος και το μετέφερε στις ΗΠΑ, ενώ ακόμα μεγαλύτερη άνθιση γνώρισε μετά τη δεκαετία του 1960 από το μαθητή του Ουόνγκ Μουν Τόι, Ουάι Χονγκ Νγκ (γ. 1938).\r\n\r\nH ενασχόληση με το Fu Jow Pai από την παιδική ηλικία συμβάλλει στην μικτή πλευρίωση του εγκεφάλου καθώς και στη σωστή διαπαιδαγώγηση περνώντας θετικά μηνύματα στο υποσυνείδητο των παιδιών. Παράλληλα, το παιδί αναπτύσσει εσωτερική πειθαρχία και αποκτά πρότυπα για την ζωή του. Ευπρόσδεκτοι είναι οι άνθρωποι όλων των ηλικιών που προσδοκούν να συνδυάσουν την γυμναστική στο πλαίσιο των αρχών του Fu Jow Pai.', 1, 0, 'images/user_profiles/fukifisia/', '38.08666200000000', '23.83272800000000'),
(11, 'orionas', 'A.Σ. ΩΡΙΩΝΑΣ ΠΑΓΚΡΑΤΙΟΥ', 'Β.Λάσκου 37 και Αγ.Φανουρίου, Παγκράτι', 11633, 6945269871, 'orionaspag@hotmail.com', 840194851, 'orionas21', 30192847381021, 'http://www.orionaspag.blogspot.com', 'Ο Α.Σ Ωρίωνας είναι αναγνωρισμένος σύλλογος από τη Γενική Γραμματεία Αθλητισμού και όλοι οι δάσκαλοι και εκπαιδευτές είναι έμπειροι και διαπιστευμένοι ο καθένας στον χώρο του. \r\n\r\nΠροφίλ Δασκάλου\r\n\r\nMάκης Ποτήρης: Ο Μάκης Ποτήρης ξεκίνησε την ενασχόληση με το Aikido τον Φεβρουάριο του 1998 σε ηλικία 20 ετών στο FukuShinKan dojo (Aθήνα) υπο την καθοδήγηση του sensei Γιώργου Κολιόπουλου (6th dan Aikikai). Κατα την πολυετή ενασχόληση με το Αikido έχει συμμετάσχει σε σεμινάρια με κορυφαίους δασκάλους όπως:W. Smith, G. Jones, P. Brady, K. Hayward, P. Smith, S. Sugano, Y. Kobayashi, T. Mori, T. Sugawara, M. Minegishi, C. Tissier, B.E. Olsen, P. Guillemin κ.α. Είναι κάτοχος 3 dan.', 1, 100, 'images/user_profiles/orionas/', '37.96506200000000', '23.75151500000000'),
(12, 'EnInAct', 'English In Action', 'Βυζαντίου & Βιθυνίας 17, Καλογρέζα', 14234, 2102784569, 'englishaction@yahoo.com', 382910498, '41englishaction', 234598121857, 'http://www.englishaction.com', 'Το ENGLISH IN ACTION είναι ένα σύγχρονο Φροντιστήριο Ξένων Γλωσσών που βρίσκεται στη Νέα Ιωνία και παρέχει πιστοποιημένα μαθήματα ξένων γλωσσών και υπολογιστών.\r\n\r\nΣτο φροντιστήριό μας μικροί και μεγάλοι μαθαίνουν ξένες γλώσσες και πληροφορική σωστά και ευχάριστα, δίπλα σε ένα έμπειρο και εξειδικευμένο προσωπικό.', 1, 0, 'images/user_profiles/EnInAct/', '38.03698800000000', '23.76706500000000'),
(13, 'FUN2LEARN', 'FUN2LEARN', 'Βερελή 60, Άνω Γλυφάδα', 16561, 2109684562, 'fun2learn@yahoo.com', 698541236, '123456fun', 2205668945881230, 'http://www.fun2learn.com', 'Το FUN2LEARN - ΠΡΟΤΥΠΟ ΚΕΝΤΡΟ ΕΚΠΑΙΔΕΥΣΗΣ, Φροντιστήριο Ξένων Γλωσσών, που βρίσκεται στη Γλυφάδα, σας καλωσορίζει σε έναν υπερσύγχρονο διώροφο πολυχώρο, σχεδιασμένο με υψηλές προδιαγραφές.\r\n\r\nΣτόχος μας είναι η διάκριση και η επιτυχία των σπουδαστών μας κάθε ηλικίας στις απαιτήσεις της σύγχρονης παιδείας και επαγγελματικής αποκατάστασης. Ο δυναμικός συνδυασμός: Ξένες Γλώσσες - Σχολική Μελέτη - Πληροφορική διευκολύνει τη ραγδαία πρόοδο και βελτίωση των επιδόσεων των σπουδαστών, εξοικονομώντας χρόνο και επιπλέον κόστος.', 0, 0, 'images/user_profiles/FUN2LEARN/', '37.88389200000000', '23.75923300000000'),
(14, 'akadimos', 'Φροντιστήρια Ακάδημος', 'Λεωφ. Μαραθώνος 37', 15351, 2106045898, 'akadimos@gmail.com', 654896512, 'akadimias64', 3262584919113020, 'http://www.akadimos.edu.gr', 'Το Φροντιστήριο Μέσης Εκπαίδευσης Ακάδημος αποτελεί έναν σημαντικό φορέα παιδείας, που διακρίνεται για την παροχή εκπαιδευτικών υπηρεσιών υψηλών προδιαγραφών.\r\n\r\nΣτόχος μας, καθημερινά, είναι να καλύπτουμε το σύνολο των εκπαιδευτικών αναγκών των μαθητών μας. Με μία εξαιρετική ομάδα έμπειρων και καταρτισμένων καθηγητών, στεκόμαστε δίπλα στους μαθητές μας, που μας εμπιστεύονται τόσο για τη βελτίωση της σχολικής τους επίδοσης, όσο και για την άρτια προετοιμασία για την εισαγωγή τους στην Τριτοβάθμια εκπαίδευση.\r\n\r\nΗ επιλογή τους να απευθυνθούν στο φροντιστήριό μας μάς κάνει, σίγουρα, να αισθανόμαστε περηφάνια, αλλά μας προσδίδει και υψηλό αίσθημα ευθύνης απέναντί τους. Αφουγκραζόμαστε τις ανησυχίες τους για το μέλλον και την ανάγκη τους να αποκτήσουν όλα τα απαραίτητα εφόδια για να πετύχουν τους στόχους τους.\r\n\r\nΕμπνέουμε στους μαθητές μας την αξία της γνώσης, τους εξασφαλίζουμε το πλέον κατάλληλο πρόγραμμα σπουδών και… συμπορευόμαστε μαζί τους στην πραγματοποίηση των ονείρων τους.\r\n', 0, 0, 'images/user_profiles/akadimos/', '38.00399000000000', '23.87727000000000');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `event`
--

CREATE TABLE `event` (
  `EventID` int(10) NOT NULL,
  `CompanyID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Hour` varchar(25) NOT NULL,
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
-- Άδειασμα δεδομένων του πίνακα `event`
--

INSERT INTO `event` (`EventID`, `CompanyID`, `Name`, `Address`, `Date`, `Hour`, `TicketCounter`, `IncomingCash`, `Cost`, `Description`, `PhotosFolder`, `IsOffer`, `Visits`, `Latitude`, `Longitude`, `MaxCapacity`, `Indoor`, `MinAge`, `MaxAge`, `Fun`, `Sport`, `Education`, `Team`, `TagDescription`) VALUES
(1, 5, 'Πάρτυ Αποκριών', 'Αδριανείου 44, Ελληνορώσων', '2018-02-24', '11:00', 0, 0, 50, 'Ελάτε να γιορτάσουμε τις απόκριες στην myPLAYce. Φορέστε τις πιο δημιουργικές στολές και δηλώστε συμμετοχή στο διαγωνισμό μας! Ο νικητής κερδίζει δωρεάν είσοδο στον παιδότοπο του myPLAYce για έναν μήνα! Μη λείψει κανείς!', 'images/events/event1', 0, 0, '38.00001700000000', '23.77339800000000', 25, 1, 3, 12, 1, 0, 0, 1, 'Παιδότοπος Απόκριες Παιχνίδι Διασκέδαση Φεβρουάριος Παιδί Οικονομικό Διαγωνισμός'),
(2, 12, 'Έναρξη τμήματος Profficiency', 'Βερελή 60, Άνω Γλυφάδα', '2018-02-01', '17:00', 0, 0, 0, 'Ελάτε στην fun2learn για να προετοιμάσετε το παιδί σας σωστά για το πτυχίο proficiency! Ελάτε να γνωρίσετε το έμπειρο προσωπικό μας και να εγγραφείτε καθώς τα μαθήματα ξεκινούν αμέσως!', 'images/events/event2', 0, 0, '37.88389200000000', '23.75923300000000', 30, 1, 10, 18, 0, 0, 1, 0, 'Αγγλικά Proficiency Cambridge Michigan Φροντιστήριο Ξένων Γλωσσών Εκπαίδευση'),
(5, 9, 'Έναρξη τμημάτων kung fu για παιδιά', 'Χαριλάου Τρικούπη 17, Γλυφάδα', '2018-04-01', '11:30', 0, 0, 200, 'Έλατα να αθληθείτε στον ΑΘλητικό Σύλλογο Κραταιός. Εδώ τα παιδιά σας μπορούν να εκπαιδευτούν στις τεχνικές kung fu παρέχοντας την καλύτερη δυνατή ομάδα δασκάλων στην Αθήνα. Γραφτείτε τώρα για το πρώτο τμήμα kung fu για παιδιά που ξεκινάει τον Απρίλιο.', 'images/events/event5', 0, 0, '37.88485600000000', '23.74683000000000', 12, 1, 6, 14, 1, 1, 1, 1, 'Αθλητισμός Παιδεία kung fu Μηνιαίο Τμήμα Πολεμικές Τέχνες'),
(6, 10, 'Σεμινάριο fu jow για τους μικρούς μας φίλους', 'Αριστοτέλους 18, Πολιτεία, Κηφισιά', '2018-04-12', '19:00', 0, 0, 75, 'Όντας πιστοί στο ραντεβού μας με τη συνεχή προσπάθεια ένταξης παιδιών στην ορθή αντιμετώπιση των πολεμικών τεχνών το Fu Jow Κηφισιάς διοργανώνει σεμινάριο για τη χρήση του fu jow στο σχολείο. ', 'images/events/event6', 0, 0, '38.08666200000000', '23.83272800000000', 30, 1, 5, 18, 0, 1, 1, 0, 'Πολεμικές Τέχνες Σεμινάριο Fu Jow'),
(7, 3, 'Η κα. Αστροφυσική και τα όνειρα των αστεριών', 'Σταυροπούλου 33 & Σπαρτής, Πλ. Αμερικής', '2018-02-10', '15:00', 0, 0, 50, '«Η κα Αστροφυσική και τα όνειρα των αστεριών» γράφτηκε για να παρουσιαστεί μια διασκεδαστική και ενδιαφέρουσα παράσταση γνώσης για την επιστήμη της Αστρονομίας και της Αστροφυσικής για τους μικρούς αλλά και τους μεγάλους φίλους.\r\n\r\nΜια ευφάνταστη παράσταση που θα δίνει τη δυνατότητα στο μαθητή να εμπλακεί με τη θεατρική δράση προσφέροντας του γνώση και αναζήτηση για τις βαθμίδες της εκπαίδευσης των θετικών επιστημών αλλά και της φιλοσοφίας διευρύνοντας τον ορίζοντα της γνώσης του μαθητή μέσω διαφόρων εννοιών της επιστήμης παραστατικά δοσμένες αλλά και μέσω προβολής εικόνων από το σύμπαν καθώς και κινούμενων σχεδίων για την κατανόηση του ηλιακού μας συστήματος και του πλανήτη μας.\r\n\r\nΜε πρωτότυπη μουσική σύμφωνη και αρμονική με τη θεματική του έργου η «κα Αστροφυσική και τα όνειρα των αστεριών»  και επαγγελματίες ηθοποιούς με μεγάλη προϋπηρεσία, επαγγελματική πορεία  στο καλό θέατρο, καλό παιδικό θέατρο και στο παιδί.', 'images/events/event7', 0, 0, '38.00333300000000', '23.72997100000000', 150, 1, 3, 18, 1, 0, 0, 0, 'Θέατρο Παράσταση Παιδική Αλεξία Πετροπούλου Αστρονομία'),
(8, 3, 'Sci-fi θέατρο "Το απίθανο ταξίδι"', 'Αμοργού 20, Αθήνα 112 56', '2018-02-15', '17:00', 0, 0, 75, 'Sci-fi θέατρο έχετε ξαναδεί; Να, που ήρθε η ώρα! Η Μικρή Σκηνή της Στέγης γίνεται κινηματογραφικό πλατό και μια παράσταση για όλη την οικογένεια μας ταξιδεύει στον χρόνο, στην εποχή του βωβού κινηματογράφου, τότε που ο Γάλλος πρωτοπόρος σκηνοθέτης και ταχυδακτυλουργός Ζωρζ Μελιές γύριζε την πρώτη ταινία επιστημονικής φαντασίας, Ταξίδι στο Φεγγάρι (1902). \r\n\r\nΑυτός είναι και ο "αόρατος" πρωταγωνιστής της μαγικής παράστασης που στήνει ο διακεκριμένος κινηματογραφιστής Άγγελος Φραντζής, με έναν τριμελή θίασο, ζωντανή μουσική, ψηφιακές προβολές, κινηματογραφικά εφέ, χορό και κίνηση. \r\n\r\nΘέατρο ή σινεμά; Επιστημονική φαντασία ή περιπέτεια ενηλικίωσης; \r\nΤο απίθανο ταξίδι είναι, πάνω απ’ όλα, ένας ύμνος στην "απίθανη" δύναμη της φαντασίας. ', 'images/events/event8', 0, 0, '38.00812200000000', '23.73668700000000', 80, 1, 8, 18, 1, 0, 1, 0, 'Θέατρο Παράσταση Παιδική Sci-fi Παιδί, Παιδική παράσταση, Παιδιά Δημοτικού (6 έως και 12 ετών), Έφηβοι (13 έως και 17 ετών)'),
(9, 5, 'Εργαστήριο "Μια Αποκριά, μια ιστορία"', 'Αδριανείου 44, Ελληνορώσων', '2018-04-14', '12:00', 0, 0, 60, 'Διαδραστικό εκπαιδευτικό πρόγραμμα από τη myPlace και τη Δημοτική Βιβλιοθήκη Καλλιθέας \r\n\r\nΗ εταιρεία myPlayce, σε συνεργασία με τη Δημοτική Βιβλιοθήκη Καλλιθέας, παρουσιάζει ένα διαδραστικό εκπαιδευτικό πρόγραμμα, με θέμα τις Απόκριες, το Σάββατο 3 Φεβρουαρίου (ώρα 11:30), στη Δημοτική Βιβλιοθήκη Καλλιθέας (Ανδρομάχης 86Α & Αλκμήνης, Καλλιθέα). \r\n\r\nΤο εκπαιδευτικό πρόγραμμα, που έχει σχεδιάσει η θεατρολόγος Μαρία Νομικού και υλοποιεί η ομάδα θεάτρου Δον Κιχώτες, έχει στόχο να μεταφέρει σε μικρούς και μεγάλους την ιστορία της αποκριάς από την Αρχαία Ελλάδα έως τις μέρες μας.', 'images/events/event9', 0, 0, '38.00001700000000', '23.77339800000000', 15, 1, 6, 12, 1, 0, 1, 1, 'ΠΑΙΔΙΑ ΔΗΜΟΤΙΚΟΥ (6 ΕΩΣ ΚΑΙ 12 ΕΤΩΝ), ΠΑΙΔΙΚΕΣ ΑΠΟΚΡΙΑΤΙΚΕΣ ΕΚΔΗΛΩΣΕΙΣ, ΔΩΡΕΑΝ ΠΑΙΔΙΚΕΣ ΕΚΔΗΛΩΣΕΙΣ'),
(10, 5, 'Εργαστήριο "Μια Αποκριά, μια ιστορία"', 'Αδριανείου 44, Ελληνορώσων', '2018-04-21', '12:00', 0, 0, 60, 'Διαδραστικό εκπαιδευτικό πρόγραμμα από τη myPlace και τη Δημοτική Βιβλιοθήκη Καλλιθέας \r\n\r\nΗ εταιρεία myPlayce, σε συνεργασία με τη Δημοτική Βιβλιοθήκη Καλλιθέας, παρουσιάζει ένα διαδραστικό εκπαιδευτικό πρόγραμμα, με θέμα τις Απόκριες, το Σάββατο 3 Φεβρουαρίου (ώρα 11:30), στη Δημοτική Βιβλιοθήκη Καλλιθέας (Ανδρομάχης 86Α & Αλκμήνης, Καλλιθέα). \r\n\r\nΤο εκπαιδευτικό πρόγραμμα, που έχει σχεδιάσει η θεατρολόγος Μαρία Νομικού και υλοποιεί η ομάδα θεάτρου Δον Κιχώτες, έχει στόχο να μεταφέρει σε μικρούς και μεγάλους την ιστορία της αποκριάς από την Αρχαία Ελλάδα έως τις μέρες μας.', 'images/events/event10', 0, 0, '38.00001700000000', '23.77339800000000', 15, 1, 6, 12, 1, 0, 1, 1, 'ΠΑΙΔΙΑ ΔΗΜΟΤΙΚΟΥ (6 ΕΩΣ ΚΑΙ 12 ΕΤΩΝ), ΠΑΙΔΙΚΕΣ ΑΠΟΚΡΙΑΤΙΚΕΣ ΕΚΔΗΛΩΣΕΙΣ, ΔΩΡΕΑΝ ΠΑΙΔΙΚΕΣ ΕΚΔΗΛΩΣΕΙΣ');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `parent`
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
-- Άδειασμα δεδομένων του πίνακα `parent`
--

INSERT INTO `parent` (`ParentID`, `Username`, `FirstName`, `LastName`, `Address`, `PostalCode`, `TelephoneNumber`, `Email`, `Password`, `Status`, `CounterEvents`, `Points`, `BankAccount`, `Latitude`, `Longitude`, `VerificationCode`) VALUES
(1, 'nick_nif', 'Nikolaos', 'Nifos', 'Armodiou 24 Kantza', 15351, 2106041245, 'nicknifosgr@gmail.com', 'soeasy2', 2, 0, 310, 2569385547185520, '37.98976600000000', '23.86169800000000', 12345),
(3, 'petros21', 'Πέτρος', 'Μανταλίδης', 'Παναγιώτη Μικρόπουλου 40', 14121, 6985424125, 'mantalos.21@hotmail.com', '21212121', 1, 0, 100, 5135235251352352, '38.04043200000000', '23.76853800000000', 23456),
(4, 'liva10', 'Μάρκος', 'Λιβαγίνης', 'Δημ. Γούναρη 58 Περιστέρι', 12131, 6944255818, 'marko10@hotmail.com', 'marko21', 0, 0, 50, 5252332442549265, '38.00761700000000', '23.69236300000000', 34567),
(5, 'kalverg', 'Καλλιόπη', 'Βεργέτη', 'Αισχύλου 7 Χαλάνδρι', 15234, 2106821253, 'kalverg81@hotmail.com', 'aravia11', 1, 0, 220, 25353253245584, '38.02349300000000', '23.80667600000000', 45678),
(6, 'vagpal22', 'Βαγγέλης', 'Παλαιολόγου', 'Καραϊσκάκη 13 Δάφνη', 17234, 6975439843, 'palaiovag@hotmail.com', 'gasgas', 3, 0, 45, 4352352343523523, '37.95476000000000', '23.73391000000000', 56789),
(7, 'pantelnik', 'Νικηφόρος', 'Παντελιάδης', 'Κων/νου Παλαιολόγου 28, Αθήνα', 10438, 6949876311, 'nikifopante7@hotmail.com', 'olympiakos', 1, 0, 540, 5325233495220169, '37.98858500000000', '23.72219400000000', 67890),
(8, 'kostasthan4', 'Κώστας', 'Θανασόπουλος', 'Ικαρίας 6, Γέρακας', 15344, 2106048598, 'kostasthanaso@yahoo.com', '12fun12', 3, 0, 10, 1654896578965245, '38.01530200000000', '23.85420200000000', 78901),
(9, 'chriskal', 'Χριστίνα', 'Καλογήρου', 'Δαιρπέφελδ 5, Aθήνα', 11144, 6954897126, 'christk84@hotmail.com', 'christ12christ', 2, 0, 85, 6598481532326500, '38.02152700000000', '23.73503500000000', 89012),
(10, 'ismipan', 'Ισμήνη', 'Παναγιωτόπουλου', 'Έκτορος 3 Κηφισιά', 14561, 6974125368, 'ismini73@hotmail.com', 'ismini123pan', 1, 0, 150, 1616200005847822, '38.06888100000000', '23.80061400000000', 90123),
(11, 'dhmixron', 'Δήμητρα-Ελένη', 'Χρονοπούλου', 'Περικλέους 29 Καλλιθέα ', 17673, 6945858030, 'dhmelench@yahoo.com', 'eleni82dimitra', 1, 0, 0, 2023060584126972, '37.95020100000000', '23.69834900000000', 12340),
(12, 'sablil', 'Sabien', 'Lilaj', 'Φιλαδελφέως 24 Αθήνα', 11253, 2104587326, 'sabienlil@hotmail.com', 'sabien24', 3, 0, 35, 6549875410203650, '38.00687000000000', '23.73419300000000', 14201),
(17, 'kdot', 'Kendrick', 'Lamar', 'Filolaou 4', 16121, 2107010892, 'kdot@compton.com', '12345', 0, 0, 0, 1234123412341234, '37.96317180000000', '23.74637559999997', 67482);

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
  MODIFY `AdminProfileID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT για πίνακα `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT για πίνακα `companyservice`
--
ALTER TABLE `companyservice`
  MODIFY `CompanyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT για πίνακα `event`
--
ALTER TABLE `event`
  MODIFY `EventID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT για πίνακα `parent`
--
ALTER TABLE `parent`
  MODIFY `ParentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `companyservice` (`CompanyID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
