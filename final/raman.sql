-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 11:04 AM
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
-- Database: `raman`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `productid`, `user`, `created_at`) VALUES
(28, '10', '2', '2020-12-09 18:52:32'),
(29, '11', '2', '2020-12-09 18:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `oid` varchar(50) NOT NULL,
  `ptitle` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `oid`, `ptitle`, `price`) VALUES
(1, '1', 'Casual Style ', '500'),
(2, '2', 'Casual Style ', '500'),
(3, '3', 'jujutsu kaisen no.9', '1000'),
(4, '3', 'jujutsu kaisen no.3', '2250'),
(5, '3', 'your name', '1200'),
(6, '4', 'kimetsu no yaiba no.3', '700'),
(7, '4', 'tokyo revengers no.1', '800'),
(8, '4', 'jujutsu kaisen no.6', '1500'),
(9, '5', 'jujutsu kaisen no.5', '750'),
(10, '5', 'your name', '1200'),
(11, '6', 'jujutsu kaisen no.2', '90'),
(12, '6', 'tokyo revengers no.3', '110'),
(13, '7', 'tokyo revengers no.3', '110'),
(14, '7', 'jujutsu kaisen no.10', '90'),
(15, '7', 'if cat disappear from the world', '150');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `address`, `created_at`) VALUES
(1, '2', 'ttttrtrtret', '2020-12-09 18:40:05'),
(2, '2', 'ttttrtrtret', '2020-12-09 18:44:09'),
(3, '4', 'e', '2022-08-30 07:31:24'),
(4, '4', 'e', '2022-08-30 07:43:19'),
(5, '4', 'e', '2022-08-30 07:44:29'),
(6, '4', 'ioihuih', '2022-08-30 08:21:45'),
(7, '4', 'e', '2022-08-30 08:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `img`, `category`, `created_at`) VALUES
(1, 'jujutsu kaisen no.0', '90', 'ju0.jpg', 'Popular Products', '2020-12-09 01:40:06'),
(2, 'jujutsu kaisen no.1', '90', 'ju1.jpg', 'Popular Products', '2020-12-09 01:40:06'),
(3, 'jujutsu kaisen no.2', '90', 'ju2.jpg', 'Manga 1', '2020-12-09 02:29:46'),
(4, 'jujutsu kaisen no.3', '90', 'ju3.jpg', 'Manga 1', '2020-12-09 02:46:10'),
(5, 'jujutsu kaisen no.4', '90', 'ju4.jpg', 'Manga 1', '2020-12-09 02:49:43'),
(6, 'jujutsu kaisen no.5', '90', 'ju5.jpg', 'Manga 1', '2020-12-09 02:49:43'),
(7, 'jujutsu kaisen no.6', '90', 'ju6.jpg', 'Manga 1', '2020-12-09 02:52:06'),
(8, 'jujutsu kaisen no.7', '90', 'ju7.jpg', 'Manga 1', '2020-12-09 02:53:40'),
(9, 'jujutsu kaisen no.8', '90', 'ju8.jpg', 'Manga 1', '2020-12-09 02:56:29'),
(10, 'jujutsu kaisen no.9', '90', 'ju9.jpg', 'Manga 1', '2020-12-09 02:58:11'),
(11, 'jujutsu kaisen no.10', '90', 'ju10.jpg', 'Manga 1', '2020-12-09 03:00:21'),
(12, 'kimetsu no yaiba no.1', '90', 'yai1.jpg', 'Popular Products', '2020-12-09 03:01:29'),
(13, 'kimetsu no yaiba no.2', '90', 'yai2.jpg', 'Manga 2', '2020-12-09 03:03:33'),
(14, 'kimetsu no yaiba no.3', '90', 'yai3.jpg', 'Manga 2', '2020-12-09 03:05:17'),
(15, 'kimetsu no yaiba no.4', '90', 'yai4.jpg', 'Manga 2', '2020-12-09 03:07:05'),
(16, 'kimetsu no yaiba no.5', '90', 'yai5.jpg', 'Manga 2', '2020-12-09 03:08:13'),
(17, 'tokyo revengers no.1', '110', 'to1.jpg', 'Manga 3', '2020-12-09 03:09:21'),
(18, 'tokyo revengers no.2', '110', 'to2.jpg', 'Manga 3', '2020-12-09 03:10:27'),
(19, 'tokyo revengers no.3', '110', 'to3.jpg', 'Manga 3', '2020-12-09 03:11:33'),
(20, 'tokyo revengers no.4', '110', 'to4.jpg', 'Manga 3', '2020-12-09 03:13:02'),
(21, 'tokyo revengers no.5', '110', 'to5.jpg', 'Manga 3', '2020-12-09 03:14:09'),
(22, 'tokyo revengers no.6', '110', 'to6.jpg', 'Manga 3', '2020-12-09 03:15:49'),
(23, 'your name', '135', 'your name.jpg', 'Popular Products', '2020-12-09 03:21:24'),
(24, 'if cat disappear from the world', '150', 'genki.jpg', 'Popular Products', '2020-12-09 03:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `created_at`) VALUES
(2, 'Rman', 'raman@gmail.com', '7986568931', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-09 06:10:00'),
(4, 'seehnoum', 'pee@gee.com', '123', '25f9e794323b453885f5181f1b624d0b', '2022-08-30 07:09:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
