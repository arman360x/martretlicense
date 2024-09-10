-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2024 at 04:37 PM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martretlicense`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Arman', 'test2@gmail.com', '$2y$10$2dIPsjzMu4xZhxSrjKqC1Oc.atpF132WWQWAZLVPuEAO8pyeiVJE.', '2024-08-30 08:05:54'),
(0, 'martretlicense', 'martretuser@gmail.com', '$2y$10$PEdK94yJL9eaqojhcKqoMes7kR5ltncGQnEX7S0m2G42/OzWe6c2u', '2024-09-03 20:18:37'),
(0, 'martretlicense', 'martretuser@gmail.com', '$2y$10$6auFyrNNPnKdNOzybAH/FeFBbpoIE9N6DxOio3hPtaVy7GE37i1He', '2024-09-03 20:18:44'),
(0, 'martretlicense', 'admin@gmail.com', '$2y$10$m0zximZjrWgmtaPvzGOWU.RutiU93JwSugvJ9eC1JIyqPSwNDO6Yq', '2024-09-03 20:22:54'),
(0, 'admin@martret.com.au', 'admin@martret.com.au', '$2y$10$Bgx25I9/vmbcvxfREPr86.w3IeX830qz3XbnW9hu5sTAYWz.iJIru', '2024-09-03 20:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `broker_name` varchar(100) NOT NULL,
  `license_key` varchar(100) NOT NULL,
  `promo_code` varchar(50) DEFAULT NULL,
  `expire_date` date NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT 1,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`name`, `email`, `account_number`, `broker_name`, `license_key`, `promo_code`, `expire_date`, `phone`, `description`, `is_enabled`, `id`) VALUES
('Stephen Martret', 'safire25@hotmail.com', '51883711', 'IC Markets', 'VcH36Yjis3UsmfKRm3v6LDlcNLF0JcTv', '', '2025-03-09', '0431646343', '', 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
