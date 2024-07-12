-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table els.classes: ~2 rows (approximately)
DELETE FROM `classes`;
INSERT INTO `classes` (`id`, `class`, `user_id`, `school_id`, `class_id`, `date`, `subject1`, `subject2`, `subject3`) VALUES
	(4, 'BAC2', '2024_ADM6633A2', '', 'ELS_BAC2', '2024-05-03 13:17:27', 'math', 'physics', 'english'),
	(20, 'BAC1', '2024_ADM6633A2', '', 'ELS_BAC1', '2024-05-03 19:44:50', 'English', NULL, NULL);

-- Dumping data for table els.class_students: ~0 rows (approximately)
DELETE FROM `class_students`;

-- Dumping data for table els.class_teachers: ~0 rows (approximately)
DELETE FROM `class_teachers`;

-- Dumping data for table els.class_tests: ~0 rows (approximately)
DELETE FROM `class_tests`;

-- Dumping data for table els.invoices: ~3 rows (approximately)
DELETE FROM `invoices`;
INSERT INTO `invoices` (`id`, `fullname`, `fullname_ar`, `position`, `academic_year`, `Class`, `Section`, `Fees_in_Dollar`, `Fees_in_lebanese`, `Paid_in_Dollar`, `Paid_in_lebanese`, `Remain_in_Dollar`, `Remain_in_lebanese`, `Discount_d`, `Discount`, `Total_d`, `Total`) VALUES
	(1, 'marwandaou22', 'مراعسيلاهشلا', 'admin', 2024, 'grade_2', 'section_B', '485', '4999985', '5', '5', '485', '4999985', '', '', '', ''),
	(2, 'marwan m daou1', 'شيهشسليهشلسهعي', 'user', 2024, 'grade_2', 'section_B', '4', '4', '1', '1', '4', '4', '', '', '', ''),
	(9, 'jjhdjashdkash', 'شيهشسليهشلسهعي', 'admin', 2024, 'grade_2', 'section_B', '2500', '15000000', '500', '5000000', '2000', '10000000', '20', '20', '1600.00', '8000000.00');

-- Dumping data for table els.students: ~2 rows (approximately)
DELETE FROM `students`;
INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `firstname_ar`, `middlename_ar`, `lastname_ar`, `student_id`, `parent_id`, `class_name`, `acad_year`, `dob`, `gender`, `st_type`, `section`, `date`, `image`) VALUES
	(1, 'Omar', 'Mohammad', 'Omar', 'عمر', 'محمد', 'عمر', '2024STU663A6E', '', 'grade_1', '2024', '2002-04-22', 'male', 'regular', 'sect', '2024-05-07', NULL),
	(2, 'Jana', 'Mohammad', 'Marrache', 'جنى', 'محمد', 'مراش', '2024STU663A72', '', 'grade_2', '2024', '2009-03-22', 'female', 'regular', 'sect', '2024-05-07', NULL);

-- Dumping data for table els.users: ~5 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `firstname_ar`, `middlename_ar`, `lastname_ar`, `email`, `phone_number`, `address`, `date`, `acad_year`, `dob`, `user_id`, `gender`, `school`, `position`, `st_type`, `section`, `password`, `image`, `class_name`) VALUES
	(1, 'Super', 'Admin', 'Admin', '', '', '', 'k.marrache@outlook.com', '', '', '2024-05-02 16:27:49', 2024, '', '2024_ADM6633A2', 'female', 'general', 'admin', '', '', 'sinfuliphone', '', ''),
	(3, 'omar', 'omar', 'omar', '', '', '', 'omar.alloush777@gmail.com', '', '', '2024-05-03 20:57:07', 2024, '', '2024_ADM663533', 'male', 'grade_1', 'admin', 'regular', 'section_A', '$2y$10$aXNn28jM2z36odSCxLF0rOCmo4uV1WOvdBjefF51dvfpuLzC037NG', '', ''),
	(4, 'hasan', 'hasan', 'hasan', '', '', '', 'h@gmail.com', '', '', '2024-05-03 21:00:23', 2024, '', '2024_TEA663534', 'male', 'grade_1', 'teacher', '', '', '$2y$10$QIKo3vrTGu.iuKNDqQWqIOAmhglhyXukQStTiEvfq6JSzvd2JMKra', '', ''),
	(5, 'Mohammad', 'Abdelkader', 'Marrache', 'محمد', 'عبدالقادر', 'مراش', 'simsarzada@gmail.com', '03200064', 'Beirut', '2024-05-07 19:19:20', 2024, '1974-10-10', '2024PAR663A62', 'male', '', 'parent', '', '', '$2y$10$nwbASlQX6PU7479DgRWezueHYZeIORCy8y2sICUsxRnpHfB0kTDR6', '', ''),
	(6, 'baba', 'baba', 'baba', 'حسن', 'يبىشي', 'حمود', 'baba@gmail.com', '76199171', 'jhanam el hamra', '2024-05-21 19:44:32', 2024, '2222-02-22', '2024TEA664CDD', 'male', '', 'teacher', 'sip', 'section_A', '$2y$10$lTe3MaiNTJzStedkFugpzu.PUogqlfYi9U39owf2L6k7S1URH.dfm', '', 'grade_2'),
	(7, 'Marwan', 'Mohammad', 'Daw', 'مروان', 'محمد', 'ضو', 'mohammad.daw@gmail.com', '03456789', 'Bchamoun', '2024-07-02 02:13:50', 2024, '2000-04-10', '2024TEA668346', 'male', '', 'teacher', '', 'section_A', '$2y$10$X.LroRt8jKNiBuKSN06B2.eRuKmMOd2hklO3wS4hiYS9eh91T7yFG', '', 'grade_2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
