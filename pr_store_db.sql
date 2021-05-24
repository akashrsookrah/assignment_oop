-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2021 at 04:34 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pr_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `barcodeNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(250) NOT NULL,
  `AmountInStock` int(11) NOT NULL,
  `Unitprice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`barcodeNo`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`barcodeNo`, `Description`, `AmountInStock`, `Unitprice`) VALUES
(1, 'Logitech Keyboard Wireless Kx776', 6, '450'),
(2, 'HP Wireless Mouse/Keyboard Combo', 9, '788'),
(3, 'Viewsonic 19inch LED Monitor', 2, '1900'),
(4, 'Logitech Speakers 2ch', 13, '400'),
(5, 'Epson Printer Laser EP5000', 3, '1500'),
(6, 'HP Ink Cartridge Black 21', 42, '656'),
(7, 'Toshiba Hard disk 1 Tb', 36, '2555'),
(8, 'Toshiba Hard disk 2 Tb', 16, '3640');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `salesid` int(11) NOT NULL AUTO_INCREMENT,
  `items` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `totalprice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`salesid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesid`, `items`, `date`, `totalprice`) VALUES
(1, '1xLogitech Keyboard Wireless Kx776 ', '2021-05-23 14:25:15', '450'),
(2, '2 x Logitech Keyboard Wireless Kx776 \n1 x HP Wireless Mouse/Keyboard Combo \n', '2021-05-23 14:28:58', '1688'),
(3, '1 x Logitech Keyboard Wireless Kx776 \n1 x HP Wireless Mouse/Keyboard Combo \n1 x Logitech Keyboard Wireless Kx776 \n', '2021-05-23 14:34:12', '1688'),
(4, '1 x HP Ink Cartridge Black 21 \n', '2021-05-23 17:54:36', '656'),
(5, '1 x Logitech Speakers 2ch \n', '2021-05-23 18:04:35', '400'),
(6, '1 x Logitech Speakers 2ch \n2 x HP Ink Cartridge Black 21 \n1 x Epson Printer Laser EP5000 \n', '2021-05-23 18:06:48', '3212'),
(7, '1 x HP Ink Cartridge Black 21 \n', '2021-05-23 18:17:04', '656'),
(8, '1 x Viewsonic 19inch LED Monitor \n1 x HP Wireless Mouse/Keyboard Combo \n', '2021-05-23 18:18:59', '2688'),
(9, '1 x Toshiba Hard disk 1 Tb \n1 x HP Ink Cartridge Black 21 \n', '2021-05-23 18:28:58', '3211'),
(10, '1 x Toshiba Hard disk 2 Tb \n1 x Epson Printer Laser EP5000 \n', '2021-05-23 18:30:04', '5140'),
(11, '1 x Logitech Keyboard Wireless Kx776 \n2 x Logitech Speakers 2ch \n1 x Toshiba Hard disk 1 Tb \n1 x Viewsonic 19inch LED Monitor \n', '2021-05-23 18:35:39', '5705'),
(12, '1 x HP Wireless Mouse/Keyboard Combo \n1 x Toshiba Hard disk 1 Tb \n2 x HP Ink Cartridge Black 21 \n', '2021-05-23 18:40:07', '4655'),
(13, '1 x Toshiba Hard disk 2 Tb \n2 x Toshiba Hard disk 1 Tb \n', '2021-05-23 18:47:54', '8750'),
(14, '1 x Toshiba Hard disk 1 Tb \n', '2021-05-23 18:48:54', '2555'),
(15, '1 x Toshiba Hard disk 1 Tb \n2 x Viewsonic 19inch LED Monitor \n1 x Logitech Keyboard Wireless Kx776 \n', '2021-05-23 18:49:18', '6805'),
(16, '1 x Logitech Keyboard Wireless Kx776 \n2 x Logitech Speakers 2ch \n1 x HP Ink Cartridge Black 21 \n', '2021-05-23 18:51:26', '1906'),
(17, '1 x Logitech Keyboard Wireless Kx776 \n1 x Logitech Speakers 2ch \n', '2021-05-23 18:53:16', '850');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('saara', 'saara');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
