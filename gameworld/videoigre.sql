-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2024 at 08:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videoigre`
--

-- --------------------------------------------------------

--
-- Table structure for table `igre`
--

CREATE TABLE `igre` (
  `RedniBroj` int(5) NOT NULL,
  `Naslov` varchar(72) NOT NULL,
  `DatumObjavljivanja` date NOT NULL,
  `Cijena` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `igre`
--

INSERT INTO `igre` (`RedniBroj`, `Naslov`, `DatumObjavljivanja`, `Cijena`) VALUES
(1, 'Marvel\'s Spider-Man 2', '2023-10-20', 74.99),
(2, 'God of war', '2024-01-03', 19.99);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(32) NOT NULL,
  `Prezime` varchar(52) NOT NULL,
  `brMob` varchar(52) NOT NULL,
  `Lozinka` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`ID`, `Ime`, `Prezime`, `brMob`, `Lozinka`) VALUES
(1, 'a', 'a', 'a', '$2y$10$rovISFVU.3yEa77jjkrFw.W2SwSmA9ZXQMpAKexcJQUZ7HAC7oHCG'),
(2, 's', 's', 's', '$2y$10$21B1gDnd7YXu0nySxV9kIOH6uY0Im5uvU07.J6NaamYPmZhm3w63W'),
(3, 's', 's', 's', '$2y$10$N/PwoavQHCvv/cSafJP60u8KmEt0P9Ajx2VSTOTsqvIq61WryvQqC'),
(4, 'b', 'b', 'b', '$2y$10$wyCUrKdPoTgQ6TVn2yAlnOtT.UgHBYkZ/ZXdHtVMYf5/OGNJ68vwC'),
(5, 'aa', 'a', 'a', '$2y$10$kiezGrFv13eoKejB.YNgtekBMGMr9LA.9mAFrE1QYEpmZk7bhV3BK'),
(6, 'a', 'a', 'a', '$2y$10$NfkLT8HTZmczGeaCV/BSCencJK5OabWMuu4kuywaGmpYFSdnehTFW'),
(7, 'a', 'a', 'a', '$2y$10$Q7hs92rLpUagX0Pq.GQaB.iz2WKB7/PPO/awk37q.lZTHDkzD7FLG'),
(8, 'a', 'a', 'a', '$2y$10$o4WPNxZ3v2MGDnWw0k573Oms9PHsNpohfW2TzrsD68LYl6et4RDXK'),
(9, 'aa', 'a', 'a', '$2y$10$x3ou8AoDKNmc0hqBLxp4TO9x4MB9KrNmLmr4MBRT0qmjNjPPmnQ4e'),
(10, 'q', 'q', 'q', '$2y$10$RFrmhvGbToZkD97FaMn/7Ody8m3DNaYaKgNQbYjDHi0ht0AtWV2A.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `igre`
--
ALTER TABLE `igre`
  ADD PRIMARY KEY (`RedniBroj`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `igre`
--
ALTER TABLE `igre`
  MODIFY `RedniBroj` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
