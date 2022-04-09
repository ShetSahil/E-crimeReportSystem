-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2022 at 12:42 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE `acc` (
  `Srno.` int NOT NULL,
  ` Uid` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `E_mail` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `add` varchar(100) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `acc`
--

INSERT INTO `acc` (`Srno.`, ` Uid`, `full_name`, `E_mail`, `username`, `mobile_no`, `add`, `pwd`) VALUES
(3, 'sahil', 'sahil shetty', '12121212', 'ssa@', '22101022101', 'ddhuhaijdqwjodjO', '1234'),
(4, 's', 's', '0', 'e', '22', 'as', '12'),
(5, '12', 'sasa', '0', 's', '2', '', ''),
(6, '1212', 'Sasa', '0', '212', '122', 'Deaw', '1111'),
(8, '2121', 'asasas', '0', 'sasas', '212', 'sa2', '00'),
(27, '2010101010', 'sahil shetty', 'sahil@gmail', 'sahil', '82910102', 'jwjjssnesl', '7676'),
(28, '12121', 'sahil', 'ssasasas', 's', '2121', '221sasw', 'S@hil'),
(29, '1', 'slash', 'slash@gmail', 'shetty', '21212', 'aDdasd', '99'),
(30, '212', 'sahil shetty', 'shetsahil10', 'slash102', '76768891', 'hsaosihahiw', '1234567'),
(31, '1111', 'sahi', 'SQ', 'aqwas', '8788', 'sdguaisdkjhaisx', '1234'),
(32, '2110101', 'Sahil', 'S@hul102', 'sahilshetty', '7676991728', 'om saiwa', '1234'),
(33, '210201010', 'Anagha Aher', 'anagha.aher', 'anagha', '7676991728', 'shjakwbeji A/102', '12345'),
(34, '12345678921', 'Sahl Shetty', 'shetsahil10', 'SAHILSHETTY', '7676991728', 'om sai prasad 101/A wing', 'S@hil102'),
(35, '212', 'sasa', 'sasaw', 'sasasas', '123', 'sasasa', '12'),
(36, '212', 'sasa', '2ws', 'sasa', '211', 'sasas', '12'),
(37, '121', 'sa', '2', 'sasas', '123456', 'sasa', '3');

-- --------------------------------------------------------

--
-- Table structure for table `crimereport`
--

CREATE TABLE `crimereport` (
  `id` int NOT NULL,
  `P_id` int NOT NULL,
  `Date` varchar(300) NOT NULL,
  `Time` varchar(300) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `Overview` varchar(300) NOT NULL,
  `Location` varchar(300) NOT NULL,
  `Gender` varchar(300) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `crimereport`
--

INSERT INTO `crimereport` (`id`, `P_id`, `Date`, `Time`, `Type`, `Overview`, `Location`, `Gender`, `Description`, `status`) VALUES
(1, 29, 'awd', 'awdaw', 'daw', 'dawd', 'awdaw', 'awdaw', 'dawdawd', 'approved'),
(2, 5, 'daw', 'daw', 'awdawd', 'dawd', 'awd', 'awd', 'awd', 'Reject'),
(3, 29, 'awd', 'awdaw', 'daw', 'dawd', 'awdaw', 'awdaw', 'dawdawd', ''),
(4, 5, 'daw', 'daw', 'awdawd', 'dawd', 'awd', 'awd', 'awd', ''),
(5, 37, 'date', 'time', 'typoe', 'over', 'loc', 'gend', 'des', ''),
(6, 37, 'date', 'time', 'typoe', 'over', 'loc', 'gend', 'des', ''),
(7, 35, 'dawd', 'adxs', 'xds', 'a', 'z', 'scx', 'zxcx', 'pending'),
(8, 28, 'dawdawd', 'awd', 'awd', 'awdawda', 'wdawd', 'Male', 'awdawd', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Srno.` int NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Srno.`, `username`, `password`) VALUES
(1, 'sahil', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc`
--
ALTER TABLE `acc`
  ADD PRIMARY KEY (`Srno.`);

--
-- Indexes for table `crimereport`
--
ALTER TABLE `crimereport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `P_id` (`P_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Srno.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc`
--
ALTER TABLE `acc`
  MODIFY `Srno.` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `crimereport`
--
ALTER TABLE `crimereport`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Srno.` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crimereport`
--
ALTER TABLE `crimereport`
  ADD CONSTRAINT `crimereport_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `acc` (`Srno.`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
