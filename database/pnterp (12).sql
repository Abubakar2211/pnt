-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2024 at 08:08 PM
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
-- Database: `pnterp`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_contacts`
--

CREATE TABLE `add_contacts` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cell` int(110) NOT NULL,
  `landline` int(110) NOT NULL,
  `category` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub-category` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `religion` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `website` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `designation` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `companyName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_contacts`
--

INSERT INTO `add_contacts` (`id`, `firstName`, `lastName`, `cell`, `landline`, `category`, `sub-category`, `country`, `religion`, `Email`, `website`, `designation`, `companyName`, `status`) VALUES
(1, 'Name', '', 0, 0, 'Sell Phone', 'Client Boardcast', '', 'Joining', 'Email', NULL, 'Client Status', 'Company Name', ''),
(2, 'Cheryl Lin', '', 529, 0, '+1-485-032-6738x1196', 'Yes', '', '12/07/2021', 'johnstondouglas@gmail.com', NULL, 'Active', 'Lane, Butler and Elliott', ''),
(3, 'Rebecca Adams', '', 952, 0, '001-630-891-4387x632', 'Yes', '', '12/03/2022', 'qmartinez@sosa-lindsey.com', NULL, 'Active', 'Brooks and Sons', ''),
(4, 'James Gonzales', '', 0, 0, '728.153.1309', 'Yes', '', '24/05/2022', 'matthew49@yahoo.com', NULL, 'Active', 'Garcia, Larson and Glenn', ''),
(5, 'Brenda Reed', '', 801, 0, '024-949-1234x7749', 'Yes', '', '30/09/2021', 'amorton@henderson.biz', NULL, 'Active', 'Hanson PLC', ''),
(6, 'Darrell Valdez', '', 446, 0, '679-922-5031x29199', 'Yes', '', '16/11/2021', 'nicholasturner@gonzalez.com', NULL, 'Active', 'Scott and Sons', ''),
(7, 'Brian Smith', '', 361237, 0, '(324)975-4127', 'Yes', '', '06/10/2020', 'angelawaller@gmail.com', NULL, 'Active', 'Payne Group', ''),
(8, 'Benjamin Moore', '', 0, 0, '202.771.5315x387', 'Yes', '', '08/09/2024', 'carsondale@kidd.com', NULL, 'Active', 'Jackson, Stewart and Wright', ''),
(9, 'Christina Diaz', '', 923127, 0, '001-731-632-0188x9916', 'Yes', '', '19/03/2024', 'jamespowell@clark-gonzalez.com', NULL, 'Active', 'Burke, Singh and Conway', ''),
(10, 'Kimberly Cook', '', 0, 0, '970.701.9750x78836', 'Yes', '', '05/03/2021', 'scottgeorge@cannon-pierce.com', NULL, 'Active', 'Noble, Hall and Fuller', ''),
(11, 'James Moore', '', 128, 0, '740.730.9838x39088', 'Yes', '', '04/01/2022', 'kimberlydiaz@yahoo.com', NULL, 'Active', 'Young-Carroll', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`, `country_id`) VALUES
(3, 'Karachissss', 2),
(5, 'Karachi', 7);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cellPhone` varchar(255) NOT NULL,
  `cellNumber` varchar(255) NOT NULL,
  `joining` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `clientStatus` varchar(255) NOT NULL,
  `clientBoardcast` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `contact`, `cellPhone`, `cellNumber`, `joining`, `companyName`, `clientStatus`, `clientBoardcast`, `date_time`) VALUES
(16, 'Abubakar', 'Abubakar192005@gmail.com', '03122082355', '', '', '', '', '', '', '2024-11-06 11:19:52'),
(17, 'Abubakar Baig', 'abubakar192005@gmail.com', '03122082355', '', '', '', '', '', '', '2024-11-06 11:19:52'),
(18, 'Abubakar Baig', 'abubakar192005@gmail.com', '03122082355', '', '', '', '', '', '', '2024-11-06 11:19:52'),
(20, 'Abubakar Baig', 'abubakar192005@gmail.com', '03122082355', '', '', '', '', '', '', '2024-11-06 11:19:52'),
(22, 'Abubakar Baig', 'abubakar192005@gmail.com', '03122082355', '03122082355', '031220235', '2024-11-06', 'OG Technologies', 'active', 'active', '2024-11-06 11:20:13'),
(23, 'Abubakar baig', 'Abubakar192005@gamil.com', '03122082355', '03122082355', '031128235', '2024-11-06', 'Abubakar', 'active', 'active', '2024-11-06 11:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cellPhone` varchar(255) NOT NULL,
  `cellNumber` varchar(255) NOT NULL,
  `joining` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `contactStatus` varchar(255) NOT NULL,
  `contactBoardcast` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `contact`, `cellPhone`, `cellNumber`, `joining`, `companyName`, `contactStatus`, `contactBoardcast`, `date_time`) VALUES
(1, 'Abubakar Baig', 'abubakar192005@gmail.com', '03122082355', '03122082355', '03122082355', '2024-11-06', 'feature developer', 'active', 'active', '2024-11-06 15:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`) VALUES
(1, 'Pakistan'),
(2, 'Pakistan'),
(3, 'Pakistan'),
(7, 'india');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `id` int(11) NOT NULL,
  `list-name` varchar(110) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `list-emails` text NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `list-name`, `quantity`, `country`, `category`, `list-emails`, `status`) VALUES
(29, 'Team-PNT', '5', '', 'Team', '[\"shahid@pntglobal.com\",\"syedasehar567@gmail.com\",\"sanapretyintezar@gmail.com\",\"afiahsan23@gmail.com\",\"ayesha25arif@gmail.com\"]', 'no-record'),
(30, 'hhh', '3', 'South Georgia', 'Team', '[\"shahid@pntglobal.com\",\"syedasehar567@gmail.com\",\"sanapretyintezar@gmail.com\"]', 'no-record'),
(31, 'kjlkjkj', '3', 'South Georgia', '', '', 'no-record'),
(32, 'php dev', '7', 'Palestine', 'Team', '', 'no-record');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `religion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `religion`) VALUES
(2, 'aaa'),
(3, 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_types`
--

CREATE TABLE `sub_types` (
  `id` int(11) NOT NULL,
  `sub_type` varchar(255) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `contact`, `category`, `password`, `date_time`) VALUES
(0, 'Abubakar Baig', 'abubakar192005@gmail.com', '03122082355', '1', '202cb962ac59075b964b07152d234b70', '2024-11-07 01:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `email`, `contact`, `designation`, `category`, `password`, `date_time`) VALUES
(2, 'Abubakar Baig', 'abubakar192005@gmail.com', '03122082355', 'sdfdsf', '1', '803c1f47a32d8a17adeeb578391d85fb', '2024-10-30 23:25:24'),
(5, 'hasan', 'hasan@gmail.com', '03122082355', 'hasan baig', '2', 'd9b1d7db4cd6e70935368a1efb10e377', '2024-10-30 23:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'Teams'),
(3, 'Team'),
(4, 'Supplier'),
(5, 'Contact'),
(15, ''),
(16, ''),
(17, ''),
(18, ''),
(19, ''),
(20, ''),
(21, ''),
(22, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_contacts`
--
ALTER TABLE `add_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sub_types`
--
ALTER TABLE `sub_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_contacts`
--
ALTER TABLE `add_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_types`
--
ALTER TABLE `sub_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_types`
--
ALTER TABLE `sub_types`
  ADD CONSTRAINT `sub_types_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
