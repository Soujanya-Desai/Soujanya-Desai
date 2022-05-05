-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2022 at 01:57 PM
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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `Movie_Name` varchar(30) NOT NULL,
  `Lead_Actor` varchar(30) NOT NULL,
  `Lead_Actress` varchar(30) NOT NULL,
  `Year_Of_Release` year(4) NOT NULL,
  `Director_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Movie_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Movie_Name`, `Lead_Actor`, `Lead_Actress`, `Year_Of_Release`, `Director_Name`) VALUES
('Shyam Singha Roy', 'Nani', 'Saipallavi', 2021, ' Rahul sankrityan'),
('Jab We Met', 'Shahid Kapoor', 'Karina Kapoor', 2007, 'Imtiaz Ali'),
('Beast', 'Vijay', 'Pooja Hegde', 2022, 'Nelson DilipKumar'),
('KGF:chapter 1', 'Yash', 'Sannidhi Shetty', 2018, 'Prashanth Neel'),
('KGF:chapter 2', 'Yash', 'Sannidhi Shetty', 2022, 'Prashanth Neel'),
('James', 'Puneeth Rajkumar', 'Priya Anand', 2022, 'Chethan Kumar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
