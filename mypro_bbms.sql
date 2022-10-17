-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 11:28 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypro_bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `pass` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`) VALUES
(1, 'admin', 'a123');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donationid` int(20) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `bgroup` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donationid`, `dname`, `pname`, `bgroup`, `date`) VALUES
(6079, 'Shamim Ali', 'Arneka Shama ', 'O+', '2021-04-16'),
(60795, 'Emon Emtiyaz', 'Mahima Hoque', 'A+', '2021-04-16'),
(60796, 'Hulk', 'Mahima Hoque', 'A+', '2021-04-23'),
(60797, 'Ornob', 'Siam', 'B+', '2021-04-24'),
(60798, 'Obaidul Kader', 'Hasin Shad', 'O-', '2021-05-18'),
(60799, 'b', 'Siam', 'A+', '2021-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `donor_regis`
--

CREATE TABLE `donor_regis` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `bgroup` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor_regis`
--

INSERT INTO `donor_regis` (`id`, `name`, `bgroup`, `gender`, `age`, `weight`, `date`, `number`, `address`) VALUES
('607891', 'Tanvir Mahim ', 'B+', 'Male', 23, 90, '2021-04-16', '01520100750', 'Shewrapara, Mirpur'),
('607892345', 'Emon Emtiyaz', 'A+', 'Male', 23, 70, '2021-04-16', '01754576218', 'Mohammadpur, Dhaka'),
('60789500', 'CM Punk', 'B+', 'Male', 23, 70, '2019-01-01', '9476528884', 'Unknown, Canada'),
('6079', 'Ornob', 'B+', 'Male', 24, 80, '2021-04-24', '01534394439', 'Mirpur, Dhaka'),
('607959', 'Badhon Mostofa', 'A+', 'Male', 24, 70, '2021-04-16', '01617059481', 'Dhakhin Khan, Dhaka'),
('6083', 'Shamim Ali', 'A+', 'Male', 23, 70, '2020-01-01', '01534394439', 'Gendaria, Dhaka'),
('608316', 'Hulk', 'A+', 'Male', 100, 450, '2021-04-23', '1331616132', 'Uttara'),
('60958203', 'Captain America', 'B+', 'Male', 0, 90, '2019-01-01', '01520100750', 'Mohammadpur, Dhaka'),
('6095851', 'Zontu Baba', 'A+', 'Male', 24, 80, '2020-01-01', '01822405451', 'Lalbagh,Dhaka'),
('6096311', 'Siam', 'B+', 'Male', 23, 70, '2020-01-01', '01754576218', 'Mohammadpur, Dhaka'),
('60a42eb63c5a9', 'b', 'A+', 'Female', 21, 70, '2021-05-18', '01520100750', 'Gendaria, Dhaka'),
('60a42f45a83dd', 'Vishnu', 'A+', 'Male', 23, 70, '2019-01-01', '01520100750', 'Badda, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` varchar(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `latitude`, `longitude`) VALUES
('2147483647', 23.711561824054687, 90.41995670534105),
('607891', 23.788172232292922, 90.37362098693848),
('607892345', 23.76585574171092, 90.35867359376878),
('60789500', 57.87659342044399, -101.6699286876835),
('6079', 23.793355687529456, 90.37653923034668),
('607959', 23.852469994350727, 90.42605068422289),
('6083', 23.713652955716583, 90.42175914979906),
('608316', 23.871396640514327, 90.40426254272461),
('60958203', 23.75471041313247, 90.35894393920898),
('6095851', 23.718165796922413, 90.38622524476976),
('6096311', 23.766171316727014, 90.35863445456327),
('60a42eb63c5a9', 23.71126942669911, 90.42078838247873),
('60a42f45a83dd', 23.78040803101821, 90.42610027869083);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `fname`, `lname`, `email`, `pass`) VALUES
(1, 'Shamim', 'Ali', 'shamimmullick98@gmail.com', 'a123'),
(2, 'obaidul', 'kader', 'obaidulkader@northsouth.edu', '123');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `bgroup` varchar(10) DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `bgroup`, `gender`, `age`, `weight`, `number`, `address`) VALUES
('54230', 'Kader Molla', 'AB+', 'Male', 86, 89, 1754576218, 'Dhanmondi,Dhaka'),
('56423', 'Kamal', 'B+', 'Male', 40, 75, 1955390401, 'Gendaria, Dhaka'),
('57862', 'Mohammad Tanveer', 'AB-', 'Male', 23, 80, 1520100750, 'Mirpur, Dhaka'),
('60795', 'Hasin Shad', 'O-', 'Others', 23, 40, 1617059481, 'Bashundhara, Dhaka'),
('60a4302e86f79', 'Siam', 'A+', 'Male', 19, 60, 1822405451, 'Badda,Dhaka'),
('61230', 'Shamim Ali', 'A+', 'Male', 23, 70, 1520100750, 'Sutrapur, Dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donationid`);

--
-- Indexes for table `donor_regis`
--
ALTER TABLE `donor_regis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donationid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60800;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
