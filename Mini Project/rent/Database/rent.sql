-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 07:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `carregistration`
--

CREATE TABLE `carregistration` (
  `id` int(11) NOT NULL,
  `car_no` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL,
  `car_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carregistration`
--

INSERT INTO `carregistration` (`id`, `car_no`, `make`, `model`, `available`, `car_fee`) VALUES
(22, 'C0001', 'Maruti Suzuki Alto 800', 'Hatchback', 'Available', 5000),
(23, 'C0002', 'MINI Cooper S 3 Door', 'Hatchback', 'Available', 4500),
(24, 'C0003', 'Maruti Suzuki Ciaz', 'sedan', 'Not', 5400),
(25, 'C0004', 'Maruti Suzuki Omni', 'MPV', 'Available', 3600),
(26, 'C0005', 'Mahindra Scorpio', 'SUV', 'Not', 6000),
(27, 'C0006', ' Renault Duster', 'SUV', 'Available', 5000),
(28, 'C0007', 'Hyundai i20 Active', 'Crossover', 'Available', 6600),
(29, 'C0008', 'Maruti Suzuki S-Cross', 'Crossover', 'Available', 5400),
(30, 'C0009', ' Audi R8', 'Coupe', 'Available', 8000),
(31, 'C0010', 'Skoda Yeti', 'SUV', 'Available', 7450);

-- --------------------------------------------------------

--
-- Table structure for table `carrental`
--

CREATE TABLE `carrental` (
  `id` int(11) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `custom_id` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carrental`
--

INSERT INTO `carrental` (`id`, `car_id`, `custom_id`, `fee`, `date`, `due`) VALUES
(15, 'C0003', 'D0002', 5400, '2020-07-09', '2020-07-12'),
(16, 'C0005', 'D0003', 6000, '2020-07-09', '2020-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `custom_id` varchar(255) NOT NULL,
  `custom_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `identity_no` varchar(12) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `custom_id`, `custom_name`, `address`, `identity_no`, `mobile`) VALUES
(10, 'D0001', 'Thilini Maheshika', 'Thawalama,Galle', '19995123456', 712345690),
(11, 'D0002', 'Kanishka Dew Sandaruwan', 'Neluwa,Galle', '9612345768', 713664071),
(12, 'D0003', 'Tharushi Kavindi', 'Thawalama,Galle', '19993456784', 712345681),
(13, 'D0004', 'K.Thilakarathna', 'Elaihala,Habarakada', '7123456859', 775678345);

-- --------------------------------------------------------

--
-- Table structure for table `returncar`
--

CREATE TABLE `returncar` (
  `id` int(11) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `custom_id` varchar(255) NOT NULL,
  `return_date` varchar(255) NOT NULL,
  `elapsed` int(11) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returncar`
--

INSERT INTO `returncar` (`id`, `car_id`, `custom_id`, `return_date`, `elapsed`, `fine`) VALUES
(4, 'C0002', 'D0004', '2020-07-04', 5, 500),
(5, 'C0001', 'D0001', '2020-07-09', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(11) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('T', '1'),
('Thilini', '1234'),
('kanish', '0110');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carregistration`
--
ALTER TABLE `carregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrental`
--
ALTER TABLE `carrental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returncar`
--
ALTER TABLE `returncar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carregistration`
--
ALTER TABLE `carregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `carrental`
--
ALTER TABLE `carrental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `returncar`
--
ALTER TABLE `returncar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
