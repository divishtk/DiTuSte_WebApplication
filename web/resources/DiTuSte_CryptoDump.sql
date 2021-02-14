-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cryptodb
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article_storage`
--

DROP TABLE IF EXISTS `article_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_storage` (
  `lab_id` int(11) NOT NULL,
  `tittle` varchar(50) DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `rated` varchar(30) DEFAULT NULL,
  `posted_on` datetime DEFAULT NULL,
  `lab_user` varchar(50) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `data_file` blob,
  `ratings` varchar(30) DEFAULT NULL,
  `docText` varchar(2000) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `minitools_storage`
--

DROP TABLE IF EXISTS `minitools_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minitools_storage` (
  `userId` int(10) NOT NULL,
  `lab_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `data_file` mediumblob,
  `instruction_file` mediumblob,
  `uploaded` datetime DEFAULT NULL,
  `lab_user` varchar(50) DEFAULT NULL,
  `approved` varchar(20) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `ratings` varchar(30) DEFAULT NULL,
  `topic` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`lab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `proj_Id` int(11) NOT NULL,
  `spec_id` varchar(20) DEFAULT NULL,
  `proj_name` varchar(40) DEFAULT NULL,
  `proj_desc` varchar(500) DEFAULT NULL,
  `proj_path` varchar(100) DEFAULT NULL,
  `proj_view_type` varchar(30) DEFAULT NULL,
  `proj_tech` varchar(30) DEFAULT NULL,
  `proj_language` varchar(100) NOT NULL,
  `modified_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`proj_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `security_topic_list`
--

DROP TABLE IF EXISTS `security_topic_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_topic_list` (
  `lab_id` int(11) DEFAULT NULL,
  `lists` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker` (
  `t_id` int(11) NOT NULL,
  `proj_id` int(11) DEFAULT NULL,
  `proj_name` varchar(50) DEFAULT NULL,
  `take_notes` varchar(400) DEFAULT NULL,
  `article_items` varchar(100) DEFAULT NULL,
  `task_done` varchar(100) DEFAULT NULL,
  `task_remaining` varchar(100) DEFAULT NULL,
  `modified_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users2`
--

DROP TABLE IF EXISTS `users2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users2` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userEmailId` varchar(50) DEFAULT NULL,
  `userType` varchar(20) DEFAULT NULL,
  `updatedBy` datetime DEFAULT NULL,
  `userAge` int(10) DEFAULT NULL,
  `userGender` varchar(20) DEFAULT NULL,
  `userAddress` varchar(200) DEFAULT NULL,
  `userExp` int(200) DEFAULT NULL,
  `userLang` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'cryptodb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-31 19:18:48
