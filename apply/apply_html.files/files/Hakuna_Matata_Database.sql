-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: hakuna_matata
-- ------------------------------------------------------
-- Server version	5.5.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hakuna_matata`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hakuna_matata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hakuna_matata`;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `userName` varchar(128) DEFAULT NULL,
  `fileID` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `userID` (`id`),
  KEY `fileID` (`id`),
  CONSTRAINT `fileID` FOREIGN KEY (`id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(128) DEFAULT NULL,
  `uploadUser` int(11) DEFAULT NULL,
  `hash` varchar(128) DEFAULT NULL,
  `description` text,
  `fileSize` mediumtext,
  `uploadDate` datetime DEFAULT NULL,
  `fileLocalURI` varchar(128) DEFAULT NULL,
  `extension` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uploadUser` (`uploadUser`),
  CONSTRAINT `uploadUser` FOREIGN KEY (`uploadUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (40,'TJUMap.bmp',1,'6ebae3ec684502a0bd7c15bfa690726d93e02fc8','no','15974400','2011-10-30 13:40:27','c:\\upload\\1319953227265','bmp'),(41,'1.png',1,'2174983d4284efe05e7ed5a637f347a4fc40fb4a','no','638976','2011-10-30 13:41:16','c:\\upload\\1319953276671','png'),(42,'2.pdf',1,'33f71e0b10e5eb9fdc65016651eee597fc5c109f','no','294912','2011-10-30 13:41:53','c:\\upload\\1319953313250','pdf'),(43,'2010_Wang_et_al_ITSC(Transportation Mode Inference from Anonymized and Aggregated).pdf',1,'9e5ea07103ba468166180b6985f553d4006833c6','no','1064960','2011-10-30 13:42:10','c:\\upload\\1319953330484','pdf'),(44,'现代操作系统课后答案(中文).pdf',3,'4a8a78b865e10ed64536a616465958f845dd46ec','no','294912','2011-10-30 13:44:26','c:\\upload\\1319953466718','pdf'),(45,'ACloseNet.zip',1,'e97c84a7df9f7cba1f36b50938df86f3af409717','no','671744','2011-10-30 13:44:30','c:\\upload\\1319953470750','zip'),(46,'WINDOWS 98 启动盘(加强版).rar',1,'542c3ff7a08263e9902e44779a7f07468bc233e9','no','884736','2011-10-30 13:44:55','c:\\upload\\1319953495828','rar'),(47,'GPU-Z.0.5.3.exe',1,'23c1a481e91c3d852d1fc7b5dfdd730728f09293','no','950272','2011-10-30 13:45:02','c:\\upload\\1319953502343','exe'),(48,'屏幕快照 2011-02-01 下午01.11.28.png',1,'6780319738c7a1ca5d2aa0215af39ebb10115203','no','311296','2011-10-30 13:45:13','c:\\upload\\1319953513328','png'),(49,'Physical.swf',1,'4ef3519e2cfd2fd3e5d6ee802a3ec8ac0b5bca83','no','16384','2011-10-30 13:45:22','c:\\upload\\1319953522093','swf'),(50,'利用大规模匿名移动通讯记录推测公众选择交通方式的方法.pdf',1,'14b7a5a756d5bd791d9ca698fef7c830c15b7d26','no','851968','2011-10-30 13:45:31','c:\\upload\\1319953531484','pdf'),(51,'管樂團 名偵探柯南.flv',1,'087e32657416cbbca6c0645df9889de4aec853da','no','21069824','2011-10-30 13:45:46','c:\\upload\\1319953545171','flv'),(52,'数据库系统基础教程.pdf',3,'7bfea6231054b258f4a471f548a12a32cf0362a3','no','2703360','2011-10-30 13:45:47','c:\\upload\\1319953547343','pdf'),(53,'AIRPLAY.exe',1,'8c307ae6b1a629b7287aeb06a5e9b96ff3e85ad4','no','770048','2011-10-30 13:45:55','c:\\upload\\1319953555687','exe'),(54,'Chrysanthemum.jpg',3,'aeb2332e6c18ddc85486a2936db86f45556cc4f9','no','884736','2011-10-30 13:46:14','c:\\upload\\1319953574812','jpg'),(55,'wsockexpert.rar',1,'69fd335a450e5692e2b6d8bb1beccbcc4d133c6c','no','278528','2011-10-30 13:46:26','c:\\upload\\1319953586062','rar'),(56,'DSC_1075.JPG',4,'e04f64b56ddac6d8861f272db86fa8aacdd64967','no','2949120','2011-10-30 13:46:45','c:\\upload\\1319953605531','JPG'),(57,'iFunBox.exe',1,'37c39b8112f8d5438d65b20f1b4152dde9b8b0d1','no','7389184','2011-10-30 13:46:59','c:\\upload\\1319953619203','exe'),(58,'AV.jpg',3,'f100baa6beeb339f9693138cb970a61f631499e4','no','16384','2011-10-30 13:55:54','c:\\upload\\1319954154593','jpg'),(59,'AV1.jpg',3,'88596d2b7662406fa88e2699ed576477af023f7e','no','16384','2011-10-30 13:59:14','c:\\upload\\1319954354687','jpg'),(60,'杜朴风.jpg',3,'e60543c3ffcadc44e88496dde040dfb004e28845','no','16384','2011-10-30 14:02:19','c:\\upload\\1319954539640','jpg'),(61,'dupufeng.jpg',3,'e60543c3ffcadc44e88496dde040dfb004e28845','no','16384','2011-10-30 14:03:44','c:\\upload\\1319954624437','jpg'),(62,'AV2.jpg',3,'c354a09d535d519446892044c0fb80163375d848','no','16384','2011-10-30 14:06:56','c:\\upload\\1319954816593','jpg');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `score` int(11) DEFAULT '0',
  `token` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'owwlo@163.com','owwlo',200,'0.05529657104545885'),(2,'lxd@qq.com','lxd',10,'0.7035997823845593'),(3,'419848320@qq.com','123456',80,'0.6262415057292595'),(4,'howful@tju.zyrj.org','fhb~1991219',10,'0.04612458780978302');
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

-- Dump completed on 2011-10-30 14:39:03
