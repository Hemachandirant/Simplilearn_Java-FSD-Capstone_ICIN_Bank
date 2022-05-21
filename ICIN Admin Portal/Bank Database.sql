-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `number` varchar(10) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` int DEFAULT NULL,
  `p` int DEFAULT NULL,
  `s` int DEFAULT NULL,
  `enabled` varchar(10) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `primary_account` varchar(10) DEFAULT NULL,
  `saving_account` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('0','Hemachandiran','T','Hemachandiran','admin@gmail.com',123123,18549,83291,'enabled','123','18537','83303'),('0','john','J','John','john@gmail.com',345345345,44819,97205,'enabled','1234','45819','95205'),('0','David','S','David','david@gmail.com',6787567,11137,43787,'enabled','123','9137','44787'),('0','Hemachandiran','T','Hemachandiran','hema@gmail.com',87967676,45527,20147,'enabled','','12312312','1123123123'),('0','Will','Smith','Will','will@gmail.com',908978767,50225,92345,'enabled','1234','48225','93345');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer1`
--

DROP TABLE IF EXISTS `customer1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer1` (
  `RegNo` varchar(2) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `primary_account` varchar(10) DEFAULT NULL,
  `savings_account` varchar(20) DEFAULT NULL,
  `Pass` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer1`
--

LOCK TABLES `customer1` WRITE;
/*!40000 ALTER TABLE `customer1` DISABLE KEYS */;
INSERT INTO `customer1` VALUES ('1','John','smith','John','john@gmail.com','9239192929','82345821','82345821','john@123'),('2','David','Krish','David','david@gmail.com','8939192929','80045821','80045821','david@123'),('3','Kumar','S','Kumar','kumar@gmail.com','9012391921','823459090','823459090','kumar@123'),('4','Kunal','sharme','Kunal','kunal@gmail.com','890919292939','81125821','81125821','kunal@123'),('5','Hema','chandiran','T','Hema@gmail.com','789919291234','82345333','82345333','Hema@123'),('6','Stephen','Phil','Stephen','stephen@gmail.com','9093919292939','9004582','90045821','steph@123'),('7','Sam','smith','Sam','sam@gmail.com','923919292334','82345811','82345811','sam@123');
/*!40000 ALTER TABLE `customer1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `user_name` varchar(20) DEFAULT NULL,
  `saving_account` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `check_needed` varchar(10) DEFAULT NULL,
  `primary_account` varchar(20) DEFAULT NULL,
  `r1` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES ('David','909981312','Check book needed for salary distribution ','yes','80028192981','87628912'),('Kunal','91121212312','Check book needed for Amount withdrawl','yes','891281987871','19328123'),('Hemachandiran','90121212312','Check book needed for business purposes','yes','89128192009','19328122'),('Kumar','9012121122','Check book needed for income tax purposes','yes','8912112981','19118912');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `profession` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'David','david@gmail.com','Designer');
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

-- Dump completed on 2022-05-21  9:55:45
