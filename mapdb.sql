-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2021 at 04:32 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mapdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `monument`
--

DROP TABLE IF EXISTS `monument`;
CREATE TABLE IF NOT EXISTS `monument` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `longitude` decimal(10,0) NOT NULL,
  `latitude` decimal(11,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monument`
--

INSERT INTO `monument` (`id`, `nom`, `ville`, `longitude`, `latitude`) VALUES
(1, 'Jamaa Lfnaa', 'Marrakech', '124', '32'),
(2, 'Walili', 'Fes', '44', '4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `numTele` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `numTele`, `password`) VALUES
(26, 'arabi', 'salim', 'benelarabisoulaymane@gmail.com', 'salam', '123456'),
(25, 'rwer', 'ee', 'ewr', 'wer', 'ewr'),
(24, 'Ben el arabi', 'soulaymane', 'salam@gmail.com', 'ww', 'fsdsdf');

-- --------------------------------------------------------

--
-- Table structure for table `visite`
--

DROP TABLE IF EXISTS `visite`;
CREATE TABLE IF NOT EXISTS `visite` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `longitude` decimal(11,0) NOT NULL,
  `latitude` decimal(11,0) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visited` varchar(10) NOT NULL,
  `id_monument` int(5) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_monument` (`id_monument`),
  KEY `fk_users` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
