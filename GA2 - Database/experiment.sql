-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 03:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `experiment`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `created_at`) VALUES
(1, 'Uniqlo', '2023-11-23 12:45:32'),
(2, 'Adidas', '2023-11-23 13:12:29'),
(3, 'Cre8', '2023-11-24 12:57:59'),
(4, 'Nike', '2023-12-01 13:43:13'),
(5, 'H&amp;M', '2023-12-01 13:46:48'),
(6, 'Levis', '2023-12-01 13:47:00'),
(7, 'Lacoste', '2023-12-01 13:49:17'),
(8, 'Vans', '2023-12-01 13:54:51'),
(9, 'Mosimo', '2023-12-01 13:55:02'),
(10, 'Regatta', '2023-12-01 13:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `username`, `product_id`, `quantity`, `total_amount`) VALUES
(37, 'essy', 1, 1, 50.00),
(38, 'shiee', 1, 1, 50.00),
(42, 'crud', 1, 6, 300.00),
(43, 'abe', 1, 1, 50.00),
(44, 'cristine', 2, 1, 300.00),
(48, 'walton', 5, 1, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`) VALUES
(1, 'Shirts', '2023-11-23 12:42:03'),
(2, 'Sweatshirt', '2023-11-23 13:12:08'),
(3, 'Hoodies', '2023-11-24 12:58:16'),
(4, 'Round Neck', '2023-12-01 14:00:08'),
(5, 'Polo', '2023-12-01 14:01:07'),
(6, 'Turtle Neck', '2023-12-01 14:02:06'),
(7, 'Longsleeves', '2023-12-01 14:02:25'),
(8, 'V-Neck', '2023-12-01 14:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Walton', 'waltonloneza@gmail.com', 's;ihzifncn kmckv', '2023-12-12 22:53:21'),
(2, 'Walton', 'waltonloneza@gmail.com', 's;ihzifncn kmckv', '2023-12-12 22:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `custom`
--

CREATE TABLE `custom` (
  `custom_id` int(11) NOT NULL,
  `custom_name` varchar(255) NOT NULL,
  `step_id` int(11) NOT NULL,
  `price_amt` decimal(6,2) NOT NULL,
  `custom_description` text NOT NULL,
  `custom_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom`
--

INSERT INTO `custom` (`custom_id`, `custom_name`, `step_id`, `price_amt`, `custom_description`, `custom_img`) VALUES
(1, 'Red', 1, 10.00, 'Color red', 'red.png'),
(2, 'Blue', 1, 10.00, 'color blue', 'blue.png'),
(3, 'S', 2, 50.00, 'small size', ''),
(4, 'Green', 1, 10.00, 'color green', 'green.png'),
(5, 'Yellow', 1, 10.00, 'Color yellow', 'yellow.png'),
(6, 'M', 2, 60.00, 'Medium', ''),
(7, 'L', 2, 70.00, 'Large', ''),
(8, 'XL', 2, 80.00, 'Extra Large', ''),
(9, 'Cre8', 3, 50.00, 'Cre8 design', ''),
(10, 'Authentic', 3, 60.00, 'Maganda', ''),
(11, 'Vintage', 3, 70.00, 'makaluma', ''),
(12, 'Fashion', 3, 100.00, 'fashionista', ''),
(13, 'Bracelet', 4, 30.00, 'pangcouple', 'bracelet.jpg'),
(14, 'Anklet', 4, 20.00, 'sa paa', 'anklet.jpg'),
(15, 'Necklace', 4, 50.00, 'sa leeg', 'necklace.jpg'),
(16, 'Cap', 4, 200.00, 'sa ulo', 'cap.jpg'),
(17, 'pink', 1, 10.00, 'color pink', 'pink.png'),
(18, 'Original white', 1, 0.00, 'Original white', 'white.png'),
(19, 'Original Plain', 3, 0.00, 'Default', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customization_details` text DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_contact` varchar(20) DEFAULT NULL,
  `reference_number` varchar(50) DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `total_product_price` decimal(10,2) DEFAULT NULL,
  `total_customization_price` decimal(10,2) DEFAULT NULL,
  `total_order_price` decimal(10,2) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `customization_details`, `user_address`, `user_contact`, `reference_number`, `quantity`, `total_product_price`, `total_customization_price`, `total_order_price`, `order_date`, `order_status`) VALUES
(1, 8, 1, '[{\"custom_name\":\"S\",\"price_amt\":\"350.00\"}]', 'Camalig', '2147483647', '1702291010', 0.00, 400.00, 350.00, 750.00, '2023-12-11 10:36:50', 'pending'),
(2, 8, 2, '[{\"custom_name\":\"S\",\"price_amt\":\"350.00\"}]', 'Camalig', '2147483647', '1702332552', 2.00, 600.00, 350.00, 950.00, '2023-12-11 22:09:12', 'delivered'),
(3, 10, 1, '[{\"custom_name\":\"S\",\"price_amt\":\"350.00\"}]', 'BUPC', '2147483647', '1702334778', 1.00, 200.00, 350.00, 550.00, '2023-12-11 22:46:18', 'delivered'),
(4, 10, 5, '[{\"custom_name\":\"L\",\"price_amt\":\"450.00\"}]', 'BUPC', '2147483647', '1702334848', 1.00, 500.00, 450.00, 950.00, '2023-12-11 22:47:28', 'cancelled'),
(5, 10, 2, '[{\"custom_name\":\"L\",\"price_amt\":\"450.00\"},{\"custom_name\":\"Cre8\",\"price_amt\":\"50.00\"},{\"custom_name\":\"Braceleet\",\"price_amt\":\"30.00\"},{\"custom_name\":\"pink\",\"price_amt\":\"10.00\"}]', 'BUPC', '2147483647', '1702348588', 1.00, 300.00, 540.00, 840.00, '2023-12-12 02:36:28', 'delivered'),
(6, 9, 1, '[{\"custom_name\":\"S\",\"price_amt\":\"350.00\"},{\"custom_name\":\"Authentic\",\"price_amt\":\"60.00\"},{\"custom_name\":\"Anklet\",\"price_amt\":\"20.00\"},{\"custom_name\":\"Necklace\",\"price_amt\":\"50.00\"}]', 'Alcala', '967845398', '1702350367', 7.00, 350.00, 480.00, 830.00, '2023-12-12 03:06:07', 'cancelled'),
(7, 8, 1, '[{\"custom_name\":\"L\",\"price_amt\":\"450.00\"}]', 'Camalig', '2147483647', '1702375186', 8.00, 400.00, 450.00, 850.00, '2023-12-12 09:59:46', 'delivered'),
(8, 8, 2, '[{\"custom_name\":\"S\",\"price_amt\":\"350.00\"}]', 'Camalig', '2147483647', '1702375625', 11.00, 3300.00, 350.00, 3650.00, '2023-12-12 10:07:05', 'cancelled'),
(9, 8, 3, '[{\"custom_name\":\"S\",\"price_amt\":\"350.00\"}]', 'Camalig', '2147483647', '1702424642', 10.00, 3500.00, 350.00, 3850.00, '2023-12-12 23:44:02', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `keywords`, `stock`, `category_id`, `brand_id`, `image`, `price`, `status`, `created_at`) VALUES
(1, 'T-shirts', 'cotton,maganda', 'T-shirt,shirt', 2, 1, 2, 'black_shirt.jpg', 50.00, 'active', '2023-12-12 00:03:58'),
(2, 'Sweatshirt', 'Maganda', 'sweatshirt, sweatshirts, for men', 3, 2, 2, 'white_shirt.jpg', 300.00, 'active', '2023-11-24 12:57:39'),
(3, 'Shirt', 'smooth like butter to wear', 'shirts', 0, 1, 4, 'r3.jpg', 350.00, 'active', '2023-12-01 14:13:05'),
(4, 'Sweatshirts', 'fresh long to wear', 'long', 10, 1, 2, 'long1.jpg', 400.00, 'active', '2023-12-01 14:17:20'),
(5, 'Polo', 'thick cotton', 'polo shirts', 9, 1, 6, 'IMG_20231116_205944_467.jpg', 500.00, 'active', '2023-12-01 14:22:08'),
(6, 'hoodies', 'thick smooth cotton', 'longsleeves', 10, 3, 3, 'h4.jpg', 350.00, 'active', '2023-12-01 14:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` int(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `address`, `contact`, `password`, `user_type`) VALUES
(8, 'walton', 'waltonloneza@gmail.com', 'Camalig', 2147483647, '$2y$10$J4x8izvG/PXko2lQdnyplur/SKHDM/C2DJxld6rv6yG1Z.uCtv5ZG', 'user'),
(9, 'cristine', 'cristine@gmail.com', 'Alcala', 967845398, '$2y$10$zB1nWWsQPBHIwaFRZS1V4.jqFSZOjNjjPW.6J8H7EOwGwYQpCppzy', 'user'),
(10, 'crud', 'crud@gmail.com', 'BUPC', 2147483647, '$2y$10$RhSREKTyBsZqnMveUUye..fer.oyQEU2uK76XJktVJZ.AwmGGbC2u', 'admin'),
(11, 'francyn', 'francynsaculo@gmail.com', 'ubaliw', 2147483647, '$2y$10$1jcrbjBuCZa77XKFZBU8P.yumW5o1HsO1JselZbFPUGTQk5X9IRDG', 'user'),
(12, 'essy', 'francynessy@gmail.com', 'japan', 2147483647, '$2y$10$EW2k5JzdNEXMjQL9QetyGuC5fx/wIStP5yxZKos9EFySkkP4pgfNa', 'user'),
(13, 'shie', 'shie_bordeos@gmail.com', 'ligao', 2147483647, '$2y$10$qAHc6HmKcUxzHvhqJpvXpeFmfg9cA2l.0CzEhXDMzd.vXWvVZhG5m', 'user'),
(14, 'abe', 'abesaculo@gmail.com', 'UAE', 2147483647, '$2y$10$yM0JYIiAIgVKZAZGn8gbrO9UzEm4bsVSLxOaWs8Iaoj4suJeAHFSq', 'user'),
(15, 'shiee', 'shiee@gmail.com', 'Ligao', 2147483647, '$2y$10$dOO9zw9Vbm0zi8YXipUim.K0G9slLhlO1bxZip7EdGOrUEXSV7iMi', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`custom_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom`
--
ALTER TABLE `custom`
  MODIFY `custom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
