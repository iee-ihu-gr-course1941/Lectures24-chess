-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: chess
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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `b_color` enum('B','W') NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece` enum('K','Q','R','B','N','P') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,1,'B','W','R'),(2,1,'W','W','N'),(3,1,'B','W','B'),(4,1,'W','W','Q'),(5,1,'B','W','K'),(6,1,'W','W','B'),(7,1,'B','W','N'),(8,1,'W','W','R'),(1,2,'W','W','P'),(2,2,'B','W','P'),(3,2,'W','W','P'),(4,2,'B','W','P'),(5,2,'W','W','P'),(6,2,'B','W','P'),(7,2,'W','W','P'),(8,2,'B','W','P'),(1,3,'B',NULL,NULL),(2,3,'W',NULL,NULL),(3,3,'B',NULL,NULL),(4,3,'W',NULL,NULL),(5,3,'B',NULL,NULL),(6,3,'W',NULL,NULL),(7,3,'B',NULL,NULL),(8,3,'W',NULL,NULL),(1,4,'W',NULL,NULL),(2,4,'B',NULL,NULL),(3,4,'W',NULL,NULL),(4,4,'B',NULL,NULL),(5,4,'W',NULL,NULL),(6,4,'B',NULL,NULL),(7,4,'W',NULL,NULL),(8,4,'B',NULL,NULL),(1,5,'B',NULL,NULL),(2,5,'W',NULL,NULL),(3,5,'B',NULL,NULL),(4,5,'W',NULL,NULL),(5,5,'B',NULL,NULL),(6,5,'W',NULL,NULL),(7,5,'B',NULL,NULL),(8,5,'W',NULL,NULL),(1,6,'W',NULL,NULL),(2,6,'B',NULL,NULL),(3,6,'W',NULL,NULL),(4,6,'B',NULL,NULL),(5,6,'W',NULL,NULL),(6,6,'B',NULL,NULL),(7,6,'W',NULL,NULL),(8,6,'B',NULL,NULL),(1,7,'B','B','P'),(2,7,'W','B','P'),(3,7,'B','B','P'),(4,7,'W','B','P'),(5,7,'B','B','P'),(6,7,'W','B','P'),(7,7,'B','B','P'),(8,7,'W','B','P'),(1,8,'W','B','R'),(2,8,'B','B','N'),(3,8,'W','B','B'),(4,8,'B','B','Q'),(5,8,'W','B','K'),(6,8,'B','B','B'),(7,8,'W','B','N'),(8,8,'B','B','R');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_empty`
--

DROP TABLE IF EXISTS `board_empty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_empty` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `b_color` enum('B','W') NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece` enum('K','Q','R','B','N','P') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_empty`
--

LOCK TABLES `board_empty` WRITE;
/*!40000 ALTER TABLE `board_empty` DISABLE KEYS */;
INSERT INTO `board_empty` VALUES (1,1,'B','W','R'),(2,1,'W','W','N'),(3,1,'B','W','B'),(4,1,'W','W','Q'),(5,1,'B','W','K'),(6,1,'W','W','B'),(7,1,'B','W','N'),(8,1,'W','W','R'),(1,2,'W','W','P'),(2,2,'B','W','P'),(3,2,'W','W','P'),(4,2,'B','W','P'),(5,2,'W','W','P'),(6,2,'B','W','P'),(7,2,'W','W','P'),(8,2,'B','W','P'),(1,3,'B',NULL,NULL),(2,3,'W',NULL,NULL),(3,3,'B',NULL,NULL),(4,3,'W',NULL,NULL),(5,3,'B',NULL,NULL),(6,3,'W',NULL,NULL),(7,3,'B',NULL,NULL),(8,3,'W',NULL,NULL),(1,4,'W',NULL,NULL),(2,4,'B',NULL,NULL),(3,4,'W',NULL,NULL),(4,4,'B',NULL,NULL),(5,4,'W',NULL,NULL),(6,4,'B',NULL,NULL),(7,4,'W',NULL,NULL),(8,4,'B',NULL,NULL),(1,5,'B',NULL,NULL),(2,5,'W',NULL,NULL),(3,5,'B',NULL,NULL),(4,5,'W',NULL,NULL),(5,5,'B',NULL,NULL),(6,5,'W',NULL,NULL),(7,5,'B',NULL,NULL),(8,5,'W',NULL,NULL),(1,6,'W',NULL,NULL),(2,6,'B',NULL,NULL),(3,6,'W',NULL,NULL),(4,6,'B',NULL,NULL),(5,6,'W',NULL,NULL),(6,6,'B',NULL,NULL),(7,6,'W',NULL,NULL),(8,6,'B',NULL,NULL),(1,7,'B','B','P'),(2,7,'W','B','P'),(3,7,'B','B','P'),(4,7,'W','B','P'),(5,7,'B','B','P'),(6,7,'W','B','P'),(7,7,'B','B','P'),(8,7,'W','B','P'),(1,8,'W','B','R'),(2,8,'B','B','N'),(3,8,'W','B','B'),(4,8,'B','B','Q'),(5,8,'W','B','K'),(6,8,'B','B','B'),(7,8,'W','B','N'),(8,8,'B','B','R');
/*!40000 ALTER TABLE `board_empty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_status`
--

DROP TABLE IF EXISTS `game_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` enum('W','B') DEFAULT NULL,
  `result` enum('B','W','D') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_status`
--

LOCK TABLES `game_status` WRITE;
/*!40000 ALTER TABLE `game_status` DISABLE KEYS */;
INSERT INTO `game_status` VALUES ('started','W','D','2022-11-28 18:39:59');
/*!40000 ALTER TABLE `game_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `username` varchar(20) DEFAULT NULL,
  `piece_color` enum('B','W') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`piece_color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES ('qqqqqq','B','8599a2efe05697622caeddae84507ee3','2022-11-28 18:16:51'),('aaaa','W','05da4297eecc648e840b6d3bfa772adc','2022-11-28 17:16:54');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'chess'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clean_board` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_board`()
BEGIN
	REPLACE INTO board SELECT * FROM board_empty;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `move_piece` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `move_piece`(x1 tinyint,y1 tinyint,x2 tinyint,y2 tinyint)
BEGIN
	declare  p, p_color char;
	
	select  piece, piece_color into p, p_color FROM `board` WHERE X=x1 AND Y=y1;
	
	update board
	set piece=p, piece_color=p_color
	where x=x2 and y=y2;
	
	UPDATE board
	SET piece=null,piece_color=null
	WHERE X=x1 AND Y=y1;
	update game_status set p_turn=if(p_color='W','B','W');
	
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-07 10:23:39
