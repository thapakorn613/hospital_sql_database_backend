-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 11:16 AM
-- Server version: 10.3.8-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `anesthetists`
--

CREATE TABLE `anesthetists` (
  `id` char(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `start_contract` date NOT NULL,
  `end_contract` date DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `operation_id` varchar(6) DEFAULT NULL,
  `fee_per_hour` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anesthetists`
--

INSERT INTO `anesthetists` (`id`, `name`, `surname`, `start_contract`, `end_contract`, `salary`, `operation_id`, `fee_per_hour`) VALUES
('10501', 'thapkorn', 'pheyporn', '2018-01-01', '2018-02-01', '10000.00', NULL, '100.00'),
('10502', 'krisorn', 'kachai', '2018-01-01', NULL, '12000.00', NULL, '120.00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` char(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `start_contract` date NOT NULL,
  `end_contract` date DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `operation_id` varchar(6) DEFAULT NULL,
  `fee_per_hour` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `executives`
--

CREATE TABLE `executives` (
  `id` char(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `start_contract` date NOT NULL,
  `end_contract` date NOT NULL,
  `salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` char(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `start_contract` date NOT NULL,
  `end_contract` date NOT NULL,
  `salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_practice`
--

CREATE TABLE `general_practice` (
  `id` char(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `start_contract` date NOT NULL,
  `end_contract` date DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `operation_id` varchar(6) DEFAULT NULL,
  `fee_per_hour` decimal(10,2) DEFAULT NULL,
  `patient_id` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_practice`
--

INSERT INTO `general_practice` (`id`, `name`, `surname`, `start_contract`, `end_contract`, `salary`, `operation_id`, `fee_per_hour`, `patient_id`) VALUES
('10601', 'chawalid', 'punyajalern', '2018-01-01', NULL, '15000.00', NULL, '150.00', NULL),
('10602', 'Nattapong', 'pongkam', '2018-01-01', NULL, '15000.00', NULL, '150.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` char(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `start_contract` date NOT NULL,
  `end_contract` date NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `operation_id` varchar(6) NOT NULL,
  `fee_per_hour` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `operation_id` varchar(6) NOT NULL,
  `operation_room_id` varchar(4) NOT NULL,
  `fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` char(6) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `blood_group` char(2) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` char(10) NOT NULL,
  `operation_id` varchar(6) NOT NULL,
  `patient_type_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient_type`
--

CREATE TABLE `patient_type` (
  `patient_type_id` char(3) NOT NULL,
  `name_type` varchar(35) NOT NULL,
  `discount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `presciption`
--

CREATE TABLE `presciption` (
  `patient_id` char(6) NOT NULL,
  `presciption_id` char(10) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` varchar(5) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `enter_date` date NOT NULL,
  `exit_date` date NOT NULL,
  `type_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surgeons`
--

CREATE TABLE `surgeons` (
  `id` char(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `start_contract` date NOT NULL,
  `end_contract` date DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `operation_id` varchar(10) DEFAULT NULL,
  `fee_per_hour` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `surgeons`
--

INSERT INTO `surgeons` (`id`, `name`, `surname`, `start_contract`, `end_contract`, `salary`, `operation_id`, `fee_per_hour`) VALUES
('10701', 'piyachai', 'kumpuan', '2018-01-01', NULL, '13000.00', NULL, '130.00');

-- --------------------------------------------------------

--
-- Table structure for table `type_room`
--

CREATE TABLE `type_room` (
  `type_id` int(3) NOT NULL,
  `room_type` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anesthetists`
--
ALTER TABLE `anesthetists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_id_anesthetists` (`operation_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_id_doctor` (`operation_id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_practice`
--
ALTER TABLE `general_practice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_id_gp` (`operation_id`),
  ADD KEY `patient_id_gp` (`patient_id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_id_nurse` (`operation_id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`operation_id`),
  ADD KEY `operation_room_id` (`operation_room_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `patient_type_id` (`patient_type_id`);

--
-- Indexes for table `patient_type`
--
ALTER TABLE `patient_type`
  ADD PRIMARY KEY (`patient_type_id`);

--
-- Indexes for table `presciption`
--
ALTER TABLE `presciption`
  ADD PRIMARY KEY (`patient_id`,`presciption_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `surgeons`
--
ALTER TABLE `surgeons`
  ADD KEY `operation_id_surgeons` (`operation_id`);

--
-- Indexes for table `type_room`
--
ALTER TABLE `type_room`
  ADD PRIMARY KEY (`type_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anesthetists`
--
ALTER TABLE `anesthetists`
  ADD CONSTRAINT `operation_id_anesthetists` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `operation_id_doctor` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`);

--
-- Constraints for table `general_practice`
--
ALTER TABLE `general_practice`
  ADD CONSTRAINT `operation_id_gp` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`),
  ADD CONSTRAINT `patient_id_gp` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `operation_id_nurse` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`);

--
-- Constraints for table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_room_id` FOREIGN KEY (`operation_room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `operation_id` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`),
  ADD CONSTRAINT `patient_type_id` FOREIGN KEY (`patient_type_id`) REFERENCES `patient_type` (`patient_type_id`);

--
-- Constraints for table `surgeons`
--
ALTER TABLE `surgeons`
  ADD CONSTRAINT `operation_id_surgeons` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;