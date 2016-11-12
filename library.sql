-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2016 at 04:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `BookID` varchar(5) NOT NULL,
  `ISBN` varchar(14) NOT NULL,
  `BookTitle` varchar(30) NOT NULL,
  `Edition` varchar(10) DEFAULT NULL,
  `Author` varchar(50) NOT NULL,
  `Cat` varchar(10) NOT NULL,
  `Year` date NOT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `ISBN`, `BookTitle`, `Edition`, `Author`, `Cat`, `Year`) VALUES
('011', '12345678901234', 'qwertyui', 'asdfghj', 'zxcvbnmfghj', 'xcv', '2016-04-04'),
('012', '1233265654', 'asdfgh', 'xcvbn', 'dfghj', 'dfghj', '2016-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `userID` varchar(20) NOT NULL,
  `fName` varchar(30) NOT NULL,
  `lName` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(40) NOT NULL,
  `contact` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`userID`, `fName`, `lName`, `address`, `city`, `contact`) VALUES
('123', 'ertftg', 'gfhgf', 'tfhghgh', 'ghjhg', '123456789'),
('789', 'qwwert', 'qwert', 'qwerty', 'qwerty', '1234567899'),
('qwe', 'qwert', 'sdf', 'ghjkghj', 'fghj', '1234567890'),
('zxc', 'zxcv', 'xcv', 'zxcv', 'zxcv', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MemID` varchar(10) NOT NULL,
  `BookID` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transsactions`
--

CREATE TABLE IF NOT EXISTS `transsactions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BDate` date NOT NULL,
  `RDate` date NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `MemberID` varchar(20) NOT NULL,
  `BookID` varchar(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `transsactions`
--

INSERT INTO `transsactions` (`ID`, `BDate`, `RDate`, `Status`, `MemberID`, `BookID`) VALUES
(1, '2016-04-06', '2016-04-20', 1, '123', '011'),
(2, '2016-04-06', '2016-04-20', 1, '123', '011'),
(3, '2016-04-06', '2016-04-20', 1, '123', '011'),
(4, '2016-04-06', '2016-04-20', 1, '789', '012'),
(5, '2016-04-06', '2016-04-20', 1, 'zxc', '011'),
(6, '2016-04-25', '2016-04-20', 1, '123', '011'),
(7, '2016-04-25', '2016-05-09', 1, 'zxc', '012'),
(8, '2016-04-25', '2016-04-05', 1, 'zxc', '012'),
(9, '2016-04-25', '2016-04-25', 1, 'zxc', '012'),
(10, '2016-04-25', '2016-05-09', 1, 'zxc', '011');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
