-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 09, 2026 at 10:50 PM
-- Server version: 8.4.6-6
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DSTLib`
--
CREATE DATABASE IF NOT EXISTS `DSTLib` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `DSTLib`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Authors`
--

CREATE TABLE `tbl_Authors` (
  `ID` int NOT NULL,
  `Author_Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Year_Of_Birth` int NOT NULL,
  `Year_Of_Death` int DEFAULT NULL,
  `Bio` text COLLATE utf8mb4_general_ci NOT NULL,
  `Place_Of_Birth` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Photograph` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Authors`
--

INSERT INTO `tbl_Authors` (`ID`, `Author_Name`, `Year_Of_Birth`, `Year_Of_Death`, `Bio`, `Place_Of_Birth`, `Photograph`, `Slug`) VALUES
(2, 'Anthony Burgess', 1917, 1993, 'Born in Manchester in 1917, Burgess authored more than forty novels from 1955 to his death in 1993.\r\n\r\nHe is most famous for his 1962 Dystopian Novel \'A Clockwork Orange\' which was adapted into film by Stanley Kubrick in 1972.', 'Manchester, United Kingdom', 'photo_2_1776117652.png', 'anthony-burgess'),
(3, 'Vladimir Nabokov', 1899, 1979, 'Born in Leningrad in 1899. He wrote dozens of short stories and novels in both Russian and English.\r\n\r\nHe is most remembered for Pale Fire (1962) and Lolita (1955)', 'Leningrad, Russian Empire', 'photo_3_1776606968.png', 'vladimir-nabokov'),
(4, 'Jane Austen', 1775, 1817, 'Born in 1775, Jane Austen was a write who produced six novels.', 'Steventon', NULL, 'jane-austen'),
(5, 'Joseph Heller', 1923, 1999, 'Author of Catch-22 and Something Happened', 'Coney Island, New York', 'photo_5_1775926981.png', 'joseph-heller'),
(6, 'James Joyce', 1882, 1941, 'Author of Ulysses', 'Dublin, Ireland', 'photo_6_1775927317.png', 'james-joyce'),
(7, 'Aldous Huxley', 1894, 1963, '', 'Godalming, Surrey', 'default.png', 'aldous-huxley'),
(8, 'George Orwell', 1903, 1950, 'Writer of Keep the Aspidistra Flying', 'India', 'default.png', 'george-orwell'),
(10, 'Thomas Pynchon', 1937, 0, 'Author of Gravity\'s Rainbow', 'New York, USA', 'default.png', 'thomas-pynchon'),
(11, 'Bret Easton Ellis', 1964, 0, 'Still Alive', 'Los Angeles, California USA', 'default.png', 'bret-easton-ellis'),
(12, 'Freida McFadden', 1980, 0, '', 'New York', 'default.png', 'freida-mcfadden'),
(14, 'LJ Ross', 1985, 0, 'Author of the DCI Ryan series', 'Northumberland', 'default.png', 'lj-ross'),
(15, 'Colleen Hoover', 1979, 0, '', 'Texas', 'default.png', 'colleen-hoover'),
(16, 'Andy Weir', 1972, 0, '', 'Davis, California', 'default.png', 'andy-weir'),
(17, 'Hunter S Thompson', 1937, 2005, 'Writer of the famous 1971 novel \'Fear and Loathing in Las Vegas\'', 'Kentucky, United States', 'default.png', 'hunter-s-thompson'),
(18, 'William Golding', 1911, 1993, 'Won the 1980 Booker Prize for Fiction and the Nobel Prize for Literature in 1983', 'Newquay', 'default.png', 'william-golding'),
(19, 'Charles Dickens', 1812, 1870, 'Known for Great Expectations, Oliver Twist, A Christmas Carol and A Tale of Two Cities', 'Portsmouth, United Kingdom', 'photo_19_1776607332.png', 'charles-dickens');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Books`
--

CREATE TABLE `tbl_Books` (
  `ID` int NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Synopsis` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Year_Of_Release` int NOT NULL,
  `Author_ID` int NOT NULL,
  `Cover` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Books`
--

INSERT INTO `tbl_Books` (`ID`, `Title`, `Synopsis`, `Year_Of_Release`, `Author_ID`, `Cover`, `Slug`) VALUES
(1, 'A Clockwork Orange', 'Set in a cacotopia in the early 1970s. ', 1962, 2, 'cover_1_1775825046.png', 'a-clockwork-orange'),
(2, 'Pale Fire', 'To be filled', 1962, 3, 'cover_2_1775826670.png', 'pale-fire'),
(3, 'Mansfield Park', 'The life of Fanny Price', 1814, 4, 'cover_3_1775827221.png', 'mansfield-park'),
(4, 'The Worm and The Ring', 'A story about Burgess\'s time in Banbury Grammar School. Famously sued in 1970 for libel.', 1960, 2, 'cover_4_1775906027.png', 'the-worm-and-the-ring'),
(5, 'Emma', 'Focused on the life of a wealthy woman.', 1815, 4, 'cover_5_1775925172.png', 'emma'),
(6, 'Earthly Powers', 'A parody of the \'Great American Novel\'', 1980, 2, 'cover_6_1775925290.png', 'earthly-powers'),
(7, 'Ulysses', 'Eighteen \'Episodes\' about the lives of three Dubliners.', 1922, 6, 'cover_7_1775927468.png', 'ulysses'),
(8, 'Nineteen Eighty Four', 'Set in a totalitarian future where the individual has lost all of his rights.', 1949, 8, 'cover_8_1776015143.png', 'nineteen-eighty-four'),
(9, 'Gravity\'s Rainbow', 'About the design of the V-2 Rocket.', 1973, 10, 'cover_9_1776118274.png', 'gravity\'s-rainbow'),
(10, 'Dear Debbie', '', 2026, 12, 'cover_10_1776265322.png', 'dear-debbie'),
(11, 'Holy Island', 'The First novel in the DCI Ryan series', 2014, 14, 'cover_11_1776605395.png', 'holy-island');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Book_Suggestions`
--

CREATE TABLE `tbl_Book_Suggestions` (
  `ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Year` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Reason` text COLLATE utf8mb4_general_ci,
  `Status` enum('pending','approved','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Book_Suggestions`
--

INSERT INTO `tbl_Book_Suggestions` (`ID`, `User_ID`, `Title`, `Author`, `Year`, `Reason`, `Status`, `Created_At`) VALUES
(1, 1, 'Gravity\'s Rainbow', 'Thomas Pynchon', '1973', 'It is an all time classic', 'approved', '2026-04-13 22:49:43'),
(2, 1, 'A Mahogany Morning', 'Paxton Mayo', '2026', 'A classic', 'rejected', '2026-04-19 15:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Friends`
--

CREATE TABLE `tbl_Friends` (
  `ID` int NOT NULL,
  `Requester_ID` int NOT NULL,
  `Recipient_ID` int NOT NULL,
  `Status` enum('pending','accepted','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Friends`
--

INSERT INTO `tbl_Friends` (`ID`, `Requester_ID`, `Recipient_ID`, `Status`, `Created_At`) VALUES
(2, 1, 7, 'pending', '2026-04-13 22:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Lists`
--

CREATE TABLE `tbl_Lists` (
  `ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Description` text COLLATE utf8mb4_general_ci,
  `Is_Public` tinyint(1) DEFAULT '1',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Lists`
--

INSERT INTO `tbl_Lists` (`ID`, `User_ID`, `Name`, `Description`, `Is_Public`, `Created_At`, `Slug`) VALUES
(3, 1, 'My Favourite Novels', 'The best novels in my opinion.', 1, '2026-04-12 17:26:47', 'my-favourite-novels'),
(5, 1, 'Worst Novels', '', 1, '2026-04-15 12:31:40', 'worst-novels');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_List_Books`
--

CREATE TABLE `tbl_List_Books` (
  `ID` int NOT NULL,
  `List_ID` int NOT NULL,
  `Book_ID` int NOT NULL,
  `Added_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_List_Books`
--

INSERT INTO `tbl_List_Books` (`ID`, `List_ID`, `Book_ID`, `Added_At`) VALUES
(7, 3, 7, '2026-04-12 18:15:26'),
(8, 3, 3, '2026-04-12 18:15:32'),
(9, 3, 6, '2026-04-12 18:15:36'),
(10, 5, 4, '2026-04-15 12:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Notifications`
--

CREATE TABLE `tbl_Notifications` (
  `ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Message` text COLLATE utf8mb4_general_ci NOT NULL,
  `Link` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Is_Read` tinyint(1) DEFAULT '0',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Notifications`
--

INSERT INTO `tbl_Notifications` (`ID`, `User_ID`, `Type`, `Message`, `Link`, `Is_Read`, `Created_At`) VALUES
(1, 1, 'friend_request', 'Operatore sent you a friend request.', '/DSTLib/Members/profile.php?user=Operatore', 1, '2026-04-13 22:13:00'),
(2, 8, 'friend_accepted', 'LuciusForrest accepted your friend request.', '/DSTLib/Members/profile.php?user=LuciusForrest', 1, '2026-04-13 22:16:39'),
(3, 7, 'friend_request', 'LuciusForrest sent you a friend request.', '/DSTLib/Members/profile.php?user=LuciusForrest', 0, '2026-04-13 22:16:56'),
(4, 1, 'report', 'Operatore reported a review comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-14 08:50:52'),
(5, 2, 'report', 'Operatore reported a review comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-14 08:50:52'),
(6, 3, 'report', 'Operatore reported a review comment.', '/DSTLib/Restricted/reports.php', 0, '2026-04-14 08:50:52'),
(7, 1, 'report', 'Operatore reported a profile comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-14 16:26:26'),
(8, 2, 'report', 'Operatore reported a profile comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-14 16:26:26'),
(9, 3, 'report', 'Operatore reported a profile comment.', '/DSTLib/Restricted/reports.php', 0, '2026-04-14 16:26:26'),
(10, 1, 'report', 'LuciusForrest reported a review comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-19 13:35:43'),
(11, 2, 'report', 'LuciusForrest reported a review comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-19 13:35:43'),
(12, 3, 'report', 'LuciusForrest reported a review comment.', '/DSTLib/Restricted/reports.php', 0, '2026-04-19 13:35:43'),
(13, 1, 'report', 'LuciusForrest reported a review comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-19 13:38:37'),
(14, 2, 'report', 'LuciusForrest reported a review comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-19 13:38:37'),
(15, 3, 'report', 'LuciusForrest reported a review comment.', '/DSTLib/Restricted/reports.php', 0, '2026-04-19 13:38:37'),
(16, 1, 'report', 'LuciusForrest reported a profile comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-19 13:40:19'),
(17, 2, 'report', 'LuciusForrest reported a profile comment.', '/DSTLib/Restricted/reports.php', 1, '2026-04-19 13:40:19'),
(18, 3, 'report', 'LuciusForrest reported a profile comment.', '/DSTLib/Restricted/reports.php', 0, '2026-04-19 13:40:19'),
(19, 8, 'friend_request', 'LuciusForrest sent you a friend request.', '/DSTLib/Members/profile.php?user=LuciusForrest', 1, '2026-04-19 15:36:56'),
(20, 1, 'friend_accepted', 'Op accepted your friend request.', '/DSTLib/Members/profile.php?user=Op', 1, '2026-04-19 15:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Profile_Comments`
--

CREATE TABLE `tbl_Profile_Comments` (
  `ID` int NOT NULL,
  `Profile_User_ID` int NOT NULL,
  `Author_User_ID` int NOT NULL,
  `Comment_Body` text COLLATE utf8mb4_general_ci NOT NULL,
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Profile_Comments`
--

INSERT INTO `tbl_Profile_Comments` (`ID`, `Profile_User_ID`, `Author_User_ID`, `Comment_Body`, `Created_At`) VALUES
(1, 5, 1, 'Stop Lollygagging', '2026-04-12 14:29:33'),
(3, 1, 1, 'Bleh', '2026-04-13 23:26:55'),
(5, 1, 8, 'LOSER!!!11', '2026-04-19 13:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Reports`
--

CREATE TABLE `tbl_Reports` (
  `ID` int NOT NULL,
  `Reporter_ID` int NOT NULL,
  `Comment_Type` enum('review_comment','profile_comment') COLLATE utf8mb4_general_ci NOT NULL,
  `Comment_ID` int NOT NULL,
  `Reason` text COLLATE utf8mb4_general_ci,
  `Status` enum('pending','resolved','dismissed') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Reports`
--

INSERT INTO `tbl_Reports` (`ID`, `Reporter_ID`, `Comment_Type`, `Comment_ID`, `Reason`, `Status`, `Created_At`) VALUES
(1, 8, 'review_comment', 1, 'Irritating', 'resolved', '2026-04-14 08:50:52'),
(2, 8, 'profile_comment', 3, 'bleh', 'dismissed', '2026-04-14 16:26:26'),
(3, 1, 'review_comment', 2, 'A useless comment', 'pending', '2026-04-19 13:35:43'),
(4, 1, 'review_comment', 3, 'Inflammatory', 'pending', '2026-04-19 13:38:37'),
(5, 1, 'profile_comment', 5, 'Inflammatory', 'pending', '2026-04-19 13:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Reviews`
--

CREATE TABLE `tbl_Reviews` (
  `ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Book_ID` int NOT NULL,
  `Rating` tinyint NOT NULL DEFAULT '0',
  `Review_Body` text COLLATE utf8mb4_general_ci,
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Reviews`
--

INSERT INTO `tbl_Reviews` (`ID`, `User_ID`, `Book_ID`, `Rating`, `Review_Body`, `Created_At`) VALUES
(1, 5, 1, 3, 'A masterpiece', '2026-04-12 12:22:31'),
(2, 1, 1, 4, 'a brilliant book which was made into a badly executed film (towards the end)', '2026-04-12 13:56:51'),
(3, 1, 7, 4, 'Classic', '2026-04-13 17:46:13'),
(4, 1, 10, 0, 'This book is Poor', '2026-04-16 20:06:05'),
(5, 1, 6, 4, 'A masterpiece', '2026-04-19 13:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Review_Comments`
--

CREATE TABLE `tbl_Review_Comments` (
  `ID` int NOT NULL,
  `Review_ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Comment_Body` text COLLATE utf8mb4_general_ci NOT NULL,
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Review_Comments`
--

INSERT INTO `tbl_Review_Comments` (`ID`, `Review_ID`, `User_ID`, `Comment_Body`, `Created_At`) VALUES
(1, 1, 1, 'Absolutely', '2026-04-12 13:56:04'),
(2, 2, 8, 'Absolutely', '2026-04-19 13:08:27'),
(3, 4, 8, 'Loser!', '2026-04-19 13:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Users`
--

CREATE TABLE `tbl_Users` (
  `ID` int NOT NULL,
  `User_Name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Email_Address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Hashed_Password` text COLLATE utf8mb4_general_ci NOT NULL,
  `DateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `UserLevel` enum('User','Admin') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Bio` varchar(10000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Avatar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Last_IP` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Last_Login` datetime DEFAULT NULL,
  `Is_Banned` tinyint(1) DEFAULT '0',
  `Ban_Reason` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_Users`
--

INSERT INTO `tbl_Users` (`ID`, `User_Name`, `Email_Address`, `Hashed_Password`, `DateCreated`, `UserLevel`, `Bio`, `Avatar`, `Last_IP`, `Last_Login`, `Is_Banned`, `Ban_Reason`) VALUES
(1, 'LuciusForrest', 'LBForest@aol.com', '$2y$12$62TofJnaCReMIt0gQ44vwe.gOHKPYa9n1fEoxP5AraZxwOLq1D1PO', '2026-03-09 11:02:22', 'Admin', '20 Years Old, doing pretty well.', 'profile_LuciusForrest_1775901574.png', '92.26.33.163', '2026-04-19 15:49:35', 0, NULL),
(2, 'Admin09', 'Admin.Admin@gmail.com', '$2y$12$0xwohw8Kv8q5TemYXlbGYeioI2Aed6JI9OTozsGtUvHuVKWY05K/.', '2026-03-25 09:39:59', 'Admin', '', 'profile_Admin09_1774433398.png', '212.219.49.2', '2026-04-21 09:06:13', 0, NULL),
(3, '8ks', 'dwayne@gmail.com', '$2y$12$JnFfi3DNyjC45Wl01A1BkO/5Ymtxv6Ab6qOI0/RMFBhSCc43GLqYu', '2026-03-25 09:57:27', 'Admin', '', 'profile_8ks_1774433500.png', '92.26.33.163', '2026-04-12 15:25:09', 0, NULL),
(5, 'Alfred19', 'alfred19@gmail.com', '$2y$12$OjRe63hL0SgQKZ/vwMQ8fO4Caq0pk82loE81ClrMOjBdPlc0z9ORO', '2026-04-12 12:08:09', 'User', NULL, NULL, '84.9.109.42', '2026-04-12 13:55:04', 1, 'Lollygagging'),
(6, '9djd', 'davewilson@gmail.com', '$2y$12$Ul735KlIp2kZsqaJhVbgmeN5GmDxoJPxxB1jBIoXnQAAqAnUMetM6', '2026-04-12 15:24:58', 'User', NULL, NULL, NULL, NULL, 0, NULL),
(7, 'kebapcat', 'aydakoluk@gmail.com', '$2y$12$6m3xTmrqIEyLE3KU3eimyOnEpew082liOj1T39V13y1UBFrV1Qeom', '2026-04-12 18:12:20', 'User', NULL, NULL, '109.41.176.50', '2026-04-12 18:13:18', 0, NULL),
(8, 'Op', 'operatore@gmail.com', '$2y$12$Qxl9KM6vn30v5OM7FLQBl.XX7oxxmUu5gO0rIiB/zrCOyXyB/zC.q', '2026-04-13 22:12:52', 'User', '20, Newcastle', 'profile_Op_1776603213.png', '92.26.33.163', '2026-04-19 15:48:58', 0, NULL),
(9, 'v', '1976@gmail.com', '$2y$12$FMcBRHeipQFuvQFqT8kryuFe66N6WYe6LlEzYkF6CUHmRNHqqLU1O', '2026-04-16 19:52:50', 'User', NULL, NULL, NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_Authors`
--
ALTER TABLE `tbl_Authors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_Books`
--
ALTER TABLE `tbl_Books`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Author_ID` (`Author_ID`);

--
-- Indexes for table `tbl_Book_Suggestions`
--
ALTER TABLE `tbl_Book_Suggestions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `tbl_Friends`
--
ALTER TABLE `tbl_Friends`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `no_duplicates` (`Requester_ID`,`Recipient_ID`),
  ADD KEY `Recipient_ID` (`Recipient_ID`);

--
-- Indexes for table `tbl_Lists`
--
ALTER TABLE `tbl_Lists`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `tbl_List_Books`
--
ALTER TABLE `tbl_List_Books`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `no_duplicates` (`List_ID`,`Book_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `tbl_Notifications`
--
ALTER TABLE `tbl_Notifications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `tbl_Profile_Comments`
--
ALTER TABLE `tbl_Profile_Comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Profile_User_ID` (`Profile_User_ID`),
  ADD KEY `Author_User_ID` (`Author_User_ID`);

--
-- Indexes for table `tbl_Reports`
--
ALTER TABLE `tbl_Reports`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Reporter_ID` (`Reporter_ID`);

--
-- Indexes for table `tbl_Reviews`
--
ALTER TABLE `tbl_Reviews`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `tbl_Review_Comments`
--
ALTER TABLE `tbl_Review_Comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Review_ID` (`Review_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `tbl_Users`
--
ALTER TABLE `tbl_Users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_Name` (`User_Name`),
  ADD UNIQUE KEY `Email_Address` (`Email_Address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_Authors`
--
ALTER TABLE `tbl_Authors`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_Books`
--
ALTER TABLE `tbl_Books`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_Book_Suggestions`
--
ALTER TABLE `tbl_Book_Suggestions`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_Friends`
--
ALTER TABLE `tbl_Friends`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_Lists`
--
ALTER TABLE `tbl_Lists`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_List_Books`
--
ALTER TABLE `tbl_List_Books`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_Notifications`
--
ALTER TABLE `tbl_Notifications`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_Profile_Comments`
--
ALTER TABLE `tbl_Profile_Comments`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_Reports`
--
ALTER TABLE `tbl_Reports`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_Reviews`
--
ALTER TABLE `tbl_Reviews`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_Review_Comments`
--
ALTER TABLE `tbl_Review_Comments`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_Users`
--
ALTER TABLE `tbl_Users`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_Books`
--
ALTER TABLE `tbl_Books`
  ADD CONSTRAINT `tbl_Books_ibfk_1` FOREIGN KEY (`Author_ID`) REFERENCES `tbl_Authors` (`ID`);

--
-- Constraints for table `tbl_Book_Suggestions`
--
ALTER TABLE `tbl_Book_Suggestions`
  ADD CONSTRAINT `tbl_Book_Suggestions_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `tbl_Users` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_Friends`
--
ALTER TABLE `tbl_Friends`
  ADD CONSTRAINT `tbl_Friends_ibfk_1` FOREIGN KEY (`Requester_ID`) REFERENCES `tbl_Users` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_Friends_ibfk_2` FOREIGN KEY (`Recipient_ID`) REFERENCES `tbl_Users` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_Lists`
--
ALTER TABLE `tbl_Lists`
  ADD CONSTRAINT `tbl_Lists_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `tbl_Users` (`ID`);

--
-- Constraints for table `tbl_List_Books`
--
ALTER TABLE `tbl_List_Books`
  ADD CONSTRAINT `tbl_List_Books_ibfk_1` FOREIGN KEY (`List_ID`) REFERENCES `tbl_Lists` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_List_Books_ibfk_2` FOREIGN KEY (`Book_ID`) REFERENCES `tbl_Books` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_Notifications`
--
ALTER TABLE `tbl_Notifications`
  ADD CONSTRAINT `tbl_Notifications_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `tbl_Users` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_Profile_Comments`
--
ALTER TABLE `tbl_Profile_Comments`
  ADD CONSTRAINT `tbl_Profile_Comments_ibfk_1` FOREIGN KEY (`Profile_User_ID`) REFERENCES `tbl_Users` (`ID`),
  ADD CONSTRAINT `tbl_Profile_Comments_ibfk_2` FOREIGN KEY (`Author_User_ID`) REFERENCES `tbl_Users` (`ID`);

--
-- Constraints for table `tbl_Reports`
--
ALTER TABLE `tbl_Reports`
  ADD CONSTRAINT `tbl_Reports_ibfk_1` FOREIGN KEY (`Reporter_ID`) REFERENCES `tbl_Users` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_Reviews`
--
ALTER TABLE `tbl_Reviews`
  ADD CONSTRAINT `tbl_Reviews_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `tbl_Users` (`ID`),
  ADD CONSTRAINT `tbl_Reviews_ibfk_2` FOREIGN KEY (`Book_ID`) REFERENCES `tbl_Books` (`ID`);

--
-- Constraints for table `tbl_Review_Comments`
--
ALTER TABLE `tbl_Review_Comments`
  ADD CONSTRAINT `tbl_Review_Comments_ibfk_1` FOREIGN KEY (`Review_ID`) REFERENCES `tbl_Reviews` (`ID`),
  ADD CONSTRAINT `tbl_Review_Comments_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `tbl_Users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
