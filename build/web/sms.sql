-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2016 at 09:06 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `acquire`
--

CREATE TABLE `acquire` (
  `infra_id` varchar(10) NOT NULL DEFAULT '',
  `sports_id` varchar(10) NOT NULL DEFAULT '',
  `date_allocated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acquire`
--

INSERT INTO `acquire` (`infra_id`, `sports_id`, `date_allocated`) VALUES
('I004', 'S2', '2014-11-12'),
('I005', 'S2', '2015-05-22'),
('I006', 'S1', '2013-03-03'),
('I007', 'S1', '2013-03-03'),
('I008', 'S3', '2015-11-11'),
('I009', 'S4', '0000-00-00'),
('I010', 'S6', '2015-01-01'),
('I011', 'S6', '2015-01-01'),
('I012', 'S6', '2015-06-06'),
('I013', 'S5', '2015-06-06'),
('I015', 'S5', '2015-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `allocated`
--

CREATE TABLE `allocated` (
  `sports_id` varchar(10) NOT NULL DEFAULT '',
  `staff_id` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allocated`
--

INSERT INTO `allocated` (`sports_id`, `staff_id`) VALUES
('S4', 'ST007'),
('S1', 'ST008'),
('S2', 'ST009'),
('S6', 'ST010'),
('S3', 'ST011'),
('S5', 'ST012');

-- --------------------------------------------------------

--
-- Table structure for table `funding`
--

CREATE TABLE `funding` (
  `sponsor_id` varchar(10) NOT NULL DEFAULT '',
  `sports_id` varchar(10) NOT NULL DEFAULT '',
  `money` int(7) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `funding`
--

INSERT INTO `funding` (`sponsor_id`, `sports_id`, `money`, `date`) VALUES
('SP001', 'S1', 20000, '2013-12-31'),
('SP001', 'S5', 15000, '2014-11-21'),
('SP002', 'S2', 15000, '2014-02-03'),
('SP002', 'S4', 15000, '2014-08-09'),
('SP003', 'S3', 40000, '2014-05-06'),
('SP004', 'S1', 10000, '2014-10-10'),
('SP004', 'S4', 25000, '2014-04-04'),
('SP005', 'S5', 22000, '2015-09-11'),
('SP005', 'S6', 15000, '2014-08-09'),
('SP006', 'S6', 25000, '2015-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `contact` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`contact`, `name`) VALUES
(98761231, 'Satyam'),
(98761232, 'Rajesh'),
(98761233, 'Mathew'),
(98761234, 'Agarwal'),
(98761235, 'Amith'),
(98761236, 'John'),
(98761237, 'Steven'),
(98761238, 'George');

-- --------------------------------------------------------

--
-- Table structure for table `infra`
--

CREATE TABLE `infra` (
  `infra_id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `cost` int(6) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infra`
--

INSERT INTO `infra` (`infra_id`, `name`, `cost`, `type`, `quantity`) VALUES
('I001', 'Broom', 30, 0, 4),
('I002', 'Washing Cloth', 20, 0, 5),
('I003', 'Marker', 50, 0, 10),
('I004', 'Shuttles', 50, 1, 10),
('I005', 'Racquets', 500, 1, 2),
('I006', 'Ball', 20, 1, 10),
('I007', 'TTBat', 150, 1, 4),
('I008', 'Ball', 300, 1, 4),
('I009', 'BasketBalls', 300, 1, 3),
('I010', 'TennisRacquet', 600, 1, 2),
('I011', 'TennisBalls', 100, 1, 6),
('I012', 'TennisNet', 300, 1, 1),
('I013', 'CricketGloves', 200, 1, 2),
('I014', 'Pads', 300, 1, 2),
('I015', 'Bat', 400, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `invited`
--

CREATE TABLE `invited` (
  `player_id` varchar(20) NOT NULL DEFAULT '',
  `contact` int(10) NOT NULL DEFAULT '0',
  `date_invited` date DEFAULT NULL,
  `fee` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invited`
--

INSERT INTO `invited` (`player_id`, `contact`, `date_invited`, `fee`) VALUES
('BA002', 98761231, '2015-10-20', 500),
('BB002', 98761233, '2015-10-26', 700),
('CR004', 98761232, '2014-10-23', 800),
('CR004', 98761236, '2015-11-04', 900),
('CR006', 98761234, '2015-11-10', 500),
('FB001', 98761234, '2014-10-18', 600),
('TE001', 98761235, '2015-11-02', 700),
('TE002', 98761236, '2015-11-15', 500),
('TE004', 98761238, '2014-11-06', 600),
('TT007', 98761237, '2015-11-14', 550);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `Gender` char(1) NOT NULL,
  `address` varchar(30) DEFAULT NULL,
  `contact` int(10) DEFAULT NULL,
  `fee_status` tinyint(1) DEFAULT NULL,
  `sports_id` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `jdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `name`, `Gender`, `address`, `contact`, `fee_status`, `sports_id`, `dob`, `jdate`) VALUES
('BA001', 'Rahul', 'M', 'msr nagar, bangalore', 41120789, 1, 'S2', '1994-09-09', '2013-09-11'),
('BA002', 'Josh', 'M', 'malleswaram, banglore', 41169282, 1, 'S2', '1996-02-02', '2013-04-06'),
('BA003', 'Rishab', 'M', 'jp nagar, bangalore', 45954202, 1, 'S2', '1990-08-08', '2012-09-08'),
('BA004', 'Sahil', 'M', 'express colony, bangalore', 23417890, 1, 'S2', '1991-01-01', '2013-06-07'),
('BA006', 'Pooja', 'F', 'vijaynagar, bangalore', 22443311, 1, 'S2', '1995-11-26', '2012-04-05'),
('BA007', 'Pooja A', 'F', 'indiranagar, bangalore', 45967812, 1, 'S2', '1995-12-25', '2012-12-27'),
('BB001', 'Sourav', 'M', 'msr nagar, bangalore', 99880044, 0, 'S4', '1994-12-11', '2013-02-02'),
('BB002', 'Greenlaw', 'M', 'msr nagar, bangalore', 99770022, 1, 'S4', '1992-11-12', '2014-05-24'),
('BB003', 'Rishab', 'M', 'jayanagar, bangalore', 22339797, 0, 'S4', '1994-02-02', '2015-03-08'),
('BB004', 'Rahul C', 'M', 'vijaynagar bangalore', 44444455, 1, 'S4', '1997-01-01', '2015-04-06'),
('BB005', 'John', 'M', 'abc colony, bangalore', 67899876, 1, 'S4', '1992-05-27', '2012-04-26'),
('BB006', 'Michelle', 'F', 'defence colony, bangalore', 65431234, 0, 'S4', '1990-03-03', '2014-02-02'),
('BB007', 'Jane', 'F', 'indiranagar, bangalore', 66667777, 1, 'S4', '1996-01-01', '2012-12-31'),
('BB008', 'Laxmi', 'F', 'peenya, bangalore', 67766776, 0, 'S4', '1990-08-08', '2013-09-09'),
('BB009', 'Vijaylaxmi', 'F', 'jeevanbhimanagar, bangalore', 81478888, 0, 'S4', '1998-09-09', '2014-11-09'),
('BB010', 'Swati', 'F', 'vv puram bangalore', 89781234, 1, 'S4', '1999-11-12', '2014-09-09'),
('CR001', 'Vashisht', 'M', 'abc colony bangalore', 81470000, 1, 'S5', '1994-12-03', '2013-04-05'),
('CR002', 'Sumit', 'M', 'rr nagar bangalore', 99001265, 0, 'S5', '1990-12-11', '2012-11-11'),
('CR003`', 'Ramesh', 'M', 'jayanagar bangalore', 67986798, 0, 'S5', '2004-12-12', '2012-12-11'),
('CR004', 'Suresh', 'M', 'rr nagar bangalore', 67546754, 1, 'S5', '1994-04-04', '2013-05-05'),
('CR005', 'Sourav', 'M', '24, hk colony, bangalore', 65346509, 1, 'S5', '2003-12-12', '2013-12-12'),
('CR006', 'Michael', 'M', 'def colony bangalore', 56573931, 0, 'S5', '2001-01-01', '2013-02-02'),
('CR007', 'Saahil', 'M', '44, new colony bangalore', 23456543, 1, 'S5', '2002-11-12', '2013-11-11'),
('CR008', 'Stuart', 'M', 'hebbal, bangalore', 23000032, 1, 'S5', '2004-12-12', '2014-12-31'),
('CR009', 'Swamy', 'M', 'def colony, bangalore', 65780912, 0, 'S5', '2001-04-26', '2014-05-15'),
('CR010', 'Madhavan', 'M', 'msr nagar bangalore', 21329870, 0, 'S5', '2004-01-01', '2013-12-31'),
('CR011', 'Shikhar', 'M', '34, defence colony, bangalore', 98761234, 1, 'S5', '2004-12-14', '2014-03-03'),
('FB001', 'Seben', 'M', 'vv puram, bangalore', 23412233, 0, 'S3', '1998-04-05', '2012-02-03'),
('FB002', 'Prashanth', 'M', 'rmz infinfty, bangalore', 77885566, 1, 'S3', '1994-11-01', '2013-02-22'),
('FB003', 'George', 'M', 'Pulksehinagar, bangalore', 22116655, 1, 'S3', '1996-06-07', '2013-04-05'),
('FB004', 'Martin', 'M', 'vv puram, bangalore', 43434345, 0, 'S3', '1997-05-21', '2013-06-12'),
('FB005', 'Rohit', 'M', 'rr nagar, bangalore', 23456123, 0, 'S3', '1996-07-07', '2013-07-07'),
('FB006', 'Ameen', 'M', 'abc colony, bangalore', 22114595, 1, 'S3', '1991-12-13', '2012-04-06'),
('FB007', 'Saravanan', 'M', 'msr nagar, bangalore', 23556632, 0, 'S3', '1995-12-11', '2013-06-07'),
('FB008', 'Ameet', 'M', 'rmz infinfty, bangalore', 44550000, 1, 'S3', '1993-02-03', '2014-12-25'),
('FB009', 'Pranjal', 'M', 'rr nagar, bangalore', 23679843, 1, 'S3', '1990-05-23', '2012-09-04'),
('FB010', 'Clive', 'M', 'vv puram bangalore', 99114400, 0, 'S3', '1997-02-03', '2012-03-03'),
('TE001', 'Joanne', 'F', 'anc colony, bangalore', 22336677, 1, 'S6', '1992-12-13', '2015-05-01'),
('TE002', 'Ayesha', 'F', 'rmz colony, bangalore', 23034595, 1, 'S6', '1990-01-01', '2012-03-03'),
('TE003', 'Amith', 'M', 'rr nagar, bangalore', 23145678, 1, 'S6', '1990-04-04', '2014-09-11'),
('TE004', 'Suhas', 'M', 'abc colony, bangalore', 98766789, 1, 'S6', '1994-11-26', '2012-09-04'),
('TE005', 'Rahul', 'M', 'rmz colony, bangalore', 98764567, 0, 'S6', '1993-12-11', '2013-11-12'),
('TE006', 'Mahesh', 'M', 'def colony, bangalore', 41121342, 0, 'S6', '1993-02-11', '2015-03-21'),
('TT001', 'John', 'M', 'abc colony, bangalore', 23541234, 1, 'S1', '1994-11-12', '2012-10-11'),
('TT002', 'Josh', 'M', 'rr nagar, bangalore', 41982342, 1, 'S1', '1993-02-03', '2013-04-05'),
('TT003', 'Rock', 'M', 'msr nagar, bangalore', 45671234, 1, 'S1', '1994-06-04', '2012-01-03'),
('TT004', 'Rohit', 'M', 'vivek nagar, bangalore', 21142345, 1, 'S1', '1995-10-10', '2014-02-03'),
('TT005', 'Jane', 'F', 'rr nagar, bangalore', 45126789, 1, 'S1', '1993-06-06', '2013-06-07'),
('TT006', 'Nithya', 'F', 'viveknagar, banglore', 23417890, 1, 'S1', '1996-02-03', '2014-01-01'),
('TT007', 'Joanne', 'F', 'indiranagar,bangalore', 45675674, 1, 'S1', '1994-11-11', '2014-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `prize`
--

CREATE TABLE `prize` (
  `date_prize` date DEFAULT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `position` int(1) DEFAULT NULL,
  `team_individual` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prize`
--

INSERT INTO `prize` (`date_prize`, `title`, `position`, `team_individual`) VALUES
('2015-04-05', 'All Stars Trophy', 1, 0),
('2015-07-08', 'Asia Cup', 3, 1),
('2014-12-08', 'Champs League', 2, 0),
('2015-02-02', 'Commonwealth Trophy', 1, 0),
('2014-06-06', 'Hero Champions Trophy', 2, 1),
('2015-03-03', 'Inter State Trophy', 2, 1),
('2015-09-09', 'ISL Trophy', 1, 1),
('2015-04-05', 'Millenium Sports Meet', 2, 0),
('2014-12-10', 'Paytm Trophy', 1, 0),
('2015-03-06', 'Phoenix Interstate Trophy', 3, 1),
('2014-05-06', 'PremierLeague Trophy', 1, 1),
('2014-12-24', 'South InterState Competition', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `providing`
--

CREATE TABLE `providing` (
  `sponsor_id` varchar(10) NOT NULL DEFAULT '',
  `money` int(7) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `providing`
--

INSERT INTO `providing` (`sponsor_id`, `money`, `date`) VALUES
('SP001', 125000, '2015-04-04'),
('SP002', 76000, '2014-04-11'),
('SP002', 12000, '2015-05-05'),
('SP003', 110000, '2014-12-12'),
('SP004', 70000, '2014-10-10'),
('SP004', 98000, '2015-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `sponsor_id` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`sponsor_id`, `name`) VALUES
('SP001', 'HeroCorp'),
('SP002', 'DLF'),
('SP003', 'Bisleri'),
('SP004', 'Pepsi'),
('SP005', 'Red Bull'),
('SP006', 'Maruti Suzuki');

-- --------------------------------------------------------

--
-- Table structure for table `sponsoring`
--

CREATE TABLE `sponsoring` (
  `sponsor_id` varchar(10) NOT NULL DEFAULT '',
  `player_id` varchar(10) NOT NULL DEFAULT '',
  `money` int(7) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sponsoring`
--

INSERT INTO `sponsoring` (`sponsor_id`, `player_id`, `money`, `date`) VALUES
('SP001', 'BA001', 2000, '2014-12-11'),
('SP001', 'BA006', 3000, '2015-02-03'),
('SP002', 'BB003', 3000, '2015-02-02'),
('SP002', 'TE004', 3000, '2015-04-04'),
('SP003', 'CR007', 2500, '2015-06-24'),
('SP003', 'FB004', 2200, '2015-02-04'),
('SP004', 'FB002', 2800, '2103-05-05'),
('SP004', 'TT005', 2400, '2015-07-07'),
('SP005', 'BA007', 2300, '2015-06-07'),
('SP005', 'CR009', 3000, '2015-06-06'),
('SP006', 'BA006', 2500, '2015-08-09'),
('SP006', 'FB004', 2000, '2015-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `sports_id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `fee` int(6) DEFAULT NULL,
  `timing` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`sports_id`, `name`, `fee`, `timing`) VALUES
('S1', 'Table Tennis', 1600, '9am-4pm'),
('S2', 'Badminton', 1600, '7am-3am'),
('S3', 'Football', 1700, '10am-6pm'),
('S4', 'Basketball', 1700, '8.30am-5pm'),
('S5', 'Cricket', 1900, '8am-4pm'),
('S6', 'Tennis', 2000, '10am-5pm');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `salary` int(7) DEFAULT NULL,
  `jdate` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact` int(10) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `name`, `salary`, `jdate`, `dob`, `contact`, `address`, `type`) VALUES
('ST001', 'Venkat', 5000, '2012-01-01', '1990-02-02', 45637890, 'rr nagar bangalore', 0),
('ST002', 'Pritam', 5000, '2013-01-01', '1991-03-03', 45671234, 'vvpuram bangalore', 0),
('ST003', 'Ramu', 1000, '2015-04-04', '1994-05-05', 12344321, 'rr nagar bangalore', 3),
('ST004', 'Raju', 1000, '2012-06-07', '1992-01-01', 45670987, 'rr nagar bangalore', 3),
('ST005', 'Badrinath', 5000, '2014-02-01', '1990-02-02', 12349876, 'abc colony banaglore', 1),
('ST006', 'Shanmukh', 5000, '2014-01-02', '1991-04-05', 98764567, 'def colony bangalore', 1),
('ST007', 'Badri', 7000, '2012-01-04', '1993-04-05', 12345432, 'def colony bangalore', 2),
('ST008', 'Ramesh', 6000, '2013-01-05', '1990-04-23', 12340965, 'rr nagar bangalore', 2),
('ST009', 'Mahesh', 7000, '2012-01-02', '1991-01-01', 56789876, 'def colony bangalore', 2),
('ST010', 'Suresh', 8000, '2013-01-05', '1993-04-26', 12348765, 'vv puram bangalore', 2),
('ST011', 'Dhawan', 6000, '2012-01-03', '1990-05-25', 12344365, 'rr nagar bangalore', 2),
('ST012', 'Sharma', 6000, '2014-01-02', '1994-06-16', 98763456, 'abc colony bangalore', 2);

-- --------------------------------------------------------

--
-- Table structure for table `won`
--

CREATE TABLE `won` (
  `player_id` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `won`
--

INSERT INTO `won` (`player_id`, `title`) VALUES
('BA002', 'Champs League'),
('BA007', 'Commonwealth Trophy'),
('BB001', 'Hero Champions Trophy'),
('BB005', 'Hero Champions Trophy'),
('BB008', 'Hero Champions Trophy'),
('CR001', 'Inter State Trophy'),
('CR004', 'PremierLeague Trophy'),
('CR005', 'Inter State Trophy'),
('CR005', 'PremierLeague Trophy'),
('CR009', 'Inter State Trophy'),
('FB003', 'ISL Trophy'),
('FB004', 'Phoenix Interstate Trophy'),
('FB006', 'ISL Trophy'),
('FB010', 'Phoenix Interstate Trophy'),
('TE005', 'Millenium Sports Meet'),
('TE005', 'Paytm Trophy'),
('TE006', 'South InterState Competition'),
('TT007', 'All Stars Trophy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acquire`
--
ALTER TABLE `acquire`
  ADD PRIMARY KEY (`infra_id`,`sports_id`),
  ADD KEY `sports_id` (`sports_id`);

--
-- Indexes for table `allocated`
--
ALTER TABLE `allocated`
  ADD PRIMARY KEY (`staff_id`,`sports_id`),
  ADD KEY `sports_id` (`sports_id`);

--
-- Indexes for table `funding`
--
ALTER TABLE `funding`
  ADD PRIMARY KEY (`sponsor_id`,`sports_id`,`date`),
  ADD KEY `sponsor_id` (`sponsor_id`),
  ADD KEY `sports_id` (`sports_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`contact`);

--
-- Indexes for table `infra`
--
ALTER TABLE `infra`
  ADD PRIMARY KEY (`infra_id`);

--
-- Indexes for table `invited`
--
ALTER TABLE `invited`
  ADD PRIMARY KEY (`player_id`,`contact`),
  ADD KEY `contact` (`contact`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `sports_id` (`sports_id`);

--
-- Indexes for table `prize`
--
ALTER TABLE `prize`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `providing`
--
ALTER TABLE `providing`
  ADD PRIMARY KEY (`sponsor_id`,`date`),
  ADD KEY `sponsor_id` (`sponsor_id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- Indexes for table `sponsoring`
--
ALTER TABLE `sponsoring`
  ADD PRIMARY KEY (`sponsor_id`,`player_id`,`date`),
  ADD KEY `sponsor_id` (`sponsor_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`sports_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `won`
--
ALTER TABLE `won`
  ADD PRIMARY KEY (`player_id`,`title`),
  ADD KEY `title` (`title`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acquire`
--
ALTER TABLE `acquire`
  ADD CONSTRAINT `acquire_ibfk_1` FOREIGN KEY (`infra_id`) REFERENCES `infra` (`infra_id`),
  ADD CONSTRAINT `acquire_ibfk_2` FOREIGN KEY (`sports_id`) REFERENCES `sport` (`sports_id`);

--
-- Constraints for table `allocated`
--
ALTER TABLE `allocated`
  ADD CONSTRAINT `allocated_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  ADD CONSTRAINT `allocated_ibfk_2` FOREIGN KEY (`sports_id`) REFERENCES `sport` (`sports_id`);

--
-- Constraints for table `funding`
--
ALTER TABLE `funding`
  ADD CONSTRAINT `funding_ibfk_1` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`sponsor_id`),
  ADD CONSTRAINT `funding_ibfk_2` FOREIGN KEY (`sports_id`) REFERENCES `sport` (`sports_id`);

--
-- Constraints for table `invited`
--
ALTER TABLE `invited`
  ADD CONSTRAINT `invited_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `invited_ibfk_2` FOREIGN KEY (`contact`) REFERENCES `guest` (`contact`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`sports_id`) REFERENCES `sport` (`sports_id`);

--
-- Constraints for table `providing`
--
ALTER TABLE `providing`
  ADD CONSTRAINT `providing_ibfk_1` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`sponsor_id`);

--
-- Constraints for table `sponsoring`
--
ALTER TABLE `sponsoring`
  ADD CONSTRAINT `sponsoring_ibfk_1` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`sponsor_id`),
  ADD CONSTRAINT `sponsoring_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `won`
--
ALTER TABLE `won`
  ADD CONSTRAINT `won_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `won_ibfk_2` FOREIGN KEY (`title`) REFERENCES `prize` (`title`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
