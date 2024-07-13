-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2024 at 03:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(68, 'grade_12', '2024_ADM6633A2', '', 'ELS_GRADE_12', '2024-07-10 02:47:41', '', NULL, NULL),
(69, 'grade_10', '2024_ADM6633A2', '', 'ELS_GRADE_10', '2024-07-10 03:11:02', '', NULL, NULL),
(70, 'grade_11', '2024_ADM6633A2', '', 'ELS_GRADE_11', '2024-07-10 18:32:18', '', NULL, NULL),
(71, 'grade_4', '2024_ADM6633A2', '', 'ELS_GRADE_4', '2024-07-11 15:36:25', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `user_id` varchar(60) DEFAULT NULL,
  `class_id` varchar(60) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_teachers`
--

CREATE TABLE `class_teachers` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `user_id` varchar(60) DEFAULT NULL,
  `class_id` int(60) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `class_tests`
--

CREATE TABLE `class_tests` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `test` varchar(60) NOT NULL DEFAULT '0',
  `test_id` varchar(60) NOT NULL DEFAULT '0',
  `user_id` varchar(60) DEFAULT NULL,
  `class_id` int(60) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `fullname` varchar(60) DEFAULT NULL,
  `fullname_ar` varchar(60) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `class` varchar(60) DEFAULT NULL,
  `section` char(1) DEFAULT NULL,
  `exam1` double DEFAULT NULL,
  `exam2` double DEFAULT NULL,
  `exam3` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  `academic_year` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `fullname`, `fullname_ar`, `position`, `class`, `section`, `exam1`, `exam2`, `exam3`, `average`, `academic_year`) VALUES
(00000000001, 'karim', 'كريم', 'Student', 'grade_1', NULL, 50, 65, 35, 50, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `grade_1`
--

CREATE TABLE `grade_1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_1`
--

INSERT INTO `grade_1` (`id`, `class_id`, `student_id`, `fullname`, `user_id`, `english`, `arabic`, `math`, `science`, `religion`) VALUES
(1, 'ELS_GRADE_1', '2024STU66904F', 'guehgu giroiub gurebi', '2024_ADM6633A2', NULL, NULL, NULL, NULL, NULL),
(2, 'ELS_GRADE_1', '2024STU669050', 'karim karim karim', '2024_ADM6633A2', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grade_2`
--

CREATE TABLE `grade_2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_2`
--

INSERT INTO `grade_2` (`id`, `class_id`, `fullname`, `student_id`, `user_id`, `english`, `arabic`, `math`, `science`, `religion`) VALUES
(1, 'ELS_GRADE_2', 'jhguib egiubeg giub', '2024STU66904F', '2024_ADM6633A2', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grade_3`
--

CREATE TABLE `grade_3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_3`
--

INSERT INTO `grade_3` (`id`, `class_id`, `fullname`, `student_id`, `user_id`, `english`, `arabic`, `math`, `science`, `religion`) VALUES
(1, 'ELS_GRADE_3', 'koj ofri okegij', '2024STU66904F', '2024_ADM6633A2', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grade_4`
--

CREATE TABLE `grade_4` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_4`
--

INSERT INTO `grade_4` (`id`, `class_id`, `fullname`, `student_id`, `user_id`, `english`, `arabic`, `math`, `science`, `religion`) VALUES
(1, 'ELS_GRADE_4', 'hello hello hello', '2024STU669051', '2024_ADM6633A2', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grade_5`
--

CREATE TABLE `grade_5` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6`
--

CREATE TABLE `grade_6` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_7`
--

CREATE TABLE `grade_7` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_8`
--

CREATE TABLE `grade_8` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_9`
--

CREATE TABLE `grade_9` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_10`
--

CREATE TABLE `grade_10` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_10`
--

INSERT INTO `grade_10` (`id`, `class_id`, `fullname`, `student_id`, `user_id`, `english`, `arabic`, `math`, `science`, `religion`) VALUES
(1, 'ELS_GRADE_10', 'omar omar omar', '2024STU669112', '2024TEA668DDF', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grade_11l`
--

CREATE TABLE `grade_11l` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_11s`
--

CREATE TABLE `grade_11s` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_12es`
--

CREATE TABLE `grade_12es` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_12ls`
--

CREATE TABLE `grade_12ls` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `class` varchar(20) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `section` varchar(4) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `firstname_ar`, `middlename_ar`, `lastname_ar`, `student_id`, `parent_id`, `class`, `class_id`, `acad_year`, `dob`, `gender`, `st_type`, `section`, `date`, `image`) VALUES
(3, 'jhguib', 'egiubeg', 'giub', 'iugiub', 'iu', 'iubgiub', '2024STU66904F', '', 'grade_2', 'ELS_GRADE_2', '2024', '2000-10-10', 'male', 'regular', 'sect', '2024-07-11', ''),
(4, 'karim', 'karim', 'karim', 'karim', 'karim', 'karim', '2024STU669050', '', 'grade_1', 'ELS_GRADE_1', '2024', '2020-10-10', 'male', 'regular', 'sect', '2024-07-11', ''),
(5, 'hello', 'hello', 'hello', 'hello', 'hello', 'hello', '2024STU669051', '', 'grade_4', 'ELS_GRADE_4', '2024', '1999-10-10', 'male', 'regular', 'sect', '2024-07-11', ''),
(6, 'omar', 'omar', 'omar', 'omar', 'omar', 'omar', '2024STU669112', '', 'grade_10', 'ELS_GRADE_10', '2024', '2000-10-10', 'male', 'regular', 'sect', '2024-07-12', '');

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
  `class` varchar(60) NOT NULL,
  `position` varchar(20) NOT NULL,
  `st_type` varchar(20) NOT NULL,
  `section` char(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `class_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `firstname_ar`, `middlename_ar`, `lastname_ar`, `email`, `phone_number`, `address`, `date`, `acad_year`, `dob`, `user_id`, `gender`, `class`, `position`, `st_type`, `section`, `password`, `image`, `class_id`) VALUES
(1, 'Super', 'Admin', 'Admin', '', '', '', 'k.marrache@outlook.com', '', '', '2024-05-02 16:27:49', 2024, '', '2024_ADM6633A2', 'female', 'general', 'admin', '', '', 'sinfuliphone', '', ''),
(9, 'ali', 'ali', 'ali', 'علي', 'علي', 'علي', 'k@k.com', '030403020', 'bchemoun', '2024-07-10 03:10:01', 2024, '1994-04-04', '2024TEA668DDF', 'male', 'grade_12', 'teacher', 'regular', 'section_A', '$2y$10$2eDA6Xn/Ex1bKZM63YN7NOab0rzPYYo96xcU5MJzyKSccvT0Wi8Q6', '', 'ELS_GRADE_12'),
(10, 'Hasan', 'Hasan', 'Hasan', 'حسن', 'حسن', 'حسن', 'km@kk.com', '032083107', 'bchamoun', '2024-07-10 03:11:56', 2024, '2003-02-01', '2024TEA668DDF', 'male', 'grade_10', 'teacher', 'regular', 'section_A', '$2y$10$gDyNC/Ho1ck8vnEfGgyyMeIkHFH6XQ/2lydYryTnpjOUbiPqfsO66', '', 'ELS_GRADE_10'),
(11, 'Marwan', 'Mohammad', 'Daw', 'مروان', 'محمد', 'ضو', 'mar@daw.com', '037020100', 'bchamoun', '2024-07-10 03:22:19', 2024, '1991-10-10', '2024TEA668DE2', 'male', 'grade_10', 'teacher', 'regular', 'section_A', '$2y$10$OKL6lwTE87QvP07VbKyUoO5ufXCk5IorODrT/13nNokb0KSD4rO5u', '', 'ELS_GRADE_10');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `class_id` (`class_id`) USING BTREE,
  ADD KEY `date` (`date`) USING BTREE,
  ADD KEY `disabled` (`disabled`) USING BTREE;

--
-- Indexes for table `class_tests`
--
ALTER TABLE `class_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `date` (`date`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `test` (`test`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_1`
--
ALTER TABLE `grade_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2`
--
ALTER TABLE `grade_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3`
--
ALTER TABLE `grade_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4`
--
ALTER TABLE `grade_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5`
--
ALTER TABLE `grade_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6`
--
ALTER TABLE `grade_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_7`
--
ALTER TABLE `grade_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_8`
--
ALTER TABLE `grade_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_9`
--
ALTER TABLE `grade_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_10`
--
ALTER TABLE `grade_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_11l`
--
ALTER TABLE `grade_11l`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_11s`
--
ALTER TABLE `grade_11s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_12es`
--
ALTER TABLE `grade_12es`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_12ls`
--
ALTER TABLE `grade_12ls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_teachers`
--
ALTER TABLE `class_teachers`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_tests`
--
ALTER TABLE `class_tests`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grade_1`
--
ALTER TABLE `grade_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grade_2`
--
ALTER TABLE `grade_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade_3`
--
ALTER TABLE `grade_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade_4`
--
ALTER TABLE `grade_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade_5`
--
ALTER TABLE `grade_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6`
--
ALTER TABLE `grade_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_7`
--
ALTER TABLE `grade_7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_8`
--
ALTER TABLE `grade_8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_9`
--
ALTER TABLE `grade_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_10`
--
ALTER TABLE `grade_10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade_11l`
--
ALTER TABLE `grade_11l`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_11s`
--
ALTER TABLE `grade_11s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_12es`
--
ALTER TABLE `grade_12es`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_12ls`
--
ALTER TABLE `grade_12ls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
