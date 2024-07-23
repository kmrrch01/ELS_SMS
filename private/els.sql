-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 12:41 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_arabict1`
--

CREATE TABLE `grade_1_arabict1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),

  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_arabict2`
--

CREATE TABLE `grade_1_arabict2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_arabict3`
--

CREATE TABLE `grade_1_arabict3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_englisht1`
--

CREATE TABLE `grade_1_englisht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_englisht2`
--

CREATE TABLE `grade_1_englisht2` (
  `id` int(11) NOT NULL AUTO_INCREMENTC,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_englisht3`
--

CREATE TABLE `grade_1_englisht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_matht1`
--

CREATE TABLE `grade_1_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_matht2`
--

CREATE TABLE `grade_1_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_matht3`
--

CREATE TABLE `grade_1_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_religiont1`
--

CREATE TABLE `grade_1_religiont1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_religiont2`
--

CREATE TABLE `grade_1_religiont2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_religiont3`
--

CREATE TABLE `grade_1_religiont3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_sciencet1`
--

CREATE TABLE `grade_1_sciencet1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_sciencet2`
--

CREATE TABLE `grade_1_sciencet2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_1_sciencet3`
--

CREATE TABLE `grade_1_sciencet3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL UNIQUE,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_arabict1`
--

CREATE TABLE `grade_2_arabict1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_arabict2`
--

CREATE TABLE `grade_2_arabict2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_arabict3`
--

CREATE TABLE `grade_2_arabict3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_englisht1`
--

CREATE TABLE `grade_2_englisht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_englisht2`
--

CREATE TABLE `grade_2_englisht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_englisht3`
--

CREATE TABLE `grade_2_englisht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_matht1`
--

CREATE TABLE `grade_2_matht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_matht2`
--

CREATE TABLE `grade_2_matht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_matht3`
--

CREATE TABLE `grade_2_matht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_religiont1`
--

CREATE TABLE `grade_2_religiont1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_religiont2`
--

CREATE TABLE `grade_2_religiont2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_religiont3`
--

CREATE TABLE `grade_2_religiont3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_sciencet1`
--

CREATE TABLE `grade_2_sciencet1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_sciencet2`
--

CREATE TABLE `grade_2_sciencet2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_2_sciencet3`
--

CREATE TABLE `grade_2_sciencet3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_arabict1`
--

CREATE TABLE `grade_3_arabict1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_arabict2`
--

CREATE TABLE `grade_3_arabict2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_arabict3`
--

CREATE TABLE `grade_3_arabict3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_englisht1`
--

CREATE TABLE `grade_3_englisht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_englisht2`
--

CREATE TABLE `grade_3_englisht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_englisht3`
--

CREATE TABLE `grade_3_englisht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_matht1`
--

CREATE TABLE `grade_3_matht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_matht2`
--

CREATE TABLE `grade_3_matht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_matht3`
--

CREATE TABLE `grade_3_matht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_religiont1`
--

CREATE TABLE `grade_3_religiont1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_religiont2`
--

CREATE TABLE `grade_3_religiont2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_religiont3`
--

CREATE TABLE `grade_3_religiont3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_sciencet1`
--

CREATE TABLE `grade_3_sciencet1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_sciencet2`
--

CREATE TABLE `grade_3_sciencet2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_3_sciencet3`
--

CREATE TABLE `grade_3_sciencet3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_arabict1`
--

CREATE TABLE `grade_4_arabict1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_arabict2`
--

CREATE TABLE `grade_4_arabict2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_arabict3`
--

CREATE TABLE `grade_4_arabict3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_englisht1`
--

CREATE TABLE `grade_4_englisht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_englisht2`
--

CREATE TABLE `grade_4_englisht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_englisht3`
--

CREATE TABLE `grade_4_englisht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_matht1`
--

CREATE TABLE `grade_4_matht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_matht2`
--

CREATE TABLE `grade_4_matht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_matht3`
--

CREATE TABLE `grade_4_matht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_religiont1`
--

CREATE TABLE `grade_4_religiont1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_religiont2`
--

CREATE TABLE `grade_4_religiont2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_religiont3`
--

CREATE TABLE `grade_4_religiont3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_sciencet1`
--

CREATE TABLE `grade_4_sciencet1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_sciencet2`
--

CREATE TABLE `grade_4_sciencet2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_4_sciencet3`
--

CREATE TABLE `grade_4_sciencet3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_arabict1`
--

CREATE TABLE `grade_5_arabict1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_arabict2`
--

CREATE TABLE `grade_5_arabict2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_arabict3`
--

CREATE TABLE `grade_5_arabict3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_englisht1`
--

CREATE TABLE `grade_5_englisht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_englisht2`
--

CREATE TABLE `grade_5_englisht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_englisht3`
--

CREATE TABLE `grade_5_englisht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_matht1`
--

