-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 01:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `els`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `subject1` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `subject2` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `subject3` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `user_id`, `school_id`, `class_id`, `date`, `subject1`, `subject2`, `subject3`) VALUES
(4, 'BAC2', '2024_ADM6633A2', '', 'ELS_BAC2', '2024-05-03 13:17:27', 'math', 'physics', 'english'),
(20, 'Bac1', '2024_ADM6633A2', '', 'ELS_BAC1', '2024-05-03 19:44:50', 'English', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `fullname_ar` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `academic_year` int(20) NOT NULL,
  `Class` varchar(20) NOT NULL,
  `Section` char(10) NOT NULL,
  `Fees_in_Dollar` varchar(20) NOT NULL,
  `Fees_in_lebanese` varchar(20) NOT NULL,
  `Paid_in_Dollar` varchar(20) NOT NULL,
  `Paid_in_lebanese` varchar(20) NOT NULL,
  `Remain_in_Dollar` varchar(20) NOT NULL,
  `Remain_in_lebanese` varchar(20) NOT NULL,
  `Discount_d` varchar(20) NOT NULL,
  `Discount` varchar(20) NOT NULL,
  `Total_d` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `fullname`, `fullname_ar`, `position`, `academic_year`, `Class`, `Section`, `Fees_in_Dollar`, `Fees_in_lebanese`, `Paid_in_Dollar`, `Paid_in_lebanese`, `Remain_in_Dollar`, `Remain_in_lebanese`, `Discount_d`, `Discount`, `Total_d`, `Total`) VALUES
(1, 'marwandaou22', 'مراعسيلاهشلا', 'admin', 2024, 'grade_2', 'section_B', '485', '4999985', '5', '5', '485', '4999985', '', '', '', ''),
(2, 'marwan m daou1', 'شيهشسليهشلسهعي', 'user', 2024, 'grade_2', 'section_B', '4', '4', '1', '1', '4', '4', '', '', '', ''),
(9, 'jjhdjashdkash', 'شيهشسليهشلسهعي', 'admin', 2024, 'grade_2', 'section_B', '2500', '15000000', '500', '5000000', '2000', '10000000', '20', '20', '1600.00', '8000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname_ar` varchar(20) NOT NULL,
  `middlename_ar` varchar(20) NOT NULL,
  `lastname_ar` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `parent_id` varchar(20) NOT NULL,
  `class_name` varchar(20) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `section` varchar(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `firstname_ar`, `middlename_ar`, `lastname_ar`, `student_id`, `parent_id`, `class_name`, `acad_year`, `dob`, `gender`, `st_type`, `section`, `date`) VALUES
(1, 'Omar', 'Mohammad', 'Omar', 'عمر', 'محمد', 'عمر', '2024STU663A6E', '', 'grade_1', '2024', '2002-04-22', 'male', 'regular', 'sect', '2024-05-07'),
(2, 'Jana', 'Mohammad', 'Marrache', 'جنى', 'محمد', 'مراش', '2024STU663A72', '', 'grade_2', '2024', '2009-03-22', 'female', 'regular', 'sect', '2024-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname_ar` varchar(20) NOT NULL,
  `middlename_ar` varchar(20) NOT NULL,
  `lastname_ar` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `address` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `acad_year` int(11) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `school` varchar(60) NOT NULL,
  `position` varchar(20) NOT NULL,
  `st_type` varchar(20) NOT NULL,
  `section` char(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `class_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `firstname_ar`, `middlename_ar`, `lastname_ar`, `email`, `phone_number`, `address`, `date`, `acad_year`, `dob`, `user_id`, `gender`, `school`, `position`, `st_type`, `section`, `password`, `image`, `class_name`) VALUES
(1, 'Super', 'Admin', 'Admin', '', '', '', 'k.marrache@outlook.com', '', '', '2024-05-02 16:27:49', 2024, '', '2024_ADM6633A2', 'female', 'general', 'admin', '', '', 'sinfuliphone', '', ''),
(3, 'omar', 'omar', 'omar', '', '', '', 'omar.alloush777@gmail.com', '', '', '2024-05-03 20:57:07', 2024, '', '2024_ADM663533', 'male', 'grade_1', 'admin', 'regular', 'section_A', '$2y$10$aXNn28jM2z36odSCxLF0rOCmo4uV1WOvdBjefF51dvfpuLzC037NG', '', ''),
(4, 'hasan', 'hasan', 'hasan', '', '', '', 'h@gmail.com', '', '', '2024-05-03 21:00:23', 2024, '', '2024_TEA663534', 'male', 'grade_1', 'teacher', '', '', '$2y$10$QIKo3vrTGu.iuKNDqQWqIOAmhglhyXukQStTiEvfq6JSzvd2JMKra', '', ''),
(5, 'Mohammad', 'Abdelkader', 'Marrache', 'محمد', 'عبدالقادر', 'مراش', 'simsarzada@gmail.com', '03200064', 'Beirut', '2024-05-07 19:19:20', 2024, '1974-10-10', '2024PAR663A62', 'male', '', 'parent', '', '', '$2y$10$nwbASlQX6PU7479DgRWezueHYZeIORCy8y2sICUsxRnpHfB0kTDR6', '', ''),
(6, 'baba', 'baba', 'baba', 'حسن', 'يبىشي', 'حمود', 'baba@gmail.com', '76199171', 'jhanam el hamra', '2024-05-21 19:44:32', 2024, '2222-02-22', '2024TEA664CDD', 'male', '', 'teacher', 'sip', 'section_A', '$2y$10$lTe3MaiNTJzStedkFugpzu.PUogqlfYi9U39owf2L6k7S1URH.dfm', '', 'grade_2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gender` (`gender`),
  ADD KEY `rank` (`position`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
