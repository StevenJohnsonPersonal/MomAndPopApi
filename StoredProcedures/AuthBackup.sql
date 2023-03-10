-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: Auth
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `PERSISTENT_TOKENS`
--

DROP TABLE IF EXISTS `PERSISTENT_TOKENS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSISTENT_TOKENS` (
  `username` varchar(20) NOT NULL,
  `refresh_token` varchar(64) NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `PERSISTENT_TOKENS_ibfk_1` FOREIGN KEY (`username`) REFERENCES `USER_CREDENTIALS` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSISTENT_TOKENS`
--

LOCK TABLES `PERSISTENT_TOKENS` WRITE;
/*!40000 ALTER TABLE `PERSISTENT_TOKENS` DISABLE KEYS */;
INSERT INTO `PERSISTENT_TOKENS` VALUES ('Boba','v8YCt4Rzme7Hy3VtXzagNMaq/6NJV5upuueyAIo7mptWKjCVchdj6S5rllzbeA==','2023-01-15 00:21:09'),('Fluff3r','3OAAEW9d2ppooBp087Yh1fNBT7Td8cADUeSRH1D8X/2a/Zmzi2K9McAR/Ce/zQ==','2023-01-22 03:16:12'),('Matcha','BH+j/6aEkDTIADVhtBx2TRFKyWk8bPZXdlkjE54wv1x3b7rDoCex6YdxzLFqcg==','2023-01-07 14:24:37'),('Mochi','cLsWXoMucx+VAkutRluy83kITUIHE5upsg6XIIy2vWTG4uCOLVwslUKP0weCEA==','2022-12-18 15:12:14');
/*!40000 ALTER TABLE `PERSISTENT_TOKENS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CREDENTIALS`
--

DROP TABLE IF EXISTS `USER_CREDENTIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CREDENTIALS` (
  `username` varchar(20) NOT NULL,
  `password_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CREDENTIALS`
--

LOCK TABLES `USER_CREDENTIALS` WRITE;
/*!40000 ALTER TABLE `USER_CREDENTIALS` DISABLE KEYS */;
INSERT INTO `USER_CREDENTIALS` VALUES ('Boba','e175063b243f1125e8b18887aec74c63fee0c916518422d4cc8681e8aca2f33b'),('Fluff3r','3441df0babc2a2dda551d7cd39fb235bc4e09cd1e4556bf261bb49188f548348'),('Matcha','7f59bc4ab8ce7894be40dba4875bac980ee82ab48e1fcdd7e7e31e9ee96e8761'),('Mochi','7f59bc4ab8ce7894be40dba4875bac980ee82ab48e1fcdd7e7e31e9ee96e8761');
/*!40000 ALTER TABLE `USER_CREDENTIALS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-22 14:35:20
