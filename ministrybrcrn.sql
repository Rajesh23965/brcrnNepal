-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2024 at 11:14 AM
-- Server version: 8.0.39
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ministrybrcrn`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorytbl`
--

CREATE TABLE `categorytbl` (
  `cat_id` int NOT NULL,
  `cat_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cat_slug` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `doc_typ` int DEFAULT '1',
  `created_by` int NOT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categorytbl`
--

INSERT INTO `categorytbl` (`cat_id`, `cat_name`, `cat_slug`, `doc_typ`, `created_by`, `delete_status`, `added_on`) VALUES
(1, 'निर्देशन र दिशानिर्देशन', 'निर्देशन-र-दिशानिर्देशन', 1, 0, 0, '2023-12-24 00:00:00'),
(2, 'निर्देशिका', 'निर्देशिका', 1, 0, 0, '2023-12-24 00:00:00'),
(3, 'सूचना/समाचार', 'सूचनासमाचार', 1, 0, 0, '2023-12-24 00:00:00'),
(4, 'ग्यालरी', 'ग्यालरी', 1, 0, 0, '2023-12-24 00:00:00'),
(5, 'जाहेरी प्रकाशन', 'प्रकाशन', 1, 0, 0, '2023-12-24 00:00:00'),
(6, 'बिल सर्बजनिकरण', 'बिल-सर्बजनिकरण', 1, 0, 0, '2023-12-24 00:00:00'),
(7, 'अन्न्य डाउनलोड', 'अन्न्य-डाउनलोड', 1, 0, 0, '2023-12-24 00:00:00'),
(8, 'आवेदन फारम', 'आवेदन-फारम', 1, 0, 0, '2023-12-24 00:00:00'),
(9, 'वार्षिक कार्यक्रम', 'वार्षिक-कार्यक्रम', 1, 0, 0, '2023-12-24 00:00:00'),
(10, 'बोलपत्र', 'बोलपत्र', 1, 0, 0, '2023-12-24 00:00:00'),
(11, 'रिपोर्टहरु', 'रिपोर्टहरु', 1, 0, 0, '2023-12-25 00:00:00'),
(12, 'दरभाउ पत्र आह्वानको सूचना', 'दरभाउ-पत्र-आह्वानको-सूचना', 1, 0, 0, '2023-12-25 00:00:00'),
(13, 'तालिम सम्बन्धी सूचना', 'तालिम-सम्बन्धी-सूचना', 1, 0, 0, '2023-12-25 00:00:00'),
(14, 'परिपत्र', 'परिपत्र', 1, 0, 0, '2023-12-25 00:00:00'),
(15, 'प्रेस विज्ञप्ति', 'प्रेस-विज्ञप्ति', 1, 0, 0, '2023-12-25 00:00:00'),
(16, 'ऐन / नियम', 'ऐन-नियम', 1, 0, 0, '2023-12-25 00:00:00'),
(17, 'कार्यविधि', 'कार्यविधि', 1, 0, 0, '2023-12-25 00:00:00'),
(25, 'स्वत ः प्रकाश', 'स्वत-ः-प्रकाश', 1, 0, 0, '2024-07-25 14:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `counter_tbl`
--

CREATE TABLE `counter_tbl` (
  `counter_id` int NOT NULL,
  `counter_icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `counter_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `counter_number` int NOT NULL,
  `delete_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `counter_tbl`
--

INSERT INTO `counter_tbl` (`counter_id`, `counter_icon`, `counter_title`, `counter_number`, `delete_status`) VALUES
(1, 'bookmark', 'Patient Served in FY 2079/80', 559407, 0),
(2, 'copy', 'Tests Perfomed in FY 2079/80', 1262950, 0),
(3, 'credit-card', 'Departments', 4, 0),
(4, 'hospital', 'Units', 20, 0),
(5, 'address-card', 'demo', 169900, 1),
(6, 'address-book', 'demo', 12456, 1),
(7, 'address-book', 'happy customerssssbhjbjhbj', 57678, 1);

-- --------------------------------------------------------

--
-- Table structure for table `document_tbl`
--

CREATE TABLE `document_tbl` (
  `doc_id` int NOT NULL,
  `doc_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `doc_temp_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `document_tbl`
--

INSERT INTO `document_tbl` (`doc_id`, `doc_name`, `doc_temp_name`, `delete_status`, `added_on`, `added_by`) VALUES
(16, 'facebook round.png', '65881034d0dd9.png', 0, '2023-12-24 16:49:20', 0),
(17, 'twitter round.png', '65881034d17dc.png', 0, '2023-12-24 16:49:20', 0),
(18, 'youtube round.png', '65881034d2f4c.png', 0, '2023-12-24 16:49:20', 0),
(21, 'Screenshot 2023-12-24 163718.png', '658811ed43568.png', 1, '2023-12-24 16:56:41', 0),
(22, 'Screenshot 2023-12-24 163718.png', '6588128f3687c.png', 1, '2023-12-24 16:59:23', 0),
(23, 'Slider1610257813.jpg', '658812cd6c879.jpg', 1, '2023-12-24 17:00:25', 0),
(24, 'organization_structure.jpg', '65893cc4e5009.jpg', 1, '2023-12-25 14:11:44', 0),
(25, 'darbandi_structure.jpg', '65893d0d7ff1c.jpg', 1, '2023-12-25 14:12:57', 0),
(26, 'Cover_Photo1620745563.jpg', '65893ffda0269.jpg', 1, '2023-12-25 14:25:29', 0),
(27, 'Cover_Photo1620746161.jpg', '65893ffda0ca8.jpg', 1, '2023-12-25 14:25:29', 0),
(28, 'Cover_Photo1620747809.jpg', '65893ffda1af7.jpg', 1, '2023-12-25 14:25:29', 0),
(29, 'Cover_Photo1620821563.jpg', '65893ffda231e.jpg', 1, '2023-12-25 14:25:29', 0),
(30, 'Cover_Photo1620821494.jpg', '65893ffda2aa7.jpg', 1, '2023-12-25 14:25:29', 0),
(31, 'Cover_Photo1620746349.jpg', '65893ffda314f.jpg', 1, '2023-12-25 14:25:29', 0),
(32, 'Cover_Photo1620745563.jpg', '65895fff9c05b.jpg', 1, '2023-12-25 16:42:03', 0),
(33, 'Flag_of_the_United_Kingdom.svg.png', '658961e86d6eb.png', 1, '2023-12-25 16:50:12', 0),
(34, 'Cover_Photo1620746161.jpg', '6589627275d0f.jpg', 1, '2023-12-25 16:52:30', 0),
(35, 'Cover_Photo1620745563.jpg', '658962b7933c0.jpg', 1, '2023-12-25 16:53:39', 0),
(36, 'Flag_of_the_United_Kingdom.svg.png', '65896891b1198.png', 1, '2023-12-25 17:18:37', 0),
(37, 'Cover_Photo1620746161.jpg', '658968a700cf4.jpg', 1, '2023-12-25 17:18:59', 0),
(38, 'Cover_Photo1620745563.jpg', '658968ce60dee.jpg', 1, '2023-12-25 17:19:38', 0),
(39, 'Cover_Photo1620745563.jpg', '6589690b6410a.jpg', 1, '2023-12-25 17:20:39', 0),
(40, 'Cover_Photo1620746161.jpg', '65897082b0831.jpg', 1, '2023-12-25 17:52:30', 0),
(41, 'कृषि सडक निर्माणको लागि निवेदन आव्हान को सूचना २१ दिने प्रथम पटक प्रकाशित २०८०.१०.०५.pdf', '65b4a4134a900.pdf', 1, '2024-01-27 12:19:59', 0),
(42, 'कृषि सडक निर्माणको लागि निवेदन आव्हान को सूचना २१ दिने प्रथम पटक प्रकाशित २०८०.१०.०५.pdf', '65b4c64273934.pdf', 1, '2024-01-27 14:45:50', 0),
(43, 'कृषि बजार र ब्लक संचालन को सुचना.pdf', '65b771c86ec83.pdf', 1, '2024-01-29 15:22:12', 0),
(44, 'Jageshwar-252x300.jpg', '668b8b18d25bf.jpg', 1, '2024-07-08 12:30:44', 0),
(45, 'siv_narayan_yadav.jpg', '668b8b18d4214.jpg', 1, '2024-07-08 12:30:44', 0),
(46, 'slide-1-2-610x380.jpg', '668b8b18d499b.jpg', 1, '2024-07-08 12:30:44', 0),
(47, 'download1.png', '668b95136bf36.png', 0, '2024-07-08 13:13:19', 0),
(48, '३.-नयाँ-मत्स्य-ह्याचरी-निर्माण-कार्यक्रम-आवेदन-फारामको-नमूना.pdf', '668b9554c3ff8.pdf', 1, '2024-07-08 13:14:24', 0),
(49, '२.-प्राङ्गारिक-मल-तथा-गड्यौले-मल-उत्पादनमा-अनुदान-सहयोग-कार्यक्रम-आवेदन-फारामको-नमूना.pdf', '668b9554c5a1e.pdf', 1, '2024-07-08 13:14:24', 0),
(50, '१.-हाँसको-ह्याचरी-स्तरोन्नति-तथा-प्रबर्द्धन-कार्यक्रम-आवेदन-फारामको-नमूना.pdf', '668b9554c601d.pdf', 1, '2024-07-08 13:14:24', 0),
(51, 'Jageshwar-252x300.jpg', '668cca3c4e13e.jpg', 1, '2024-07-09 11:12:24', 0),
(52, 'animal-6930449__480.jpg', '668ccb035dcb4.jpg', 1, '2024-07-09 11:15:43', 0),
(53, 'architecture-7139263__480.jpg', '668ccb09776d4.jpg', 1, '2024-07-09 11:15:49', 0),
(54, 'background-7108498_1280.jpg', '668ccb09792c5.jpg', 1, '2024-07-09 11:15:49', 0),
(55, 'beach-7140587__480.jpg', '668ccb0979d45.jpg', 1, '2024-07-09 11:15:49', 0),
(56, 'bedroom-7132435__480.jpg', '668ccb097b0e9.jpg', 1, '2024-07-09 11:15:49', 0),
(57, 'deer-7124972__480.jpg', '668ccb11c45f2.jpg', 1, '2024-07-09 11:15:57', 0),
(58, 'eggs-3281585__480.jpg', '668ccb11c69ce.jpg', 1, '2024-07-09 11:15:57', 0),
(59, 'eggs-7138757__480.jpg', '668ccb11c70b1.jpg', 1, '2024-07-09 11:15:57', 0),
(60, 'forest-7141417__480.jpg', '668ccb11c785f.jpg', 1, '2024-07-09 11:15:57', 0),
(61, 'lamp-6997864__480.jpg', '668ccb11c7e5b.jpg', 1, '2024-07-09 11:15:57', 0),
(62, 'mountains-7138605__480.jpg', '668ccb11c8421.jpg', 1, '2024-07-09 11:15:57', 0),
(63, 'no-img.jpg', '668ccb11c895b.jpg', 1, '2024-07-09 11:15:57', 0),
(64, 'python-7134564__480.jpg', '668ccb11c922b.jpg', 1, '2024-07-09 11:15:57', 0),
(65, 'ship-7140939__480.jpg', '668ccb11ca15d.jpg', 1, '2024-07-09 11:15:57', 0),
(66, 'clouds-7060045__480.webp', '668ccb1f8ec70.webp', 1, '2024-07-09 11:16:11', 0),
(67, 'drink-6815800_1280.webp', '668ccb1f913df.webp', 1, '2024-07-09 11:16:11', 0),
(68, 'easter-tree-7106933__480.webp', '668ccb1f91a20.webp', 1, '2024-07-09 11:16:11', 0),
(69, 'electric-kettle-6966011_1280.webp', '668ccb1f9200b.webp', 1, '2024-07-09 11:16:11', 0),
(70, 'europe-7128531__480.webp', '668ccb1f925e6.webp', 1, '2024-07-09 11:16:11', 0),
(71, 'flowers-6199691_1280.webp', '668ccb1f92c1d.webp', 1, '2024-07-09 11:16:11', 0),
(72, 'french-bulldog-4651905_1280.webp', '668ccb1f933dc.webp', 1, '2024-07-09 11:16:11', 0),
(73, 'gerbera-7101430_1280.webp', '668ccb1f93adc.webp', 1, '2024-07-09 11:16:11', 0),
(74, 'glacier-7122676__480.webp', '668ccb1f940cb.webp', 1, '2024-07-09 11:16:11', 0),
(75, 'glacier-7125359_1280.webp', '668ccb1f94699.webp', 1, '2024-07-09 11:16:11', 0),
(76, 'hands-7107606_1280.webp', '668ccb1f94ca3.webp', 1, '2024-07-09 11:16:11', 0),
(77, 'hatching-7098132_1280.webp', '668ccb1f95335.webp', 1, '2024-07-09 11:16:11', 0),
(78, 'kid-7152758_1280.webp', '668ccb1f958f7.webp', 1, '2024-07-09 11:16:11', 0),
(79, 'lamp-6997864__480.jpg', '668ccbd2dd795.jpg', 1, '2024-07-09 11:19:10', 0),
(80, 'mountains-7138605__480.jpg', '668ccbd2e40eb.jpg', 1, '2024-07-09 11:19:10', 0),
(81, 'no-img.jpg', '668ccbd2e4809.jpg', 1, '2024-07-09 11:19:10', 0),
(82, 'python-7134564__480.jpg', '668ccbd2e4e14.jpg', 1, '2024-07-09 11:19:10', 0),
(83, 'ship-7140939__480.jpg', '668ccbd2e5359.jpg', 1, '2024-07-09 11:19:10', 0),
(84, 'sunset-7133867__480.jpg', '668ccbd2e5838.jpg', 1, '2024-07-09 11:19:10', 0),
(85, 'woman-7030387__480.jpg', '668cd29f81496.jpg', 1, '2024-07-09 11:48:11', 0),
(86, '३.-नयाँ-मत्स्य-ह्याचरी-निर्माण-कार्यक्रम-आवेदन-फारामको-नमूना.pdf', '668ce76f163c4.pdf', 1, '2024-07-09 13:16:59', 0),
(87, 'pexels-designecologist-1779487.jpg', '668ce996e35aa.jpg', 1, '2024-07-09 13:26:10', 0),
(88, 'pexels-kevin-ku-577585.jpg', '668ce996e9a65.jpg', 1, '2024-07-09 13:26:10', 0),
(89, 'pexels-pixabay-4158.jpg', '668ce996ea20f.jpg', 1, '2024-07-09 13:26:10', 0),
(90, 'pexels-pixabay-39284.jpg', '668ce996eab7e.jpg', 1, '2024-07-09 13:26:10', 0),
(91, 'pexels-pixabay-256381.jpg', '668ce996eb5de.jpg', 1, '2024-07-09 13:26:10', 0),
(92, 'जाहेरी-1.pdf', '66a2046dc77f8.pdf', 1, '2024-07-25 13:38:17', 0),
(93, 'जाहेरी-2.pdf', '66a204789889a.pdf', 1, '2024-07-25 13:38:28', 0),
(94, 'जाहेरी-7.pdf', '66a204843e7ce.pdf', 1, '2024-07-25 13:38:40', 0),
(95, 'जाहेरी-6.pdf', '66a204843f767.pdf', 1, '2024-07-25 13:38:40', 0),
(96, 'जाहेरी-5.pdf', '66a2048440446.pdf', 1, '2024-07-25 13:38:40', 0),
(97, 'जाहेरी-4.pdf', '66a2048440c0d.pdf', 1, '2024-07-25 13:38:40', 0),
(98, 'जाहेरी-3.pdf', '66a204844144b.pdf', 1, '2024-07-25 13:38:40', 0),
(99, 'जाहेरी4.pdf', '66a207cfa94db.pdf', 1, '2024-07-25 13:52:43', 0),
(100, 'जाहेरी3.pdf', '66a207cfab2b3.pdf', 1, '2024-07-25 13:52:43', 0),
(101, 'जाहेरी-2 (1).pdf', '66a207cfabcb1.pdf', 1, '2024-07-25 13:52:43', 0),
(102, 'मिति-२०७८।८।१-देखी-२९-गते-सम्मको-जाहेरी1.pdf', '66a207cfac562.pdf', 1, '2024-07-25 13:52:43', 0),
(103, 'जाहेरी-7.pdf', '66a20a21bd319.pdf', 1, '2024-07-25 14:02:37', 0),
(104, 'जाहेरी-6.pdf', '66a20a21be8e0.pdf', 1, '2024-07-25 14:02:37', 0),
(105, 'जाहेरी-5.pdf', '66a20a21bf2ae.pdf', 1, '2024-07-25 14:02:37', 0),
(106, 'जाहेरी-4.pdf', '66a20a21bfa09.pdf', 1, '2024-07-25 14:02:37', 0),
(107, 'जाहेरी-3.pdf', '66a20a21c0327.pdf', 1, '2024-07-25 14:02:37', 0),
(108, 'जाहेरी-2.pdf', '66a20a21c0aa0.pdf', 1, '2024-07-25 14:02:37', 0),
(109, 'जाहेरी-1.pdf', '66a20a21c142d.pdf', 1, '2024-07-25 14:02:37', 0),
(110, 'जेठ-महिनाको-जाहेरी.pdf', '66a20a21c1c00.pdf', 1, '2024-07-25 14:02:37', 0),
(111, '२०७७-माघ-१-देखी-२०७७-चैत्र-मसान्तसम्म.pdf', '66a2169d8ddd5.pdf', 1, '2024-07-25 14:55:53', 0),
(112, '२०७८-श्रावण-१-देखी-२०७८-असोज-सम्म.pdf', '66a2169d8f728.pdf', 1, '2024-07-25 14:55:53', 0),
(113, '२०७८-बैशाख-१-देखी-२०७८-आषाढ-मसान्तसम्म-1.pdf', '66a218545ee21.pdf', 1, '2024-07-25 15:03:12', 0),
(114, 'आ.व.२०७९।०८०-को-त्रैमासिक-प्रगति-विवरण-२०७९-माघ-१-देखी-२०७९-साल-चैत्र-मसान्त-सम्म (2).pdf', '66a218546038e.pdf', 1, '2024-07-25 15:03:12', 0),
(115, 'त्रैमासिक-प्रगति-२०७८-कार्तिक-१-देखी-२०७८-पौष-मसान्त-सम्म-1.pdf', '66a2185460d7c.pdf', 1, '2024-07-25 15:03:12', 0),
(116, 'त्रैमासिक-प्रगति-विवरण-२०७८-माघ-१-देखी-२०७८-चैत्र-मसान्त-सम्मको (1).pdf', '66a21c80a26d0.pdf', 1, '2024-07-25 15:21:00', 0),
(117, 'राष्ट्रिय-वन.pdf', '66a22a09ef87e.pdf', 1, '2024-07-25 16:18:45', 0),
(118, 'निजी-बन-सम्बंद्धि-जानकारी.pdf', '66a22a79de2c7.pdf', 1, '2024-07-25 16:20:37', 0),
(119, '9_updated_privet-book-a5-final-2076.pdf', '66a22c2bb8072.pdf', 1, '2024-07-25 16:27:51', 0),
(120, 'रौतहट-जिल्लामा-हस्तान्तरण-गरिएका-समुदाहीक-बनको-बिबरण.pdf', '66a22cce67223.pdf', 1, '2024-07-25 16:30:34', 0),
(121, 'barshik-bikash-karyakaram_removed.pdf', '66a237b471958.pdf', 1, '2024-07-25 17:17:04', 0),
(122, 'प्रथम-चौमासीक-प्रगति-pages-deleted-1.pdf', '66a2380b5b65b.pdf', 1, '2024-07-25 17:18:31', 0),
(123, '२०७९।०८०-को-वार्षीक-कार्यकम.pdf', '66a23a819ccd1.pdf', 1, '2024-07-25 17:29:01', 0),
(124, '२०७९।२०८०-को-प्रथम-चौमासिक-प्रगति.pdf', '66a23d27ea621.pdf', 1, '2024-07-25 17:40:19', 0),
(125, 'अा-व-२०७९।०८०-को-दोश्रो-चौमासिक-प्रगति-1.pdf', '66a23ec6bbe3d.pdf', 1, '2024-07-25 17:47:14', 0),
(126, 'आ.व.-२०७८।०७९-को-दोश्रो-चौमासिक-प्रगति.pdf', '66a23f5bd845c.pdf', 1, '2024-07-25 17:49:43', 0),
(127, 'त्रैमासिक-प्रगति-विवरण.pdf', '66a23fed8e28d.pdf', 1, '2024-07-25 17:52:09', 0),
(128, 'बार्षिक-बिकाश-कार्यक्रम.pdf', '66a240d037bd3.pdf', 1, '2024-07-25 17:55:56', 0),
(129, 'बार्षिक-पर्गती-पुस्तिका-बिषयशुची.pdf', '66a2410d5da10.pdf', 1, '2024-07-25 17:56:57', 0),
(130, 'बार्षिक-पर्गती-पुस्तिका-कन्टेन्ट.pdf', '66a24159096ff.pdf', 1, '2024-07-25 17:58:13', 0),
(131, 'बार्षिक-पर्गती-बिबरण.pdf', '66a2420da4653.pdf', 1, '2024-07-25 18:01:13', 0),
(132, 'बार्षिक-पर्गती-पुस्तिका-कन्टेन्ट.pdf', '66a242401bdfa.pdf', 1, '2024-07-25 18:02:04', 0),
(133, 'बार्षिक-पर्गती-पुस्तिका-बिषयशुची.pdf', '66a242401c89b.pdf', 1, '2024-07-25 18:02:04', 0),
(134, 'बार्षिक-पर्गती-बिबरण.pdf', '66a242401d190.pdf', 1, '2024-07-25 18:02:04', 0),
(135, 'बार्षिक-बिकाश-कार्यक्रम.pdf', '66a242401d860.pdf', 1, '2024-07-25 18:02:04', 0),
(136, 'CamScanner-04-17-2023-12.11_1-754x1024.jpg', '66a886e26ee30.jpg', 1, '2024-07-30 12:08:30', 0),
(137, 'CamScanner-04-17-2023-12.11_1-754x1024 (1).jpg', '66a8876e1d459.jpg', 1, '2024-07-30 12:10:50', 0),
(138, 'प्रदेश-सभा-सदस्य-कार्यक्रम-योजना-2079.80.pdf', '66a893783cd8b.pdf', 1, '2024-07-30 13:02:12', 0),
(139, 'प्रदेश-सभा-सदस्य-कार्यक्रम-योजना-2079.80.pdf', '66a8aae9cb1e3.pdf', 0, '2024-07-30 14:42:13', 0),
(140, 'emp.jpg', '66a8c2ee0ef9e.jpg', 0, '2024-07-30 16:24:42', 0),
(141, 'abc.png', '66ab52be4cae6.png', 1, '2024-08-01 15:02:50', 0),
(142, 'CamScanner-04-17-2023-12.11_1-754x1024.jpg', '66aca1676be4c.jpg', 0, '2024-08-02 14:50:43', 0),
(143, 'आ.व.-2080.081-रौतहट-जिल्लाको-पारित-दररेट-1.pdf', '66aca1a7ac22e.pdf', 0, '2024-08-02 14:51:47', 0),
(144, 'आ.व.-2080.081-रौतहट-जिल्लाको-पारित-दररेट-1.pdf', '66aca2147c1c0.pdf', 0, '2024-08-02 14:53:36', 0),
(145, 'सर्लाही-जिल्लाको-आ.व.-2080.81-को-पारित-दररेट_compressed.pdf', '66aca3376930b.pdf', 0, '2024-08-02 14:58:27', 0),
(146, 'आ.व.-2079.80-सर्लाही-जिल्लाको-पारित-दररेट.pdf', '66aca91377e98.pdf', 0, '2024-08-02 15:23:27', 0),
(147, 'आ.व.-2079.80-रौतहट-जिल्लाको-पारित-दररेट-1.pdf', '66aca9cb47066.pdf', 0, '2024-08-02 15:26:31', 0),
(148, 'Sarlahi-District-Rate-2078.079.pdf', '66aca9ee6858a.pdf', 0, '2024-08-02 15:27:06', 0),
(149, 'जिल्ला-दर-रेट-२०७८-०७९-1-रौतहट.pdf', '66acaa07670cc.pdf', 0, '2024-08-02 15:27:31', 0),
(150, 'सर्लाही-जिल्लाको-संशोधित-दररेट.pdf', '66acaa1f11092.pdf', 0, '2024-08-02 15:27:55', 0),
(151, 'jhdjsk.jpg', '66af5b86576c5.jpg', 0, '2024-08-04 16:29:22', 0),
(152, 'संगठन-संरचना-300x200.png', '66af5cd5e8cd4.png', 0, '2024-08-04 16:34:57', 0),
(153, 'नतिजा-प्रकाशन-२०८१-०२-२०.pdf', '66af5d8ef11ae.pdf', 0, '2024-08-04 16:38:02', 0),
(154, 'प्रस्ताव-पत्र_2081_02_08.pdf', '66af5dc98d74d.pdf', 0, '2024-08-04 16:39:01', 0),
(155, 'सूचना-इलेक्ट्रीक-च्यापकटर-र-एरिएटर.pdf', '66af5e30d0e0c.pdf', 0, '2024-08-04 16:40:44', 0),
(156, 'natija_prakashan_2081_02_08.pdf', '66af5e62c36f5.pdf', 0, '2024-08-04 16:41:34', 0),
(157, 'नतिजा-प्रकाशन-1.pdf', '66af5e97ea5f1.pdf', 0, '2024-08-04 16:42:27', 0),
(158, 'सूचना-भेटेरिनरी-अस्पताल.pdf', '66af5ed17e0dc.pdf', 0, '2024-08-04 16:43:25', 0),
(159, 'प्रस्ताव-आवह्यानको-सूचना.pdf', '66af5f0c26272.pdf', 0, '2024-08-04 16:44:24', 0),
(160, 'तालिममा-सहभागीको-लागि-सूचिदर्ता-हुने-सम्बन्धी-सूचना-745x1024.jpg', '66af6096a25fc.jpg', 0, '2024-08-04 16:50:58', 0),
(161, 'पशु-वधशाला-र-मासु-जाँच-ऐन-२०५५.pdf', '66af61b238512.pdf', 0, '2024-08-04 16:55:42', 0),
(162, 'दाना-पदार्थ-ऐन-२०३३.pdf', '66af621d60d14.pdf', 0, '2024-08-04 16:57:29', 0),
(163, 'दाना-पदार्थ-नियमावली-२०४१.pdf', '66af6234d2bcb.pdf', 0, '2024-08-04 16:57:52', 0),
(164, 'पशु-बधशाला-र-मासु-जाँच-नियमावली२०५७.pdf', '66af624f6ea7f.pdf', 0, '2024-08-04 16:58:19', 0),
(165, 'पशु-वधशाला-र-मासु-जाँच-ऐन-२०५५ (1).pdf', '66af62931e665.pdf', 0, '2024-08-04 16:59:27', 0),
(166, 'पशु-स्वास्थ्य-तथा-पशु-सेवा-नियमावली-२०५६.pdf', '66af62afbbde7.pdf', 0, '2024-08-04 16:59:55', 0),
(167, 'पशु-स्वास्थ्य-तथा-पशु-सेवा-ऐन-२०५५.pdf', '66af62cae47fc.pdf', 0, '2024-08-04 17:00:22', 0),
(168, 'हरुवाचरुवादलित-लगायत-वर्गको-जीविकोपार्जनका-लागि-पशुपन्छीपालन-कार्यक्रम-प्रस्ताव-ढाँचा.pdf', '66af69f0ac678.pdf', 0, '2024-08-04 17:30:52', 0),
(169, 'स्थानीय-तहहरुमा-माछामासु-विक्रि-कक्ष-निर्माण-प्रस्ताव-कार्ययोजना-ढाँचा.pdf', '66af6a0f8956b.pdf', 0, '2024-08-04 17:31:23', 0),
(170, 'अनुवांशिक-श्रोत-केन्द्र-लामपुच्छ्रे-भेडा-प्रबर्द्धन-कार्यक्रमको.pdf', '66af6aec0b28e.pdf', 0, '2024-08-04 17:35:04', 0),
(171, 'अनुवांशिक-श्रोत-केन्द्र-लामपुच्छ्रे-भेडा-प्रबर्द्धन-कार्यक्रमको (3).pdf', '66af6c5a0b081.pdf', 0, '2024-08-04 17:41:10', 0),
(172, 'शहरी-क्षेत्रमा-छाडारुपमा-पालिरहेका-बंगुर-पालन-संरक्षण-कार्यक्रमको.pdf', '66af6c7264ebd.pdf', 0, '2024-08-04 17:41:34', 0),
(173, 'स्थानिय-तहको-समन्वयमा-सामाजिक-तथा-घरपालुवा-कुकुरहरुमा-बन्ध्याकरण-तथा.pdf', '66af6ce2e1bc8.pdf', 0, '2024-08-04 17:43:26', 0),
(174, 'डेरी-पार्लर-स्थापना-कार्यक्रमको-प्राविधिक-मापदण्ड-तथा-संचालन-विधि-२०७७.pdf', '66af6d001ef3a.pdf', 0, '2024-08-04 17:43:56', 0),
(175, 'नगदेवस्तु-पन्छीपालन-प्रबर्द्धन-कार्यक्रमको-प्राविधिक-मापदण्ड-तथा-संचालन-विधि-२०७७.pdf', '66af6d4206e49.pdf', 0, '2024-08-04 17:45:02', 0),
(176, 'पशुपन्छी-तथा-मत्स्य-बजार-प्रबर्द्धन-कार्यक्रमको-प्राविधिक-मापदण्ड-तथा-संचालन-विधि-२०७७.pdf', '66af6d5874f45.pdf', 0, '2024-08-04 17:45:24', 0),
(177, 'व्यावसायिक-पाडापालन-कार्यक्रमको-प्राविधिक-मापदण्ड-तथा-संचालन-विधि-२०७७.pdf', '66af6d9b91a46.pdf', 0, '2024-08-04 17:46:31', 0),
(178, 'मासु-उत्पादन-प्रबर्द्धन-कार्यक्रम-संचालनका-लागि-प्रस्ताव-आवेदन-फारम.pdf', '66af6de88d316.pdf', 0, '2024-08-04 17:47:48', 0),
(179, 'दुध-उत्पादन-प्रवर्द्धन-कार्यक्रम-संचालनका-लागि-प्रस्ताव-आवेदन.pdf', '66af6dffeeb8c.pdf', 0, '2024-08-04 17:48:11', 0),
(180, 'करारमा-घाँसको-वेर्ना-वीउसेटस-उत्पादन-कार्यक्रमको-प्रस्ताव-आवेदन-फारम.pdf', '66af6e1c9613d.pdf', 0, '2024-08-04 17:48:40', 0),
(181, 'दुध-संकलन-तथा-चिस्यान-केन्द्रको-प्रस्ताव-आवेदन-फारम.pdf', '66af6e388a05c.pdf', 0, '2024-08-04 17:49:08', 0),
(182, 'प्रस्ताव-आव्हानको-सूचना.pdf', '66af6e51dd750.pdf', 0, '2024-08-04 17:49:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employeelayouts`
--

CREATE TABLE `employeelayouts` (
  `emlayoutId` int NOT NULL,
  `employeeId` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `order_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employeelayouts`
--

INSERT INTO `employeelayouts` (`emlayoutId`, `employeeId`, `order_by`) VALUES
(1, '6,7', 1),
(2, '8,9', 2),
(3, '10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeId` int NOT NULL,
  `employname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `designation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `employeeOrder` int DEFAULT NULL,
  `deleteStatus` tinyint(1) DEFAULT '0',
  `activeStatus` tinyint(1) DEFAULT '1',
  `addedon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addedby` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_tbl`
--

CREATE TABLE `faq_tbl` (
  `faq_id` int NOT NULL,
  `faq_title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `faq_category` int NOT NULL,
  `faq_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `faq_tbl`
--

INSERT INTO `faq_tbl` (`faq_id`, `faq_title`, `faq_category`, `faq_description`, `added_on`) VALUES
(1, 'First Fqa of Billing', 1, '<p>coming Soon !!!</p>', '2023-09-22 00:00:00'),
(2, 'First FAQ Collection', 2, '<p>coming soon !!!</p>', '2023-09-22 00:00:00'),
(3, 'what is nphl?', 1, '<p>decription</p>', '2023-09-24 00:00:00'),
(4, 'What is collection', 2, '<p>sdjgfbsjd</p>', '2023-09-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `featured_card`
--

CREATE TABLE `featured_card` (
  `f_id` int NOT NULL,
  `featured_title` varchar(50) DEFAULT NULL,
  `first_title` varchar(100) DEFAULT NULL,
  `second_title` varchar(100) DEFAULT NULL,
  `third_title` varchar(100) DEFAULT NULL,
  `fourth_title` varchar(100) DEFAULT NULL,
  `fifth_title` varchar(100) NOT NULL,
  `first_desc` varchar(255) DEFAULT NULL,
  `sec_desc` varchar(255) DEFAULT NULL,
  `third_desc` varchar(255) DEFAULT NULL,
  `fourth_des` varchar(255) DEFAULT NULL,
  `fifth_desc` varchar(255) DEFAULT NULL,
  `first_icon` varchar(100) DEFAULT NULL,
  `second_icon` varchar(100) DEFAULT NULL,
  `third_icon` varchar(100) DEFAULT NULL,
  `fourth_icon` varchar(100) DEFAULT NULL,
  `fifth_icon` varchar(100) DEFAULT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `featured_card`
--

INSERT INTO `featured_card` (`f_id`, `featured_title`, `first_title`, `second_title`, `third_title`, `fourth_title`, `fifth_title`, `first_desc`, `sec_desc`, `third_desc`, `fourth_des`, `fifth_desc`, `first_icon`, `second_icon`, `third_icon`, `fourth_icon`, `fifth_icon`, `added_on`, `delete_status`) VALUES
(1, 'Services And Focus Areas', 'Laboratory Licensing & Registration', 'Patient Portal', 'Genome Sequencing ', 'Molecular & Genetics', 'Digital NPHL', '<p>Content will be added here.</p>', '<p>Click here to view Patient Portal.</p>', '<p>Content will be added here.</p>', '<p>Content will be added here.</p>', '<p>Content will be added here.</p>', '1.png', '2.png', '3.png', '4.png', '11.png', '2023-06-25 12:34:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `featured_tbl`
--

CREATE TABLE `featured_tbl` (
  `featured_id` int NOT NULL,
  `featured_title` varchar(50) DEFAULT NULL,
  `featured_pages` varchar(20) DEFAULT NULL,
  `added_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `delete_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `featured_tbl`
--

INSERT INTO `featured_tbl` (`featured_id`, `featured_title`, `featured_pages`, `added_on`, `delete_status`) VALUES
(4, 'Our Main features', '1,2,4', '2023-05-19 15:41:08', 1),
(8, 'Our Technology', '1,2,3', '2023-06-26 23:58:17', 1),
(9, 'Our Technology', '1,2,3,4,5,6,8,9', '2023-06-26 23:58:57', 1),
(10, 'Our Technology', '36,37,38,39,40,41', '2023-07-02 13:28:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `footer_table`
--

CREATE TABLE `footer_table` (
  `footer_id` int NOT NULL,
  `footer_title` varchar(50) DEFAULT NULL,
  `footer_description` longtext,
  `order_by` int DEFAULT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `footer_table`
--

INSERT INTO `footer_table` (`footer_id`, `footer_title`, `footer_description`, `order_by`, `delete_status`, `added_on`, `created_by`) VALUES
(9, 'सम्पर्क', '<div class=\"textwidget\">\r\n<p><strong>जिल्ला आयुर्वेद स्वास्थ्य केन्द्र, मुस्ताङ</strong><strong><br></strong></p>\r\n<hr>\r\n<p><strong>घरपझोङ गाँउपालिका &ndash; ४, जाेमसाेम</strong></p>\r\n<p><strong>फाेन :</strong>&nbsp;<strong>०६९-४४०१५३</strong></p>\r\n<p><strong>ईमेल:</strong>&nbsp;&nbsp;<strong><a href=\"mailto:dhunganaekraj3@gmail.com\" target=\"_blank\" rel=\"noopener\">dahc.jomsom@gmail.com</a></strong></p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><img src=\"http://localhost:8080/assets/uploads/65881034d0dd9.png\" width=\"60px\" height=\"60px\"><img src=\"http://localhost:8080/assets/uploads/65881034d17dc.png\" width=\"60px\" height=\"60px\"><a href=\"https://www.youtube.com/channel/UCPW3t5kKiX9ZGj7y9ndvjeA\"><img src=\"http://localhost:8080/assets/uploads/65881034d2f4c.png\" width=\"60px\" height=\"60px\"></a></p>', 1, 0, '2023-05-22 12:10:45', 0),
(10, 'महत्वपूर्ण लिंकहरु', '<ul>\r\n<li class=\"list-group\" style=\"font-weight: bold;\">\r\n<p><strong><a href=\"http://www.nepal.gov.np/\" target=\"_blank\" rel=\"noopener\">नेपाल सरकारको वेबसाईट</a></strong></p>\r\n</li>\r\n<li class=\"list-group\" style=\"font-weight: bold;\">\r\n<p><strong><a href=\"https://mohp.gov.np/\" target=\"_blank\" rel=\"noopener\">स्वास्थ्य तथा जनसंख्या मन्त्रालय</a></strong></p>\r\n</li>\r\n<li class=\"list-group\" style=\"font-weight: bold;\">\r\n<p><a href=\"http://hd.gandaki.gov.np/\"><strong>स्वास्थ्य निर्देशनालय</strong></a></p>\r\n</li>\r\n<li class=\"list-group\" style=\"font-weight: bold;\">\r\n<p><strong><a href=\"https://dohs.gov.np/\" target=\"_blank\" rel=\"noopener\">स्वास्थ्य सेवा विभाग</a></strong></p>\r\n</li>\r\n<li class=\"list-group\" style=\"font-weight: bold;\">\r\n<p><strong><a href=\"http://nhtc.gov.np/\" target=\"_blank\" rel=\"noopener\">राष्ट्रिय स्वास्थ्य तालिम केन्द्र</a></strong></p>\r\n</li>\r\n</ul>', 2, 0, '2023-05-22 12:11:30', 0),
(13, 'Calendar', '<p><iframe style=\"border: none; overflow: hidden; height: 300px;\" src=\"https://www.hamropatro.com/widgets/calender-small.php\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></p>', 3, 0, '2023-10-09 10:35:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int NOT NULL,
  `category_id` int NOT NULL,
  `added_on` int NOT NULL,
  `added_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `category_id`, `added_on`, `added_by`) VALUES
(1, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `header_id` int NOT NULL,
  `province_name` varchar(150) DEFAULT NULL,
  `ministry` varchar(150) DEFAULT NULL,
  `nirdeshnalaya` varchar(150) DEFAULT NULL,
  `office_name` varchar(150) DEFAULT NULL,
  `office_location` varchar(150) DEFAULT NULL,
  `left_logo` varchar(100) DEFAULT NULL,
  `right_logo` varchar(100) DEFAULT NULL,
  `created_by` int NOT NULL,
  `deleted_by` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`header_id`, `province_name`, `ministry`, `nirdeshnalaya`, `office_name`, `office_location`, `left_logo`, `right_logo`, `created_by`, `deleted_by`, `added_on`) VALUES
(1, 'गण्डकी प्रदेश सरकार', 'सामाजिक विकास तथा स्वास्थ्य  मन्त्रालय', 'स्वास्थ्य निर्देशनालय ', 'जिल्ला आयुर्वेद स्वास्थ्य केन्द्र ', 'मुस्ताङ', '1716529437_a56ffc8d2e888921f7b8.png', '1716529437_8fd0dfdd43e1840f2598.gif', 0, 0, '2023-03-13 15:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `icon_tbl`
--

CREATE TABLE `icon_tbl` (
  `icon_id` int NOT NULL,
  `icon_class` varchar(30) NOT NULL,
  `unicode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `icon_tbl`
--

INSERT INTO `icon_tbl` (`icon_id`, `icon_class`, `unicode`) VALUES
(4, 'fa-ad', 'f641'),
(5, 'fa-address-book', 'f2b9'),
(6, 'fa-address-card', 'f2bb'),
(7, 'fa-adjust', 'f042'),
(11, 'fa-air-freshener', 'f5d0'),
(14, 'fa-align-center', 'f037'),
(15, 'fa-align-justify', 'f039'),
(16, 'fa-align-left', 'f036'),
(17, 'fa-align-right', 'f038'),
(19, 'fa-allergies', 'f461'),
(22, 'fa-ambulance', 'f0f9'),
(23, 'fa-american-sign-language-inte', 'f2a3'),
(25, 'fa-anchor', 'f13d'),
(28, 'fa-angle-double-down', 'f103'),
(29, 'fa-angle-double-left', 'f100'),
(30, 'fa-angle-double-right', 'f101'),
(31, 'fa-angle-double-up', 'f102'),
(32, 'fa-angle-down', 'f107'),
(33, 'fa-angle-left', 'f104'),
(34, 'fa-angle-right', 'f105'),
(35, 'fa-angle-up', 'f106'),
(38, 'fa-angular', 'f420'),
(39, 'fa-ankh', 'f644'),
(44, 'fa-apple-alt', 'f5d1'),
(46, 'fa-archive', 'f187'),
(47, 'fa-archway', 'f557'),
(48, 'fa-arrow-alt-circle-down', 'f358'),
(49, 'fa-arrow-alt-circle-left', 'f359'),
(50, 'fa-arrow-alt-circle-right', 'f35a'),
(51, 'fa-arrow-alt-circle-up', 'f35b'),
(52, 'fa-arrow-circle-down', 'f0ab'),
(53, 'fa-arrow-circle-left', 'f0a8'),
(54, 'fa-arrow-circle-right', 'f0a9'),
(55, 'fa-arrow-circle-up', 'f0aa'),
(56, 'fa-arrow-down', 'f063'),
(57, 'fa-arrow-left', 'f060'),
(58, 'fa-arrow-right', 'f061'),
(59, 'fa-arrow-up', 'f062'),
(60, 'fa-arrows-alt', 'f0b2'),
(61, 'fa-arrows-alt-h', 'f337'),
(62, 'fa-arrows-alt-v', 'f338'),
(64, 'fa-assistive-listening-systems', 'f2a2'),
(65, 'fa-asterisk', 'f069'),
(67, 'fa-at', 'f1fa'),
(68, 'fa-atlas', 'f558'),
(70, 'fa-atom', 'f5d2'),
(72, 'fa-audio-description', 'f29e'),
(76, 'fa-award', 'f559'),
(78, 'fa-baby', 'f77c'),
(79, 'fa-baby-carriage', 'f77d'),
(80, 'fa-backspace', 'f55a'),
(81, 'fa-backward', 'f04a'),
(82, 'fa-bacon', 'f7e5'),
(83, 'fa-bacteria', 'e059'),
(84, 'fa-bacterium', 'e05a'),
(85, 'fa-bahai', 'f666'),
(86, 'fa-balance-scale', 'f24e'),
(87, 'fa-balance-scale-left', 'f515'),
(88, 'fa-balance-scale-right', 'f516'),
(89, 'fa-ban', 'f05e'),
(90, 'fa-band-aid', 'f462'),
(92, 'fa-barcode', 'f02a'),
(93, 'fa-bars', 'f0c9'),
(94, 'fa-baseball-ball', 'f433'),
(95, 'fa-basketball-ball', 'f434'),
(96, 'fa-bath', 'f2cd'),
(97, 'fa-battery-empty', 'f244'),
(98, 'fa-battery-full', 'f240'),
(99, 'fa-battery-half', 'f242'),
(100, 'fa-battery-quarter', 'f243'),
(101, 'fa-battery-three-quarters', 'f241'),
(103, 'fa-bed', 'f236'),
(104, 'fa-beer', 'f0fc'),
(107, 'fa-bell', 'f0f3'),
(108, 'fa-bell-slash', 'f1f6'),
(109, 'fa-bezier-curve', 'f55b'),
(110, 'fa-bible', 'f647'),
(111, 'fa-bicycle', 'f206'),
(112, 'fa-biking', 'f84a'),
(114, 'fa-binoculars', 'f1e5'),
(115, 'fa-biohazard', 'f780'),
(116, 'fa-birthday-cake', 'f1fd'),
(122, 'fa-blender', 'f517'),
(123, 'fa-blender-phone', 'f6b6'),
(124, 'fa-blind', 'f29d'),
(125, 'fa-blog', 'f781'),
(130, 'fa-bold', 'f032'),
(131, 'fa-bolt', 'f0e7'),
(132, 'fa-bomb', 'f1e2'),
(133, 'fa-bone', 'f5d7'),
(134, 'fa-bong', 'f55c'),
(135, 'fa-book', 'f02d'),
(136, 'fa-book-dead', 'f6b7'),
(137, 'fa-book-medical', 'f7e6'),
(138, 'fa-book-open', 'f518'),
(139, 'fa-book-reader', 'f5da'),
(140, 'fa-bookmark', 'f02e'),
(142, 'fa-border-all', 'f84c'),
(143, 'fa-border-none', 'f850'),
(144, 'fa-border-style', 'f853'),
(145, 'fa-bowling-ball', 'f436'),
(146, 'fa-box', 'f466'),
(147, 'fa-box-open', 'f49e'),
(148, 'fa-box-tissue', 'e05b'),
(149, 'fa-boxes', 'f468'),
(150, 'fa-braille', 'f2a1'),
(151, 'fa-brain', 'f5dc'),
(152, 'fa-bread-slice', 'f7ec'),
(153, 'fa-briefcase', 'f0b1'),
(154, 'fa-briefcase-medical', 'f469'),
(155, 'fa-broadcast-tower', 'f519'),
(156, 'fa-broom', 'f51a'),
(157, 'fa-brush', 'f55d'),
(159, 'fa-buffer', 'f837'),
(160, 'fa-bug', 'f188'),
(161, 'fa-building', 'f1ad'),
(162, 'fa-bullhorn', 'f0a1'),
(163, 'fa-bullseye', 'f140'),
(164, 'fa-burn', 'f46a'),
(166, 'fa-bus', 'f207'),
(167, 'fa-bus-alt', 'f55e'),
(168, 'fa-business-time', 'f64a'),
(170, 'fa-buysellads', 'f20d'),
(171, 'fa-calculator', 'f1ec'),
(172, 'fa-calendar', 'f133'),
(173, 'fa-calendar-alt', 'f073'),
(174, 'fa-calendar-check', 'f274'),
(175, 'fa-calendar-day', 'f783'),
(176, 'fa-calendar-minus', 'f272'),
(177, 'fa-calendar-plus', 'f271'),
(178, 'fa-calendar-times', 'f273'),
(179, 'fa-calendar-week', 'f784'),
(180, 'fa-camera', 'f030'),
(181, 'fa-camera-retro', 'f083'),
(182, 'fa-campground', 'f6bb'),
(184, 'fa-candy-cane', 'f786'),
(185, 'fa-cannabis', 'f55f'),
(186, 'fa-capsules', 'f46b'),
(187, 'fa-car', 'f1b9'),
(188, 'fa-car-alt', 'f5de'),
(189, 'fa-car-battery', 'f5df'),
(190, 'fa-car-crash', 'f5e1'),
(191, 'fa-car-side', 'f5e4'),
(192, 'fa-caravan', 'f8ff'),
(193, 'fa-caret-down', 'f0d7'),
(194, 'fa-caret-left', 'f0d9'),
(195, 'fa-caret-right', 'f0da'),
(196, 'fa-caret-square-down', 'f150'),
(197, 'fa-caret-square-left', 'f191'),
(198, 'fa-caret-square-right', 'f152'),
(199, 'fa-caret-square-up', 'f151'),
(200, 'fa-caret-up', 'f0d8'),
(201, 'fa-carrot', 'f787'),
(202, 'fa-cart-arrow-down', 'f218'),
(203, 'fa-cart-plus', 'f217'),
(204, 'fa-cash-register', 'f788'),
(205, 'fa-cat', 'f6be'),
(218, 'fa-certificate', 'f0a3'),
(219, 'fa-chair', 'f6c0'),
(220, 'fa-chalkboard', 'f51b'),
(221, 'fa-chalkboard-teacher', 'f51c'),
(222, 'fa-charging-station', 'f5e7'),
(223, 'fa-chart-area', 'f1fe'),
(224, 'fa-chart-bar', 'f080'),
(225, 'fa-chart-line', 'f201'),
(226, 'fa-chart-pie', 'f200'),
(227, 'fa-check', 'f00c'),
(228, 'fa-check-circle', 'f058'),
(229, 'fa-check-double', 'f560'),
(230, 'fa-check-square', 'f14a'),
(231, 'fa-cheese', 'f7ef'),
(232, 'fa-chess', 'f439'),
(233, 'fa-chess-bishop', 'f43a'),
(234, 'fa-chess-board', 'f43c'),
(235, 'fa-chess-king', 'f43f'),
(236, 'fa-chess-knight', 'f441'),
(237, 'fa-chess-pawn', 'f443'),
(238, 'fa-chess-queen', 'f445'),
(239, 'fa-chess-rook', 'f447'),
(240, 'fa-chevron-circle-down', 'f13a'),
(241, 'fa-chevron-circle-left', 'f137'),
(242, 'fa-chevron-circle-right', 'f138'),
(243, 'fa-chevron-circle-up', 'f139'),
(244, 'fa-chevron-down', 'f078'),
(245, 'fa-chevron-left', 'f053'),
(246, 'fa-chevron-right', 'f054'),
(247, 'fa-chevron-up', 'f077'),
(248, 'fa-child', 'f1ae'),
(249, 'fa-chrome', 'f268'),
(251, 'fa-church', 'f51d'),
(252, 'fa-circle', 'f111'),
(253, 'fa-circle-notch', 'f1ce'),
(254, 'fa-city', 'f64f'),
(255, 'fa-clinic-medical', 'f7f2'),
(256, 'fa-clipboard', 'f328'),
(257, 'fa-clipboard-check', 'f46c'),
(258, 'fa-clipboard-list', 'f46d'),
(259, 'fa-clock', 'f017'),
(260, 'fa-clone', 'f24d'),
(261, 'fa-closed-captioning', 'f20a'),
(262, 'fa-cloud', 'f0c2'),
(263, 'fa-cloud-download-alt', 'f381'),
(264, 'fa-cloud-meatball', 'f73b'),
(265, 'fa-cloud-moon', 'f6c3'),
(266, 'fa-cloud-moon-rain', 'f73c'),
(267, 'fa-cloud-rain', 'f73d'),
(268, 'fa-cloud-showers-heavy', 'f740'),
(269, 'fa-cloud-sun', 'f6c4'),
(270, 'fa-cloud-sun-rain', 'f743'),
(271, 'fa-cloud-upload-alt', 'f382'),
(276, 'fa-cocktail', 'f561'),
(277, 'fa-code', 'f121'),
(278, 'fa-code-branch', 'f126'),
(281, 'fa-coffee', 'f0f4'),
(282, 'fa-cog', 'f013'),
(283, 'fa-cogs', 'f085'),
(284, 'fa-coins', 'f51e'),
(285, 'fa-columns', 'f0db'),
(286, 'fa-comment', 'f075'),
(287, 'fa-comment-alt', 'f27a'),
(288, 'fa-comment-dollar', 'f651'),
(289, 'fa-comment-dots', 'f4ad'),
(290, 'fa-comment-medical', 'f7f5'),
(291, 'fa-comment-slash', 'f4b3'),
(292, 'fa-comments', 'f086'),
(293, 'fa-comments-dollar', 'f653'),
(294, 'fa-compact-disc', 'f51f'),
(295, 'fa-compass', 'f14e'),
(296, 'fa-compress', 'f066'),
(297, 'fa-compress-alt', 'f422'),
(298, 'fa-compress-arrows-alt', 'f78c'),
(299, 'fa-concierge-bell', 'f562'),
(300, 'fa-confluence', 'f78d'),
(301, 'fa-connectdevelop', 'f20e'),
(302, 'fa-contao', 'f26d'),
(303, 'fa-cookie', 'f563'),
(304, 'fa-cookie-bite', 'f564'),
(305, 'fa-copy', 'f0c5'),
(306, 'fa-copyright', 'f1f9'),
(307, 'fa-cotton-bureau', 'f89e'),
(308, 'fa-couch', 'f4b8'),
(309, 'fa-cpanel', 'f388'),
(310, 'fa-creative-commons', 'f25e'),
(311, 'fa-creative-commons-by', 'f4e7'),
(312, 'fa-creative-commons-nc', 'f4e8'),
(313, 'fa-creative-commons-nc-eu', 'f4e9'),
(314, 'fa-creative-commons-nc-jp', 'f4ea'),
(315, 'fa-creative-commons-nd', 'f4eb'),
(316, 'fa-creative-commons-pd', 'f4ec'),
(317, 'fa-creative-commons-pd-alt', 'f4ed'),
(318, 'fa-creative-commons-remix', 'f4ee'),
(319, 'fa-creative-commons-sa', 'f4ef'),
(320, 'fa-creative-commons-sampling', 'f4f0'),
(321, 'fa-creative-commons-sampling-p', 'f4f1'),
(322, 'fa-creative-commons-share', 'f4f2'),
(323, 'fa-creative-commons-zero', 'f4f3'),
(324, 'fa-credit-card', 'f09d'),
(325, 'fa-critical-role', 'f6c9'),
(326, 'fa-crop', 'f125'),
(327, 'fa-crop-alt', 'f565'),
(328, 'fa-cross', 'f654'),
(329, 'fa-crosshairs', 'f05b'),
(330, 'fa-crow', 'f520'),
(331, 'fa-crown', 'f521'),
(332, 'fa-crutch', 'f7f7'),
(333, 'fa-css3', 'f13c'),
(334, 'fa-css3-alt', 'f38b'),
(335, 'fa-cube', 'f1b2'),
(336, 'fa-cubes', 'f1b3'),
(337, 'fa-cut', 'f0c4'),
(338, 'fa-cuttlefish', 'f38c'),
(339, 'fa-d-and-d', 'f38d'),
(340, 'fa-d-and-d-beyond', 'f6ca'),
(341, 'fa-dailymotion', 'e052'),
(342, 'fa-dashcube', 'f210'),
(343, 'fa-database', 'f1c0'),
(344, 'fa-deaf', 'f2a4'),
(345, 'fa-deezer', 'e077'),
(346, 'fa-delicious', 'f1a5'),
(347, 'fa-democrat', 'f747'),
(348, 'fa-deploydog', 'f38e'),
(349, 'fa-deskpro', 'f38f'),
(350, 'fa-desktop', 'f108'),
(351, 'fa-dev', 'f6cc'),
(352, 'fa-deviantart', 'f1bd'),
(353, 'fa-dharmachakra', 'f655'),
(354, 'fa-dhl', 'f790'),
(355, 'fa-diagnoses', 'f470'),
(356, 'fa-diaspora', 'f791'),
(357, 'fa-dice', 'f522'),
(358, 'fa-dice-d20', 'f6cf'),
(359, 'fa-dice-d6', 'f6d1'),
(360, 'fa-dice-five', 'f523'),
(361, 'fa-dice-four', 'f524'),
(362, 'fa-dice-one', 'f525'),
(363, 'fa-dice-six', 'f526'),
(364, 'fa-dice-three', 'f527'),
(365, 'fa-dice-two', 'f528'),
(366, 'fa-digg', 'f1a6'),
(367, 'fa-digital-ocean', 'f391'),
(368, 'fa-digital-tachograph', 'f566'),
(369, 'fa-directions', 'f5eb'),
(370, 'fa-discord', 'f392'),
(371, 'fa-discourse', 'f393'),
(372, 'fa-disease', 'f7fa'),
(373, 'fa-divide', 'f529'),
(374, 'fa-dizzy', 'f567'),
(375, 'fa-dna', 'f471'),
(376, 'fa-dochub', 'f394'),
(377, 'fa-docker', 'f395'),
(378, 'fa-dog', 'f6d3'),
(379, 'fa-dollar-sign', 'f155'),
(380, 'fa-dolly', 'f472'),
(381, 'fa-dolly-flatbed', 'f474'),
(382, 'fa-donate', 'f4b9'),
(383, 'fa-door-closed', 'f52a'),
(384, 'fa-door-open', 'f52b'),
(385, 'fa-dot-circle', 'f192'),
(386, 'fa-dove', 'f4ba'),
(387, 'fa-download', 'f019'),
(388, 'fa-draft2digital', 'f396'),
(389, 'fa-drafting-compass', 'f568'),
(390, 'fa-dragon', 'f6d5'),
(391, 'fa-draw-polygon', 'f5ee'),
(392, 'fa-dribbble', 'f17d'),
(393, 'fa-dribbble-square', 'f397'),
(394, 'fa-dropbox', 'f16b'),
(395, 'fa-drum', 'f569'),
(396, 'fa-drum-steelpan', 'f56a'),
(397, 'fa-drumstick-bite', 'f6d7'),
(398, 'fa-drupal', 'f1a9'),
(399, 'fa-dumbbell', 'f44b'),
(400, 'fa-dumpster', 'f793'),
(401, 'fa-dumpster-fire', 'f794'),
(402, 'fa-dungeon', 'f6d9'),
(403, 'fa-dyalog', 'f399'),
(404, 'fa-earlybirds', 'f39a'),
(405, 'fa-ebay', 'f4f4'),
(406, 'fa-edge', 'f282'),
(407, 'fa-edge-legacy', 'e078'),
(408, 'fa-edit', 'f044'),
(409, 'fa-egg', 'f7fb'),
(410, 'fa-eject', 'f052'),
(411, 'fa-elementor', 'f430'),
(412, 'fa-ellipsis-h', 'f141'),
(413, 'fa-ellipsis-v', 'f142'),
(414, 'fa-ello', 'f5f1'),
(415, 'fa-ember', 'f423'),
(416, 'fa-empire', 'f1d1'),
(417, 'fa-envelope', 'f0e0'),
(418, 'fa-envelope-open', 'f2b6'),
(419, 'fa-envelope-open-text', 'f658'),
(420, 'fa-envelope-square', 'f199'),
(421, 'fa-envira', 'f299'),
(422, 'fa-equals', 'f52c'),
(423, 'fa-eraser', 'f12d'),
(424, 'fa-erlang', 'f39d'),
(425, 'fa-ethereum', 'f42e'),
(426, 'fa-ethernet', 'f796'),
(427, 'fa-etsy', 'f2d7'),
(428, 'fa-euro-sign', 'f153'),
(429, 'fa-evernote', 'f839'),
(430, 'fa-exchange-alt', 'f362'),
(431, 'fa-exclamation', 'f12a'),
(432, 'fa-exclamation-circle', 'f06a'),
(433, 'fa-exclamation-triangle', 'f071'),
(434, 'fa-expand', 'f065'),
(435, 'fa-expand-alt', 'f424'),
(436, 'fa-expand-arrows-alt', 'f31e'),
(437, 'fa-expeditedssl', 'f23e'),
(438, 'fa-external-link-alt', 'f35d'),
(439, 'fa-external-link-square-alt', 'f360'),
(440, 'fa-eye', 'f06e'),
(441, 'fa-eye-dropper', 'f1fb'),
(442, 'fa-eye-slash', 'f070'),
(443, 'fa-facebook', 'f09a'),
(444, 'fa-facebook-f', 'f39e'),
(445, 'fa-facebook-messenger', 'f39f'),
(446, 'fa-facebook-square', 'f082'),
(447, 'fa-fan', 'f863'),
(448, 'fa-fantasy-flight-games', 'f6dc'),
(449, 'fa-fast-backward', 'f049'),
(450, 'fa-fast-forward', 'f050'),
(451, 'fa-faucet', 'e005'),
(452, 'fa-fax', 'f1ac'),
(453, 'fa-feather', 'f52d'),
(454, 'fa-feather-alt', 'f56b'),
(455, 'fa-fedex', 'f797'),
(456, 'fa-fedora', 'f798'),
(457, 'fa-female', 'f182'),
(458, 'fa-fighter-jet', 'f0fb'),
(459, 'fa-figma', 'f799'),
(460, 'fa-file', 'f15b'),
(461, 'fa-file-alt', 'f15c'),
(462, 'fa-file-archive', 'f1c6'),
(463, 'fa-file-audio', 'f1c7'),
(464, 'fa-file-code', 'f1c9'),
(465, 'fa-file-contract', 'f56c'),
(466, 'fa-file-csv', 'f6dd'),
(467, 'fa-file-download', 'f56d'),
(468, 'fa-file-excel', 'f1c3'),
(469, 'fa-file-export', 'f56e'),
(470, 'fa-file-image', 'f1c5'),
(471, 'fa-file-import', 'f56f'),
(472, 'fa-file-invoice', 'f570'),
(473, 'fa-file-invoice-dollar', 'f571'),
(474, 'fa-file-medical', 'f477'),
(475, 'fa-file-medical-alt', 'f478'),
(476, 'fa-file-pdf', 'f1c1'),
(477, 'fa-file-powerpoint', 'f1c4'),
(478, 'fa-file-prescription', 'f572'),
(479, 'fa-file-signature', 'f573'),
(480, 'fa-file-upload', 'f574'),
(481, 'fa-file-video', 'f1c8'),
(482, 'fa-file-word', 'f1c2'),
(483, 'fa-fill', 'f575'),
(484, 'fa-fill-drip', 'f576'),
(485, 'fa-film', 'f008'),
(486, 'fa-filter', 'f0b0'),
(487, 'fa-fingerprint', 'f577'),
(488, 'fa-fire', 'f06d'),
(489, 'fa-fire-alt', 'f7e4'),
(490, 'fa-fire-extinguisher', 'f134'),
(491, 'fa-firefox', 'f269'),
(492, 'fa-firefox-browser', 'e007'),
(493, 'fa-first-aid', 'f479'),
(494, 'fa-first-order', 'f2b0'),
(495, 'fa-first-order-alt', 'f50a'),
(496, 'fa-firstdraft', 'f3a1'),
(497, 'fa-fish', 'f578'),
(498, 'fa-fist-raised', 'f6de'),
(499, 'fa-flag', 'f024'),
(500, 'fa-flag-checkered', 'f11e'),
(501, 'fa-flag-usa', 'f74d'),
(502, 'fa-flask', 'f0c3'),
(503, 'fa-flickr', 'f16e'),
(504, 'fa-flipboard', 'f44d'),
(505, 'fa-flushed', 'f579'),
(506, 'fa-fly', 'f417'),
(507, 'fa-folder', 'f07b'),
(508, 'fa-folder-minus', 'f65d'),
(509, 'fa-folder-open', 'f07c'),
(510, 'fa-folder-plus', 'f65e'),
(511, 'fa-font', 'f031'),
(512, 'fa-font-awesome', 'f2b4'),
(513, 'fa-font-awesome-alt', 'f35c'),
(514, 'fa-font-awesome-flag', 'f425'),
(515, 'fa-font-awesome-logo-full', 'f4e6'),
(516, 'fa-fonticons', 'f280'),
(517, 'fa-fonticons-fi', 'f3a2'),
(518, 'fa-football-ball', 'f44e'),
(519, 'fa-fort-awesome', 'f286'),
(520, 'fa-fort-awesome-alt', 'f3a3'),
(521, 'fa-forumbee', 'f211'),
(522, 'fa-forward', 'f04e'),
(523, 'fa-foursquare', 'f180'),
(524, 'fa-free-code-camp', 'f2c5'),
(525, 'fa-freebsd', 'f3a4'),
(526, 'fa-frog', 'f52e'),
(527, 'fa-frown', 'f119'),
(528, 'fa-frown-open', 'f57a'),
(529, 'fa-fulcrum', 'f50b'),
(530, 'fa-funnel-dollar', 'f662'),
(531, 'fa-futbol', 'f1e3'),
(532, 'fa-galactic-republic', 'f50c'),
(533, 'fa-galactic-senate', 'f50d'),
(534, 'fa-gamepad', 'f11b'),
(535, 'fa-gas-pump', 'f52f'),
(536, 'fa-gavel', 'f0e3'),
(537, 'fa-gem', 'f3a5'),
(538, 'fa-genderless', 'f22d'),
(539, 'fa-get-pocket', 'f265'),
(540, 'fa-gg', 'f260'),
(541, 'fa-gg-circle', 'f261'),
(542, 'fa-ghost', 'f6e2'),
(543, 'fa-gift', 'f06b'),
(544, 'fa-gifts', 'f79c'),
(545, 'fa-git', 'f1d3'),
(546, 'fa-git-alt', 'f841'),
(547, 'fa-git-square', 'f1d2'),
(548, 'fa-github', 'f09b'),
(549, 'fa-github-alt', 'f113'),
(550, 'fa-github-square', 'f092'),
(551, 'fa-gitkraken', 'f3a6'),
(552, 'fa-gitlab', 'f296'),
(553, 'fa-gitter', 'f426'),
(554, 'fa-glass-cheers', 'f79f'),
(555, 'fa-glass-martini', 'f000'),
(556, 'fa-glass-martini-alt', 'f57b'),
(557, 'fa-glass-whiskey', 'f7a0'),
(558, 'fa-glasses', 'f530'),
(559, 'fa-glide', 'f2a5'),
(560, 'fa-glide-g', 'f2a6'),
(561, 'fa-globe', 'f0ac'),
(562, 'fa-globe-africa', 'f57c'),
(563, 'fa-globe-americas', 'f57d'),
(564, 'fa-globe-asia', 'f57e'),
(565, 'fa-globe-europe', 'f7a2'),
(566, 'fa-gofore', 'f3a7'),
(567, 'fa-golf-ball', 'f450'),
(568, 'fa-goodreads', 'f3a8'),
(569, 'fa-goodreads-g', 'f3a9'),
(570, 'fa-google', 'f1a0'),
(571, 'fa-google-drive', 'f3aa'),
(572, 'fa-google-pay', 'e079'),
(573, 'fa-google-play', 'f3ab'),
(574, 'fa-google-plus', 'f2b3'),
(575, 'fa-google-plus-g', 'f0d5'),
(576, 'fa-google-plus-square', 'f0d4'),
(577, 'fa-google-wallet', 'f1ee'),
(578, 'fa-gopuram', 'f664'),
(579, 'fa-graduation-cap', 'f19d'),
(580, 'fa-gratipay', 'f184'),
(581, 'fa-grav', 'f2d6'),
(582, 'fa-greater-than', 'f531'),
(583, 'fa-greater-than-equal', 'f532'),
(584, 'fa-grimace', 'f57f'),
(585, 'fa-grin', 'f580'),
(586, 'fa-grin-alt', 'f581'),
(587, 'fa-grin-beam', 'f582'),
(588, 'fa-grin-beam-sweat', 'f583'),
(589, 'fa-grin-hearts', 'f584'),
(590, 'fa-grin-squint', 'f585'),
(591, 'fa-grin-squint-tears', 'f586'),
(592, 'fa-grin-stars', 'f587'),
(593, 'fa-grin-tears', 'f588'),
(594, 'fa-grin-tongue', 'f589'),
(595, 'fa-grin-tongue-squint', 'f58a'),
(596, 'fa-grin-tongue-wink', 'f58b'),
(597, 'fa-grin-wink', 'f58c'),
(598, 'fa-grip-horizontal', 'f58d'),
(599, 'fa-grip-lines', 'f7a4'),
(600, 'fa-grip-lines-vertical', 'f7a5'),
(601, 'fa-grip-vertical', 'f58e'),
(602, 'fa-gripfire', 'f3ac'),
(603, 'fa-grunt', 'f3ad'),
(604, 'fa-guilded', 'e07e'),
(605, 'fa-guitar', 'f7a6'),
(606, 'fa-gulp', 'f3ae'),
(607, 'fa-h-square', 'f0fd'),
(608, 'fa-hacker-news', 'f1d4'),
(609, 'fa-hacker-news-square', 'f3af'),
(610, 'fa-hackerrank', 'f5f7'),
(611, 'fa-hamburger', 'f805'),
(612, 'fa-hammer', 'f6e3'),
(613, 'fa-hamsa', 'f665'),
(614, 'fa-hand-holding', 'f4bd'),
(615, 'fa-hand-holding-heart', 'f4be'),
(616, 'fa-hand-holding-medical', 'e05c'),
(617, 'fa-hand-holding-usd', 'f4c0'),
(618, 'fa-hand-holding-water', 'f4c1'),
(619, 'fa-hand-lizard', 'f258'),
(620, 'fa-hand-middle-finger', 'f806'),
(621, 'fa-hand-paper', 'f256'),
(622, 'fa-hand-peace', 'f25b'),
(623, 'fa-hand-point-down', 'f0a7'),
(624, 'fa-hand-point-left', 'f0a5'),
(625, 'fa-hand-point-right', 'f0a4'),
(626, 'fa-hand-point-up', 'f0a6'),
(627, 'fa-hand-pointer', 'f25a'),
(628, 'fa-hand-rock', 'f255'),
(629, 'fa-hand-scissors', 'f257'),
(630, 'fa-hand-sparkles', 'e05d'),
(631, 'fa-hand-spock', 'f259'),
(632, 'fa-hands', 'f4c2'),
(633, 'fa-hands-helping', 'f4c4'),
(634, 'fa-hands-wash', 'e05e'),
(635, 'fa-handshake', 'f2b5'),
(636, 'fa-handshake-alt-slash', 'e05f'),
(637, 'fa-handshake-slash', 'e060'),
(638, 'fa-hanukiah', 'f6e6'),
(639, 'fa-hard-hat', 'f807'),
(640, 'fa-hashtag', 'f292'),
(641, 'fa-hat-cowboy', 'f8c0'),
(642, 'fa-hat-cowboy-side', 'f8c1'),
(643, 'fa-hat-wizard', 'f6e8'),
(644, 'fa-hdd', 'f0a0'),
(645, 'fa-head-side-cough', 'e061'),
(646, 'fa-head-side-cough-slash', 'e062'),
(647, 'fa-head-side-mask', 'e063'),
(648, 'fa-head-side-virus', 'e064'),
(649, 'fa-heading', 'f1dc'),
(650, 'fa-headphones', 'f025'),
(651, 'fa-headphones-alt', 'f58f'),
(652, 'fa-headset', 'f590'),
(653, 'fa-heart', 'f004'),
(654, 'fa-heart-broken', 'f7a9'),
(655, 'fa-heartbeat', 'f21e'),
(656, 'fa-helicopter', 'f533'),
(657, 'fa-highlighter', 'f591'),
(658, 'fa-hiking', 'f6ec'),
(659, 'fa-hippo', 'f6ed'),
(660, 'fa-hips', 'f452'),
(661, 'fa-hire-a-helper', 'f3b0'),
(662, 'fa-history', 'f1da'),
(663, 'fa-hive', 'e07f'),
(664, 'fa-hockey-puck', 'f453'),
(665, 'fa-holly-berry', 'f7aa'),
(666, 'fa-home', 'f015'),
(667, 'fa-hooli', 'f427'),
(668, 'fa-hornbill', 'f592'),
(669, 'fa-horse', 'f6f0'),
(670, 'fa-horse-head', 'f7ab'),
(671, 'fa-hospital', 'f0f8'),
(672, 'fa-hospital-alt', 'f47d'),
(673, 'fa-hospital-symbol', 'f47e'),
(674, 'fa-hospital-user', 'f80d'),
(675, 'fa-hot-tub', 'f593'),
(676, 'fa-hotdog', 'f80f'),
(677, 'fa-hotel', 'f594'),
(678, 'fa-hotjar', 'f3b1'),
(679, 'fa-hourglass', 'f254'),
(680, 'fa-hourglass-end', 'f253'),
(681, 'fa-hourglass-half', 'f252'),
(682, 'fa-hourglass-start', 'f251'),
(683, 'fa-house-damage', 'f6f1'),
(684, 'fa-house-user', 'e065'),
(685, 'fa-houzz', 'f27c'),
(686, 'fa-hryvnia', 'f6f2'),
(687, 'fa-html5', 'f13b'),
(688, 'fa-hubspot', 'f3b2'),
(689, 'fa-i-cursor', 'f246'),
(690, 'fa-ice-cream', 'f810'),
(691, 'fa-icicles', 'f7ad'),
(692, 'fa-icons', 'f86d'),
(693, 'fa-id-badge', 'f2c1'),
(694, 'fa-id-card', 'f2c2'),
(695, 'fa-id-card-alt', 'f47f'),
(696, 'fa-ideal', 'e013'),
(697, 'fa-igloo', 'f7ae'),
(698, 'fa-image', 'f03e'),
(699, 'fa-images', 'f302'),
(700, 'fa-imdb', 'f2d8'),
(701, 'fa-inbox', 'f01c'),
(702, 'fa-indent', 'f03c'),
(703, 'fa-industry', 'f275'),
(704, 'fa-infinity', 'f534'),
(705, 'fa-info', 'f129'),
(706, 'fa-info-circle', 'f05a'),
(707, 'fa-innosoft', 'e080'),
(708, 'fa-instagram', 'f16d'),
(709, 'fa-instagram-square', 'e055'),
(710, 'fa-instalod', 'e081'),
(711, 'fa-intercom', 'f7af'),
(712, 'fa-internet-explorer', 'f26b'),
(713, 'fa-invision', 'f7b0'),
(714, 'fa-ioxhost', 'f208'),
(715, 'fa-italic', 'f033'),
(716, 'fa-itch-io', 'f83a'),
(717, 'fa-itunes', 'f3b4'),
(718, 'fa-itunes-note', 'f3b5'),
(719, 'fa-java', 'f4e4'),
(720, 'fa-jedi', 'f669'),
(721, 'fa-jedi-order', 'f50e'),
(722, 'fa-jenkins', 'f3b6'),
(723, 'fa-jira', 'f7b1'),
(724, 'fa-joget', 'f3b7'),
(725, 'fa-joint', 'f595'),
(726, 'fa-joomla', 'f1aa'),
(727, 'fa-journal-whills', 'f66a'),
(728, 'fa-js', 'f3b8'),
(729, 'fa-js-square', 'f3b9'),
(730, 'fa-jsfiddle', 'f1cc'),
(731, 'fa-kaaba', 'f66b'),
(732, 'fa-kaggle', 'f5fa'),
(733, 'fa-key', 'f084'),
(734, 'fa-keybase', 'f4f5'),
(735, 'fa-keyboard', 'f11c'),
(736, 'fa-keycdn', 'f3ba'),
(737, 'fa-khanda', 'f66d'),
(738, 'fa-kickstarter', 'f3bb'),
(739, 'fa-kickstarter-k', 'f3bc'),
(740, 'fa-kiss', 'f596'),
(741, 'fa-kiss-beam', 'f597'),
(742, 'fa-kiss-wink-heart', 'f598'),
(743, 'fa-kiwi-bird', 'f535'),
(744, 'fa-korvue', 'f42f'),
(745, 'fa-landmark', 'f66f'),
(746, 'fa-language', 'f1ab'),
(747, 'fa-laptop', 'f109'),
(748, 'fa-laptop-code', 'f5fc'),
(749, 'fa-laptop-house', 'e066'),
(750, 'fa-laptop-medical', 'f812'),
(751, 'fa-laravel', 'f3bd'),
(752, 'fa-lastfm', 'f202'),
(753, 'fa-lastfm-square', 'f203'),
(754, 'fa-laugh', 'f599'),
(755, 'fa-laugh-beam', 'f59a'),
(756, 'fa-laugh-squint', 'f59b'),
(757, 'fa-laugh-wink', 'f59c'),
(758, 'fa-layer-group', 'f5fd'),
(759, 'fa-leaf', 'f06c'),
(760, 'fa-leanpub', 'f212'),
(761, 'fa-lemon', 'f094'),
(762, 'fa-less', 'f41d'),
(763, 'fa-less-than', 'f536'),
(764, 'fa-less-than-equal', 'f537'),
(765, 'fa-level-down-alt', 'f3be'),
(766, 'fa-level-up-alt', 'f3bf'),
(767, 'fa-life-ring', 'f1cd'),
(768, 'fa-lightbulb', 'f0eb'),
(769, 'fa-line', 'f3c0'),
(770, 'fa-link', 'f0c1'),
(771, 'fa-linkedin', 'f08c'),
(772, 'fa-linkedin-in', 'f0e1'),
(773, 'fa-linode', 'f2b8'),
(774, 'fa-linux', 'f17c'),
(775, 'fa-lira-sign', 'f195'),
(776, 'fa-list', 'f03a'),
(777, 'fa-list-alt', 'f022'),
(778, 'fa-list-ol', 'f0cb'),
(779, 'fa-list-ul', 'f0ca'),
(780, 'fa-location-arrow', 'f124'),
(781, 'fa-lock', 'f023'),
(782, 'fa-lock-open', 'f3c1'),
(783, 'fa-long-arrow-alt-down', 'f309'),
(784, 'fa-long-arrow-alt-left', 'f30a'),
(785, 'fa-long-arrow-alt-right', 'f30b'),
(786, 'fa-long-arrow-alt-up', 'f30c'),
(787, 'fa-low-vision', 'f2a8'),
(788, 'fa-luggage-cart', 'f59d'),
(789, 'fa-lungs', 'f604'),
(790, 'fa-lungs-virus', 'e067'),
(791, 'fa-lyft', 'f3c3'),
(792, 'fa-magento', 'f3c4'),
(793, 'fa-magic', 'f0d0'),
(794, 'fa-magnet', 'f076'),
(795, 'fa-mail-bulk', 'f674'),
(796, 'fa-mailchimp', 'f59e'),
(797, 'fa-male', 'f183'),
(798, 'fa-mandalorian', 'f50f'),
(799, 'fa-map', 'f279'),
(800, 'fa-map-marked', 'f59f'),
(801, 'fa-map-marked-alt', 'f5a0'),
(802, 'fa-map-marker', 'f041'),
(803, 'fa-map-marker-alt', 'f3c5'),
(804, 'fa-map-pin', 'f276'),
(805, 'fa-map-signs', 'f277'),
(806, 'fa-markdown', 'f60f'),
(807, 'fa-marker', 'f5a1'),
(808, 'fa-mars', 'f222'),
(809, 'fa-mars-double', 'f227'),
(810, 'fa-mars-stroke', 'f229'),
(811, 'fa-mars-stroke-h', 'f22b'),
(812, 'fa-mars-stroke-v', 'f22a'),
(813, 'fa-mask', 'f6fa'),
(814, 'fa-mastodon', 'f4f6'),
(815, 'fa-maxcdn', 'f136'),
(816, 'fa-mdb', 'f8ca'),
(817, 'fa-medal', 'f5a2'),
(818, 'fa-medapps', 'f3c6'),
(819, 'fa-medium', 'f23a'),
(820, 'fa-medium-m', 'f3c7'),
(821, 'fa-medkit', 'f0fa'),
(822, 'fa-medrt', 'f3c8'),
(823, 'fa-meetup', 'f2e0'),
(824, 'fa-megaport', 'f5a3'),
(825, 'fa-meh', 'f11a'),
(826, 'fa-meh-blank', 'f5a4'),
(827, 'fa-meh-rolling-eyes', 'f5a5'),
(828, 'fa-memory', 'f538'),
(829, 'fa-mendeley', 'f7b3'),
(830, 'fa-menorah', 'f676'),
(831, 'fa-mercury', 'f223'),
(832, 'fa-meteor', 'f753'),
(833, 'fa-microblog', 'e01a'),
(834, 'fa-microchip', 'f2db'),
(835, 'fa-microphone', 'f130'),
(836, 'fa-microphone-alt', 'f3c9'),
(837, 'fa-microphone-alt-slash', 'f539'),
(838, 'fa-microphone-slash', 'f131'),
(839, 'fa-microscope', 'f610'),
(840, 'fa-microsoft', 'f3ca'),
(841, 'fa-minus', 'f068'),
(842, 'fa-minus-circle', 'f056'),
(843, 'fa-minus-square', 'f146'),
(844, 'fa-mitten', 'f7b5'),
(845, 'fa-mix', 'f3cb'),
(846, 'fa-mixcloud', 'f289'),
(847, 'fa-mixer', 'e056'),
(848, 'fa-mizuni', 'f3cc'),
(849, 'fa-mobile', 'f10b'),
(850, 'fa-mobile-alt', 'f3cd'),
(851, 'fa-modx', 'f285'),
(852, 'fa-monero', 'f3d0'),
(853, 'fa-money-bill', 'f0d6'),
(854, 'fa-money-bill-alt', 'f3d1'),
(855, 'fa-money-bill-wave', 'f53a'),
(856, 'fa-money-bill-wave-alt', 'f53b'),
(857, 'fa-money-check', 'f53c'),
(858, 'fa-money-check-alt', 'f53d'),
(859, 'fa-monument', 'f5a6'),
(860, 'fa-moon', 'f186'),
(861, 'fa-mortar-pestle', 'f5a7'),
(862, 'fa-mosque', 'f678'),
(863, 'fa-motorcycle', 'f21c'),
(864, 'fa-mountain', 'f6fc'),
(865, 'fa-mouse', 'f8cc'),
(866, 'fa-mouse-pointer', 'f245'),
(867, 'fa-mug-hot', 'f7b6'),
(868, 'fa-music', 'f001'),
(869, 'fa-napster', 'f3d2'),
(870, 'fa-neos', 'f612'),
(871, 'fa-network-wired', 'f6ff'),
(872, 'fa-neuter', 'f22c'),
(873, 'fa-newspaper', 'f1ea'),
(874, 'fa-nimblr', 'f5a8'),
(875, 'fa-node', 'f419'),
(876, 'fa-node-js', 'f3d3'),
(877, 'fa-not-equal', 'f53e'),
(878, 'fa-notes-medical', 'f481'),
(879, 'fa-npm', 'f3d4'),
(880, 'fa-ns8', 'f3d5'),
(881, 'fa-nutritionix', 'f3d6'),
(882, 'fa-object-group', 'f247'),
(883, 'fa-object-ungroup', 'f248'),
(884, 'fa-octopus-deploy', 'e082'),
(885, 'fa-odnoklassniki', 'f263'),
(886, 'fa-odnoklassniki-square', 'f264'),
(887, 'fa-oil-can', 'f613'),
(888, 'fa-old-republic', 'f510'),
(889, 'fa-om', 'f679'),
(890, 'fa-opencart', 'f23d'),
(891, 'fa-openid', 'f19b'),
(892, 'fa-opera', 'f26a'),
(893, 'fa-optin-monster', 'f23c'),
(894, 'fa-orcid', 'f8d2'),
(895, 'fa-osi', 'f41a'),
(896, 'fa-otter', 'f700'),
(897, 'fa-outdent', 'f03b'),
(898, 'fa-page4', 'f3d7'),
(899, 'fa-pagelines', 'f18c'),
(900, 'fa-pager', 'f815'),
(901, 'fa-paint-brush', 'f1fc'),
(902, 'fa-paint-roller', 'f5aa'),
(903, 'fa-palette', 'f53f'),
(904, 'fa-palfed', 'f3d8'),
(905, 'fa-pallet', 'f482'),
(906, 'fa-paper-plane', 'f1d8'),
(907, 'fa-paperclip', 'f0c6'),
(908, 'fa-parachute-box', 'f4cd'),
(909, 'fa-paragraph', 'f1dd'),
(910, 'fa-parking', 'f540'),
(911, 'fa-passport', 'f5ab'),
(912, 'fa-pastafarianism', 'f67b'),
(913, 'fa-paste', 'f0ea'),
(914, 'fa-patreon', 'f3d9'),
(915, 'fa-pause', 'f04c'),
(916, 'fa-pause-circle', 'f28b'),
(917, 'fa-paw', 'f1b0'),
(918, 'fa-paypal', 'f1ed'),
(919, 'fa-peace', 'f67c'),
(920, 'fa-pen', 'f304'),
(921, 'fa-pen-alt', 'f305'),
(922, 'fa-pen-fancy', 'f5ac'),
(923, 'fa-pen-nib', 'f5ad'),
(924, 'fa-pen-square', 'f14b'),
(925, 'fa-pencil-alt', 'f303'),
(926, 'fa-pencil-ruler', 'f5ae'),
(927, 'fa-penny-arcade', 'f704'),
(928, 'fa-people-arrows', 'e068'),
(929, 'fa-people-carry', 'f4ce'),
(930, 'fa-pepper-hot', 'f816'),
(931, 'fa-perbyte', 'e083'),
(932, 'fa-percent', 'f295'),
(933, 'fa-percentage', 'f541'),
(934, 'fa-periscope', 'f3da'),
(935, 'fa-person-booth', 'f756'),
(936, 'fa-phabricator', 'f3db'),
(937, 'fa-phoenix-framework', 'f3dc'),
(938, 'fa-phoenix-squadron', 'f511'),
(939, 'fa-phone', 'f095'),
(940, 'fa-phone-alt', 'f879'),
(941, 'fa-phone-slash', 'f3dd'),
(942, 'fa-phone-square', 'f098'),
(943, 'fa-phone-square-alt', 'f87b'),
(944, 'fa-phone-volume', 'f2a0'),
(945, 'fa-photo-video', 'f87c'),
(946, 'fa-php', 'f457'),
(947, 'fa-pied-piper', 'f2ae'),
(948, 'fa-pied-piper-alt', 'f1a8'),
(949, 'fa-pied-piper-hat', 'f4e5'),
(950, 'fa-pied-piper-pp', 'f1a7'),
(951, 'fa-pied-piper-square', 'e01e'),
(952, 'fa-piggy-bank', 'f4d3'),
(953, 'fa-pills', 'f484'),
(954, 'fa-pinterest', 'f0d2'),
(955, 'fa-pinterest-p', 'f231'),
(956, 'fa-pinterest-square', 'f0d3'),
(957, 'fa-pizza-slice', 'f818'),
(958, 'fa-place-of-worship', 'f67f'),
(959, 'fa-plane', 'f072'),
(960, 'fa-plane-arrival', 'f5af'),
(961, 'fa-plane-departure', 'f5b0'),
(962, 'fa-plane-slash', 'e069'),
(963, 'fa-play', 'f04b'),
(964, 'fa-play-circle', 'f144'),
(965, 'fa-playstation', 'f3df'),
(966, 'fa-plug', 'f1e6'),
(967, 'fa-plus', 'f067'),
(968, 'fa-plus-circle', 'f055'),
(969, 'fa-plus-square', 'f0fe'),
(970, 'fa-podcast', 'f2ce'),
(971, 'fa-poll', 'f681'),
(972, 'fa-poll-h', 'f682'),
(973, 'fa-poo', 'f2fe'),
(974, 'fa-poo-storm', 'f75a'),
(975, 'fa-poop', 'f619'),
(976, 'fa-portrait', 'f3e0'),
(977, 'fa-pound-sign', 'f154'),
(978, 'fa-power-off', 'f011'),
(979, 'fa-pray', 'f683'),
(980, 'fa-praying-hands', 'f684'),
(981, 'fa-prescription', 'f5b1'),
(982, 'fa-prescription-bottle', 'f485'),
(983, 'fa-prescription-bottle-alt', 'f486'),
(984, 'fa-print', 'f02f'),
(985, 'fa-procedures', 'f487'),
(986, 'fa-product-hunt', 'f288'),
(987, 'fa-project-diagram', 'f542'),
(988, 'fa-pump-medical', 'e06a'),
(989, 'fa-pump-soap', 'e06b'),
(990, 'fa-pushed', 'f3e1'),
(991, 'fa-puzzle-piece', 'f12e'),
(992, 'fa-python', 'f3e2'),
(993, 'fa-qq', 'f1d6'),
(994, 'fa-qrcode', 'f029'),
(995, 'fa-question', 'f128'),
(996, 'fa-question-circle', 'f059'),
(997, 'fa-quidditch', 'f458'),
(998, 'fa-quinscape', 'f459'),
(999, 'fa-quora', 'f2c4'),
(1000, 'fa-quote-left', 'f10d'),
(1001, 'fa-quote-right', 'f10e'),
(1002, 'fa-quran', 'f687'),
(1003, 'fa-r-project', 'f4f7'),
(1004, 'fa-radiation', 'f7b9'),
(1005, 'fa-radiation-alt', 'f7ba'),
(1006, 'fa-rainbow', 'f75b'),
(1007, 'fa-random', 'f074'),
(1008, 'fa-raspberry-pi', 'f7bb'),
(1009, 'fa-ravelry', 'f2d9'),
(1010, 'fa-react', 'f41b'),
(1011, 'fa-reacteurope', 'f75d'),
(1012, 'fa-readme', 'f4d5'),
(1013, 'fa-rebel', 'f1d0'),
(1014, 'fa-receipt', 'f543'),
(1015, 'fa-record-vinyl', 'f8d9'),
(1016, 'fa-recycle', 'f1b8'),
(1017, 'fa-red-river', 'f3e3'),
(1018, 'fa-reddit', 'f1a1'),
(1019, 'fa-reddit-alien', 'f281'),
(1020, 'fa-reddit-square', 'f1a2'),
(1021, 'fa-redhat', 'f7bc'),
(1022, 'fa-redo', 'f01e'),
(1023, 'fa-redo-alt', 'f2f9'),
(1024, 'fa-registered', 'f25d'),
(1025, 'fa-remove-format', 'f87d'),
(1026, 'fa-renren', 'f18b'),
(1027, 'fa-reply', 'f3e5'),
(1028, 'fa-reply-all', 'f122'),
(1029, 'fa-replyd', 'f3e6'),
(1030, 'fa-republican', 'f75e'),
(1031, 'fa-researchgate', 'f4f8'),
(1032, 'fa-resolving', 'f3e7'),
(1033, 'fa-restroom', 'f7bd'),
(1034, 'fa-retweet', 'f079'),
(1035, 'fa-rev', 'f5b2'),
(1036, 'fa-ribbon', 'f4d6'),
(1037, 'fa-ring', 'f70b'),
(1038, 'fa-road', 'f018'),
(1039, 'fa-robot', 'f544'),
(1040, 'fa-rocket', 'f135'),
(1041, 'fa-rocketchat', 'f3e8'),
(1042, 'fa-rockrms', 'f3e9'),
(1043, 'fa-route', 'f4d7'),
(1044, 'fa-rss', 'f09e'),
(1045, 'fa-rss-square', 'f143'),
(1046, 'fa-ruble-sign', 'f158'),
(1047, 'fa-ruler', 'f545'),
(1048, 'fa-ruler-combined', 'f546'),
(1049, 'fa-ruler-horizontal', 'f547'),
(1050, 'fa-ruler-vertical', 'f548'),
(1051, 'fa-running', 'f70c'),
(1052, 'fa-rupee-sign', 'f156'),
(1053, 'fa-rust', 'e07a'),
(1054, 'fa-sad-cry', 'f5b3'),
(1055, 'fa-sad-tear', 'f5b4'),
(1056, 'fa-safari', 'f267'),
(1057, 'fa-salesforce', 'f83b'),
(1058, 'fa-sass', 'f41e'),
(1059, 'fa-satellite', 'f7bf'),
(1060, 'fa-satellite-dish', 'f7c0'),
(1061, 'fa-save', 'f0c7'),
(1062, 'fa-schlix', 'f3ea'),
(1063, 'fa-school', 'f549'),
(1064, 'fa-screwdriver', 'f54a'),
(1065, 'fa-scribd', 'f28a'),
(1066, 'fa-scroll', 'f70e'),
(1067, 'fa-sd-card', 'f7c2'),
(1068, 'fa-search', 'f002'),
(1069, 'fa-search-dollar', 'f688'),
(1070, 'fa-search-location', 'f689'),
(1071, 'fa-search-minus', 'f010'),
(1072, 'fa-search-plus', 'f00e'),
(1073, 'fa-searchengin', 'f3eb'),
(1074, 'fa-seedling', 'f4d8'),
(1075, 'fa-sellcast', 'f2da'),
(1076, 'fa-sellsy', 'f213'),
(1077, 'fa-server', 'f233'),
(1078, 'fa-servicestack', 'f3ec'),
(1079, 'fa-shapes', 'f61f'),
(1080, 'fa-share', 'f064'),
(1081, 'fa-share-alt', 'f1e0'),
(1082, 'fa-share-alt-square', 'f1e1'),
(1083, 'fa-share-square', 'f14d'),
(1084, 'fa-shekel-sign', 'f20b'),
(1085, 'fa-shield-alt', 'f3ed'),
(1086, 'fa-shield-virus', 'e06c'),
(1087, 'fa-ship', 'f21a'),
(1088, 'fa-shipping-fast', 'f48b'),
(1089, 'fa-shirtsinbulk', 'f214'),
(1090, 'fa-shoe-prints', 'f54b'),
(1091, 'fa-shopify', 'e057'),
(1092, 'fa-shopping-bag', 'f290'),
(1093, 'fa-shopping-basket', 'f291'),
(1094, 'fa-shopping-cart', 'f07a'),
(1095, 'fa-shopware', 'f5b5'),
(1096, 'fa-shower', 'f2cc'),
(1097, 'fa-shuttle-van', 'f5b6'),
(1098, 'fa-sign', 'f4d9'),
(1099, 'fa-sign-in-alt', 'f2f6'),
(1100, 'fa-sign-language', 'f2a7'),
(1101, 'fa-sign-out-alt', 'f2f5'),
(1102, 'fa-signal', 'f012'),
(1103, 'fa-signature', 'f5b7'),
(1104, 'fa-sim-card', 'f7c4'),
(1105, 'fa-simplybuilt', 'f215'),
(1106, 'fa-sink', 'e06d'),
(1107, 'fa-sistrix', 'f3ee'),
(1108, 'fa-sitemap', 'f0e8'),
(1109, 'fa-sith', 'f512'),
(1110, 'fa-skating', 'f7c5'),
(1111, 'fa-sketch', 'f7c6'),
(1112, 'fa-skiing', 'f7c9'),
(1113, 'fa-skiing-nordic', 'f7ca'),
(1114, 'fa-skull', 'f54c'),
(1115, 'fa-skull-crossbones', 'f714'),
(1116, 'fa-skyatlas', 'f216'),
(1117, 'fa-skype', 'f17e'),
(1118, 'fa-slack', 'f198'),
(1119, 'fa-slack-hash', 'f3ef'),
(1120, 'fa-slash', 'f715'),
(1121, 'fa-sleigh', 'f7cc'),
(1122, 'fa-sliders-h', 'f1de'),
(1123, 'fa-slideshare', 'f1e7'),
(1124, 'fa-smile', 'f118'),
(1125, 'fa-smile-beam', 'f5b8'),
(1126, 'fa-smile-wink', 'f4da'),
(1127, 'fa-smog', 'f75f'),
(1128, 'fa-smoking', 'f48d'),
(1129, 'fa-smoking-ban', 'f54d'),
(1130, 'fa-sms', 'f7cd'),
(1131, 'fa-snapchat', 'f2ab'),
(1132, 'fa-snapchat-ghost', 'f2ac'),
(1133, 'fa-snapchat-square', 'f2ad'),
(1134, 'fa-snowboarding', 'f7ce'),
(1135, 'fa-snowflake', 'f2dc'),
(1136, 'fa-snowman', 'f7d0'),
(1137, 'fa-snowplow', 'f7d2'),
(1138, 'fa-soap', 'e06e'),
(1139, 'fa-socks', 'f696'),
(1140, 'fa-solar-panel', 'f5ba'),
(1141, 'fa-sort', 'f0dc'),
(1142, 'fa-sort-alpha-down', 'f15d'),
(1143, 'fa-sort-alpha-down-alt', 'f881'),
(1144, 'fa-sort-alpha-up', 'f15e'),
(1145, 'fa-sort-alpha-up-alt', 'f882'),
(1146, 'fa-sort-amount-down', 'f160'),
(1147, 'fa-sort-amount-down-alt', 'f884'),
(1148, 'fa-sort-amount-up', 'f161'),
(1149, 'fa-sort-amount-up-alt', 'f885'),
(1150, 'fa-sort-down', 'f0dd'),
(1151, 'fa-sort-numeric-down', 'f162'),
(1152, 'fa-sort-numeric-down-alt', 'f886'),
(1153, 'fa-sort-numeric-up', 'f163'),
(1154, 'fa-sort-numeric-up-alt', 'f887'),
(1155, 'fa-sort-up', 'f0de'),
(1156, 'fa-soundcloud', 'f1be'),
(1157, 'fa-sourcetree', 'f7d3'),
(1158, 'fa-spa', 'f5bb'),
(1159, 'fa-space-shuttle', 'f197'),
(1160, 'fa-speakap', 'f3f3'),
(1161, 'fa-speaker-deck', 'f83c'),
(1162, 'fa-spell-check', 'f891'),
(1163, 'fa-spider', 'f717'),
(1164, 'fa-spinner', 'f110'),
(1165, 'fa-splotch', 'f5bc'),
(1166, 'fa-spotify', 'f1bc'),
(1167, 'fa-spray-can', 'f5bd'),
(1168, 'fa-square', 'f0c8'),
(1169, 'fa-square-full', 'f45c'),
(1170, 'fa-square-root-alt', 'f698'),
(1171, 'fa-squarespace', 'f5be'),
(1172, 'fa-stack-exchange', 'f18d'),
(1173, 'fa-stack-overflow', 'f16c'),
(1174, 'fa-stackpath', 'f842'),
(1175, 'fa-stamp', 'f5bf'),
(1176, 'fa-star', 'f005'),
(1177, 'fa-star-and-crescent', 'f699'),
(1178, 'fa-star-half', 'f089'),
(1179, 'fa-star-half-alt', 'f5c0'),
(1180, 'fa-star-of-david', 'f69a'),
(1181, 'fa-star-of-life', 'f621'),
(1182, 'fa-staylinked', 'f3f5'),
(1183, 'fa-steam', 'f1b6'),
(1184, 'fa-steam-square', 'f1b7'),
(1185, 'fa-steam-symbol', 'f3f6'),
(1186, 'fa-step-backward', 'f048'),
(1187, 'fa-step-forward', 'f051'),
(1188, 'fa-stethoscope', 'f0f1'),
(1189, 'fa-sticker-mule', 'f3f7'),
(1190, 'fa-sticky-note', 'f249'),
(1191, 'fa-stop', 'f04d'),
(1192, 'fa-stop-circle', 'f28d'),
(1193, 'fa-stopwatch', 'f2f2'),
(1194, 'fa-stopwatch-20', 'e06f'),
(1195, 'fa-store', 'f54e'),
(1196, 'fa-store-alt', 'f54f'),
(1197, 'fa-store-alt-slash', 'e070'),
(1198, 'fa-store-slash', 'e071'),
(1199, 'fa-strava', 'f428'),
(1200, 'fa-stream', 'f550'),
(1201, 'fa-street-view', 'f21d'),
(1202, 'fa-strikethrough', 'f0cc'),
(1203, 'fa-stripe', 'f429'),
(1204, 'fa-stripe-s', 'f42a'),
(1205, 'fa-stroopwafel', 'f551'),
(1206, 'fa-studiovinari', 'f3f8'),
(1207, 'fa-stumbleupon', 'f1a4'),
(1208, 'fa-stumbleupon-circle', 'f1a3'),
(1209, 'fa-subscript', 'f12c'),
(1210, 'fa-subway', 'f239'),
(1211, 'fa-suitcase', 'f0f2'),
(1212, 'fa-suitcase-rolling', 'f5c1'),
(1213, 'fa-sun', 'f185'),
(1214, 'fa-superpowers', 'f2dd');

-- --------------------------------------------------------

--
-- Table structure for table `introduction_table`
--

CREATE TABLE `introduction_table` (
  `id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `introduction_table`
--

INSERT INTO `introduction_table` (`id`, `title`, `description`) VALUES
(1, 'परिचय', '<h1>जिल्ला आयुर्वेद स्वास्थ्य केन्द्र</h1>\r\n<p>नेपालको भौगोलिक बिभाजन अनुसार हिमालपारीकाे जिल्ला भनेर परिचित हिमाली जिल्ला मुस्ताङ, जाेमसाेममा अवस्थित जिल्ला आयुर्वेद स्वास्थ्य केन्द्र, मुस्ताङको स्थापना २०५८ सालमा भएकाे हो । प्रारम्भमा याे स्वास्थ्य केन्द्र नेपाल सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, आयुर्वेद विभाग अन्तर्गत स्थापना भएकाे हो । संघीय गणत्रन्त्र स्थापना सँगै सात प्रदेश कायम पश्चात यस कार्यालय गण्डकी प्रदेश, सामाजिक विकास मन्त्रालय, स्वास्थ्य निर्देशनालय अन्तर्गत रही प्रदेश कार्यालयकाे रुपमा रहेकाेमा हालै गण्डकी प्रदेशमा स्वास्थ्य तथा जनसंख्या मन्त्रालयको स्थापना पछि भने यस कार्यालय प्रदेश सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, स्वास्थ्य निर्देशनालय, गण्डकी प्रदेश अन्तर्गत रहेर मुस्ताङ जिल्ला भर निःशुल्क स्वास्थ्य प्रवर्धनात्मक एवं रोग प्रतिकारात्मक तथा उपचारात्मक सेवा प्रदान गर्दै आइरहेकाे छ । विगतमा यस कार्यालयबाट यस जिल्ला भित्र रहेका लाेमान्थाङ आयुर्वेद औषधालय र कागवेनी आयुर्वेद औषधालयको समेत आर्थिक एवं प्रशासनिक जिम्मेवारी बहन गर्दै आइरहेकाेमा हाल संघीयता कार्यान्वयन पछी भने ति दुइ औषधालयहरु स्थानिय सरकार अन्तर्गत रहेका छन्।<br>हाल यस जिल्ला आयुर्वेद स्वास्थ्य केन्द्रले मुस्ताङ जिल्लाकाे सदरमुकाम जाेमसाेम स्थित घरपझाेङ गाँउपालिका वडा नं ४ स्थित आफ्नै भवनबाट नियमित सेवा प्रदान गर्दै आइरहेकाे छ । मुस्ताङ जिल्लामा रहेका ५ पालिकाहरु मध्ये आयुर्वेद केन्द्र नरहेका २ पालिकाहरुमा आयुर्वेद सेवा प्रदान गर्न यस कार्यालय अन्तर्गत ३ वटा नागरिक आरोग्य सेवा केन्द्रहरु क्रमश: लाेघ्याकर दामाेदरकुण्ड गाँउपालिकाकाे चराङ, घरपझाेङ गाँउपालिकाे स्याङ र थासाङ गाँउपालिकाे काेवाङमा स्थापना भइ नियमित स्वास्थ्य सेवा प्रदान गरिरहेका छन् ।</p>');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int NOT NULL,
  `location` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location`) VALUES
(1, '<p><iframe style=\"border: 0px; width: 441px; height: 331px;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2977.719898387538!2d83.73182667479368!3d28.78605997558121!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39be0f1daba90475%3A0xcbc629481fa2b040!2sDistric%20Ayurveda%20health%20centre!5e1!3m2!1sne!2snp!4v1723979010978!5m2!1sne!2snp\" width=\"441\" height=\"331\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></p>');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int NOT NULL,
  `label_menu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_menu` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int NOT NULL,
  `has_child` int NOT NULL,
  `content_type` int DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `label_menu`, `url_menu`, `parent_id`, `has_child`, `content_type`, `content_id`, `delete_status`, `added_on`) VALUES
(1, 'गृहपृष्ठ', 'गहपष्ठ', 0, 0, 1, 82, 0, '2024-08-18 17:34:05'),
(2, 'हाम्रोबारे', 'हाम्रोबारे', 0, 0, 1, 83, 0, '2024-08-18 17:34:05'),
(3, 'सूचना/समाचार', 'सूचनासमाचार', 0, 0, 2, 157, 0, '2024-08-18 17:34:05'),
(4, 'आयुर्वेद सेवा केन्द्रहरु', 'आयुर्वेद-सेवा-केन्द्रहरु', 0, 0, 1, 133, 0, '2024-08-18 17:34:05'),
(5, 'कर्मचारी बिवरण', 'कर्मचारी-बिवरण', 0, 0, 1, 130, 0, '2024-08-18 17:34:05'),
(6, 'नागरिक वडा पत्र', 'नागरिक-वडा-पत्र', 0, 0, 1, 134, 0, '2024-08-18 17:34:05'),
(7, 'सेवा प्रवाह सम्बन्धि तथ्यांकहरु', 'सेवा-प्रवाह-सम्बन्धि-तथ्यांकहरु', 0, 0, 1, 135, 0, '2024-08-18 17:34:05'),
(8, 'सूचना र सर्कुलर', 'सूचना-र-सर्कुलर', 0, 0, 2, 156, 0, '2024-08-18 17:34:05'),
(9, 'ऐन / नियम', 'ऐन-नियम', 0, 0, 1, 124, 0, '2024-08-18 17:34:05'),
(10, 'सम्पर्क', 'सम्पर्क', 0, 0, 1, 92, 0, '2024-08-18 17:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_tbl`
--

CREATE TABLE `navigation_tbl` (
  `nav_id` int NOT NULL,
  `img_icon` varchar(100) DEFAULT NULL,
  `page_order` int NOT NULL,
  `nav_pg_id` varchar(50) NOT NULL,
  `nav_typ` int NOT NULL,
  `custom_field` varchar(100) DEFAULT NULL,
  `custom_url` text NOT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `navigation_tbl`
--

INSERT INTO `navigation_tbl` (`nav_id`, `img_icon`, `page_order`, `nav_pg_id`, `nav_typ`, `custom_field`, `custom_url`, `delete_status`, `added_on`) VALUES
(5, 'fa-chart-line', 3, '95', 1, '', '', 0, '2024-07-08 13:43:50'),
(6, 'fa-book-reader', 2, '94', 1, '', '', 0, '2024-07-08 13:51:46'),
(7, 'fa-address-book', 1, '93', 1, '', '', 0, '2024-07-08 13:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `new_ticker`
--

CREATE TABLE `new_ticker` (
  `ticker_id` int NOT NULL,
  `category_id` int NOT NULL,
  `add_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `new_ticker`
--

INSERT INTO `new_ticker` (`ticker_id`, `category_id`, `add_on`) VALUES
(1, 3, '2024-07-10 14:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `officer_tbl`
--

CREATE TABLE `officer_tbl` (
  `officer_id` int NOT NULL,
  `officer_name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `officer_image` varchar(100) DEFAULT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `officer_tbl`
--

INSERT INTO `officer_tbl` (`officer_id`, `officer_name`, `designation`, `order_num`, `mobile`, `email`, `officer_image`, `delete_status`, `added_on`) VALUES
(1, 'डा. रामचन्द्र यादव', 'प्रमुख', 1, '', '', 'ram1(1).jpg', 1, '2023-12-25 11:42:35'),
(2, 'officer name', 'सूचना अधिकारी', 2, '1234567890', 'admin@admin.com', '1720599711_dbb376e2d4f16ad4f59b.png', 1, '2023-12-25 11:43:35'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-26 11:10:10'),
(4, 'Officer Name', 'कार्यकारी निर्देशक', 1, '1234567890', '', '1720599699_3d11156dd78c94808469.png', 1, '2024-07-08 12:27:44'),
(5, 'thid', 'desg', 3, '', '', '1720600241_9f0a673f68137bfff93d.png', 1, '2024-07-10 14:15:41'),
(6, 'शैलेन्द्र कुमार मिश्र', 'डिभिजनल वन अधिकृत', 0, 'मो.९८५५०४१८२३', '', '1721802882_5f6f0ae1ea00afa234b9.jpg', 1, '2024-07-24 12:19:42'),
(7, 'डा. सरोज कुमार राय  ', ' कार्यालय प्रमुख', 1, '  मोबाइल नं : ९८५७६४०१५३', 'drsaroj2013@gmail.com', '1723977735_9a680207a80d90c1edbe.jpg', 0, '2024-07-30 13:41:23'),
(8, 'डा. कृष्टिना गणेश कविराज ', 'सूचना अधिकारी', 2, 'मोबाइल नं : ९८५७६५१८०५  ', 'tikris25@gmail.com', '1723977811_bb788f82c20c7da7d126.jpg', 0, '2024-07-30 13:43:44'),
(9, 'अनिल कुमार साह ', 'सूचना अधिकारी ', 3, 'मोबाइल नं 9845280917', 'anilshah842@gmail.com', '1722587848_7f4eac221915f65c0f87.jpeg', 1, '2024-07-30 13:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `pagetbl`
--

CREATE TABLE `pagetbl` (
  `pg_id` int NOT NULL,
  `page_title` varchar(200) DEFAULT NULL,
  `page_status` int NOT NULL,
  `page_desc` longtext,
  `page_featured_img` varchar(100) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `doc_typ` int DEFAULT '1',
  `order_by` int DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `deleted_by` int NOT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pagetbl`
--

INSERT INTO `pagetbl` (`pg_id`, `page_title`, `page_status`, `page_desc`, `page_featured_img`, `slug`, `doc_typ`, `order_by`, `created_by`, `updated_by`, `deleted_by`, `delete_status`, `added_on`) VALUES
(82, 'गृहपृष्ठ', 1, '<header class=\"vc_cta3-content-header\">\r\n<h1>जिल्ला आयुर्वेद स्वास्थ्य केन्द्र</h1>\r\n<p>नेपालको भौगोलिक बिभाजन अनुसार हिमालपारीकाे जिल्ला भनेर परिचित हिमाली जिल्ला मुस्ताङ, जाेमसाेममा अवस्थित जिल्ला आयुर्वेद स्वास्थ्य केन्द्र, मुस्ताङको स्थापना २०५८ सालमा भएकाे हो । प्रारम्भमा याे स्वास्थ्य केन्द्र नेपाल सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, आयुर्वेद विभाग अन्तर्गत स्थापना भएकाे हो । संघीय गणत्रन्त्र स्थापना सँगै सात प्रदेश कायम पश्चात यस कार्यालय गण्डकी प्रदेश, सामाजिक विकास मन्त्रालय, स्वास्थ्य निर्देशनालय अन्तर्गत रही प्रदेश कार्यालयकाे रुपमा रहेकाेमा हालै गण्डकी प्रदेशमा स्वास्थ्य तथा जनसंख्या मन्त्रालयको स्थापना पछि भने यस कार्यालय प्रदेश सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, स्वास्थ्य निर्देशनालय, गण्डकी प्रदेश अन्तर्गत रहेर मुस्ताङ जिल्ला भर निःशुल्क स्वास्थ्य प्रवर्धनात्मक एवं रोग प्रतिकारात्मक तथा उपचारात्मक सेवा प्रदान गर्दै आइरहेकाे छ । विगतमा यस कार्यालयबाट यस जिल्ला भित्र रहेका लाेमान्थाङ आयुर्वेद औषधालय र कागवेनी आयुर्वेद औषधालयको समेत आर्थिक एवं प्रशासनिक जिम्मेवारी बहन गर्दै आइरहेकाेमा हाल संघीयता कार्यान्वयन पछी भने ति दुइ औषधालयहरु स्थानिय सरकार अन्तर्गत रहेका छन्।<br>हाल यस जिल्ला आयुर्वेद स्वास्थ्य केन्द्रले मुस्ताङ जिल्लाकाे सदरमुकाम जाेमसाेम स्थित घरपझाेङ गाँउपालिका वडा नं ४ स्थित आफ्नै भवनबाट नियमित सेवा प्रदान गर्दै आइरहेकाे छ । मुस्ताङ जिल्लामा रहेका ५ पालिकाहरु मध्ये आयुर्वेद केन्द्र नरहेका २ पालिकाहरुमा आयुर्वेद सेवा प्रदान गर्न यस कार्यालय अन्तर्गत ३ वटा नागरिक आरोग्य सेवा केन्द्रहरु क्रमश: लाेघ्याकर दामाेदरकुण्ड गाँउपालिकाकाे चराङ, घरपझाेङ गाँउपालिकाे स्याङ र थासाङ गाँउपालिकाे काेवाङमा स्थापना भइ नियमित स्वास्थ्य सेवा प्रदान गरिरहेका छन् ।</p>\r\n</header>', NULL, 'गहपष्ठ', 1, NULL, 0, 0, 0, 0, '2024-07-07 16:01:38'),
(83, 'हाम्रोबारे', 1, '<div class=\"wpb_text_column wpb_content_element  vc_custom_1584617952449\">\r\n<div class=\"wpb_wrapper\">\r\n<h1>जिल्ला आयुर्वेद स्वास्थ्य केन्द्र</h1>\r\n<p>नेपालको भौगोलिक बिभाजन अनुसार हिमालपारीकाे जिल्ला भनेर परिचित हिमाली जिल्ला मुस्ताङ, जाेमसाेममा अवस्थित जिल्ला आयुर्वेद स्वास्थ्य केन्द्र, मुस्ताङको स्थापना २०५८ सालमा भएकाे हो । प्रारम्भमा याे स्वास्थ्य केन्द्र नेपाल सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, आयुर्वेद विभाग अन्तर्गत स्थापना भएकाे हो । संघीय गणत्रन्त्र स्थापना सँगै सात प्रदेश कायम पश्चात यस कार्यालय गण्डकी प्रदेश, सामाजिक विकास मन्त्रालय, स्वास्थ्य निर्देशनालय अन्तर्गत रही प्रदेश कार्यालयकाे रुपमा रहेकाेमा हालै गण्डकी प्रदेशमा स्वास्थ्य तथा जनसंख्या मन्त्रालयको स्थापना पछि भने यस कार्यालय प्रदेश सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, स्वास्थ्य निर्देशनालय, गण्डकी प्रदेश अन्तर्गत रहेर मुस्ताङ जिल्ला भर निःशुल्क स्वास्थ्य प्रवर्धनात्मक एवं रोग प्रतिकारात्मक तथा उपचारात्मक सेवा प्रदान गर्दै आइरहेकाे छ । विगतमा यस कार्यालयबाट यस जिल्ला भित्र रहेका लाेमान्थाङ आयुर्वेद औषधालय र कागवेनी आयुर्वेद औषधालयको समेत आर्थिक एवं प्रशासनिक जिम्मेवारी बहन गर्दै आइरहेकाेमा हाल संघीयता कार्यान्वयन पछी भने ति दुइ औषधालयहरु स्थानिय सरकार अन्तर्गत रहेका छन्।<br>हाल यस जिल्ला आयुर्वेद स्वास्थ्य केन्द्रले मुस्ताङ जिल्लाकाे सदरमुकाम जाेमसाेम स्थित घरपझाेङ गाँउपालिका वडा नं ४ स्थित आफ्नै भवनबाट नियमित सेवा प्रदान गर्दै आइरहेकाे छ । मुस्ताङ जिल्लामा रहेका ५ पालिकाहरु मध्ये आयुर्वेद केन्द्र नरहेका २ पालिकाहरुमा आयुर्वेद सेवा प्रदान गर्न यस कार्यालय अन्तर्गत ३ वटा नागरिक आरोग्य सेवा केन्द्रहरु क्रमश: लाेघ्याकर दामाेदरकुण्ड गाँउपालिकाकाे चराङ, घरपझाेङ गाँउपालिकाे स्याङ र थासाङ गाँउपालिकाे काेवाङमा स्थापना भइ नियमित स्वास्थ्य सेवा प्रदान गरिरहेका छन् ।</p>\r\n</div>\r\n</div>', NULL, 'हाम्रोबारे', 1, NULL, 0, 0, 0, 0, '2024-07-07 16:03:08'),
(84, 'परिचय', 1, '<h1>जिल्ला आयुर्वेद स्वास्थ्य केन्द्र</h1>\r\n<p>नेपालको भौगोलिक बिभाजन अनुसार हिमालपारीकाे जिल्ला भनेर परिचित हिमाली जिल्ला मुस्ताङ, जाेमसाेममा अवस्थित जिल्ला आयुर्वेद स्वास्थ्य केन्द्र, मुस्ताङको स्थापना २०५८ सालमा भएकाे हो । प्रारम्भमा याे स्वास्थ्य केन्द्र नेपाल सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, आयुर्वेद विभाग अन्तर्गत स्थापना भएकाे हो । संघीय गणत्रन्त्र स्थापना सँगै सात प्रदेश कायम पश्चात यस कार्यालय गण्डकी प्रदेश, सामाजिक विकास मन्त्रालय, स्वास्थ्य निर्देशनालय अन्तर्गत रही प्रदेश कार्यालयकाे रुपमा रहेकाेमा हालै गण्डकी प्रदेशमा स्वास्थ्य तथा जनसंख्या मन्त्रालयको स्थापना पछि भने यस कार्यालय प्रदेश सरकार, स्वास्थ्य तथा जनसंख्या मन्त्रालय, स्वास्थ्य निर्देशनालय, गण्डकी प्रदेश अन्तर्गत रहेर मुस्ताङ जिल्ला भर निःशुल्क स्वास्थ्य प्रवर्धनात्मक एवं रोग प्रतिकारात्मक तथा उपचारात्मक सेवा प्रदान गर्दै आइरहेकाे छ । विगतमा यस कार्यालयबाट यस जिल्ला भित्र रहेका लाेमान्थाङ आयुर्वेद औषधालय र कागवेनी आयुर्वेद औषधालयको समेत आर्थिक एवं प्रशासनिक जिम्मेवारी बहन गर्दै आइरहेकाेमा हाल संघीयता कार्यान्वयन पछी भने ति दुइ औषधालयहरु स्थानिय सरकार अन्तर्गत रहेका छन्।<br>हाल यस जिल्ला आयुर्वेद स्वास्थ्य केन्द्रले मुस्ताङ जिल्लाकाे सदरमुकाम जाेमसाेम स्थित घरपझाेङ गाँउपालिका वडा नं ४ स्थित आफ्नै भवनबाट नियमित सेवा प्रदान गर्दै आइरहेकाे छ । मुस्ताङ जिल्लामा रहेका ५ पालिकाहरु मध्ये आयुर्वेद केन्द्र नरहेका २ पालिकाहरुमा आयुर्वेद सेवा प्रदान गर्न यस कार्यालय अन्तर्गत ३ वटा नागरिक आरोग्य सेवा केन्द्रहरु क्रमश: लाेघ्याकर दामाेदरकुण्ड गाँउपालिकाकाे चराङ, घरपझाेङ गाँउपालिकाे स्याङ र थासाङ गाँउपालिकाे काेवाङमा स्थापना भइ नियमित स्वास्थ्य सेवा प्रदान गरिरहेका छन् ।</p>', NULL, 'परिचय', 1, NULL, 0, 0, 0, 0, '2024-07-07 16:04:00'),
(86, 'संगठन संरचना', 1, '', NULL, 'संगठन-संरचना', 1, NULL, 0, 0, 0, 1, '2024-07-07 16:04:38'),
(87, 'प्रशिक्षण', 1, '', NULL, 'प्रशिक्षण', 1, NULL, 0, 0, 0, 1, '2024-07-07 16:05:29'),
(91, 'प्रशासन शाखा', 1, '', NULL, 'प्रशासन-शाखा', 1, NULL, 0, 0, 0, 1, '2024-07-07 16:16:28'),
(92, 'सम्पर्क', 1, '<p><strong>जिल्ला आयुर्वेद स्वास्थ्य केन्द्र, मुस्ताङ</strong><strong><br></strong></p>\r\n<hr>\r\n<p><strong>घरपझोङ गाँउपालिका &ndash; ४, जाेमसाेम</strong></p>\r\n<p><strong>फाेन :</strong>&nbsp;<strong>०६९-४४०१५३</strong></p>\r\n<p><strong>ईमेल:</strong>&nbsp;&nbsp;<strong><a href=\"mailto:dahc.jomsom@gmail.com\">dahc.jomsom@gmail.com</a></strong></p>\r\n<p>&nbsp;</p>\r\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2977.719898387538!2d83.73182667479368!3d28.78605997558121!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39be0f1daba90475%3A0xcbc629481fa2b040!2sDistric%20Ayurveda%20health%20centre!5e1!3m2!1sne!2snp!4v1723979010978!5m2!1sne!2snp\" width=\"600\" height=\"450\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></p>', NULL, 'सम्पर्क', 1, NULL, 0, 0, 0, 0, '2024-07-08 13:19:45'),
(93, 'नागरिक वडापत्र', 1, '<h3 class=\"page-title\">नागरिक वडापत्र</h3>', NULL, 'नागरिक-वडापत्र', 1, NULL, 0, 0, 0, 1, '2024-07-08 13:42:24'),
(94, 'फारम', 1, '', NULL, 'फारम', 1, NULL, 0, 0, 0, 1, '2024-07-08 13:42:37'),
(95, 'धेरै सोधिएका प्रश्नहरु', 1, '', NULL, 'धेरै-सोधिएका-प्रश्नहरु', 1, NULL, 0, 0, 0, 1, '2024-07-08 13:42:50'),
(98, 'संगठन संरचना', 1, '', NULL, 'संगठन-संरचना', 1, NULL, 0, 0, 0, 1, '2024-07-25 12:55:49'),
(99, 'नागरिक वडापत्र', 1, '<h3 class=\"page-title\">नागरिक वडापत्र</h3>', NULL, 'नागरिक-वडापत्र', 1, NULL, 0, 0, 0, 1, '2024-07-25 15:52:29'),
(100, 'वनको विवरण', 1, '', NULL, 'वनको-विवरण', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:10:29'),
(101, ' राष्ट्रिय वन', 1, '<table style=\"border-collapse: collapse; width: 100%; height: 44.7812px;\" border=\"1\"><colgroup><col style=\"width: 5.05246%;\"><col style=\"width: 61.5485%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">1.</td>\r\n<td style=\"height: 22.3906px;\">राष्ट्रिय वन सम्बन्धित केहि जानकारीहरु</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66a22a09ef87e.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'राष्ट्रिय-वन', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:10:49'),
(102, 'निजि बन', 1, '<table style=\"border-collapse: collapse; width: 100%; height: 134.562px;\" border=\"1\"><colgroup><col style=\"width: 4.82759%;\"><col style=\"width: 48.9781%;\"><col style=\"width: 46.0958%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 57.7812px;\">\r\n<td style=\"text-align: center; height: 57.7812px;\">1.</td>\r\n<td style=\"height: 57.7812px;\">\r\n<p>निजि&nbsp; बन सम्बंद्धि जानकारी</p>\r\n</td>\r\n<td style=\"text-align: center; height: 57.7812px;\"><a href=\"/assets/uploads/66a22a79de2c7.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 54.3906px;\">\r\n<td style=\"text-align: center; height: 54.3906px;\">2.</td>\r\n<td style=\"height: 54.3906px;\">\r\n<p>अनुसुचिहरु र हाल सम्म दर्ता भएका रौतहट जिल्लाका निजि बनहरु</p>\r\n</td>\r\n<td style=\"text-align: center; height: 54.3906px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'निजि-बन', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:10:58'),
(103, 'कबुलियती वन', 1, '<div class=\"entry-content\">\r\n<p><strong>कबुलियती वन</strong><br>कबुलियती वन भन्नाले तपसिलमा उल्लेखित उद्देश्यहरुको लागि प्रचलित कानून बमोजिम<br>स्थापित कुनै संस्था, वन पैदावारमा आधारित उद्योग वा समुदायलाई प्रदान गरिएको राष्ट्रिय<br>वन सम्झनु पर्छ ।<br>क)&nbsp; वन पैदावारमा आधारित उद्योगहरुलाई आवश्यक पर्ने कच्चा पदार्थ उत्पादन गर्न,बृक्षाराेपण गरी वन पैदावारको उत्पादनमा अभिवृद्धि गरी बिक्री वितरण गर्न वा उपयोग गर्न,<br>ख)&nbsp; वनको संरक्षण र विकास हुने गरी पर्यटन व्यवसाय सञ्चालन गर्न,<br>ग)&nbsp; वनको संरक्षण र विकास हुने गरी कृषि वन बाली कार्य सञ्चालन गर्न,<br>घ)&nbsp; वनको संरक्षण र विकास हुने गरी कीट, पतङ्ग तथा वन्यजन्तुको फार्म सञ्चालन गर्न ।<br>ङ)&nbsp; गरिवीको रेखामूनि रहेका जनताको गरिवी न्यूनिकरण गर्न वनको संरक्षण र विकाश हुने<br>गरि तोकिए बमोजिम आय आर्जन हुने कार्यक्रम संचालन गर्न ।</p>\r\n</div>', NULL, 'कबुलियती-वन', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:11:08'),
(104, 'वैज्ञानिक वन', 1, '<table style=\"border-collapse: collapse; width: 86.7126%;\" border=\"1\"><colgroup><col style=\"width: 5.12315%;\"><col style=\"width: 45.1232%;\"><col style=\"width: 49.7537%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td>S.N.</td>\r\n<td>Title</td>\r\n<td>Download</td>\r\n</tr>\r\n<tr>\r\n<td>1.</td>\r\n<td>बैज्ञानिक बन व्यवस्थापन कार्यविधि (२०७१)</td>\r\n<td>CamScanner-04-05-2021-09.59</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'वैज्ञानिक-वन', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:11:20'),
(105, 'कृषि बन', 1, '<table style=\"border-collapse: collapse; width: 100%; height: 39.7812px;\" border=\"1\"><colgroup><col style=\"width: 5.05246%;\"><col style=\"width: 61.5485%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; text-align: center;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"height: 22.3906px; text-align: center;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 17.3906px;\">\r\n<td style=\"height: 17.3906px; text-align: center;\">1.</td>\r\n<td style=\"height: 17.3906px;\">\r\n<p>कृषि बन सम्बन्धि सामान्य जानकारी</p>\r\n</td>\r\n<td style=\"height: 17.3906px; text-align: center;\"><a href=\"/assets/uploads/66a22c2bb8072.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'कषि-बन', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:11:30'),
(106, 'साझेदारी बन', 1, '<h3 class=\"page-title\">साझेदारी बन</h3>', NULL, 'साझेदारी-बन', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:11:39'),
(107, 'सामुदायिक वन', 1, '<p>सामुदायिक वन<br>सामुदायिक वन भन्नाले सामूहिक हितको लागि वनको विकास, संरक्षण उपयोग<br>र व्यवस्थापन गर्न स्थानिय उपभोग्त्ताको समुहलाई सुम्पिएको राष्ट्रिय वन सम्झनु पर्छ ।</p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 5.93829%;\"><col style=\"width: 60.6627%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\">S.N.</td>\r\n<td>Title</td>\r\n<td style=\"text-align: center;\">Download</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">1.</td>\r\n<td>रौतहट जिल्लामा हस्तान्तरण गरिएका समुदायिक बनको बिबरण</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66a22cce67223.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'सामुदायिक-वन', 1, NULL, 0, 0, 0, 1, '2024-07-25 16:11:50'),
(108, 'कार्यक्रम र प्रगति', 1, '', NULL, 'कार्यक्रम-र-प्रगति', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:04:08'),
(109, 'उत्पादनहरू', 1, '<h3 class=\"page-title\">उत्पादनहरू</h3>', NULL, 'उत्पादनहरू', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:04:39'),
(110, 'प्रगति विवरण', 1, '<h3 class=\"page-title\">प्रगति विवरण</h3>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 127.953px;\" border=\"1\"><colgroup><col style=\"width: 4.56034%;\"><col style=\"width: 62.0406%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 57.7812px;\">\r\n<td style=\"text-align: center; height: 57.7812px;\">1.</td>\r\n<td style=\"height: 57.7812px;\">बार्षिक बिकाश&nbsp; प्रगति&nbsp; &nbsp; (२०७७/२०७८ )</td>\r\n<td style=\"text-align: center; height: 57.7812px;\"><a href=\"/assets/uploads/66a237b471958.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 25.3906px;\">\r\n<td style=\"text-align: center; height: 25.3906px;\">2.</td>\r\n<td style=\"height: 25.3906px;\">प्रथम चौमासिक प्रगति (२०७७/२०७८)&nbsp;</td>\r\n<td style=\"text-align: center; height: 25.3906px;\"><a href=\"/assets/uploads/66a2380b5b65b.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">3.</td>\r\n<td style=\"height: 22.3906px;\">&nbsp;दोश्रो&nbsp; चौमासिक प्रगति (२०७७/२०७८)</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">CamScanner-04-05-2021-08.33</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'प्रगति-विवरण', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:04:50'),
(111, 'बार्षिक कार्यक्रम', 1, '', NULL, 'बार्षिक-कार्यक्रम', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:05:09'),
(112, 'प्रथम चौमासिक', 1, '<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 3.77293%;\"><col style=\"width: 62.8281%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\">S.N.</td>\r\n<td>Title</td>\r\n<td style=\"text-align: center;\">Download</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">1.</td>\r\n<td>अा व २०७९।२०८० को प्रथम चौमासिक प्रगति</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66a23d27ea621.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'प्रथम-चौमासिक', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:05:25'),
(113, 'दोश्रो चौमासिक', 1, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 4.75719%;\"><col style=\"width: 61.8438%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\">S.N.</td>\r\n<td>Title</td>\r\n<td style=\"text-align: center;\">Download</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">1.</td>\r\n<td>अा व २०७९।०८० को दोश्रो चौमासिक प्रगति 1</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66a23ec6bbe3d.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">2.</td>\r\n<td>आ.व. २०७८।०७९ को दोश्रो चौमासिक प्रगति</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66a23f5bd845c.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'दोश्रो-चौमासिक', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:05:36'),
(114, 'तेश्रो चौमासिक', 1, '<h3 class=\"page-title\">तेश्रो चौमासिक</h3>', NULL, 'तेश्रो-चौमासिक', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:05:47'),
(115, 'त्रैमासिक प्रगति विवरण', 1, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 4.56034%;\"><col style=\"width: 62.0406%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\">S.N.</td>\r\n<td>Title</td>\r\n<td style=\"text-align: center;\">Download</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">1.</td>\r\n<td>त्रैमासिक प्रगति विवरण</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66a23fed8e28d.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'त्रैमासिक-प्रगति-विवरण', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:05:59'),
(116, 'परियोजना / कार्यक्रम', 1, '<table style=\"border-collapse: collapse; width: 100%; height: 89.5624px;\" border=\"1\"><colgroup><col style=\"width: 5.74144%;\"><col style=\"width: 60.8595%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">1.</td>\r\n<td style=\"height: 22.3906px;\">बार्षिक बिकाश कार्यक्रम</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66a240d037bd3.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">2.</td>\r\n<td style=\"height: 22.3906px;\">बार्षिक पर्गती पुस्तिका (बिषयशुची)</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66a2410d5da10.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">3.</td>\r\n<td style=\"height: 22.3906px;\">बार्षिक पर्गती पुस्तिका कन्टेन्ट</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66a24159096ff.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">4.</td>\r\n<td>बार्षिक पर्गती पुस्तिका</td>\r\n<td style=\"text-align: center;\"><a href=\"https://dforautahat.gov.np/wp-content/uploads/2021/03/%E0%A4%AC%E0%A4%BE%E0%A4%B0%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%95-%E0%A4%AA%E0%A4%B0%E0%A5%8D%E0%A4%97%E0%A4%A4%E0%A5%80-%E0%A4%AA%E0%A5%81%E0%A4%B8%E0%A5%8D%E0%A4%A4%E0%A4%BF%E0%A4%95%E0%A4%BE.pdf\">बार्षिक पर्गती पुस्तिका</a>.pdf</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">5.</td>\r\n<td>बार्षिक पर्गती बिबरण</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66a2420da4653.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'परियोजना-कार्यक्रम', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:06:17'),
(117, 'आर्थिक विवरण', 1, '<h3 class=\"page-title\">आर्थिक विवरण</h3>', NULL, 'आर्थिक-विवरण', 1, NULL, 0, 0, 0, 1, '2024-07-25 17:06:33'),
(118, 'संगठन संरचना', 1, '<div class=\"main_container\">\r\n<div class=\"main-col\">\r\n<div class=\"base-box page-wrap\">\r\n<p class=\"page-title\">संगठन संरचना</p>\r\n<div class=\"entry-content\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"sidebar main-sidebar\" role=\"complementary\">\r\n<div class=\"widget widget_search\">\r\n<div class=\"search-form default-search-form\">&nbsp;</div>\r\n</div>\r\n</div>', NULL, 'संगठन-संरचना', 1, NULL, 0, 0, 0, 1, '2024-07-25 18:07:16'),
(120, 'कर्मचारी विवरण', 1, '<h2 class=\"page-title\">कर्मचारी विवरण</h2>\r\n<p><img src=\"/assets/uploads/66aca1676be4c.jpg\" width=\"1267\" height=\"844\"></p>', NULL, 'कर्मचारी-विवरण', 1, NULL, 0, 0, 0, 0, '2024-07-30 12:06:37'),
(121, 'प्रेस विज्ञप्ति', 1, '<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 67.1718px;\" border=\"1\"><colgroup><col style=\"width: 4.75719%;\"><col style=\"width: 61.8438%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">1.</td>\r\n<td style=\"height: 22.3906px;\">सर्लाही जिल्लाको आ.व. 2080.81 को पारित दररेट</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66aca3376930b.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">2.</td>\r\n<td style=\"height: 22.3906px;\">आ.व. 2080/081 रौतहट जिल्लाको पारित दररेट</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66aca2147c1c0.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'प्रेस-विज्ञप्ति', 1, NULL, 0, 0, 0, 1, '2024-07-30 12:20:00'),
(122, ' सूचना', 1, '<p class=\"post-tile entry-title\">&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 67.1718px;\" border=\"1\"><colgroup><col style=\"width: 4.75719%;\"><col style=\"width: 61.8438%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">1.</td>\r\n<td style=\"height: 22.3906px;\">सर्लाही जिल्लाको आ.व. 2080.81 को पारित दररेट</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66aca3376930b.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">2.</td>\r\n<td style=\"height: 22.3906px;\">आ.व. 2080/081 रौतहट जिल्लाको पारित दररेट</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66aca2147c1c0.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">3.</td>\r\n<td>आ.व. ०७९/०८० को प्रदेश सभा सदस्य निर्वाचन क्षेत्र विकास कार्यक्रम अन्तर्गत संचालन हुने कार्यक्रमहरु</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66a893783cd8b.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'सूचना', 1, NULL, 0, 0, 0, 1, '2024-07-30 12:20:26'),
(123, 'सामाचार', 1, '<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 67.1718px;\" border=\"1\"><colgroup><col style=\"width: 4.75719%;\"><col style=\"width: 61.8438%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">1.</td>\r\n<td style=\"height: 22.3906px;\">सर्लाही जिल्लाको आ.व. 2080.81 को पारित दररेट</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66aca3376930b.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">2.</td>\r\n<td style=\"height: 22.3906px;\">आ.व. 2080/081 रौतहट जिल्लाको पारित दररेट</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66aca2147c1c0.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 'सामाचार', 1, NULL, 0, 0, 0, 1, '2024-07-30 12:20:37'),
(124, 'ऐन / नियम', 1, '<h1 class=\"page-title\">ऐन नियम</h1>\r\n<div class=\"entry-content\">&nbsp;</div>', NULL, 'ऐन-नियम', 1, NULL, 0, 0, 0, 0, '2024-07-30 13:10:43'),
(125, 'ग्यालरी', 1, '<h1 class=\"page-title\">ग्यलरी</h1>', NULL, 'ग्यालरी', 1, NULL, 0, 0, 0, 1, '2024-07-30 13:13:45'),
(126, 'डाउनलोड', 1, '<table style=\"border-collapse: collapse; width: 100%; height: 111.953px;\" border=\"1\"><colgroup><col style=\"width: 4.75719%;\"><col style=\"width: 61.8438%;\"><col style=\"width: 33.3005%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">S.N.</td>\r\n<td style=\"height: 22.3906px;\">Title</td>\r\n<td style=\"text-align: center; height: 22.3906px;\">Download</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">1.</td>\r\n<td style=\"height: 22.3906px;\">हरुवाचरुवा,दलित लगायत वर्गको जीविकोपार्जनका लागि पशुपन्छीपालन कार्यक्रम प्रस्ताव ढाँचा =&gt;Download</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66af69f0ac678.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">2.</td>\r\n<td style=\"height: 22.3906px;\">स्थानीय तहहरुमा माछामासु विक्रि कक्ष निर्माण प्रस्ताव-कार्ययोजना ढाँचा =&gt; Download</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66af6a0f8956b.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">3.</td>\r\n<td style=\"height: 22.3906px;\">अनुवांशिक श्रोत केन्द्र लामपुच्छ्रे भेडा प्रबर्द्धन कार्यक्रमको=&gt;Download</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66af6aec0b28e.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"text-align: center; height: 22.3906px;\">4.</td>\r\n<td style=\"height: 22.3906px;\">शहरी क्षेत्रमा छाडारुपमा पालिरहेका बंगुर पालन संरक्षण कार्यक्रमको=&gt;Download</td>\r\n<td style=\"text-align: center; height: 22.3906px;\"><a href=\"/assets/uploads/66af6c7264ebd.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">5.</td>\r\n<td>स्थानिय तहको समन्वयमा सामाजिक तथा घरपालुवा कुकुरहरुमा बन्ध्याकरण तथा=&gt; Download</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6ce2e1bc8.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">6.</td>\r\n<td>डेरी पार्लर स्थापना कार्यक्रमको प्राविधिक मापदण्ड तथा संचालन विधि २०७७</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6d001ef3a.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">7.</td>\r\n<td>नगदेवस्तु पन्छीपालन प्रबर्द्धन कार्यक्रमको प्राविधिक मापदण्ड तथा संचालन विधि २०७७</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6d4206e49.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">8.</td>\r\n<td>पशुपन्छी तथा मत्स्य बजार प्रबर्द्धन कार्यक्रमको प्राविधिक मापदण्ड तथा संचालन विधि २०७७</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6d5874f45.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">9.</td>\r\n<td>प्रदेश खर्च मापदण्ड निर्देशिका, २०७७</td>\r\n<td style=\"text-align: center;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">10.</td>\r\n<td>मिटमार्ट स्थापना कार्यक्रमको प्राविधिक मापदण्ड तथा संचालन विधि २०७७</td>\r\n<td style=\"text-align: center;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">11.</td>\r\n<td>व्यावसायिक पाडापालन कार्यक्रमको प्राविधिक मापदण्ड तथा संचालन विधि २०७७</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6d9b91a46.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">12.</td>\r\n<td>कृषि क्षेत्रमा अनुदान परिचालन कार्यबिधि २०७७</td>\r\n<td style=\"text-align: center;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">13.</td>\r\n<td>मासु उत्पादन प्रबर्द्धन कार्यक्रम संचालनका लागि प्रस्ताव आवेदन फारम</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6de88d316.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">14.</td>\r\n<td>दुध उत्पादन प्रवर्द्धन कार्यक्रम संचालनका लागि प्रस्ताव आवेदन</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6dffeeb8c.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">15.</td>\r\n<td>करारमा घाँसको वेर्ना, वीउ,सेटस उत्पादन कार्यक्रमको प्रस्ताव आवेदन फारम</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6e1c9613d.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">16.</td>\r\n<td>दुध संकलन तथा चिस्यान केन्द्रको प्रस्ताव आवेदन फारम</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6e388a05c.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">17.</td>\r\n<td>प्रस्ताव आव्हानको सूचना</td>\r\n<td style=\"text-align: center;\"><a href=\"/assets/uploads/66af6e51dd750.pdf\"><img src=\"http://localhost:8080/assets/uploads/download.png\" width=\"30px\" height=\"30px\"></a><br><br></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', NULL, 'डाउनलोड', 1, NULL, 0, 0, 0, 1, '2024-07-30 13:17:04'),
(127, 'मधेश प्रदेश पोर्टल', 1, '', NULL, 'मधेश-प्रदेश-पोर्टल', 1, NULL, 0, 0, 0, 1, '2024-07-30 13:22:49'),
(128, 'उद्देश्य', 1, '<h1 class=\"page-title\">उद्देश्य</h1>', NULL, 'उद्देश्य', 1, NULL, 0, 0, 0, 1, '2024-08-04 16:31:54'),
(129, 'संगठन संरचना', 1, '<h1 class=\"page-title\">संगठन संरचना</h1>\r\n<div class=\"entry-content\"><img src=\"https://vhlsecdhanusha.p2.gov.np/wp-content/uploads/2023/03/%E0%A4%B8%E0%A4%82%E0%A4%97%E0%A4%A0%E0%A4%A8-%E0%A4%B8%E0%A4%82%E0%A4%B0%E0%A4%9A%E0%A4%A8%E0%A4%BE-300x200.png\" width=\"389\" height=\"259\"></div>', NULL, 'संगठन-संरचना', 1, NULL, 0, 0, 0, 1, '2024-08-04 16:32:40'),
(130, 'कर्मचारी बिवरण', 1, '<h1 class=\"page-title\">कर्मचारी विवरण</h1>\r\n<div class=\"entry-content\">\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td width=\"42\"><strong>फाेटाे</strong></td>\r\n<td><strong>पद</strong></td>\r\n<td><strong>कर्मचारीको नाम,थर</strong></td>\r\n<td><strong>सेवा/समूह</strong></td>\r\n<td width=\"63\"><strong>श्रेणी</strong><br><strong>/तह</strong></td>\r\n<td width=\"99\"><strong>स्थायी</strong><br><strong>/अस्थायी</strong><br><strong>/करार</strong></td>\r\n<td><strong>कैफियत</strong></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>आयुर्वेद चिकित्सक</strong></td>\r\n<td><strong>डा.कमलराज अधिकारी</strong></td>\r\n<td><strong>स्वास्थ्य/आयुर्वेद</strong></td>\r\n<td><strong>आठौं</strong></td>\r\n<td><strong>स्थायी</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>कविराज&nbsp;</strong></td>\r\n<td>&nbsp;</td>\r\n<td><strong>स्वास्थ्य/आयुर्वेद</strong></td>\r\n<td>&nbsp;</td>\r\n<td><strong>स्थायी</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>वैद्य</strong></td>\r\n<td><strong>श्री राम प्रसाद रेग्मी</strong></td>\r\n<td><strong>स्वास्थ्य/आयुर्वेद</strong></td>\r\n<td><strong>चौथो</strong></td>\r\n<td><strong>स्थायी</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>वैद्य</strong></td>\r\n<td><strong>सुश्री कमला बलायर</strong></td>\r\n<td><strong>स्वास्थ्य/आयुर्वेद</strong></td>\r\n<td><strong>चौथो</strong></td>\r\n<td><strong>स्थायी</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>लेखापाल/स.ले.पा.</strong></td>\r\n<td><strong>&ndash;</strong></td>\r\n<td><strong>लेखा/प्रशासन</strong></td>\r\n<td width=\"63\"><strong>चौथो</strong><br><strong>/पाँचौ</strong></td>\r\n<td><strong>स्थायी</strong></td>\r\n<td><strong>रिक्त</strong></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>ल्याव असिस्टेन्ट</strong></td>\r\n<td><strong>सुश्री छिरिङ छोडोन गुरुङ</strong></td>\r\n<td><strong>स्वास्थ्य/ल्याव</strong></td>\r\n<td><strong>चौथो</strong></td>\r\n<td><strong>करार</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>औषधी कुटुवा</strong></td>\r\n<td><strong>श्रीमती सुकमाया नेपाली</strong></td>\r\n<td><strong>प्रशासन</strong></td>\r\n<td width=\"63\"><strong>श्रेणी</strong><br><strong>विहिन</strong></td>\r\n<td><strong>अस्थायी</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>का. स.</strong></td>\r\n<td><strong>सुश्री सुस्मीता गोतामे</strong></td>\r\n<td><strong>प्रशासन</strong></td>\r\n<td width=\"63\"><strong>श्रेणी</strong><br><strong>विहिन</strong></td>\r\n<td><strong>अस्थायी</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td><strong>अभ्यगं सहायक</strong></td>\r\n<td><strong>श्री सुदन घ्यालकिपल थकाली</strong></td>\r\n<td><strong>स्वास्थ्य/आयुर्वेद</strong></td>\r\n<td width=\"63\"><strong>श्रेणी</strong><br><strong>विहिन</strong></td>\r\n<td><strong>करार</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', NULL, 'कर्मचारी-बिवरण', 1, NULL, 0, 0, 0, 0, '2024-08-04 17:25:32'),
(131, 'प्रकाशन', 1, '<h1 class=\"page-title\">प्रकाशन</h1>', NULL, 'प्रकाशन', 1, NULL, 0, 0, 0, 1, '2024-08-04 17:27:42'),
(132, 'प्रेस विमोचन', 1, '<h1 class=\"page-title\">प्रेस विमोचन</h1>\r\n<p>&nbsp;</p>', NULL, 'प्रेस-विमोचन', 1, NULL, 0, 0, 0, 1, '2024-08-04 17:28:36');
INSERT INTO `pagetbl` (`pg_id`, `page_title`, `page_status`, `page_desc`, `page_featured_img`, `slug`, `doc_typ`, `order_by`, `created_by`, `updated_by`, `deleted_by`, `delete_status`, `added_on`) VALUES
(133, 'आयुर्वेद सेवा केन्द्रहरु', 1, '<p>जिल्ला भित्रका हाम्रा आयुर्वेद सेवा केन्द्रहरु</p>\r\n<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/03/center.jpg\" width=\"931\" height=\"524\"></p>\r\n<p><img src=\"data:image/png;base64,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oQLDslWrVpFOp5k4cSJDhw6lTZs2HH/88XvsS6nNPfy7mMsv49+LvSH6ZdfK+4hiTu62226jtraW733veyQSCVauXMmtt97KzTffzEUXXUQmk2HlypXcc889JJPJKJ9SikGDBuH7Phs2bKBt27ZcffXVEXHcvn07v/jFL6iurubyyy+nsrKSv//974wcOTIqw3VdJkyYwJlnngnAggULyGQyAMycOZOxY8cycuRIfvCDH+C6Li+++CJXX301f/7znxkwYACbNm2iU6dOXHXVVRG3HuKAAw5oUawxffp0fvKTn3DwwQdzzTXXkEqlWLZsGT//+c+ZOnUqP/3pT6msrGTt2rWk0+kCQqCUYuvWraxcuZKePXty0003kcvlqK2t5frrr+d3v/sdHTp0IJFI0K1bN1atWhUZH4Ucf9iezZs3F2wIcQ6+U6dOXHzxxZx22mlorXnwwQepqanhoosuQgjBwQcfzOrVq7nmmms4+uij+fGPf4zneUydOpVrr72W++67j8GDB0d1FRMvpRT33nsvN954I4MHD2b9+vUsXryYTCZDz549C+bL/or4XE4kEvTv359MJsPs2bMZMWJENJda60P8FOl5HhMnTuTkk0+mbdu2ZYK/n6JM9D8CQq5x586dvP322zzwwAMce+yxBZzO7NmzOffccwHjduH000+nurq6ZFlCCA488EDOPPNMbNt8EiEEa9asYebMmVx22WVceOGFfO9732PDhg306NEDgNWrV7N9+3aOO+64yNpUSsmuXbu46667OOecc7jtttsAw9WdccYZ3HDDDbz66qsRt3/QQQcxevRobNtudtdQSrSxe/dufv3rX3P66adz8803B24TzLtTTz2VK664gvHjx3PJJZeUFAnFCUinTp04/fTTAdi0aRO2bTNq1Ci6d+8OYFxMBPnDzTDeHqUUBx98MGPGjCkQx4Tjeswxx0TpXn/9ddq1a8dZZ50V1f/iiy9SX1/PnXfeSUVFBVprRo8ezTXXXMO7777LEUcc0aJYZ9u2bfTo0YOmpibWrFmD1poDDzyQNWvWkAssvfdE8EuJplp7HkcymaRbt27RuISboO/7dO3alWw2y9atW1stIz5WkBdPHnbYYUybNo0BAwawa1ehQ8ZkMskBBxyAlJLGxka2bNkSlRGKzjZs2MDOnTsL+tO2bVvS6TTJZJKamho2bdq0xz6WQseOHWnbtu0+5ysjjzLR/wgIiVkqlaJdu3Y89NBDJJNJevfuTTKZ5Hvf+14zcUJdXV3gXyYvU66qqsK2A387uRz19fU4jhMRlSlTpnDSSSeRSCQ46qij6NmzJ1OmTOGyyy5DSsnbb79N37596dKlS7TAtdZ8+OGH7Ny5MyK8ALZtU1NTwx//+MfIVUC83jiRklJSXV1dktiFp4nLLruMZDJZQDiOOOIILr30Ul588UW+9rWvNbvfaGksQ4ScYfFGU5w/fi+Ry+Woq6srEB9ZllWwwRaXE5bfoUMH0uk048aN46KLLqJdu3Ykk0kefPDBZu2M98X3fd566y3mz5/P1q1b6d+/f8G3zuVyTJkyhVGjRpFKpaL8xZtq2JZMJsOLL77Il770JTZu3MjKlSs544wzeO+997Btm/79+zN58uRoE3vllVf4/ve/z8UXX0xVVRVaa9avX89Pf/pThg0bxvHHH4/v+7z00ktMnTqVESNGoJTixRdfZMyYMaRSKRYtWsQhhxzC0qVLyeVyDB06NOLa0+k0zz77LF/96lepqKgAoL6+nueff56bbrqJSy65hFQqxYYNG/if//kfpkyZwvDhw6msrGTixImceOKJtG/fnsWLF5NKpejbty9CCObOncvIkSMZMmQI9913H0rm2qZ1AAAgAElEQVQpBgwYwOTJkxk5ciRt2rSJxnHy5Mn069ePnj17MmPGDE466SRs2+bUU0/lmGOOiU5+Zew7ykR/HxEn2tXV1YwbN467776bUaNGYVkWI0eO5Pzzz2fMmDFUVVUBsG3bNvr161fAobZp04bx48dHMtMnn3ySf/zjH9FlZlVVFeeddx7XXHMNAG3atOHCCy/koYce4txzz6W6upoZM2Zw6aWXBt4S807Ztm3bhu/7tGvXrln7k8lkgWz+8ccf5/HHH4/ea60ZMGAA06ZNo0OHDgX9BdiwYQPt27enQ4cOBZehIREbMGAAf/vb34zDvaLL3VKy8Y+CeJkPP/wwjzzySMH7I444gn/+858kEolmvpji+Y899lh++ctfct9993HbbbfRvXt3zjjjDC666CJOPPHEkuKJ8M7jy1/+MosWLWLo0KGcdtppBaeaxsZG6urqGDt2LPX19UyaNIkTTzyRRCLB9OnT6du3L0uWLGHUqFGk02leffVVunXrxnXXXceCBQt47bXXuOWWW3j66aexbZvRo0dTX1/PVVddhW3brF69mksvvZRUKhX1pUePHtx///0IIfjrX/9K7969uemmm6I7Fd/3Wbt2LTfccAPt27fn9ddfZ9euXfTt25dcLsc3vvEN3nnnHebPn8/o0aNZuHAhY8eOxXEcXnjhBT788EN69erFN77xjYhp6Nu3LzfffDNbt27l2muvpVOnTmzcuJGrr76a3r178/TTT9O+fXtGjRrFrFmzqK6u5uyzz+bBBx/k7LPPRinFl7/8ZTZv3sy1115LJpPhpZdewvd92rRpwyWXXMJxxx1HLpfjpptuKmAy9mex2f6OstBtHxES7ZAYHnbYYTzwwAMsXLiQ559/ngEDBnDXXXdx2223kc0a67hOnToxf/58VqxYwfLly1m5ciXvvfceRx11VDR5zz//fJYtW8a8efO48MILGTBgALfddhudO3eOCMoZZ5zB2rVrWbRoEWvWrEEIEcmdPc+L5NqhqCYU+RQjJGa2bXPxxRezbNkyVqxYwcqVK1m1ahWTJ0+mTZs2BZtDSOA9zyObzeL7fgHXGqZramoikUg0I/jh2EGea/6o4x/HN77xDT788MOo/StXrmTChAkF3jOL88ZPNOeccw7PPPMMS5Ys4fe//z2u63L11Vfz17/+NcoXJzTh94/3Yd68ecyZM4d7772XM888kzvuuIPNmzeTTqe599576d27N3PnzuX2229n2LBhjB8/nkMPPZRXX32V3/zmN5x66qm0a9euoJ5SGkXxeosvV8MTyL333svTTz9NMpmMxC9hnvBkN3HiRB577LFITCOEYObMmbz66quMGTOGrVu3kslkyOVy/Pd//zeJRIIrr7ySxx9/PDqJaq1xXZc333yTzZs3s2PHDrZv305dXV30fNWqVSxfvpympib69+/PwIEDuemmmxg8eHDB5W+I5cuXU11dzQUXXMD999/PsGHDmDZtGtOnT+eGG25g0qRJLc6DMvYeZaK/jwgXmxCC5557juuuu45MJkO3bt044YQT+NnPfsbdd9/N7Nmz2bhxY5Sne/fu9OjRg+7du9O9e3cOOOCAAk6toqKCHj16cMghh/Db3/4WKSW//OUvCy7TunbtyujRo5kwYQKvvfYaRx11VMTNx/Xce/XqheM4rFmzpln7n332WW688cbAR71PdXU1PXr0iP51796drl27Runji9L3fYYO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Rn39bu699zc4qohjRwznC5dcyvz5r/L6wrfASIR1IppuyFMCjf5rb14Wu2nQuNJjw7q32LRhFVJ67KrdTe++pfl6FwUcRsidD2POz3HpcuwIjjp5LHVzX2DFj37I9uMn0LlPf1qqa6md/xrs3km3cePpOWlSSPCtRsowrGaro/58pQrBunXrWLhwIYMGDUJrzV133cXEiROZOnUqTz75JM3NzXTp0oXi4mIaGhrQOry/ymQyWGtpamri9ttvZ9CgQezcuZPnnnuO0tJSRo8ezYYNG1iwYAFXXHEF6XSaxx57jM9//vPMmzePV155hfr6eqZPn44QgjFjxtDU1ERtbS07duygurqavn37IoSgtraWWbNm8eUvf5n6+npefvllLr/8crTWZDJhvAvP82hpacEYQxAEZDIZJk2aRFlZGVprTj/9dH784x+zZcsWtmzZQu/evTnnnHMIgiDHma9du5YTTjiB733vezz66KM88cQTWGvp1q0bP/7xj1m2bBl33XUXiUQiR6CrqqqYP39+G9HMscceS0VFBfX19TQ1NbF7926++tWvctNNN5FKpVBKMXDgQCZMmADAjh072LRpE42NjZSWln4gjN4hwCoKjFZMnToVV2V55umHqd25GkUDjvCRVqOsyKlShr6koi1A2si5TehGVjqRQRWKZKIU1y1FW4WTcNmzZyezZv2NRQsXUbenDm2nuuG1AAAgAElEQVQsAwYM4tzzzmfz5i08eP+DbFhXyewnnmDevHnU1u7GWoExEjdRgpDFKFmMsAn8QFOUTGK0T2lJKpJdKqwReUay+ZpK+YQ7qq8FKQICbxeL3/w7D/7uV1TXVLGzppaqzVtp9XVfwGEPIZCdOzHosi+TKC2hfEc19onZ1P32bvxZf6HL9nfwk4oBn7sIt2cvTBQgh9gPD62ac/EJwhjDk08+ybBhwygpKWHYsGFs2bKFTZs2MXnyZDZt2sSDDz7I5z//+dzJQGtNU1MTnufl5NllZWU4jsOFF17Is88+y/PPP8/Xvva1XNVLS0spLy/n1FNPRSmFUoogCHLim0wmw/3338+mTZsoKysjlUrlNjtjDC+99BIDBgyga9euDBo0iJKSEl544QWEEHieF0bCa2gAoHfv3lx99dV0796dhx9+mHnz5iGlpKysDIBEIoG1ln/84x/8/e9/bxOTN65XjPg+IpFI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H+2f7csBmNaad955h0wmQ3V1dc5nfEfve57Hxo0bOwwH+H59Rh4oXXuHafkwxrBlyxYWL17M+vXryWaze737XvJv/9xai9aaTZs25YK3NDY2sm7dujbBXN4PDhGi3+q6oM1TEcruu3XrjsSyYvkCME1g44kReaP8SE6tNvJrklOcpqlxFxvWr+SifzuXz3z2cwwbMZJOnboQWs1EBjUiEgcVrG8LOEhYYFd9I2k/S8+KrjRow9s1TTS5ndnc4LN+Wy2DhgzACzQ1tXsgJ8GHeG3FFuwxIdq1axeXXXYZ999/P1prWlpauPLKK6murgZCohe7G47/4uhZ8f/x71rrUNMueha/19zczL333ktVVRV33HEHq1evzqWP84g/X331VaZNm8bixYv3+i2/zI6exWW3fydubxypK7/suB/aP4vr//LLL/PNb36T22+/neuvv55bb701R4zjNsef+e3OzyM/7/bvAdTX1/P1r3+dPXv2UF1dzYwZM7jzzjv36uP8cTgYHMLiHYgvd/v3P4Z+ffpSW1NFQ+MWSruWYkwUIegjkFPKuPNjwi0F1gRIqXEdQe9evXDcFNjIo14b7xDR4qPA7RdwcBBAt65ldCouYuu23bhCMbyiC2Lrbo4qkwzu3Z3fP/EMSVfSv3f3kOBbIlcfoZJD6KG2rQ/63bt3c++99zJ69GiOO+446urq0Fqze/dunn76abZt20b37t259NJLiYOIV1dX0717dwYMGMDYsWOZM2cOa9asIZVKccEFF1BeXs6sWbOoq6vj9NNPZ8yYMZSUlNDQ0IDneaxcuZL169dzwQUXkEgkMMbg+z533nkn5557Ln/60584/vjjUUqxceNGZs+eTTqdZuTIkZxxxhksWrSIdevWobXm4osvZs6cOWzevJnBgwdz7rnn5vzXx/UcMmQIpaWl1NTUMGnSJNasWUNNTQ3Dhg3jiSeeoLa2ll69evG5z32OoqIi4hCODz/8MOeddx5f/OIXqaur45ZbbqGlpQWtNY8++ih1dXVh4KXjj2f27NlcfPHF7Nixg0WLFvHpT3+a119/PReK8bnnnsP3fU444QROPfXUNvECdu7cSXV1NTfffDNdu3blpptuQinF2rVrefrpp3Fdl6lTp9KvXz+efvppzjjjjANa8R8inP7eCOXfCmvhqJ49ufKKK2lpruO1eXOwZJDExiaxfv6HR0KFzbMLsOFFshSG+rpddOlSximnTEEI1epm1YZG9MK21rJA8As4WEigd/cuTPjUaNZVbmb+c2/w3fOP41cXH8eN0yayfuFSXpu/nIFH92LogD4561sLUaS5cI7mLnajeVlRUcHXv/51fvrTn7Jr167cZvDnP/+ZNWvWMHHiRObPn8+jjz7K3/72N5555hmGDRvGPffcwzPPPMPy5cuZOXMm48ePp66ujhtuuIG6ujq+//3vc+SRR5JMJvn9739PTU0NAEuXLmX69On0798/F4ZQCMHatWvZunUrV1xxBVVVVVRWVtLU1MStt95KRUUFY8eO5aabbuLtt99m1qxZPPXUUwwYMICZM2cyZ84cxo0bx6OPPsoDDzzAM888w2OPPcbIkSP53//9X55//nl27tzJ9ddfTyaT4Ze//CU1NTU88sgjVFVVceqpp/Lwww+zYMGCXL8kk0m+9KUvce+99/L5z3+e++67j6uuugrXdfnZz35GdXU148eP55ZbbmHevHk888wzLF68mIceeoj/+I//4N133+X2228nnU7zn//5nwwePJjhw4dz7bXXsnPnTqDVZ1d9fT2XXXYZa9as4cYbb6SoqIj6+nouueQSjj76aI444gi++93vks1mueOOO/A874Dz5ZDl9PODI2AFZ591Ni+9/Bwvzn2ak0/5HCWdyjB5nHSovik+FG+bYaiWeKMRYDWuAytXLqGhvgFrIx//RLtu7lhm8zwMFQT7BXSMjk6BSdfl6sv/jaWrK3noL8/y2sLVDDimD9XVNaxevQ5XSb52ybkc2aUEacxenkliL5tCyDaijMmTJ1NTU8OPfvSjnMfXCRMm8Kc//Yn777+fjRs3Mm7cON544w2+8pWvcMYZZ/Dmm2+STqfp168fI0eOZObMmWzbti3H2fbq1YuLL76YhoaGXFmZTIY77riDk046iZEjR+YIbBAEzJ49m+bmZq677jrWrVvHo48+yvXXX8/UqVN59tln2bNnD3v27CGbzZJKpfjsZz/L5MmTuemmm/jJT37CySefTFNTE4888gg9evRg+vTpnHbaaSxZsoR0Os2YMWMoLi5m6dKlvPvuu0yePJmqqir++Mc/8tvf/pba2lrS6XSO3vi+j7WW5557jsrKSl566SWmT5/O3XffzZw5cxg9ejTLly+nqamJbdu2cdppp3Hvvfeybt06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\" width=\"829\" height=\"851\"></p>', NULL, 'आयुर्वेद-सेवा-केन्द्रहरु', 1, NULL, 0, 0, 0, 0, '2024-08-18 17:14:49');
INSERT INTO `pagetbl` (`pg_id`, `page_title`, `page_status`, `page_desc`, `page_featured_img`, `slug`, `doc_typ`, `order_by`, `created_by`, `updated_by`, `deleted_by`, `delete_status`, `added_on`) VALUES
(134, 'नागरिक वडा पत्र', 1, '<h1>नागरिक वडा पत्र</h1>\r\n<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/03/wadapatra-287x300.jpg\"></p>\r\n<p>&nbsp;</p>', NULL, 'नागरिक-वडा-पत्र', 1, NULL, 0, 0, 0, 0, '2024-08-18 17:19:21'),
(135, 'सेवा प्रवाह सम्बन्धि तथ्यांकहरु', 1, '<h1><strong>सेवा प्रवाह सम्बन्धि तथ्यांकहरु</strong></h1>\r\n<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/03/Mustang.jpg\" width=\"883\" height=\"497\"></p>', NULL, 'सेवा-प्रवाह-सम्बन्धि-तथ्यांकहरु', 1, NULL, 0, 0, 0, 0, '2024-08-18 17:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `popup_table`
--

CREATE TABLE `popup_table` (
  `popup_id` int NOT NULL,
  `poup_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `popup_img` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `popup_width` int DEFAULT NULL,
  `popup_height` int DEFAULT NULL,
  `active_status` int DEFAULT NULL,
  `delete_status` int NOT NULL,
  `added_by` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `popup_table`
--

INSERT INTO `popup_table` (`popup_id`, `poup_title`, `popup_img`, `popup_width`, `popup_height`, `active_status`, `delete_status`, `added_by`, `added_on`) VALUES
(6, 'bjjhb', '1720685724_dc117dd42d892a7a42d3.png', 600, 700, 1, 1, 1, '2024-05-27 00:00:00'),
(8, 'test', '1720676810_ed207e516c2bea568e94.pdf', 600, 700, 0, 1, 2147483647, '2024-07-10 00:00:00'),
(9, 'test', '1720771855_5879ef6eb6a304e44b80.pdf', 600, 700, 1, 1, 2147483647, '2024-07-12 00:00:00'),
(10, 'shdbvjhsb', '1720774439_2c666184639da9d0a685.jpg', 600, 700, 0, 0, 2147483647, '2024-07-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posttbl`
--

CREATE TABLE `posttbl` (
  `post_id` int NOT NULL,
  `post_title` varchar(200) DEFAULT NULL,
  `post_caty_id` varchar(11) DEFAULT NULL,
  `featured_image` varchar(200) DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `slug` varchar(50) DEFAULT NULL,
  `doc_typ` int NOT NULL DEFAULT '2',
  `content_section` longtext,
  `downloadable_file` varchar(100) DEFAULT NULL,
  `delete_status` int NOT NULL,
  `added_on` varchar(10) DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `created_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `posttbl`
--

INSERT INTO `posttbl` (`post_id`, `post_title`, `post_caty_id`, `featured_image`, `status_id`, `slug`, `doc_typ`, `content_section`, `downloadable_file`, `delete_status`, `added_on`, `updated_on`, `created_by`) VALUES
(141, 'Inspection and Supervision by Secretory', '4', '1723978033_348352b106e673f67bff.jpeg', 1, 'inspection-and-supervision-by-secretory', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(142, 'Home  slider  विद्यालय आयुर्वेद तथा योग शिक्षा अभिमुखिकरण कार्यक्रम', '4', '1723978065_1f84a525c20d809f8677.jpg', 1, 'home-slider-विद्यालय-आयुर्वेद-तथा-योग-शिक्षा-अभिमु', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(143, 'जेष्ठ नागरिक कार्यक्रम', '4', '1723978118_391698e201ae014c85f5.png', 1, 'जेष्ठ-नागरिक-कार्यक्रम', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(144, 'स्वास्थ्य प्रवर्द्धनका लागी जीवनशैली परिवर्तन तथा योग कार्यक्रम', '4', '1723978165_832b3ae6ef03723c684f.jpg', 1, 'स्वास्थ्य-प्रवर्द्धनका-लागी-जीवनशैली-परिवर्तन-तथा-', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(145, 'नागरिक आरोग्य अभियान संचालन', '4', '1723978216_c2fe9752c48bb1d517ff.jpeg', 1, 'नागरिक-आरोग्य-अभियान-संचालन', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(146, 'स्वस्थकर जीवनशैली प्रवर्द्धनमा गृहिणीहरुका लागी भान्सा सुधार कार्यक्रम', '4', '1723978281_f09eaa83786e4ca84b40.jpeg', 1, 'स्वस्थकर-जीवनशैली-प्रवर्द्धनमा-गहिणीहरुका-लागी-भान', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(147, 'माननीय सामाजिक विकास तथा स्वास्थ्य मंत्रीज्यू द्वारा भान्सा सुधार हाते पुस्तिका बिमोचन', '4', '1723978310_cac4857069ee11f671ed.jpeg', 1, 'माननीय-सामाजिक-विकास-तथा-स्वास्थ्य-मंत्रीज्यू-द्वा', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(148, 'लाेठसल्ला', '4', '1723978444_2e0d3e4aab65b330bee7.jpg', 1, 'लाेठसल्ला', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(149, 'पाँचऔले', '4', '1723978474_92b8046d72f634cfb998.jpg', 1, 'पाचऔले', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(150, 'सतुवा', '4', '1723978518_bf2bce7c98730a6a4924.jpg', 1, 'सतुवा', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(151, 'चिराइतो', '4', '1723978562_58399b93743d87cf86d1.jpg', 1, 'चिराइतो', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(152, 'निर्मषी', '4', '1723978593_29fcf626f6d1662b7be8.jpg', 1, 'निर्मषी', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(153, 'कुटकी', '4', '1723978622_7bee855d3e10ef94448a.jpg', 1, 'कुटकी', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(154, 'बनलसुन', '4', '1723978647_4629f956a35900c35223.jpg', 1, 'बनलसुन', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(155, 'विद्यालय आयुर्वेद तथा योग', '4', '1723978726_090d30c9b6218d10dfac.png', 1, 'विद्यालय-आयुर्वेद-तथा-योग', 2, '', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(156, 'सूचना र सर्कुलर', '3', '', 1, 'सूचना-र-सर्कुलर', 2, '<h1>नि:शुल्क ल्याव सेवा</h1>\r\n<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/02/Lab-1-268x300.jpg\"></p>', '', 0, '2024-8-18', '0000-00-00 00:00:00', 0),
(157, 'सूचना/समाचार', '3', '', 1, 'सूचनासमाचार', 2, '', '', 1, '2024-8-18', '0000-00-00 00:00:00', 0),
(158, 'माननीय सामाजिक विकास तथा स्वास्थ्य मंत्रीज्यू द्वारा भान्सा सुधार हाते पुस्तिका बिमोचन', '3', '', 1, 'माननीय-सामाजिक-विकास-तथा-स्वास्थ्य-मंत्रीज्यू-द्वा', 2, '<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2024/05/WhatsApp-Image-2024-05-17-at-8.40.16-PM.jpeg\" alt=\"माननीय सामाजिक विकास तथा स्वास्थ्य मंत्रीज्यू द्वारा भान्सा सुधार हाते पुस्तिका बिमोचन\" width=\"658\" height=\"370\"></p>', '', 1, '2024-8-18', '0000-00-00 00:00:00', 0),
(159, 'माननीय सामाजिक विकास तथा स्वास्थ्य मंत्रीज्यू द्वारा भान्सा सुधार हाते पुस्तिका बिमोचन', '3', '', 1, 'माननीय-सामाजिक-विकास-तथा-स्वास्थ्य-मंत्रीज्यू-द्वा', 2, '<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2024/05/WhatsApp-Image-2024-05-17-at-8.40.16-PM.jpeg\" alt=\"माननीय सामाजिक विकास तथा स्वास्थ्य मंत्रीज्यू द्वारा भान्सा सुधार हाते पुस्तिका बिमोचन\" width=\"886\" height=\"498\"></p>', '', 0, '2024-8-18', '0000-00-00 00:00:00', 0),
(160, 'स्वस्थकर जीवनशैली प्रवर्द्धनमा गृहिणीहरुका लागी भान्सा सुधार कार्यक्रम', '3', '', 1, 'स्वस्थकर-जीवनशैली-प्रवर्द्धनमा-गहिणीहरुका-लागी-भान', 2, '<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2024/05/WhatsApp-Image-2024-05-11-at-7.57.27-PM-2-190x122.jpeg\" alt=\"स्वस्थकर जीवनशैली प्रवर्द्धनमा गृहिणीहरुका लागी भान्सा सुधार कार्यक्रम\" width=\"488\" height=\"313\"></p>', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(161, 'नागरिक आरोग्य अभियान संचालन', '3', '', 1, 'नागरिक-आरोग्य-अभियान-संचालन', 2, '<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2024/05/WhatsApp-Image-2024-05-10-at-10.09.13-PM-1-190x122.jpeg\" alt=\"नागरिक आरोग्य अभियान संचालन\" width=\"305\" height=\"196\"></p>', '', 0, '2024-8-18', '0000-00-00 00:00:00', 0),
(162, 'वैकल्पिक उम्मेदवार नियुक्ति सम्बन्धी सूचना', '3', '', 1, 'वैकल्पिक-उम्मेदवार-नियुक्ति-सम्बन्धी-सूचना', 2, '<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2024/05/WhatsApp-Image-2024-05-02-at-10.15.13-scaled.jpeg\" alt=\"वैकल्पिक उम्मेदवार नियुक्ति सम्बन्धी सूचना\" width=\"609\" height=\"920\"></p>', '', 0, '2024-8-18', '0000-00-00 00:00:00', 0),
(163, 'सिफारिस गरिएको सूचना', '3', '', 1, 'सिफारिस-गरिएको-सूचना', 2, '<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2024/04/WhatsApp-Image-2024-04-10-at-18.39.27.jpeg\" alt=\"सिफारिस गरिएको सूचना\"></p>', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0),
(164, 'जेष्ठ नागरिक आरोग्य सेवा कार्यक्रम', '3', '', 1, 'जेष्ठ-नागरिक-आरोग्य-सेवा-कार्यक्रम', 2, '<p><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/02/IMG_7135-300x179.jpg\"><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/02/IMG_7155-1-300x183.jpg\"><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/02/IMG_7153-1-300x183.jpg\"><img src=\"https://dahcmustang.gandaki.gov.np/wp-content/uploads/2022/02/IMG_7147-300x225.jpg\"></p>', '', 0, '2024-08-18', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quick_links_tbl`
--

CREATE TABLE `quick_links_tbl` (
  `link_id` int NOT NULL,
  `link_label` varchar(100) DEFAULT NULL,
  `link_url` varchar(50) DEFAULT NULL,
  `link_icon` varchar(50) DEFAULT NULL,
  `delete_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `quick_links_tbl`
--

INSERT INTO `quick_links_tbl` (`link_id`, `link_label`, `link_url`, `link_icon`, `delete_status`) VALUES
(1, 'Link to NEQAS', '#', 'fas fa-calendar-alt', 1),
(2, 'Covid', '#', 'calendar-alt', 1),
(3, 'Online Application', '#', 'fa fa-envelope', 1),
(4, '(F.A.Q)', '#', 'fas fa-comments', 1),
(5, 'Feedback', '#', 'fas fa-comments', 1),
(7, 'hello', '#', 'address-book', 1),
(8, 'hello', '#', 'address-card', 1),
(9, 'Link to National External Quality Assessment Schemmmmmmmmmm', 'https://neqas.nphl.gov.np/', 'address-book', 1),
(10, 'E-attendance', '#', 'address-card', 1),
(11, 'Link to Blood Tracking & Donor Management System (', 'http://donateblood.nphl.gov.np/', 'hospital', 1),
(12, 'Link to Nepal One Health AMR Surveillance System', 'https://np.amr.health/', 'calendar-plus', 1),
(13, 'E-attendance ', 'https://attendance.gov.np/', 'address-card', 1),
(14, 'Link to IMS', 'http://ims.nphl.gov.np/', 'address-card', 1),
(15, 'Link to BTSC Data Entry', 'https://btsc.nphl.gov.np/login', 'hospital', 1),
(16, 'test', '#', 'address-book', 1),
(17, 'test', '#', 'arrow-alt-circle-left', 1),
(18, 'ddd', '#', 'fa-address-book', 0);

-- --------------------------------------------------------

--
-- Table structure for table `relatedlink_tbl`
--

CREATE TABLE `relatedlink_tbl` (
  `linkId` int NOT NULL,
  `linkTitle` text,
  `linkUrl` text,
  `orderBY` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `relatedlink_tbl`
--

INSERT INTO `relatedlink_tbl` (`linkId`, `linkTitle`, `linkUrl`, `orderBY`) VALUES
(4, 'स्वास्थ्य निर्देशनालय', 'http://hd.gandaki.gov.np/', 2),
(5, ' स्वास्थ्य तथा जनसंख्या मन्त्रालय', 'https://mohp.gov.np/', 1),
(6, 'स्वास्थ्य सेवा विभाग', 'https://dohs.gov.np/', 3),
(7, 'राष्ट्रिय स्वास्थ्य तालिम केन्द्र', 'http://nhtc.gov.np/', 4),
(10, 'नेपाल सरकारको वेबसाईट', 'http://www.nepal.gov.np/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_tbl`
--

CREATE TABLE `slider_tbl` (
  `slider_id` int NOT NULL,
  `slider_title` varchar(100) DEFAULT NULL,
  `slider_description` longtext,
  `slider_image` varchar(200) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_status` int NOT NULL,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `slider_tbl`
--

INSERT INTO `slider_tbl` (`slider_id`, `slider_title`, `slider_description`, `slider_image`, `added_on`, `delete_status`, `created_by`) VALUES
(15, '.', '', 'Slider1610257813.jpg', '2023-12-24 16:08:59', 1, NULL),
(19, '', '', 'Cover_Photo1620746349.jpg', '2023-12-25 15:16:41', 1, NULL),
(20, 'straberry', '', 'Cover_Photo16207463491.jpg', '2023-12-25 15:17:39', 1, NULL),
(21, '', '', 'Cover_Photo1620746161.jpg', '2023-12-25 15:17:57', 1, NULL),
(22, '', '', 'Cover_Photo1620746349.jpg', '2023-12-25 15:20:43', 1, NULL),
(23, '', '', 'Cover_Photo1620746161.jpg', '2023-12-25 15:20:51', 1, NULL),
(24, '', '', 'Cover_Photo1620745563.jpg', '2023-12-25 15:20:58', 1, NULL),
(25, '', '', 'Slider1610257813.jpg', '2023-12-25 15:21:07', 1, NULL),
(26, 'बिषादी सम्बन्धि तालिम २०८० /८१', '', 'slider1१.jpg', '2024-01-27 21:14:56', 1, NULL),
(27, 'विषादी  सम्बन्धि तालिम २०८० ', '', 'slider_2_1.jpg', '2024-01-27 21:19:12', 1, NULL),
(28, '', '', 'slider_2_11.jpg', '2024-01-27 21:21:59', 1, NULL),
(29, 'कृषि यन्त्र उपकरण मर्मत सम्भार तालिम २०८०.८१ ', '', 'slider4.jpg', '2024-01-27 21:33:18', 1, NULL),
(30, '', '', '1716795782_3f5f6f4125ee7dfe9bba.jpg', '2024-05-27 13:28:02', 1, NULL),
(31, 'janaki temple', '', '1720420582_48ce600f66a1195dfdb8.jpg', '2024-07-08 12:21:23', 1, NULL),
(32, 'fishry', '', '1720420631_3126e7e46132c74720af.jpg', '2024-07-08 12:22:11', 1, NULL),
(33, 'office building', '', '1720420650_57563bc86c88f88542b6.jpg', '2024-07-08 12:22:30', 1, NULL),
(34, '', '', '1720505039_f01bcc39651355fde162.jpg', '2024-07-09 11:48:59', 1, NULL),
(35, 'Training', '', '1721802465_fb9b319a735e62e483a5.jpg', '2024-07-24 12:12:45', 1, NULL),
(36, 'forest', '', '1721802516_2c0eb9098f52306f4a6e.jpg', '2024-07-24 12:13:36', 1, NULL),
(37, 'group_photo_dfo_rautahat', '', '1721802586_ea27c9341f0cce0bd3fd.jpeg', '2024-07-24 12:14:46', 1, NULL),
(38, 'Tree Rise and Mountain', '', '1721802657_c119c02200f11d07c7dd.jpg', '2024-07-24 12:15:57', 1, NULL),
(39, 'कार्यालय फोटो', '', '1722325665_f5b22c8ab32dcf6eaf45.jpg', '2024-07-30 13:32:45', 1, NULL),
(40, 'Building Image', '', '1722325688_77a9a8c3b3576f995be0.jpg', '2024-07-30 13:33:08', 1, NULL),
(41, 'Building Image', '', '1722325741_1d7b12649bc12f447f60.jpg', '2024-07-30 13:34:01', 1, NULL),
(42, 'कार्यालय फोटो', '', '1722325789_f589babd0d2768313d56.jpg', '2024-07-30 13:34:49', 1, NULL),
(43, 'Building Image', '', '1722325810_bf720f131a0092f39b51.jpg', '2024-07-30 13:35:10', 1, NULL),
(44, 'कार्यालय फोटो', '', '1722325882_8eb116e7b5920555dcf2.jpg', '2024-07-30 13:36:22', 1, NULL),
(45, 'Building Image', '', '1722325904_9afa94f6a4d02a9ff8a0.jpg', '2024-07-30 13:36:44', 1, NULL),
(46, 'Building Image', '', '1722325933_23a081b7a68e32991eb8.jpg', '2024-07-30 13:37:13', 1, NULL),
(47, 'कार्यालय फोटो', '', '1722325946_593b0b125b51f4ccf3d3.jpg', '2024-07-30 13:37:26', 1, NULL),
(48, 'Building Image', '', '1722335597_4631bef7f914a951d74e.jpg', '2024-07-30 16:18:17', 1, NULL),
(49, 'कार्यालय फोटो', '', '1722335628_88f5b4e8307f4afbfcb4.jpg', '2024-07-30 16:18:48', 1, NULL),
(50, 'कार्यालय फोटो', '', '1722580320_c67e4cb5da3f9961fb84.jpg', '2024-08-02 12:17:00', 1, NULL),
(51, 'Building Image', '', '1722580353_5a3011ffec9a6322e00b.jpg', '2024-08-02 12:17:33', 1, NULL),
(52, 'कार्यालय फोटो', '', '1722580366_0d13fa12cd07b21d62fb.jpg', '2024-08-02 12:17:46', 1, NULL),
(53, 'Building Image', '', '1722582799_3795e73e3ab11ecb88a2.jpg', '2024-08-02 12:58:19', 1, NULL),
(54, 'कार्यालय फोटो', '', '1722582817_f8d5a8c75db82057aedf.jpg', '2024-08-02 12:58:37', 1, NULL),
(55, 'Building Image', '', '1722587657_bd0749a8e398ea05ff5a.jpg', '2024-08-02 14:19:17', 1, NULL),
(56, 'कार्यालय फोटो', '', '1722587679_eb67e7d1ec5b6d8fb59a.jpg', '2024-08-02 14:19:39', 1, NULL),
(57, 'Janaki Temple', '', '1722775558_05a1cddcc737b8477964.png', '2024-08-04 18:30:58', 1, NULL),
(58, 'Office Building', '', '1722775577_502fe93c99c664048161.jpg', '2024-08-04 18:31:17', 1, NULL),
(59, 'Inspection and Supervision by Secretory', '', '1723977137_effff7a77ee588ca8d50.jpeg', '2024-08-18 16:17:17', 0, NULL),
(60, 'विद्यालय आयुर्वेद तथा योग शिक्षा अभिमुखिकरण कार्यक्रम', '', '1723977184_df14b184990023b1cef4.jpg', '2024-08-18 16:18:04', 0, NULL),
(61, 'जेष्ठ नागरिक कार्यक्रम', '', '1723977207_3b51d319d2fb1a318207.png', '2024-08-18 16:18:27', 0, NULL),
(62, 'स्वास्थ्य प्रवर्द्धनका लागी जीवनशैली परिवर्तन तथा योग कार्यक्रम', '', '1723977254_4ed64e3ff0ba09d9e44c.jpg', '2024-08-18 16:19:14', 0, NULL),
(63, 'नागरिक आरोग्य अभियान संचालन', '', '1723977328_c956488aa3e8bdd349b6.jpeg', '2024-08-18 16:20:28', 0, NULL),
(64, 'स्वस्थकर जीवनशैली प्रवर्द्धनमा गृहिणीहरुका लागी भान्सा सुधार कार्यक्रम', '', '1723977382_10d4624598d09a6a4a84.jpeg', '2024-08-18 16:21:22', 0, NULL),
(65, 'माननीय सामाजिक विकास तथा स्वास्थ्य मंत्रीज्यू द्वारा भान्सा सुधार हाते पुस्तिका बिमोचन', '', '1723977412_53ee69b6362b588fdb57.jpeg', '2024-08-18 16:21:52', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_table`
--

CREATE TABLE `tab_table` (
  `tab_id` int NOT NULL,
  `order_by` int NOT NULL,
  `tab_items` varchar(25) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `tab_icon` varchar(40) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `delete_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tab_table`
--

INSERT INTO `tab_table` (`tab_id`, `order_by`, `tab_items`, `category_id`, `tab_icon`, `added_on`, `created_by`, `delete_status`) VALUES
(1, 1, 'सूचना/समाचार', 3, 'fa-bell', '2023-12-24 16:14:18', 0, 0),
(2, 2, 'प्रकाशन', 5, 'fa-bars', '2023-12-24 16:15:26', 0, 0),
(3, 3, 'आवेदन फारमहरु', 3, 'fa-paper-plane', '2023-12-24 16:17:24', 0, 1),
(4, 3, 'वार्षिक कार्यक्रम', 9, 'fa-address-book', '2023-12-24 16:19:03', 0, 0),
(5, 5, 'बोलपत्र', 10, 'fa-calendar', '2023-12-24 16:20:30', 0, 1),
(6, 4, 'अन्न्य डाउनलोड', 7, 'fa-eye', '2023-12-24 16:28:09', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pswrd_reset`
--

CREATE TABLE `tbl_pswrd_reset` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pswrd_reset`
--

INSERT INTO `tbl_pswrd_reset` (`id`, `user_id`, `token`, `expiration_date`) VALUES
(1, 1, 'IaNJsN8SkXEBDZPBOTSaIjM2gxp0pdWj', '2023-05-29 13:55:23'),
(2, 1, 'S64IcMdC0BBtu9qTQd2BEBX7oftao0Hx', '2023-05-30 10:19:34'),
(3, 1, '2JNj3sxWZyaV1sg6VD3IQP0MYQHo7IeD', '2023-05-30 10:30:18'),
(4, 1, 'B84kLR4PyTBBkWIbPQDNdS9MDtzlRS8Y', '2023-05-30 11:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `topbar`
--

CREATE TABLE `topbar` (
  `topbar_id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `yotube` varchar(100) DEFAULT NULL,
  `created_by` int NOT NULL,
  `deleted_by` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `topbar`
--

INSERT INTO `topbar` (`topbar_id`, `email`, `mobile_number`, `facebook`, `twitter`, `yotube`, `created_by`, `deleted_by`, `added_on`) VALUES
(1, 'dahc.jomsom@gmail.com', ' ०६९-४४०१५३', 'https://www.facebook.com/share.php?u=https%3A%2F%2Fdahcmustang.gandaki.gov.np', '#', 'https://www.youtube.com/channel/UCPW3t5kKiX9ZGj7y9ndvjeA', 1, 0, '2023-03-02 12:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `middle_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `role` int DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `userImage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `delete_status` int NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `role`, `gender`, `status`, `username`, `email`, `userImage`, `password`, `delete_status`, `added_on`) VALUES
(1, 'Dummy', 'dummy', 'dummy', 1, 3, 'active', 'Dummycontent', 'admin@admin.com', '1720686291_c2c914db80c6d4d53aae.png', 'e10adc3949ba59abbe56e057f20f883e', 0, '2023-05-15 14:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videoId` int NOT NULL,
  `video_path` varchar(200) DEFAULT NULL,
  `video_url` text,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videoId`, `video_path`, `video_url`, `added_on`) VALUES
(9, '', '', '2024-07-30 14:10:23'),
(17, '', 'https://youtu.be/dTAEhc_HTcw', '2024-08-18 18:07:52'),
(18, '', 'https://youtu.be/ZG2P-E6K-wQ', '2024-08-18 18:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `visitorcounter`
--

CREATE TABLE `visitorcounter` (
  `counterId` int NOT NULL,
  `systemIp` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `visitedTimes` int NOT NULL,
  `added_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visitorcounter`
--

INSERT INTO `visitorcounter` (`counterId`, `systemIp`, `visitedTimes`, `added_on`, `added_by`) VALUES
(1, '27.34.66.44', 20, '2024-06-03 00:00:00', 0),
(4, '27.34.66.103', 1, '2024-07-02 00:00:00', 0),
(5, '27.34.66.64', 23, '2024-07-07 00:00:00', 0),
(6, '27.34.66.94', 15, '2024-07-08 00:00:00', 0),
(7, '27.34.66.64', 1, '2024-07-10 00:00:00', 0),
(8, '27.34.66.65', 17, '2024-07-11 00:00:00', 0),
(9, '27.34.66.9', 19, '2024-07-12 00:00:00', 0),
(10, '27.34.66.64', 121, '2024-07-24 00:00:00', 0),
(11, '27.34.66.27', 417, '2024-07-25 00:00:00', 0),
(12, '27.34.66.90', 189, '2024-07-28 00:00:00', 0),
(13, '27.34.66.33', 386, '2024-07-30 00:00:00', 0),
(14, '27.34.66.12', 55, '2024-08-01 00:00:00', 0),
(15, '27.34.66.92', 79, '2024-08-02 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorytbl`
--
ALTER TABLE `categorytbl`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `counter_tbl`
--
ALTER TABLE `counter_tbl`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `document_tbl`
--
ALTER TABLE `document_tbl`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `employeelayouts`
--
ALTER TABLE `employeelayouts`
  ADD PRIMARY KEY (`emlayoutId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeId`);

--
-- Indexes for table `faq_tbl`
--
ALTER TABLE `faq_tbl`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `featured_card`
--
ALTER TABLE `featured_card`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `featured_tbl`
--
ALTER TABLE `featured_tbl`
  ADD PRIMARY KEY (`featured_id`);

--
-- Indexes for table `footer_table`
--
ALTER TABLE `footer_table`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`header_id`);

--
-- Indexes for table `icon_tbl`
--
ALTER TABLE `icon_tbl`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `introduction_table`
--
ALTER TABLE `introduction_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `navigation_tbl`
--
ALTER TABLE `navigation_tbl`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `new_ticker`
--
ALTER TABLE `new_ticker`
  ADD PRIMARY KEY (`ticker_id`);

--
-- Indexes for table `officer_tbl`
--
ALTER TABLE `officer_tbl`
  ADD PRIMARY KEY (`officer_id`);

--
-- Indexes for table `pagetbl`
--
ALTER TABLE `pagetbl`
  ADD PRIMARY KEY (`pg_id`),
  ADD UNIQUE KEY `order` (`order_by`);

--
-- Indexes for table `popup_table`
--
ALTER TABLE `popup_table`
  ADD PRIMARY KEY (`popup_id`);

--
-- Indexes for table `posttbl`
--
ALTER TABLE `posttbl`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `quick_links_tbl`
--
ALTER TABLE `quick_links_tbl`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `relatedlink_tbl`
--
ALTER TABLE `relatedlink_tbl`
  ADD PRIMARY KEY (`linkId`);

--
-- Indexes for table `slider_tbl`
--
ALTER TABLE `slider_tbl`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tab_table`
--
ALTER TABLE `tab_table`
  ADD PRIMARY KEY (`tab_id`);

--
-- Indexes for table `tbl_pswrd_reset`
--
ALTER TABLE `tbl_pswrd_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar`
--
ALTER TABLE `topbar`
  ADD PRIMARY KEY (`topbar_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videoId`);

--
-- Indexes for table `visitorcounter`
--
ALTER TABLE `visitorcounter`
  ADD PRIMARY KEY (`counterId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorytbl`
--
ALTER TABLE `categorytbl`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `counter_tbl`
--
ALTER TABLE `counter_tbl`
  MODIFY `counter_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `document_tbl`
--
ALTER TABLE `document_tbl`
  MODIFY `doc_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `employeelayouts`
--
ALTER TABLE `employeelayouts`
  MODIFY `emlayoutId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `faq_tbl`
--
ALTER TABLE `faq_tbl`
  MODIFY `faq_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `featured_card`
--
ALTER TABLE `featured_card`
  MODIFY `f_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `featured_tbl`
--
ALTER TABLE `featured_tbl`
  MODIFY `featured_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `footer_table`
--
ALTER TABLE `footer_table`
  MODIFY `footer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `header_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icon_tbl`
--
ALTER TABLE `icon_tbl`
  MODIFY `icon_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1215;

--
-- AUTO_INCREMENT for table `introduction_table`
--
ALTER TABLE `introduction_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `navigation_tbl`
--
ALTER TABLE `navigation_tbl`
  MODIFY `nav_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `new_ticker`
--
ALTER TABLE `new_ticker`
  MODIFY `ticker_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officer_tbl`
--
ALTER TABLE `officer_tbl`
  MODIFY `officer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pagetbl`
--
ALTER TABLE `pagetbl`
  MODIFY `pg_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `popup_table`
--
ALTER TABLE `popup_table`
  MODIFY `popup_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posttbl`
--
ALTER TABLE `posttbl`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `quick_links_tbl`
--
ALTER TABLE `quick_links_tbl`
  MODIFY `link_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `relatedlink_tbl`
--
ALTER TABLE `relatedlink_tbl`
  MODIFY `linkId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slider_tbl`
--
ALTER TABLE `slider_tbl`
  MODIFY `slider_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tab_table`
--
ALTER TABLE `tab_table`
  MODIFY `tab_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pswrd_reset`
--
ALTER TABLE `tbl_pswrd_reset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topbar`
--
ALTER TABLE `topbar`
  MODIFY `topbar_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videoId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `visitorcounter`
--
ALTER TABLE `visitorcounter`
  MODIFY `counterId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
