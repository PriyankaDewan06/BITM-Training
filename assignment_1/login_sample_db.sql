-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 03:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_sample_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`, `date`) VALUES
(1, 7378699685230016, 'avinash', '1456', '2022-04-08 17:30:52'),
(2, 387994340, 'avinash', '1456', '2022-04-08 17:36:23'),
(3, 63560042418618081, 'dhurbo', '6897', '2022-04-08 18:55:15'),
(4, 28555241705605647, 'puja', '789', '2022-04-08 19:23:48'),
(5, 703607504, 'deepto', '5698', '2022-04-08 19:44:38'),
(6, 91838, 'lkljll', '256', '2022-04-08 19:51:28'),
(7, 1719, 'deepto', '5698', '2022-04-08 19:53:14'),
(8, 111817109965, 'hjkl', '7865', '2022-04-09 09:20:00'),
(9, 61071, 'ghjk', '4568', '2022-04-09 09:46:21'),
(10, 4109982, 'kaj', '562', '2022-04-09 09:55:52'),
(11, 8962313, 'rita', '2222', '2022-04-09 10:04:05'),
(12, 3941657656495617, 'hjk', '896', '2022-04-09 10:45:30'),
(13, 29023916494917, 'kajol', '852', '2022-04-09 10:57:25'),
(14, 928830776, 'risa', '963', '2022-04-09 13:05:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
