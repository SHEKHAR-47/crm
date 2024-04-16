-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2024 at 05:49 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order-id` int NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `uid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order-id`, `item_name`, `quantity`, `username`, `uid`) VALUES
(1, 'q', 12, 'w', 1),
(2, 'q', 3, '2', 1),
(3, 'q', 3, '2', 1),
(4, 'q', 45, '2', 1),
(5, 'q', 100, 'raj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

CREATE TABLE `prequest` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `services` text,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `posting_date` date DEFAULT NULL,
  `remark` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `services`, `others`, `query`, `status`, `posting_date`, `remark`) VALUES
(1, 'Mark Cooper', 'mcooper@mail.com', '09123654789', 'Test Only', '[\\\"Service\\\\/Support Needed 101\\\",\\\"Service\\\\/Support Needed 102\\\",\\\"Service\\\\/Support Needed 103\\\",\\\"Service\\\\/Support Needed 106\\\",\\\"Service\\\\/Support Needed 108\\\"]', '', 'Sample only', 0, '2022-11-29', 'Sample remarks'),
(2, 'pawan', 'pawan@gmail.com', '7276616829', 'raj grover', '[\\\"Service\\\\/Support Needed 101\\\",\\\"Service\\\\/Support Needed 106\\\"]', '', 'need urgently', 0, '2024-04-03', 'done'),
(3, 'pawan', 'pawan@gmail.com', '7276616829', 'kl', '[\\\"Service\\\\/Support Needed 101\\\"]', '', 'l', 0, '2024-04-03', 'l'),
(4, 'pawan', 'pawan@gmail.com', '7276616829', 'ws', '[\\\"Service\\\\/Support Needed 102\\\",\\\"Service\\\\/Support Needed 103\\\"]', '', 'w', 0, '2024-04-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int NOT NULL,
  `ticket_id` varchar(11) DEFAULT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(13, '6', 'mcooper@mail.com', 'My Samplle Ticket', 'Option 3', 'urgent(functional problem)', 'Sample Description of the ticket', NULL, 'closed', 'test', '2022-11-29', '2022-11-29 05:53:10'),
(14, '7', 'mcooper@mail.com', 'Sample ticket 102', 'Option 4', 'non-urgent', 'Sample only', NULL, 'closed', 'done', '2022-11-29', '2022-11-29 05:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`) VALUES
(1, 'Admin Administrator', 'info@mail.com', 'admin@mail.com', 'admin123', '1234567890', 'male', 'Block 6, Lot 14, 23 St., Here City, Down There, 2306 ', NULL, '2021-04-22 12:25:19'),
(2, 'Mark Cooper', 'mcooper@mail.com', 'mcoop123@mail.com', 'mcooper1234', '09123654789', 'm', 'Sample Address only', NULL, '2022-11-29 03:28:28'),
(3, 'shekhar', 'sk@gmail.com', NULL, '123456', '97687742901', 'male', NULL, NULL, '2024-03-12 04:19:35'),
(4, 'pawan', 'pawan@gmail.com', NULL, '123456', '7276616829', 'male', NULL, NULL, '2024-04-03 03:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

CREATE TABLE `usercheck` (
  `id` int NOT NULL,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(32) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(4, '2022/11/29', '09:36:21am', 2, 'Mark Cooper', 'mcooper@mail.com', 0x3a3a31, 0x30302d30422d32422d30322d36352d44, '', ''),
(3, '2022/11/29', '09:01:36am', 2, 'Mark Cooper', 'mcooper@mail.com', 0x3a3a31, 0x30302d30422d32422d30322d36352d44, '', ''),
(5, '2024/04/03', '08:38:38am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x34342d33392d43342d33422d35422d3638, '', ''),
(6, '2024/04/03', '08:47:41am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x34342d33392d43342d33422d35422d3638, '', ''),
(7, '2024/04/04', '10:20:33am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x30302d31452d41362d31362d35412d3237, '', ''),
(8, '2024/04/04', '11:11:54am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x30302d31452d41362d31362d35412d3237, '', ''),
(9, '2024/04/06', '08:05:34am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x34342d33392d43342d33422d35422d3638, '', ''),
(10, '2024/04/06', '08:29:45am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x34342d33392d43342d33422d35422d3638, '', ''),
(11, '2024/04/06', '08:42:28am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x34342d33392d43342d33422d35422d3638, '', ''),
(12, '2024/04/15', '10:48:52am', 4, 'pawan', 'pawan@gmail.com', 0x3a3a31, 0x34342d33392d43342d33422d35422d3638, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order-id`);

--
-- Indexes for table `prequest`
--
ALTER TABLE `prequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercheck`
--
ALTER TABLE `usercheck`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order-id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prequest`
--
ALTER TABLE `prequest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usercheck`
--
ALTER TABLE `usercheck`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
