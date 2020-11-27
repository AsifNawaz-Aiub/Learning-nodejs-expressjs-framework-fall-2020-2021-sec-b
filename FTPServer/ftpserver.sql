-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 07:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ftpserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(10) NOT NULL,
  `category` text NOT NULL,
  `name` text NOT NULL,
  `crackedby` text NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `category`, `name`, `crackedby`, `size`) VALUES
(1, 'Open World', 'GTA 5', '3DM', '60 GB'),
(2, 'RPG', 'Assassins Creed Black Flag IV ', 'P2P', '8 GB'),
(3, 'Racing', 'F1 2018', 'CODEX', '30 GB');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) NOT NULL,
  `genre` text NOT NULL,
  `name` text NOT NULL,
  `rating` varchar(10) NOT NULL,
  `publishYear` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `genre`, `name`, `rating`, `publishYear`) VALUES
(1, 'Action', 'Spider Man 3', '****', 2003),
(2, 'Thriller', 'Parasite', '****', 2019),
(3, 'Comedy', 'Home Alone', '****', 1990);

-- --------------------------------------------------------

--
-- Table structure for table `softwares`
--

CREATE TABLE `softwares` (
  `id` int(10) NOT NULL,
  `type` text NOT NULL,
  `name` text NOT NULL,
  `version` text NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `softwares`
--

INSERT INTO `softwares` (`id`, `type`, `name`, `version`, `size`) VALUES
(1, 'Application', 'Code Blocks', '20.02', '2 GB'),
(2, 'Utility', 'DirectX 12', '2.2', '200 MB'),
(3, 'Driver', 'NVIDIA GTX 1050TI GPU DRIVER', '450.01', '500 MB');

-- --------------------------------------------------------

--
-- Table structure for table `tvseries`
--

CREATE TABLE `tvseries` (
  `id` int(10) NOT NULL,
  `genre` text NOT NULL,
  `name` text NOT NULL,
  `rating` varchar(10) NOT NULL,
  `publishYear` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tvseries`
--

INSERT INTO `tvseries` (`id`, `genre`, `name`, `rating`, `publishYear`) VALUES
(1, 'Action', 'Breaking Bad', '*****', 2008),
(2, 'Thriller', 'Dark', '*****', 2017),
(3, 'Comedy', 'Friends', '*****', 2001),
(4, 'Thriller', 'Chernobyl', '*****', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `type` text NOT NULL,
  `username` text NOT NULL,
  `password` varchar(10) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `password`, `fullname`, `email`) VALUES
(1, 'user', 'user123', '123', 'Asif', 'asif@gamil.com'),
(2, 'admin', 'admin123', '123', 'Asif Nawaz', 'asifnawaz@gamil.com'),
(3, 'moderator', 'moderator123', '123', 'Nawaz', 'nawaz@gamil.com'),
(4, 'admin', 'adam123', '123', 'Adam', 'adam@gmail.com'),
(5, 'moderator', 'alan123', '123', 'Alan', 'alan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softwares`
--
ALTER TABLE `softwares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tvseries`
--
ALTER TABLE `tvseries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `softwares`
--
ALTER TABLE `softwares`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tvseries`
--
ALTER TABLE `tvseries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
