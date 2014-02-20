-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 16, 2012 at 11:40 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timetracking_ar`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`cid`, `name`) VALUES
(1, 'Trivone'),
(2, 'Iaandb'),
(3, 'Idea7'),
(4, 'Focalworks'),
(5, 'Dotahead'),
(6, 'Tricoe'),
(7, 'Janaagraha'),
(8, 'ELT');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`eid`, `pid`, `uid`, `desc`, `starttime`, `endtime`, `totaltime`) VALUES
(12, 1, 1, 'Another', 1342103400, 1342103700, '00:05:00'),
(14, 1, 1, 'Working on the user model', 1342103700, 1342107300, '01:00:00'),
(15, 8, 1, 'And then I worked on Iaandb', 1342107300, 1342112100, '01:20:00'),
(16, 2, 1, 'And Ad tags on Supportbiz was pending', 1342112100, 1342112400, '00:05:00'),
(17, 5, 1, 'A lot of time on the Div for Category landing page', 1342112400, 1342116000, '01:00:00'),
(18, 5, 2, 'CSS for Deccan', 1342171800, 1342184400, '03:30:00'),
(19, 5, 1, 'Review the development', 1342267140, 1342268100, '00:16:00'),
(21, 5, 2, 'Working on the home page CSS', 1342260900, 1342271700, '03:00:00'),
(22, 5, 2, 'Working on the home page CSS', 1342275300, 1342294500, '05:20:00'),
(23, 1, 1, 'Worked on the user registration error', 1342258200, 1342269000, '03:00:00'),
(26, 9, 1, 'adasd', 1342258200, 1342261800, '01:00:00'),
(27, 5, 1, 'Checking things', 1342258200, 1342260000, '00:30:00'),
(28, 5, 1, 'Then I came for another one', 1342349100, 1342351740, '00:44:00'),
(29, 9, 1, 'And more things happened', 1342349100, 1342355520, '01:47:00'),
(30, 2, 1, 'And more things happened', 1342356300, 1342366440, '02:49:00'),
(31, 1, 1, 'Comment verification was not working', 1342344600, 1342349100, '01:15:00'),
(32, 1, 1, 'And made the code live', 1342349100, 1342353300, '01:10:00'),
(33, 2, 1, 'Slider for Supportbiz created problem, fixed and made live', 1342352700, 1342360500, '02:10:00'),
(38, 5, 1, 'Working on the date', 1342386000, 1342387560, '00:26:00'),
(39, 11, 1, 'Bug fix on wrong time display even though time stamp was correct', 1342388700, 1342390320, '00:27:00'),
(40, 5, 1, 'Managing and task assignment', 1342432500, 1342438500, '01:40:00'),
(41, 5, 1, 'Finding issues and discussion on what needs to be done', 1342438500, 1342439580, '00:18:00'),
(42, 5, 1, 'Adding code to Assembla repo and creating a few tickets', 1342439580, 1342442640, '00:51:00'),
(43, 5, 1, 'Adding code to Assembla repo and creating a few tickets', 1342442760, 1342443180, '00:07:00'),
(44, 5, 1, 'Cric feeds code live', 1342443180, 1342443540, '00:06:00'),
(45, 11, 1, 'Understanding the application', 1342446840, 1342458300, '03:11:00'),
(46, 11, 1, 'check', 1342446840, 1342435380, '03:11:00'),
(47, 11, 1, 'check', 1342446840, 1342435260, '03:13:00'),
(48, 11, 1, 'check', 1342450440, 1342442460, '02:13:00'),
(49, 11, 1, 'what the hell', 1342536840, 1342528860, '02:13:00'),
(50, 11, 1, 'Back date', 1342450440, 1342442460, '02:13:00'),
(51, 11, 1, 'Next date entry', 1342536840, 1342528860, '02:13:00'),
(52, 11, 1, 'And then back date again', 1342450440, 1342442460, '02:13:00'),
(53, 11, 1, 'Back date going again', 1341154440, 1341146460, '02:13:00'),
(54, 11, 1, 'And now today''s last entry', 1342480800, 1342480200, '00:10:00'),
(55, 11, 1, 'Will work from 10 to 12 on this tomorrow entry made now', 1342519200, 1342512000, '02:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

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
(12, 5, 'Landmark Intranet');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'user id',
  `email` varchar(255) NOT NULL COMMENT 'user email address',
  `password` varchar(255) NOT NULL COMMENT 'user password MD5',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `email`, `password`) VALUES
(1, 'amitav.roy@focalworks.in', '795582d3fe8d2c1950683b11ac8f4960'),
(2, 'kiran.meruvala@focalworks.in', '795582d3fe8d2c1950683b11ac8f4960');

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
(2, 1),
(2, 5);

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
