-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2023 at 05:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_yeti`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Car_ID` int(11) NOT NULL,
  `Mem_ID` int(11) NOT NULL,
  `Pro_ID` int(11) NOT NULL,
  `Car_Amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `count_page`
--

CREATE TABLE `count_page` (
  `Cou_ID` int(11) NOT NULL,
  `Cou_IP` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Cou_Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count_page`
--

INSERT INTO `count_page` (`Cou_ID`, `Cou_IP`, `Cou_Date`) VALUES
(1, '::1', '2018-09-09'),
(2, '::1', '2018-09-09'),
(3, '::1', '2018-09-09'),
(4, '::1', '2018-09-09'),
(5, '::1', '2018-09-09'),
(6, '::1', '2018-09-09'),
(7, '::1', '2023-02-15'),
(8, '::1', '2023-02-15'),
(9, '::1', '2023-02-15'),
(10, '::1', '2023-02-15'),
(11, '::1', '2023-02-15'),
(12, '::1', '2023-02-15'),
(13, '::1', '2023-02-15'),
(14, '::1', '2023-02-15'),
(15, '::1', '2023-02-15'),
(16, '::1', '2023-02-15'),
(17, '::1', '2023-02-15'),
(18, '::1', '2023-02-15'),
(19, '::1', '2023-02-15'),
(20, '::1', '2023-02-15'),
(21, '::1', '2023-02-15'),
(22, '::1', '2023-02-15'),
(23, '::1', '2023-02-15'),
(24, '::1', '2023-02-15'),
(25, '::1', '2023-02-15'),
(26, '::1', '2023-02-15'),
(27, '::1', '2023-02-15'),
(28, '::1', '2023-02-15'),
(29, '::1', '2023-02-15'),
(30, '::1', '2023-02-15'),
(31, '::1', '2023-02-15'),
(32, '::1', '2023-02-15'),
(33, '::1', '2023-02-15'),
(34, '::1', '2023-02-15'),
(35, '::1', '2023-02-15'),
(36, '::1', '2023-02-15'),
(37, '::1', '2023-02-15'),
(38, '::1', '2023-02-15'),
(39, '::1', '2023-02-15'),
(40, '::1', '2023-02-15'),
(41, '::1', '2023-02-15'),
(42, '::1', '2023-02-15'),
(43, '::1', '2023-02-15'),
(44, '::1', '2023-02-15'),
(45, '::1', '2023-02-15'),
(46, '::1', '2023-02-15'),
(47, '::1', '2023-02-15'),
(48, '::1', '2023-02-15'),
(49, '::1', '2023-02-15'),
(50, '::1', '2023-02-15'),
(51, '::1', '2023-02-15'),
(52, '::1', '2023-02-15'),
(53, '::1', '2023-02-15'),
(54, '::1', '2023-02-15'),
(55, '::1', '2023-02-15'),
(56, '::1', '2023-02-15'),
(57, '::1', '2023-02-15'),
(58, '::1', '2023-02-15'),
(59, '::1', '2023-02-15'),
(60, '::1', '2023-02-15'),
(61, '::1', '2023-02-15'),
(62, '::1', '2023-02-15'),
(63, '::1', '2023-02-15'),
(64, '::1', '2023-02-22'),
(65, '::1', '2023-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Mem_ID` int(11) NOT NULL,
  `Mem_User` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Address` text COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Date` date NOT NULL,
  `Mem_Permission` int(11) NOT NULL COMMENT '1 = ใช้งาน 2 = ยกเลิก',
  `Mem_Status` int(11) NOT NULL COMMENT '1 = admin 2 = user'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Mem_ID`, `Mem_User`, `Mem_Pass`, `Mem_Name`, `Mem_Email`, `Mem_Tel`, `Mem_Address`, `Mem_Date`, `Mem_Permission`, `Mem_Status`) VALUES
(1, 'admin', '1234', 'administrator', 'biglovemo@hotmail.com', '', '', '2017-03-11', 1, 1),
(5, 'topza', 'topza1412', 'aa bb ', 'topza1412@gmail.com', '0814567899', '34/567', '2017-03-19', 1, 2),
(6, 'Ez', '123456', 'E master ', 'Emaster@gmail.com', '098-xxx-xx', 'บ้านคุณ', '2023-02-15', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Ord_ID` int(11) NOT NULL,
  `Ord_Number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_ID` int(11) NOT NULL,
  `Ord_Note` text COLLATE utf8_unicode_ci NOT NULL,
  `Ord_AddressSend` text COLLATE utf8_unicode_ci NOT NULL,
  `Ord_Shipping` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_AmountTotal` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_PriceTotal` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_DateShipping` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_NumberShipping` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_DateBuy` date NOT NULL,
  `Ord_Status` int(11) NOT NULL COMMENT '0 = รอชำระเงิน 1= ตรวจสอบชำระเงิน 2 = ชำระเงินเรียบร้อย 3 = จัดส่งเรียบร้อย 4 = ยกเลิกรายการ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Ord_ID`, `Ord_Number`, `Mem_ID`, `Ord_Note`, `Ord_AddressSend`, `Ord_Shipping`, `Ord_AmountTotal`, `Ord_PriceTotal`, `Ord_DateShipping`, `Ord_NumberShipping`, `Ord_DateBuy`, `Ord_Status`) VALUES
