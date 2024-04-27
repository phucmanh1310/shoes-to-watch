-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 09:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CusID` int(10) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CusFullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CusPhone` int(10) NOT NULL,
  `CusEmail` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(30) NOT NULL,
  `ward` varchar(20) NOT NULL,
  `District` varchar(20) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `DateCreate` date DEFAULT current_timestamp(),
  `CusType` varchar(50) NOT NULL DEFAULT 'Khách hàng',
  `CusBirthDay` date DEFAULT '2004-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CusID`, `password`, `CusFullName`, `CusPhone`, `CusEmail`, `Address`, `ward`, `District`, `City`, `status`, `DateCreate`, `CusType`, `CusBirthDay`) VALUES
(1, '123', 'Quang Hieu', 123456789, 'qh@gmail.com', '', '', '', '', b'0', '2024-04-17', 'Normal', '2004-01-01'),
(2, '456', 'Phúc Mạnh', 1567893210, 'pm@gmail.com', '', '', NULL, NULL, b'0', '2024-04-17', 'Normal', '2004-01-01'),
(3, 'password1', 'John Doe', 1234567890, 'john.doe@example.com', '123 Main Street', 'Ward 1', 'District A', 'City X', b'0', '2024-04-24', 'VIP', '1990-05-15'),
(4, 'password2', 'Jane Smith', 2147483647, 'jane.smith@example.com', '456 Elm Street', 'Ward 2', 'District B', 'City Y', b'0', '2024-04-24', 'Normal', '1985-08-20'),
(5, 'password3', 'Alice Johnson', 2147483647, 'alice.johnson@example.com', '789 Oak Street', 'Ward 3', 'District C', 'City Z', b'0', '2024-04-24', 'VIP', '1998-12-10'),
(6, 'password4', 'Bob Brown', 2147483647, 'bob.brown@example.com', '321 Pine Street', 'Ward 4', 'District D', 'City W', b'0', '2024-04-24', 'Normal', '1975-03-25'),
(7, 'password5', 'Emily Davis', 1597532468, 'emily.davis@example.com', '654 Cedar Street', 'Ward 5', 'District E', 'City V', b'0', '2024-04-24', 'VIP', '1980-10-05'),
(8, 'password6', 'Michael Wilson', 2147483647, 'michael.wilson@example.com', '987 Maple Street', 'Ward 6', 'District F', 'City U', b'0', '2024-04-24', 'Normal', '1995-07-30'),
(9, 'password7', 'Sarah Martinez', 2147483647, 'sarah.martinez@example.com', '741 Birch Street', 'Ward 7', 'District G', 'City T', b'0', '2024-04-24', 'VIP', '1978-04-15'),
(10, 'password8', 'David Anderson', 2147483647, 'david.anderson@example.com', '852 Walnut Street', 'Ward 8', 'District H', 'City S', b'0', '2024-04-24', 'Normal', '1992-09-20'),
(11, 'password9', 'Jessica Garcia', 1239876540, 'jessica.garcia@example.com', '963 Beach Street', 'Ward 9', 'District I', 'City R', b'0', '2024-04-24', 'VIP', '1983-06-12'),
(12, 'password10', 'James Rodriguez', 2147483647, 'james.rodriguez@example.com', '147 Lake Street', 'Ward 10', 'District J', 'City Q', b'0', '2024-04-24', 'Normal', '1970-11-28'),
(13, 'password11', 'Jennifer Lopez', 2147483647, 'jennifer.lopez@example.com', '258 River Street', 'Ward 11', 'District K', 'City P', b'0', '2024-04-24', 'VIP', '1999-02-05'),
(14, 'password12', 'Daniel Hernandez', 2147483647, 'daniel.hernandez@example.com', '369 Mountain Street', 'Ward 12', 'District L', 'City O', b'0', '2024-04-24', 'Normal', '1988-07-22'),
(15, 'password13', 'Mary Nguyen', 2147483647, 'mary.nguyen@example.com', '852 Valley Street', 'Ward 13', 'District M', 'City N', b'0', '2024-04-24', 'VIP', '1996-04-18'),
(16, 'password14', 'Christopher Kim', 2147483647, 'christopher.kim@example.com', '963 Hill Street', 'Ward 14', 'District N', 'City M', b'0', '2024-04-24', 'Normal', '1987-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `OrderID` int(10) NOT NULL,
  `address` text NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ManagerID` int(20) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Manager_Full_Name` varchar(30) NOT NULL,
  `Manager_Phone` varchar(15) NOT NULL,
  `Manager_email` varchar(100) NOT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ManagerID`, `password`, `Manager_Full_Name`, `Manager_Phone`, `Manager_email`, `Address`) VALUES
(1, '123', 'Nguy?n Quang Hi?u', '0123456789', 'qh@gmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(10) NOT NULL,
  `CusID` int(20) NOT NULL,
  `Date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pdid` int(11) NOT NULL,
  `pdname` varchar(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `status` bit(1) NOT NULL,
  `pdtype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `ProName` varchar(50) DEFAULT NULL,
  `Prices` double DEFAULT NULL,
  `ProQuantity` int(11) DEFAULT NULL,
  `Picture` varchar(50) DEFAULT NULL,
  `MadeBy` varchar(20) DEFAULT NULL,
  `MadeIn` varchar(20) DEFAULT NULL,
  `Glass_material` varchar(20) DEFAULT NULL,
  `Thickness` varchar(10) DEFAULT NULL,
  `Water_resistance_level` varchar(10) DEFAULT NULL,
  `Machine` varchar(20) DEFAULT NULL,
  `Face_size` varchar(20) DEFAULT NULL,
  `pd_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`ProName`, `Prices`, `ProQuantity`, `Picture`, `MadeBy`, `MadeIn`, `Glass_material`, `Thickness`, `Water_resistance_level`, `Machine`, `Face_size`, `pd_id`) VALUES
('Gxam_123', 3000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producttypes`
--

CREATE TABLE `producttypes` (
  `TypeID` int(8) NOT NULL,
  `TypeName` varchar(10) DEFAULT NULL,
  `Gender` bit(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `producttypes`
--

INSERT INTO `producttypes` (`TypeID`, `TypeName`, `Gender`) VALUES
(1, 'Gsock', b'00001');

-- --------------------------------------------------------

--
-- Table structure for table `product_of_order`
--

CREATE TABLE `product_of_order` (
  `order_id` int(11) NOT NULL,
  `pd_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CusID`);

--
-- Indexes for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ManagerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CusID` (`CusID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pdid`),
  ADD KEY `pdtype_1` (`pdtype`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD KEY `detailorder_id` (`pd_id`);

--
-- Indexes for table `producttypes`
--
ALTER TABLE `producttypes`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `product_of_order`
--
ALTER TABLE `product_of_order`
  ADD KEY `order_orderpd` (`order_id`),
  ADD KEY `orderpd_pd` (`pd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CusID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `ManagerID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producttypes`
--
ALTER TABLE `producttypes`
  MODIFY `TypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `detailorder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CusID`) REFERENCES `customer` (`CusID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `pdtype_1` FOREIGN KEY (`pdtype`) REFERENCES `producttypes` (`TypeID`);

--
-- Constraints for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD CONSTRAINT `detailorder_id` FOREIGN KEY (`pd_id`) REFERENCES `product` (`pdid`);

--
-- Constraints for table `product_of_order`
--
ALTER TABLE `product_of_order`
  ADD CONSTRAINT `order_orderpd` FOREIGN KEY (`order_id`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderpd_pd` FOREIGN KEY (`pd_id`) REFERENCES `product` (`pdid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
