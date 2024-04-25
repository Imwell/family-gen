-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: waxt
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `gen_family`
--

DROP TABLE IF EXISTS `gen_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `biography` varchar(50) DEFAULT NULL,
  `training` varchar(50) DEFAULT NULL,
  `senior` varchar(50) DEFAULT NULL,
  `his_intro` text,
  `source` text,
  `content` text,
  `address` varchar(1200) DEFAULT NULL,
  `order_by` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `maintainer` varchar(120) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `update_time` varchar(50) DEFAULT NULL,
  `create_organize` varchar(50) DEFAULT NULL,
  `create_org_cascade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_family`
--

LOCK TABLES `gen_family` WRITE;
/*!40000 ALTER TABLE `gen_family` DISABLE KEYS */;
INSERT INTO `gen_family` (`id`, `name`, `first_name`, `biography`, `training`, `senior`, `his_intro`, `source`, `content`, `address`, `order_by`, `status`, `maintainer`, `remark`, `create_user`, `create_time`, `update_time`, `create_organize`, `create_org_cascade`) VALUES (1,'安氏族谱','安',' ',' ','景秀恩现广，兴甲兆子常，忠传浩英才，宏志振国强。','       据家谱记载，始祖  自明朝洪武年间， 从山西省洪洞县大槐树老鸹窝迁至山东省xx市xxx县\n      安氏家族历经数世，枝繁叶茂，分枝散叶。现分布于周边两省（山东，河北）三县一十八村。\n       由于历史原因家谱失传，于1992年春，安xx，安xx两位老人（当时都已年过70），品靠老辈传下来的（景秀恩现广，兴甲兆子长）十字传家字辈，脚踏自行车，访遍附近方圆百里，由于当时能力有限，只找到了十八村的同宗族人，然后定于清明节在xxx重修家谱。\n       1992年清明节，十八村安氏宗亲代表在山东省xxxxx聚集，大家为了一个共同的话题《续家谱》，当时的xxxx安氏家人为了庆祝这一历史性时刻，共同集资唱大戏三天。\n       在大伙共同努力下又重续家谱（忠传浩英才，宏志振国强）十字辈。又订了每年的清明节是十八村安氏宗亲代表的清明会，每个村轮流值会。',' ','一九九二年安氏家族续家谱，提议人：xxxx。','山东省xx市xxx县','1','Y',' ','','2','2019-01-01 17:44:32','2021-01-27 21:53:02','25','org25_'),(15,'张氏家族','张','','','','','','','','','Y','','','2','2024-04-22 16:05:55','2024-04-22 16:05:55','26','org25_26_');
/*!40000 ALTER TABLE `gen_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_generation`
--

DROP TABLE IF EXISTS `gen_generation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_generation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gorder` varchar(50) DEFAULT NULL,
  `seniority` varchar(50) DEFAULT NULL,
  `order_by` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `update_time` varchar(50) DEFAULT NULL,
  `create_organize` varchar(50) DEFAULT NULL,
  `create_org_cascade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_generation`
--

LOCK TABLES `gen_generation` WRITE;
/*!40000 ALTER TABLE `gen_generation` DISABLE KEYS */;
INSERT INTO `gen_generation` (`id`, `family_id`, `name`, `gorder`, `seniority`, `order_by`, `status`, `remark`, `create_user`, `create_time`, `update_time`, `create_organize`, `create_org_cascade`) VALUES (1,'1','第十七世','17','','17','Y','','2','2019-01-01 18:44:03','2019-12-08 23:18:32','25','org25_'),(2,'1','第十八世','18','','18','Y','','2','2019-01-01 18:44:26','2019-12-08 23:18:39','25','org25_'),(3,'1','第十九世','19','','19','Y','','2','2019-01-01 18:44:42','2019-12-08 23:18:46','25','org25_'),(4,'1','第二十世','20','','20','Y','','2','2019-01-01 18:44:54','2019-12-08 23:18:52','25','org25_'),(5,'1','第二十一世','21','景','21','Y','','2','2019-01-01 18:45:02','2019-12-08 23:19:00','25','org25_'),(6,'1','第二十二世','22','秀','22','Y','','2','2019-01-01 18:45:18','2019-12-08 23:19:10','25','org25_'),(7,'1','第二十三世','23','恩','23','Y','','2','2019-01-01 18:45:35','2019-12-08 23:19:16','25','org25_'),(8,'1','第二十四世','24','现','24','Y','','2','2019-01-01 18:45:48','2019-12-08 23:19:24','25','org25_'),(9,'1','第二十五世','25','广','25','Y','','2','2019-01-01 18:46:02','2019-12-08 23:19:30','25','org25_'),(10,'1','第二十六世','26','兴','26','Y','','2','2019-01-01 18:46:17','2019-12-08 23:19:39','25','org25_'),(11,'1','第二十七世','27','甲','27','Y','','2','2019-01-01 18:46:32','2019-12-08 23:20:02','25','org25_'),(12,'1','第二十八世','28','兆','28','Y','','2','2019-01-01 18:46:44','2019-12-08 23:20:09','25','org25_'),(13,'1','第二十九世','29','子','29','Y','','2','2019-01-01 18:50:29','2019-01-01 18:50:29','25','org25_'),(14,'1','第三十世','30','常','30','Y','','2','2019-01-01 18:50:47','2019-01-01 18:50:47','25','org25_'),(16,'1','第十六世','16','','16','Y','','30','2019-01-27 20:48:06','2019-12-08 23:18:25','25','org25_'),(33,'15','第零世代','0','源','0','Y',NULL,'2','2024-04-22 16:05:55','2024-04-22 16:05:55','26','org25_26_'),(34,'15','第一世代','1','祖','1','Y','','2','2024-04-22 16:06:50','2024-04-22 16:06:50','26','org25_26_'),(35,'15','第二世代','2','子祖','2','Y','','2','2024-04-22 16:07:14','2024-04-22 16:07:14','26','org25_26_'),(36,'15','第三世代','3','孙祖','3','Y','','2','2024-04-22 16:07:30','2024-04-22 16:07:30','26','org25_26_');
/*!40000 ALTER TABLE `gen_generation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_member`
--

DROP TABLE IF EXISTS `gen_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` varchar(50) NOT NULL,
  `generation_id` varchar(50) NOT NULL,
  `father_id` varchar(50) NOT NULL,
  `mother_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `content` text,
  `tpdz` varchar(1200) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别：1 男；0 女',
  `open_wife` varchar(50) DEFAULT NULL,
  `order_by` varchar(50) DEFAULT NULL,
  `self` tinyint(4) DEFAULT '0' COMMENT '是否本人：0 否；1 是',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `update_time` varchar(50) DEFAULT NULL,
  `create_organize` varchar(50) DEFAULT NULL,
  `create_org_cascade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=644 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_member`
--

