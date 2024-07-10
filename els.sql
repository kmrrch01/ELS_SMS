-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 07:54 PM
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
-- Table structure for table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_teachers`
--

CREATE TABLE `class_teachers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_tests`
--

CREATE TABLE `class_tests` (
  `id` int(11) NOT NULL,
  `test` varchar(60) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` int(60) NOT NULL,
  `disable` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(5, 'Mohammad', 'Abdelkader', 'Marrache', 'محمد', 'عبدالقادر', 'مراش', 'simsarzada@gmail.com', '03200064', 'Beirut', '2024-05-07 19:19:20', 2024, '1974-10-10', '2024PAR663A62', 'male', '', 'parent', '', '', '$2y$10$nwbASlQX6PU7479DgRWezueHYZeIORCy8y2sICUsxRnpHfB0kTDR6', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_tests`
--
ALTER TABLE `class_tests`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_teachers`
--
ALTER TABLE `class_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_tests`
--
ALTER TABLE `class_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
