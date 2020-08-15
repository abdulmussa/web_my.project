-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 12:51 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suza`
--

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `description_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `groupe_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groupes`
--

CREATE TABLE `groupes` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `registeredAt` date DEFAULT NULL,
  `group_email` varchar(255) DEFAULT NULL,
  `group_phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupes`
--

INSERT INTO `groupes` (`group_id`, `group_name`, `address`, `registeredAt`, `group_email`, `group_phone`, `status`) VALUES
(2, 'Vijana shumata', 'Mfenesini', '2020-08-02', 'vijana.haya@gmai.com', '0779556644', 'active'),
(3, 'Wazalendo Wetu', 'Kibweni', '2020-01-09', 'waza.etu@gmail.com', '0777222333', 'Active'),
(4, 'Tujisaidie Kupata Fursa', 'Charawe', '2018-09-18', 'tujisaidie.fursa@gmail.com', '0778667533', 'Active'),
(5, 'Wahangaikaji', 'jumbi', '2019-12-02', 'wahangaikaji@gmail.com', '0987612345', 'Active'),
(7, 'watu na kazi', 'shaani', '2018-10-29', 'watu.kazi@gmail.com', '0998445143', 'Active'),
(8, 'bangi si mboga', 'mshelishelini', '2020-07-27', 'bangi.mboga@gmail.com', '0776817106', 'Active'),
(10, 'fdsgfj', 'fddfjh', '2020-06-28', 'srfdf@gmail.com', '099887766555', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_descripion` text,
  `file_name` varchar(255) DEFAULT NULL,
  `groupe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(200) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `manager_id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `manager_email` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`manager_id`, `fullname`, `gender`, `address`, `phonenumber`, `manager_email`, `role`, `status`, `password`) VALUES
(1, 'maulid ali khamis', 'on', 'mwera', '08736544434', 'maulid@gmail.com', 'manager', 'Active', '12345'),
(2, 'amina juma kali', 'on', 'fuoni', '0987654321', 'kali@gmail.com', 'leader', 'Active', '54321'),
(3, 'abdul mussa mussa', 'male', 'mbuzini', 'o987612345', 'abdu@gmail.com', 'admin', '', 'admin999');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `members_id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `member_email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `group_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`members_id`, `fullname`, `address`, `phonenumber`, `gender`, `member_email`, `status`, `role`, `createdAt`, `group_id`) VALUES
(4, 'Aisha Haji Jaku', 'Kibonde mzungu', '0777546754', 'female', 'isha@gmail.com', 'Active', 'leader', NULL, 3),
(6, 'khalid bakari kombo', 'fuoni', '0776122338', 'male', 'beka@gmail.com', 'Active', '', NULL, 2),
(7, 'abul alie jaz', 'kwao', '0876543219', 'male', 'jie@gmail.com', 'active', 'leader', NULL, 2),
(8, 'jailani jamal juma', 'Kibonde mzungu', '0777668877', 'male', 'jaimal@gmail.com', 'active', '', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_status` varchar(255) NOT NULL,
  `groupe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_status`, `groupe_id`) VALUES
(2, 'tungule na Mchicha', 'Active', 2),
(3, 'vitunguu maji', 'Active', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`description_id`),
  ADD KEY `groupe_id` (`groupe_id`),
  ADD KEY `groupe_id_2` (`groupe_id`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `groupe_id_3` (`groupe_id`),
  ADD KEY `groupe_id_4` (`groupe_id`),
  ADD KEY `manager_id_2` (`manager_id`);

--
-- Indexes for table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `groupe_id` (`groupe_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`members_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `groupe_id` (`groupe_id`),
  ADD KEY `groupe_id_2` (`groupe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `members_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`manager_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `description_ibfk_2` FOREIGN KEY (`groupe_id`) REFERENCES `groupes` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`groupe_id`) REFERENCES `groupes` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groupes` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`groupe_id`) REFERENCES `groupes` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
