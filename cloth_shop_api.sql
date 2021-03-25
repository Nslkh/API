-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2021 at 04:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloth_shop_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`) VALUES
(1, 'Sneakers', 'https://hosty.xxx/i/1242884b80a4236996653e3df195614d77d3e0c4.jpg'),
(2, 'Jackets', 'https://hosty.xxx/i/84a58b083af23f463c3c290d4bae883d202cdba7.jpg'),
(3, 'Hats', 'https://hosty.xxx/i/9a7b25c70aae609ab4381e44fdca780b7bc1faa4.jpg'),
(4, 'Mens', 'https://hosty.xxx/i/1b62ee98fc053c12f2c5e669569ab7714af30e28.jpg'),
(5, 'Womens', 'https://hosty.xxx/i/b3b7a9357e68539d8c126c67302e80f8062f479d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `img` varchar(256) NOT NULL,
  `price` varchar(16) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `price`, `category_id`) VALUES
(5, 'Black Jean Shearling', 'https://hosty.xxx/i/6bbf7b8cba89f01fc8dff91c90351b96380c9069.jpg', '$50', 1),
(6, 'lue Jean Jacket', 'https://hosty.xxx/i/d5df15a6ccee335a2e45f6fab40bd33d7f5e50a8.jpg', '$50', 1),
(7, 'Grey Jean Jacket', 'https://hosty.xxx/i/cad31416562e0e9655605601ac1b08d8297b7d8a.jpg', '$50', 1),
(8, 'Brown Shearling', 'https://hosty.xxx/i/bccebaac5b570fe57f2001529de2aeb4cb8d72c8.jpg', '$50', 1),
(9, 'Brown Brim', 'https://hosty.xxx/i/2618c93025476330641d14bb6e03e53206d336f1.jpg', '$120', 2),
(10, 'Blue Beanie', 'https://hosty.xxx/i/69b360448ccb4bb6ae07eb0d1cc186609676cc62.jpg', '$521', 2),
(11, 'Brown Cowboy', 'https://hosty.xxx/i/0e505f120891c4f5cb23cd58918bcf8c8b0f4fc4.jpg', '$', 2),
(12, 'Grey Brim', 'https://hosty.xxx/i/2b8b40692793fb2b2e887f1a7a3fa0ae73b310c1.jpg', '$50', 2),
(13, 'Camo Down Vest', 'https://hosty.xxx/i/d9f3be8389afb8909386cf6f507c4e2199d35b04.jpg', '$50', 3),
(14, 'Floral T-shirt', 'https://hosty.xxx/i/4030769f6241da97b7b6633622f8906467e2a131.jpg', '$50', 3),
(15, 'Black & White Longsleeve', 'https://hosty.xxx/i/44444d0ba4e647d8562a34c227e8544b621eaaab.jpg', '$50', 3),
(16, 'Pink T-shirt', 'https://hosty.xxx/i/84b3c06e38a4a9a793fe6e8345ca5d964dade6ee.jpg', '$50', 3),
(17, 'Blue Tanktop', 'https://hosty.xxx/i/d54181ba800373180bb409fb7b5df3cafd159790.jpg', '$50', 4),
(18, 'Floral Blouse', 'https://hosty.xxx/i/e848d359e0de3081017bd44fd3f75e7627b86c7c.jpg', '$50', 4),
(19, 'Floral Dress', 'https://hosty.xxx/i/b0d9a3de2d03e03308502b11fdbbf50cddb18971.jpg', '$50', 4),
(20, 'Red Dots Dress', 'https://hosty.xxx/i/919550badb1597ea22954f326a85dfd8b18a938f.jpg', '$50', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
