-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 03:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `page_id`, `parent_id`, `name`, `content`, `submit_date`) VALUES
(1, 1, -1, 'John Doe', 'Thank you for taking out time to write this article', '2020-11-24 23:10:21'),
(2, 1, -1, 'David Adams', 'Great content sir!\r\nyour post was simply amazing', '2020-11-24 23:11:25'),
(3, 1, -1, 'Michael', 'Brilliant Article', '2020-11-24 23:12:32'),
(4, 1, 4, 'S-Baba', 'Thank you', '2020-11-24 23:13:35'),
(5, 1, -1, 'Stephen', 'Love this\r\n', '2020-11-24 23:35:20'),
(6, 1, 5, 'S-Baba', 'Thank You', '2020-11-24 23:35:46'),
(7, 1, -1, 'Peace', 'Nice article', '2021-07-01 09:30:49'),
(8, 1, 7, 'John', 'YES, THEY ARE DOING A GREAT WORK', '2021-07-01 09:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(1, 1, 'David Beacon', 'Awesome website with Amazing Contents.\r\nI read your posts daily', 5, '2020-11-24 23:18:50'),
(2, 1, 'John Doe', 'Cool site with awesome contents! You can do a whole lot better', 4, '2020-11-24 23:19:55'),
(3, 1, 'Bobby', 'Little contents!', 2, '2020-11-24 23:20:53'),
(4, 1, 'Daniel Callaghan', 'Great website!', 5, '2020-11-24 23:21:33'),
(5, 1, 'Robert', 'Not enough contents!', 3, '2020-11-24 23:22:25'),
(6, 1, 'Stephen', 'Wonderful writeups', 5, '2020-11-24 23:36:42'),
(7, 1, 'Jackson', 'Excellent delivery of words', 4, '2020-11-24 23:37:11'),
(8, 1, 'Peace', 'Remarkable stuff', 5, '2021-07-01 09:32:24'),
(9, 1, 'CornerStone', 'Nice content\r\n', 4, '2021-07-28 11:47:59'),
(10, 1, 'qelijljh', '<h2>ahah</h2>', 3, '2021-07-28 11:48:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