CREATE TABLE `grade_5_matht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_matht2`
--

CREATE TABLE `grade_5_matht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_matht3`
--

CREATE TABLE `grade_5_matht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_religiont1`
--

CREATE TABLE `grade_5_religiont1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_religiont2`
--

CREATE TABLE `grade_5_religiont2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_religiont3`
--

CREATE TABLE `grade_5_religiont3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_sciencet1`
--

CREATE TABLE `grade_5_sciencet1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_sciencet2`
--

CREATE TABLE `grade_5_sciencet2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_5_sciencet3`
--

CREATE TABLE `grade_5_sciencet3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_arabict1`
--

CREATE TABLE `grade_6_arabict1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_arabict2`
--

CREATE TABLE `grade_6_arabict2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_arabict3`
--

CREATE TABLE `grade_6_arabict3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_englisht1`
--

CREATE TABLE `grade_6_englisht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_englisht2`
--

CREATE TABLE `grade_6_englisht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_englisht3`
--

CREATE TABLE `grade_6_englisht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_matht1`
--

CREATE TABLE `grade_6_matht1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_matht2`
--

CREATE TABLE `grade_6_matht2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_matht3`
--

CREATE TABLE `grade_6_matht3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_religiont1`
--

CREATE TABLE `grade_6_religiont1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_religiont2`
--

CREATE TABLE `grade_6_religiont2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_religiont3`
--

CREATE TABLE `grade_6_religiont3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_sciencet1`
--

CREATE TABLE `grade_6_sciencet1` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_sciencet2`
--

CREATE TABLE `grade_6_sciencet2` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_6_sciencet3`
--

