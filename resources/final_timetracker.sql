-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2012 at 02:48 AM
-- Server version: 5.1.63
-- PHP Version: 5.3.6-13ubuntu3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `final_timetracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'client id',
  `name` varchar(255) NOT NULL COMMENT 'name of the  client',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`cid`, `name`) VALUES
(1, 'Trivone'),
(2, 'Iaandb'),
(3, 'Idea7'),
(4, 'Focalworks'),
(5, 'Dotahead'),
(6, 'Vistacaballo');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

DROP TABLE IF EXISTS `entry`;
CREATE TABLE IF NOT EXISTS `entry` (
  `eid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'unique entry id',
  `pid` int(11) NOT NULL COMMENT 'project id',
  `uid` int(11) NOT NULL COMMENT 'user id',
  `desc` varchar(255) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `totaltime` time NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `pid` (`pid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`eid`, `pid`, `uid`, `desc`, `starttime`, `endtime`, `totaltime`) VALUES
(54, 16, 1, 'Checking the issues mentioned', 1343014380, 1343015160, '00:13:00'),
(55, 5, 1, 'Points from Mahesh on Deccan', 1343015160, 1343020020, '01:21:00'),
(56, 13, 1, 'Assigning task and managing', 1343020020, 1343020800, '00:13:00'),
(57, 13, 1, 'Assigning task and managing', 1343020815, 1343023270, '00:40:55'),
(58, 5, 1, 'Review the code and markup for Deccan', 1343023350, 1343027138, '01:03:08'),
(59, 4, 1, 'Reading stuff and coding', 1343034715, 1343036998, '00:38:03'),
(60, 4, 1, '#75 Ajax for read more', 1343038412, 1343040380, '00:32:48'),
(61, 14, 1, 'Reading on Landmark language and drupal language setup', 1343040424, 1343044618, '01:09:54'),
(62, 5, 1, 'Call with Mahesh and Hari', 1343044666, 1343046145, '00:24:39'),
(63, 14, 1, 'Reading on Landmark language and drupal language setup', 1343046157, 1343051950, '01:36:33'),
(64, 16, 1, 'Making the changes live', 1343105100, 1343106300, '00:20:00'),
(65, 13, 1, 'Assigning task and managing', 1343106818, 1343108135, '00:21:57'),
(66, 4, 1, 'Reading stuff and coding', 1343108140, 1343111232, '00:51:32'),
(68, 16, 1, 'Make the changes live', 1343111670, 1343115508, '01:03:58'),
(69, 5, 1, 'Getting the list of things that needs to be done at Alpha stage.', 1343118788, 1343123828, '01:24:00'),
(70, 4, 1, 'Cricket score block on the cricket page', 1343123853, 1343126368, '00:41:55'),
(71, 13, 1, 'Assigning task and managing', 1343193422, 1343195815, '00:39:53'),
(72, 4, 1, 'Working on the Olympics page to finalize', 1343195823, 1343200624, '01:20:01'),
(73, 16, 1, 'Sending welcome mails', 1343200640, 1343203777, '00:52:17'),
(74, 16, 1, 'Vistacaballo welcome mails', 1343206320, 1343209740, '00:57:00'),
(75, 4, 1, 'Working on the Olympics page to finalize', 1343209740, 1343218320, '02:23:00'),
(76, 4, 1, 'Working on the Olympics page to finalize', 1343218390, 1343220927, '00:42:17'),
(77, 13, 1, 'Assigning task and managing', 1343277960, 1343280840, '00:48:00'),
(78, 4, 1, 'Olympics page going live', 1343280840, 1343288040, '02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`pid`, `cid`, `name`) VALUES
(1, 1, 'Techtree'),
(2, 1, 'Supportbiz'),
(3, 1, 'Chakpak'),
(4, 1, 'Khelnama'),
(5, 1, 'Deccan Chronicles'),
(6, 1, 'Wheels Unplugged'),
(7, 2, '361 Dgree Conference'),
(8, 2, 'Public website'),
(9, 3, 'VW Sparsh'),
(10, 3, 'Tata MIP'),
(11, 4, 'Time tracking'),
(12, 5, 'Landmark'),
(13, 1, 'Trivone All'),
(14, 4, 'Managing'),
(15, 3, 'MIP'),
(16, 6, 'Play with fire'),
(17, 6, 'Public website');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'user id',
  `email` varchar(255) NOT NULL COMMENT 'user email address',
  `password` varchar(255) NOT NULL COMMENT 'user password MD5',
  `timezone` varchar(30) NOT NULL DEFAULT 'NONE' COMMENT 'User''s time zone',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `email`, `password`, `timezone`) VALUES
(1, 'amitav.roy@focalworks.in', '795582d3fe8d2c1950683b11ac8f4960', 'Asia/Kolkata'),
(2, 'kiran.meruvala@focalworks.in', '795582d3fe8d2c1950683b11ac8f4960', 'NONE'),
(3, 'komal.savla@focalworks.in', '795582d3fe8d2c1950683b11ac8f4960', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `users_projects`
--

DROP TABLE IF EXISTS `users_projects`;
CREATE TABLE IF NOT EXISTS `users_projects` (
  `uid` int(11) NOT NULL COMMENT 'user uid',
  `pid` int(11) NOT NULL COMMENT 'project id',
  KEY `uid` (`uid`,`pid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_projects`
--

INSERT INTO `users_projects` (`uid`, `pid`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 9),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(2, 1),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entry`
--
ALTER TABLE `entry`
  ADD CONSTRAINT `entry_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `projects` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `entry_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `clients` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users_projects`
--
ALTER TABLE `users_projects`
  ADD CONSTRAINT `users_projects_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_projects_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `projects` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
