-- MySQL dump 10.13  Distrib 5.6.29, for Linux (x86_64)
--
-- Host: localhost    Database: hotelsupplies
-- ------------------------------------------------------
-- Server version	5.6.29

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'客房用品',0,'',1),(2,'一次性用品',0,'',1),(3,'大堂用品',0,'',1),(4,'餐饮用具',0,'',1),(5,'客房易耗品',1,'1-',2),(6,'客房杂件',1,'1-',2),(7,'指示牌',1,'1-',2),(8,'日常用品',1,'1-',2),(9,'收纳洗晒用品',1,'1-',2),(10,'小家电',1,'1-',2),(11,'洗漱用品',2,'2-',2),(12,'居家用品',2,'2-',2),(13,'酒店床上用品',2,'2-',2),(14,'毛巾浴巾',2,'2-',2),(15,'地毯毛毯',2,'2-',2),(16,'餐厅布草',2,'2-',2),(17,'大堂标牌',3,'3-',2),(18,'防护用品',3,'3-',2),(19,'大堂杂件',3,'3-',2),(20,'装饰',3,'3-',2),(21,'智能产品',3,'3-',2),(22,'陶瓷器皿',4,'4-',2),(23,'餐具',4,'4-',2),(24,'餐厅杂件',4,'4-',2),(25,'餐厅耗材',4,'4-',2),(26,'餐厅用纸',4,'4-',2),(27,'茶具',4,'4-',2),(28,'卫浴套装',5,'1-5-',3),(29,'牙刷牙膏',5,'1-5-',3),(30,'漱口水',5,'1-5-',3),(31,'茶具',6,'1-6-',3),(32,'烟缸',6,'1-6-',3),(33,'杯垫',6,'1-6-',3),(34,'洗衣单',7,'1-7-',3),(35,'酒水单',7,'1-7-',3),(36,'广告牌',7,'1-7-',3),(37,'垃圾桶',8,'1-8-',3),(38,'美容镜',8,'1-8-',3),(39,'手电筒',8,'1-8-',3),(40,'毛巾架',9,'1-9-',3),(41,'纸巾架',9,'1-9-',3),(42,'衣架',9,'1-9-',3),(43,'电吹风',10,'1-10-',3),(44,'电热壶',10,'1-10-',3),(45,'电冰箱',10,'1-10-',3),(46,'牙刷',11,'2-11-',3),(47,'牙膏',11,'2-11-',3),(48,'沐浴露',11,'2-11-',3),(49,'拖鞋',12,'2-12-',3),(50,'一次性杯',12,'2-12-',3),(51,'火柴',12,'2-12-',3),(52,'床单',13,'2-13-',3),(53,'被罩',13,'2-13-',3),(54,'枕罩',13,'2-13-',3),(55,'方巾',14,'2-14-',3),(56,'浴巾',14,'2-14-',3),(57,'面巾',14,'2-14-',3),(58,'宾馆地毯',15,'2-15-',3),(59,'房间地毯',15,'2-15-',3),(60,'电梯地毯',15,'2-15-',3),(61,'台垫',16,'2-16-',3),(62,'椅裙',16,'2-16-',3),(63,'椅套',16,'2-16-',3),(64,'洗手间标牌',17,'3-17-',3),(65,'金属标牌',17,'3-17-',3),(66,'大堂广告牌',17,'3-17-',3),(67,'皮手套',18,'3-18-',3),(68,'水鞋',18,'3-18-',3),(69,'反光衣',18,'3-18-',3),(70,'擦鞋机',19,'3-19-',3),(71,'灭蚊灯',19,'3-19-',3),(72,'应急灯',19,'3-19-',3),(73,'灯具',20,'3-20-',3),(74,'假花',20,'3-20-',3),(75,'雕塑',20,'3-20-',3),(76,'酒店管理系统',21,'3-21-',3),(77,'无线对讲机',21,'3-21-',3),(78,'照明系统',21,'3-21-',3),(79,'茶具',22,'4-22-',3),(80,'茶壶',22,'4-22-',3),(81,'茶杯',22,'4-22-',3),(82,'水果刀',23,'4-23-',3),(83,'筷子',23,'4-23-',3),(84,'筷架',23,'4-23-',3),(85,'纸巾盒',24,'4-24-',3),(86,'毛巾碟',24,'4-24-',3),(87,'台号牌/架',24,'4-24-',3),(88,'打包餐盒',25,'4-25-',3),(89,'纸碗',25,'4-25-',3),(90,'蜡烛',25,'4-25-',3),(91,'牙签',25,'4-25-',3),(92,'餐巾',26,'4-26-',3),(93,'纸面巾',26,'4-26-',3),(94,'纸湿巾纸',26,'4-26-',3),(95,'功夫茶具',27,'4-27-',3),(96,'茶盘',27,'4-27-',3),(97,'紫砂壶',27,'4-27-',3);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advice`
--

DROP TABLE IF EXISTS `advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `advice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advice`
--

LOCK TABLES `advice` WRITE;
/*!40000 ALTER TABLE `advice` DISABLE KEYS */;
INSERT INTO `advice` VALUES (1,'sfsdf','test@qq.com','sdfsdf'),(2,'sdf','sdf@sf.com','sdfsdf');
/*!40000 ALTER TABLE `advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `collection_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `shortdescription` varchar(255) NOT NULL,
  `fulldescription` text NOT NULL,
  `originprice` double DEFAULT NULL,
  `presentprice` double NOT NULL,
  `factoryprice` double NOT NULL,
  `placeoforigin` varchar(32) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '999',
  `imagepath` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcount`
--

DROP TABLE IF EXISTS `productcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_count` int(11) NOT NULL DEFAULT '0',
  `favourite_count` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcount`
--

LOCK TABLES `productcount` WRITE;
/*!40000 ALTER TABLE `productcount` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,'benjaminwhx@sina.com'),(3,'benjaminwhx@gmail.com'),(4,'');
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `gender` int(11) NOT NULL,
  `truename` varchar(64) DEFAULT NULL,
  `qq` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'test','$2a$10$zCd3TY6Ujf//BYXO0o6U3OAjS5wSbHJHdHtOksyaPbe1a38F3GMC.','test@qq.com',1,'www',449261417,'','0:0:0:0:0:0:0:1','fe9fd52fe33ea5db56c705a9367806e3'),(10,'111111111','$2a$10$d2F4JiTGDplbNNjI6o1uBuaVy9/.m8eZp0mUDUFDR8qE4WCq1Fuua','111@qq.com',1,'111',111111111,'111','113.106.162.250','133dbc29a981f5178c36d889434e2514'),(11,'Caroline','$2a$10$xu0yehmJnLLiHsvMggAM7eCLebJ0/bM3Tf5NwSrB1dyMdYUMNzMku','caroline_hjq@sina.com',2,'',NULL,'','123.118.145.54','3bad257c400bce1c72952fc1e2adf1a0'),(12,'pride','$2a$10$ySVLCeqKfilNRdzBVLye6.IfqCGUpbaewUKbX.wQAVI.JcDVmRXCG','1009724539@qq.com',1,'',NULL,'','59.61.60.77','f64ba555c4c4dd8f9e45ab17dbfdbbcb');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-18 10:01:53
