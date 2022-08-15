-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: 0019_Lab_Exam
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Hero`
--

DROP TABLE IF EXISTS `Hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero` (
  `Hero_id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Picture_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Hero_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero`
--

LOCK TABLES `Hero` WRITE;
/*!40000 ALTER TABLE `Hero` DISABLE KEYS */;
INSERT INTO `Hero` VALUES (1,'Doctor Strange','hypnosis , drink , park apostles , should have explained , Vice position , Bachelor of Science , fly short','https://th.wikipedia.org/wiki/%E0%B9%84%E0%B8%9F%E0%B8%A5%E0%B9%8C:%E0%B8%88%E0%B8%AD%E0%B8%A1%E0%B9%80%E0%B8%A7%E0%B8%97%E0%B8%A2%E0%B9%8C%E0%B8%A1%E0%B8%AB%E0%B8%B2%E0%B8%81%E0%B8%B2%E0%B8%AC.jpg#/media/ไฟล์:จอมเวทย์มหากาฬ.jpg'),(2,'Thor','Climate Control , Hammer Power , Lightning , Time Skip','https://th.wikipedia.org/wiki/%E0%B9%84%E0%B8%9F%E0%B8%A5%E0%B9%8C:Thor_poster.jpg#/media/ไฟล์:Thor_poster.jpg'),(3,'Captain America','Ultimate mental and physical conditioning , Physical state enhanced , Superhuman strength , Martial arts and melee expertise , All weapon proficiency , Expert marksman , Expert strategist , planner and commander , armed with a vibranium shield','https://th.wikipedia.org/wiki/%E0%B9%84%E0%B8%9F%E0%B8%A5%E0%B9%8C:Captain_America_(Steve_Rogers).jpg#/media/ไฟล์:Captain_America_(Steve_Rogers).jpg');
/*!40000 ALTER TABLE `Hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hero_in_movie`
--

DROP TABLE IF EXISTS `Hero_in_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero_in_movie` (
  `Hero_id` int NOT NULL,
  `Movie_id` int NOT NULL,
  PRIMARY KEY (`Hero_id`,`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero_in_movie`
--

LOCK TABLES `Hero_in_movie` WRITE;
/*!40000 ALTER TABLE `Hero_in_movie` DISABLE KEYS */;
INSERT INTO `Hero_in_movie` VALUES (1,111),(1,222),(1,777),(2,333),(2,444),(3,555),(3,666);
/*!40000 ALTER TABLE `Hero_in_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `Movie_id` int NOT NULL,
  `MName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Trailer_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (111,'Doctor Strange (2016)','https://youtu.be/Lt-U_t2pUHI'),(222,'Doctor Strange In The Multiverse of Madness','https://youtu.be/mvRxgOX7Kes'),(333,'Thor : Ragnarok','https://youtu.be/ue80QwXMRHg'),(444,'Thor : The Dark World ','https://youtu.be/npvJ9FTgZbM'),(555,'Captain America : The First Avenger','https://youtu.be/JerVrbLldXw'),(666,'Captain America : The Winter Soldier','https://youtu.be/tbayiPxkUMM'),(777,'Avengers : Endgame','https://youtu.be/TcMBFSGVi1c');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 21:42:42
