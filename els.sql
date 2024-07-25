-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: els
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class_students`
--

DROP TABLE IF EXISTS `class_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_students` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) DEFAULT NULL,
  `class_id` varchar(60) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `class_id` (`class_id`),
  KEY `disabled` (`disabled`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_students`
--

LOCK TABLES `class_students` WRITE;
/*!40000 ALTER TABLE `class_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teachers`
--

DROP TABLE IF EXISTS `class_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_teachers` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) DEFAULT NULL,
  `class_id` int(60) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `class_id` (`class_id`) USING BTREE,
  KEY `date` (`date`) USING BTREE,
  KEY `disabled` (`disabled`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teachers`
--

LOCK TABLES `class_teachers` WRITE;
/*!40000 ALTER TABLE `class_teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_tests`
--

DROP TABLE IF EXISTS `class_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_tests` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `test` varchar(60) NOT NULL DEFAULT '0',
  `test_id` varchar(60) NOT NULL DEFAULT '0',
  `user_id` varchar(60) DEFAULT NULL,
  `class_id` int(60) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `class_id` (`class_id`),
  KEY `date` (`date`),
  KEY `disabled` (`disabled`),
  KEY `test` (`test`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_tests`
--

LOCK TABLES `class_tests` WRITE;
/*!40000 ALTER TABLE `class_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(30) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `subject1` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `subject2` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `subject3` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (68,'grade_1','2024_ADM6633A2','','ELS_GRADE_1','2024-07-10 02:47:41','',NULL,NULL),(72,'grade_2','2024_ADM6633A2','','ELS_GRADE_2','2024-07-15 20:11:59','',NULL,NULL),(73,'grade_3','2024_ADM6633A2','','ELS_GRADE_3','2024-07-15 20:12:03','',NULL,NULL),(74,'grade_4','2024_ADM6633A2','','ELS_GRADE_4','2024-07-15 20:38:43','',NULL,NULL),(75,'grade_5','2024_ADM6633A2','','ELS_GRADE_5','2024-07-15 20:38:52','',NULL,NULL),(76,'grade_6','2024_ADM6633A2','','ELS_GRADE_6','2024-07-15 20:38:59','',NULL,NULL),(77,'grade_7','2024_ADM6633A2','','ELS_GRADE_7','2024-07-15 20:39:05','',NULL,NULL),(78,'grade_8','2024_ADM6633A2','','ELS_GRADE_8','2024-07-15 20:39:16','',NULL,NULL),(79,'grade_9','2024_ADM6633A2','','ELS_GRADE_9','2024-07-15 20:39:38','',NULL,NULL),(80,'grade_10','2024_ADM6633A2','','ELS_GRADE_10','2024-07-15 20:40:14','',NULL,NULL),(81,'grade_11l','2024_ADM6633A2','','ELS_GRADE_11L','2024-07-15 20:40:31','',NULL,NULL),(82,'grade_11s','2024_ADM6633A2','','ELS_GRADE_11S','2024-07-15 20:40:59','',NULL,NULL),(83,'grade_12es','2024_ADM6633A2','','ELS_GRADE_12ES','2024-07-15 20:42:03','',NULL,NULL),(84,'grade_12ls','2024_ADM6633A2','','ELS_GRADE_12LS','2024-07-15 20:42:16','',NULL,NULL);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1`
--

DROP TABLE IF EXISTS `grade_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(60) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `english` decimal(5,2) DEFAULT NULL,
  `math` decimal(5,2) DEFAULT NULL,
  `arabic` decimal(5,2) DEFAULT NULL,
  `science` decimal(5,2) DEFAULT NULL,
  `religion` decimal(5,2) DEFAULT NULL,
  `acad_year` varchar(60) NOT NULL,
  `section` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1`
--

LOCK TABLES `grade_1` WRITE;
/*!40000 ALTER TABLE `grade_1` DISABLE KEYS */;
INSERT INTO `grade_1` VALUES (1,'ELS_GRADE_1','2024STU66904F','guehgu giroiub gurebi','2024_ADM6633A2',4.00,5.00,1.00,1.00,12.00,'','','','2024-07-16 03:18:29'),(2,'ELS_GRADE_1','2024STU669050','karim karim karim','2024_ADM6633A2',3.00,2.00,2.00,1.00,12.00,'','','','2024-07-16 03:18:29'),(3,'ELS_GRADE_1','2024STU669565','keoj ingoin oingoiqn','2024_ADM6633A2',3.00,1.00,3.00,1.00,12.00,'2024','','','2024-07-16 03:18:29'),(4,'ELS_GRADE_1','2024STU66956A','rimmm rimm rimm','2024_ADM6633A2',4.00,1.00,4.00,1.00,12.00,'2024','','','2024-07-16 03:18:29'),(5,'ELS_GRADE_1','2024STU669938','kr krk r','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 18:44:40'),(6,'ELS_GRADE_1','2024STU669939','kr krk r','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 18:50:04'),(7,'ELS_GRADE_1','2024STU66993D','KR KRK RK','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 19:07:19'),(8,'ELS_GRADE_1','2024STU66993E','KR KRK RK','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 19:09:59'),(9,'ELS_GRADE_1','2024STU66993E','KR KRK RK','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 19:10:04'),(10,'ELS_GRADE_1','2024STU66993E','KR KRK RK','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 19:11:28'),(11,'ELS_GRADE_1','2024STU66993E','KR KRK RK','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 19:11:31'),(12,'ELS_GRADE_1','2024STU66993E','KR KRK RK','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 19:11:44'),(13,'ELS_GRADE_1','2024STU669940','testing testing testing','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 19:20:50'),(14,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10`
--

DROP TABLE IF EXISTS `grade_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10`
--

LOCK TABLES `grade_10` WRITE;
/*!40000 ALTER TABLE `grade_10` DISABLE KEYS */;
INSERT INTO `grade_10` VALUES (1,'ELS_GRADE_10','omar omar omar','2024STU669112','2024TEA668DDF',NULL,NULL,NULL,NULL,NULL,'','','','2024-07-16 03:18:29');
/*!40000 ALTER TABLE `grade_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_arabt1`
--

DROP TABLE IF EXISTS `grade_10_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_arabt1`
--

LOCK TABLES `grade_10_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_10_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_arabt2`
--

DROP TABLE IF EXISTS `grade_10_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_arabt2`
--

LOCK TABLES `grade_10_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_10_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_arabt3`
--

DROP TABLE IF EXISTS `grade_10_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_arabt3`
--

LOCK TABLES `grade_10_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_10_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_biot1`
--

DROP TABLE IF EXISTS `grade_10_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_biot1`
--

LOCK TABLES `grade_10_biot1` WRITE;
/*!40000 ALTER TABLE `grade_10_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_biot2`
--

DROP TABLE IF EXISTS `grade_10_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_biot2`
--

LOCK TABLES `grade_10_biot2` WRITE;
/*!40000 ALTER TABLE `grade_10_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_biot3`
--

DROP TABLE IF EXISTS `grade_10_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_biot3`
--

LOCK TABLES `grade_10_biot3` WRITE;
/*!40000 ALTER TABLE `grade_10_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_chemt1`
--

DROP TABLE IF EXISTS `grade_10_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_chemt1`
--

LOCK TABLES `grade_10_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_10_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_chemt2`
--

DROP TABLE IF EXISTS `grade_10_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_chemt2`
--

LOCK TABLES `grade_10_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_10_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_chemt3`
--

DROP TABLE IF EXISTS `grade_10_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_chemt3`
--

LOCK TABLES `grade_10_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_10_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_civt1`
--

DROP TABLE IF EXISTS `grade_10_civt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_civt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_civt1`
--

LOCK TABLES `grade_10_civt1` WRITE;
/*!40000 ALTER TABLE `grade_10_civt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_civt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_civt2`
--

DROP TABLE IF EXISTS `grade_10_civt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_civt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_civt2`
--

LOCK TABLES `grade_10_civt2` WRITE;
/*!40000 ALTER TABLE `grade_10_civt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_civt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_civt3`
--

DROP TABLE IF EXISTS `grade_10_civt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_civt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_civt3`
--

LOCK TABLES `grade_10_civt3` WRITE;
/*!40000 ALTER TABLE `grade_10_civt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_civt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_ecot1`
--

DROP TABLE IF EXISTS `grade_10_ecot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_ecot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_ecot1`
--

LOCK TABLES `grade_10_ecot1` WRITE;
/*!40000 ALTER TABLE `grade_10_ecot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_ecot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_ecot2`
--

DROP TABLE IF EXISTS `grade_10_ecot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_ecot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_ecot2`
--

LOCK TABLES `grade_10_ecot2` WRITE;
/*!40000 ALTER TABLE `grade_10_ecot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_ecot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_ecot3`
--

DROP TABLE IF EXISTS `grade_10_ecot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_ecot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_ecot3`
--

LOCK TABLES `grade_10_ecot3` WRITE;
/*!40000 ALTER TABLE `grade_10_ecot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_ecot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_engt1`
--

DROP TABLE IF EXISTS `grade_10_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_engt1`
--

LOCK TABLES `grade_10_engt1` WRITE;
/*!40000 ALTER TABLE `grade_10_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_engt2`
--

DROP TABLE IF EXISTS `grade_10_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_engt2`
--

LOCK TABLES `grade_10_engt2` WRITE;
/*!40000 ALTER TABLE `grade_10_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_engt3`
--

DROP TABLE IF EXISTS `grade_10_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_engt3`
--

LOCK TABLES `grade_10_engt3` WRITE;
/*!40000 ALTER TABLE `grade_10_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_geot1`
--

DROP TABLE IF EXISTS `grade_10_geot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_geot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_geot1`
--

LOCK TABLES `grade_10_geot1` WRITE;
/*!40000 ALTER TABLE `grade_10_geot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_geot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_geot2`
--

DROP TABLE IF EXISTS `grade_10_geot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_geot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_geot2`
--

LOCK TABLES `grade_10_geot2` WRITE;
/*!40000 ALTER TABLE `grade_10_geot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_geot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_geot3`
--

DROP TABLE IF EXISTS `grade_10_geot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_geot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_geot3`
--

LOCK TABLES `grade_10_geot3` WRITE;
/*!40000 ALTER TABLE `grade_10_geot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_geot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_historyt1`
--

DROP TABLE IF EXISTS `grade_10_historyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_historyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_historyt1`
--

LOCK TABLES `grade_10_historyt1` WRITE;
/*!40000 ALTER TABLE `grade_10_historyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_historyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_historyt2`
--

DROP TABLE IF EXISTS `grade_10_historyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_historyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_historyt2`
--

LOCK TABLES `grade_10_historyt2` WRITE;
/*!40000 ALTER TABLE `grade_10_historyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_historyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_historyt3`
--

DROP TABLE IF EXISTS `grade_10_historyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_historyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_historyt3`
--

LOCK TABLES `grade_10_historyt3` WRITE;
/*!40000 ALTER TABLE `grade_10_historyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_historyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_matht1`
--

DROP TABLE IF EXISTS `grade_10_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_matht1`
--

LOCK TABLES `grade_10_matht1` WRITE;
/*!40000 ALTER TABLE `grade_10_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_matht2`
--

DROP TABLE IF EXISTS `grade_10_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_matht2`
--

LOCK TABLES `grade_10_matht2` WRITE;
/*!40000 ALTER TABLE `grade_10_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_matht3`
--

DROP TABLE IF EXISTS `grade_10_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_matht3`
--

LOCK TABLES `grade_10_matht3` WRITE;
/*!40000 ALTER TABLE `grade_10_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_phyt1`
--

DROP TABLE IF EXISTS `grade_10_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_phyt1`
--

LOCK TABLES `grade_10_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_10_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_phyt2`
--

DROP TABLE IF EXISTS `grade_10_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_phyt2`
--

LOCK TABLES `grade_10_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_10_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_phyt3`
--

DROP TABLE IF EXISTS `grade_10_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_phyt3`
--

LOCK TABLES `grade_10_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_10_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_sociot1`
--

DROP TABLE IF EXISTS `grade_10_sociot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_sociot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_sociot1`
--

LOCK TABLES `grade_10_sociot1` WRITE;
/*!40000 ALTER TABLE `grade_10_sociot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_sociot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_sociot2`
--

DROP TABLE IF EXISTS `grade_10_sociot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_sociot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_sociot2`
--

LOCK TABLES `grade_10_sociot2` WRITE;
/*!40000 ALTER TABLE `grade_10_sociot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_sociot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_10_sociot3`
--

DROP TABLE IF EXISTS `grade_10_sociot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_10_sociot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_10_sociot3`
--

LOCK TABLES `grade_10_sociot3` WRITE;
/*!40000 ALTER TABLE `grade_10_sociot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_10_sociot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l`
--

DROP TABLE IF EXISTS `grade_11l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l`
--

LOCK TABLES `grade_11l` WRITE;
/*!40000 ALTER TABLE `grade_11l` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_arabt1`
--

DROP TABLE IF EXISTS `grade_11l_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_arabt1`
--

LOCK TABLES `grade_11l_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_11l_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_arabt2`
--

DROP TABLE IF EXISTS `grade_11l_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_arabt2`
--

LOCK TABLES `grade_11l_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_11l_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_arabt3`
--

DROP TABLE IF EXISTS `grade_11l_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_arabt3`
--

LOCK TABLES `grade_11l_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_11l_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_biot1`
--

DROP TABLE IF EXISTS `grade_11l_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_biot1`
--

LOCK TABLES `grade_11l_biot1` WRITE;
/*!40000 ALTER TABLE `grade_11l_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_biot2`
--

DROP TABLE IF EXISTS `grade_11l_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_biot2`
--

LOCK TABLES `grade_11l_biot2` WRITE;
/*!40000 ALTER TABLE `grade_11l_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_biot3`
--

DROP TABLE IF EXISTS `grade_11l_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_biot3`
--

LOCK TABLES `grade_11l_biot3` WRITE;
/*!40000 ALTER TABLE `grade_11l_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_chemt1`
--

DROP TABLE IF EXISTS `grade_11l_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_chemt1`
--

LOCK TABLES `grade_11l_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_11l_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_chemt2`
--

DROP TABLE IF EXISTS `grade_11l_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_chemt2`
--

LOCK TABLES `grade_11l_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_11l_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_chemt3`
--

DROP TABLE IF EXISTS `grade_11l_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_chemt3`
--

LOCK TABLES `grade_11l_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_11l_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_civt1`
--

DROP TABLE IF EXISTS `grade_11l_civt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_civt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_civt1`
--

LOCK TABLES `grade_11l_civt1` WRITE;
/*!40000 ALTER TABLE `grade_11l_civt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_civt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_civt2`
--

DROP TABLE IF EXISTS `grade_11l_civt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_civt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_civt2`
--

LOCK TABLES `grade_11l_civt2` WRITE;
/*!40000 ALTER TABLE `grade_11l_civt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_civt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_civt3`
--

DROP TABLE IF EXISTS `grade_11l_civt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_civt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_civt3`
--

LOCK TABLES `grade_11l_civt3` WRITE;
/*!40000 ALTER TABLE `grade_11l_civt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_civt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_ecot1`
--

DROP TABLE IF EXISTS `grade_11l_ecot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_ecot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_ecot1`
--

LOCK TABLES `grade_11l_ecot1` WRITE;
/*!40000 ALTER TABLE `grade_11l_ecot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_ecot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_ecot2`
--

DROP TABLE IF EXISTS `grade_11l_ecot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_ecot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_ecot2`
--

LOCK TABLES `grade_11l_ecot2` WRITE;
/*!40000 ALTER TABLE `grade_11l_ecot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_ecot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_ecot3`
--

DROP TABLE IF EXISTS `grade_11l_ecot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_ecot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_ecot3`
--

LOCK TABLES `grade_11l_ecot3` WRITE;
/*!40000 ALTER TABLE `grade_11l_ecot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_ecot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_engt1`
--

DROP TABLE IF EXISTS `grade_11l_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_engt1`
--

LOCK TABLES `grade_11l_engt1` WRITE;
/*!40000 ALTER TABLE `grade_11l_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_engt2`
--

DROP TABLE IF EXISTS `grade_11l_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_engt2`
--

LOCK TABLES `grade_11l_engt2` WRITE;
/*!40000 ALTER TABLE `grade_11l_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_engt3`
--

DROP TABLE IF EXISTS `grade_11l_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_engt3`
--

LOCK TABLES `grade_11l_engt3` WRITE;
/*!40000 ALTER TABLE `grade_11l_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_geot1`
--

DROP TABLE IF EXISTS `grade_11l_geot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_geot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_geot1`
--

LOCK TABLES `grade_11l_geot1` WRITE;
/*!40000 ALTER TABLE `grade_11l_geot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_geot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_geot2`
--

DROP TABLE IF EXISTS `grade_11l_geot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_geot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_geot2`
--

LOCK TABLES `grade_11l_geot2` WRITE;
/*!40000 ALTER TABLE `grade_11l_geot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_geot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_geot3`
--

DROP TABLE IF EXISTS `grade_11l_geot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_geot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_geot3`
--

LOCK TABLES `grade_11l_geot3` WRITE;
/*!40000 ALTER TABLE `grade_11l_geot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_geot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_historyt1`
--

DROP TABLE IF EXISTS `grade_11l_historyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_historyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_historyt1`
--

LOCK TABLES `grade_11l_historyt1` WRITE;
/*!40000 ALTER TABLE `grade_11l_historyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_historyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_historyt2`
--

DROP TABLE IF EXISTS `grade_11l_historyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_historyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_historyt2`
--

LOCK TABLES `grade_11l_historyt2` WRITE;
/*!40000 ALTER TABLE `grade_11l_historyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_historyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_historyt3`
--

DROP TABLE IF EXISTS `grade_11l_historyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_historyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_historyt3`
--

LOCK TABLES `grade_11l_historyt3` WRITE;
/*!40000 ALTER TABLE `grade_11l_historyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_historyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_matht1`
--

DROP TABLE IF EXISTS `grade_11l_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_matht1`
--

LOCK TABLES `grade_11l_matht1` WRITE;
/*!40000 ALTER TABLE `grade_11l_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_matht2`
--

DROP TABLE IF EXISTS `grade_11l_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_matht2`
--

LOCK TABLES `grade_11l_matht2` WRITE;
/*!40000 ALTER TABLE `grade_11l_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_matht3`
--

DROP TABLE IF EXISTS `grade_11l_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_matht3`
--

LOCK TABLES `grade_11l_matht3` WRITE;
/*!40000 ALTER TABLE `grade_11l_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_philot1`
--

DROP TABLE IF EXISTS `grade_11l_philot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_philot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_philot1`
--

LOCK TABLES `grade_11l_philot1` WRITE;
/*!40000 ALTER TABLE `grade_11l_philot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_philot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_philot2`
--

DROP TABLE IF EXISTS `grade_11l_philot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_philot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_philot2`
--

LOCK TABLES `grade_11l_philot2` WRITE;
/*!40000 ALTER TABLE `grade_11l_philot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_philot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_philot3`
--

DROP TABLE IF EXISTS `grade_11l_philot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_philot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_philot3`
--

LOCK TABLES `grade_11l_philot3` WRITE;
/*!40000 ALTER TABLE `grade_11l_philot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_philot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_phyt1`
--

DROP TABLE IF EXISTS `grade_11l_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_phyt1`
--

LOCK TABLES `grade_11l_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_11l_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_phyt2`
--

DROP TABLE IF EXISTS `grade_11l_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_phyt2`
--

LOCK TABLES `grade_11l_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_11l_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_phyt3`
--

DROP TABLE IF EXISTS `grade_11l_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_phyt3`
--

LOCK TABLES `grade_11l_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_11l_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_sociot1`
--

DROP TABLE IF EXISTS `grade_11l_sociot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_sociot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_sociot1`
--

LOCK TABLES `grade_11l_sociot1` WRITE;
/*!40000 ALTER TABLE `grade_11l_sociot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_sociot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_sociot2`
--

DROP TABLE IF EXISTS `grade_11l_sociot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_sociot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_sociot2`
--

LOCK TABLES `grade_11l_sociot2` WRITE;
/*!40000 ALTER TABLE `grade_11l_sociot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_sociot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11l_sociot3`
--

DROP TABLE IF EXISTS `grade_11l_sociot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11l_sociot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11l_sociot3`
--

LOCK TABLES `grade_11l_sociot3` WRITE;
/*!40000 ALTER TABLE `grade_11l_sociot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11l_sociot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s`
--

DROP TABLE IF EXISTS `grade_11s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s`
--

LOCK TABLES `grade_11s` WRITE;
/*!40000 ALTER TABLE `grade_11s` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_arabt1`
--

DROP TABLE IF EXISTS `grade_11s_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_arabt1`
--

LOCK TABLES `grade_11s_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_11s_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_arabt2`
--

DROP TABLE IF EXISTS `grade_11s_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_arabt2`
--

LOCK TABLES `grade_11s_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_11s_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_arabt3`
--

DROP TABLE IF EXISTS `grade_11s_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_arabt3`
--

LOCK TABLES `grade_11s_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_11s_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_biot1`
--

DROP TABLE IF EXISTS `grade_11s_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_biot1`
--

LOCK TABLES `grade_11s_biot1` WRITE;
/*!40000 ALTER TABLE `grade_11s_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_biot2`
--

DROP TABLE IF EXISTS `grade_11s_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_biot2`
--

LOCK TABLES `grade_11s_biot2` WRITE;
/*!40000 ALTER TABLE `grade_11s_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_biot3`
--

DROP TABLE IF EXISTS `grade_11s_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_biot3`
--

LOCK TABLES `grade_11s_biot3` WRITE;
/*!40000 ALTER TABLE `grade_11s_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_chemt1`
--

DROP TABLE IF EXISTS `grade_11s_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_chemt1`
--

LOCK TABLES `grade_11s_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_11s_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_chemt2`
--

DROP TABLE IF EXISTS `grade_11s_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_chemt2`
--

LOCK TABLES `grade_11s_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_11s_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_chemt3`
--

DROP TABLE IF EXISTS `grade_11s_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_chemt3`
--

LOCK TABLES `grade_11s_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_11s_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_civt1`
--

DROP TABLE IF EXISTS `grade_11s_civt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_civt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_civt1`
--

LOCK TABLES `grade_11s_civt1` WRITE;
/*!40000 ALTER TABLE `grade_11s_civt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_civt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_civt2`
--

DROP TABLE IF EXISTS `grade_11s_civt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_civt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_civt2`
--

LOCK TABLES `grade_11s_civt2` WRITE;
/*!40000 ALTER TABLE `grade_11s_civt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_civt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_civt3`
--

DROP TABLE IF EXISTS `grade_11s_civt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_civt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_civt3`
--

LOCK TABLES `grade_11s_civt3` WRITE;
/*!40000 ALTER TABLE `grade_11s_civt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_civt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_ecot1`
--

DROP TABLE IF EXISTS `grade_11s_ecot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_ecot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_ecot1`
--

LOCK TABLES `grade_11s_ecot1` WRITE;
/*!40000 ALTER TABLE `grade_11s_ecot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_ecot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_ecot2`
--

DROP TABLE IF EXISTS `grade_11s_ecot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_ecot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_ecot2`
--

LOCK TABLES `grade_11s_ecot2` WRITE;
/*!40000 ALTER TABLE `grade_11s_ecot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_ecot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_ecot3`
--

DROP TABLE IF EXISTS `grade_11s_ecot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_ecot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_ecot3`
--

LOCK TABLES `grade_11s_ecot3` WRITE;
/*!40000 ALTER TABLE `grade_11s_ecot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_ecot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_engt1`
--

DROP TABLE IF EXISTS `grade_11s_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_engt1`
--

LOCK TABLES `grade_11s_engt1` WRITE;
/*!40000 ALTER TABLE `grade_11s_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_engt2`
--

DROP TABLE IF EXISTS `grade_11s_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_engt2`
--

LOCK TABLES `grade_11s_engt2` WRITE;
/*!40000 ALTER TABLE `grade_11s_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_engt3`
--

DROP TABLE IF EXISTS `grade_11s_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_engt3`
--

LOCK TABLES `grade_11s_engt3` WRITE;
/*!40000 ALTER TABLE `grade_11s_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_geot1`
--

DROP TABLE IF EXISTS `grade_11s_geot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_geot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_geot1`
--

LOCK TABLES `grade_11s_geot1` WRITE;
/*!40000 ALTER TABLE `grade_11s_geot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_geot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_geot2`
--

DROP TABLE IF EXISTS `grade_11s_geot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_geot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_geot2`
--

LOCK TABLES `grade_11s_geot2` WRITE;
/*!40000 ALTER TABLE `grade_11s_geot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_geot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_geot3`
--

DROP TABLE IF EXISTS `grade_11s_geot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_geot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_geot3`
--

LOCK TABLES `grade_11s_geot3` WRITE;
/*!40000 ALTER TABLE `grade_11s_geot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_geot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_historyt1`
--

DROP TABLE IF EXISTS `grade_11s_historyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_historyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_historyt1`
--

LOCK TABLES `grade_11s_historyt1` WRITE;
/*!40000 ALTER TABLE `grade_11s_historyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_historyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_historyt2`
--

DROP TABLE IF EXISTS `grade_11s_historyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_historyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_historyt2`
--

LOCK TABLES `grade_11s_historyt2` WRITE;
/*!40000 ALTER TABLE `grade_11s_historyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_historyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_historyt3`
--

DROP TABLE IF EXISTS `grade_11s_historyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_historyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_historyt3`
--

LOCK TABLES `grade_11s_historyt3` WRITE;
/*!40000 ALTER TABLE `grade_11s_historyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_historyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_matht1`
--

DROP TABLE IF EXISTS `grade_11s_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_matht1`
--

LOCK TABLES `grade_11s_matht1` WRITE;
/*!40000 ALTER TABLE `grade_11s_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_matht2`
--

DROP TABLE IF EXISTS `grade_11s_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_matht2`
--

LOCK TABLES `grade_11s_matht2` WRITE;
/*!40000 ALTER TABLE `grade_11s_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_matht3`
--

DROP TABLE IF EXISTS `grade_11s_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_matht3`
--

LOCK TABLES `grade_11s_matht3` WRITE;
/*!40000 ALTER TABLE `grade_11s_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_philot1`
--

DROP TABLE IF EXISTS `grade_11s_philot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_philot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_philot1`
--

LOCK TABLES `grade_11s_philot1` WRITE;
/*!40000 ALTER TABLE `grade_11s_philot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_philot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_philot2`
--

DROP TABLE IF EXISTS `grade_11s_philot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_philot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_philot2`
--

LOCK TABLES `grade_11s_philot2` WRITE;
/*!40000 ALTER TABLE `grade_11s_philot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_philot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_philot3`
--

DROP TABLE IF EXISTS `grade_11s_philot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_philot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_philot3`
--

LOCK TABLES `grade_11s_philot3` WRITE;
/*!40000 ALTER TABLE `grade_11s_philot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_philot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_phyt1`
--

DROP TABLE IF EXISTS `grade_11s_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_phyt1`
--

LOCK TABLES `grade_11s_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_11s_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_phyt2`
--

DROP TABLE IF EXISTS `grade_11s_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_phyt2`
--

LOCK TABLES `grade_11s_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_11s_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_phyt3`
--

DROP TABLE IF EXISTS `grade_11s_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_phyt3`
--

LOCK TABLES `grade_11s_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_11s_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_sociot1`
--

DROP TABLE IF EXISTS `grade_11s_sociot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_sociot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_sociot1`
--

LOCK TABLES `grade_11s_sociot1` WRITE;
/*!40000 ALTER TABLE `grade_11s_sociot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_sociot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_sociot2`
--

DROP TABLE IF EXISTS `grade_11s_sociot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_sociot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_sociot2`
--

LOCK TABLES `grade_11s_sociot2` WRITE;
/*!40000 ALTER TABLE `grade_11s_sociot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_sociot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_11s_sociot3`
--

DROP TABLE IF EXISTS `grade_11s_sociot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_11s_sociot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_11s_sociot3`
--

LOCK TABLES `grade_11s_sociot3` WRITE;
/*!40000 ALTER TABLE `grade_11s_sociot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_11s_sociot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es`
--

DROP TABLE IF EXISTS `grade_12es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es`
--

LOCK TABLES `grade_12es` WRITE;
/*!40000 ALTER TABLE `grade_12es` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_arabt1`
--

DROP TABLE IF EXISTS `grade_12es_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_arabt1`
--

LOCK TABLES `grade_12es_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_12es_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_arabt2`
--

DROP TABLE IF EXISTS `grade_12es_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_arabt2`
--

LOCK TABLES `grade_12es_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_12es_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_arabt3`
--

DROP TABLE IF EXISTS `grade_12es_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_arabt3`
--

LOCK TABLES `grade_12es_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_12es_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_biot1`
--

DROP TABLE IF EXISTS `grade_12es_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_biot1`
--

LOCK TABLES `grade_12es_biot1` WRITE;
/*!40000 ALTER TABLE `grade_12es_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_biot2`
--

DROP TABLE IF EXISTS `grade_12es_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_biot2`
--

LOCK TABLES `grade_12es_biot2` WRITE;
/*!40000 ALTER TABLE `grade_12es_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_biot3`
--

DROP TABLE IF EXISTS `grade_12es_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_biot3`
--

LOCK TABLES `grade_12es_biot3` WRITE;
/*!40000 ALTER TABLE `grade_12es_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_chemt1`
--

DROP TABLE IF EXISTS `grade_12es_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_chemt1`
--

LOCK TABLES `grade_12es_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_12es_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_chemt2`
--

DROP TABLE IF EXISTS `grade_12es_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_chemt2`
--

LOCK TABLES `grade_12es_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_12es_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_chemt3`
--

DROP TABLE IF EXISTS `grade_12es_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_chemt3`
--

LOCK TABLES `grade_12es_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_12es_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_civt1`
--

DROP TABLE IF EXISTS `grade_12es_civt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_civt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_civt1`
--

LOCK TABLES `grade_12es_civt1` WRITE;
/*!40000 ALTER TABLE `grade_12es_civt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_civt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_civt2`
--

DROP TABLE IF EXISTS `grade_12es_civt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_civt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_civt2`
--

LOCK TABLES `grade_12es_civt2` WRITE;
/*!40000 ALTER TABLE `grade_12es_civt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_civt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_civt3`
--

DROP TABLE IF EXISTS `grade_12es_civt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_civt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_civt3`
--

LOCK TABLES `grade_12es_civt3` WRITE;
/*!40000 ALTER TABLE `grade_12es_civt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_civt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_ecot1`
--

DROP TABLE IF EXISTS `grade_12es_ecot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_ecot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_ecot1`
--

LOCK TABLES `grade_12es_ecot1` WRITE;
/*!40000 ALTER TABLE `grade_12es_ecot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_ecot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_ecot2`
--

DROP TABLE IF EXISTS `grade_12es_ecot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_ecot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_ecot2`
--

LOCK TABLES `grade_12es_ecot2` WRITE;
/*!40000 ALTER TABLE `grade_12es_ecot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_ecot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_ecot3`
--

DROP TABLE IF EXISTS `grade_12es_ecot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_ecot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_ecot3`
--

LOCK TABLES `grade_12es_ecot3` WRITE;
/*!40000 ALTER TABLE `grade_12es_ecot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_ecot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_engt1`
--

DROP TABLE IF EXISTS `grade_12es_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_engt1`
--

LOCK TABLES `grade_12es_engt1` WRITE;
/*!40000 ALTER TABLE `grade_12es_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_engt2`
--

DROP TABLE IF EXISTS `grade_12es_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_engt2`
--

LOCK TABLES `grade_12es_engt2` WRITE;
/*!40000 ALTER TABLE `grade_12es_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_engt3`
--

DROP TABLE IF EXISTS `grade_12es_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_engt3`
--

LOCK TABLES `grade_12es_engt3` WRITE;
/*!40000 ALTER TABLE `grade_12es_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_geot1`
--

DROP TABLE IF EXISTS `grade_12es_geot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_geot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_geot1`
--

LOCK TABLES `grade_12es_geot1` WRITE;
/*!40000 ALTER TABLE `grade_12es_geot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_geot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_geot2`
--

DROP TABLE IF EXISTS `grade_12es_geot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_geot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_geot2`
--

LOCK TABLES `grade_12es_geot2` WRITE;
/*!40000 ALTER TABLE `grade_12es_geot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_geot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_geot3`
--

DROP TABLE IF EXISTS `grade_12es_geot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_geot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_geot3`
--

LOCK TABLES `grade_12es_geot3` WRITE;
/*!40000 ALTER TABLE `grade_12es_geot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_geot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_historyt1`
--

DROP TABLE IF EXISTS `grade_12es_historyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_historyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_historyt1`
--

LOCK TABLES `grade_12es_historyt1` WRITE;
/*!40000 ALTER TABLE `grade_12es_historyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_historyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_historyt2`
--

DROP TABLE IF EXISTS `grade_12es_historyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_historyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_historyt2`
--

LOCK TABLES `grade_12es_historyt2` WRITE;
/*!40000 ALTER TABLE `grade_12es_historyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_historyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_historyt3`
--

DROP TABLE IF EXISTS `grade_12es_historyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_historyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_historyt3`
--

LOCK TABLES `grade_12es_historyt3` WRITE;
/*!40000 ALTER TABLE `grade_12es_historyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_historyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_matht1`
--

DROP TABLE IF EXISTS `grade_12es_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_matht1`
--

LOCK TABLES `grade_12es_matht1` WRITE;
/*!40000 ALTER TABLE `grade_12es_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_matht2`
--

DROP TABLE IF EXISTS `grade_12es_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_matht2`
--

LOCK TABLES `grade_12es_matht2` WRITE;
/*!40000 ALTER TABLE `grade_12es_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_matht3`
--

DROP TABLE IF EXISTS `grade_12es_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_matht3`
--

LOCK TABLES `grade_12es_matht3` WRITE;
/*!40000 ALTER TABLE `grade_12es_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_philot1`
--

DROP TABLE IF EXISTS `grade_12es_philot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_philot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_philot1`
--

LOCK TABLES `grade_12es_philot1` WRITE;
/*!40000 ALTER TABLE `grade_12es_philot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_philot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_philot2`
--

DROP TABLE IF EXISTS `grade_12es_philot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_philot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_philot2`
--

LOCK TABLES `grade_12es_philot2` WRITE;
/*!40000 ALTER TABLE `grade_12es_philot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_philot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_philot3`
--

DROP TABLE IF EXISTS `grade_12es_philot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_philot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_philot3`
--

LOCK TABLES `grade_12es_philot3` WRITE;
/*!40000 ALTER TABLE `grade_12es_philot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_philot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_phyt1`
--

DROP TABLE IF EXISTS `grade_12es_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_phyt1`
--

LOCK TABLES `grade_12es_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_12es_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_phyt2`
--

DROP TABLE IF EXISTS `grade_12es_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_phyt2`
--

LOCK TABLES `grade_12es_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_12es_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_phyt3`
--

DROP TABLE IF EXISTS `grade_12es_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_phyt3`
--

LOCK TABLES `grade_12es_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_12es_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_sociot1`
--

DROP TABLE IF EXISTS `grade_12es_sociot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_sociot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_sociot1`
--

LOCK TABLES `grade_12es_sociot1` WRITE;
/*!40000 ALTER TABLE `grade_12es_sociot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_sociot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_sociot2`
--

DROP TABLE IF EXISTS `grade_12es_sociot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_sociot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_sociot2`
--

LOCK TABLES `grade_12es_sociot2` WRITE;
/*!40000 ALTER TABLE `grade_12es_sociot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_sociot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12es_sociot3`
--

DROP TABLE IF EXISTS `grade_12es_sociot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12es_sociot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12es_sociot3`
--

LOCK TABLES `grade_12es_sociot3` WRITE;
/*!40000 ALTER TABLE `grade_12es_sociot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12es_sociot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls`
--

DROP TABLE IF EXISTS `grade_12ls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls`
--

LOCK TABLES `grade_12ls` WRITE;
/*!40000 ALTER TABLE `grade_12ls` DISABLE KEYS */;
INSERT INTO `grade_12ls` VALUES (1,'ELS_GRADE_12LS','c c c','2024STU6695BD','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','sect','regu','2024-07-16 03:22:36');
/*!40000 ALTER TABLE `grade_12ls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_arabt1`
--

DROP TABLE IF EXISTS `grade_12ls_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_arabt1`
--

LOCK TABLES `grade_12ls_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_arabt2`
--

DROP TABLE IF EXISTS `grade_12ls_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_arabt2`
--

LOCK TABLES `grade_12ls_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_arabt3`
--

DROP TABLE IF EXISTS `grade_12ls_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_arabt3`
--

LOCK TABLES `grade_12ls_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_biot1`
--

DROP TABLE IF EXISTS `grade_12ls_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_biot1`
--

LOCK TABLES `grade_12ls_biot1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_biot2`
--

DROP TABLE IF EXISTS `grade_12ls_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_biot2`
--

LOCK TABLES `grade_12ls_biot2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_biot3`
--

DROP TABLE IF EXISTS `grade_12ls_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_biot3`
--

LOCK TABLES `grade_12ls_biot3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_chemt1`
--

DROP TABLE IF EXISTS `grade_12ls_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_chemt1`
--

LOCK TABLES `grade_12ls_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_chemt2`
--

DROP TABLE IF EXISTS `grade_12ls_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_chemt2`
--

LOCK TABLES `grade_12ls_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_chemt3`
--

DROP TABLE IF EXISTS `grade_12ls_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_chemt3`
--

LOCK TABLES `grade_12ls_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_civt1`
--

DROP TABLE IF EXISTS `grade_12ls_civt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_civt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_civt1`
--

LOCK TABLES `grade_12ls_civt1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_civt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_civt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_civt2`
--

DROP TABLE IF EXISTS `grade_12ls_civt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_civt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_civt2`
--

LOCK TABLES `grade_12ls_civt2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_civt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_civt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_civt3`
--

DROP TABLE IF EXISTS `grade_12ls_civt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_civt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_civt3`
--

LOCK TABLES `grade_12ls_civt3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_civt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_civt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_engt1`
--

DROP TABLE IF EXISTS `grade_12ls_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_engt1`
--

LOCK TABLES `grade_12ls_engt1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_engt2`
--

DROP TABLE IF EXISTS `grade_12ls_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_engt2`
--

LOCK TABLES `grade_12ls_engt2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_engt3`
--

DROP TABLE IF EXISTS `grade_12ls_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_engt3`
--

LOCK TABLES `grade_12ls_engt3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_geot1`
--

DROP TABLE IF EXISTS `grade_12ls_geot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_geot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_geot1`
--

LOCK TABLES `grade_12ls_geot1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_geot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_geot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_geot2`
--

DROP TABLE IF EXISTS `grade_12ls_geot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_geot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_geot2`
--

LOCK TABLES `grade_12ls_geot2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_geot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_geot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_geot3`
--

DROP TABLE IF EXISTS `grade_12ls_geot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_geot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_geot3`
--

LOCK TABLES `grade_12ls_geot3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_geot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_geot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_historyt1`
--

DROP TABLE IF EXISTS `grade_12ls_historyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_historyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_historyt1`
--

LOCK TABLES `grade_12ls_historyt1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_historyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_historyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_historyt2`
--

DROP TABLE IF EXISTS `grade_12ls_historyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_historyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_historyt2`
--

LOCK TABLES `grade_12ls_historyt2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_historyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_historyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_historyt3`
--

DROP TABLE IF EXISTS `grade_12ls_historyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_historyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_historyt3`
--

LOCK TABLES `grade_12ls_historyt3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_historyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_historyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_matht1`
--

DROP TABLE IF EXISTS `grade_12ls_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_matht1`
--

LOCK TABLES `grade_12ls_matht1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_matht2`
--

DROP TABLE IF EXISTS `grade_12ls_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_matht2`
--

LOCK TABLES `grade_12ls_matht2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_matht3`
--

DROP TABLE IF EXISTS `grade_12ls_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_matht3`
--

LOCK TABLES `grade_12ls_matht3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_philot1`
--

DROP TABLE IF EXISTS `grade_12ls_philot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_philot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_philot1`
--

LOCK TABLES `grade_12ls_philot1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_philot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_philot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_philot2`
--

DROP TABLE IF EXISTS `grade_12ls_philot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_philot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_philot2`
--

LOCK TABLES `grade_12ls_philot2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_philot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_philot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_philot3`
--

DROP TABLE IF EXISTS `grade_12ls_philot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_philot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_philot3`
--

LOCK TABLES `grade_12ls_philot3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_philot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_philot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_phyt1`
--

DROP TABLE IF EXISTS `grade_12ls_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_phyt1`
--

LOCK TABLES `grade_12ls_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_12ls_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_phyt2`
--

DROP TABLE IF EXISTS `grade_12ls_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_phyt2`
--

LOCK TABLES `grade_12ls_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_12ls_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_12ls_phyt3`
--

DROP TABLE IF EXISTS `grade_12ls_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_12ls_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_12ls_phyt3`
--

LOCK TABLES `grade_12ls_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_12ls_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_12ls_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_arabict1`
--

DROP TABLE IF EXISTS `grade_1_arabict1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_arabict1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_arabict1`
--

LOCK TABLES `grade_1_arabict1` WRITE;
/*!40000 ALTER TABLE `grade_1_arabict1` DISABLE KEYS */;
INSERT INTO `grade_1_arabict1` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',3.00,1.00,2.00,2.00,2.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_arabict1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_arabict2`
--

DROP TABLE IF EXISTS `grade_1_arabict2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_arabict2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_arabict2`
--

LOCK TABLES `grade_1_arabict2` WRITE;
/*!40000 ALTER TABLE `grade_1_arabict2` DISABLE KEYS */;
INSERT INTO `grade_1_arabict2` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',1.00,1.00,1.00,1.00,1.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_arabict2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_arabict3`
--

DROP TABLE IF EXISTS `grade_1_arabict3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_arabict3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_arabict3`
--

LOCK TABLES `grade_1_arabict3` WRITE;
/*!40000 ALTER TABLE `grade_1_arabict3` DISABLE KEYS */;
INSERT INTO `grade_1_arabict3` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',2.00,2.00,14.00,6.00,6.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_arabict3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_englisht1`
--

DROP TABLE IF EXISTS `grade_1_englisht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_englisht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_englisht1`
--

LOCK TABLES `grade_1_englisht1` WRITE;
/*!40000 ALTER TABLE `grade_1_englisht1` DISABLE KEYS */;
INSERT INTO `grade_1_englisht1` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_englisht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_englisht2`
--

DROP TABLE IF EXISTS `grade_1_englisht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_englisht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_englisht2`
--

LOCK TABLES `grade_1_englisht2` WRITE;
/*!40000 ALTER TABLE `grade_1_englisht2` DISABLE KEYS */;
INSERT INTO `grade_1_englisht2` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_englisht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_englisht3`
--

DROP TABLE IF EXISTS `grade_1_englisht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_englisht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_englisht3`
--

LOCK TABLES `grade_1_englisht3` WRITE;
/*!40000 ALTER TABLE `grade_1_englisht3` DISABLE KEYS */;
INSERT INTO `grade_1_englisht3` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_englisht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_matht1`
--

DROP TABLE IF EXISTS `grade_1_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_matht1`
--

LOCK TABLES `grade_1_matht1` WRITE;
/*!40000 ALTER TABLE `grade_1_matht1` DISABLE KEYS */;
INSERT INTO `grade_1_matht1` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_matht2`
--

DROP TABLE IF EXISTS `grade_1_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_matht2`
--

LOCK TABLES `grade_1_matht2` WRITE;
/*!40000 ALTER TABLE `grade_1_matht2` DISABLE KEYS */;
INSERT INTO `grade_1_matht2` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_matht3`
--

DROP TABLE IF EXISTS `grade_1_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_matht3`
--

LOCK TABLES `grade_1_matht3` WRITE;
/*!40000 ALTER TABLE `grade_1_matht3` DISABLE KEYS */;
INSERT INTO `grade_1_matht3` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_religiont1`
--

DROP TABLE IF EXISTS `grade_1_religiont1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_religiont1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_religiont1`
--

LOCK TABLES `grade_1_religiont1` WRITE;
/*!40000 ALTER TABLE `grade_1_religiont1` DISABLE KEYS */;
INSERT INTO `grade_1_religiont1` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_religiont1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_religiont2`
--

DROP TABLE IF EXISTS `grade_1_religiont2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_religiont2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_religiont2`
--

LOCK TABLES `grade_1_religiont2` WRITE;
/*!40000 ALTER TABLE `grade_1_religiont2` DISABLE KEYS */;
INSERT INTO `grade_1_religiont2` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_religiont2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_religiont3`
--

DROP TABLE IF EXISTS `grade_1_religiont3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_religiont3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_religiont3`
--

LOCK TABLES `grade_1_religiont3` WRITE;
/*!40000 ALTER TABLE `grade_1_religiont3` DISABLE KEYS */;
INSERT INTO `grade_1_religiont3` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_religiont3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_sciencet1`
--

DROP TABLE IF EXISTS `grade_1_sciencet1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_sciencet1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_sciencet1`
--

LOCK TABLES `grade_1_sciencet1` WRITE;
/*!40000 ALTER TABLE `grade_1_sciencet1` DISABLE KEYS */;
INSERT INTO `grade_1_sciencet1` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_sciencet1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_sciencet2`
--

DROP TABLE IF EXISTS `grade_1_sciencet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_sciencet2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_sciencet2`
--

LOCK TABLES `grade_1_sciencet2` WRITE;
/*!40000 ALTER TABLE `grade_1_sciencet2` DISABLE KEYS */;
INSERT INTO `grade_1_sciencet2` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_sciencet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_1_sciencet3`
--

DROP TABLE IF EXISTS `grade_1_sciencet3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_1_sciencet3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_1_sciencet3`
--

LOCK TABLES `grade_1_sciencet3` WRITE;
/*!40000 ALTER TABLE `grade_1_sciencet3` DISABLE KEYS */;
INSERT INTO `grade_1_sciencet3` VALUES (1,'ELS_GRADE_1','2024STU1721816927971962','dasasd asdas asdas','2024_ADM6633A2','section_A','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:28:47');
/*!40000 ALTER TABLE `grade_1_sciencet3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2`
--

DROP TABLE IF EXISTS `grade_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2`
--

LOCK TABLES `grade_2` WRITE;
/*!40000 ALTER TABLE `grade_2` DISABLE KEYS */;
INSERT INTO `grade_2` VALUES (1,'ELS_GRADE_2','jhguib egiubeg giub','2024STU66904F','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'','','','2024-07-16 03:18:29'),(2,'ELS_GRADE_2','ggggggg gggggggg ggggggggg','2024STU1721816988424476','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_B','regular','2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_arabict1`
--

DROP TABLE IF EXISTS `grade_2_arabict1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_arabict1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_arabict1`
--

LOCK TABLES `grade_2_arabict1` WRITE;
/*!40000 ALTER TABLE `grade_2_arabict1` DISABLE KEYS */;
INSERT INTO `grade_2_arabict1` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_arabict1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_arabict2`
--

DROP TABLE IF EXISTS `grade_2_arabict2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_arabict2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_arabict2`
--

LOCK TABLES `grade_2_arabict2` WRITE;
/*!40000 ALTER TABLE `grade_2_arabict2` DISABLE KEYS */;
INSERT INTO `grade_2_arabict2` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_arabict2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_arabict3`
--

DROP TABLE IF EXISTS `grade_2_arabict3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_arabict3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_arabict3`
--

LOCK TABLES `grade_2_arabict3` WRITE;
/*!40000 ALTER TABLE `grade_2_arabict3` DISABLE KEYS */;
INSERT INTO `grade_2_arabict3` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_arabict3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_englisht1`
--

DROP TABLE IF EXISTS `grade_2_englisht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_englisht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_englisht1`
--

LOCK TABLES `grade_2_englisht1` WRITE;
/*!40000 ALTER TABLE `grade_2_englisht1` DISABLE KEYS */;
INSERT INTO `grade_2_englisht1` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_englisht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_englisht2`
--

DROP TABLE IF EXISTS `grade_2_englisht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_englisht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_englisht2`
--

LOCK TABLES `grade_2_englisht2` WRITE;
/*!40000 ALTER TABLE `grade_2_englisht2` DISABLE KEYS */;
INSERT INTO `grade_2_englisht2` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_englisht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_englisht3`
--

DROP TABLE IF EXISTS `grade_2_englisht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_englisht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_englisht3`
--

LOCK TABLES `grade_2_englisht3` WRITE;
/*!40000 ALTER TABLE `grade_2_englisht3` DISABLE KEYS */;
INSERT INTO `grade_2_englisht3` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_englisht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_matht1`
--

DROP TABLE IF EXISTS `grade_2_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_matht1`
--

LOCK TABLES `grade_2_matht1` WRITE;
/*!40000 ALTER TABLE `grade_2_matht1` DISABLE KEYS */;
INSERT INTO `grade_2_matht1` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_matht2`
--

DROP TABLE IF EXISTS `grade_2_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_matht2`
--

LOCK TABLES `grade_2_matht2` WRITE;
/*!40000 ALTER TABLE `grade_2_matht2` DISABLE KEYS */;
INSERT INTO `grade_2_matht2` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_matht3`
--

DROP TABLE IF EXISTS `grade_2_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_matht3`
--

LOCK TABLES `grade_2_matht3` WRITE;
/*!40000 ALTER TABLE `grade_2_matht3` DISABLE KEYS */;
INSERT INTO `grade_2_matht3` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_religiont1`
--

DROP TABLE IF EXISTS `grade_2_religiont1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_religiont1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_religiont1`
--

LOCK TABLES `grade_2_religiont1` WRITE;
/*!40000 ALTER TABLE `grade_2_religiont1` DISABLE KEYS */;
INSERT INTO `grade_2_religiont1` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_religiont1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_religiont2`
--

DROP TABLE IF EXISTS `grade_2_religiont2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_religiont2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_religiont2`
--

LOCK TABLES `grade_2_religiont2` WRITE;
/*!40000 ALTER TABLE `grade_2_religiont2` DISABLE KEYS */;
INSERT INTO `grade_2_religiont2` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_religiont2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_religiont3`
--

DROP TABLE IF EXISTS `grade_2_religiont3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_religiont3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_religiont3`
--

LOCK TABLES `grade_2_religiont3` WRITE;
/*!40000 ALTER TABLE `grade_2_religiont3` DISABLE KEYS */;
INSERT INTO `grade_2_religiont3` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_religiont3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_sciencet1`
--

DROP TABLE IF EXISTS `grade_2_sciencet1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_sciencet1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_sciencet1`
--

LOCK TABLES `grade_2_sciencet1` WRITE;
/*!40000 ALTER TABLE `grade_2_sciencet1` DISABLE KEYS */;
INSERT INTO `grade_2_sciencet1` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_sciencet1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_sciencet2`
--

DROP TABLE IF EXISTS `grade_2_sciencet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_sciencet2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_sciencet2`
--

LOCK TABLES `grade_2_sciencet2` WRITE;
/*!40000 ALTER TABLE `grade_2_sciencet2` DISABLE KEYS */;
INSERT INTO `grade_2_sciencet2` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_sciencet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_2_sciencet3`
--

DROP TABLE IF EXISTS `grade_2_sciencet3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_2_sciencet3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_2_sciencet3`
--

LOCK TABLES `grade_2_sciencet3` WRITE;
/*!40000 ALTER TABLE `grade_2_sciencet3` DISABLE KEYS */;
INSERT INTO `grade_2_sciencet3` VALUES (1,'ELS_GRADE_2','2024STU1721816988424476','ggggggg gggggggg ggggggggg','2024_ADM6633A2','section_B','regular','2024',0.00,0.00,0.00,0.00,0.00,'2024-07-24 13:29:49');
/*!40000 ALTER TABLE `grade_2_sciencet3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3`
--

DROP TABLE IF EXISTS `grade_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3`
--

LOCK TABLES `grade_3` WRITE;
/*!40000 ALTER TABLE `grade_3` DISABLE KEYS */;
INSERT INTO `grade_3` VALUES (1,'ELS_GRADE_3','koj ofri okegij','2024STU66904F','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'','','','2024-07-16 03:18:29');
/*!40000 ALTER TABLE `grade_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_arabict1`
--

DROP TABLE IF EXISTS `grade_3_arabict1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_arabict1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_arabict1`
--

LOCK TABLES `grade_3_arabict1` WRITE;
/*!40000 ALTER TABLE `grade_3_arabict1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_arabict1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_arabict2`
--

DROP TABLE IF EXISTS `grade_3_arabict2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_arabict2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_arabict2`
--

LOCK TABLES `grade_3_arabict2` WRITE;
/*!40000 ALTER TABLE `grade_3_arabict2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_arabict2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_arabict3`
--

DROP TABLE IF EXISTS `grade_3_arabict3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_arabict3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_arabict3`
--

LOCK TABLES `grade_3_arabict3` WRITE;
/*!40000 ALTER TABLE `grade_3_arabict3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_arabict3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_englisht1`
--

DROP TABLE IF EXISTS `grade_3_englisht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_englisht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_englisht1`
--

LOCK TABLES `grade_3_englisht1` WRITE;
/*!40000 ALTER TABLE `grade_3_englisht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_englisht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_englisht2`
--

DROP TABLE IF EXISTS `grade_3_englisht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_englisht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_englisht2`
--

LOCK TABLES `grade_3_englisht2` WRITE;
/*!40000 ALTER TABLE `grade_3_englisht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_englisht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_englisht3`
--

DROP TABLE IF EXISTS `grade_3_englisht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_englisht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_englisht3`
--

LOCK TABLES `grade_3_englisht3` WRITE;
/*!40000 ALTER TABLE `grade_3_englisht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_englisht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_matht1`
--

DROP TABLE IF EXISTS `grade_3_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_matht1`
--

LOCK TABLES `grade_3_matht1` WRITE;
/*!40000 ALTER TABLE `grade_3_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_matht2`
--

DROP TABLE IF EXISTS `grade_3_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_matht2`
--

LOCK TABLES `grade_3_matht2` WRITE;
/*!40000 ALTER TABLE `grade_3_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_matht3`
--

DROP TABLE IF EXISTS `grade_3_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_matht3`
--

LOCK TABLES `grade_3_matht3` WRITE;
/*!40000 ALTER TABLE `grade_3_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_religiont1`
--

DROP TABLE IF EXISTS `grade_3_religiont1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_religiont1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_religiont1`
--

LOCK TABLES `grade_3_religiont1` WRITE;
/*!40000 ALTER TABLE `grade_3_religiont1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_religiont1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_religiont2`
--

DROP TABLE IF EXISTS `grade_3_religiont2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_religiont2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_religiont2`
--

LOCK TABLES `grade_3_religiont2` WRITE;
/*!40000 ALTER TABLE `grade_3_religiont2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_religiont2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_religiont3`
--

DROP TABLE IF EXISTS `grade_3_religiont3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_religiont3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_religiont3`
--

LOCK TABLES `grade_3_religiont3` WRITE;
/*!40000 ALTER TABLE `grade_3_religiont3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_religiont3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_sciencet1`
--

DROP TABLE IF EXISTS `grade_3_sciencet1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_sciencet1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_sciencet1`
--

LOCK TABLES `grade_3_sciencet1` WRITE;
/*!40000 ALTER TABLE `grade_3_sciencet1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_sciencet1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_sciencet2`
--

DROP TABLE IF EXISTS `grade_3_sciencet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_sciencet2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_sciencet2`
--

LOCK TABLES `grade_3_sciencet2` WRITE;
/*!40000 ALTER TABLE `grade_3_sciencet2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_sciencet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_3_sciencet3`
--

DROP TABLE IF EXISTS `grade_3_sciencet3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_3_sciencet3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_3_sciencet3`
--

LOCK TABLES `grade_3_sciencet3` WRITE;
/*!40000 ALTER TABLE `grade_3_sciencet3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_3_sciencet3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4`
--

DROP TABLE IF EXISTS `grade_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4`
--

LOCK TABLES `grade_4` WRITE;
/*!40000 ALTER TABLE `grade_4` DISABLE KEYS */;
INSERT INTO `grade_4` VALUES (1,'ELS_GRADE_4','hello hello hello','2024STU669051','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'','','','2024-07-16 03:18:29');
/*!40000 ALTER TABLE `grade_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_arabict1`
--

DROP TABLE IF EXISTS `grade_4_arabict1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_arabict1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_arabict1`
--

LOCK TABLES `grade_4_arabict1` WRITE;
/*!40000 ALTER TABLE `grade_4_arabict1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_arabict1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_arabict2`
--

DROP TABLE IF EXISTS `grade_4_arabict2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_arabict2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_arabict2`
--

LOCK TABLES `grade_4_arabict2` WRITE;
/*!40000 ALTER TABLE `grade_4_arabict2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_arabict2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_arabict3`
--

DROP TABLE IF EXISTS `grade_4_arabict3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_arabict3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_arabict3`
--

LOCK TABLES `grade_4_arabict3` WRITE;
/*!40000 ALTER TABLE `grade_4_arabict3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_arabict3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_englisht1`
--

DROP TABLE IF EXISTS `grade_4_englisht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_englisht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_englisht1`
--

LOCK TABLES `grade_4_englisht1` WRITE;
/*!40000 ALTER TABLE `grade_4_englisht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_englisht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_englisht2`
--

DROP TABLE IF EXISTS `grade_4_englisht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_englisht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_englisht2`
--

LOCK TABLES `grade_4_englisht2` WRITE;
/*!40000 ALTER TABLE `grade_4_englisht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_englisht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_englisht3`
--

DROP TABLE IF EXISTS `grade_4_englisht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_englisht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_englisht3`
--

LOCK TABLES `grade_4_englisht3` WRITE;
/*!40000 ALTER TABLE `grade_4_englisht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_englisht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_matht1`
--

DROP TABLE IF EXISTS `grade_4_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_matht1`
--

LOCK TABLES `grade_4_matht1` WRITE;
/*!40000 ALTER TABLE `grade_4_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_matht2`
--

DROP TABLE IF EXISTS `grade_4_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_matht2`
--

LOCK TABLES `grade_4_matht2` WRITE;
/*!40000 ALTER TABLE `grade_4_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_matht3`
--

DROP TABLE IF EXISTS `grade_4_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_matht3`
--

LOCK TABLES `grade_4_matht3` WRITE;
/*!40000 ALTER TABLE `grade_4_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_religiont1`
--

DROP TABLE IF EXISTS `grade_4_religiont1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_religiont1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_religiont1`
--

LOCK TABLES `grade_4_religiont1` WRITE;
/*!40000 ALTER TABLE `grade_4_religiont1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_religiont1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_religiont2`
--

DROP TABLE IF EXISTS `grade_4_religiont2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_religiont2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_religiont2`
--

LOCK TABLES `grade_4_religiont2` WRITE;
/*!40000 ALTER TABLE `grade_4_religiont2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_religiont2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_religiont3`
--

DROP TABLE IF EXISTS `grade_4_religiont3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_religiont3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_religiont3`
--

LOCK TABLES `grade_4_religiont3` WRITE;
/*!40000 ALTER TABLE `grade_4_religiont3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_religiont3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_sciencet1`
--

DROP TABLE IF EXISTS `grade_4_sciencet1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_sciencet1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_sciencet1`
--

LOCK TABLES `grade_4_sciencet1` WRITE;
/*!40000 ALTER TABLE `grade_4_sciencet1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_sciencet1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_sciencet2`
--

DROP TABLE IF EXISTS `grade_4_sciencet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_sciencet2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_sciencet2`
--

LOCK TABLES `grade_4_sciencet2` WRITE;
/*!40000 ALTER TABLE `grade_4_sciencet2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_sciencet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_4_sciencet3`
--

DROP TABLE IF EXISTS `grade_4_sciencet3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_4_sciencet3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_4_sciencet3`
--

LOCK TABLES `grade_4_sciencet3` WRITE;
/*!40000 ALTER TABLE `grade_4_sciencet3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_4_sciencet3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5`
--

DROP TABLE IF EXISTS `grade_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5`
--

LOCK TABLES `grade_5` WRITE;
/*!40000 ALTER TABLE `grade_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_arabict1`
--

DROP TABLE IF EXISTS `grade_5_arabict1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_arabict1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_arabict1`
--

LOCK TABLES `grade_5_arabict1` WRITE;
/*!40000 ALTER TABLE `grade_5_arabict1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_arabict1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_arabict2`
--

DROP TABLE IF EXISTS `grade_5_arabict2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_arabict2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_arabict2`
--

LOCK TABLES `grade_5_arabict2` WRITE;
/*!40000 ALTER TABLE `grade_5_arabict2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_arabict2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_arabict3`
--

DROP TABLE IF EXISTS `grade_5_arabict3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_arabict3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_arabict3`
--

LOCK TABLES `grade_5_arabict3` WRITE;
/*!40000 ALTER TABLE `grade_5_arabict3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_arabict3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_englisht1`
--

DROP TABLE IF EXISTS `grade_5_englisht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_englisht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_englisht1`
--

LOCK TABLES `grade_5_englisht1` WRITE;
/*!40000 ALTER TABLE `grade_5_englisht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_englisht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_englisht2`
--

DROP TABLE IF EXISTS `grade_5_englisht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_englisht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_englisht2`
--

LOCK TABLES `grade_5_englisht2` WRITE;
/*!40000 ALTER TABLE `grade_5_englisht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_englisht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_englisht3`
--

DROP TABLE IF EXISTS `grade_5_englisht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_englisht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_englisht3`
--

LOCK TABLES `grade_5_englisht3` WRITE;
/*!40000 ALTER TABLE `grade_5_englisht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_englisht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_matht1`
--

DROP TABLE IF EXISTS `grade_5_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_matht1`
--

LOCK TABLES `grade_5_matht1` WRITE;
/*!40000 ALTER TABLE `grade_5_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_matht2`
--

DROP TABLE IF EXISTS `grade_5_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_matht2`
--

LOCK TABLES `grade_5_matht2` WRITE;
/*!40000 ALTER TABLE `grade_5_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_matht3`
--

DROP TABLE IF EXISTS `grade_5_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_matht3`
--

LOCK TABLES `grade_5_matht3` WRITE;
/*!40000 ALTER TABLE `grade_5_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_religiont1`
--

DROP TABLE IF EXISTS `grade_5_religiont1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_religiont1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_religiont1`
--

LOCK TABLES `grade_5_religiont1` WRITE;
/*!40000 ALTER TABLE `grade_5_religiont1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_religiont1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_religiont2`
--

DROP TABLE IF EXISTS `grade_5_religiont2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_religiont2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_religiont2`
--

LOCK TABLES `grade_5_religiont2` WRITE;
/*!40000 ALTER TABLE `grade_5_religiont2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_religiont2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_religiont3`
--

DROP TABLE IF EXISTS `grade_5_religiont3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_religiont3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_religiont3`
--

LOCK TABLES `grade_5_religiont3` WRITE;
/*!40000 ALTER TABLE `grade_5_religiont3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_religiont3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_sciencet1`
--

DROP TABLE IF EXISTS `grade_5_sciencet1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_sciencet1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_sciencet1`
--

LOCK TABLES `grade_5_sciencet1` WRITE;
/*!40000 ALTER TABLE `grade_5_sciencet1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_sciencet1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_sciencet2`
--

DROP TABLE IF EXISTS `grade_5_sciencet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_sciencet2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_sciencet2`
--

LOCK TABLES `grade_5_sciencet2` WRITE;
/*!40000 ALTER TABLE `grade_5_sciencet2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_sciencet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_5_sciencet3`
--

DROP TABLE IF EXISTS `grade_5_sciencet3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_5_sciencet3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_5_sciencet3`
--

LOCK TABLES `grade_5_sciencet3` WRITE;
/*!40000 ALTER TABLE `grade_5_sciencet3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_5_sciencet3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6`
--

DROP TABLE IF EXISTS `grade_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6`
--

LOCK TABLES `grade_6` WRITE;
/*!40000 ALTER TABLE `grade_6` DISABLE KEYS */;
INSERT INTO `grade_6` VALUES (1,'ELS_GRADE_6','g g g','2024STU6695C0','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-16 03:37:50'),(2,'ELS_GRADE_6','ali ali ali','2024STU66996C','2024_ADM6633A2',NULL,NULL,NULL,NULL,NULL,'2024','section_A','regular','2024-07-18 22:28:59');
/*!40000 ALTER TABLE `grade_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_arabict1`
--

DROP TABLE IF EXISTS `grade_6_arabict1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_arabict1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_arabict1`
--

LOCK TABLES `grade_6_arabict1` WRITE;
/*!40000 ALTER TABLE `grade_6_arabict1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_arabict1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_arabict2`
--

DROP TABLE IF EXISTS `grade_6_arabict2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_arabict2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_arabict2`
--

LOCK TABLES `grade_6_arabict2` WRITE;
/*!40000 ALTER TABLE `grade_6_arabict2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_arabict2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_arabict3`
--

DROP TABLE IF EXISTS `grade_6_arabict3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_arabict3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_arabict3`
--

LOCK TABLES `grade_6_arabict3` WRITE;
/*!40000 ALTER TABLE `grade_6_arabict3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_arabict3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_englisht1`
--

DROP TABLE IF EXISTS `grade_6_englisht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_englisht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_englisht1`
--

LOCK TABLES `grade_6_englisht1` WRITE;
/*!40000 ALTER TABLE `grade_6_englisht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_englisht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_englisht2`
--

DROP TABLE IF EXISTS `grade_6_englisht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_englisht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_englisht2`
--

LOCK TABLES `grade_6_englisht2` WRITE;
/*!40000 ALTER TABLE `grade_6_englisht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_englisht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_englisht3`
--

DROP TABLE IF EXISTS `grade_6_englisht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_englisht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_englisht3`
--

LOCK TABLES `grade_6_englisht3` WRITE;
/*!40000 ALTER TABLE `grade_6_englisht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_englisht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_matht1`
--

DROP TABLE IF EXISTS `grade_6_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_matht1`
--

LOCK TABLES `grade_6_matht1` WRITE;
/*!40000 ALTER TABLE `grade_6_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_matht2`
--

DROP TABLE IF EXISTS `grade_6_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_matht2`
--

LOCK TABLES `grade_6_matht2` WRITE;
/*!40000 ALTER TABLE `grade_6_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_matht3`
--

DROP TABLE IF EXISTS `grade_6_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_matht3`
--

LOCK TABLES `grade_6_matht3` WRITE;
/*!40000 ALTER TABLE `grade_6_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_religiont1`
--

DROP TABLE IF EXISTS `grade_6_religiont1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_religiont1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_religiont1`
--

LOCK TABLES `grade_6_religiont1` WRITE;
/*!40000 ALTER TABLE `grade_6_religiont1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_religiont1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_religiont2`
--

DROP TABLE IF EXISTS `grade_6_religiont2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_religiont2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_religiont2`
--

LOCK TABLES `grade_6_religiont2` WRITE;
/*!40000 ALTER TABLE `grade_6_religiont2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_religiont2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_religiont3`
--

DROP TABLE IF EXISTS `grade_6_religiont3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_religiont3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_religiont3`
--

LOCK TABLES `grade_6_religiont3` WRITE;
/*!40000 ALTER TABLE `grade_6_religiont3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_religiont3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_sciencet1`
--

DROP TABLE IF EXISTS `grade_6_sciencet1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_sciencet1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_sciencet1`
--

LOCK TABLES `grade_6_sciencet1` WRITE;
/*!40000 ALTER TABLE `grade_6_sciencet1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_sciencet1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_sciencet2`
--

DROP TABLE IF EXISTS `grade_6_sciencet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_sciencet2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_sciencet2`
--

LOCK TABLES `grade_6_sciencet2` WRITE;
/*!40000 ALTER TABLE `grade_6_sciencet2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_sciencet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_6_sciencet3`
--

DROP TABLE IF EXISTS `grade_6_sciencet3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_6_sciencet3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_6_sciencet3`
--

LOCK TABLES `grade_6_sciencet3` WRITE;
/*!40000 ALTER TABLE `grade_6_sciencet3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_6_sciencet3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7`
--

DROP TABLE IF EXISTS `grade_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7`
--

LOCK TABLES `grade_7` WRITE;
/*!40000 ALTER TABLE `grade_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_arabt1`
--

DROP TABLE IF EXISTS `grade_7_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_arabt1`
--

LOCK TABLES `grade_7_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_7_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_arabt2`
--

DROP TABLE IF EXISTS `grade_7_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_arabt2`
--

LOCK TABLES `grade_7_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_7_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_arabt3`
--

DROP TABLE IF EXISTS `grade_7_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_arabt3`
--

LOCK TABLES `grade_7_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_7_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_biot1`
--

DROP TABLE IF EXISTS `grade_7_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_biot1`
--

LOCK TABLES `grade_7_biot1` WRITE;
/*!40000 ALTER TABLE `grade_7_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_biot2`
--

DROP TABLE IF EXISTS `grade_7_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_biot2`
--

LOCK TABLES `grade_7_biot2` WRITE;
/*!40000 ALTER TABLE `grade_7_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_biot3`
--

DROP TABLE IF EXISTS `grade_7_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_biot3`
--

LOCK TABLES `grade_7_biot3` WRITE;
/*!40000 ALTER TABLE `grade_7_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_chemt1`
--

DROP TABLE IF EXISTS `grade_7_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_chemt1`
--

LOCK TABLES `grade_7_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_7_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_chemt2`
--

DROP TABLE IF EXISTS `grade_7_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_chemt2`
--

LOCK TABLES `grade_7_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_7_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_chemt3`
--

DROP TABLE IF EXISTS `grade_7_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_chemt3`
--

LOCK TABLES `grade_7_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_7_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_engt1`
--

DROP TABLE IF EXISTS `grade_7_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_engt1`
--

LOCK TABLES `grade_7_engt1` WRITE;
/*!40000 ALTER TABLE `grade_7_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_engt2`
--

DROP TABLE IF EXISTS `grade_7_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_engt2`
--

LOCK TABLES `grade_7_engt2` WRITE;
/*!40000 ALTER TABLE `grade_7_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_engt3`
--

DROP TABLE IF EXISTS `grade_7_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_engt3`
--

LOCK TABLES `grade_7_engt3` WRITE;
/*!40000 ALTER TABLE `grade_7_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_mathmt1`
--

DROP TABLE IF EXISTS `grade_7_mathmt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_mathmt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_mathmt1`
--

LOCK TABLES `grade_7_mathmt1` WRITE;
/*!40000 ALTER TABLE `grade_7_mathmt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_mathmt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_mathmt2`
--

DROP TABLE IF EXISTS `grade_7_mathmt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_mathmt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_mathmt2`
--

LOCK TABLES `grade_7_mathmt2` WRITE;
/*!40000 ALTER TABLE `grade_7_mathmt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_mathmt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_mathmt3`
--

DROP TABLE IF EXISTS `grade_7_mathmt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_mathmt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_mathmt3`
--

LOCK TABLES `grade_7_mathmt3` WRITE;
/*!40000 ALTER TABLE `grade_7_mathmt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_mathmt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_phyt1`
--

DROP TABLE IF EXISTS `grade_7_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_phyt1`
--

LOCK TABLES `grade_7_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_7_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_phyt2`
--

DROP TABLE IF EXISTS `grade_7_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_phyt2`
--

LOCK TABLES `grade_7_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_7_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_phyt3`
--

DROP TABLE IF EXISTS `grade_7_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_phyt3`
--

LOCK TABLES `grade_7_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_7_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_religt1`
--

DROP TABLE IF EXISTS `grade_7_religt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_religt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_religt1`
--

LOCK TABLES `grade_7_religt1` WRITE;
/*!40000 ALTER TABLE `grade_7_religt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_religt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_religt2`
--

DROP TABLE IF EXISTS `grade_7_religt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_religt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_religt2`
--

LOCK TABLES `grade_7_religt2` WRITE;
/*!40000 ALTER TABLE `grade_7_religt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_religt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_7_religt3`
--

DROP TABLE IF EXISTS `grade_7_religt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_7_religt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_7_religt3`
--

LOCK TABLES `grade_7_religt3` WRITE;
/*!40000 ALTER TABLE `grade_7_religt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_7_religt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8`
--

DROP TABLE IF EXISTS `grade_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8`
--

LOCK TABLES `grade_8` WRITE;
/*!40000 ALTER TABLE `grade_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_arabt1`
--

DROP TABLE IF EXISTS `grade_8_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_arabt1`
--

LOCK TABLES `grade_8_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_8_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_arabt2`
--

DROP TABLE IF EXISTS `grade_8_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_arabt2`
--

LOCK TABLES `grade_8_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_8_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_arabt3`
--

DROP TABLE IF EXISTS `grade_8_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_arabt3`
--

LOCK TABLES `grade_8_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_8_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_biot1`
--

DROP TABLE IF EXISTS `grade_8_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_biot1`
--

LOCK TABLES `grade_8_biot1` WRITE;
/*!40000 ALTER TABLE `grade_8_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_biot2`
--

DROP TABLE IF EXISTS `grade_8_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_biot2`
--

LOCK TABLES `grade_8_biot2` WRITE;
/*!40000 ALTER TABLE `grade_8_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_biot3`
--

DROP TABLE IF EXISTS `grade_8_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_biot3`
--

LOCK TABLES `grade_8_biot3` WRITE;
/*!40000 ALTER TABLE `grade_8_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_chemt1`
--

DROP TABLE IF EXISTS `grade_8_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_chemt1`
--

LOCK TABLES `grade_8_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_8_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_chemt2`
--

DROP TABLE IF EXISTS `grade_8_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_chemt2`
--

LOCK TABLES `grade_8_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_8_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_chemt3`
--

DROP TABLE IF EXISTS `grade_8_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_chemt3`
--

LOCK TABLES `grade_8_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_8_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_engt1`
--

DROP TABLE IF EXISTS `grade_8_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_engt1`
--

LOCK TABLES `grade_8_engt1` WRITE;
/*!40000 ALTER TABLE `grade_8_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_engt2`
--

DROP TABLE IF EXISTS `grade_8_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_engt2`
--

LOCK TABLES `grade_8_engt2` WRITE;
/*!40000 ALTER TABLE `grade_8_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_engt3`
--

DROP TABLE IF EXISTS `grade_8_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_engt3`
--

LOCK TABLES `grade_8_engt3` WRITE;
/*!40000 ALTER TABLE `grade_8_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_mathmt1`
--

DROP TABLE IF EXISTS `grade_8_mathmt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_mathmt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_mathmt1`
--

LOCK TABLES `grade_8_mathmt1` WRITE;
/*!40000 ALTER TABLE `grade_8_mathmt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_mathmt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_mathmt2`
--

DROP TABLE IF EXISTS `grade_8_mathmt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_mathmt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_mathmt2`
--

LOCK TABLES `grade_8_mathmt2` WRITE;
/*!40000 ALTER TABLE `grade_8_mathmt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_mathmt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_mathmt3`
--

DROP TABLE IF EXISTS `grade_8_mathmt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_mathmt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_mathmt3`
--

LOCK TABLES `grade_8_mathmt3` WRITE;
/*!40000 ALTER TABLE `grade_8_mathmt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_mathmt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_phyt1`
--

DROP TABLE IF EXISTS `grade_8_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_phyt1`
--

LOCK TABLES `grade_8_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_8_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_phyt2`
--

DROP TABLE IF EXISTS `grade_8_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_phyt2`
--

LOCK TABLES `grade_8_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_8_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_phyt3`
--

DROP TABLE IF EXISTS `grade_8_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_phyt3`
--

LOCK TABLES `grade_8_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_8_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_religt1`
--

DROP TABLE IF EXISTS `grade_8_religt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_religt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_religt1`
--

LOCK TABLES `grade_8_religt1` WRITE;
/*!40000 ALTER TABLE `grade_8_religt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_religt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_religt2`
--

DROP TABLE IF EXISTS `grade_8_religt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_religt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_religt2`
--

LOCK TABLES `grade_8_religt2` WRITE;
/*!40000 ALTER TABLE `grade_8_religt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_religt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_8_religt3`
--

DROP TABLE IF EXISTS `grade_8_religt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_8_religt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_8_religt3`
--

LOCK TABLES `grade_8_religt3` WRITE;
/*!40000 ALTER TABLE `grade_8_religt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_8_religt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9`
--

DROP TABLE IF EXISTS `grade_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9`
--

LOCK TABLES `grade_9` WRITE;
/*!40000 ALTER TABLE `grade_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_arabt1`
--

DROP TABLE IF EXISTS `grade_9_arabt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_arabt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_arabt1`
--

LOCK TABLES `grade_9_arabt1` WRITE;
/*!40000 ALTER TABLE `grade_9_arabt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_arabt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_arabt2`
--

DROP TABLE IF EXISTS `grade_9_arabt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_arabt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_arabt2`
--

LOCK TABLES `grade_9_arabt2` WRITE;
/*!40000 ALTER TABLE `grade_9_arabt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_arabt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_arabt3`
--

DROP TABLE IF EXISTS `grade_9_arabt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_arabt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_arabt3`
--

LOCK TABLES `grade_9_arabt3` WRITE;
/*!40000 ALTER TABLE `grade_9_arabt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_arabt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_biot1`
--

DROP TABLE IF EXISTS `grade_9_biot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_biot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_biot1`
--

LOCK TABLES `grade_9_biot1` WRITE;
/*!40000 ALTER TABLE `grade_9_biot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_biot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_biot2`
--

DROP TABLE IF EXISTS `grade_9_biot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_biot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_biot2`
--

LOCK TABLES `grade_9_biot2` WRITE;
/*!40000 ALTER TABLE `grade_9_biot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_biot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_biot3`
--

DROP TABLE IF EXISTS `grade_9_biot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_biot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_biot3`
--

LOCK TABLES `grade_9_biot3` WRITE;
/*!40000 ALTER TABLE `grade_9_biot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_biot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_chemt1`
--

DROP TABLE IF EXISTS `grade_9_chemt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_chemt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_chemt1`
--

LOCK TABLES `grade_9_chemt1` WRITE;
/*!40000 ALTER TABLE `grade_9_chemt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_chemt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_chemt2`
--

DROP TABLE IF EXISTS `grade_9_chemt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_chemt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_chemt2`
--

LOCK TABLES `grade_9_chemt2` WRITE;
/*!40000 ALTER TABLE `grade_9_chemt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_chemt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_chemt3`
--

DROP TABLE IF EXISTS `grade_9_chemt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_chemt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_chemt3`
--

LOCK TABLES `grade_9_chemt3` WRITE;
/*!40000 ALTER TABLE `grade_9_chemt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_chemt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_civt1`
--

DROP TABLE IF EXISTS `grade_9_civt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_civt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_civt1`
--

LOCK TABLES `grade_9_civt1` WRITE;
/*!40000 ALTER TABLE `grade_9_civt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_civt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_civt2`
--

DROP TABLE IF EXISTS `grade_9_civt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_civt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_civt2`
--

LOCK TABLES `grade_9_civt2` WRITE;
/*!40000 ALTER TABLE `grade_9_civt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_civt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_civt3`
--

DROP TABLE IF EXISTS `grade_9_civt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_civt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_civt3`
--

LOCK TABLES `grade_9_civt3` WRITE;
/*!40000 ALTER TABLE `grade_9_civt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_civt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_engt1`
--

DROP TABLE IF EXISTS `grade_9_engt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_engt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_engt1`
--

LOCK TABLES `grade_9_engt1` WRITE;
/*!40000 ALTER TABLE `grade_9_engt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_engt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_engt2`
--

DROP TABLE IF EXISTS `grade_9_engt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_engt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_engt2`
--

LOCK TABLES `grade_9_engt2` WRITE;
/*!40000 ALTER TABLE `grade_9_engt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_engt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_engt3`
--

DROP TABLE IF EXISTS `grade_9_engt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_engt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_engt3`
--

LOCK TABLES `grade_9_engt3` WRITE;
/*!40000 ALTER TABLE `grade_9_engt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_engt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_geot1`
--

DROP TABLE IF EXISTS `grade_9_geot1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_geot1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_geot1`
--

LOCK TABLES `grade_9_geot1` WRITE;
/*!40000 ALTER TABLE `grade_9_geot1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_geot1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_geot2`
--

DROP TABLE IF EXISTS `grade_9_geot2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_geot2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_geot2`
--

LOCK TABLES `grade_9_geot2` WRITE;
/*!40000 ALTER TABLE `grade_9_geot2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_geot2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_geot3`
--

DROP TABLE IF EXISTS `grade_9_geot3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_geot3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_geot3`
--

LOCK TABLES `grade_9_geot3` WRITE;
/*!40000 ALTER TABLE `grade_9_geot3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_geot3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_historyt1`
--

DROP TABLE IF EXISTS `grade_9_historyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_historyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_historyt1`
--

LOCK TABLES `grade_9_historyt1` WRITE;
/*!40000 ALTER TABLE `grade_9_historyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_historyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_historyt2`
--

DROP TABLE IF EXISTS `grade_9_historyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_historyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_historyt2`
--

LOCK TABLES `grade_9_historyt2` WRITE;
/*!40000 ALTER TABLE `grade_9_historyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_historyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_historyt3`
--

DROP TABLE IF EXISTS `grade_9_historyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_historyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_historyt3`
--

LOCK TABLES `grade_9_historyt3` WRITE;
/*!40000 ALTER TABLE `grade_9_historyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_historyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_matht1`
--

DROP TABLE IF EXISTS `grade_9_matht1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_matht1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_matht1`
--

LOCK TABLES `grade_9_matht1` WRITE;
/*!40000 ALTER TABLE `grade_9_matht1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_matht1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_matht2`
--

DROP TABLE IF EXISTS `grade_9_matht2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_matht2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_matht2`
--

LOCK TABLES `grade_9_matht2` WRITE;
/*!40000 ALTER TABLE `grade_9_matht2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_matht2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_matht3`
--

DROP TABLE IF EXISTS `grade_9_matht3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_matht3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_matht3`
--

LOCK TABLES `grade_9_matht3` WRITE;
/*!40000 ALTER TABLE `grade_9_matht3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_matht3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_phyt1`
--

DROP TABLE IF EXISTS `grade_9_phyt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_phyt1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_phyt1`
--

LOCK TABLES `grade_9_phyt1` WRITE;
/*!40000 ALTER TABLE `grade_9_phyt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_phyt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_phyt2`
--

DROP TABLE IF EXISTS `grade_9_phyt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_phyt2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_phyt2`
--

LOCK TABLES `grade_9_phyt2` WRITE;
/*!40000 ALTER TABLE `grade_9_phyt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_phyt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_phyt3`
--

DROP TABLE IF EXISTS `grade_9_phyt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_phyt3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_class_id` (`class_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_phyt3`
--

LOCK TABLES `grade_9_phyt3` WRITE;
/*!40000 ALTER TABLE `grade_9_phyt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_9_phyt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `fullname` varchar(60) DEFAULT NULL,
  `fullname_ar` varchar(60) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `class` varchar(60) DEFAULT NULL,
  `section` char(1) DEFAULT NULL,
  `exam1` double DEFAULT NULL,
  `exam2` double DEFAULT NULL,
  `exam3` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  `academic_year` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (00000000001,'karim','كريم','Student','grade_1',NULL,50,65,35,50,'2024');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `Total` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'marwandaou22','مراعسيلاهشلا','admin',2024,'grade_2','section_B','485','4999985','5','5','485','4999985','','','',''),(2,'marwan m daou1','شيهشسليهشلسهعي','user',2024,'grade_2','section_B','4','4','1','1','4','4','','','',''),(9,'jjhdjashdkash','شيهشسليهشلسهعي','admin',2024,'grade_2','section_B','2500','15000000','500','5000000','2000','10000000','20','20','1600.00','8000000.00');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (3,'jhguib','egiubeg','giub','iugiub','iu','iubgiub','2024STU66904F','','grade_2','ELS_GRADE_2','2024','2000-10-10','male','regular','sect','2024-07-11',''),(4,'karim','karim','karim','karim','karim','karim','2024STU669050','','grade_1','ELS_GRADE_1','2024','2020-10-10','male','regular','sect','2024-07-11',''),(5,'hello','hello','hello','hello','hello','hello','2024STU669051','','grade_4','ELS_GRADE_4','2024','1999-10-10','male','regular','sect','2024-07-11',''),(6,'omar','omar','omar','omar','omar','omar','2024STU669112','','grade_10','ELS_GRADE_10','2024','2000-10-10','male','regular','sect','2024-07-12',''),(7,'keoj','ingoin','oingoiqn','oingoin','oignoi','niognoi','2024STU669565','','grade_1','ELS_GRADE_1','2024','2000-10-10','male','regular','sect','2024-07-15',''),(8,'rimmm','rimm','rimm','rimm','rimm','rimm','2024STU66956A','','grade_1','ELS_GRADE_1','2024','2000-10-10','male','regular','sect','2024-07-15',''),(9,'c','c','c','c','c','c','2024STU6695BD','','grade_12ls','ELS_GRADE_12LS','2024','2000-10-10','male','regular','sect','2024-07-16',''),(10,'g','g','g','g','g','g','2024STU6695C0','','grade_6','ELS_GRADE_6','2024','2000-10-10','male','regular','sect','2024-07-16',''),(12,'testing','testing','testing','testing','testing','testing','2024STU669940','','grade_1','ELS_GRADE_1','2024','2000-10-10','male','regular','sect','2024-07-18',''),(13,'ali','ali','ali','al','alsi','ali','2024STU66996C','','grade_6','ELS_GRADE_6','2024','2000-10-10','male','regular','sect','2024-07-18',''),(14,'dasasd','asdas','asdas','sadas','sdad','sada','2024STU1721816927971','','grade_1','ELS_GRADE_1','2024','2024-07-31','male','regular','sect','2024-07-24',''),(15,'ggggggg','gggggggg','ggggggggg','gg','gg','gg','2024STU1721816988424','','grade_2','ELS_GRADE_2','2024','2024-02-02','male','regular','sect','2024-07-24','');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `class_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `date` (`date`),
  KEY `user_id` (`user_id`),
  KEY `gender` (`gender`),
  KEY `rank` (`position`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Super','Admin','Admin','','','','k.marrache@outlook.com','','','2024-05-02 16:27:49',2024,'','2024_ADM6633A2','female','general','admin','','','sinfuliphone','',''),(9,'ali','ali','ali','علي','علي','علي','k@k.com','030403020','bchemoun','2024-07-10 03:10:01',2024,'1994-04-04','2024TEA668DDF','male','grade_12','teacher','regular','section_A','$2y$10$2eDA6Xn/Ex1bKZM63YN7NOab0rzPYYo96xcU5MJzyKSccvT0Wi8Q6','','ELS_GRADE_12'),(10,'Hasan','Hasan','Hasan','حسن','حسن','حسن','km@kk.com','032083107','bchamoun','2024-07-10 03:11:56',2024,'2003-02-01','2024TEA668DDF','male','grade_10','teacher','regular','section_A','$2y$10$gDyNC/Ho1ck8vnEfGgyyMeIkHFH6XQ/2lydYryTnpjOUbiPqfsO66','','ELS_GRADE_10'),(11,'Marwan','Mohammad','Daw','مروان','محمد','ضو','mar@daw.com','037020100','bchamoun','2024-07-10 03:22:19',2024,'1991-10-10','2024TEA668DE2','male','grade_10','teacher','regular','section_A','$2y$10$OKL6lwTE87QvP07VbKyUoO5ufXCk5IorODrT/13nNokb0KSD4rO5u','','ELS_GRADE_10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-25 18:32:12