CREATE TABLE `grade_6_sciencet3` (
  `id` int(11) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `acad_year` varchar(20) NOT NULL,
  `quiz` decimal(5,2) NOT NULL,
  `homework` decimal(5,2) NOT NULL,
  `test` decimal(5,2) NOT NULL,
  `term_avg` decimal(5,2) NOT NULL,
  `term_perc` decimal(5,2) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
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
-- Indexes for dumped tables
--

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_1_arabict1`
--
ALTER TABLE `grade_1_arabict1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_1_arabict2`
--
ALTER TABLE `grade_1_arabict2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_arabict3`
--
ALTER TABLE `grade_1_arabict3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_englisht1`
--
ALTER TABLE `grade_1_englisht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_englisht2`
--
ALTER TABLE `grade_1_englisht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_englisht3`
--
ALTER TABLE `grade_1_englisht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_matht1`
--
ALTER TABLE `grade_1_matht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_matht2`
--
ALTER TABLE `grade_1_matht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_matht3`
--
ALTER TABLE `grade_1_matht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_religiont1`
--
ALTER TABLE `grade_1_religiont1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_religiont2`
--
ALTER TABLE `grade_1_religiont2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_religiont3`
--
ALTER TABLE `grade_1_religiont3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_sciencet1`
--
ALTER TABLE `grade_1_sciencet1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_sciencet2`
--
ALTER TABLE `grade_1_sciencet2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_1_sciencet3`
--
ALTER TABLE `grade_1_sciencet3`
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
-- Indexes for table `grade_2_arabict1`
--
ALTER TABLE `grade_2_arabict1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_2_arabict2`
--
ALTER TABLE `grade_2_arabict2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_arabict3`
--
ALTER TABLE `grade_2_arabict3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_englisht1`
--
ALTER TABLE `grade_2_englisht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_englisht2`
--
ALTER TABLE `grade_2_englisht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_englisht3`
--
ALTER TABLE `grade_2_englisht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_matht1`
--
ALTER TABLE `grade_2_matht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_matht2`
--
ALTER TABLE `grade_2_matht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_matht3`
--
ALTER TABLE `grade_2_matht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_religiont1`
--
ALTER TABLE `grade_2_religiont1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_religiont2`
--
ALTER TABLE `grade_2_religiont2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_religiont3`
--
ALTER TABLE `grade_2_religiont3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_sciencet1`
--
ALTER TABLE `grade_2_sciencet1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_sciencet2`
--
ALTER TABLE `grade_2_sciencet2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_2_sciencet3`
--
ALTER TABLE `grade_2_sciencet3`
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
-- Indexes for table `grade_3_arabict2`
--
ALTER TABLE `grade_3_arabict2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_arabict3`
--
ALTER TABLE `grade_3_arabict3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_englisht1`
--
ALTER TABLE `grade_3_englisht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_englisht2`
--
ALTER TABLE `grade_3_englisht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_englisht3`
--
ALTER TABLE `grade_3_englisht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_matht1`
--
ALTER TABLE `grade_3_matht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_matht2`
--
ALTER TABLE `grade_3_matht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_matht3`
--
ALTER TABLE `grade_3_matht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_religiont1`
--
ALTER TABLE `grade_3_religiont1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_religiont2`
--
ALTER TABLE `grade_3_religiont2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_religiont3`
--
ALTER TABLE `grade_3_religiont3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_sciencet1`
--
ALTER TABLE `grade_3_sciencet1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_sciencet2`
--
ALTER TABLE `grade_3_sciencet2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_3_sciencet3`
--
ALTER TABLE `grade_3_sciencet3`
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
-- Indexes for table `grade_4_arabict2`
--
ALTER TABLE `grade_4_arabict2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_arabict3`
--
ALTER TABLE `grade_4_arabict3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_englisht1`
--
ALTER TABLE `grade_4_englisht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_englisht2`
--
ALTER TABLE `grade_4_englisht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_englisht3`
--
ALTER TABLE `grade_4_englisht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_matht1`
--
ALTER TABLE `grade_4_matht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_matht2`
--
ALTER TABLE `grade_4_matht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_matht3`
--
ALTER TABLE `grade_4_matht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_religiont1`
--
ALTER TABLE `grade_4_religiont1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_religiont2`
--
ALTER TABLE `grade_4_religiont2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_religiont3`
--
ALTER TABLE `grade_4_religiont3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_sciencet1`
--
ALTER TABLE `grade_4_sciencet1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_sciencet2`
--
ALTER TABLE `grade_4_sciencet2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_4_sciencet3`
--
ALTER TABLE `grade_4_sciencet3`
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
-- Indexes for table `grade_5_arabict1`
--
ALTER TABLE `grade_5_arabict1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_arabict2`
--
ALTER TABLE `grade_5_arabict2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_arabict3`
--
ALTER TABLE `grade_5_arabict3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_englisht1`
--
ALTER TABLE `grade_5_englisht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_englisht2`
--
ALTER TABLE `grade_5_englisht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_englisht3`
--
ALTER TABLE `grade_5_englisht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_matht1`
--
ALTER TABLE `grade_5_matht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_matht2`
--
ALTER TABLE `grade_5_matht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_matht3`
--
ALTER TABLE `grade_5_matht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_religiont1`
--
ALTER TABLE `grade_5_religiont1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_religiont2`
--
ALTER TABLE `grade_5_religiont2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_religiont3`
--
ALTER TABLE `grade_5_religiont3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_sciencet1`
--
ALTER TABLE `grade_5_sciencet1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_sciencet2`
--
ALTER TABLE `grade_5_sciencet2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_5_sciencet3`
--
ALTER TABLE `grade_5_sciencet3`
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
-- Indexes for table `grade_6_arabict2`
--
ALTER TABLE `grade_6_arabict2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_arabict3`
--
ALTER TABLE `grade_6_arabict3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_englisht1`
--
ALTER TABLE `grade_6_englisht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_englisht2`
--
ALTER TABLE `grade_6_englisht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_englisht3`
--
ALTER TABLE `grade_6_englisht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_matht1`
--
ALTER TABLE `grade_6_matht1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_matht2`
--
ALTER TABLE `grade_6_matht2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_matht3`
--
ALTER TABLE `grade_6_matht3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_religiont1`
--
ALTER TABLE `grade_6_religiont1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_religiont2`
--
ALTER TABLE `grade_6_religiont2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_religiont3`
--
ALTER TABLE `grade_6_religiont3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_sciencet1`
--
ALTER TABLE `grade_6_sciencet1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_sciencet2`
--
ALTER TABLE `grade_6_sciencet2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_id` (`class_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `grade_6_sciencet3`
--
ALTER TABLE `grade_6_sciencet3`
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
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_arabict1`
--
ALTER TABLE `grade_1_arabict1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_arabict2`
--
ALTER TABLE `grade_1_arabict2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_arabict3`
--
ALTER TABLE `grade_1_arabict3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_englisht1`
--
ALTER TABLE `grade_1_englisht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_englisht2`
--
ALTER TABLE `grade_1_englisht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_englisht3`
--
ALTER TABLE `grade_1_englisht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_matht1`
--
ALTER TABLE `grade_1_matht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_religiont1`
--
ALTER TABLE `grade_1_religiont1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_religiont2`
--
ALTER TABLE `grade_1_religiont2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_religiont3`
--
ALTER TABLE `grade_1_religiont3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_sciencet1`
--
ALTER TABLE `grade_1_sciencet1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_sciencet2`
--
ALTER TABLE `grade_1_sciencet2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_1_sciencet3`
--
ALTER TABLE `grade_1_sciencet3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2`
--
ALTER TABLE `grade_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_arabict1`
--
ALTER TABLE `grade_2_arabict1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_arabict2`
--
ALTER TABLE `grade_2_arabict2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_arabict3`
--
ALTER TABLE `grade_2_arabict3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_englisht1`
--
ALTER TABLE `grade_2_englisht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_englisht2`
--
ALTER TABLE `grade_2_englisht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_englisht3`
--
ALTER TABLE `grade_2_englisht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_matht1`
--
ALTER TABLE `grade_2_matht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_matht3`
--
ALTER TABLE `grade_2_matht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_religiont1`
--
ALTER TABLE `grade_2_religiont1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_religiont2`
--
ALTER TABLE `grade_2_religiont2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_religiont3`
--
ALTER TABLE `grade_2_religiont3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_sciencet1`
--
ALTER TABLE `grade_2_sciencet1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_sciencet2`
--
ALTER TABLE `grade_2_sciencet2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_2_sciencet3`
--
ALTER TABLE `grade_2_sciencet3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3`
--
ALTER TABLE `grade_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_arabict2`
--
ALTER TABLE `grade_3_arabict2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_arabict3`
--
ALTER TABLE `grade_3_arabict3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_englisht1`
--
ALTER TABLE `grade_3_englisht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_englisht2`
--
ALTER TABLE `grade_3_englisht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_englisht3`
--
ALTER TABLE `grade_3_englisht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_matht1`
--
ALTER TABLE `grade_3_matht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_matht3`
--
ALTER TABLE `grade_3_matht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_religiont1`
--
ALTER TABLE `grade_3_religiont1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_religiont2`
--
ALTER TABLE `grade_3_religiont2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_religiont3`
--
ALTER TABLE `grade_3_religiont3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_sciencet1`
--
ALTER TABLE `grade_3_sciencet1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_sciencet2`
--
ALTER TABLE `grade_3_sciencet2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_3_sciencet3`
--
ALTER TABLE `grade_3_sciencet3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4`
--
ALTER TABLE `grade_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_arabict2`
--
ALTER TABLE `grade_4_arabict2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_arabict3`
--
ALTER TABLE `grade_4_arabict3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_englisht1`
--
ALTER TABLE `grade_4_englisht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_englisht2`
--
ALTER TABLE `grade_4_englisht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_englisht3`
--
ALTER TABLE `grade_4_englisht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_matht1`
--
ALTER TABLE `grade_4_matht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_matht2`
--
ALTER TABLE `grade_4_matht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_matht3`
--
ALTER TABLE `grade_4_matht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_religiont1`
--
ALTER TABLE `grade_4_religiont1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_religiont2`
--
ALTER TABLE `grade_4_religiont2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_religiont3`
--
ALTER TABLE `grade_4_religiont3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_sciencet1`
--
ALTER TABLE `grade_4_sciencet1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_sciencet2`
--
ALTER TABLE `grade_4_sciencet2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_4_sciencet3`
--
ALTER TABLE `grade_4_sciencet3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5`
--
ALTER TABLE `grade_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_arabict1`
--
ALTER TABLE `grade_5_arabict1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_arabict2`
--
ALTER TABLE `grade_5_arabict2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_arabict3`
--
ALTER TABLE `grade_5_arabict3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_englisht1`
--
ALTER TABLE `grade_5_englisht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_englisht2`
--
ALTER TABLE `grade_5_englisht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_englisht3`
--
ALTER TABLE `grade_5_englisht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_matht1`
--
ALTER TABLE `grade_5_matht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_matht2`
--
ALTER TABLE `grade_5_matht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_matht3`
--
ALTER TABLE `grade_5_matht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_religiont1`
--
ALTER TABLE `grade_5_religiont1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_religiont2`
--
ALTER TABLE `grade_5_religiont2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_religiont3`
--
ALTER TABLE `grade_5_religiont3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_sciencet1`
--
ALTER TABLE `grade_5_sciencet1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_sciencet2`
--
ALTER TABLE `grade_5_sciencet2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_5_sciencet3`
--
ALTER TABLE `grade_5_sciencet3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6`
--
ALTER TABLE `grade_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_arabict2`
--
ALTER TABLE `grade_6_arabict2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_arabict3`
--
ALTER TABLE `grade_6_arabict3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_englisht1`
--
ALTER TABLE `grade_6_englisht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_englisht2`
--
ALTER TABLE `grade_6_englisht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_englisht3`
--
ALTER TABLE `grade_6_englisht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_matht1`
--
ALTER TABLE `grade_6_matht1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_matht2`
--
ALTER TABLE `grade_6_matht2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_matht3`
--
ALTER TABLE `grade_6_matht3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_religiont1`
--
ALTER TABLE `grade_6_religiont1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_religiont2`
--
ALTER TABLE `grade_6_religiont2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_religiont3`
--
ALTER TABLE `grade_6_religiont3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_sciencet1`
--
ALTER TABLE `grade_6_sciencet1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_sciencet2`
--
ALTER TABLE `grade_6_sciencet2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_6_sciencet3`
--
ALTER TABLE `grade_6_sciencet3`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
