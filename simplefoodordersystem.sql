-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 05:18 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simplefoodordersys`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST'),
(5, 'LUNCH'),
(6, 'DINNER'),
(7, 'BEVERAGES');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(14, 4, 'Kape and Pandesal', 40, 'upload/1-kape-and-pandesal.jpg'),
(15, 4, 'Boiled egg and milk', 60, 'upload/2-boiled-egg-and-milk.jpg'),
(16, 5, 'Chicken curry', 100, 'upload/Philippine_Chicken_curry.jpg'),
(17, 5, 'Kare kare',100, 'upload/Filipino_kare_kare_stew-648x368.jpg'),
(18, 7, 'Buko', 60, 'upload/buko.jpg'),
(19, 7, 'Shakes', 40, 'upload/shakes.jpg'),
(20, 6, 'Sweet and Sour Tilapia',100, 'upload/Sweet-and-Sour-Tilapia-1-266x160.jpg'),
(21, 4, 'Champorado', 40, 'upload/9-champorado.jpg'),
(22, 4, 'Pancit Bihon', 50, 'upload/13-pancit-bihon.jpg'),
(23, 7, 'Taho Shake', 40, 'upload/220px-TahoShakeMaginhawa.jpg'),
(24, 4, 'Pancake', 40, 'upload/pancake_breakfast_tacos400_1539096003.jpg'),
(25, 5, 'Lumpia', 30, 'upload/Filipino_lumpia_spring_rolls-648x316.jpg'),
(26, 5, 'Sinigang', 100, 'upload/Filipino_sinigang-648x342.jpg'),
(27, 7, 'Sago-t Gulaman', 30, 'upload/Sago-t gulaman.jpg'),
(28, 7, 'Kalamansi Juice', 25, 'upload/Calamansi juice.jpg'),
(29, 6, 'Pininyahang Manok', 100, 'upload/Pininyahang-Manok-Pineapple-Chicken-266x160.jpg'),
(30, 6, 'Adobo', 100, 'upload/800px-Jochi_Resto_Grill_Pork_Adobo.jpg'),
(31, 5, 'Tinolang Manok', 100, 'upload/800px-Tinolalunch.jpg'),
(32, 6, 'Sinanglay na Tilapia', 60, 'upload/sinanglay-na-tilapia-1-266x160 (1).jpg'),
(33, 6, 'Sisig', 60, 'upload/sisig (1).jpg');


-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
`purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`) VALUES
(8, 'Jeason', 300, '2021-12-06 15:29:00'),
(9, 'Mark', 450, '2021-10-09 20:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE IF NOT EXISTS `purchase_detail` (
`pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(13, 8, 15, 2),
(14, 8, 17, 2),
(15, 8, 18, 2),
(16, 9, 15, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
 ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
 ADD PRIMARY KEY (`pdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
