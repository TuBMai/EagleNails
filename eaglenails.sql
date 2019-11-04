-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 04:48 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eaglenails`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` int(11) NOT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `AppointmentDate` datetime DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `AppointmentDescription` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `AppointmentStatus` varchar(12) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `ClientID`, `AppointmentDate`, `EmployeeID`, `AppointmentDescription`, `AppointmentStatus`) VALUES
(1, 1, '2017-11-02 12:00:00', 1000, 'Need gel on nails', 'waiting     '),
(2, 2, '2017-11-03 11:20:00', 1001, 'take off', 'completed   '),
(3, 3, '2017-11-11 14:00:00', 1003, 'refill', 'waiting     '),
(4, 4, '2017-11-11 15:30:00', 1004, 'Fixing', 'waiting     '),
(5, 5, '2017-11-21 16:00:00', 1002, 'pedicure', 'waiting     ');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_service`
--

CREATE TABLE `appointment_service` (
  `AppointmentID` int(11) DEFAULT NULL,
  `ServiceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `appointment_service`
--

INSERT INTO `appointment_service` (`AppointmentID`, `ServiceID`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 4),
(3, 3),
(3, 4),
(4, 5),
(4, 8),
(5, 3),
(5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Profile'),
(2, 'sample'),
(3, 'thumbnail');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientID` int(11) NOT NULL,
  `ClientFName` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ClientLName` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PhoneNumber` varchar(12) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ClientEmail` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientID`, `ClientFName`, `ClientLName`, `PhoneNumber`, `ClientEmail`) VALUES
(1, 'Guest                    ', 'Guest                    ', '01234566789 ', NULL),
(2, 'Olivia                   ', 'Mai                      ', '01203213218 ', 'Olivia@gmail.com'),
(3, 'Henry                    ', 'J                        ', '01293123133 ', NULL),
(4, 'maria                    ', 'ozawa                    ', '00923128323 ', NULL),
(5, 'Hola                     ', 'Halo                     ', '09182312312 ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_service_tracking`
--

CREATE TABLE `daily_service_tracking` (
  `TrackingID` int(11) DEFAULT NULL,
  `ServiceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `daily_service_tracking`
--

INSERT INTO `daily_service_tracking` (`TrackingID`, `ServiceID`) VALUES
(1, 2),
(2, 12),
(3, 4),
(4, 11),
(5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `daily_tracking`
--

CREATE TABLE `daily_tracking` (
  `TrackingID` int(11) NOT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `TrackingDate` datetime DEFAULT NULL,
  `ServiceDescription` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PaymentMethod` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Tax` decimal(9,2) DEFAULT NULL,
  `BillBeforeTax` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `daily_tracking`
--

INSERT INTO `daily_tracking` (`TrackingID`, `EmployeeID`, `TrackingDate`, `ServiceDescription`, `PaymentMethod`, `Tax`, `BillBeforeTax`) VALUES
(1, 1001, '2017-11-02 00:00:00', 'gel manicure', 'cash                     ', '0.00', '30.00'),
(2, 1001, '2017-11-02 00:00:00', 'new setgel', 'card                     ', '2.70', '40.00'),
(3, 1000, '2017-11-03 00:00:00', 'take off', 'cash                     ', '0.67', '10.00'),
(4, 1003, '2017-11-11 00:00:00', 'new set', 'cash                     ', '0.00', '30.00'),
(5, 1004, '2017-11-11 00:00:00', 'Delux pedicure', 'Card                     ', NULL, '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MiddleName` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `LastName` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `EncryptPassword` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Gender` varchar(12) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ProfilePictureID` int(11) DEFAULT NULL,
  `SSN` varchar(9) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PhoneNumbers` varchar(12) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `NickName` varchar(55) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `FirstName`, `MiddleName`, `LastName`, `EncryptPassword`, `Gender`, `ProfilePictureID`, `SSN`, `DateOfBirth`, `Address`, `PhoneNumbers`, `Email`, `NickName`) VALUES
(1000, 'Vu                       ', 'B                        ', 'Mai                      ', NULL, 'Male        ', 1, '123456785', '1992-02-24 00:00:00', '211 prairie dr,akron,oh', '0123456789  ', 'vumai@gmail.com', 'VuMai'),
(1001, 'Ngan                     ', 'T                        ', 'Tran                     ', NULL, 'Female      ', 2, '123456789', '1989-02-22 00:00:00', '211 pre,ak,oh', '0998765443  ', 'ngantran@gmail.com', 'NganTran'),
(1002, 'Cong                     ', NULL, 'Tran                     ', NULL, 'Male        ', 1, '123123124', '2017-11-11 00:00:00', '111 pka', '0912312323  ', 'Congcc@gmail.com', 'Carter'),
(1003, 'Cung                     ', NULL, 'Tran                     ', NULL, 'Female      ', 1, '091231283', '2017-02-15 00:00:00', '12 pkads', '0928312831  ', 'Cungtran@gmail.com', 'Hatran'),
(1004, 'Bin                      ', NULL, 'Tran                     ', NULL, 'Female      ', 1, '012832131', '2017-11-11 00:00:00', '1221 huyensa', '1312312414  ', 'huyentran@gmail.com', 'huyentran'),
(1005, 'tu', 'b', 'mai', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'male', 35, '329487235', '0000-00-00 00:00:00', '12 mai ba', '124125215', 'mais@gmail.com', 'tu'),
(1006, 'asdsa', 'nhu', 'hoang', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'female', 36, '21491824', '1992-11-11 00:00:00', '12 asdad', '12321312312', 'y@gmail.com', 'asdsa'),
(1007, 'asdsa', 'nhu', 'hoang', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'female', 37, '21491824', '1992-11-11 00:00:00', '12 asdad', '12321312312', 'y@gmail.com', 'asdsa'),
(1008, 'hey', 'you', 'as', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'female', 38, '124235324', '1992-11-11 00:00:00', '12321 12w', '123123123', 'as@gmail.com', 'hey');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NewsID` int(11) NOT NULL,
  `NewsTitle` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `NewsDescription` text COLLATE utf8mb4_vietnamese_ci,
  `PictureID` int(11) DEFAULT NULL,
  `datePost` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NewsID`, `NewsTitle`, `NewsDescription`, `PictureID`, `datePost`) VALUES
(1, 'New Gelpolish Coming', '<p>We proud that we are the first place around Akron, Canton bring this new stuff to here.</p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>	 \r\n	<p class=\"transparent60 textalignright\">Author:Ben - Manager</p>', 26, '2018-12-11'),
(2, 'Thanksgiing discount 10%', '<p>We proud that we are the first place around Akron, Canton bring this new stuff to here.</p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>	 \r\n	<p class=\"transparent60 textalignright\">Author:Ben - Manager</p>', 27, '2018-12-11'),
(3, 'What is new color powders', '<p>We proud that we are the first place around Akron, Canton bring this new stuff to here.</p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>	 \r\n	<p class=\"transparent60 textalignright\">Author:Ben - Manager</p>', 22, '2018-12-11'),
(4, 'Thanksgiving close', '<p>We proud that we are the first place around Akron, Canton bring this new stuff to here.</p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>	 \r\n	<p class=\"transparent60 textalignright\">Author:Ben - Manager</p>', 27, '2018-12-11'),
(5, 'Discount information', '<p>We proud that we are the first place around Akron, Canton bring this new stuff to here.</p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>	 \r\n	<p class=\"transparent60 textalignright\">Author:Ben - Manager</p>', 26, '2018-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `PictureID` int(11) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `PictureName` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PictureLink` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PictureThumbLink` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`PictureID`, `CategoryID`, `PictureName`, `PictureLink`, `PictureThumbLink`) VALUES
(1, 1, 'pic1.jpg', 'picture/pic1.jpg', NULL),
(2, 1, 'pic2.jpg', 'picture/pic2.jpg', NULL),
(3, 1, 'pic3.jpg', 'picture/pic3.jpg', NULL),
(4, 1, 'pic4.jpg', 'picture/pic4.jpg', NULL),
(5, 1, 'pic5.jpg', 'picture/pic5.jpg', NULL),
(6, 1, 'pic6.jpg', 'picture/pic6.jpg', NULL),
(7, 1, 'pic7.jpg', 'picture/pic7.jpg', NULL),
(8, 1, 'pic8.jpg', 'picture/pic8.jpg', NULL),
(9, 1, 'pic9.jpg', 'picture/pic9.jpg', NULL),
(10, 1, 'pic10.jpg', 'picture/pic10.jpg', NULL),
(11, 1, 'pic11.jpg', 'picture/pic11.jpg', NULL),
(12, 1, 'pic12.jpg', 'picture/pic12.jpg', NULL),
(13, 1, 'pic13.jpg', 'picture/pic13.jpg', NULL),
(14, 1, 'pic14.jpg', 'picture/pic14.jpg', NULL),
(15, 1, 'pic15.jpg', 'picture/pic15.jpg', NULL),
(16, 1, 'pic16.jpg', 'picture/pic16.jpg', NULL),
(17, 1, 'pic17.jpg', 'picture/pic17.jpg', NULL),
(18, 1, 'pic18.jpg', 'picture/pic18.jpg', NULL),
(19, 1, 'pic19.jpg', 'picture/pic19.jpg', NULL),
(20, 1, 'pic20.jpg', 'picture/pic20.jpg', NULL),
(21, 1, 'pic21.jpg', 'picture/pic21.jpg', NULL),
(22, 1, 'pic22.jpg', 'picture/pic22.jpg', NULL),
(23, 1, 'pic23.jpg', 'picture/pic23.jpg', NULL),
(24, 1, 'pic24.jpg', 'picture/pic24.jpg', NULL),
(25, 1, 'pic25.jpg', 'picture/pic25.jpg', NULL),
(26, 1, 'new Gellish', 'picture/gelpolygel.jpg', NULL),
(27, 1, 'new Gel colors', 'picture/gelnails.jpg', NULL),
(28, 1, '', '', ''),
(29, 1, 'd322f4590a6d77da02390deebfdfee88.jpg', 'picture/61bb597baf951768c55a1468a77c0ae2.jpg', ''),
(30, 1, 'a1b83a2e7f672af545f1acd7e07fd4ec.jpg', 'picture/067387331654697db80af4ff20582ad9.jpg', ''),
(31, 1, '676685cdc81e5ceb964f08b47ee35ac0.jpg', 'picture/ae5febc60dda6253f3bd28611df879dd.jpg', ''),
(32, 1, '444e76b9ea9c9f18155ab7f7c6f96b34.jpg', 'picture/d8fe025313dd5f727a8960a4e9b95a3e.jpg', ''),
(33, 1, 'a1dbd82ab3fd37b84b913dbe0bcfd9f0.jpg', 'picture/7ec351a90a5f3cc8a5cb35a301c964ee.jpg', ''),
(34, 1, 'dd46bd976674ff08ef101812acd38d69.jpg', 'picture/724e0d1e9ed53e33f58d41908cd6f26e.jpg', ''),
(35, 1, 'd941b95da04399efa887e98a5de899bb.jpg', 'picture/cbe017a679ef1984fb90d4a0b89e24a4.jpg', ''),
(36, 1, 'a2c44928543f23e44ae04e95b3e9ceb3.jpg', 'picture/474b3a3c43529341428fdb2b0900710e.jpg', ''),
(37, 1, '00af5106dc157d1b89ecac8196e36bdf.jpg', 'picture/1c77a9753e035d785e920172209ed38b.jpg', ''),
(38, 1, '259e2261f6285a06e311729e1c7c9649.jpg', 'picture/b7e332ab4a25203e95e4f95d3ff9a8f5.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `PostID` int(11) NOT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `PictureID` int(11) DEFAULT NULL,
  `Posttitle` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`PostID`, `EmployeeID`, `PictureID`, `Posttitle`, `Description`) VALUES
(1, 1001, 1, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(2, 1002, 2, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(3, 1003, 3, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(4, 1001, 4, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(5, 1002, 5, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(6, 1003, 6, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(7, 1004, 7, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(8, 1002, 8, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(9, 1001, 9, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(10, 1004, 10, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(11, 1001, 11, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(12, 1002, 12, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(13, 1001, 13, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(14, 1004, 14, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(15, 1002, 15, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(16, 1001, 16, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(17, 1002, 17, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(18, 1001, 18, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(19, 1001, 19, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(20, 1001, 20, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(21, 1001, 21, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(22, 1001, 22, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(23, 1001, 23, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(24, 1001, 24, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.'),
(25, 1001, 25, 'Sample title', 'Nails new set powder colors were customized,mixed blue glitter and white line. Simple but beautiful!!.');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ServiceID` int(11) DEFAULT NULL,
  `ServiceName` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Price` decimal(9,2) DEFAULT NULL,
  `EstimateTime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`ServiceID`, `ServiceName`, `Price`, `EstimateTime`) VALUES
(1, 'Manicure', '15.00', 20),
(2, 'Manicure Gel', '30.00', 30),
(3, 'Hand Gelpolish', '20.00', 15),
(4, 'Take off Gelpolish', '10.00', 15),
(5, 'Pedicure30', '30.00', 30),
(6, 'Pedicure33', '33.00', 30),
(7, 'Pedicure35', '35.00', 30),
(8, 'Pedicure38', '38.00', 40),
(9, 'Pedicure45', '45.00', 45),
(10, 'Pedicure Kid', '25.00', 20),
(11, 'New set 30', '30.00', 40),
(12, 'New Set gel', '40.00', 40),
(13, 'New Set 35', '35.00', 50),
(14, 'New Set 35Gel', '45.00', 50),
(15, 'Toes polishes change', '10.00', 10),
(16, 'Nails Polishes Change', '10.00', 10),
(17, 'Pink n white', '50.00', 50),
(18, 'Obre Pink n white', '50.00', 45),
(19, 'Dipping New Set', '40.00', 30),
(20, 'Dipping Fill', '30.00', 20),
(21, 'Regular Fill', '20.00', 20),
(22, 'Fill+Gel', '30.00', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `daily_tracking`
--
ALTER TABLE `daily_tracking`
  ADD PRIMARY KEY (`TrackingID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsID`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`PictureID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`PostID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daily_tracking`
--
ALTER TABLE `daily_tracking`
  MODIFY `TrackingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NewsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `PictureID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