LOCK TABLES `gen_member` WRITE;
/*!40000 ALTER TABLE `gen_member` DISABLE KEYS */;
INSERT INTO `gen_member` (`id`, `family_id`, `generation_id`, `father_id`, `mother_id`, `name`, `content`, `tpdz`, `level`, `sex`, `open_wife`, `order_by`, `self`, `remark`, `create_user`, `create_time`, `update_time`, `create_organize`, `create_org_cascade`) VALUES (635,'15','33','0',NULL,'张氏家族','代表氏族最初人员',NULL,'8',1,NULL,NULL,0,NULL,'2','2024-04-22 16:05:55','2024-04-22 16:05:55','26','org25_26_'),(636,'15','34','635',NULL,'张祖1','',NULL,'8',1,NULL,'1',0,'','2','2024-04-22 16:07:49','2024-04-22 16:07:49','26','org25_26_'),(637,'15','34','635',NULL,'张祖2','',NULL,'9',1,NULL,'2',0,'','2','2024-04-22 16:08:31','2024-04-22 16:10:22','26','org25_26_'),(638,'15','35','636',NULL,'张祖1-子','',NULL,'8',1,NULL,'1',0,'','2','2024-04-22 16:08:58','2024-04-22 16:08:58','26','org25_26_'),(639,'15','35','636',NULL,'张祖1-2子','',NULL,'9',1,NULL,'',0,'','2','2024-04-22 16:09:15','2024-04-22 16:09:15','26','org25_26_'),(640,'15','35','637',NULL,'张祖2-子','',NULL,'8',1,NULL,'1',0,'','2','2024-04-22 16:09:38','2024-04-22 16:09:38','26','org25_26_'),(641,'15','36','640',NULL,'张孙','',NULL,'8',1,'on','1',1,'','2','2024-04-22 16:10:13','2024-04-22 18:57:20','26','org25_26_'),(642,'15','36','639',NULL,'长女','',NULL,'8',0,'on','2',0,'','2','2024-04-25 15:09:24','2024-04-25 15:09:24','26','org25_26_'),(643,'15','36','639',NULL,'孙女','',NULL,'9',0,'on','2',0,'','2','2024-04-25 15:16:54','2024-04-25 15:16:54','26','org25_26_');
/*!40000 ALTER TABLE `gen_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_member_wife`
--

DROP TABLE IF EXISTS `gen_member_wife`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_member_wife` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` text,
  `tpdz` varchar(1200) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `update_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_member_wife`
--

LOCK TABLES `gen_member_wife` WRITE;
/*!40000 ALTER TABLE `gen_member_wife` DISABLE KEYS */;
INSERT INTO `gen_member_wife` (`id`, `member_id`, `name`, `content`, `tpdz`, `level`, `remark`, `create_user`, `create_time`, `update_time`) VALUES (1,'642','长女夫','丈夫',NULL,'1','11','2','2024-04-25 15:09:24','2024-04-25 15:09:24'),(2,'643','孙女夫','丈夫',NULL,'1','2','2','2024-04-25 15:16:54','2024-04-25 15:16:54');
/*!40000 ALTER TABLE `gen_member_wife` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_message`
--

DROP TABLE IF EXISTS `gen_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `content` text,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `order_by` varchar(50) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `create_organize` varchar(50) DEFAULT NULL,
  `create_org_cascade` varchar(50) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `update_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_message`
--

LOCK TABLES `gen_message` WRITE;
/*!40000 ALTER TABLE `gen_message` DISABLE KEYS */;
INSERT INTO `gen_message` (`id`, `title`, `content`, `type`, `status`, `order_by`, `remark`, `create_user`, `create_organize`, `create_org_cascade`, `create_time`, `update_time`) VALUES (1,'orgTree','{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第十九世：安XX(老二)\",\"id\":\"407\",\"title\":\"家属：孙氏\",\"relationship\":\"110\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十三世：安XX(老大)\",\"id\":\"419\",\"title\":\"家属：赵氏\",\"relationship\":\"110\"}],\"name\":\"第二十二世：安XX(老四)\",\"id\":\"413\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"443\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"442\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"436\",\"title\":\"家属：黄氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"441\",\"title\":\"家属：\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"440\",\"title\":\"家属：李氏\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"435\",\"title\":\"家属：蒋氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"428\",\"title\":\"家属：张氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"418\",\"title\":\"家属：田氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老三)\",\"id\":\"412\",\"title\":\"家属：马氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"457\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"427\",\"title\":\"家属：杨氏\",\"relationship\":\"111\"},{\"name\":\"第二十四世：安XX(老大)\",\"id\":\"426\",\"title\":\"家属：田敏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"437\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"425\",\"title\":\"家属：马氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"417\",\"title\":\"家属：王氏，张氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"434\",\"title\":\"家属：夏氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"424\",\"title\":\"家属：朱氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"433\",\"title\":\"家属：赵氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"439\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"589\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"438\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"432\",\"title\":\"家属：沈氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"423\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"416\",\"title\":\"家属：于氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老二)\",\"id\":\"411\",\"title\":\"家属：申氏，郝氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十三世：安XX(老二)\",\"id\":\"415\",\"title\":\"家属：申氏\",\"relationship\":\"110\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"429\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"422\",\"title\":\"家属：李氏，张氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"431\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"421\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"430\",\"title\":\"家属：赵氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"420\",\"title\":\"家属：吕氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"414\",\"title\":\"家属：赵氏，郭氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"410\",\"title\":\"家属：吴氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老大)\",\"id\":\"409\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十世：安XX(老大)\",\"id\":\"408\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第十九世：安XX(老大)\",\"id\":\"406\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第十八世：安XX(老大)\",\"id\":\"405\",\"title\":\"家属：吴氏，宫氏\",\"relationship\":\"111\"}],\"name\":\"第十七世：安XX(老大)\",\"id\":\"404\",\"title\":\"家属：石氏，王氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"610\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"337\",\"title\":\"家属：耿凤霞\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"590\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"336\",\"title\":\"家属：吕敬芬\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"353\",\"title\":\"家属：孙氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"591\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"352\",\"title\":\"家属：孙氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"335\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老三)\",\"id\":\"322\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十四世：安XX(老七)\",\"id\":\"334\",\"title\":\"家属：李氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"351\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老六)\",\"id\":\"333\",\"title\":\"家属：\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"350\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老五)\",\"id\":\"332\",\"title\":\"家属：陈氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"358\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"349\",\"title\":\"家属：无\",\"relationship\":\"111\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"348\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老四)\",\"id\":\"331\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"name\":\"第二十四世：安XX(老三)\",\"id\":\"330\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十四世：安XX(老二)\",\"id\":\"329\",\"title\":\"家属：熊氏\",\"relationship\":\"110\"},{\"name\":\"第二十四世：安XX(老大)\",\"id\":\"328\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"321\",\"title\":\"家属：黄氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"347\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"338\",\"title\":\"家属：无\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"320\",\"title\":\"家属：无\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老三)\",\"id\":\"316\",\"title\":\"家属：魏氏\",\"relationship\":\"111\"},{\"name\":\"第二十二世：安XX(老二)\",\"id\":\"315\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"605\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"346\",\"title\":\"家属：张丽潘\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"327\",\"title\":\"家属：李华\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"606\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"345\",\"title\":\"家属：耿利霞\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"607\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"344\",\"title\":\"家属：吕焕芹\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"326\",\"title\":\"家属：王随英\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老四)\",\"id\":\"319\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"343\",\"title\":\"家属：康氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"325\",\"title\":\"家属：李氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"318\",\"title\":\"家属：郝氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老四)\",\"id\":\"342\",\"title\":\"家属：耿氏\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老三)\",\"id\":\"341\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"357\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"340\",\"title\":\"家属：山氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"359\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"355\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"356\",\"title\":\"家属：王氏\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"354\",\"title\":\"家属：王氏\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"339\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"324\",\"title\":\"家属：秦氏\",\"relationship\":\"111\"},{\"name\":\"第二十四世：安XX(老大)\",\"id\":\"323\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"317\",\"title\":\"家属：崔氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"314\",\"title\":\"家属：吕氏，刘氏，赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老大)\",\"id\":\"313\",\"title\":\"家属：石氏，赵氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十二世：安XX(老大)\",\"id\":\"304\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十一世：安XX(老大)\",\"id\":\"302\",\"title\":\"家属：无\",\"relationship\":\"111\"}],\"name\":\"第二十世：安XX(老二)\",\"id\":\"300\",\"title\":\"家属：谷氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十四世：安XX(老三)\",\"id\":\"308\",\"title\":\"家属：沈氏\",\"relationship\":\"110\"},{\"name\":\"第二十四世：安XX(老二)\",\"id\":\"307\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"583\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"309\",\"title\":\"家属：张凤娟\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"306\",\"title\":\"家属：陈氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"305\",\"title\":\"家属：会女\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"303\",\"title\":\"家属：张氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老大)\",\"id\":\"301\",\"title\":\"家属：贾氏\",\"relationship\":\"111\"}],\"name\":\"第二十世：安XX(老大)\",\"id\":\"299\",\"title\":\"家属：杨氏\",\"relationship\":\"111\"}],\"name\":\"第十九世：安XX(老大)\",\"id\":\"298\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"294\",\"title\":\"家属：王氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"285\",\"title\":\"家属：周氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老三)\",\"id\":\"293\",\"title\":\"家属：\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"292\",\"title\":\"家属：罗氏\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"291\",\"title\":\"家属：刘氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"284\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"290\",\"title\":\"家属：吴氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"283\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"275\",\"title\":\"家属：郝氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"268\",\"title\":\"家属：沈氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老二)\",\"id\":\"262\",\"title\":\"家属：李氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十三世：安XX(老大)\",\"id\":\"274\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十二世：安XX(老五)\",\"id\":\"267\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"289\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"282\",\"title\":\"家属：蒋氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"273\",\"title\":\"家属：马氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老四)\",\"id\":\"266\",\"title\":\"家属：王氏，沈氏\",\"relationship\":\"111\"},{\"name\":\"第二十二世：安XX(老三)\",\"id\":\"265\",\"title\":\"家属：王氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十三世：安XX(老三)\",\"id\":\"272\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"297\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"296\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"281\",\"title\":\"家属：白大华\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"295\",\"title\":\"家属：徐博,徐博\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"280\",\"title\":\"家属：任海红\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"271\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"},{\"name\":\"第二十三世：安XX(老大)\",\"id\":\"270\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十二世：安XX(老二)\",\"id\":\"264\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十四世：安XX(老四)\",\"id\":\"279\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"288\",\"title\":\"家属：朱氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"278\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"287\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"277\",\"title\":\"家属：乔氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"286\",\"title\":\"家属：刘瑞民\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"276\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"269\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"263\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老大)\",\"id\":\"261\",\"title\":\"家属：潘氏\",\"relationship\":\"111\"}],\"name\":\"第二十世：安XX(老大)\",\"id\":\"260\",\"title\":\"家属：朱氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十三世：安XX(老大)\",\"id\":\"602\",\"title\":\"家属：王氏\",\"relationship\":\"110\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"621\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"17\",\"title\":\"家属：李氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"14\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"18\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"15\",\"title\":\"家属：敖氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"19\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"20\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老三)\",\"id\":\"16\",\"title\":\"家属：黄氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"183\",\"title\":\"家属：马氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老三)\",\"id\":\"153\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"259\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"185\",\"title\":\"家属：牛氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"254\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"241\",\"title\":\"家属：\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"258\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老三)\",\"id\":\"252\",\"title\":\"家属：刘素芬\",\"relationship\":\"111\"},{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"251\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"257\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"250\",\"title\":\"家属：张氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"232\",\"title\":\"家属：段氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"184\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老四)\",\"id\":\"152\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"596\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"231\",\"title\":\"家属：蔡艳丽\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"595\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"230\",\"title\":\"家属：刘书霞\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"182\",\"title\":\"家属：吕氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"611\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"229\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"234\",\"title\":\"家属：\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"228\",\"title\":\"家属：郭氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"181\",\"title\":\"家属：郭氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"312\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"227\",\"title\":\"家属：\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"253\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"226\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"180\",\"title\":\"家属：张氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"151\",\"title\":\"家属：录氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"137\",\"title\":\"家属：秦氏，刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老三)\",\"id\":\"132\",\"title\":\"家属：？氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十四世：安XX(老四)\",\"id\":\"173\",\"title\":\"家属：张氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"216\",\"title\":\"家属：王氏\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"215\",\"title\":\"家属：沈氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"172\",\"title\":\"家属：白氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"214\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"171\",\"title\":\"家属：葛氏\",\"relationship\":\"111\"},{\"name\":\"第二十四世：安XX(老大)\",\"id\":\"170\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"147\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"249\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"213\",\"title\":\"家属：康氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十七世：安XX(老二)\",\"id\":\"592\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"255\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"248\",\"title\":\"家属：蒋氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"212\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"169\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"146\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"145\",\"title\":\"家属：杜氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十四世：安XX(老四)\",\"id\":\"179\",\"title\":\"家属：嵇氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"225\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"178\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"600\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"599\",\"title\":\"家属：耿兰芳\",\"relationship\":\"111\"},{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"224\",\"title\":\"家属：\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"177\",\"title\":\"家属：？氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"594\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老三)\",\"id\":\"223\",\"title\":\"家属：夏氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"245\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"222\",\"title\":\"家属：张氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"593\",\"title\":\"家属：\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"221\",\"title\":\"家属：夏氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"176\",\"title\":\"家属：董氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"149\",\"title\":\"家属：？氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"244\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"219\",\"title\":\"家属：窦景娟\",\"relationship\":\"111\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"218\",\"title\":\"家属：高晓南\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"175\",\"title\":\"家属：黄氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"586\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"585\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"217\",\"title\":\"家属：刘银敏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"174\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"148\",\"title\":\"家属：曹氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老二)\",\"id\":\"136\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"name\":\"第二十二世：安XX(老大)\",\"id\":\"135\",\"title\":\"家属：杜氏\",\"relationship\":\"110\"}],\"name\":\"第二十一世：安XX(老二)\",\"id\":\"131\",\"title\":\"家属：？氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"211\",\"title\":\"家属：\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"168\",\"title\":\"家属：白氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老三)\",\"id\":\"143\",\"title\":\"家属：于氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"604\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"210\",\"title\":\"家属：罗春菊\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"603\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"209\",\"title\":\"家属：郭焕芹\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"167\",\"title\":\"家属：李氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"142\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"208\",\"title\":\"家属：\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"207\",\"title\":\"家属：王氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"166\",\"title\":\"家属：夏氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"141\",\"title\":\"家属：申氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老二)\",\"id\":\"133\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"622\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"206\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老四)\",\"id\":\"165\",\"title\":\"家属：马氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"616\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"205\",\"title\":\"家属：张氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"618\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"617\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"204\",\"title\":\"家属：白氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"164\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"578\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"203\",\"title\":\"家属：尹明燕\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"576\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"202\",\"title\":\"家属：白红杰\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"163\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"201\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"247\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"200\",\"title\":\"家属：沈氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"162\",\"title\":\"家属：岳氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老三)\",\"id\":\"140\",\"title\":\"家属：吕氏，韩氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"199\",\"title\":\"家属：王氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老六)\",\"id\":\"161\",\"title\":\"家属：李氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"220\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"198\",\"title\":\"家属：\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老五)\",\"id\":\"160\",\"title\":\"家属：吕氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"197\",\"title\":\"家属：赵氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老四)\",\"id\":\"159\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"196\",\"title\":\"家属：张氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"597\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"195\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"158\",\"title\":\"家属：寇氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老三)\",\"id\":\"194\",\"title\":\"家属：孙氏\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"193\",\"title\":\"家属：\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"246\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"192\",\"title\":\"家属：？？\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"157\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"598\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老三)\",\"id\":\"191\",\"title\":\"家属：贾氏\",\"relationship\":\"110\"},{\"name\":\"第二十五世：安XX(老二)\",\"id\":\"190\",\"title\":\"家属：曲氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"156\",\"title\":\"家属：吕氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"139\",\"title\":\"家属：逯氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"243\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"242\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"189\",\"title\":\"家属：夏氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"240\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"188\",\"title\":\"家属：沈氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"155\",\"title\":\"家属：？氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"239\",\"title\":\"家属：吴氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"256\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"238\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"187\",\"title\":\"家属：吕氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老三)\",\"id\":\"237\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"236\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"235\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"186\",\"title\":\"家属：杨氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"154\",\"title\":\"家属：曹氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"138\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"134\",\"title\":\"家属：张氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老大)\",\"id\":\"130\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十世：安XX(老大)\",\"id\":\"129\",\"title\":\"家属：窦氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十一世：安XX(老二)\",\"id\":\"33\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十一世：安XX(老大)\",\"id\":\"32\",\"title\":\"家属：夏氏\",\"relationship\":\"110\"}],\"name\":\"第二十世：安XX(老二)\",\"id\":\"28\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"}],\"name\":\"第十九世：安XX(老二)\",\"id\":\"26\",\"title\":\"家属：\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"85\",\"title\":\"家属：于氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"60\",\"title\":\"家属：赵氏，沈氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"86\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"84\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"83\",\"title\":\"家属：郭氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"59\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老三)\",\"id\":\"47\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"87\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老四)\",\"id\":\"82\",\"title\":\"家属：葛氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"574\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老三)\",\"id\":\"80\",\"title\":\"家属：周氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"573\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"79\",\"title\":\"家属：张氏\",\"relationship\":\"111\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"78\",\"title\":\"家属：白氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"58\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"46\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"587\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"81\",\"title\":\"家属：赵霞\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"57\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"114\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老四)\",\"id\":\"77\",\"title\":\"家属：郭氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"113\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老三)\",\"id\":\"76\",\"title\":\"家属：杨氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"112\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"111\",\"title\":\"家属：刘氏\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"75\",\"title\":\"家属：黄氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"110\",\"title\":\"家属：赵氏\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"109\",\"title\":\"家属：耿氏\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"74\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"56\",\"title\":\"家属：黄氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"128\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老二)\",\"id\":\"108\",\"title\":\"家属：段氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十七世：安XX(老二)\",\"id\":\"127\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"126\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"107\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"73\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"55\",\"title\":\"家属：张氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"45\",\"title\":\"家属：郭氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"38\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老三)\",\"id\":\"31\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十三世：安XX(老二)\",\"id\":\"44\",\"title\":\"家属：郝氏\",\"relationship\":\"110\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十七世：安XX(老二)\",\"id\":\"609\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"572\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老二)\",\"id\":\"106\",\"title\":\"家属：吴东芳，师敏娟\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"608\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"105\",\"title\":\"家属：苏焕英\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"72\",\"title\":\"家属：申氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老二)\",\"id\":\"54\",\"title\":\"家属：李氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十五世：安XX(老三)\",\"id\":\"71\",\"title\":\"家属：德州\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"311\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"310\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"70\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"69\",\"title\":\"家属：董氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"53\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"43\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"37\",\"title\":\"家属：王氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老二)\",\"id\":\"30\",\"title\":\"家属：姚氏，刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"104\",\"title\":\"家属：张氏\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"68\",\"title\":\"家属：王氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老三)\",\"id\":\"103\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"102\",\"title\":\"家属：刘氏\",\"relationship\":\"110\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"101\",\"title\":\"家属：？氏\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"67\",\"title\":\"家属：申氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"52\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"42\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老三)\",\"id\":\"36\",\"title\":\"家属：王氏，刘氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十五世：安XX(老大)\",\"id\":\"66\",\"title\":\"家属：郭氏\",\"relationship\":\"110\"}],\"name\":\"第二十四世：安XX(老三)\",\"id\":\"51\",\"title\":\"家属：周氏\",\"relationship\":\"111\"},{\"name\":\"第二十四世：安XX(老大)\",\"id\":\"50\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十三世：安XX(老二)\",\"id\":\"41\",\"title\":\"家属：朱氏，郭氏，杨氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十七世：安XX(老二)\",\"id\":\"125\",\"title\":\"家属：刘氏\",\"relationship\":\"110\"},{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"124\",\"title\":\"家属：马氏\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老三)\",\"id\":\"100\",\"title\":\"家属：？氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"123\",\"title\":\"家属：？氏\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老二)\",\"id\":\"99\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"},{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"98\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"65\",\"title\":\"家属：吴氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"49\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"40\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老二)\",\"id\":\"35\",\"title\":\"家属：占氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"children\":[{\"children\":[{\"name\":\"第二十六世：安XX(老大)\",\"id\":\"97\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十五世：安XX(老四)\",\"id\":\"64\",\"title\":\"家属：李氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老三)\",\"id\":\"96\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"122\",\"title\":\"家属：耿氏\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老二)\",\"id\":\"95\",\"title\":\"家属：？氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老三)\",\"id\":\"63\",\"title\":\"家属：赵氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老五)\",\"id\":\"94\",\"title\":\"家属：\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"121\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老四)\",\"id\":\"93\",\"title\":\"家属：孙氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"120\",\"title\":\"家属：夏氏\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老三)\",\"id\":\"92\",\"title\":\"家属：？？\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"119\",\"title\":\"家属：曹氏\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老二)\",\"id\":\"91\",\"title\":\"家属：耿氏\",\"relationship\":\"111\"},{\"children\":[{\"children\":[{\"name\":\"第二十八世：安XX(老大)\",\"id\":\"615\",\"title\":\"家属：无\",\"relationship\":\"110\"}],\"name\":\"第二十七世：安XX(老二)\",\"id\":\"118\",\"title\":\"家属：冯慧林\",\"relationship\":\"111\"},{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"117\",\"title\":\"家属：曹氏\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"90\",\"title\":\"家属：杨氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老二)\",\"id\":\"62\",\"title\":\"家属：郭氏\",\"relationship\":\"111\"},{\"children\":[{\"name\":\"第二十六世：安XX(老二)\",\"id\":\"89\",\"title\":\"家属：刘氏\",\"relationship\":\"110\"},{\"children\":[{\"name\":\"第二十七世：安XX(老二)\",\"id\":\"116\",\"title\":\"家属：无\",\"relationship\":\"110\"},{\"name\":\"第二十七世：安XX(老大)\",\"id\":\"115\",\"title\":\"家属：刘氏\",\"relationship\":\"110\"}],\"name\":\"第二十六世：安XX(老大)\",\"id\":\"88\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十五世：安XX(老大)\",\"id\":\"61\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十四世：安XX(老大)\",\"id\":\"48\",\"title\":\"家属：杨氏\",\"relationship\":\"111\"}],\"name\":\"第二十三世：安XX(老大)\",\"id\":\"39\",\"title\":\"家属：刘氏\",\"relationship\":\"111\"}],\"name\":\"第二十二世：安XX(老大)\",\"id\":\"34\",\"title\":\"家属：赵氏，田氏\",\"relationship\":\"111\"}],\"name\":\"第二十一世：安XX(老大)\",\"id\":\"29\",\"title\":\"家属：魏氏，耿氏\",\"relationship\":\"111\"}],\"name\":\"第二十世：安XX(老大)\",\"id\":\"27\",\"title\":\"家属：王氏，尹氏\",\"relationship\":\"111\"}],\"name\":\"第十九世：安XX(老大)\",\"id\":\"25\",\"title\":\"家属：崔氏\",\"relationship\":\"111\"}],\"name\":\"第十八世：安XX(老大)\",\"id\":\"24\",\"title\":\"家属：刘氏，于氏\",\"relationship\":\"111\"}],\"name\":\"第十七世：安XX(老大)\",\"id\":\"23\",\"title\":\"家属：黄氏\",\"relationship\":\"111\"}],\"name\":\"第十六世：安XX(老大)\",\"id\":\"1\",\"title\":\"家属：无\",\"relationship\":\"001\"}','orgTree',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-27'),(2,'登录说明','<p style=\"white-space: normal;\">一：登录者必须是安氏家谱中的人员。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">二：登录过程中如果存在重名情况，会打开重名人员名单，选择一名人员进行登录即可。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">三：登录后组织树是可以点击节点查看下级或上级人员信息，树形结构支持放大缩小操作。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">四：如果登录失败，可能是家谱中记录的名字和真实名字存在不一致情况，您可以输入其他亲友的名字进行登录查询出自己的名字。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">五：登录名称可输入“全名”直接进行登录成功（存在情况）。也可以输入简单名字如：安X、X乐等，会将相关的用户都查询出来，选择登录即可。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">六：如果多次尝试无法登录可联系：青锋（微信号：QF_qingfeng1024）进行咨询。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">七：如果对家谱在线展示有更好的方式体现，更好的想法，可以反馈给我们进行修改，争取继续完善，更方法大家的使用。反馈信息（微信号：QF_qingfeng1024）</p><p><br/></p>','dlsm','Y','1','1','2','25','org25_','2019-01-13 13:44:15','2021-01-27 21:57:28');
/*!40000 ALTER TABLE `gen_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_record`
--

DROP TABLE IF EXISTS `gen_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_record`
--

LOCK TABLES `gen_record` WRITE;
/*!40000 ALTER TABLE `gen_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_dictionary`
--

DROP TABLE IF EXISTS `system_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dic_cascade` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_organize` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_org_cascade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_dictionary`
--

LOCK TABLES `system_dictionary` WRITE;
/*!40000 ALTER TABLE `system_dictionary` DISABLE KEYS */;
INSERT INTO `system_dictionary` (`id`, `dic_cascade`, `name`, `short_name`, `parent_id`, `type`, `order_by`, `remark`, `create_user`, `create_organize`, `create_org_cascade`, `create_time`, `update_time`) VALUES (1,'dic1_','接口管理','接口管理','0','0','1','','2','25','org25_','2018-12-20 15:46:09','2018-12-20 15:46:09'),(2,'dic1_2_','接口分类','接口分类','1','0','1','','2','25','org25_','2018-12-20 15:46:20','2018-12-20 15:46:20'),(3,'dic1_2_3_','企业管理部','企业管理部','2','0','1','','2','25','org25_','2018-12-20 15:47:14','2018-12-20 15:47:14'),(4,'dic1_2_4_','工程和设备材料部','工程和设备材料部','2','0','2','','2','25','org25_','2018-12-20 15:47:14','2018-12-20 15:47:14'),(5,'dic1_2_5_','安全运营部','安全运营部','2','0','3','','2','25','org25_','2018-12-20 15:47:14','2018-12-20 15:47:14'),(6,'dic6_','家谱管理','家谱管理','0','0','2','','2','25','org25_','2019-01-01 19:38:09','2019-01-01 19:38:09'),(7,'dic6_7_','家谱人员排行','家谱人员排行','6','0','1','','2','25','org25_','2019-01-01 19:38:29','2019-01-01 19:38:29'),(8,'dic6_7_8_','老大','老大','7','0','1','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(9,'dic6_7_9_','老二','老二','7','0','2','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(10,'dic6_7_10_','老三','老三','7','0','3','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(11,'dic6_7_11_','老四','老四','7','0','4','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(12,'dic6_7_12_','老五','老五','7','0','5','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(13,'dic6_7_13_','老六','老六','7','0','6','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(14,'dic6_7_14_','老七','老七','7','0','7','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(15,'dic6_7_15_','老八','老八','7','0','8','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(16,'dic6_7_16_','老九','老九','7','0','9','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41'),(17,'dic6_7_17_','老十','老十','7','0','10','','2','25','org25_','2019-01-01 19:39:41','2019-01-01 19:39:41');
/*!40000 ALTER TABLE `system_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_menu`
--

DROP TABLE IF EXISTS `system_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classify` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_cascade` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_organize` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_org_cascade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1497 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_menu`
--

LOCK TABLES `system_menu` WRITE;
/*!40000 ALTER TABLE `system_menu` DISABLE KEYS */;
INSERT INTO `system_menu` (`id`, `classify`, `menu_cascade`, `name`, `code`, `parent_id`, `url`, `icon`, `type`, `level`, `order_by`, `remark`, `create_user`, `create_organize`, `create_org_cascade`, `create_time`, `update_time`) VALUES (1,'0','menu','系统管理','xtgl','0',NULL,'fa-cubes','menu','0','4',NULL,'2',NULL,NULL,'2018-09-01 23:24:10','2018-12-05 09:59:48'),(43,NULL,'menu43_','系统管理','system','1','','fa-cubes','menu','1','1','','2',NULL,NULL,'2018-09-01 23:24:10','2018-09-01 23:24:10'),(44,'0','menu43_44_','用户信息','yhxx','43','/system/user/index','','menu','2','1','','2',NULL,NULL,'2018-09-01 23:26:38','2018-09-17 16:52:11'),(45,'0','menu43_45_','角色信息','jsxx','43','/system/role/index','','menu','2','2','','2',NULL,NULL,'2018-09-01 23:26:39','2024-04-19 11:03:30'),(46,'','menu43_46_','组织管理','zzxx','43','/system/organize/index','','menu','2','3','','2',NULL,NULL,'2018-09-01 23:26:39','2018-09-02 00:43:35'),(48,'','menu43_48_','菜单信息','cdxx','43','/system/menu/index','','menu','2','5','','2',NULL,NULL,'2018-09-01 23:26:40','2018-09-02 00:46:13'),(62,NULL,'menu43_46__2018090200433604047364','添加','add','46',NULL,NULL,'button','3','1',NULL,'2',NULL,NULL,'2018-09-02 00:43:35','2018-09-02 00:43:35'),(63,NULL,'menu43_46__2018090200433618639273','批量添加','addMore','46',NULL,NULL,'button','3','2',NULL,'2',NULL,NULL,'2018-09-02 00:43:35','2018-09-02 00:43:35'),(64,NULL,'menu43_46__2018090200433635340003','编辑','edit','46',NULL,NULL,'button','3','3',NULL,'2',NULL,NULL,'2018-09-02 00:43:35','2018-09-02 00:43:35'),(65,NULL,'menu43_46__2018090200433649785866','删除','del','46',NULL,NULL,'button','3','4',NULL,'2',NULL,NULL,'2018-09-02 00:43:35','2018-09-02 00:43:35'),(66,NULL,'menu43_46__2018090200433664380757','查看','info','46',NULL,NULL,'button','3','5',NULL,'2',NULL,NULL,'2018-09-02 00:43:35','2018-09-02 00:43:35'),(77,NULL,'menu43_48__2018090200461360755961','添加','add','48',NULL,NULL,'button','3','1',NULL,'2',NULL,NULL,'2018-09-02 00:46:13','2018-09-02 00:46:13'),(78,NULL,'menu43_48__2018090200461374883211','批量添加','addMore','48',NULL,NULL,'button','3','2',NULL,'2',NULL,NULL,'2018-09-02 00:46:13','2018-09-02 00:46:13'),(79,NULL,'menu43_48__2018090200461389042692','编辑','edit','48',NULL,NULL,'button','3','3',NULL,'2',NULL,NULL,'2018-09-02 00:46:13','2018-09-02 00:46:13'),(80,NULL,'menu43_48__2018090200461403086930','删除','del','48',NULL,NULL,'button','3','4',NULL,'2',NULL,NULL,'2018-09-02 00:46:13','2018-09-02 00:46:13'),(81,NULL,'menu43_48__2018090200461417430245','查看','info','48',NULL,NULL,'button','3','5',NULL,'2',NULL,NULL,'2018-09-02 00:46:13','2018-09-02 00:46:13'),(311,'0','menu43_44__2018091716521153045642','添加','add','44',NULL,NULL,'button','3','1',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(312,'0','menu43_44__2018091716521169766632','批量添加','addMore','44',NULL,NULL,'button','3','2',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(313,'0','menu43_44__2018091716521185142105','编辑','edit','44',NULL,NULL,'button','3','3',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(314,'0','menu43_44__2018091716521200819370','删除','del','44',NULL,NULL,'button','3','4',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(315,'0','menu43_44__2018091716521216155283','详情','info','44',NULL,NULL,'button','3','5',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(316,'0','menu43_44__2018091716521232824573','权限','auth','44',NULL,NULL,'button','3','6',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(317,'0','menu43_44__2018091716521249127054','模板下载','mould','44',NULL,NULL,'button','3','7',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(318,'0','menu43_44__2018091716521265024033','批量导入','import','44',NULL,NULL,'button','3','8',NULL,'1',NULL,NULL,'2018-09-17 16:52:11','2018-09-17 16:52:11'),(1451,'0','menu1451_','族谱管理','gen','0','','&#xe656;','menu','0','3','','2','25','org25_','2018-12-31 18:17:31','2018-12-31 18:17:31'),(1452,'0','menu1451_1452_','族谱设置','gen_set','1451','','&#xe614;','menu','1','1','','2','25','org25_','2018-12-31 18:19:18','2018-12-31 18:19:18'),(1453,'0','menu1451_1452_1453_','家族信息','family','1452','/gen/family/index','','menu','2','1','','2','25','org25_','2018-12-31 18:22:03','2018-12-31 18:22:49'),(1454,'0','menu1451_1452_1454_','世代信息','generation','1452','/gen/generation/index','','menu','2','2','','2','25','org25_','2018-12-31 18:22:03','2018-12-31 18:23:21'),(1455,'0','menu1451_1452_1455_','人员信息','member','1452','/gen/member/index','','menu','2','3','','2','25','org25_','2018-12-31 18:22:03','2018-12-31 18:23:47'),(1456,'0','menu1451_1452_1453__2018123118224934092767','添加','add','1453',NULL,NULL,'button','3','1',NULL,'2',NULL,NULL,'2018-12-31 18:22:49','2018-12-31 18:22:49'),(1457,'0','menu1451_1452_1453__2018123118224934760907','编辑','edit','1453',NULL,NULL,'button','3','2',NULL,'2',NULL,NULL,'2018-12-31 18:22:49','2018-12-31 18:22:49'),(1458,'0','menu1451_1452_1453__2018123118224935045938','删除','del','1453',NULL,NULL,'button','3','3',NULL,'2',NULL,NULL,'2018-12-31 18:22:49','2018-12-31 18:22:49'),(1459,'0','menu1451_1452_1453__2018123118224935475435','详情','info','1453',NULL,NULL,'button','3','4',NULL,'2',NULL,NULL,'2018-12-31 18:22:49','2018-12-31 18:22:49'),(1460,'0','menu1451_1452_1454__2018123118232132273247','添加','add','1454',NULL,NULL,'button','3','1',NULL,'2',NULL,NULL,'2018-12-31 18:23:21','2018-12-31 18:23:21'),(1461,'0','menu1451_1452_1454__2018123118232132652422','编辑','edit','1454',NULL,NULL,'button','3','2',NULL,'2',NULL,NULL,'2018-12-31 18:23:21','2018-12-31 18:23:21'),(1462,'0','menu1451_1452_1454__2018123118232133098106','删除','del','1454',NULL,NULL,'button','3','3',NULL,'2',NULL,NULL,'2018-12-31 18:23:21','2018-12-31 18:23:21'),(1463,'0','menu1451_1452_1454__2018123118232133715144','详情','info','1454',NULL,NULL,'button','3','4',NULL,'2',NULL,NULL,'2018-12-31 18:23:21','2018-12-31 18:23:21'),(1464,'0','menu1451_1452_1455__2018123118234738756259','添加','add','1455',NULL,NULL,'button','3','1',NULL,'2',NULL,NULL,'2018-12-31 18:23:47','2018-12-31 18:23:47'),(1465,'0','menu1451_1452_1455__2018123118234739165064','编辑','edit','1455',NULL,NULL,'button','3','2',NULL,'2',NULL,NULL,'2018-12-31 18:23:47','2018-12-31 18:23:47'),(1466,'0','menu1451_1452_1455__2018123118234739856122','删除','del','1455',NULL,NULL,'button','3','3',NULL,'2',NULL,NULL,'2018-12-31 18:23:47','2018-12-31 18:23:47'),(1467,'0','menu1451_1452_1455__2018123118234740256661','详情','info','1455',NULL,NULL,'button','3','4',NULL,'2',NULL,NULL,'2018-12-31 18:23:47','2018-12-31 18:23:47'),(1468,'0','menu1451_1468_','族谱展示','zps','1451','','','menu','1','2','','2','25','org25_','2019-01-02 09:42:39','2019-01-02 09:42:54'),(1469,'0','menu1451_1468_1469_','族谱树展示','zpszz','1468','/gen/show/previewTree','','menu','2','1','','2','25','org25_','2019-01-02 09:44:09','2024-04-19 10:22:56'),(1471,'0','menu1451_1468_1471_','族谱树展示（全）','zpsq','1468','/gen/show/treeAll','&#xe857;','menu','2','2','','2','25','org25_','2019-01-02 10:51:03','2019-01-02 10:51:03'),(1472,'0','menu1451_1452_1472_','人员树形信息','tree','1452','/gen/member/treeIndex','&#xe66f;','menu','2','4','','2','25','org25_','2019-01-06 16:43:34','2019-01-06 16:43:34'),(1473,'0','menu1451_1452_1472_2019010616433456622788','添加','add','1472',NULL,NULL,'button','3','1',NULL,'2',NULL,NULL,'2019-01-06 16:43:34','2019-01-06 16:43:34'),(1474,'0','menu1451_1452_1472_2019010616433457183847','删除','del','1472',NULL,NULL,'button','3','2',NULL,'2',NULL,NULL,'2019-01-06 16:43:34','2019-01-06 16:43:34'),(1475,'0','menu1451_1452_1472_2019010616433457572057','编辑','edit','1472',NULL,NULL,'button','3','3',NULL,'2',NULL,NULL,'2019-01-06 16:43:34','2019-01-06 16:43:34'),(1476,'0','menu1451_1452_1472_2019010616433458445421','详情','info','1472',NULL,NULL,'button','3','4',NULL,'2',NULL,NULL,'2019-01-06 16:43:34','2019-01-06 16:43:34'),(1489,'0','menu43_45__2024041911033025267185','添加','add','45',NULL,NULL,'button','3','1',NULL,'1',NULL,NULL,'2024-04-19 11:03:30','2024-04-19 11:03:30'),(1490,'0','menu43_45__2024041911033025770604','编辑','edit','45',NULL,NULL,'button','3','2',NULL,'1',NULL,NULL,'2024-04-19 11:03:30','2024-04-19 11:03:30'),(1491,'0','menu43_45__2024041911033025992058','删除','del','45',NULL,NULL,'button','3','3',NULL,'1',NULL,NULL,'2024-04-19 11:03:30','2024-04-19 11:03:30'),(1492,'0','menu43_45__2024041911033026295442','查看','info','45',NULL,NULL,'button','3','4',NULL,'1',NULL,NULL,'2024-04-19 11:03:30','2024-04-19 11:03:30'),(1493,'0','menu43_45__2024041911033026497953','权限','auth','45',NULL,NULL,'button','3','5',NULL,'1',NULL,NULL,'2024-04-19 11:03:30','2024-04-19 11:03:30');
/*!40000 ALTER TABLE `system_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_organize`
--

DROP TABLE IF EXISTS `system_organize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_organize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_cascade` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fg_leader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bm_leader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sj_leader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_organize` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_org_cascade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_organize`
--

LOCK TABLES `system_organize` WRITE;
/*!40000 ALTER TABLE `system_organize` DISABLE KEYS */;
INSERT INTO `system_organize` (`id`, `org_cascade`, `name`, `short_name`, `type`, `parent_id`, `order_by`, `level`, `remark`, `code`, `parent_code`, `fg_leader`, `bm_leader`, `sj_leader`, `create_user`, `create_organize`, `create_org_cascade`, `create_time`, `update_time`) VALUES (25,'org25_','组织结构','组织结构','0','0','1','1','安氏组织结构','2018082720114697322625','0',NULL,NULL,NULL,'1',NULL,NULL,'2018-08-27 20:11:46','2024-04-19 10:30:10'),(26,'org25_26_','安氏（家谱）','安氏（家谱）','0','25','1','1','','2019011015485311116492',NULL,NULL,NULL,NULL,'2','25','org25_','2019-01-10 15:48:53','2021-01-27 21:45:06'),(27,'org25_27_','张氏（家谱）','张氏（家谱）','0','25','2','1','张氏','2019011015490325654946',NULL,NULL,NULL,NULL,'2','25','org25_','2019-01-10 15:49:03','2024-04-19 10:31:58');
/*!40000 ALTER TABLE `system_organize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_role`
--

DROP TABLE IF EXISTS `system_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_organize` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_org_cascade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role`
--

LOCK TABLES `system_role` WRITE;
/*!40000 ALTER TABLE `system_role` DISABLE KEYS */;
INSERT INTO `system_role` (`id`, `name`, `short_name`, `type`, `order_by`, `status`, `remark`, `create_user`, `create_organize`, `create_org_cascade`, `create_time`, `update_time`) VALUES (11,'超级管理员','超级管理员',NULL,'1',NULL,'1','1',NULL,NULL,'2018-09-02 13:23:44','2024-04-19 10:33:56'),(13,'业务管理员','业务管理员',NULL,'3',NULL,'','2','25','org25_','2018-09-25 13:53:46','2019-01-10 15:45:46');
/*!40000 ALTER TABLE `system_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_role_menu`
--

DROP TABLE IF EXISTS `system_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33831 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role_menu`
--

LOCK TABLES `system_role_menu` WRITE;
/*!40000 ALTER TABLE `system_role_menu` DISABLE KEYS */;
INSERT INTO `system_role_menu` (`id`, `role_id`, `menu_id`, `type`, `create_user`, `create_time`) VALUES (33709,'13','0',NULL,'2','2019-01-13 12:09:20'),(33710,'13','1451',NULL,'2','2019-01-13 12:09:20'),(33711,'13','1452',NULL,'2','2019-01-13 12:09:20'),(33712,'13','1453',NULL,'2','2019-01-13 12:09:20'),(33713,'13','1456',NULL,'2','2019-01-13 12:09:20'),(33714,'13','1457',NULL,'2','2019-01-13 12:09:20'),(33715,'13','1458',NULL,'2','2019-01-13 12:09:20'),(33716,'13','1459',NULL,'2','2019-01-13 12:09:20'),(33717,'13','1454',NULL,'2','2019-01-13 12:09:20'),(33718,'13','1460',NULL,'2','2019-01-13 12:09:20'),(33719,'13','1461',NULL,'2','2019-01-13 12:09:20'),(33720,'13','1462',NULL,'2','2019-01-13 12:09:20'),(33721,'13','1463',NULL,'2','2019-01-13 12:09:20'),(33722,'13','1455',NULL,'2','2019-01-13 12:09:20'),(33723,'13','1464',NULL,'2','2019-01-13 12:09:20'),(33724,'13','1465',NULL,'2','2019-01-13 12:09:20'),(33725,'13','1466',NULL,'2','2019-01-13 12:09:20'),(33726,'13','1467',NULL,'2','2019-01-13 12:09:20'),(33727,'13','1472',NULL,'2','2019-01-13 12:09:20'),(33728,'13','1473',NULL,'2','2019-01-13 12:09:20'),(33729,'13','1474',NULL,'2','2019-01-13 12:09:20'),(33730,'13','1475',NULL,'2','2019-01-13 12:09:20'),(33731,'13','1476',NULL,'2','2019-01-13 12:09:20'),(33733,'13','1483',NULL,'2','2019-01-13 12:09:20'),(33734,'13','1484',NULL,'2','2019-01-13 12:09:20'),(33735,'13','1485',NULL,'2','2019-01-13 12:09:20'),(33736,'13','1486',NULL,'2','2019-01-13 12:09:20'),(33737,'13','1487',NULL,'2','2019-01-13 12:09:20'),(33738,'13','1468',NULL,'2','2019-01-13 12:09:20'),(33739,'13','1469',NULL,'2','2019-01-13 12:09:20'),(33740,'13','1471',NULL,'2','2019-01-13 12:09:20'),(33742,'13','1',NULL,'2','2019-01-13 12:09:20'),(33743,'13','43',NULL,'2','2019-01-13 12:09:20'),(33744,'13','44',NULL,'2','2019-01-13 12:09:20'),(33745,'13','311',NULL,'2','2019-01-13 12:09:20'),(33746,'13','312',NULL,'2','2019-01-13 12:09:20'),(33747,'13','313',NULL,'2','2019-01-13 12:09:20'),(33748,'13','314',NULL,'2','2019-01-13 12:09:20'),(33749,'13','315',NULL,'2','2019-01-13 12:09:20'),(33750,'13','317',NULL,'2','2019-01-13 12:09:20'),(33751,'13','318',NULL,'2','2019-01-13 12:09:20'),(33752,'13','45',NULL,'2','2019-01-13 12:09:20'),(33753,'13','57',NULL,'2','2019-01-13 12:09:20'),(33754,'13','59',NULL,'2','2019-01-13 12:09:20'),(33755,'13','60',NULL,'2','2019-01-13 12:09:20'),(33757,'13','72',NULL,'2','2019-01-13 12:09:20'),(33758,'13','73',NULL,'2','2019-01-13 12:09:20'),(33759,'13','74',NULL,'2','2019-01-13 12:09:20'),(33760,'13','75',NULL,'2','2019-01-13 12:09:20'),(33761,'13','76',NULL,'2','2019-01-13 12:09:20'),(33762,'11','0',NULL,'1','2024-04-19 10:57:05'),(33763,'11','1451',NULL,'1','2024-04-19 10:57:05'),(33764,'11','1452',NULL,'1','2024-04-19 10:57:05'),(33765,'11','1453',NULL,'1','2024-04-19 10:57:05'),(33766,'11','1456',NULL,'1','2024-04-19 10:57:05'),(33767,'11','1457',NULL,'1','2024-04-19 10:57:05'),(33768,'11','1458',NULL,'1','2024-04-19 10:57:05'),(33769,'11','1459',NULL,'1','2024-04-19 10:57:05'),(33770,'11','1454',NULL,'1','2024-04-19 10:57:05'),(33771,'11','1460',NULL,'1','2024-04-19 10:57:05'),(33772,'11','1461',NULL,'1','2024-04-19 10:57:05'),(33773,'11','1462',NULL,'1','2024-04-19 10:57:05'),(33774,'11','1463',NULL,'1','2024-04-19 10:57:05'),(33775,'11','1455',NULL,'1','2024-04-19 10:57:05'),(33776,'11','1464',NULL,'1','2024-04-19 10:57:05'),(33777,'11','1465',NULL,'1','2024-04-19 10:57:05'),(33778,'11','1466',NULL,'1','2024-04-19 10:57:05'),(33779,'11','1467',NULL,'1','2024-04-19 10:57:05'),(33780,'11','1472',NULL,'1','2024-04-19 10:57:05'),(33781,'11','1473',NULL,'1','2024-04-19 10:57:05'),(33782,'11','1474',NULL,'1','2024-04-19 10:57:05'),(33783,'11','1475',NULL,'1','2024-04-19 10:57:05'),(33784,'11','1476',NULL,'1','2024-04-19 10:57:05'),(33786,'11','1483',NULL,'1','2024-04-19 10:57:05'),(33787,'11','1484',NULL,'1','2024-04-19 10:57:05'),(33788,'11','1485',NULL,'1','2024-04-19 10:57:05'),(33789,'11','1486',NULL,'1','2024-04-19 10:57:05'),(33790,'11','1487',NULL,'1','2024-04-19 10:57:05'),(33791,'11','1468',NULL,'1','2024-04-19 10:57:05'),(33792,'11','1469',NULL,'1','2024-04-19 10:57:05'),(33793,'11','1471',NULL,'1','2024-04-19 10:57:05'),(33795,'11','1',NULL,'1','2024-04-19 10:57:05'),(33796,'11','43',NULL,'1','2024-04-19 10:57:05'),(33797,'11','44',NULL,'1','2024-04-19 10:57:05'),(33798,'11','311',NULL,'1','2024-04-19 10:57:05'),(33799,'11','312',NULL,'1','2024-04-19 10:57:05'),(33800,'11','313',NULL,'1','2024-04-19 10:57:05'),(33801,'11','314',NULL,'1','2024-04-19 10:57:05'),(33802,'11','315',NULL,'1','2024-04-19 10:57:05'),(33803,'11','316',NULL,'1','2024-04-19 10:57:05'),(33804,'11','317',NULL,'1','2024-04-19 10:57:05'),(33805,'11','318',NULL,'1','2024-04-19 10:57:05'),(33806,'11','45',NULL,'1','2024-04-19 10:57:05'),(33807,'11','56',NULL,'1','2024-04-19 10:57:05'),(33808,'11','57',NULL,'1','2024-04-19 10:57:05'),(33809,'11','58',NULL,'1','2024-04-19 10:57:05'),(33810,'11','59',NULL,'1','2024-04-19 10:57:05'),(33811,'11','60',NULL,'1','2024-04-19 10:57:05'),(33812,'11','46',NULL,'1','2024-04-19 10:57:05'),(33813,'11','62',NULL,'1','2024-04-19 10:57:05'),(33814,'11','63',NULL,'1','2024-04-19 10:57:05'),(33815,'11','64',NULL,'1','2024-04-19 10:57:05'),(33816,'11','65',NULL,'1','2024-04-19 10:57:05'),(33817,'11','66',NULL,'1','2024-04-19 10:57:05'),(33819,'11','48',NULL,'1','2024-04-19 10:57:05'),(33820,'11','77',NULL,'1','2024-04-19 10:57:05'),(33821,'11','78',NULL,'1','2024-04-19 10:57:05'),(33822,'11','79',NULL,'1','2024-04-19 10:57:05'),(33823,'11','80',NULL,'1','2024-04-19 10:57:05'),(33824,'11','81',NULL,'1','2024-04-19 10:57:05'),(33825,'11','1489',NULL,'1','2024-04-19 10:57:05'),(33826,'11','1490',NULL,'1','2024-04-19 10:57:05'),(33827,'11','1491',NULL,'1','2024-04-19 10:57:05'),(33828,'11','1492',NULL,'1','2024-04-19 10:57:05'),(33829,'11','1493',NULL,'1','2024-04-19 10:57:05');
/*!40000 ALTER TABLE `system_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organize_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qywx_account` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_organize` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_org_cascade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fg_leader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bm_leader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sj_leader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` (`id`, `login_name`, `login_password`, `nickname`, `sex`, `email`, `phone`, `birth_date`, `live_address`, `birth_address`, `head_address`, `type`, `order_by`, `status`, `organize_id`, `open_id`, `qywx_account`, `remark`, `create_user`, `create_organize`, `create_org_cascade`, `create_time`, `update_time`, `fg_leader`, `bm_leader`, `sj_leader`) VALUES (2,'admin','4297f44b13955235245b2497399d7a93','管理员','男','qq@qq.qq','18353192647','2018-08-30','','','',NULL,'1','Y','26',NULL,'901','','1',NULL,NULL,'2018-08-30 21:08:04','2024-04-19 10:28:23','#','#','#');
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_auth`
--

DROP TABLE IF EXISTS `system_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organize_ids` text COLLATE utf8mb4_unicode_ci,
  `organize_names` text COLLATE utf8mb4_unicode_ci,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_auth`
--

LOCK TABLES `system_user_auth` WRITE;
/*!40000 ALTER TABLE `system_user_auth` DISABLE KEYS */;
INSERT INTO `system_user_auth` (`id`, `user_id`, `menu_id`, `type`, `organize_ids`, `organize_names`, `create_user`, `create_time`, `update_time`) VALUES (13,'22','43','1','','','1','2018-09-02 22:07:01','2018-09-02 22:07:01'),(14,'22','44','3','','','1','2018-09-02 22:07:01','2018-09-02 22:07:01'),(15,'22','45','5',',@25@',',济南云融信息技术有限公司','1','2018-09-02 22:07:01','2018-09-02 22:07:01'),(16,'22','46','5',',@31@',',软件一部','1','2018-09-02 22:07:01','2018-09-02 22:07:01'),(17,'22','47','1','','','1','2018-09-02 22:07:01','2018-09-02 22:07:01'),(18,'22','48','1','','','1','2018-09-02 22:07:01','2018-09-02 22:07:01'),(199,'2','1451','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(200,'2','1452','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(201,'2','1453','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(202,'2','1454','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(203,'2','1455','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(204,'2','1472','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(205,'2','1468','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(206,'2','1469','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(207,'2','1471','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(208,'2','1477','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(209,'2','1','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(210,'2','43','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(211,'2','1447','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(212,'2','44','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(213,'2','45','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(214,'2','46','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(215,'2','47','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(216,'2','48','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(217,'2','88','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(218,'2','89','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(219,'2','90','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(220,'2','91','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(221,'2','92','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(222,'2','1423','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(223,'2','1424','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(224,'2','1425','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(225,'2','1426','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(226,'2','1427','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(227,'2','1442','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30'),(228,'2','1428','4','','','2','2019-01-12 17:18:30','2019-01-12 17:18:30');
/*!40000 ALTER TABLE `system_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_organize`
--

DROP TABLE IF EXISTS `system_user_organize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_organize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organize_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jz_organize_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_organize`
--

LOCK TABLES `system_user_organize` WRITE;
/*!40000 ALTER TABLE `system_user_organize` DISABLE KEYS */;
INSERT INTO `system_user_organize` (`id`, `user_id`, `organize_id`, `jz_organize_id`, `type`, `create_user`, `create_time`, `update_time`) VALUES (1,'9','25','2','0','1','2018-08-28 09:55:59',NULL),(2,'10','25',NULL,'0','1','2018-08-28 10:20:14',NULL),(3,'11','25',NULL,'0','1','2018-08-28 10:20:14',NULL),(4,'12','25',NULL,'0','1','2018-08-28 10:20:15',NULL),(5,'13','0','济南云融信息技术有限公司','0','1','2018-08-28 21:21:57',NULL),(6,'14','0','','0','1','2018-08-28 21:25:37',NULL),(7,'15','25','0','0','1','2018-08-28 21:40:05','2018-08-28 21:47:23'),(8,'16','25',NULL,'0','1','2018-08-29 14:02:53','2018-08-29 14:02:53'),(9,'17','25',NULL,'0','1','2018-08-29 14:02:54','2018-08-29 14:02:54'),(10,'18','25',NULL,'0','1','2018-08-29 14:02:54','2018-08-29 14:02:54'),(11,'19','25',NULL,'0','1','2018-08-29 14:02:55','2018-08-29 14:02:55'),(12,'20','25',NULL,'0','1','2018-08-29 14:02:55','2018-08-29 14:02:55'),(14,'2','26','','0','1','2018-08-30 21:08:04','2024-04-19 10:28:23'),(18,'26','25',NULL,'0','1','2018-08-30 21:26:43','2018-09-02 13:28:18');
/*!40000 ALTER TABLE `system_user_organize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_role`
--

DROP TABLE IF EXISTS `system_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_ids` text COLLATE utf8mb4_unicode_ci,
  `organize_ids` text COLLATE utf8mb4_unicode_ci,
  `user_names` text COLLATE utf8mb4_unicode_ci,
  `organize_names` text COLLATE utf8mb4_unicode_ci,
  `role_auth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_role`
--

LOCK TABLES `system_user_role` WRITE;
/*!40000 ALTER TABLE `system_user_role` DISABLE KEYS */;
INSERT INTO `system_user_role` (`id`, `role_id`, `user_ids`, `organize_ids`, `user_names`, `organize_names`, `role_auth`, `create_user`, `create_time`, `update_time`) VALUES (4,'11',',1,2',',26,27',',超级管理员,管理员',',安氏（家谱）,张氏（家谱）','0','1','2018-09-02 13:23:44','2024-04-19 10:33:56'),(6,'13',',30','',',安兴文','','0','2','2018-09-25 13:53:46','2019-01-10 15:45:46');
/*!40000 ALTER TABLE `system_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 15:32:03
