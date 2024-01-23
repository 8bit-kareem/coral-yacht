-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 10:15 AM
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
  `yacht_id` bigint(20) NOT NULL,
  `Naam` varchar(60) NOT NULL,
  `Bethalings methode` varchar(20) NOT NULL,
  `Datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `betaling`
--

INSERT INTO `betaling` (`yacht_id`, `Naam`, `Bethalings methode`, `Datum`) VALUES
(1, 'joe roegen', 'Visa card', '2023-06-14'),
(2, 'mina linaze', 'cash', '2023-12-07'),
(3, 'kareem sabbagh', 'Visa card', '2023-11-02'),
(4, 'kevin', 'cash', '2024-01-06'),
(5, 'mirian white', 'Visa card', '2024-01-01');

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
  `yacht_id` bigint(20) NOT NULL,
  `yacht_naam` varchar(36) NOT NULL,
  `dock_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yachts`
--

INSERT INTO `yachts` (`yacht_id`, `yacht_naam`, `dock_id`) VALUES
(1, 'Bingo bango', 3),
(2, 'golden wave', 2),
(3, 'hlian', 4),
(4, 'smokey', 5),
(5, 'the horn', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `betaling`
--
ALTER TABLE `betaling`
  ADD PRIMARY KEY (`yacht_id`);

--
-- Indexes for table `yachts`
--
ALTER TABLE `yachts`
  ADD PRIMARY KEY (`yacht_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `betaling`
--
ALTER TABLE `betaling`
  MODIFY `yacht_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yachts`
--
ALTER TABLE `yachts`
  MODIFY `yacht_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `betaling`
--
ALTER TABLE `betaling`
  ADD CONSTRAINT `betaling_ibfk_1` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`yacht_id`);
COMMIT;

SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
