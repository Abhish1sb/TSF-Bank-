-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220714.346923e20a
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 07:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Abhishek', 'Rishi', 100, '2022-07-13 13:09:07'),
(2, 'Deepak', 'Dhruv', 10000, '2022-07-13 13:09:21'),
(3, 'Anshu', 'Nabba', 4000, '2022-07-13 13:09:39'),
(4, 'Deepak', 'Amit', 480, '2022-07-13 13:09:53'),
(5, 'Kunal', 'Abhishek', 400, '2022-07-13 13:10:04'),
(6, 'Rishi', 'Dhruv', 3000, '2022-07-13 13:10:18'),
(7, 'Tanny', 'Goli', 10000, '2022-07-13 13:56:46'),
(8, 'Abhishek', 'Ankit', 10000, '2022-07-14 19:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1111, 'Abhishek', 'abhish1albodi@gmail.com', 36900),
(1112, 'Tanny', 'tannydaniel@gmail.com', 59000),
(1234, 'Kunal', 'grooterscto@gmail.com', 30220),
(1357, 'Rishi', 'bhopali@gmail.com', 37100),
(1515, 'Jagga', 'jaggernaut@gmail.com', 45000),
(1900, 'MajorKT', 'ashiyap@gmail.com', 68000),
(1999, 'Goli', 'deloite@gmail.com', 100000),
(2000, 'Deepak', 'mrfresher@gmail.com', 38320),
(2500, 'Dhruv', 'gujrati@gmail.com', 48000),
(3000, 'Nabba', 'xyz@gmail.com', 44000),
(3500, 'Amit', 'wingman@gmail.com', 49960),
(4000, 'Ankit', 'gigachad@gmail.com', 50000),
(4500, 'Anshu', 'gundi@gmail.com', 26000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
