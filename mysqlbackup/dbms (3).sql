-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 09:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `Srno.` int(11) NOT NULL,
  ` Uid` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `E_mail` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `add` varchar(100) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `id` int(11) NOT NULL,
  `Date` varchar(300) NOT NULL,
  `Time` varchar(300) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `Overview` varchar(300) NOT NULL,
  `Location` varchar(300) NOT NULL,
  `Gender` varchar(300) NOT NULL,
  `Description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crimereport`
--

INSERT INTO `crimereport` (`id`, `Date`, `Time`, `Type`, `Overview`, `Location`, `Gender`, `Description`) VALUES
(1, 'Crime Date :', 'Crime Time :', 'Crime Type :', 'Overview :', 'Location :', 'Male', 'Description :'),
(2, 'Crime Date :', 'Crime Time :', 'Crime Type :', 'Overview :', 'Location :', 'Male', 'Description :'),
(3, 'Crime Date :', 'Crime Time :', 'Crime Type :', 'Overview :', 'Location :', 'Male', 'Description :'),
(4, 'Crime Date :', 'Crime Time :', 'Crime Type :', 'Overview :', 'Location :', 'hello', 'Description :'),
(5, 'Crime Date :', 'Crime Time :', 'Crime Type :', 'Overview :', 'Location :', 'hello', 'Description :'),
(6, 'Crime Date :', 'Crime Time :', 'Crime Type :', 'Overview :', 'Location :', 'Female', 'Description :'),
(7, '2', '1', 'sassa', 'sasa', 's', 'Male', 'asa'),
(8, '2', '2', 'sasw', 'asasasa', 'sasa', 'Male', 'ishiahs'),
(9, '8-4-2022', '7:05pm', 'Email fraud', 'huashiuhaiosdh', 'kalwa', 'Male', 'wqhduicuiujabcue aofhuishiqajdoiwh'),
(10, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(11, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(12, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(13, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(14, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(15, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(16, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(17, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(18, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(19, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(20, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(21, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(22, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(23, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(24, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(25, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(26, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(27, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(28, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(29, '21', '21', 'sassasss', 'sa', 's', 'Male', 'sas'),
(30, '12', '12', 's', 's', 'sas', 'Male', 's'),
(31, '12', '1', 'as', 'wqsa', 'as', 'Male', 'sasa'),
(32, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(33, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(34, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(35, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(36, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(37, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(38, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(39, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(40, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(41, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(42, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(43, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(44, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(45, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(46, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(47, '12', '212', 'sasa', 'sasasa', 'sa', 'Male', 'sasasa'),
(48, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(49, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(50, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(51, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(52, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(53, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(54, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(55, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(56, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(57, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(58, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(59, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(60, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(61, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(62, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(63, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(64, '12', '2', 'asa', 'sas', 'sas', 'Male', 'sasassa'),
(65, '21', '2', 'sahil', 'ss', 's', 'Male', 'sas');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Srno.` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `Srno.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `crimereport`
--
ALTER TABLE `crimereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Srno.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
