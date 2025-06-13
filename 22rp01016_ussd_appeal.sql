-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2025 at 12:19 PM
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
-- Database: `22rp01016_ussd_appeal`
--

-- --------------------------------------------------------

--
-- Table structure for table `appeals`
--

CREATE TABLE `appeals` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appeals`
--

INSERT INTO `appeals` (`id`, `student_id`, `module_name`, `reason`, `status`) VALUES
(1, '22RP01016', 'remark', '3', 'Approved'),
(2, '22RP01017', 'unsuttisfied', '2', 'Under Review'),
(3, '22RP01018', 'something happen', '1', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `module_name`, `mark`) VALUES
(1, '22RP01016', 'Web Tech', 72),
(2, '22RP01016', 'Data Structures', 65),
(3, '22RP01016', 'Networking', 50),
(4, '22RP01017', 'Web Tech', 68),
(5, '22RP01017', 'Database', 71),
(6, '22RP01017', 'Python', 85),
(7, '22RP01018', 'Maths', 60),
(8, '22RP01018', 'Web Tech', 70),
(9, '22RP01018', 'Database', 55),
(10, '22RP01019', 'Data Structures', 48),
(11, '22RP01019', 'Algorithms', 52),
(12, '22RP01019', 'Networking', 58),
(13, '22RP01020', 'Python', 73),
(14, '22RP01020', 'Web Tech', 69),
(15, '22RP01020', 'Ethics', 81),
(16, '22RP01021', 'Database', 77),
(17, '22RP01021', 'Math', 62),
(18, '22RP01021', 'Web Tech', 70),
(19, '22RP01022', 'Data Structures', 66),
(20, '22RP01022', 'Networking', 74),
(21, '22RP01022', 'Security', 80);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `enrolled_modules` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `phone_number`, `enrolled_modules`) VALUES
('22RP01016', 'BIENVENUE Fabrice', '250784657947', 'Web Tech, Data Structures, Networking'),
('22RP01017', 'MUGISHA JEAN', '250783214556', 'Web Tech, Database, Python'),
('22RP01018', 'Jean Bosco', '250782112345', 'Maths, Web Tech, Database'),
('22RP01019', 'Chantal Uwimana', '250789991122', 'Data Structures, Algorithms, Networking'),
('22RP01020', 'Aimable Nshimiyimana', '250787123456', 'Python, Web Tech, Ethics'),
('22RP01021', 'Grace Ingabire', '250785987654', 'Database, Math, Web Tech'),
('22RP01022', 'Patrick Niyonzima', '250786223344', 'Data Structures, Networking, Security');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appeals`
--
ALTER TABLE `appeals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appeals`
--
ALTER TABLE `appeals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appeals`
--
ALTER TABLE `appeals`
  ADD CONSTRAINT `appeals_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
