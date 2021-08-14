-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 11, 2021 at 11:24 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Management`
--

-- --------------------------------------------------------

--
-- Table structure for table `Appointments`
--

CREATE TABLE `Appointments` (
  `UniqueID` int(11) UNSIGNED NOT NULL,
  `Type` int(11) DEFAULT 0,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Subject` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `Description` varchar(256) CHARACTER SET utf16 DEFAULT NULL,
  `Status` int(11) DEFAULT 0,
  `Label` int(11) DEFAULT 0,
  `ResourceID` int(11) DEFAULT NULL,
  `ModifierCode` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Appointments`
--

INSERT INTO `Appointments` (`UniqueID`, `Type`, `StartDate`, `EndDate`, `Subject`, `Description`, `Status`, `Label`, `ResourceID`, `ModifierCode`, `ModifyDate`) VALUES
(1, 0, '2021-08-09 15:11:00', '2021-08-09 16:30:00', 'Testing', NULL, 2, 0, NULL, 0, '2021-08-11 23:08:29'),
(2, 0, '2021-08-12 10:00:00', '2021-08-12 11:00:00', 'Subject_1——2', NULL, 2, 1, NULL, 0, '2021-08-11 23:07:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appointments`
--
ALTER TABLE `Appointments`
  ADD PRIMARY KEY (`UniqueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Appointments`
--
ALTER TABLE `Appointments`
  MODIFY `UniqueID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
