-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2025 at 01:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_result`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Roll_Num` int(11) NOT NULL,
  `Mother_Name` varchar(255) DEFAULT NULL,
  `Maths` int(11) DEFAULT NULL,
  `Science` int(11) DEFAULT NULL,
  `English` int(11) DEFAULT NULL,
  `History` int(11) DEFAULT NULL,
  `Geography` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Roll_Num`, `Mother_Name`, `Maths`, `Science`, `English`, `History`, `Geography`) VALUES
(101, 'Sophia Smith', 85, 90, 88, 76, 80),
(102, 'Emma Johnson', 78, 85, 80, 74, 79),
(103, 'Olivia Brown', 92, 88, 91, 85, 87),
(104, 'Ava Williams', 88, 90, 85, 83, 82),
(105, 'Isabella Jones', 79, 81, 75, 72, 74),
(106, 'Mia Davis', 95, 92, 94, 90, 88),
(107, 'Charlotte Wilson', 82, 87, 84, 80, 78),
(108, 'Amelia Moore', 91, 89, 93, 86, 90),
(109, 'Harper Taylor', 76, 79, 74, 70, 72),
(110, 'Evelyn Anderson', 89, 91, 86, 88, 84);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Roll_Num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
