-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: sdb-55.hosting.stackcp.net
-- Generation Time: May 08, 2023 at 02:46 PM
-- Server version: 10.4.28-MariaDB-log
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student82-353031312ea5`
--

-- --------------------------------------------------------

--
-- Table structure for table `CLASS`
--

CREATE TABLE `CLASS` (
  `Classname` varchar(255) NOT NULL,
  `Capacity` varchar(255) NOT NULL,
  `Section` varchar(255) NOT NULL,
  `TeacherID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ClassID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `CLASS`
--

INSERT INTO `CLASS` (`Classname`, `Capacity`, `Section`, `TeacherID`, `StudentID`, `ClassID`) VALUES
('CLASS D', '234', 'A', 12345678, 37563829, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `Classname` varchar(255) NOT NULL,
  `Capacity` varchar(255) NOT NULL,
  `Section` varchar(255) NOT NULL,
  `TeacherID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 0 COMMENT '	1=active, 0=unactive',
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `Classname`, `Capacity`, `Section`, `TeacherID`, `StudentID`, `isactive`, `added_datetime`) VALUES
(1, 'A', '10', 'B', 1, 1, 0, '2023-04-04 17:16:35'),
(2, 'A', '10', 'B', 1, 1, 0, '2023-04-04 17:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `returnContact` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=active, 0=unactive',
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `returnContact`, `message`, `isactive`, `added_datetime`) VALUES
(1, 'vraj mangukiya', 'vrajmangukiya27@gmail.com', 'nice...', 0, '2023-03-30 05:35:57'),
(2, 'BBM', 'GJDTYK@GMAIL.COM', 'KULIU', 0, '2023-03-30 16:50:34'),
(3, 'KRUP ', 'GJDTYK@GMAIL.COM', 'HELLO THIS IS', 0, '2023-03-30 17:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `GYM`
--

CREATE TABLE `GYM` (
  `GYMID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `membership` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PARENT`
--

CREATE TABLE `PARENT` (
  `ParentID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `PARENT`
--

INSERT INTO `PARENT` (`ParentID`, `StudentID`, `Name`, `Surname`) VALUES
(1, 37563829, 'krup', 'golakiya');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `StudentID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 0 COMMENT '	1=active, 0=unactivea',
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `StudentID`, `Name`, `Surname`, `isactive`, `added_datetime`) VALUES
(1, '1', 'vraj', 'mangukiya', 0, '2023-04-04 14:52:58'),
(2, '2', 'krup', 'mangukiya', 0, '2023-04-04 14:53:25'),
(3, '123456789', 'krup', 'MANGUKIYA', 0, '2023-04-05 14:53:50'),
(4, '37563829', 'krup', 'irelkiogtr ', 0, '2023-05-08 13:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `TeacherID` int(11) NOT NULL,
  `ParentID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ClassID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`TeacherID`, `ParentID`, `FirstName`, `Surname`, `Address`, `ClassID`, `StudentID`) VALUES
(12345678, 987654321, '0', '0', '594', 980765432, 1),
(0, 0, '0', '0', '0', 0, 2),
(12334535, 15334434, '0', '0', '0', 875198735, 3),
(12345678, 987654321, 'KRUP', 'MANGUKIYA', '594/598 Ashton Old Road, Manchester, UK', 980765432, 4);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `TeacherID` int(11) NOT NULL,
  `ParentID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ClassID` int(11) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 0,
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `TeacherID`, `ParentID`, `FirstName`, `Surname`, `Address`, `ClassID`, `isactive`, `added_datetime`) VALUES
(1, 1, 1, 'vraj', 'mangukiya', '2,zeel park', 1, 0, '2023-04-04 14:52:02'),
(2, 2, 2, 'krup', 'mangukiya', '2,zeel park', 1, 0, '2023-04-04 14:53:46'),
(4, 123456789, 123456789, 'bhavtik ', 'golakiya', '594/598 Ashton Old Road, Manchester, UK', 123456789, 0, '2023-04-05 14:49:25'),
(5, 123456789, 987654321, 'bhavtik', 'golkiya', '594/598 Ashton Old Road, Manchester, UK', 980765432, 0, '2023-04-05 14:53:28'),
(6, 2147483647, 2766388, 'Krup', 'Mangukiya', '2 zeal park', 7837637, 0, '2023-04-05 22:17:34'),
(7, 2173924, 92355443, 'jafra info', 'jheuf ewfhb', 'qejnwf behfjn s eiwjgfniej', 436464562, 0, '2023-05-08 11:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `TEACHER`
--

CREATE TABLE `TEACHER` (
  `ClassID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `TeacherID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `TEACHER`
--

INSERT INTO `TEACHER` (`ClassID`, `Name`, `Surname`, `Contact`, `TeacherID`) VALUES
(980765432, 'krup', 'cobra', '743629002', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `ClassID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `isactive` int(1) NOT NULL DEFAULT 0 COMMENT '1=active, 0=unactive',
  `added_datetime` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `ClassID`, `Name`, `Surname`, `Contact`, `isactive`, `added_datetime`) VALUES
(1, 1, 'vraj', 'mangukiya', '9687290706', 0, 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CLASS`
--
ALTER TABLE `CLASS`
  ADD PRIMARY KEY (`ClassID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher` (`TeacherID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `GYM`
--
ALTER TABLE `GYM`
  ADD PRIMARY KEY (`GYMID`);

--
-- Indexes for table `PARENT`
--
ALTER TABLE `PARENT`
  ADD PRIMARY KEY (`ParentID`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TEACHER`
--
ALTER TABLE `TEACHER`
  ADD PRIMARY KEY (`TeacherID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CLASS`
--
ALTER TABLE `CLASS`
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `GYM`
--
ALTER TABLE `GYM`
  MODIFY `GYMID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PARENT`
--
ALTER TABLE `PARENT`
  MODIFY `ParentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `STUDENT`
--
ALTER TABLE `STUDENT`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `TEACHER`
--
ALTER TABLE `TEACHER`
  MODIFY `TeacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `teacher` FOREIGN KEY (`TeacherID`) REFERENCES `teacher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
