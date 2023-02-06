-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  gzkv.myd.infomaniak.com
-- Généré le :  Lun 28 Janvier 2019 à 13:58
-- Version du serveur :  5.7.20-log
-- Version de PHP :  7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gzkv_fullmusic`
--

--
-- Contenu de la table `albums`
--

INSERT INTO `albums` (`id`, `name`, `artist`, `format`, `price`, `image`, `year`, `genre`) VALUES
(1, 'The Joshua Tree', 'U2', 'CD', 16.99, 'rock01.jpg', 2017, 1),
(2, 'Greatest Hits: I II & III', 'Queen', 'CD', 18.99, 'rock02.jpg', 2002, 1),
(3, 'Meteora', 'Linkin Park', 'CD', 4.99, 'rock03.jpg', 2003, 1),
(4, 'American Idiot', 'Green Day', 'CD', 5.99, 'rock04.jpg', 2004, 1),
(5, 'Toxicity', 'System of a Down', 'CD', 7.99, 'rock05.jpg', 2001, 1),
(6, 'Time Capsule', 'The B-52s', 'CD', 3.99, 'rock06.jpg', 2004, 1),
(7, '4:44', 'Jay-Z', 'CD', 13.99, 'rap01.jpg', 2017, 2),
(9, 'Double or Nothing', 'Big Sean', 'CD', 12.99, 'rap03.jpg', 2017, 2),
(10, 'Prophets of Rage', 'Prophets of Rage', 'CD', 13.99, 'rap04.jpg', 2017, 2),
(11, 'BooPac', 'Boosie Badazz', 'CD', 16.99, 'rap05.jpg', 2017, 2),
(12, 'Curtain Call: The Hits', 'Eminem', 'CD', 9.99, 'rap06.jpg', 2005, 2),
(13, 'Legend', 'Bob Marley', 'CD', 11.99, 'reggae01.jpg', 2002, 3),
(14, 'Roots of Reggae', 'Various Artists', 'CD', 3.99, 'reggae02.jpg', 2014, 3),
(15, 'Ziggy Marley', 'Ziggy Marley', 'CD', 11.99, 'reggae03.jpg', 2016, 3),
(16, 'Reincarnated', 'Snoop Lion', 'CD', 6.99, 'reggae04.jpg', 2013, 3),
(17, 'The Universal Cure', 'Jah Cure', 'CD', 11.99, 'reggae05.jpg', 2009, 3),
(18, 'Sound of Change', 'Dirty Heads', 'CD', 12.99, 'reggae06.jpg', 2014, 3),
(19, 'Smooth Jazz Tribute', 'Various Artists', 'CD', 10.99, 'jazz01.jpg', 2017, 4),
(20, 'Turn Up the Quiet', 'Diana Krall', 'CD', 13.99, 'jazz02.jpg', 2017, 4),
(21, 'Send One Your Love', 'Boney James', 'CD', 9.99, 'jazz03.jpg', 2009, 4),
(22, 'Anthology', 'Grover Washington, Jr.', 'CD', 9.99, 'jazz04.jpg', 1990, 4),
(23, 'A Decade of Hits 1969-1979', 'The Allman Brothers Band', 'CD', 4.99, 'blues01.jpg', 1991, 5),
(24, 'The Very Best of', 'Stevie Ray Vaughan', 'CD', 5.99, 'blues02.jpg', 2015, 5),
(25, 'The Best of B.B. King ', 'B.B. King ', 'CD', 5.99, 'blues03.jpg', 1999, 5),
(26, 'Live North America 2016', 'Gary Clark, Jr.', 'CD', 11.99, 'blues04.jpg', 2016, 5),
(27, 'The Anthology', 'Bobby \"Blue\" Bland', 'CD', 9.99, 'blues05.jpg', 2001, 5),
(28, 'At Last: The Best of', 'Etta James', 'CD', 9.99, 'blues06.jpg', 2012, 5),
(29, 'The Very Best of', 'Luther Vandross', 'CD', 5.99, 'soul03.jpg', 2015, 6),
(30, 'Respect M.E.', 'Missy Elliott', 'CD', 7.99, 'soul04.jpg', 2006, 6),
(31, 'S.O.U.L., Vol. 2', 'Marvin Gaye', 'CD', 4.99, 'soul01.jpg', 2012, 6),
(32, 'I Will Always Love You', 'Whitney Houston', 'CD', 7.99, 'soul02.jpg', 2012, 6);

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Rap'),
(3, 'Reggae'),
(4, 'Jazz'),
(5, 'Blues'),
(6, 'R&B');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
