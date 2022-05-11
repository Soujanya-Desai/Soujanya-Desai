-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2022 at 03:19 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
CREATE TABLE IF NOT EXISTS `actor` (
  `actor_id` int(11) NOT NULL,
  `actor_name` varchar(30) DEFAULT NULL,
  `actor_gender` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `actor_name`, `actor_gender`) VALUES
(1, 'nani', 'male'),
(2, 'yash', 'male'),
(3, 'vijay', 'male'),
(4, 'akshay kumar', 'male'),
(5, 'sai pallavi', 'female'),
(6, 'srinidhi shetty', 'female'),
(7, 'pooja hegde', 'female'),
(8, 'kriti sanon', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
CREATE TABLE IF NOT EXISTS `director` (
  `director_id` int(11) NOT NULL,
  `director_name` varchar(30) DEFAULT NULL,
  `director_phone` mediumtext,
  PRIMARY KEY (`director_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`director_id`, `director_name`, `director_phone`) VALUES
(1111, 'rahul sankrityan', '1111111111'),
(2222, 'prashant neel', '2222222222'),
(3333, 'nelson dilipkumar', '3333333333'),
(4444, 'farhad samji', '4444444444');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `movie_id` int(11) NOT NULL,
  `movie_title` varchar(50) DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `fkey1` (`director_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_title`, `release_year`, `director_id`) VALUES
(10101, 'Shyam singha roy', 2021, 1111),
(20202, 'kgf chapter 1', 2018, 2222),
(30303, 'kgf chapter 2', 2022, 2222),
(40404, 'beast', 2022, 3333),
(50505, 'bachchhan pandey', 2022, 4444);

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
CREATE TABLE IF NOT EXISTS `movie_cast` (
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  KEY `fkey3` (`movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_cast`
--

INSERT INTO `movie_cast` (`actor_id`, `movie_id`, `role`) VALUES
(1, 10101, 'lead actor'),
(2, 20202, 'lead actor'),
(2, 30303, 'lead actor'),
(3, 40404, 'lead actor'),
(4, 50505, 'lead actor'),
(5, 10101, 'lead actress'),
(6, 20202, 'lead actress'),
(6, 30303, 'lead actress'),
(7, 40404, 'lead actress'),
(8, 50505, 'lead actress');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