(1, '150223152842', 6, '', 'บ้านคุณ', '50', '1', '100', '', '', '2023-02-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `Odd_ID` int(11) NOT NULL,
  `Ord_ID` int(11) NOT NULL,
  `Pro_ID` int(11) NOT NULL,
  `Odd_Amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`Odd_ID`, `Ord_ID`, `Pro_ID`, `Odd_Amount`) VALUES
(1, 1, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pay_ID` int(11) NOT NULL,
  `Ord_ID` int(11) NOT NULL,
  `Pay_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_File` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Price` double(9,2) NOT NULL,
  `Pay_Bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Detail` text COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Date` date NOT NULL,
  `Pay_Time` time NOT NULL,
  `Pay_Status` int(11) NOT NULL COMMENT '0 = ตรวจสอบ1 = ชำระเรียบร้อย'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pro_ID` int(6) UNSIGNED ZEROFILL NOT NULL,
  `Pro_Img` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Pro_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Pro_Detail` text COLLATE utf8_unicode_ci NOT NULL,
  `Pro_Price` double(7,2) NOT NULL,
  `Pro_Amount` int(11) NOT NULL,
  `Pro_Buy` int(11) NOT NULL,
  `Pro_Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Pro_ID`, `Pro_Img`, `Pro_Name`, `Pro_Detail`, `Pro_Price`, `Pro_Amount`, `Pro_Buy`, `Pro_Date`) VALUES
(000002, 'a1.jpg', 'Chain saw man vol.1', 'Chain saw man vol.1', 79.00, 10, 1, '2018-09-09'),
(000003, 'a2.jpg', 'Jujustsukaisen vol.4', 'Jujustsukaisen vol.4', 89.00, 4, 2, '2018-09-09'),
(000004, 'a3.jpg', 'My hero academia vol.33', 'My hero academia vol.33', 89.00, 1, 1, '2018-09-09'),
(000005, 'ad1.jpg', 'Attack on titan vol.34', 'Attack on titan vol.34', 160.00, 3, 0, '2018-09-09'),
(000006, 'ad2.jpg', 'High school of the dead vol.5', 'High school of the dead vol.5', 79.00, 3, 0, '2018-09-09'),
(000008, 'ad3.jpg', 'Sword art online vol.18', 'Sword art online vol.18', 207.00, 0, 0, '0000-00-00'),
(000009, 'c1.jpg', 'Gintama vol.1', 'Gintama vol.1', 89.00, 0, 0, '0000-00-00'),
(000010, 'c2.jpg', 'sakamoto desu ga? vol.1', 'sakamoto desu ga? vol.1', 54.00, 0, 0, '0000-00-00'),
(000011, 'c3.jpg', 'SPY X FAMILY vol.10', 'SPY X FAMILY vol.10', 80.00, 0, 0, '0000-00-00'),
(000012, 'd1.jpg', 'A silent voice vol.1', 'A silent voice vol.1', 49.00, 0, 0, '0000-00-00'),
(000013, 'd2.jpg', 'violet evergarden vol.1', 'violet evergarden vol.1', 69.00, 0, 0, '0000-00-00'),
(000014, 'd3.jpg', 'Your name vol.1', 'Your name vol.1', 79.00, 0, 0, '0000-00-00'),
(000015, 'f1.jpg', 'Dr.stone vol.1', 'Dr.stone vol.1', 70.00, 0, 0, '0000-00-00'),
(000016, 'f2.png', 'Mushoku Tensei: Isekai Ittara Honki Dasu vol.1', 'Mushoku Tensei: Isekai Ittara Honki Dasu vol.1', 265.00, 0, 0, '0000-00-00'),
(000017, 'f3.jpg', 'Re:zero vol.4', 'Re:zero vol.4', 220.00, 0, 0, '0000-00-00'),
(000018, 'r1.jpg', 'ao haru ride vol.1', 'ao haru ride vol.1', 50.00, 0, 0, '0000-00-00'),
(000019, 'r2.jpg', 'Last game vol.2', 'Last game vol.2', 50.00, -1, 1, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Car_ID`);

--
-- Indexes for table `count_page`
--
ALTER TABLE `count_page`
  ADD PRIMARY KEY (`Cou_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Mem_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Ord_ID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Odd_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pay_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Pro_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Car_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `count_page`
--
ALTER TABLE `count_page`
  MODIFY `Cou_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Mem_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Ord_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Odd_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Pay_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Pro_ID` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
