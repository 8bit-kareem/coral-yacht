-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 11:18 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET FOREIGN_KEY_CHECKS=0;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+01:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kareem`
--

-- --------------------------------------------------------

--
-- Table structure for table `betaling`
--

CREATE TABLE `betaling` (
  `Yacht ID` varchar(12) NOT NULL,
  `Yacht naam` varchar(12) NOT NULL,
  `Bethalings methode` varchar(20) NOT NULL,
  `Datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `betaling`
--

INSERT INTO `betaling` (`Yacht ID`, `Yacht naam`, `Bethalings methode`, `Datum`) VALUES
('364', 'the horn', 'Visa card', '2024-01-01'),
('532', 'Bingobango', 'cash', '2023-12-07'),
('542', 'golden wave', 'Visa card', '2023-11-02'),
('543', 'Bingo bango', 'Visa card', '2023-06-14'),
('747', 'hlian', 'cash', '2024-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `klant`
--

CREATE TABLE `klant` (
  `Naam` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Telephone` int(60) NOT NULL,
  `Geboortedatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klant`
--

INSERT INTO `klant` (`Naam`, `Email`, `Telephone`, `Geboortedatum`) VALUES
('kevin', 'surfingnurfing@sing.com', 612352354, '1988-03-04'),
('leo kung', 'Lkung@swagger.com', 2147483647, '1992-11-05'),
('joe roegen', 'jaytheman@crazy.com', 68775432, '2001-05-24'),
('mirian white', 'fashionablegal@hotmail.com', 618459663, '2002-07-15'),
('mina linaze', 'wavelover@gmail.com', 643532453, '1980-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `yachts`
--

CREATE TABLE `yachts` (
  `Yacht ID` varchar(12) NOT NULL,
  `Yacht naam` varchar(20) NOT NULL,
  `Parker plats ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yachts`
--

INSERT INTO `yachts` (`Yacht ID`, `Yacht naam`, `Parker plats ID`) VALUES
('364', 'golden wave', 2),
('532', 'Bingo bango', 3),
('542', 'hlian', 4),
('543', 'smokey', 5),
('747', 'the horn', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `betaling`
--
ALTER TABLE `betaling`
  ADD PRIMARY KEY (`Yacht ID`),
  ADD KEY `Yacht naam` (`Yacht naam`) USING BTREE;

--
-- Indexes for table `yachts`
--
ALTER TABLE `yachts`
  ADD PRIMARY KEY (`Yacht ID`),
  ADD KEY `Yacht naam` (`Yacht naam`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `betaling`
--
ALTER TABLE `betaling`
  ADD CONSTRAINT `betaling_ibfk_1` FOREIGN KEY (`Yacht ID`) REFERENCES `yachts` (`Yacht ID`);

--
-- Constraints for table `yachts`
--
ALTER TABLE `yachts`
  ADD CONSTRAINT `yachts_ibfk_1` FOREIGN KEY (`Yacht naam`) REFERENCES `betaling` (`Yacht naam`);
COMMIT;

SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
