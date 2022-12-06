-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2022 at 04:31 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature`
--

CREATE TABLE `tbl_feature` (
  `feature_id` smallint(6) UNSIGNED NOT NULL,
  `feature_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_feature`
--

INSERT INTO `tbl_feature` (`feature_id`, `feature_desc`) VALUES
(1, '6-Speed Manual Transmission'),
(2, '205 km/h Top Speed'),
(3, '8.8-inch infotainment touchscreen with Apple CarPlay'),
(4, 'Heated steering wheel and seats'),
(5, 'Digital Instrument Display'),
(6, '230 km/h Top Speed'),
(7, '8 Speed Sport Steptronic Automatique'),
(8, '240 km/h Top Speed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini`
--

CREATE TABLE `tbl_mini` (
  `mini_id` int(10) UNSIGNED NOT NULL,
  `mini_name` varchar(80) NOT NULL,
  `mini_price` varchar(80) NOT NULL,
  `mini_lease` varchar(80) NOT NULL,
  `mini_finance` varchar(90) NOT NULL,
  `mini_pic` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini`
--

INSERT INTO `tbl_mini` (`mini_id`, `mini_name`, `mini_price`, `mini_lease`, `mini_finance`, `mini_pic`) VALUES
(1, 'Cooper', '$41,356', '$593', '$767', 'cooper.png'),
(2, 'Cooper S', '$46,756', '$676', '$869', 'coopers.png'),
(3, 'John Cooper Works', '$57,856', '$834', '$1,078', 'cooperjohn.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_feature`
--

CREATE TABLE `tbl_mini_feature` (
  `mini_feature_id` smallint(5) UNSIGNED NOT NULL,
  `mini_id` smallint(6) NOT NULL,
  `feature_desc` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_feature`
--

INSERT INTO `tbl_mini_feature` (`mini_feature_id`, `mini_id`, `feature_desc`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 1),
(7, 2, 6),
(8, 2, 3),
(9, 2, 4),
(10, 2, 5),
(11, 3, 7),
(12, 3, 8),
(13, 3, 3),
(14, 3, 4),
(15, 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `tbl_mini`
--
ALTER TABLE `tbl_mini`
  ADD PRIMARY KEY (`mini_id`);

--
-- Indexes for table `tbl_mini_feature`
--
ALTER TABLE `tbl_mini_feature`
  ADD PRIMARY KEY (`mini_feature_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  MODIFY `feature_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_mini`
--
ALTER TABLE `tbl_mini`
  MODIFY `mini_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_mini_feature`
--
ALTER TABLE `tbl_mini_feature`
  MODIFY `mini_feature_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
