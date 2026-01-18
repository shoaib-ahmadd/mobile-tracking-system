-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2026 at 01:06 PM
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
-- Database: `mobile_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `tower` varchar(100) NOT NULL,
  `IMEI` varchar(20) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `tower`, `IMEI`, `time`) VALUES
(1, 'Tower-A', '111111111111111', '2026-01-17 23:33:33'),
(2, 'Tower-B', '222222222222222', '2026-01-17 23:33:33'),
(3, 'AUTO_TOWER', '111111111111', '2026-01-17 23:40:11'),
(4, 'AUTO_TOWER', '111111111111111', '2026-01-17 23:40:49'),
(5, 'AUTO_TOWER', '111111111111111', '2026-01-17 23:41:23'),
(6, 'AUTO_TOWER', '111111111111111', '2026-01-17 23:41:58'),
(7, 'AUTO_TOWER', '111111111111111', '2026-01-17 23:42:34'),
(8, 'AUTO_TOWER', '111111111111111', '2026-01-17 23:42:44'),
(9, 'AUTO_TOWER', '111111111111111', '2026-01-17 23:57:41'),
(10, 'AUTO_TOWER', '111111111111111', '2026-01-17 23:57:51'),
(11, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:17:51'),
(12, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:33:12'),
(13, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:33:18'),
(14, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:37:50'),
(15, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:41:56'),
(16, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:42:30'),
(17, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:53:19'),
(18, 'AUTO_TOWER', '111111111111111', '2026-01-18 00:58:40'),
(19, 'AUTO_TOWER', '111111111111111', '2026-01-18 01:02:16'),
(20, 'AUTO_TOWER', '111111111111111', '2026-01-18 01:04:20'),
(21, 'AUTO_TOWER', '111111111111111', '2026-01-18 01:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL,
  `shoptype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `shopname`, `address`, `location`, `shoptype`) VALUES
(1, 'Demo Hotel', 'Delhi', 'Delhi', 'Hotel'),
(2, 'Demo Bakery', 'Noida', 'UP', 'Bakery'),
(3, 'Demo Hotel', 'delhi', 'Dehradun', 'Hotel ');

-- --------------------------------------------------------

--
-- Table structure for table `useradmin`
--

CREATE TABLE `useradmin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useradmin`
--

INSERT INTO `useradmin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `useradmin`
--
ALTER TABLE `useradmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
