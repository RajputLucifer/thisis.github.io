-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 02:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pratik`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Lucifer', 'lucifer@gmail.com', 'This is a subject', 'Message of Subject'),
(2, 'dfdhwreig', 'wgugu@gmail.com', 'dbdrfsdsgwsf', 'dfbdfndngj'),
(3, 'dfdhwreig', 'wgugu@gmail.com', 'sgcujsghcjaw', 'hysgchsgchs'),
(4, 'dfdhwreig', 'wgugu@gmail.com', 'dvbwsbwsfbs', 'dvb dgnbdnnffnbedf ne'),
(5, 'dfdhwreig', 'wgugu@gmail.com', 'savdmakvnv ', 'jadhjdhvjq'),
(6, 'dfdhwreig', 'wgugu@gmail.com', 'jsdhgfd', 'jshgjds'),
(7, 'dfdhwreig', 'wgugu@gmail.com', 'jdvh', 'jdvhvj'),
(8, 'dfdhwreig', 'wgugu@gmail.com', 'nhvgbhg', 'ygyugt'),
(9, 'sknfkw', 'jsdhj@gmail.com', 'tis ', 'ujwsgdw'),
(10, 'sknfkw', 'jsdhj@gmail.com', 'hjqwaxw', 'wxwc'),
(11, 'sknfkw', 'jsdhj@gmail.com', 'zszc ', 'scs'),
(12, 'sknfkw', 'jsdhj@gmail.com', 'skchns', 'jzscbasj'),
(13, 'sknfkw', 'jsdhj@gmail.com', 'jzbcjsjchbsjchb', 'skjchs'),
(14, 'dfdhwreig', 'wgugu@gmail.com', 'jscgs', 'jscbhs'),
(15, 'sknfkw', 'jsdhj@gmail.com', 'sdckxhnjkxnkj ', 'dxcdjscsbhjs'),
(16, 'dfdhwreig', 'wgugu@gmail.com', 'dersgbe', 'eberb'),
(17, 'dfdhwreig', 'wgugu@gmail.com', 'ishvvskj', 'kvhjvksv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
