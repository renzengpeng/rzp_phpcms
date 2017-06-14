-- MySQL dump 10.13  Distrib 5.6.23, for Linux (x86_64)
--
-- Host: localhost    Database: healstec
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `hl_admin`
--

DROP TABLE IF EXISTS `hl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_admin` (
  `userid` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `roleid` smallint(5) DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `card` varchar(255) NOT NULL,
  `lang` varchar(6) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_admin`
--

LOCK TABLES `hl_admin` WRITE;
/*!40000 ALTER TABLE `hl_admin` DISABLE KEYS */;
INSERT INTO `hl_admin` VALUES (1,'healstec','ff27df38ab00a4d5bfc3a6066707a382',1,'MwXbt9','118.186.143.112',1497458163,'992321068@qq.com','','',''),(2,'healstec_manager','5c47b79cd233ae004299f060949bcce0',2,'i4jzdL','127.0.0.1',1497456966,'healstec@email.com','healstec_manager','','');
/*!40000 ALTER TABLE `hl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_admin_panel`
--

DROP TABLE IF EXISTS `hl_admin_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_admin_panel` (
  `menuid` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(32) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `datetime` int(10) unsigned DEFAULT '0',
  UNIQUE KEY `userid` (`menuid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_admin_panel`
--

LOCK TABLES `hl_admin_panel` WRITE;
/*!40000 ALTER TABLE `hl_admin_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_admin_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_admin_role`
--

DROP TABLE IF EXISTS `hl_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_admin_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleid`),
  KEY `listorder` (`listorder`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_admin_role`
--

LOCK TABLES `hl_admin_role` WRITE;
/*!40000 ALTER TABLE `hl_admin_role` DISABLE KEYS */;
INSERT INTO `hl_admin_role` VALUES (1,'超级管理员','超级管理员',0,0),(2,'站点管理员','站点管理员',0,0),(3,'运营总监','运营总监',1,0),(4,'总编','总编',5,0),(5,'编辑','编辑',1,0),(7,'发布人员','发布人员',0,0);
/*!40000 ALTER TABLE `hl_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_admin_role_priv`
--

DROP TABLE IF EXISTS `hl_admin_role_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_admin_role_priv` (
  `roleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(30) NOT NULL DEFAULT '',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `roleid` (`roleid`,`m`,`c`,`a`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_admin_role_priv`
--

LOCK TABLES `hl_admin_role_priv` WRITE;
/*!40000 ALTER TABLE `hl_admin_role_priv` DISABLE KEYS */;
INSERT INTO `hl_admin_role_priv` VALUES (2,'content','create_html','public_index','',1),(2,'content','create_html_opt','index','',1),(2,'admin','admin_manage','public_edit_info','',1),(2,'admin','admin_manage','public_edit_pwd','',1),(2,'admin','admin_manage','init','',1),(2,'admin','index','public_main','',1),(2,'content','content','clear_data','',1),(2,'content','create_html','public_index','',1),(2,'content','create_html','category','',1),(2,'content','create_html','update_urls','',1),(2,'content','create_html','show','',1),(2,'release','index','del','',1),(2,'release','index','failed','',1),(2,'release','index','init','',1),(2,'release','html','init','',1),(2,'comment','check','checks','',1),(2,'comment','comment_admin','listinfo','',1),(2,'collection','node','import_content','',1),(2,'collection','node','import_program_del','',1),(2,'collection','node','import_program_add','',1),(2,'collection','node','content_del','',1),(2,'collection','node','copy','',1),(2,'collection','node','import','',1),(2,'collection','node','col_content','',1),(2,'collection','node','export','',1),(2,'collection','node','node_import','',1),(2,'collection','node','publist','',1),(2,'collection','node','col_url_list','',1),(2,'collection','node','del','',1),(2,'collection','node','edit','',1),(2,'collection','node','add','',1),(2,'collection','node','manage','',1),(2,'block','block_admin','history_del','',1),(2,'block','block_admin','history_restore','',1),(2,'block','block_admin','block_update','',1),(2,'block','block_admin','del','',1),(2,'block','block_admin','edit','',1),(2,'block','block_admin','add','',1),(2,'block','block_admin','init','',1),(2,'special','special','create_special_list','',1),(2,'special','special','html','',1),(2,'special','album','import','',1),(2,'special','special','import','',1),(2,'special','content','listorder','',1),(2,'special','content','delete','',1),(2,'special','content','edit','',1),(2,'special','content','init','',1),(2,'special','content','add','',1),(2,'special','content','init','',1),(2,'special','special','listorder','',1),(2,'special','special','delete','',1),(2,'special','special','elite','',1),(2,'special','special','init','',1),(2,'special','special','edit','',1),(2,'special','special','add','',1),(2,'special','special','init','',1),(2,'attachment','address','update','',1),(2,'attachment','address','init','',1),(2,'attachment','manage','init','',1),(2,'attachment','manage','dir','',1),(2,'attachment','manage','init','',1),(2,'content','content','listorder','',1),(2,'content','create_html','batch_show','',1),(2,'content','content','delete','',1),(2,'content','content','add_othors','',1),(2,'content','content','remove','',1),(2,'content','push','init','',1),(2,'content','content','edit','',1),(2,'content','content','pass','',1),(2,'content','content','add','',1),(2,'content','content','init','',1),(2,'content','content','init','',1),(2,'content','content','init','',1),(2,'admin','admin_manage','init','',1);
/*!40000 ALTER TABLE `hl_admin_role_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_announce`
--

DROP TABLE IF EXISTS `hl_announce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_announce` (
  `aid` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `content` text NOT NULL,
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `username` varchar(40) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `style` char(15) NOT NULL,
  `show_template` char(30) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `siteid` (`siteid`,`passed`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_announce`
--

LOCK TABLES `hl_announce` WRITE;
/*!40000 ALTER TABLE `hl_announce` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_announce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_attachment`
--

DROP TABLE IF EXISTS `hl_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` char(15) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filename` char(50) NOT NULL,
  `filepath` char(200) NOT NULL,
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL,
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `authcode` char(32) NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_attachment`
--

LOCK TABLES `hl_attachment` WRITE;
/*!40000 ALTER TABLE `hl_attachment` DISABLE KEYS */;
INSERT INTO `hl_attachment` VALUES (1,'content',6,'H_26.jpg','2017/0603/20170603084431597.jpg',90860,'jpg',1,0,0,1,1496493871,'127.0.0.1',1,'782da6982a9cd2bf522c0cbaea9fb91d',1),(2,'content',0,'H_12.jpg','2017/0603/20170603084846485.jpg',13584,'jpg',1,0,0,1,1496494126,'127.0.0.1',0,'c46b9403b4a5e62c9a52e164f6fd1553',1),(3,'content',0,'H_b2.jpg','2017/0603/20170603094254562.jpg',282432,'jpg',1,0,0,1,1496497374,'127.0.0.1',1,'0a9312c487aaf5817fe1cbb7e30d7303',1),(4,'content',0,'hk_02.png','2017/0603/20170603094956950.png',1822437,'png',1,0,0,1,1496497796,'127.0.0.1',1,'be6af044bc9e55bf62de749dcb7e60f6',1),(5,'content',0,'hgy_02.gif','2017/0603/20170603095432414.gif',900728,'gif',1,0,0,1,1496498072,'127.0.0.1',1,'04af0f7310823da418de9dbcab74224e',1),(6,'content',15,'H_b1.jpg','2017/0603/20170603102849984.jpg',348478,'jpg',1,0,0,1,1496500129,'127.0.0.1',1,'a3ac49a8f2be91fdbf83b1a07e9eb129',1),(7,'content',15,'H_b2.jpg','2017/0603/20170603103623444.jpg',282432,'jpg',1,0,0,1,1496500583,'127.0.0.1',1,'31849ff1d9a7878e31d1c85eb7ffffeb',1),(8,'content',0,'H_12.jpg','2017/0603/20170603105020451.jpg',13584,'jpg',1,0,0,1,1496501420,'127.0.0.1',1,'d379281fa45ee3f557a96d53c455ad0a',1),(9,'content',0,'H_14.jpg','2017/0603/20170603105043319.jpg',12278,'jpg',1,0,0,1,1496501443,'127.0.0.1',1,'82af0ab1ad56402b42bf81b8fdc9098d',1),(10,'content',0,'H_16.png','2017/0603/20170603110057672.png',2937,'png',1,0,0,1,1496502057,'127.0.0.1',1,'b9ffa30c5b88fc6dea9f7c38374a79d7',1),(12,'content',0,'0.0.0._03.jpg','2017/0605/20170605124814798.jpg',8382,'jpg',1,0,0,1,1496638094,'127.0.0.1',1,'71f54cf9153eec6d32e1280506d7f760',1),(13,'content',0,'hy_02.jpg','2017/0605/20170605013124390.jpg',403289,'jpg',1,0,0,1,1496640684,'127.0.0.1',0,'be612cebd2b98a133fbba79651442cd2',1),(14,'content',15,'hy_02.jpg','2017/0605/20170605014121331.jpg',403289,'jpg',1,0,0,1,1496641281,'127.0.0.1',1,'7a3df0bbddb1cb59ffd5df0be8af50db',1),(15,'content',0,'hgy_05.png','2017/0605/20170605070937182.png',2560,'png',1,0,0,1,1496660977,'127.0.0.1',1,'3ebc8c0debe9a9a9e86310c934daf8cc',1),(16,'content',0,'hgy_08.png','2017/0605/20170605070957862.png',159429,'png',1,0,0,1,1496660997,'127.0.0.1',0,'ee06f588338aa0e508910f57cef9c7e8',1),(17,'content',0,'hgy_02.gif','2017/0605/20170605071848180.gif',900728,'gif',1,0,0,1,1496661528,'127.0.0.1',0,'02a04538c313fd79085ea9f02adb88f3',1),(18,'content',0,'hc_03.png','2017/0605/20170605072616329.png',1451,'png',1,0,0,1,1496661976,'127.0.0.1',1,'7e76db5559fb28da1c34e4fc9d73bbd5',1),(19,'content',0,'hk_04.jpg','2017/0605/20170605074214503.jpg',199182,'jpg',1,0,0,1,1496662934,'127.0.0.1',0,'52535af127e74d1980a9f17dda509ba5',1),(20,'content',0,'hk_06.jpg','2017/0606/20170606092635448.jpg',218357,'jpg',1,0,0,1,1496712395,'127.0.0.1',0,'ae1813802969595f734ae3784db93657',1),(21,'content',0,'hk_07.jpg','2017/0606/20170606093119330.jpg',148361,'jpg',1,0,0,1,1496712679,'127.0.0.1',0,'6f2d0de20b8eddb0e0f859f1b5b4ffb5',1),(22,'content',0,'hk_08.jpg','2017/0606/20170606093322334.jpg',790950,'jpg',1,0,0,1,1496712802,'127.0.0.1',0,'8a3626b45fec4be2658d442fa8afde48',1),(23,'content',0,'hk_02.jpg','2017/0606/20170606094316291.jpg',201945,'jpg',1,0,0,1,1496713396,'127.0.0.1',1,'cf204433b1c4a5edb61bdd89dcce859b',1),(24,'content',27,'hsh_05.png','2017/0606/20170606124931367.png',341378,'png',1,0,0,1,1496724571,'127.0.0.1',1,'ca48659f077b75a3c0919efd7959c27e',1),(25,'content',0,'hy_05.jpg','2017/0606/20170606013142905.jpg',33114,'jpg',1,0,0,1,1496727101,'127.0.0.1',1,'a3161749ac9bcce414f12215f77c9666',1),(26,'content',0,'hy_08.jpg','2017/0606/20170606014618290.jpg',75107,'jpg',1,0,0,1,1496727978,'127.0.0.1',0,'d537c61ffa902dd8d5b28e71c9d462de',1),(27,'content',0,'hp_03.jpg','2017/0606/20170606112033122.jpg',1432648,'jpg',1,0,0,1,1496762433,'127.0.0.1',1,'1721938ae16f430dccc79c0ff63192f5',1),(28,'content',0,'hp_06.png','2017/0606/20170606112436907.png',1654600,'png',1,0,0,1,1496762676,'127.0.0.1',1,'65b57b968335e903b701133f67330bd9',1),(29,'content',0,'hc_03001.png','2017/0607/20170607091441498.png',3137,'png',1,0,0,1,1496798081,'127.0.0.1',0,'1f4a21242053fb6c90be6dbc15f46b40',1),(30,'content',0,'hgy_14.png','2017/0607/20170607091515598.png',2039,'png',1,0,0,1,1496798115,'127.0.0.1',1,'9414fda53c2490b281d340bae7b0be49',1),(31,'content',0,'hgy_22.png','2017/0607/20170607091537695.png',235733,'png',1,0,0,1,1496798137,'127.0.0.1',0,'641c0e4be4d95f2b46da6b5348124595',1),(32,'content',0,'hc_03002.png','2017/0607/20170607091708695.png',3445,'png',1,0,0,1,1496798228,'127.0.0.1',0,'91fdb9c8e632ad40cb994274f28df50d',1),(33,'content',0,'hgy_19.png','2017/0607/20170607091728425.png',2859,'png',1,0,0,1,1496798248,'127.0.0.1',1,'6e32c555fb22d7126b70a119126d7b0b',1),(34,'content',0,'hgy_18.png','2017/0607/20170607091747949.png',152952,'png',1,0,0,1,1496798267,'127.0.0.1',0,'8ce46c18a864759d1a45cf1fdede0d85',1),(35,'content',0,'hc_0303.png','2017/0607/20170607092327245.png',3253,'png',1,0,0,1,1496798607,'127.0.0.1',0,'4d5fa709e4f902d3055c79b7aa7383ec',1),(36,'content',0,'hgy_20.png','2017/0607/20170607092355579.png',3367,'png',1,0,0,1,1496798635,'127.0.0.1',1,'02ac2a82ab3e127c86f0ccccdc7ae184',1),(37,'content',0,'hgy_12.png','2017/0607/20170607092427408.png',180755,'png',1,0,0,1,1496798667,'127.0.0.1',0,'2cbc6dd000408c8a3524928144ad47c8',1),(38,'content',0,'renshi_02.jpg','2017/0607/20170607095545547.jpg',226098,'jpg',1,0,0,1,1496800545,'127.0.0.1',1,'b61e77f13fe6241cb66f76adec05eaf5',1),(39,'content',37,'renshi_08.jpg','2017/0607/20170607010139979.jpg',27233,'jpg',1,0,0,1,1496811699,'127.0.0.1',1,'9fbaf75486f5aae17281257e5b92b751',1),(40,'content',37,'renshi_10.jpg','2017/0607/20170607010322726.jpg',30555,'jpg',1,0,0,1,1496811802,'127.0.0.1',1,'476cf2ea0d30a809af8aaa9c031b491d',1),(41,'content',38,'hgyxy_09.jpg','2017/0607/20170607011856838.jpg',19742,'jpg',1,0,0,1,1496812736,'127.0.0.1',1,'e5dca939981375f1ee57dee316efba25',1),(42,'content',40,'gyhx_04.jpg','2017/0608/20170608120758507.jpg',132685,'jpg',1,0,0,1,1496851678,'127.0.0.1',1,'0c0aaec9cfb80ae94bd52694867f0970',1),(43,'content',41,'hgyxy_09.jpg','2017/0608/20170608121452457.jpg',19742,'jpg',1,0,0,1,1496852092,'127.0.0.1',1,'976193afac4b185516131827847aab0f',1),(44,'content',0,'renshi_02.jpg','2017/0608/20170608123045685.jpg',226098,'jpg',1,0,0,1,1496853045,'127.0.0.1',0,'f55000470314163db512dcab26b2e1b6',1),(45,'content',0,'jishuts.png','2017/0608/20170608100627203.png',503487,'png',1,0,0,1,1496887587,'127.0.0.1',1,'2846c9a82b6e129cfe30e6466196cc94',1),(46,'content',23,'keyan-tab1.png','2017/0608/20170608125353630.png',64273,'png',1,0,0,1,1496897633,'127.0.0.1',1,'2b95b20678c0c640333e7155638442c1',1),(47,'content',23,'keyan-tab2.png','2017/0608/20170608125353972.png',76812,'png',1,0,0,1,1496897633,'127.0.0.1',1,'b2718d16362a7982e39b43f1495556fa',1),(48,'content',23,'keyan-tab3.png','2017/0608/20170608125353448.png',84311,'png',1,0,0,1,1496897633,'127.0.0.1',1,'5d2c61caddd4e37df57d895d920d0236',1),(49,'content',24,'keyantabImg1.png','2017/0608/20170608010353110.png',109555,'png',1,0,0,1,1496898233,'127.0.0.1',1,'922870ceaec978098e38d0d1037daf58',1),(50,'content',25,'jiankang1.png','2017/0608/20170608022730733.png',618813,'png',1,0,0,1,1496903250,'127.0.0.1',1,'74a658363ebbe2a5057413d410933ddf',1),(51,'content',0,'H_03.jpg','2017/0609/20170609054319125.jpg',1787,'jpg',1,0,0,1,1497001399,'127.0.0.1',1,'7abf2ac616e280f375633bf47bdc6408',1),(52,'content',32,'pinpai1.png','2017/0609/20170609061722825.png',122989,'png',1,0,0,1,1497003442,'127.0.0.1',1,'8dc16d1ab3cf5555e7dce405bf2b09df',1),(53,'content',32,'pinpai2.png','2017/0609/20170609061722897.png',102887,'png',1,0,0,1,1497003442,'127.0.0.1',1,'46666a17edb17fb40c25c8eb3303ae69',1),(54,'content',32,'pinpai3.png','2017/0609/20170609061722807.png',95894,'png',1,0,0,1,1497003442,'127.0.0.1',1,'70061748097ff3fdd2a126483ab1223e',1),(55,'content',32,'pinpai1.png','2017/0609/20170609062420124.png',122989,'png',1,0,0,1,1497003860,'127.0.0.1',1,'30950ed055e2dcb12cb6f6e8f1691357',1),(56,'content',32,'pinpai2.png','2017/0609/20170609062420712.png',102887,'png',1,0,0,1,1497003860,'127.0.0.1',1,'e11e6402ddb2e0e3db08db3287cdc4a5',1),(57,'content',32,'pinpai3.png','2017/0609/20170609062420980.png',95894,'png',1,0,0,1,1497003860,'127.0.0.1',1,'f550ece20dc226a6f89f7196d558e02b',1),(58,'content',52,'H_26.jpg','2017/0613/20170613105049610.jpg',90860,'jpg',1,0,0,1,1497365449,'127.0.0.1',1,'8f5c6f266dc987740fc20450a411759c',1),(59,'content',0,'Hf_03.jpg','2017/0613/20170613105915396.jpg',1673,'jpg',1,0,0,1,1497365955,'127.0.0.1',1,'e35da00c9ce2dd041cb139719023c65d',1),(60,'content',0,'hc_030303.png','2017/0613/20170613110218151.png',2972,'png',1,0,0,1,1497366138,'127.0.0.1',1,'43fc4dc30ba0e857b240ce0abe65b7a0',1),(61,'content',0,'hgy_21.png','2017/0613/20170613110443252.png',1265,'png',1,0,0,1,1497366283,'127.0.0.1',1,'033ad0ef03d572152ec68eee02f2c070',1),(62,'content',0,'hgy_23.png','2017/0613/20170613112613909.png',178264,'png',1,0,0,1,1497367573,'127.0.0.1',0,'4546f168ea1990b3412ba3f4febfb300',1),(63,'content',37,'renshi_12.jpg','2017/0613/20170613112827312.jpg',41236,'jpg',1,0,0,1,1497367707,'127.0.0.1',1,'3a3a5738a9f5aef5313dee8199f7a7e9',1),(64,'content',38,'gy-jizh_04.jpg','2017/0613/20170613113022888.jpg',78479,'jpg',1,0,0,1,1497367822,'127.0.0.1',1,'462371d69fb383b507b1a2a004f634cf',1),(65,'content',41,'hgyxy_09.jpg','2017/0613/20170613113542914.jpg',19742,'jpg',1,0,0,1,1497368142,'127.0.0.1',1,'10301ed8330f37148f7ce74e47747478',1),(66,'content',25,'jiankang2.png','2017/0613/20170613115347552.png',908331,'png',1,0,0,1,1497369227,'127.0.0.1',1,'4ea87716aa7eb8a6b3ebf1393da01cec',1),(67,'content',0,'hsh_02.png','2017/0613/20170613115557333.png',1783599,'png',1,0,0,1,1497369357,'127.0.0.1',1,'5ac24d37f6d1b7addaa34ef68be67d0d',1),(68,'content',27,'hsh_05.png','2017/0614/20170614120421565.png',341378,'png',1,0,0,1,1497369861,'127.0.0.1',1,'94a519a00f0be610edf4df0eaa60132a',1),(69,'content',27,'hsh_05.png','2017/0614/20170614120512785.png',341378,'png',1,0,0,1,1497369912,'127.0.0.1',1,'f6f18097267dadabee69cd62a66c9a92',1),(70,'content',0,'guanzhugy.png','2017/0614/20170614123928141.png',745111,'png',1,0,0,1,1497371968,'127.0.0.1',0,'b1166f256c4e161fb842dff4f3975488',1),(71,'content',41,'H_b1.jpg','2017/0614/20170614091817910.jpg',348478,'jpg',1,0,0,1,1497403097,'127.0.0.1',1,'d15512c018c40d2b32f2435ccd56cd6e',1),(72,'content',41,'gongyibg.png','2017/0614/20170614094213796.png',416947,'png',1,0,0,1,1497404533,'127.0.0.1',1,'df2a966002dc5857fbd24a61a62d19aa',1),(73,'content',27,'gongyibg.png','2017/0614/20170614094836604.png',416947,'png',1,0,0,1,1497404916,'127.0.0.1',1,'3869c955bc2dd3a49e6713ab24db0461',1),(74,'content',28,'gongyibg.png','2017/0614/20170614095145337.png',416947,'png',1,0,0,1,1497405105,'127.0.0.1',1,'b5a06b8d477139ad9ddaa45a8b56276f',1),(75,'content',28,'gongyibg.png','2017/0614/20170614095201306.png',416947,'png',1,0,0,1,1497405121,'127.0.0.1',1,'c7f8be677ab91043fda7f470fa01caa8',1),(76,'content',28,'gongyibg.png','2017/0614/20170614095221494.png',416947,'png',1,0,0,1,1497405141,'127.0.0.1',1,'5274a36147f244507571bbce94ced9cd',1),(77,'content',28,'gongyibg.png','2017/0614/20170614095237866.png',416947,'png',1,0,0,1,1497405157,'127.0.0.1',1,'079a481154a0e594f936795b86a29e8c',1),(78,'content',28,'gongyibg.png','2017/0614/20170614095318555.png',416947,'png',1,0,0,1,1497405198,'127.0.0.1',1,'70c13a6792bcf21cfca0bfad2612b43c',1),(79,'content',0,'hy_02.jpg','2017/0614/20170614095921204.jpg',403289,'jpg',1,0,0,1,1497405561,'127.0.0.1',0,'779a8d6e11d956fe75ef3f4baf534d18',1),(80,'content',0,'hy_08.jpg','2017/0614/20170614102530719.jpg',75107,'jpg',1,0,0,1,1497407130,'127.0.0.1',0,'53d3b669dec7ea7dedebc5fba7714b7f',1),(81,'content',41,'hgyxy_09.jpg','2017/0614/20170614015217600.jpg',19742,'jpg',1,0,0,1,1497419537,'124.205.66.66',1,'a7ad8516d5a35961abfe7d7a0332d0a2',1);
/*!40000 ALTER TABLE `hl_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_attachment_index`
--

DROP TABLE IF EXISTS `hl_attachment_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_attachment_index` (
  `keyid` char(30) NOT NULL,
  `aid` char(10) NOT NULL,
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_attachment_index`
--

LOCK TABLES `hl_attachment_index` WRITE;
/*!40000 ALTER TABLE `hl_attachment_index` DISABLE KEYS */;
INSERT INTO `hl_attachment_index` VALUES ('c-6-1','1'),('catid-10','15'),('c-15-2','4'),('c-15-2','6'),('c-15-3','7'),('c-15-3','14'),('catid-13','12'),('catid-15','15'),('catid-24','8'),('catid-25','10'),('catid-23','9'),('catid-11','23'),('c-27-4','24'),('c-27-5','24'),('c-28-6','14'),('c-29-8','12'),('c-30-10','25'),('c-31-13','12'),('c-31-14','12'),('c-31-15','12'),('c-31-15','12'),('c-32-16','27'),('c-32-16','28'),('c-32-17','28'),('c-32-18','28'),('catid-37','15'),('catid-38','30'),('catid-39','33'),('catid-40','36'),('c-37-24','38'),('c-37-24','39'),('c-37-25','40'),('c-38-26','41'),('c-40-29','42'),('c-41-30','43'),('c-23-31','45'),('c-23-31','46'),('c-23-31','47'),('c-23-31','48'),('c-24-32','49'),('c-24-33','49'),('c-25-34','50'),('c-32-18','51'),('c-32-18','52'),('c-32-18','53'),('c-32-18','54'),('c-32-16','55'),('c-32-16','56'),('c-32-16','57'),('c-41-36','3'),('c-41-30','5'),('c-52-42','58'),('c-52-43','58'),('c-52-44','58'),('catid-44','59'),('catid-45','59'),('catid-41','61'),('c-37-47','63'),('c-38-26','64'),('c-41-30','65'),('c-25-51','66'),('c-27-5','67'),('c-27-5','68'),('c-27-4','69'),('c-28-6','69'),('c-28-52','69'),('c-28-7','69'),('c-28-53','69'),('c-41-30','1'),('c-41-30','71'),('c-27-4','72'),('c-27-5','73'),('c-28-53','74'),('c-28-52','75'),('c-28-7','76'),('c-28-6','77'),('c-28-53','78'),('c-28-53','24'),('c-41-30','81'),('c-41-48','81');
/*!40000 ALTER TABLE `hl_attachment_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_badword`
--

DROP TABLE IF EXISTS `hl_badword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_badword` (
  `badid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `badword` char(20) NOT NULL,
  `level` tinyint(5) NOT NULL DEFAULT '1',
  `replaceword` char(20) NOT NULL DEFAULT '0',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`badid`),
  UNIQUE KEY `badword` (`badword`),
  KEY `usetimes` (`replaceword`,`listorder`),
  KEY `hits` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_badword`
--

LOCK TABLES `hl_badword` WRITE;
/*!40000 ALTER TABLE `hl_badword` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_badword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_block`
--

DROP TABLE IF EXISTS `hl_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_block` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `name` char(50) DEFAULT NULL,
  `pos` char(30) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `data` text,
  `template` text,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`),
  KEY `type` (`type`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_block`
--

LOCK TABLES `hl_block` WRITE;
/*!40000 ALTER TABLE `hl_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_block_history`
--

DROP TABLE IF EXISTS `hl_block_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_block_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blockid` int(10) unsigned DEFAULT '0',
  `data` text,
  `creat_at` int(10) unsigned DEFAULT '0',
  `userid` mediumint(8) unsigned DEFAULT '0',
  `username` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_block_history`
--

LOCK TABLES `hl_block_history` WRITE;
/*!40000 ALTER TABLE `hl_block_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_block_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_block_priv`
--

DROP TABLE IF EXISTS `hl_block_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_block_priv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `siteid` smallint(5) unsigned DEFAULT '0',
  `blockid` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blockid` (`blockid`),
  KEY `roleid` (`roleid`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_block_priv`
--

LOCK TABLES `hl_block_priv` WRITE;
/*!40000 ALTER TABLE `hl_block_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_block_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_cache`
--

DROP TABLE IF EXISTS `hl_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_cache` (
  `filename` char(50) NOT NULL,
  `path` char(50) NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`filename`,`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_cache`
--

LOCK TABLES `hl_cache` WRITE;
/*!40000 ALTER TABLE `hl_cache` DISABLE KEYS */;
INSERT INTO `hl_cache` VALUES ('mood_program.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    1 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'震惊\',\n      \'pic\' => \'mood/a1.gif\',\n    ),\n    2 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'不解\',\n      \'pic\' => \'mood/a2.gif\',\n    ),\n    3 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'愤怒\',\n      \'pic\' => \'mood/a3.gif\',\n    ),\n    4 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'杯具\',\n      \'pic\' => \'mood/a4.gif\',\n    ),\n    5 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'无聊\',\n      \'pic\' => \'mood/a5.gif\',\n    ),\n    6 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'高兴\',\n      \'pic\' => \'mood/a6.gif\',\n    ),\n    7 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'支持\',\n      \'pic\' => \'mood/a7.gif\',\n    ),\n    8 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'超赞\',\n      \'pic\' => \'mood/a8.gif\',\n    ),\n    9 => \n    array (\n      \'use\' => NULL,\n      \'name\' => \'\',\n      \'pic\' => \'\',\n    ),\n    10 => \n    array (\n      \'use\' => NULL,\n      \'name\' => \'\',\n      \'pic\' => \'\',\n    ),\n  ),\n);\n?>'),('category_content.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  10 => \'1\',\n  11 => \'1\',\n  12 => \'1\',\n  13 => \'1\',\n  14 => \'1\',\n  23 => \'1\',\n  24 => \'1\',\n  25 => \'1\',\n  26 => \'1\',\n  27 => \'1\',\n  28 => \'1\',\n  29 => \'1\',\n  30 => \'1\',\n  31 => \'1\',\n  32 => \'1\',\n  36 => \'1\',\n  37 => \'1\',\n  38 => \'1\',\n  39 => \'1\',\n  40 => \'1\',\n  41 => \'1\',\n  42 => \'1\',\n  43 => \'1\',\n  44 => \'1\',\n  45 => \'1\',\n  46 => \'1\',\n  48 => \'1\',\n  50 => \'1\',\n  51 => \'1\',\n  52 => \'1\',\n  53 => \'1\',\n  54 => \'1\',\n  55 => \'1\',\n);\n?>'),('category_content_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  10 => \n  array (\n    \'catid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'10,37,38,39,40,41\',\n    \'catname\' => \'关于我们\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'我们扎根中国，与世界先进科研机构紧密合作，在全球范围内精选优质原料，依照中国健康\r\n数据标准，旨在为人们提供优秀的健康解决方案\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'guanyuwomen\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=10\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'10\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanyuwomen\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605071848180.gif\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0608/20170608123045685.jpg\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  11 => \n  array (\n    \'catid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'11,23,24,25,26\',\n    \'catname\' => \'科研技术\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'倾心所以专注，专注所以专业，专业所以创新—— <br/>\r\n以标准先进的科研技术，耐心细致的科研态度，持之以恒的科研毅力<br>\r\n创建您理想健康的生活形态\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'tec\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=11\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'11\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'keyanjishu\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0606/20170606094316291.jpg\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0608/20170608100627203.png\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  12 => \n  array (\n    \'catid\' => \'12\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'12,27,28\',\n    \'catname\' => \'社会责任\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'将心倾注，用爱灌溉，在广阔的世界<br/>大地上，种下我们爱心的种子，让它在每一个人心里<br />生根发芽，开出无比绚烂的奉献之花！\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'shehuizeren\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=12\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'12\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'shehuizeren\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0613/20170613115557333.png\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0614/20170614123928141.png\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  13 => \n  array (\n    \'catid\' => \'13\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'13,29,30,31\',\n    \'catname\' => \'营养与健康\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605124814798.jpg\',\n    \'description\' => \'“养生之道，莫先于食”。合理的饮食搭配是健康的基础，<br />机体摄入健康营养成分的比例必须符合人体的需要<br />让我们与您一起剖析产品配料，合理规划饮食，保持健康营养.....\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'yingyangyujiankang\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=13\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'13\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yingyangyujiankang\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0614/20170614095921204.jpg\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0608/20170608123045685.jpg\',\n    \'description_index\' => \'“养生之道，莫先于食”。<br />合理的饮食搭配是健康的基础，机体摄入健康营养成分的比例必须符合人体的需要让我们与您一起剖析产品配料，合理规划饮食，保持健康营养.....\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  14 => \n  array (\n    \'catid\' => \'14\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'14,32,36\',\n    \'catname\' => \'品牌中心\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'这是我们过硬的产品质量、完善的售后服务、良好的<br>\r\n产品形象、美好的文化价值优秀的管理体系所形成的一种社会<br>\r\n评价和认知是我们长期辛勤耕耘建立起来的一种社会责任！\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'pinpaizhongxin\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=14\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'14\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'pinpaizhongxin\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0606/20170606112033122.jpg\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0608/20170608123045685.jpg\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  23 => \n  array (\n    \'catid\' => \'23\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'11\',\n    \'arrparentid\' => \'0,11\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'23\',\n    \'catname\' => \'关注科研\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0603/20170603105043319.jpg\',\n    \'description\' => \'专业的科研团队，精密的科研仪器</br>\r\n严谨的科研态度，用责任心和爱心共同灌溉······\',\n    \'parentdir\' => \'tec/\',\n    \'catdir\' => \'gzky\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=23\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'23\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanzhukeyan\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605074214503.jpg\',\n    \'image1\' => \'\',\n    \'description_index\' => \'倾心所以专注\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  24 => \n  array (\n    \'catid\' => \'24\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'11\',\n    \'arrparentid\' => \'0,11\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'24\',\n    \'catname\' => \'技术探索\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0603/20170603105020451.jpg\',\n    \'description\' => \'不断的反复测试，不断的探索前进，不断的日益创新<br>\r\n我们一直在科研技术的道路上夜以继日的不断努力着·····\',\n    \'parentdir\' => \'tec/\',\n    \'catdir\' => \'jsts\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=24\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'24\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jishutansuo\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0606/20170606092635448.jpg\',\n    \'image1\' => \'\',\n    \'description_index\' => \'专注所以专业\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  25 => \n  array (\n    \'catid\' => \'25\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'11\',\n    \'arrparentid\' => \'0,11\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'25\',\n    \'catname\' => \'健康方案\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0603/20170603110057672.png\',\n    \'description\' => \'我们用已知的科学积累和严谨的科研态度，加之强烈的责任感和爱心，为您奉<br>上针对不同人群的健康解决方案，安全无忧，健康生活！\',\n    \'parentdir\' => \'tec/\',\n    \'catdir\' => \'jkfan\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=25\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'25\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jiankangfangan\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0606/20170606093119330.jpg\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605114456182.jpg\',\n    \'description_index\' => \'专业所以创新\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  26 => \n  array (\n    \'catid\' => \'26\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'11\',\n    \'arrparentid\' => \'0,11\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'26\',\n    \'catname\' => \'生产加工\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'过硬的工艺水平，严格的消毒车间</br>标准化的流水作业，早就你手中完美的科技创新产品！\',\n    \'parentdir\' => \'tec/\',\n    \'catdir\' => \'scjg\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=26\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'26\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'shengchanjiagong\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0606/20170606093322334.jpg\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  27 => \n  array (\n    \'catid\' => \'27\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'27\',\n    \'catname\' => \'关注公益\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'shehuizeren/\',\n    \'catdir\' => \'gzhgy\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=27\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'27\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanzhugongyi\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  28 => \n  array (\n    \'catid\' => \'28\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'28\',\n    \'catname\' => \'社会活动\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'shehuizeren/\',\n    \'catdir\' => \'shhd\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=28\',\n    \'items\' => \'4\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'28\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'shehuihuodong\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  29 => \n  array (\n    \'catid\' => \'29\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'29\',\n    \'catname\' => \'健康瘦身\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'yingyangyujiankang/\',\n    \'catdir\' => \'jkss\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=29\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'29\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jiankangshoushen\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0606/20170606013142905.jpg\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  30 => \n  array (\n    \'catid\' => \'30\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'30\',\n    \'catname\' => \'产品剖析\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'yingyangyujiankang/\',\n    \'catdir\' => \'cppx\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=30\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'30\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'chanpinpoxi\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0614/20170614102530719.jpg\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  31 => \n  array (\n    \'catid\' => \'31\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'31\',\n    \'catname\' => \'营养膳食\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'yingyangyujiankang/\',\n    \'catdir\' => \'yyss\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=31\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'31\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yingyangshanshi\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605124814798.jpg\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  32 => \n  array (\n    \'catid\' => \'32\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'32\',\n    \'catname\' => \'自营品牌\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'pinpaizhongxin/\',\n    \'catdir\' => \'zypp\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=32\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'32\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'ziyingpinpai\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  36 => \n  array (\n    \'catid\' => \'36\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'36\',\n    \'catname\' => \'关于产品\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'pinpaizhongxin/\',\n    \'catdir\' => \'gyccp\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=36\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'36\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanyuchanpin\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  37 => \n  array (\n    \'catid\' => \'37\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'10\',\n    \'arrparentid\' => \'0,10\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'37\',\n    \'catname\' => \'认识我们\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605070937182.png\',\n    \'description\' => \'让爱和责任，伴随梦想同时起飞······\',\n    \'parentdir\' => \'guanyuwomen/\',\n    \'catdir\' => \'rswom\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=37\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'37\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'renshiwomen\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605070957862.png\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0605/20170605072616329.png\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  38 => \n  array (\n    \'catid\' => \'38\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'10\',\n    \'arrparentid\' => \'0,10\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'38\',\n    \'catname\' => \'价值观\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607091515598.png\',\n    \'description\' => \'将精神融入产品，把爱赋予行动\',\n    \'parentdir\' => \'guanyuwomen/\',\n    \'catdir\' => \'jzg\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=38\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'38\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jiazhiguan\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607091537695.png\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607091441498.png\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  39 => \n  array (\n    \'catid\' => \'39\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'10\',\n    \'arrparentid\' => \'0,10\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'39\',\n    \'catname\' => \'使命愿景\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607091728425.png\',\n    \'description\' => \'以高依从性的解决方案，关爱您的健康\',\n    \'parentdir\' => \'guanyuwomen/\',\n    \'catdir\' => \'shmyj\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=39\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'39\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'shimingyuanjing\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607091747949.png\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607091708695.png\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  40 => \n  array (\n    \'catid\' => \'40\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'10\',\n    \'arrparentid\' => \'0,10\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'40\',\n    \'catname\' => \'核心竞争力\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607092355579.png\',\n    \'description\' => \'丰富经验的专业团队，是我们发展的基础\',\n    \'parentdir\' => \'guanyuwomen/\',\n    \'catdir\' => \'hxjzhl\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=40\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'40\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'hexinjingzhengli\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607092427408.png\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0607/20170607092327245.png\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  41 => \n  array (\n    \'catid\' => \'41\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'10\',\n    \'arrparentid\' => \'0,10\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'41\',\n    \'catname\' => \'新闻频道\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0613/20170613110443252.png\',\n    \'description\' => \'让爱和责任，伴随梦想同时起飞\',\n    \'parentdir\' => \'guanyuwomen/\',\n    \'catdir\' => \'xinwenpindao\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=41\',\n    \'items\' => \'7\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'41\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xinwenpindao\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'http://healstec.itcask.com/uploadfile/2017/0613/20170613112613909.png\',\n    \'image1\' => \'http://healstec.itcask.com/uploadfile/2017/0613/20170613110218151.png\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  42 => \n  array (\n    \'catid\' => \'42\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'42\',\n    \'catname\' => \'公司简介\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'gsjj\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=42\',\n    \'items\' => \'4\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'42\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'gongsijianjie\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  43 => \n  array (\n    \'catid\' => \'43\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'43,44,45\',\n    \'catname\' => \'关注我们\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'gzwm\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=43\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'43\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanzhuwomen\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  44 => \n  array (\n    \'catid\' => \'44\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'43\',\n    \'arrparentid\' => \'0,43\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'44\',\n    \'catname\' => \'微信\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0613/20170613105915396.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'gzwm/\',\n    \'catdir\' => \'wx\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=44\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'44\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'weixin\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  45 => \n  array (\n    \'catid\' => \'45\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'43\',\n    \'arrparentid\' => \'0,43\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'45\',\n    \'catname\' => \'微博\',\n    \'style\' => \'\',\n    \'image\' => \'http://healstec.itcask.com/uploadfile/2017/0613/20170613105915396.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'gzwm/\',\n    \'catdir\' => \'wb\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=45\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'45\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'weibo\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  46 => \n  array (\n    \'catid\' => \'46\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'46\',\n    \'catname\' => \'联系我们\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'lxwm\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=46\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"6\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'46\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'lianxiwomen\',\n    \'usable_type\' => \'\',\n    \'big_image\' => NULL,\n    \'image1\' => NULL,\n    \'description_index\' => NULL,\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  48 => \n  array (\n    \'catid\' => \'48\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'48\',\n    \'catname\' => \'工商编码\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'dsgdsgsdshshs\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'gsbm\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=48\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"healstec\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"6\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'48\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'gongshangbianma\',\n    \'usable_type\' => \'\',\n    \'big_image\' => NULL,\n    \'image1\' => NULL,\n    \'description_index\' => NULL,\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  50 => \n  array (\n    \'catid\' => \'50\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'50,51,53,54,55\',\n    \'catname\' => \'新闻频道\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'xwpdd\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=50\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'50\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xinwenpindao\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  51 => \n  array (\n    \'catid\' => \'51\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'50\',\n    \'arrparentid\' => \'0,50\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'51\',\n    \'catname\' => \'集团新闻\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xwpdd/\',\n    \'catdir\' => \'jtxw\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=51\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'51\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jituanxinwen\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  52 => \n  array (\n    \'catid\' => \'52\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'52\',\n    \'catname\' => \'最新消息\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'zxxx\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=52\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'52\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zuixinxiaoxi\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  53 => \n  array (\n    \'catid\' => \'53\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'50\',\n    \'arrparentid\' => \'0,50\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'53\',\n    \'catname\' => \'新闻特写\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xwpdd/\',\n    \'catdir\' => \'xwtx\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=53\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'53\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xinwentexie\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  54 => \n  array (\n    \'catid\' => \'54\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'50\',\n    \'arrparentid\' => \'0,50\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'54\',\n    \'catname\' => \'H声明\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xwpdd/\',\n    \'catdir\' => \'hshm\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=54\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'54\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'hshengming\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  55 => \n  array (\n    \'catid\' => \'55\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'50\',\n    \'arrparentid\' => \'0,50\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'55\',\n    \'catname\' => \'媒体联系\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xwpdd/\',\n    \'catdir\' => \'mtlx\',\n    \'url\' => \'http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=55\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'55\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'meitilianxi\',\n    \'usable_type\' => \'\',\n    \'big_image\' => \'\',\n    \'image1\' => \'\',\n    \'description_index\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n);\n?>'),('sitelist.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'siteid\' => \'1\',\n    \'name\' => \'healstec\',\n    \'dirname\' => \'\',\n    \'domain\' => \'http://healstec.itcask.com/\',\n    \'site_title\' => \'healstec\',\n    \'keywords\' => \'healstec\',\n    \'description\' => \'healstec\',\n    \'release_point\' => \'\',\n    \'default_style\' => \'healstec\',\n    \'template\' => \'healstec\',\n    \'setting\' => \'{\"upload_maxsize\":\"2048\",\"upload_allowext\":\"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf\",\"watermark_enable\":\"1\",\"watermark_minwidth\":\"300\",\"watermark_minheight\":\"300\",\"watermark_img\":\"statics\\\\/images\\\\/water\\\\/\\\\/mark.png\",\"watermark_pct\":\"85\",\"watermark_quality\":\"80\",\"watermark_pos\":\"9\"}\',\n    \'uuid\' => \'3b579107-4858-11e7-8b56-c45444531b8e\',\n    \'url\' => \'http://healstec.itcask.com/\',\n  ),\n);\n?>'),('downservers.cache.php','caches_commons/caches_data/','<?php\nreturn NULL;\n?>'),('badword.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('ipbanned.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('keylink.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('position.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  2 => \n  array (\n    \'posid\' => \'2\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'4\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  1 => \n  array (\n    \'posid\' => \'1\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页焦点图推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'1\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  16 => \n  array (\n    \'posid\' => \'16\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页每日热点\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  15 => \n  array (\n    \'posid\' => \'15\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  14 => \n  array (\n    \'posid\' => \'14\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  12 => \n  array (\n    \'posid\' => \'12\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页图片推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  10 => \n  array (\n    \'posid\' => \'10\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目首页推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  9 => \n  array (\n    \'posid\' => \'9\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'网站顶部推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  8 => \n  array (\n    \'posid\' => \'8\',\n    \'modelid\' => \'30\',\n    \'catid\' => \'54\',\n    \'name\' => \'图片频道首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  5 => \n  array (\n    \'posid\' => \'5\',\n    \'modelid\' => \'69\',\n    \'catid\' => \'0\',\n    \'name\' => \'推荐下载\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  13 => \n  array (\n    \'posid\' => \'13\',\n    \'modelid\' => \'82\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  17 => \n  array (\n    \'posid\' => \'17\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频栏目精彩推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n);\n?>'),('role_siteid.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  2 => \n  array (\n    0 => 1,\n  ),\n);\n?>'),('role.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \'超级管理员\',\n  2 => \'站点管理员\',\n  3 => \'运营总监\',\n  4 => \'总编\',\n  5 => \'编辑\',\n  7 => \'发布人员\',\n);\n?>'),('urlrules_detail.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'urlruleid\' => \'1\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n    \'example\' => \'news/china/1000.html\',\n  ),\n  6 => \n  array (\n    \'urlruleid\' => \'6\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=lists&catid=1&page=1\',\n  ),\n  11 => \n  array (\n    \'urlruleid\' => \'11\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'2010/catdir_0720/1_2.html\',\n  ),\n  12 => \n  array (\n    \'urlruleid\' => \'12\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'it/product/2010/0720/1_2.html\',\n  ),\n  16 => \n  array (\n    \'urlruleid\' => \'16\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=show&catid=1&id=1\',\n  ),\n  17 => \n  array (\n    \'urlruleid\' => \'17\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'show-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'show-1-2-1.html\',\n  ),\n  18 => \n  array (\n    \'urlruleid\' => \'18\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'content-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'content-1-2-1.html\',\n  ),\n  30 => \n  array (\n    \'urlruleid\' => \'30\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'list-{$catid}-{$page}.html\',\n    \'example\' => \'list-1-1.html\',\n  ),\n);\n?>'),('urlrules.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n  6 => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n  11 => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n  12 => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n  16 => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n  17 => \'show-{$catid}-{$id}-{$page}.html\',\n  18 => \'content-{$catid}-{$id}-{$page}.html\',\n  30 => \'list-{$catid}-{$page}.html\',\n);\n?>'),('modules.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  \'admin\' => \n  array (\n    \'module\' => \'admin\',\n    \'name\' => \'admin\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'{\"admin_email\":\"phpcms@phpcms.cn\",\"maxloginfailedtimes\":\"8\",\"minrefreshtime\":\"2\",\"mail_type\":\"1\",\"mail_server\":\"smtp.qq.com\",\"mail_port\":\"25\",\"category_ajax\":\"0\",\"mail_user\":\"healstec@foxmail.com\",\"mail_auth\":\"1\",\"mail_from\":\"healstec@foxmail.com\",\"mail_password\":\"\",\"errorlog_size\":\"20\"}\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-18\',\n    \'updatedate\' => \'2010-10-18\',\n  ),\n  \'member\' => \n  array (\n    \'module\' => \'member\',\n    \'name\' => \'会员\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'allowregister\\\' => \\\'1\\\',\n  \\\'choosemodel\\\' => \\\'1\\\',\n  \\\'enablemailcheck\\\' => \\\'0\\\',\n  \\\'registerverify\\\' => \\\'0\\\',\n  \\\'showapppoint\\\' => \\\'0\\\',\n  \\\'rmb_point_rate\\\' => \\\'10\\\',\n  \\\'defualtpoint\\\' => \\\'0\\\',\n  \\\'defualtamount\\\' => \\\'0\\\',\n  \\\'showregprotocol\\\' => \\\'0\\\',\n  \\\'regprotocol\\\' => \\\'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \\\',\n  \\\'registerverifymessage\\\' => \\\' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n  \\\'forgetpassword\\\' => \\\' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'pay\' => \n  array (\n    \'module\' => \'pay\',\n    \'name\' => \'支付\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'digg\' => \n  array (\n    \'module\' => \'digg\',\n    \'name\' => \'顶一下\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'special\' => \n  array (\n    \'module\' => \'special\',\n    \'name\' => \'专题\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'content\' => \n  array (\n    \'module\' => \'content\',\n    \'name\' => \'内容模块\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'search\' => \n  array (\n    \'module\' => \'search\',\n    \'name\' => \'全站搜索\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'fulltextenble\\\' => \\\'1\\\',\n  \\\'relationenble\\\' => \\\'1\\\',\n  \\\'suggestenable\\\' => \\\'1\\\',\n  \\\'sphinxenable\\\' => \\\'0\\\',\n  \\\'sphinxhost\\\' => \\\'10.228.134.102\\\',\n  \\\'sphinxport\\\' => \\\'9312\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'scan\' => \n  array (\n    \'module\' => \'scan\',\n    \'name\' => \'木马扫描\',\n    \'url\' => \'scan\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'attachment\' => \n  array (\n    \'module\' => \'attachment\',\n    \'name\' => \'附件\',\n    \'url\' => \'attachment\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'block\' => \n  array (\n    \'module\' => \'block\',\n    \'name\' => \'碎片\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'collection\' => \n  array (\n    \'module\' => \'collection\',\n    \'name\' => \'采集模块\',\n    \'url\' => \'collection\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'dbsource\' => \n  array (\n    \'module\' => \'dbsource\',\n    \'name\' => \'数据源\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'template\' => \n  array (\n    \'module\' => \'template\',\n    \'name\' => \'模板风格\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'release\' => \n  array (\n    \'module\' => \'release\',\n    \'name\' => \'发布点\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'video\' => \n  array (\n    \'module\' => \'video\',\n    \'name\' => \'视频库\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2012-09-28\',\n    \'updatedate\' => \'2012-09-28\',\n  ),\n  \'announce\' => \n  array (\n    \'module\' => \'announce\',\n    \'name\' => \'公告\',\n    \'url\' => \'announce/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'公告\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-06-03\',\n    \'updatedate\' => \'2017-06-03\',\n  ),\n  \'comment\' => \n  array (\n    \'module\' => \'comment\',\n    \'name\' => \'评论\',\n    \'url\' => \'comment/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'评论\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-06-03\',\n    \'updatedate\' => \'2017-06-03\',\n  ),\n  \'link\' => \n  array (\n    \'module\' => \'link\',\n    \'name\' => \'友情链接\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  1 => \n  array (\n    \\\'is_post\\\' => \\\'1\\\',\n    \\\'enablecheckcode\\\' => \\\'0\\\',\n  ),\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'vote\' => \n  array (\n    \'module\' => \'vote\',\n    \'name\' => \'投票\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\r\n  1 => \r\n  array (\r\n    \\\'default_style\\\' => \\\'default\\\',\r\n    \\\'vote_tp_template\\\' => \\\'vote_tp\\\',\r\n    \\\'allowguest\\\' => \\\'1\\\',\r\n    \\\'enabled\\\' => \\\'1\\\',\r\n    \\\'interval\\\' => \\\'1\\\',\r\n    \\\'credit\\\' => \\\'1\\\',\r\n  ),\r\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'message\' => \n  array (\n    \'module\' => \'message\',\n    \'name\' => \'短消息\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'mood\' => \n  array (\n    \'module\' => \'mood\',\n    \'name\' => \'新闻心情\',\n    \'url\' => \'mood/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'新闻心情\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-06-03\',\n    \'updatedate\' => \'2017-06-03\',\n  ),\n  \'poster\' => \n  array (\n    \'module\' => \'poster\',\n    \'name\' => \'广告模块\',\n    \'url\' => \'poster/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'广告模块\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-06-03\',\n    \'updatedate\' => \'2017-06-03\',\n  ),\n  \'formguide\' => \n  array (\n    \'module\' => \'formguide\',\n    \'name\' => \'表单向导\',\n    \'url\' => \'formguide/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'formguide\',\n    \'setting\' => \'array (\n  \\\'allowmultisubmit\\\' => \\\'1\\\',\n  \\\'interval\\\' => \\\'30\\\',\n  \\\'allowunreg\\\' => \\\'0\\\',\n  \\\'mailmessage\\\' => \\\'用户向我们提交了表单数据，赶快去看看吧。\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-20\',\n    \'updatedate\' => \'2010-10-20\',\n  ),\n  \'wap\' => \n  array (\n    \'module\' => \'wap\',\n    \'name\' => \'手机门户\',\n    \'url\' => \'wap/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'手机门户\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-06-03\',\n    \'updatedate\' => \'2017-06-03\',\n  ),\n  \'upgrade\' => \n  array (\n    \'module\' => \'upgrade\',\n    \'name\' => \'在线升级\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2011-05-18\',\n    \'updatedate\' => \'2011-05-18\',\n  ),\n  \'tag\' => \n  array (\n    \'module\' => \'tag\',\n    \'name\' => \'标签向导\',\n    \'url\' => \'tag/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'标签向导\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-06-03\',\n    \'updatedate\' => \'2017-06-03\',\n  ),\n  \'sms\' => \n  array (\n    \'module\' => \'sms\',\n    \'name\' => \'短信平台\',\n    \'url\' => \'sms/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'短信平台\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2011-09-02\',\n    \'updatedate\' => \'2011-09-02\',\n  ),\n);\n?>'),('type_content.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('vote.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'default_style\' => \'default\',\n    \'vote_tp_template\' => \'vote_tp\',\n    \'allowguest\' => \'1\',\n    \'enabled\' => \'1\',\n    \'interval\' => \'1\',\n    \'credit\' => \'1\',\n  ),\n);\n?>'),('model.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'modelid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'name\' => \'文章模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'news\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category\',\n    \'list_template\' => \'list\',\n    \'show_template\' => \'show\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  2 => \n  array (\n    \'modelid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'name\' => \'下载模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'download\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_download\',\n    \'list_template\' => \'list_download\',\n    \'show_template\' => \'show_download\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  3 => \n  array (\n    \'modelid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'name\' => \'图片模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'picture\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_picture\',\n    \'list_template\' => \'list_picture\',\n    \'show_template\' => \'show_picture\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  11 => \n  array (\n    \'modelid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'name\' => \'视频模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'video\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_video\',\n    \'list_template\' => \'list_video\',\n    \'show_template\' => \'show_video\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n);\n?>'),('workflow_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'workflowid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'1\',\n    \'workname\' => \'一级审核\',\n    \'description\' => \'审核一次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  2 => \n  array (\n    \'workflowid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'2\',\n    \'workname\' => \'二级审核\',\n    \'description\' => \'审核两次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  3 => \n  array (\n    \'workflowid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'3\',\n    \'workname\' => \'三级审核\',\n    \'description\' => \'审核三次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  4 => \n  array (\n    \'workflowid\' => \'4\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'4\',\n    \'workname\' => \'四级审核\',\n    \'description\' => \'四级审核\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n);\n?>'),('member_model.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  10 => \n  array (\n    \'modelid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'name\' => \'普通会员\',\n    \'description\' => \'普通会员\',\n    \'tablename\' => \'member_detail\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'\',\n    \'category_template\' => \'\',\n    \'list_template\' => \'\',\n    \'show_template\' => \'\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'2\',\n  ),\n);\n?>'),('special.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('common.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'category_ajax\' => \'0\',\n  \'mail_user\' => \'healstec@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'healstec@foxmail.com\',\n  \'mail_password\' => \'\',\n  \'errorlog_size\' => \'20\',\n);\n?>'),('category_items_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  42 => \'4\',\n  43 => \'0\',\n  44 => \'0\',\n  45 => \'0\',\n  28 => \'4\',\n  14 => \'0\',\n  11 => \'0\',\n  12 => \'0\',\n  13 => \'0\',\n  10 => \'0\',\n  41 => \'7\',\n  27 => \'2\',\n  23 => \'1\',\n  24 => \'2\',\n  25 => \'2\',\n  26 => \'1\',\n  29 => \'2\',\n  30 => \'3\',\n  31 => \'3\',\n  32 => \'3\',\n  36 => \'2\',\n  37 => \'3\',\n  38 => \'1\',\n  39 => \'2\',\n  40 => \'1\',\n  50 => \'0\',\n  51 => \'1\',\n  52 => \'3\',\n  53 => \'0\',\n  54 => \'0\',\n  55 => \'0\',\n);\n?>'),('category_items_2.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('category_items_3.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('category_items_11.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('link.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'is_post\' => \'1\',\n    \'enablecheckcode\' => \'0\',\n  ),\n);\n?>');
/*!40000 ALTER TABLE `hl_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_category`
--

DROP TABLE IF EXISTS `hl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `arrchildid` mediumtext NOT NULL,
  `catname` varchar(30) NOT NULL,
  `style` varchar(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `parentdir` varchar(100) NOT NULL,
  `catdir` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` mediumtext NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `letter` varchar(30) NOT NULL,
  `usable_type` varchar(255) NOT NULL,
  `big_image` varchar(100) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `description_index` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`siteid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_category`
--

LOCK TABLES `hl_category` WRITE;
/*!40000 ALTER TABLE `hl_category` DISABLE KEYS */;
INSERT INTO `hl_category` VALUES (42,1,'content',0,1,0,'0',0,'42','公司简介','','','','','gsjj','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=42',4,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',42,0,0,'gongsijianjie','','','',''),(43,1,'content',0,1,0,'0',1,'43,44,45','关注我们','','','','','gzwm','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=43',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',43,0,0,'guanzhuwomen','','','',''),(44,1,'content',0,1,43,'0,43',0,'44','微信','','http://healstec.itcask.com/uploadfile/2017/0613/20170613105915396.jpg','','gzwm/','wx','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=44',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',44,1,0,'weixin','','','',''),(45,1,'content',0,1,43,'0,43',0,'45','微博','','http://healstec.itcask.com/uploadfile/2017/0613/20170613105915396.jpg','','gzwm/','wb','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=45',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',45,1,0,'weibo','','','',''),(28,1,'content',0,1,12,'0,12',0,'28','社会活动','','','','shehuizeren/','shhd','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=28',4,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',28,1,0,'shehuihuodong','','','',''),(14,1,'content',0,1,0,'0',1,'14,32,36','品牌中心','','','这是我们过硬的产品质量、完善的售后服务、良好的<br>\r\n产品形象、美好的文化价值优秀的管理体系所形成的一种社会<br>\r\n评价和认知是我们长期辛勤耕耘建立起来的一种社会责任！','','pinpaizhongxin','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=14',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',14,1,0,'pinpaizhongxin','','http://healstec.itcask.com/uploadfile/2017/0606/20170606112033122.jpg','http://healstec.itcask.com/uploadfile/2017/0608/20170608123045685.jpg',''),(11,1,'content',0,1,0,'0',1,'11,23,24,25,26','科研技术','','','倾心所以专注，专注所以专业，专业所以创新—— <br/>\r\n以标准先进的科研技术，耐心细致的科研态度，持之以恒的科研毅力<br>\r\n创建您理想健康的生活形态','','tec','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=11',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',11,1,0,'keyanjishu','','http://healstec.itcask.com/uploadfile/2017/0606/20170606094316291.jpg','http://healstec.itcask.com/uploadfile/2017/0608/20170608100627203.png',''),(12,1,'content',0,1,0,'0',1,'12,27,28','社会责任','','','将心倾注，用爱灌溉，在广阔的世界<br/>大地上，种下我们爱心的种子，让它在每一个人心里<br />生根发芽，开出无比绚烂的奉献之花！','','shehuizeren','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=12',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',12,1,0,'shehuizeren','','http://healstec.itcask.com/uploadfile/2017/0613/20170613115557333.png','http://healstec.itcask.com/uploadfile/2017/0614/20170614123928141.png',''),(13,1,'content',0,1,0,'0',1,'13,29,30,31','营养与健康','','http://healstec.itcask.com/uploadfile/2017/0605/20170605124814798.jpg','“养生之道，莫先于食”。合理的饮食搭配是健康的基础，<br />机体摄入健康营养成分的比例必须符合人体的需要<br />让我们与您一起剖析产品配料，合理规划饮食，保持健康营养.....','','yingyangyujiankang','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=13',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',13,1,0,'yingyangyujiankang','','http://healstec.itcask.com/uploadfile/2017/0614/20170614095921204.jpg','http://healstec.itcask.com/uploadfile/2017/0608/20170608123045685.jpg','“养生之道，莫先于食”。<br />合理的饮食搭配是健康的基础，机体摄入健康营养成分的比例必须符合人体的需要让我们与您一起剖析产品配料，合理规划饮食，保持健康营养.....'),(10,1,'content',0,1,0,'0',1,'10,37,38,39,40,41','关于我们','','','我们扎根中国，与世界先进科研机构紧密合作，在全球范围内精选优质原料，依照中国健康\r\n数据标准，旨在为人们提供优秀的健康解决方案','','guanyuwomen','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=10',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',10,1,0,'guanyuwomen','','http://healstec.itcask.com/uploadfile/2017/0605/20170605071848180.gif','http://healstec.itcask.com/uploadfile/2017/0608/20170608123045685.jpg',''),(41,1,'content',0,1,10,'0,10',0,'41','新闻频道','','http://healstec.itcask.com/uploadfile/2017/0613/20170613110443252.png','让爱和责任，伴随梦想同时起飞','guanyuwomen/','xinwenpindao','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=41',7,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',41,1,0,'xinwenpindao','','http://healstec.itcask.com/uploadfile/2017/0613/20170613112613909.png','http://healstec.itcask.com/uploadfile/2017/0613/20170613110218151.png',''),(27,1,'content',0,1,12,'0,12',0,'27','关注公益','','','','shehuizeren/','gzhgy','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=27',2,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',27,1,0,'guanzhugongyi','','','',''),(23,1,'content',0,1,11,'0,11',0,'23','关注科研','','http://healstec.itcask.com/uploadfile/2017/0603/20170603105043319.jpg','专业的科研团队，精密的科研仪器</br>\r\n严谨的科研态度，用责任心和爱心共同灌溉······','tec/','gzky','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=23',1,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',23,1,0,'guanzhukeyan','','http://healstec.itcask.com/uploadfile/2017/0605/20170605074214503.jpg','','倾心所以专注'),(24,1,'content',0,1,11,'0,11',0,'24','技术探索','','http://healstec.itcask.com/uploadfile/2017/0603/20170603105020451.jpg','不断的反复测试，不断的探索前进，不断的日益创新<br>\r\n我们一直在科研技术的道路上夜以继日的不断努力着·····','tec/','jsts','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=24',2,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',24,1,0,'jishutansuo','','http://healstec.itcask.com/uploadfile/2017/0606/20170606092635448.jpg','','专注所以专业'),(25,1,'content',0,1,11,'0,11',0,'25','健康方案','','http://healstec.itcask.com/uploadfile/2017/0603/20170603110057672.png','我们用已知的科学积累和严谨的科研态度，加之强烈的责任感和爱心，为您奉<br>上针对不同人群的健康解决方案，安全无忧，健康生活！','tec/','jkfan','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=25',2,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',25,1,0,'jiankangfangan','','http://healstec.itcask.com/uploadfile/2017/0606/20170606093119330.jpg','http://healstec.itcask.com/uploadfile/2017/0605/20170605114456182.jpg','专业所以创新'),(26,1,'content',0,1,11,'0,11',0,'26','生产加工','','','过硬的工艺水平，严格的消毒车间</br>标准化的流水作业，早就你手中完美的科技创新产品！','tec/','scjg','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=26',1,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',26,1,0,'shengchanjiagong','','http://healstec.itcask.com/uploadfile/2017/0606/20170606093322334.jpg','',''),(29,1,'content',0,1,13,'0,13',0,'29','健康瘦身','','','','yingyangyujiankang/','jkss','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=29',2,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',29,1,0,'jiankangshoushen','','http://healstec.itcask.com/uploadfile/2017/0606/20170606013142905.jpg','',''),(30,1,'content',0,1,13,'0,13',0,'30','产品剖析','','','','yingyangyujiankang/','cppx','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=30',3,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',30,1,0,'chanpinpoxi','','http://healstec.itcask.com/uploadfile/2017/0614/20170614102530719.jpg','',''),(31,1,'content',0,1,13,'0,13',0,'31','营养膳食','','','','yingyangyujiankang/','yyss','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=31',3,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',31,1,0,'yingyangshanshi','','http://healstec.itcask.com/uploadfile/2017/0605/20170605124814798.jpg','',''),(32,1,'content',0,1,14,'0,14',0,'32','自营品牌','','','','pinpaizhongxin/','zypp','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=32',3,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',32,1,0,'ziyingpinpai','','','',''),(36,1,'content',0,1,14,'0,14',0,'36','关于产品','','','','pinpaizhongxin/','gyccp','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=36',2,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',36,1,0,'guanyuchanpin','','','',''),(37,1,'content',0,1,10,'0,10',0,'37','认识我们','','http://healstec.itcask.com/uploadfile/2017/0605/20170605070937182.png','让爱和责任，伴随梦想同时起飞······','guanyuwomen/','rswom','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=37',3,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',37,1,0,'renshiwomen','','http://healstec.itcask.com/uploadfile/2017/0605/20170605070957862.png','http://healstec.itcask.com/uploadfile/2017/0605/20170605072616329.png',''),(38,1,'content',0,1,10,'0,10',0,'38','价值观','','http://healstec.itcask.com/uploadfile/2017/0607/20170607091515598.png','将精神融入产品，把爱赋予行动','guanyuwomen/','jzg','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=38',1,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',38,1,0,'jiazhiguan','','http://healstec.itcask.com/uploadfile/2017/0607/20170607091537695.png','http://healstec.itcask.com/uploadfile/2017/0607/20170607091441498.png',''),(39,1,'content',0,1,10,'0,10',0,'39','使命愿景','','http://healstec.itcask.com/uploadfile/2017/0607/20170607091728425.png','以高依从性的解决方案，关爱您的健康','guanyuwomen/','shmyj','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=39',2,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',39,1,0,'shimingyuanjing','','http://healstec.itcask.com/uploadfile/2017/0607/20170607091747949.png','http://healstec.itcask.com/uploadfile/2017/0607/20170607091708695.png',''),(40,1,'content',0,1,10,'0,10',0,'40','核心竞争力','','http://healstec.itcask.com/uploadfile/2017/0607/20170607092355579.png','丰富经验的专业团队，是我们发展的基础','guanyuwomen/','hxjzhl','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=40',1,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',40,1,0,'hexinjingzhengli','','http://healstec.itcask.com/uploadfile/2017/0607/20170607092427408.png','http://healstec.itcask.com/uploadfile/2017/0607/20170607092327245.png',''),(46,1,'content',1,0,0,'0',0,'46','联系我们','','','','','lxwm','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=46',0,0,'{\"ishtml\":\"0\",\"template_list\":\"\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"6\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}',46,0,0,'lianxiwomen','',NULL,NULL,NULL),(50,1,'content',0,1,0,'0',1,'50,51,53,54,55','新闻频道','','','','','xwpdd','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=50',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',50,0,0,'xinwenpindao','','','',''),(48,1,'content',1,0,0,'0',0,'48','工商编码','','','dsgdsgsdshshs','','gsbm','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=48',0,0,'{\"ishtml\":\"0\",\"template_list\":\"healstec\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"6\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}',48,0,0,'gongshangbianma','',NULL,NULL,NULL),(51,1,'content',0,1,50,'0,50',0,'51','集团新闻','','','','xwpdd/','jtxw','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=51',1,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',51,0,0,'jituanxinwen','','','',''),(52,1,'content',0,1,0,'0',0,'52','最新消息','','','','','zxxx','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=52',3,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',52,0,0,'zuixinxiaoxi','','','',''),(53,1,'content',0,1,50,'0,50',0,'53','新闻特写','','','','xwpdd/','xwtx','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=53',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',53,0,0,'xinwentexie','','','',''),(54,1,'content',0,1,50,'0,50',0,'54','H声明','','','','xwpdd/','hshm','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=54',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',54,0,0,'hshengming','','','',''),(55,1,'content',0,1,50,'0,50',0,'55','媒体联系','','','','xwpdd/','mtlx','http://healstec.itcask.com/index.php?m=content&c=index&a=lists&catid=55',0,0,'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"healstec\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}',55,0,0,'meitilianxi','','','','');
/*!40000 ALTER TABLE `hl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_category_priv`
--

DROP TABLE IF EXISTS `hl_category_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action` char(30) NOT NULL,
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_category_priv`
--

LOCK TABLES `hl_category_priv` WRITE;
/*!40000 ALTER TABLE `hl_category_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_category_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_collection_content`
--

DROP TABLE IF EXISTS `hl_collection_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_collection_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL,
  `title` char(100) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nodeid` (`nodeid`,`siteid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_collection_content`
--

LOCK TABLES `hl_collection_content` WRITE;
/*!40000 ALTER TABLE `hl_collection_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_collection_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_collection_history`
--

DROP TABLE IF EXISTS `hl_collection_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_collection_history` (
  `md5` char(32) NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_collection_history`
--

LOCK TABLES `hl_collection_history` WRITE;
/*!40000 ALTER TABLE `hl_collection_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_collection_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_collection_node`
--

DROP TABLE IF EXISTS `hl_collection_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_collection_node` (
  `nodeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sourcecharset` varchar(8) NOT NULL,
  `sourcetype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlpage` text NOT NULL,
  `pagesize_start` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pagesize_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `page_base` char(255) NOT NULL,
  `par_num` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `url_contain` char(100) NOT NULL,
  `url_except` char(100) NOT NULL,
  `url_start` char(100) NOT NULL DEFAULT '',
  `url_end` char(100) NOT NULL DEFAULT '',
  `title_rule` char(100) NOT NULL,
  `title_html_rule` text NOT NULL,
  `author_rule` char(100) NOT NULL,
  `author_html_rule` text NOT NULL,
  `comeform_rule` char(100) NOT NULL,
  `comeform_html_rule` text NOT NULL,
  `time_rule` char(100) NOT NULL,
  `time_html_rule` text NOT NULL,
  `content_rule` char(100) NOT NULL,
  `content_html_rule` text NOT NULL,
  `content_page_start` char(100) NOT NULL,
  `content_page_end` char(100) NOT NULL,
  `content_page_rule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_page` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_nextpage` char(100) NOT NULL,
  `down_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `watermark` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `coll_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customize_config` text NOT NULL,
  PRIMARY KEY (`nodeid`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_collection_node`
--

LOCK TABLES `hl_collection_node` WRITE;
/*!40000 ALTER TABLE `hl_collection_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_collection_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_collection_program`
--

DROP TABLE IF EXISTS `hl_collection_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_collection_program` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `nodeid` (`nodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_collection_program`
--

LOCK TABLES `hl_collection_program` WRITE;
/*!40000 ALTER TABLE `hl_collection_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_collection_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_comment`
--

DROP TABLE IF EXISTS `hl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_comment` (
  `commentid` char(30) NOT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0',
  `title` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `total` int(8) unsigned DEFAULT '0',
  `square` mediumint(8) unsigned DEFAULT '0',
  `anti` mediumint(8) unsigned DEFAULT '0',
  `neutral` mediumint(8) unsigned DEFAULT '0',
  `display_type` tinyint(1) DEFAULT '0',
  `tableid` mediumint(8) unsigned DEFAULT '0',
  `lastupdate` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`commentid`),
  KEY `lastupdate` (`lastupdate`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_comment`
--

LOCK TABLES `hl_comment` WRITE;
/*!40000 ALTER TABLE `hl_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_comment_check`
--

DROP TABLE IF EXISTS `hl_comment_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_comment_check` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `comment_data_id` int(10) DEFAULT '0' COMMENT '论评ID号',
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `tableid` mediumint(8) DEFAULT '0' COMMENT '数据存储表ID',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `comment_data_id` (`comment_data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_comment_check`
--

LOCK TABLES `hl_comment_check` WRITE;
/*!40000 ALTER TABLE `hl_comment_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_comment_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_comment_data_1`
--

DROP TABLE IF EXISTS `hl_comment_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_comment_data_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `commentid` char(30) NOT NULL DEFAULT '' COMMENT '评论ID号',
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `userid` int(10) unsigned DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `creat_at` int(10) DEFAULT NULL COMMENT '发布时间',
  `ip` varchar(15) DEFAULT NULL COMMENT '用户IP地址',
  `status` tinyint(1) DEFAULT '0' COMMENT '评论状态{0:未审核,-1:未通过审核,1:通过审核}',
  `content` text COMMENT '评论内容',
  `direction` tinyint(1) DEFAULT '0' COMMENT '评论方向{0:无方向,1:正文,2:反方,3:中立}',
  `support` mediumint(8) unsigned DEFAULT '0' COMMENT '支持数',
  `reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为回复',
  PRIMARY KEY (`id`),
  KEY `commentid` (`commentid`),
  KEY `direction` (`direction`),
  KEY `siteid` (`siteid`),
  KEY `support` (`support`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_comment_data_1`
--

LOCK TABLES `hl_comment_data_1` WRITE;
/*!40000 ALTER TABLE `hl_comment_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_comment_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_comment_setting`
--

DROP TABLE IF EXISTS `hl_comment_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_comment_setting` (
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `guest` tinyint(1) DEFAULT '0' COMMENT '是否允许游客评论',
  `check` tinyint(1) DEFAULT '0' COMMENT '是否需要审核',
  `code` tinyint(1) DEFAULT '0' COMMENT '是否开启验证码',
  `add_point` tinyint(3) unsigned DEFAULT '0' COMMENT '添加的积分数',
  `del_point` tinyint(3) unsigned DEFAULT '0' COMMENT '扣除的积分数',
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_comment_setting`
--

LOCK TABLES `hl_comment_setting` WRITE;
/*!40000 ALTER TABLE `hl_comment_setting` DISABLE KEYS */;
INSERT INTO `hl_comment_setting` VALUES (1,0,0,0,0,0);
/*!40000 ALTER TABLE `hl_comment_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_comment_table`
--

DROP TABLE IF EXISTS `hl_comment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_comment_table` (
  `tableid` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '表ID号',
  `total` int(10) unsigned DEFAULT '0' COMMENT '数据总量',
  `creat_at` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`tableid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_comment_table`
--

LOCK TABLES `hl_comment_table` WRITE;
/*!40000 ALTER TABLE `hl_comment_table` DISABLE KEYS */;
INSERT INTO `hl_comment_table` VALUES (1,0,0);
/*!40000 ALTER TABLE `hl_comment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_content_check`
--

DROP TABLE IF EXISTS `hl_content_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_content_check` (
  `checkid` char(15) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `checkid` (`checkid`),
  KEY `status` (`status`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_content_check`
--

LOCK TABLES `hl_content_check` WRITE;
/*!40000 ALTER TABLE `hl_content_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_content_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_copyfrom`
--

DROP TABLE IF EXISTS `hl_copyfrom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_copyfrom` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sitename` varchar(30) NOT NULL,
  `siteurl` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_copyfrom`
--

LOCK TABLES `hl_copyfrom` WRITE;
/*!40000 ALTER TABLE `hl_copyfrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_copyfrom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_datacall`
--

DROP TABLE IF EXISTS `hl_datacall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_datacall` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  `dis_type` tinyint(1) unsigned DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `action` char(20) DEFAULT NULL,
  `data` text,
  `template` text,
  `cache` mediumint(8) DEFAULT NULL,
  `num` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_datacall`
--

LOCK TABLES `hl_datacall` WRITE;
/*!40000 ALTER TABLE `hl_datacall` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_datacall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_dbsource`
--

DROP TABLE IF EXISTS `hl_dbsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_dbsource` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` int(5) NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `dbtablepre` varchar(30) NOT NULL,
  `charset` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_dbsource`
--

LOCK TABLES `hl_dbsource` WRITE;
/*!40000 ALTER TABLE `hl_dbsource` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_dbsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_download`
--

DROP TABLE IF EXISTS `hl_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_download` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `systems` varchar(100) NOT NULL DEFAULT 'Win2000/WinXP/Win2003',
  `copytype` varchar(15) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `classtype` varchar(20) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT 'Unkown',
  `stars` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_download`
--

LOCK TABLES `hl_download` WRITE;
/*!40000 ALTER TABLE `hl_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_download_data`
--

DROP TABLE IF EXISTS `hl_download_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_download_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `downfiles` mediumtext NOT NULL,
  `downfile` varchar(255) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_download_data`
--

LOCK TABLES `hl_download_data` WRITE;
/*!40000 ALTER TABLE `hl_download_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_download_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_downservers`
--

DROP TABLE IF EXISTS `hl_downservers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_downservers` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_downservers`
--

LOCK TABLES `hl_downservers` WRITE;
/*!40000 ALTER TABLE `hl_downservers` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_downservers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_extend_setting`
--

DROP TABLE IF EXISTS `hl_extend_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_extend_setting` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `key` char(30) NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_extend_setting`
--

LOCK TABLES `hl_extend_setting` WRITE;
/*!40000 ALTER TABLE `hl_extend_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_extend_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_favorite`
--

DROP TABLE IF EXISTS `hl_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_favorite`
--

LOCK TABLES `hl_favorite` WRITE;
/*!40000 ALTER TABLE `hl_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_hits`
--

DROP TABLE IF EXISTS `hl_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_hits` (
  `hitsid` char(30) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdayviews` int(10) unsigned NOT NULL DEFAULT '0',
  `dayviews` int(10) unsigned NOT NULL DEFAULT '0',
  `weekviews` int(10) unsigned NOT NULL DEFAULT '0',
  `monthviews` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hitsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_hits`
--

LOCK TABLES `hl_hits` WRITE;
/*!40000 ALTER TABLE `hl_hits` DISABLE KEYS */;
INSERT INTO `hl_hits` VALUES ('c-1-1',6,0,0,0,0,0,1496493879),('c-1-2',15,2,0,2,2,2,1496500719),('c-1-3',15,4,0,3,3,4,1496641259),('c-1-4',27,0,0,0,0,0,1496724586),('c-1-5',27,0,0,0,0,0,1496724637),('c-1-6',28,0,0,0,0,0,1496725468),('c-1-7',28,0,0,0,0,0,1496726132),('c-1-8',29,0,0,0,0,0,1496726955),('c-1-9',29,0,0,0,0,0,1496726974),('c-1-10',30,0,0,0,0,0,1496727270),('c-1-11',30,0,0,0,0,0,1496727285),('c-1-12',30,0,0,0,0,0,1496727298),('c-1-13',31,0,0,0,0,0,1496727427),('c-1-14',31,0,0,0,0,0,1496727483),('c-1-15',31,0,0,0,0,0,1496727503),('c-1-16',32,0,0,0,0,0,1496762819),('c-1-17',32,0,0,0,0,0,1496763784),('c-1-18',32,0,0,0,0,0,1496763828),('c-1-19',34,0,0,0,0,0,1496764367),('c-1-20',33,0,0,0,0,0,1496765061),('c-1-21',33,0,0,0,0,0,1496765108),('c-1-22',36,0,0,0,0,0,1496765689),('c-1-23',36,0,0,0,0,0,1496765715),('c-1-24',37,0,0,0,0,0,1496811645),('c-1-25',37,0,0,0,0,0,1496811806),('c-1-26',38,0,0,0,0,0,1496812747),('c-1-27',39,0,0,0,0,0,1496813102),('c-1-28',39,0,0,0,0,0,1496813120),('c-1-29',40,0,0,0,0,0,1496851685),('c-1-30',41,0,0,0,0,0,1496852136),('c-1-31',23,0,0,0,0,0,1496897676),('c-1-32',24,0,0,0,0,0,1496898243),('c-1-33',24,0,0,0,0,0,1496898299),('c-1-34',25,0,0,0,0,0,1496903259),('c-1-35',26,0,0,0,0,0,1496903547),('c-1-36',41,0,0,0,0,0,1496935620),('c-1-37',42,0,0,0,0,0,1496999698),('c-1-38',42,0,0,0,0,0,1497001080),('c-1-39',49,0,0,0,0,0,1497025683),('c-1-40',49,0,0,0,0,0,1497026024),('c-1-41',51,0,0,0,0,0,1497186828),('c-1-42',52,0,0,0,0,0,1497365424),('c-1-43',52,0,0,0,0,0,1497365526),('c-1-44',52,0,0,0,0,0,1497365577),('c-1-45',42,0,0,0,0,0,1497365763),('c-1-46',42,0,0,0,0,0,1497365783),('c-1-47',37,0,0,0,0,0,1497367747),('c-1-48',41,0,0,0,0,0,1497368605),('c-1-49',41,0,0,0,0,0,1497368637),('c-1-50',41,0,0,0,0,0,1497368689),('c-1-51',25,0,0,0,0,0,1497369191),('c-1-52',28,0,0,0,0,0,1497370480),('c-1-53',28,0,0,0,0,0,1497370505);
/*!40000 ALTER TABLE `hl_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_ipbanned`
--

DROP TABLE IF EXISTS `hl_ipbanned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_ipbanned` (
  `ipbannedid` smallint(5) NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL,
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipbannedid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_ipbanned`
--

LOCK TABLES `hl_ipbanned` WRITE;
/*!40000 ALTER TABLE `hl_ipbanned` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_ipbanned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_keylink`
--

DROP TABLE IF EXISTS `hl_keylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_keylink` (
  `keylinkid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` char(40) NOT NULL,
  `url` char(100) NOT NULL,
  PRIMARY KEY (`keylinkid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_keylink`
--

LOCK TABLES `hl_keylink` WRITE;
/*!40000 ALTER TABLE `hl_keylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_keylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_keyword`
--

DROP TABLE IF EXISTS `hl_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyword` char(100) NOT NULL,
  `pinyin` char(100) NOT NULL,
  `videonum` int(11) NOT NULL DEFAULT '0',
  `searchnums` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_keyword`
--

LOCK TABLES `hl_keyword` WRITE;
/*!40000 ALTER TABLE `hl_keyword` DISABLE KEYS */;
INSERT INTO `hl_keyword` VALUES (1,1,'test1keyword','test1keyword',3,0),(2,1,'创新改变生活','chuangxingaibianshenghuo',1,0),(3,1,'创新改变生活2','chuangxingaibianshenghuo2',2,0),(4,1,'浔阳村小学生活公益活动','zuoyangcunxiaoxueshenghuogongyihuodong',5,0),(5,1,'第二个文章','diergewenzhang',6,0),(6,1,'社会活动1','shehuihuodong1',7,0),(7,1,'社会活动2','shehuihuodong2',7,0),(8,1,'健康瘦身1','jiankangshoushen1',3,0),(9,1,'健康瘦身2','jiankangshoushen2',2,0),(10,1,'产品剖析1','chanpinpoxi1',1,0),(11,1,'产品剖析2','chanpinpoxi2',1,0),(12,1,'产品剖析3','chanpinpoxi3',1,0),(13,1,'营养膳食1','yingyangshanshi1',2,0),(14,1,'营养膳食2','yingyangshanshi2',1,0),(15,1,'营养膳食3','yingyangshanshi3',2,0),(16,1,'','',101,0);
/*!40000 ALTER TABLE `hl_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_keyword_data`
--

DROP TABLE IF EXISTS `hl_keyword_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_keyword_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `contentid` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagid` (`tagid`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_keyword_data`
--

LOCK TABLES `hl_keyword_data` WRITE;
/*!40000 ALTER TABLE `hl_keyword_data` DISABLE KEYS */;
INSERT INTO `hl_keyword_data` VALUES (1,1,1,'1-1'),(2,2,1,'2-1'),(3,3,1,'3-1'),(4,4,1,'4-1'),(5,5,1,'5-1'),(6,6,1,'6-1'),(7,7,1,'7-1'),(8,8,1,'8-1'),(9,9,1,'9-1'),(10,10,1,'10-1'),(11,11,1,'11-1'),(12,12,1,'12-1'),(13,13,1,'13-1'),(14,14,1,'14-1'),(15,15,1,'15-1'),(16,16,1,'16-1'),(17,16,1,'17-1'),(18,16,1,'18-1'),(19,16,1,'19-1'),(20,16,1,'20-1'),(21,16,1,'21-1'),(22,16,1,'22-1'),(23,16,1,'23-1'),(24,16,1,'24-1'),(25,16,1,'25-1'),(26,16,1,'26-1'),(27,16,1,'27-1'),(28,16,1,'28-1'),(29,16,1,'29-1'),(30,16,1,'30-1'),(31,16,1,'31-1'),(32,16,1,'32-1'),(33,16,1,'33-1'),(34,16,1,'34-1'),(35,16,1,'35-1'),(36,16,1,'36-1'),(37,16,1,'37-1'),(38,16,1,'38-1'),(39,16,1,'39-1'),(40,16,1,'40-1'),(41,16,1,'41-1'),(42,16,1,'42-1'),(43,16,1,'43-1'),(44,16,1,'44-1'),(45,16,1,'45-1'),(46,16,1,'46-1'),(47,16,1,'47-1'),(48,16,1,'48-1'),(49,16,1,'49-1'),(50,16,1,'50-1'),(51,16,1,'51-1'),(52,16,1,'52-1'),(53,16,1,'53-1');
/*!40000 ALTER TABLE `hl_keyword_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_link`
--

DROP TABLE IF EXISTS `hl_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_link` (
  `linkid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `elite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkid`),
  KEY `typeid` (`typeid`,`passed`,`listorder`,`linkid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_link`
--

LOCK TABLES `hl_link` WRITE;
/*!40000 ALTER TABLE `hl_link` DISABLE KEYS */;
INSERT INTO `hl_link` VALUES (1,1,0,1,'PHPCMS','http://www.phpcms.cn','http://www.phpcms.cn/images/logo_88_31.gif','','',0,0,1,1496492641),(2,1,0,1,'盛大在线','http://www.sdo.com','http://www.snda.com/cn/logo/comp_logo_sdo.gif','','',0,0,1,1496492641);
/*!40000 ALTER TABLE `hl_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_linkage`
--

DROP TABLE IF EXISTS `hl_linkage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_linkage` (
  `linkageid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `style` varchar(35) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchildid` mediumtext NOT NULL,
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `setting` varchar(255) DEFAULT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkageid`,`keyid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3360 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_linkage`
--

LOCK TABLES `hl_linkage` WRITE;
/*!40000 ALTER TABLE `hl_linkage` DISABLE KEYS */;
INSERT INTO `hl_linkage` VALUES (1,'中国','1',0,0,'',0,0,'',NULL,0),(2,'北京市','0',0,0,'',1,0,'',NULL,0),(3,'上海市','0',0,0,'',1,0,'',NULL,0),(4,'天津市','0',0,0,'',1,0,'',NULL,0),(5,'重庆市','0',0,0,'',1,0,'',NULL,0),(6,'河北省','0',0,0,'',1,0,'',NULL,0),(7,'山西省','0',0,0,'',1,0,'',NULL,0),(8,'内蒙古','0',0,0,'',1,0,'',NULL,0),(9,'辽宁省','0',0,0,'',1,0,'',NULL,0),(10,'吉林省','0',0,0,'',1,0,'',NULL,0),(11,'黑龙江省','0',0,0,'',1,0,'',NULL,0),(12,'江苏省','0',0,0,'',1,0,'',NULL,0),(13,'浙江省','0',0,0,'',1,0,'',NULL,0),(14,'安徽省','0',0,0,'',1,0,'',NULL,0),(15,'福建省','0',0,0,'',1,0,'',NULL,0),(16,'江西省','0',0,0,'',1,0,'',NULL,0),(17,'山东省','0',0,0,'',1,0,'',NULL,0),(18,'河南省','0',0,0,'',1,0,'',NULL,0),(19,'湖北省','0',0,0,'',1,0,'',NULL,0),(20,'湖南省','0',0,0,'',1,0,'',NULL,0),(21,'广东省','0',0,0,'',1,0,'',NULL,0),(22,'广西','0',0,0,'',1,0,'',NULL,0),(23,'海南省','0',0,0,'',1,0,'',NULL,0),(24,'四川省','0',0,0,'',1,0,'',NULL,0),(25,'贵州省','0',0,0,'',1,0,'',NULL,0),(26,'云南省','0',0,0,'',1,0,'',NULL,0),(27,'西藏','0',0,0,'',1,0,'',NULL,0),(28,'陕西省','0',0,0,'',1,0,'',NULL,0),(29,'甘肃省','0',0,0,'',1,0,'',NULL,0),(30,'青海省','0',0,0,'',1,0,'',NULL,0),(31,'宁夏','0',0,0,'',1,0,'',NULL,0),(32,'新疆','0',0,0,'',1,0,'',NULL,0),(33,'台湾省','0',0,0,'',1,0,'',NULL,0),(34,'香港','0',0,0,'',1,0,'',NULL,0),(35,'澳门','0',0,0,'',1,0,'',NULL,0),(36,'东城区','0',2,0,'',1,0,'',NULL,0),(37,'西城区','0',2,0,'',1,0,'',NULL,0),(38,'崇文区','0',2,0,'',1,0,'',NULL,0),(39,'宣武区','0',2,0,'',1,0,'',NULL,0),(40,'朝阳区','0',2,0,'',1,0,'',NULL,0),(41,'石景山区','0',2,0,'',1,0,'',NULL,0),(42,'海淀区','0',2,0,'',1,0,'',NULL,0),(43,'门头沟区','0',2,0,'',1,0,'',NULL,0),(44,'房山区','0',2,0,'',1,0,'',NULL,0),(45,'通州区','0',2,0,'',1,0,'',NULL,0),(46,'顺义区','0',2,0,'',1,0,'',NULL,0),(47,'昌平区','0',2,0,'',1,0,'',NULL,0),(48,'大兴区','0',2,0,'',1,0,'',NULL,0),(49,'怀柔区','0',2,0,'',1,0,'',NULL,0),(50,'平谷区','0',2,0,'',1,0,'',NULL,0),(51,'密云县','0',2,0,'',1,0,'',NULL,0),(52,'延庆县','0',2,0,'',1,0,'',NULL,0),(53,'黄浦区','0',3,0,'',1,0,'',NULL,0),(54,'卢湾区','0',3,0,'',1,0,'',NULL,0),(55,'徐汇区','0',3,0,'',1,0,'',NULL,0),(56,'长宁区','0',3,0,'',1,0,'',NULL,0),(57,'静安区','0',3,0,'',1,0,'',NULL,0),(58,'普陀区','0',3,0,'',1,0,'',NULL,0),(59,'闸北区','0',3,0,'',1,0,'',NULL,0),(60,'虹口区','0',3,0,'',1,0,'',NULL,0),(61,'杨浦区','0',3,0,'',1,0,'',NULL,0),(62,'闵行区','0',3,0,'',1,0,'',NULL,0),(63,'宝山区','0',3,0,'',1,0,'',NULL,0),(64,'嘉定区','0',3,0,'',1,0,'',NULL,0),(65,'浦东新区','0',3,0,'',1,0,'',NULL,0),(66,'金山区','0',3,0,'',1,0,'',NULL,0),(67,'松江区','0',3,0,'',1,0,'',NULL,0),(68,'青浦区','0',3,0,'',1,0,'',NULL,0),(69,'南汇区','0',3,0,'',1,0,'',NULL,0),(70,'奉贤区','0',3,0,'',1,0,'',NULL,0),(71,'崇明县','0',3,0,'',1,0,'',NULL,0),(72,'和平区','0',4,0,'',1,0,'',NULL,0),(73,'河东区','0',4,0,'',1,0,'',NULL,0),(74,'河西区','0',4,0,'',1,0,'',NULL,0),(75,'南开区','0',4,0,'',1,0,'',NULL,0),(76,'河北区','0',4,0,'',1,0,'',NULL,0),(77,'红桥区','0',4,0,'',1,0,'',NULL,0),(78,'塘沽区','0',4,0,'',1,0,'',NULL,0),(79,'汉沽区','0',4,0,'',1,0,'',NULL,0),(80,'大港区','0',4,0,'',1,0,'',NULL,0),(81,'东丽区','0',4,0,'',1,0,'',NULL,0),(82,'西青区','0',4,0,'',1,0,'',NULL,0),(83,'津南区','0',4,0,'',1,0,'',NULL,0),(84,'北辰区','0',4,0,'',1,0,'',NULL,0),(85,'武清区','0',4,0,'',1,0,'',NULL,0),(86,'宝坻区','0',4,0,'',1,0,'',NULL,0),(87,'宁河县','0',4,0,'',1,0,'',NULL,0),(88,'静海县','0',4,0,'',1,0,'',NULL,0),(89,'蓟县','0',4,0,'',1,0,'',NULL,0),(90,'万州区','0',5,0,'',1,0,'',NULL,0),(91,'涪陵区','0',5,0,'',1,0,'',NULL,0),(92,'渝中区','0',5,0,'',1,0,'',NULL,0),(93,'大渡口区','0',5,0,'',1,0,'',NULL,0),(94,'江北区','0',5,0,'',1,0,'',NULL,0),(95,'沙坪坝区','0',5,0,'',1,0,'',NULL,0),(96,'九龙坡区','0',5,0,'',1,0,'',NULL,0),(97,'南岸区','0',5,0,'',1,0,'',NULL,0),(98,'北碚区','0',5,0,'',1,0,'',NULL,0),(99,'万盛区','0',5,0,'',1,0,'',NULL,0),(100,'双桥区','0',5,0,'',1,0,'',NULL,0),(101,'渝北区','0',5,0,'',1,0,'',NULL,0),(102,'巴南区','0',5,0,'',1,0,'',NULL,0),(103,'黔江区','0',5,0,'',1,0,'',NULL,0),(104,'长寿区','0',5,0,'',1,0,'',NULL,0),(105,'綦江县','0',5,0,'',1,0,'',NULL,0),(106,'潼南县','0',5,0,'',1,0,'',NULL,0),(107,'铜梁县','0',5,0,'',1,0,'',NULL,0),(108,'大足县','0',5,0,'',1,0,'',NULL,0),(109,'荣昌县','0',5,0,'',1,0,'',NULL,0),(110,'璧山县','0',5,0,'',1,0,'',NULL,0),(111,'梁平县','0',5,0,'',1,0,'',NULL,0),(112,'城口县','0',5,0,'',1,0,'',NULL,0),(113,'丰都县','0',5,0,'',1,0,'',NULL,0),(114,'垫江县','0',5,0,'',1,0,'',NULL,0),(115,'武隆县','0',5,0,'',1,0,'',NULL,0),(116,'忠县','0',5,0,'',1,0,'',NULL,0),(117,'开县','0',5,0,'',1,0,'',NULL,0),(118,'云阳县','0',5,0,'',1,0,'',NULL,0),(119,'奉节县','0',5,0,'',1,0,'',NULL,0),(120,'巫山县','0',5,0,'',1,0,'',NULL,0),(121,'巫溪县','0',5,0,'',1,0,'',NULL,0),(122,'石柱县','0',5,0,'',1,0,'',NULL,0),(123,'秀山县','0',5,0,'',1,0,'',NULL,0),(124,'酉阳县','0',5,0,'',1,0,'',NULL,0),(125,'彭水县','0',5,0,'',1,0,'',NULL,0),(126,'江津区','0',5,0,'',1,0,'',NULL,0),(127,'合川区','0',5,0,'',1,0,'',NULL,0),(128,'永川区','0',5,0,'',1,0,'',NULL,0),(129,'南川区','0',5,0,'',1,0,'',NULL,0),(130,'石家庄市','0',6,0,'',1,0,'',NULL,0),(131,'唐山市','0',6,0,'',1,0,'',NULL,0),(132,'秦皇岛市','0',6,0,'',1,0,'',NULL,0),(133,'邯郸市','0',6,0,'',1,0,'',NULL,0),(134,'邢台市','0',6,0,'',1,0,'',NULL,0),(135,'保定市','0',6,0,'',1,0,'',NULL,0),(136,'张家口市','0',6,0,'',1,0,'',NULL,0),(137,'承德市','0',6,0,'',1,0,'',NULL,0),(138,'沧州市','0',6,0,'',1,0,'',NULL,0),(139,'廊坊市','0',6,0,'',1,0,'',NULL,0),(140,'衡水市','0',6,0,'',1,0,'',NULL,0),(141,'太原市','0',7,0,'',1,0,'',NULL,0),(142,'大同市','0',7,0,'',1,0,'',NULL,0),(143,'阳泉市','0',7,0,'',1,0,'',NULL,0),(144,'长治市','0',7,0,'',1,0,'',NULL,0),(145,'晋城市','0',7,0,'',1,0,'',NULL,0),(146,'朔州市','0',7,0,'',1,0,'',NULL,0),(147,'晋中市','0',7,0,'',1,0,'',NULL,0),(148,'运城市','0',7,0,'',1,0,'',NULL,0),(149,'忻州市','0',7,0,'',1,0,'',NULL,0),(150,'临汾市','0',7,0,'',1,0,'',NULL,0),(151,'吕梁市','0',7,0,'',1,0,'',NULL,0),(152,'呼和浩特市','0',8,0,'',1,0,'',NULL,0),(153,'包头市','0',8,0,'',1,0,'',NULL,0),(154,'乌海市','0',8,0,'',1,0,'',NULL,0),(155,'赤峰市','0',8,0,'',1,0,'',NULL,0),(156,'通辽市','0',8,0,'',1,0,'',NULL,0),(157,'鄂尔多斯市','0',8,0,'',1,0,'',NULL,0),(158,'呼伦贝尔市','0',8,0,'',1,0,'',NULL,0),(159,'巴彦淖尔市','0',8,0,'',1,0,'',NULL,0),(160,'乌兰察布市','0',8,0,'',1,0,'',NULL,0),(161,'兴安盟','0',8,0,'',1,0,'',NULL,0),(162,'锡林郭勒盟','0',8,0,'',1,0,'',NULL,0),(163,'阿拉善盟','0',8,0,'',1,0,'',NULL,0),(164,'沈阳市','0',9,0,'',1,0,'',NULL,0),(165,'大连市','0',9,0,'',1,0,'',NULL,0),(166,'鞍山市','0',9,0,'',1,0,'',NULL,0),(167,'抚顺市','0',9,0,'',1,0,'',NULL,0),(168,'本溪市','0',9,0,'',1,0,'',NULL,0),(169,'丹东市','0',9,0,'',1,0,'',NULL,0),(170,'锦州市','0',9,0,'',1,0,'',NULL,0),(171,'营口市','0',9,0,'',1,0,'',NULL,0),(172,'阜新市','0',9,0,'',1,0,'',NULL,0),(173,'辽阳市','0',9,0,'',1,0,'',NULL,0),(174,'盘锦市','0',9,0,'',1,0,'',NULL,0),(175,'铁岭市','0',9,0,'',1,0,'',NULL,0),(176,'朝阳市','0',9,0,'',1,0,'',NULL,0),(177,'葫芦岛市','0',9,0,'',1,0,'',NULL,0),(178,'长春市','0',10,0,'',1,0,'',NULL,0),(179,'吉林市','0',10,0,'',1,0,'',NULL,0),(180,'四平市','0',10,0,'',1,0,'',NULL,0),(181,'辽源市','0',10,0,'',1,0,'',NULL,0),(182,'通化市','0',10,0,'',1,0,'',NULL,0),(183,'白山市','0',10,0,'',1,0,'',NULL,0),(184,'松原市','0',10,0,'',1,0,'',NULL,0),(185,'白城市','0',10,0,'',1,0,'',NULL,0),(186,'延边','0',10,0,'',1,0,'',NULL,0),(187,'哈尔滨市','0',11,0,'',1,0,'',NULL,0),(188,'齐齐哈尔市','0',11,0,'',1,0,'',NULL,0),(189,'鸡西市','0',11,0,'',1,0,'',NULL,0),(190,'鹤岗市','0',11,0,'',1,0,'',NULL,0),(191,'双鸭山市','0',11,0,'',1,0,'',NULL,0),(192,'大庆市','0',11,0,'',1,0,'',NULL,0),(193,'伊春市','0',11,0,'',1,0,'',NULL,0),(194,'佳木斯市','0',11,0,'',1,0,'',NULL,0),(195,'七台河市','0',11,0,'',1,0,'',NULL,0),(196,'牡丹江市','0',11,0,'',1,0,'',NULL,0),(197,'黑河市','0',11,0,'',1,0,'',NULL,0),(198,'绥化市','0',11,0,'',1,0,'',NULL,0),(199,'大兴安岭地区','0',11,0,'',1,0,'',NULL,0),(200,'南京市','0',12,0,'',1,0,'',NULL,0),(201,'无锡市','0',12,0,'',1,0,'',NULL,0),(202,'徐州市','0',12,0,'',1,0,'',NULL,0),(203,'常州市','0',12,0,'',1,0,'',NULL,0),(204,'苏州市','0',12,0,'',1,0,'',NULL,0),(205,'南通市','0',12,0,'',1,0,'',NULL,0),(206,'连云港市','0',12,0,'',1,0,'',NULL,0),(207,'淮安市','0',12,0,'',1,0,'',NULL,0),(208,'盐城市','0',12,0,'',1,0,'',NULL,0),(209,'扬州市','0',12,0,'',1,0,'',NULL,0),(210,'镇江市','0',12,0,'',1,0,'',NULL,0),(211,'泰州市','0',12,0,'',1,0,'',NULL,0),(212,'宿迁市','0',12,0,'',1,0,'',NULL,0),(213,'杭州市','0',13,0,'',1,0,'',NULL,0),(214,'宁波市','0',13,0,'',1,0,'',NULL,0),(215,'温州市','0',13,0,'',1,0,'',NULL,0),(216,'嘉兴市','0',13,0,'',1,0,'',NULL,0),(217,'湖州市','0',13,0,'',1,0,'',NULL,0),(218,'绍兴市','0',13,0,'',1,0,'',NULL,0),(219,'金华市','0',13,0,'',1,0,'',NULL,0),(220,'衢州市','0',13,0,'',1,0,'',NULL,0),(221,'舟山市','0',13,0,'',1,0,'',NULL,0),(222,'台州市','0',13,0,'',1,0,'',NULL,0),(223,'丽水市','0',13,0,'',1,0,'',NULL,0),(224,'合肥市','0',14,0,'',1,0,'',NULL,0),(225,'芜湖市','0',14,0,'',1,0,'',NULL,0),(226,'蚌埠市','0',14,0,'',1,0,'',NULL,0),(227,'淮南市','0',14,0,'',1,0,'',NULL,0),(228,'马鞍山市','0',14,0,'',1,0,'',NULL,0),(229,'淮北市','0',14,0,'',1,0,'',NULL,0),(230,'铜陵市','0',14,0,'',1,0,'',NULL,0),(231,'安庆市','0',14,0,'',1,0,'',NULL,0),(232,'黄山市','0',14,0,'',1,0,'',NULL,0),(233,'滁州市','0',14,0,'',1,0,'',NULL,0),(234,'阜阳市','0',14,0,'',1,0,'',NULL,0),(235,'宿州市','0',14,0,'',1,0,'',NULL,0),(236,'巢湖市','0',14,0,'',1,0,'',NULL,0),(237,'六安市','0',14,0,'',1,0,'',NULL,0),(238,'亳州市','0',14,0,'',1,0,'',NULL,0),(239,'池州市','0',14,0,'',1,0,'',NULL,0),(240,'宣城市','0',14,0,'',1,0,'',NULL,0),(241,'福州市','0',15,0,'',1,0,'',NULL,0),(242,'厦门市','0',15,0,'',1,0,'',NULL,0),(243,'莆田市','0',15,0,'',1,0,'',NULL,0),(244,'三明市','0',15,0,'',1,0,'',NULL,0),(245,'泉州市','0',15,0,'',1,0,'',NULL,0),(246,'漳州市','0',15,0,'',1,0,'',NULL,0),(247,'南平市','0',15,0,'',1,0,'',NULL,0),(248,'龙岩市','0',15,0,'',1,0,'',NULL,0),(249,'宁德市','0',15,0,'',1,0,'',NULL,0),(250,'南昌市','0',16,0,'',1,0,'',NULL,0),(251,'景德镇市','0',16,0,'',1,0,'',NULL,0),(252,'萍乡市','0',16,0,'',1,0,'',NULL,0),(253,'九江市','0',16,0,'',1,0,'',NULL,0),(254,'新余市','0',16,0,'',1,0,'',NULL,0),(255,'鹰潭市','0',16,0,'',1,0,'',NULL,0),(256,'赣州市','0',16,0,'',1,0,'',NULL,0),(257,'吉安市','0',16,0,'',1,0,'',NULL,0),(258,'宜春市','0',16,0,'',1,0,'',NULL,0),(259,'抚州市','0',16,0,'',1,0,'',NULL,0),(260,'上饶市','0',16,0,'',1,0,'',NULL,0),(261,'济南市','0',17,0,'',1,0,'',NULL,0),(262,'青岛市','0',17,0,'',1,0,'',NULL,0),(263,'淄博市','0',17,0,'',1,0,'',NULL,0),(264,'枣庄市','0',17,0,'',1,0,'',NULL,0),(265,'东营市','0',17,0,'',1,0,'',NULL,0),(266,'烟台市','0',17,0,'',1,0,'',NULL,0),(267,'潍坊市','0',17,0,'',1,0,'',NULL,0),(268,'济宁市','0',17,0,'',1,0,'',NULL,0),(269,'泰安市','0',17,0,'',1,0,'',NULL,0),(270,'威海市','0',17,0,'',1,0,'',NULL,0),(271,'日照市','0',17,0,'',1,0,'',NULL,0),(272,'莱芜市','0',17,0,'',1,0,'',NULL,0),(273,'临沂市','0',17,0,'',1,0,'',NULL,0),(274,'德州市','0',17,0,'',1,0,'',NULL,0),(275,'聊城市','0',17,0,'',1,0,'',NULL,0),(276,'滨州市','0',17,0,'',1,0,'',NULL,0),(277,'荷泽市','0',17,0,'',1,0,'',NULL,0),(278,'郑州市','0',18,0,'',1,0,'',NULL,0),(279,'开封市','0',18,0,'',1,0,'',NULL,0),(280,'洛阳市','0',18,0,'',1,0,'',NULL,0),(281,'平顶山市','0',18,0,'',1,0,'',NULL,0),(282,'安阳市','0',18,0,'',1,0,'',NULL,0),(283,'鹤壁市','0',18,0,'',1,0,'',NULL,0),(284,'新乡市','0',18,0,'',1,0,'',NULL,0),(285,'焦作市','0',18,0,'',1,0,'',NULL,0),(286,'濮阳市','0',18,0,'',1,0,'',NULL,0),(287,'许昌市','0',18,0,'',1,0,'',NULL,0),(288,'漯河市','0',18,0,'',1,0,'',NULL,0),(289,'三门峡市','0',18,0,'',1,0,'',NULL,0),(290,'南阳市','0',18,0,'',1,0,'',NULL,0),(291,'商丘市','0',18,0,'',1,0,'',NULL,0),(292,'信阳市','0',18,0,'',1,0,'',NULL,0),(293,'周口市','0',18,0,'',1,0,'',NULL,0),(294,'驻马店市','0',18,0,'',1,0,'',NULL,0),(295,'武汉市','0',19,0,'',1,0,'',NULL,0),(296,'黄石市','0',19,0,'',1,0,'',NULL,0),(297,'十堰市','0',19,0,'',1,0,'',NULL,0),(298,'宜昌市','0',19,0,'',1,0,'',NULL,0),(299,'襄樊市','0',19,0,'',1,0,'',NULL,0),(300,'鄂州市','0',19,0,'',1,0,'',NULL,0),(301,'荆门市','0',19,0,'',1,0,'',NULL,0),(302,'孝感市','0',19,0,'',1,0,'',NULL,0),(303,'荆州市','0',19,0,'',1,0,'',NULL,0),(304,'黄冈市','0',19,0,'',1,0,'',NULL,0),(305,'咸宁市','0',19,0,'',1,0,'',NULL,0),(306,'随州市','0',19,0,'',1,0,'',NULL,0),(307,'恩施土家族苗族自治州','0',19,0,'',1,0,'',NULL,0),(308,'仙桃市','0',19,0,'',1,0,'',NULL,0),(309,'潜江市','0',19,0,'',1,0,'',NULL,0),(310,'天门市','0',19,0,'',1,0,'',NULL,0),(311,'神农架林区','0',19,0,'',1,0,'',NULL,0),(312,'长沙市','0',20,0,'',1,0,'',NULL,0),(313,'株洲市','0',20,0,'',1,0,'',NULL,0),(314,'湘潭市','0',20,0,'',1,0,'',NULL,0),(315,'衡阳市','0',20,0,'',1,0,'',NULL,0),(316,'邵阳市','0',20,0,'',1,0,'',NULL,0),(317,'岳阳市','0',20,0,'',1,0,'',NULL,0),(318,'常德市','0',20,0,'',1,0,'',NULL,0),(319,'张家界市','0',20,0,'',1,0,'',NULL,0),(320,'益阳市','0',20,0,'',1,0,'',NULL,0),(321,'郴州市','0',20,0,'',1,0,'',NULL,0),(322,'永州市','0',20,0,'',1,0,'',NULL,0),(323,'怀化市','0',20,0,'',1,0,'',NULL,0),(324,'娄底市','0',20,0,'',1,0,'',NULL,0),(325,'湘西土家族苗族自治州','0',20,0,'',1,0,'',NULL,0),(326,'广州市','0',21,0,'',1,0,'',NULL,0),(327,'韶关市','0',21,0,'',1,0,'',NULL,0),(328,'深圳市','0',21,0,'',1,0,'',NULL,0),(329,'珠海市','0',21,0,'',1,0,'',NULL,0),(330,'汕头市','0',21,0,'',1,0,'',NULL,0),(331,'佛山市','0',21,0,'',1,0,'',NULL,0),(332,'江门市','0',21,0,'',1,0,'',NULL,0),(333,'湛江市','0',21,0,'',1,0,'',NULL,0),(334,'茂名市','0',21,0,'',1,0,'',NULL,0),(335,'肇庆市','0',21,0,'',1,0,'',NULL,0),(336,'惠州市','0',21,0,'',1,0,'',NULL,0),(337,'梅州市','0',21,0,'',1,0,'',NULL,0),(338,'汕尾市','0',21,0,'',1,0,'',NULL,0),(339,'河源市','0',21,0,'',1,0,'',NULL,0),(340,'阳江市','0',21,0,'',1,0,'',NULL,0),(341,'清远市','0',21,0,'',1,0,'',NULL,0),(342,'东莞市','0',21,0,'',1,0,'',NULL,0),(343,'中山市','0',21,0,'',1,0,'',NULL,0),(344,'潮州市','0',21,0,'',1,0,'',NULL,0),(345,'揭阳市','0',21,0,'',1,0,'',NULL,0),(346,'云浮市','0',21,0,'',1,0,'',NULL,0),(347,'南宁市','0',22,0,'',1,0,'',NULL,0),(348,'柳州市','0',22,0,'',1,0,'',NULL,0),(349,'桂林市','0',22,0,'',1,0,'',NULL,0),(350,'梧州市','0',22,0,'',1,0,'',NULL,0),(351,'北海市','0',22,0,'',1,0,'',NULL,0),(352,'防城港市','0',22,0,'',1,0,'',NULL,0),(353,'钦州市','0',22,0,'',1,0,'',NULL,0),(354,'贵港市','0',22,0,'',1,0,'',NULL,0),(355,'玉林市','0',22,0,'',1,0,'',NULL,0),(356,'百色市','0',22,0,'',1,0,'',NULL,0),(357,'贺州市','0',22,0,'',1,0,'',NULL,0),(358,'河池市','0',22,0,'',1,0,'',NULL,0),(359,'来宾市','0',22,0,'',1,0,'',NULL,0),(360,'崇左市','0',22,0,'',1,0,'',NULL,0),(361,'海口市','0',23,0,'',1,0,'',NULL,0),(362,'三亚市','0',23,0,'',1,0,'',NULL,0),(363,'五指山市','0',23,0,'',1,0,'',NULL,0),(364,'琼海市','0',23,0,'',1,0,'',NULL,0),(365,'儋州市','0',23,0,'',1,0,'',NULL,0),(366,'文昌市','0',23,0,'',1,0,'',NULL,0),(367,'万宁市','0',23,0,'',1,0,'',NULL,0),(368,'东方市','0',23,0,'',1,0,'',NULL,0),(369,'定安县','0',23,0,'',1,0,'',NULL,0),(370,'屯昌县','0',23,0,'',1,0,'',NULL,0),(371,'澄迈县','0',23,0,'',1,0,'',NULL,0),(372,'临高县','0',23,0,'',1,0,'',NULL,0),(373,'白沙黎族自治县','0',23,0,'',1,0,'',NULL,0),(374,'昌江黎族自治县','0',23,0,'',1,0,'',NULL,0),(375,'乐东黎族自治县','0',23,0,'',1,0,'',NULL,0),(376,'陵水黎族自治县','0',23,0,'',1,0,'',NULL,0),(377,'保亭黎族苗族自治县','0',23,0,'',1,0,'',NULL,0),(378,'琼中黎族苗族自治县','0',23,0,'',1,0,'',NULL,0),(379,'西沙群岛','0',23,0,'',1,0,'',NULL,0),(380,'南沙群岛','0',23,0,'',1,0,'',NULL,0),(381,'中沙群岛的岛礁及其海域','0',23,0,'',1,0,'',NULL,0),(382,'成都市','0',24,0,'',1,0,'',NULL,0),(383,'自贡市','0',24,0,'',1,0,'',NULL,0),(384,'攀枝花市','0',24,0,'',1,0,'',NULL,0),(385,'泸州市','0',24,0,'',1,0,'',NULL,0),(386,'德阳市','0',24,0,'',1,0,'',NULL,0),(387,'绵阳市','0',24,0,'',1,0,'',NULL,0),(388,'广元市','0',24,0,'',1,0,'',NULL,0),(389,'遂宁市','0',24,0,'',1,0,'',NULL,0),(390,'内江市','0',24,0,'',1,0,'',NULL,0),(391,'乐山市','0',24,0,'',1,0,'',NULL,0),(392,'南充市','0',24,0,'',1,0,'',NULL,0),(393,'眉山市','0',24,0,'',1,0,'',NULL,0),(394,'宜宾市','0',24,0,'',1,0,'',NULL,0),(395,'广安市','0',24,0,'',1,0,'',NULL,0),(396,'达州市','0',24,0,'',1,0,'',NULL,0),(397,'雅安市','0',24,0,'',1,0,'',NULL,0),(398,'巴中市','0',24,0,'',1,0,'',NULL,0),(399,'资阳市','0',24,0,'',1,0,'',NULL,0),(400,'阿坝州','0',24,0,'',1,0,'',NULL,0),(401,'甘孜州','0',24,0,'',1,0,'',NULL,0),(402,'凉山州','0',24,0,'',1,0,'',NULL,0),(403,'贵阳市','0',25,0,'',1,0,'',NULL,0),(404,'六盘水市','0',25,0,'',1,0,'',NULL,0),(405,'遵义市','0',25,0,'',1,0,'',NULL,0),(406,'安顺市','0',25,0,'',1,0,'',NULL,0),(407,'铜仁地区','0',25,0,'',1,0,'',NULL,0),(408,'黔西南州','0',25,0,'',1,0,'',NULL,0),(409,'毕节地区','0',25,0,'',1,0,'',NULL,0),(410,'黔东南州','0',25,0,'',1,0,'',NULL,0),(411,'黔南州','0',25,0,'',1,0,'',NULL,0),(412,'昆明市','0',26,0,'',1,0,'',NULL,0),(413,'曲靖市','0',26,0,'',1,0,'',NULL,0),(414,'玉溪市','0',26,0,'',1,0,'',NULL,0),(415,'保山市','0',26,0,'',1,0,'',NULL,0),(416,'昭通市','0',26,0,'',1,0,'',NULL,0),(417,'丽江市','0',26,0,'',1,0,'',NULL,0),(418,'思茅市','0',26,0,'',1,0,'',NULL,0),(419,'临沧市','0',26,0,'',1,0,'',NULL,0),(420,'楚雄州','0',26,0,'',1,0,'',NULL,0),(421,'红河州','0',26,0,'',1,0,'',NULL,0),(422,'文山州','0',26,0,'',1,0,'',NULL,0),(423,'西双版纳','0',26,0,'',1,0,'',NULL,0),(424,'大理','0',26,0,'',1,0,'',NULL,0),(425,'德宏','0',26,0,'',1,0,'',NULL,0),(426,'怒江','0',26,0,'',1,0,'',NULL,0),(427,'迪庆','0',26,0,'',1,0,'',NULL,0),(428,'拉萨市','0',27,0,'',1,0,'',NULL,0),(429,'昌都','0',27,0,'',1,0,'',NULL,0),(430,'山南','0',27,0,'',1,0,'',NULL,0),(431,'日喀则','0',27,0,'',1,0,'',NULL,0),(432,'那曲','0',27,0,'',1,0,'',NULL,0),(433,'阿里','0',27,0,'',1,0,'',NULL,0),(434,'林芝','0',27,0,'',1,0,'',NULL,0),(435,'西安市','0',28,0,'',1,0,'',NULL,0),(436,'铜川市','0',28,0,'',1,0,'',NULL,0),(437,'宝鸡市','0',28,0,'',1,0,'',NULL,0),(438,'咸阳市','0',28,0,'',1,0,'',NULL,0),(439,'渭南市','0',28,0,'',1,0,'',NULL,0),(440,'延安市','0',28,0,'',1,0,'',NULL,0),(441,'汉中市','0',28,0,'',1,0,'',NULL,0),(442,'榆林市','0',28,0,'',1,0,'',NULL,0),(443,'安康市','0',28,0,'',1,0,'',NULL,0),(444,'商洛市','0',28,0,'',1,0,'',NULL,0),(445,'兰州市','0',29,0,'',1,0,'',NULL,0),(446,'嘉峪关市','0',29,0,'',1,0,'',NULL,0),(447,'金昌市','0',29,0,'',1,0,'',NULL,0),(448,'白银市','0',29,0,'',1,0,'',NULL,0),(449,'天水市','0',29,0,'',1,0,'',NULL,0),(450,'武威市','0',29,0,'',1,0,'',NULL,0),(451,'张掖市','0',29,0,'',1,0,'',NULL,0),(452,'平凉市','0',29,0,'',1,0,'',NULL,0),(453,'酒泉市','0',29,0,'',1,0,'',NULL,0),(454,'庆阳市','0',29,0,'',1,0,'',NULL,0),(455,'定西市','0',29,0,'',1,0,'',NULL,0),(456,'陇南市','0',29,0,'',1,0,'',NULL,0),(457,'临夏州','0',29,0,'',1,0,'',NULL,0),(458,'甘州','0',29,0,'',1,0,'',NULL,0),(459,'西宁市','0',30,0,'',1,0,'',NULL,0),(460,'海东地区','0',30,0,'',1,0,'',NULL,0),(461,'海州','0',30,0,'',1,0,'',NULL,0),(462,'黄南州','0',30,0,'',1,0,'',NULL,0),(463,'海南州','0',30,0,'',1,0,'',NULL,0),(464,'果洛州','0',30,0,'',1,0,'',NULL,0),(465,'玉树州','0',30,0,'',1,0,'',NULL,0),(466,'海西州','0',30,0,'',1,0,'',NULL,0),(467,'银川市','0',31,0,'',1,0,'',NULL,0),(468,'石嘴山市','0',31,0,'',1,0,'',NULL,0),(469,'吴忠市','0',31,0,'',1,0,'',NULL,0),(470,'固原市','0',31,0,'',1,0,'',NULL,0),(471,'中卫市','0',31,0,'',1,0,'',NULL,0),(472,'乌鲁木齐市','0',32,0,'',1,0,'',NULL,0),(473,'克拉玛依市','0',32,0,'',1,0,'',NULL,0),(474,'吐鲁番地区','0',32,0,'',1,0,'',NULL,0),(475,'哈密地区','0',32,0,'',1,0,'',NULL,0),(476,'昌吉州','0',32,0,'',1,0,'',NULL,0),(477,'博尔州','0',32,0,'',1,0,'',NULL,0),(478,'巴音郭楞州','0',32,0,'',1,0,'',NULL,0),(479,'阿克苏地区','0',32,0,'',1,0,'',NULL,0),(480,'克孜勒苏柯尔克孜自治州','0',32,0,'',1,0,'',NULL,0),(481,'喀什地区','0',32,0,'',1,0,'',NULL,0),(482,'和田地区','0',32,0,'',1,0,'',NULL,0),(483,'伊犁州','0',32,0,'',1,0,'',NULL,0),(484,'塔城地区','0',32,0,'',1,0,'',NULL,0),(485,'阿勒泰地区','0',32,0,'',1,0,'',NULL,0),(486,'石河子市','0',32,0,'',1,0,'',NULL,0),(487,'阿拉尔市','0',32,0,'',1,0,'',NULL,0),(488,'图木舒克市','0',32,0,'',1,0,'',NULL,0),(489,'五家渠市','0',32,0,'',1,0,'',NULL,0),(490,'台北市','0',33,0,'',1,0,'',NULL,0),(491,'高雄市','0',33,0,'',1,0,'',NULL,0),(492,'基隆市','0',33,0,'',1,0,'',NULL,0),(493,'新竹市','0',33,0,'',1,0,'',NULL,0),(494,'台中市','0',33,0,'',1,0,'',NULL,0),(495,'嘉义市','0',33,0,'',1,0,'',NULL,0),(496,'台南市','0',33,0,'',1,0,'',NULL,0),(497,'台北县','0',33,0,'',1,0,'',NULL,0),(498,'桃园县','0',33,0,'',1,0,'',NULL,0),(499,'新竹县','0',33,0,'',1,0,'',NULL,0),(500,'苗栗县','0',33,0,'',1,0,'',NULL,0),(501,'台中县','0',33,0,'',1,0,'',NULL,0),(502,'彰化县','0',33,0,'',1,0,'',NULL,0),(503,'南投县','0',33,0,'',1,0,'',NULL,0),(504,'云林县','0',33,0,'',1,0,'',NULL,0),(505,'嘉义县','0',33,0,'',1,0,'',NULL,0),(506,'台南县','0',33,0,'',1,0,'',NULL,0),(507,'高雄县','0',33,0,'',1,0,'',NULL,0),(508,'屏东县','0',33,0,'',1,0,'',NULL,0),(509,'宜兰县','0',33,0,'',1,0,'',NULL,0),(510,'花莲县','0',33,0,'',1,0,'',NULL,0),(511,'台东县','0',33,0,'',1,0,'',NULL,0),(512,'澎湖县','0',33,0,'',1,0,'',NULL,0),(513,'金门县','0',33,0,'',1,0,'',NULL,0),(514,'连江县','0',33,0,'',1,0,'',NULL,0),(515,'中西区','0',34,0,'',1,0,'',NULL,0),(516,'东区','0',34,0,'',1,0,'',NULL,0),(517,'南区','0',34,0,'',1,0,'',NULL,0),(518,'湾仔区','0',34,0,'',1,0,'',NULL,0),(519,'九龙城区','0',34,0,'',1,0,'',NULL,0),(520,'观塘区','0',34,0,'',1,0,'',NULL,0),(521,'深水埗区','0',34,0,'',1,0,'',NULL,0),(522,'黄大仙区','0',34,0,'',1,0,'',NULL,0),(523,'油尖旺区','0',34,0,'',1,0,'',NULL,0),(524,'离岛区','0',34,0,'',1,0,'',NULL,0),(525,'葵青区','0',34,0,'',1,0,'',NULL,0),(526,'北区','0',34,0,'',1,0,'',NULL,0),(527,'西贡区','0',34,0,'',1,0,'',NULL,0),(528,'沙田区','0',34,0,'',1,0,'',NULL,0),(529,'大埔区','0',34,0,'',1,0,'',NULL,0),(530,'荃湾区','0',34,0,'',1,0,'',NULL,0),(531,'屯门区','0',34,0,'',1,0,'',NULL,0),(532,'元朗区','0',34,0,'',1,0,'',NULL,0),(533,'花地玛堂区','0',35,0,'',1,0,'',NULL,0),(534,'市圣安多尼堂区','0',35,0,'',1,0,'',NULL,0),(535,'大堂区','0',35,0,'',1,0,'',NULL,0),(536,'望德堂区','0',35,0,'',1,0,'',NULL,0),(537,'风顺堂区','0',35,0,'',1,0,'',NULL,0),(538,'嘉模堂区','0',35,0,'',1,0,'',NULL,0),(539,'圣方济各堂区','0',35,0,'',1,0,'',NULL,0),(540,'长安区','0',130,0,'',1,0,'',NULL,0),(541,'桥东区','0',130,0,'',1,0,'',NULL,0),(542,'桥西区','0',130,0,'',1,0,'',NULL,0),(543,'新华区','0',130,0,'',1,0,'',NULL,0),(544,'井陉矿区','0',130,0,'',1,0,'',NULL,0),(545,'裕华区','0',130,0,'',1,0,'',NULL,0),(546,'井陉县','0',130,0,'',1,0,'',NULL,0),(547,'正定县','0',130,0,'',1,0,'',NULL,0),(548,'栾城县','0',130,0,'',1,0,'',NULL,0),(549,'行唐县','0',130,0,'',1,0,'',NULL,0),(550,'灵寿县','0',130,0,'',1,0,'',NULL,0),(551,'高邑县','0',130,0,'',1,0,'',NULL,0),(552,'深泽县','0',130,0,'',1,0,'',NULL,0),(553,'赞皇县','0',130,0,'',1,0,'',NULL,0),(554,'无极县','0',130,0,'',1,0,'',NULL,0),(555,'平山县','0',130,0,'',1,0,'',NULL,0),(556,'元氏县','0',130,0,'',1,0,'',NULL,0),(557,'赵县','0',130,0,'',1,0,'',NULL,0),(558,'辛集市','0',130,0,'',1,0,'',NULL,0),(559,'藁城市','0',130,0,'',1,0,'',NULL,0),(560,'晋州市','0',130,0,'',1,0,'',NULL,0),(561,'新乐市','0',130,0,'',1,0,'',NULL,0),(562,'鹿泉市','0',130,0,'',1,0,'',NULL,0),(563,'路南区','0',131,0,'',1,0,'',NULL,0),(564,'路北区','0',131,0,'',1,0,'',NULL,0),(565,'古冶区','0',131,0,'',1,0,'',NULL,0),(566,'开平区','0',131,0,'',1,0,'',NULL,0),(567,'丰南区','0',131,0,'',1,0,'',NULL,0),(568,'丰润区','0',131,0,'',1,0,'',NULL,0),(569,'滦县','0',131,0,'',1,0,'',NULL,0),(570,'滦南县','0',131,0,'',1,0,'',NULL,0),(571,'乐亭县','0',131,0,'',1,0,'',NULL,0),(572,'迁西县','0',131,0,'',1,0,'',NULL,0),(573,'玉田县','0',131,0,'',1,0,'',NULL,0),(574,'唐海县','0',131,0,'',1,0,'',NULL,0),(575,'遵化市','0',131,0,'',1,0,'',NULL,0),(576,'迁安市','0',131,0,'',1,0,'',NULL,0),(577,'海港区','0',132,0,'',1,0,'',NULL,0),(578,'山海关区','0',132,0,'',1,0,'',NULL,0),(579,'北戴河区','0',132,0,'',1,0,'',NULL,0),(580,'青龙县','0',132,0,'',1,0,'',NULL,0),(581,'昌黎县','0',132,0,'',1,0,'',NULL,0),(582,'抚宁县','0',132,0,'',1,0,'',NULL,0),(583,'卢龙县','0',132,0,'',1,0,'',NULL,0),(584,'邯山区','0',133,0,'',1,0,'',NULL,0),(585,'丛台区','0',133,0,'',1,0,'',NULL,0),(586,'复兴区','0',133,0,'',1,0,'',NULL,0),(587,'峰峰矿区','0',133,0,'',1,0,'',NULL,0),(588,'邯郸县','0',133,0,'',1,0,'',NULL,0),(589,'临漳县','0',133,0,'',1,0,'',NULL,0),(590,'成安县','0',133,0,'',1,0,'',NULL,0),(591,'大名县','0',133,0,'',1,0,'',NULL,0),(592,'涉县','0',133,0,'',1,0,'',NULL,0),(593,'磁县','0',133,0,'',1,0,'',NULL,0),(594,'肥乡县','0',133,0,'',1,0,'',NULL,0),(595,'永年县','0',133,0,'',1,0,'',NULL,0),(596,'邱县','0',133,0,'',1,0,'',NULL,0),(597,'鸡泽县','0',133,0,'',1,0,'',NULL,0),(598,'广平县','0',133,0,'',1,0,'',NULL,0),(599,'馆陶县','0',133,0,'',1,0,'',NULL,0),(600,'魏县','0',133,0,'',1,0,'',NULL,0),(601,'曲周县','0',133,0,'',1,0,'',NULL,0),(602,'武安市','0',133,0,'',1,0,'',NULL,0),(603,'桥东区','0',134,0,'',1,0,'',NULL,0),(604,'桥西区','0',134,0,'',1,0,'',NULL,0),(605,'邢台县','0',134,0,'',1,0,'',NULL,0),(606,'临城县','0',134,0,'',1,0,'',NULL,0),(607,'内丘县','0',134,0,'',1,0,'',NULL,0),(608,'柏乡县','0',134,0,'',1,0,'',NULL,0),(609,'隆尧县','0',134,0,'',1,0,'',NULL,0),(610,'任县','0',134,0,'',1,0,'',NULL,0),(611,'南和县','0',134,0,'',1,0,'',NULL,0),(612,'宁晋县','0',134,0,'',1,0,'',NULL,0),(613,'巨鹿县','0',134,0,'',1,0,'',NULL,0),(614,'新河县','0',134,0,'',1,0,'',NULL,0),(615,'广宗县','0',134,0,'',1,0,'',NULL,0),(616,'平乡县','0',134,0,'',1,0,'',NULL,0),(617,'威县','0',134,0,'',1,0,'',NULL,0),(618,'清河县','0',134,0,'',1,0,'',NULL,0),(619,'临西县','0',134,0,'',1,0,'',NULL,0),(620,'南宫市','0',134,0,'',1,0,'',NULL,0),(621,'沙河市','0',134,0,'',1,0,'',NULL,0),(622,'新市区','0',135,0,'',1,0,'',NULL,0),(623,'北市区','0',135,0,'',1,0,'',NULL,0),(624,'南市区','0',135,0,'',1,0,'',NULL,0),(625,'满城县','0',135,0,'',1,0,'',NULL,0),(626,'清苑县','0',135,0,'',1,0,'',NULL,0),(627,'涞水县','0',135,0,'',1,0,'',NULL,0),(628,'阜平县','0',135,0,'',1,0,'',NULL,0),(629,'徐水县','0',135,0,'',1,0,'',NULL,0),(630,'定兴县','0',135,0,'',1,0,'',NULL,0),(631,'唐县','0',135,0,'',1,0,'',NULL,0),(632,'高阳县','0',135,0,'',1,0,'',NULL,0),(633,'容城县','0',135,0,'',1,0,'',NULL,0),(634,'涞源县','0',135,0,'',1,0,'',NULL,0),(635,'望都县','0',135,0,'',1,0,'',NULL,0),(636,'安新县','0',135,0,'',1,0,'',NULL,0),(637,'易县','0',135,0,'',1,0,'',NULL,0),(638,'曲阳县','0',135,0,'',1,0,'',NULL,0),(639,'蠡县','0',135,0,'',1,0,'',NULL,0),(640,'顺平县','0',135,0,'',1,0,'',NULL,0),(641,'博野县','0',135,0,'',1,0,'',NULL,0),(642,'雄县','0',135,0,'',1,0,'',NULL,0),(643,'涿州市','0',135,0,'',1,0,'',NULL,0),(644,'定州市','0',135,0,'',1,0,'',NULL,0),(645,'安国市','0',135,0,'',1,0,'',NULL,0),(646,'高碑店市','0',135,0,'',1,0,'',NULL,0),(647,'桥东区','0',136,0,'',1,0,'',NULL,0),(648,'桥西区','0',136,0,'',1,0,'',NULL,0),(649,'宣化区','0',136,0,'',1,0,'',NULL,0),(650,'下花园区','0',136,0,'',1,0,'',NULL,0),(651,'宣化县','0',136,0,'',1,0,'',NULL,0),(652,'张北县','0',136,0,'',1,0,'',NULL,0),(653,'康保县','0',136,0,'',1,0,'',NULL,0),(654,'沽源县','0',136,0,'',1,0,'',NULL,0),(655,'尚义县','0',136,0,'',1,0,'',NULL,0),(656,'蔚县','0',136,0,'',1,0,'',NULL,0),(657,'阳原县','0',136,0,'',1,0,'',NULL,0),(658,'怀安县','0',136,0,'',1,0,'',NULL,0),(659,'万全县','0',136,0,'',1,0,'',NULL,0),(660,'怀来县','0',136,0,'',1,0,'',NULL,0),(661,'涿鹿县','0',136,0,'',1,0,'',NULL,0),(662,'赤城县','0',136,0,'',1,0,'',NULL,0),(663,'崇礼县','0',136,0,'',1,0,'',NULL,0),(664,'双桥区','0',137,0,'',1,0,'',NULL,0),(665,'双滦区','0',137,0,'',1,0,'',NULL,0),(666,'鹰手营子矿区','0',137,0,'',1,0,'',NULL,0),(667,'承德县','0',137,0,'',1,0,'',NULL,0),(668,'兴隆县','0',137,0,'',1,0,'',NULL,0),(669,'平泉县','0',137,0,'',1,0,'',NULL,0),(670,'滦平县','0',137,0,'',1,0,'',NULL,0),(671,'隆化县','0',137,0,'',1,0,'',NULL,0),(672,'丰宁县','0',137,0,'',1,0,'',NULL,0),(673,'宽城县','0',137,0,'',1,0,'',NULL,0),(674,'围场县','0',137,0,'',1,0,'',NULL,0),(675,'新华区','0',138,0,'',1,0,'',NULL,0),(676,'运河区','0',138,0,'',1,0,'',NULL,0),(677,'沧县','0',138,0,'',1,0,'',NULL,0),(678,'青县','0',138,0,'',1,0,'',NULL,0),(679,'东光县','0',138,0,'',1,0,'',NULL,0),(680,'海兴县','0',138,0,'',1,0,'',NULL,0),(681,'盐山县','0',138,0,'',1,0,'',NULL,0),(682,'肃宁县','0',138,0,'',1,0,'',NULL,0),(683,'南皮县','0',138,0,'',1,0,'',NULL,0),(684,'吴桥县','0',138,0,'',1,0,'',NULL,0),(685,'献县','0',138,0,'',1,0,'',NULL,0),(686,'孟村县','0',138,0,'',1,0,'',NULL,0),(687,'泊头市','0',138,0,'',1,0,'',NULL,0),(688,'任丘市','0',138,0,'',1,0,'',NULL,0),(689,'黄骅市','0',138,0,'',1,0,'',NULL,0),(690,'河间市','0',138,0,'',1,0,'',NULL,0),(691,'安次区','0',139,0,'',1,0,'',NULL,0),(692,'广阳区','0',139,0,'',1,0,'',NULL,0),(693,'固安县','0',139,0,'',1,0,'',NULL,0),(694,'永清县','0',139,0,'',1,0,'',NULL,0),(695,'香河县','0',139,0,'',1,0,'',NULL,0),(696,'大城县','0',139,0,'',1,0,'',NULL,0),(697,'文安县','0',139,0,'',1,0,'',NULL,0),(698,'大厂县','0',139,0,'',1,0,'',NULL,0),(699,'霸州市','0',139,0,'',1,0,'',NULL,0),(700,'三河市','0',139,0,'',1,0,'',NULL,0),(701,'桃城区','0',140,0,'',1,0,'',NULL,0),(702,'枣强县','0',140,0,'',1,0,'',NULL,0),(703,'武邑县','0',140,0,'',1,0,'',NULL,0),(704,'武强县','0',140,0,'',1,0,'',NULL,0),(705,'饶阳县','0',140,0,'',1,0,'',NULL,0),(706,'安平县','0',140,0,'',1,0,'',NULL,0),(707,'故城县','0',140,0,'',1,0,'',NULL,0),(708,'景县','0',140,0,'',1,0,'',NULL,0),(709,'阜城县','0',140,0,'',1,0,'',NULL,0),(710,'冀州市','0',140,0,'',1,0,'',NULL,0),(711,'深州市','0',140,0,'',1,0,'',NULL,0),(712,'小店区','0',141,0,'',1,0,'',NULL,0),(713,'迎泽区','0',141,0,'',1,0,'',NULL,0),(714,'杏花岭区','0',141,0,'',1,0,'',NULL,0),(715,'尖草坪区','0',141,0,'',1,0,'',NULL,0),(716,'万柏林区','0',141,0,'',1,0,'',NULL,0),(717,'晋源区','0',141,0,'',1,0,'',NULL,0),(718,'清徐县','0',141,0,'',1,0,'',NULL,0),(719,'阳曲县','0',141,0,'',1,0,'',NULL,0),(720,'娄烦县','0',141,0,'',1,0,'',NULL,0),(721,'古交市','0',141,0,'',1,0,'',NULL,0),(722,'城区','0',142,0,'',1,0,'',NULL,0),(723,'矿区','0',142,0,'',1,0,'',NULL,0),(724,'南郊区','0',142,0,'',1,0,'',NULL,0),(725,'新荣区','0',142,0,'',1,0,'',NULL,0),(726,'阳高县','0',142,0,'',1,0,'',NULL,0),(727,'天镇县','0',142,0,'',1,0,'',NULL,0),(728,'广灵县','0',142,0,'',1,0,'',NULL,0),(729,'灵丘县','0',142,0,'',1,0,'',NULL,0),(730,'浑源县','0',142,0,'',1,0,'',NULL,0),(731,'左云县','0',142,0,'',1,0,'',NULL,0),(732,'大同县','0',142,0,'',1,0,'',NULL,0),(733,'城区','0',143,0,'',1,0,'',NULL,0),(734,'矿区','0',143,0,'',1,0,'',NULL,0),(735,'郊区','0',143,0,'',1,0,'',NULL,0),(736,'平定县','0',143,0,'',1,0,'',NULL,0),(737,'盂县','0',143,0,'',1,0,'',NULL,0),(738,'城区','0',144,0,'',1,0,'',NULL,0),(739,'郊区','0',144,0,'',1,0,'',NULL,0),(740,'长治县','0',144,0,'',1,0,'',NULL,0),(741,'襄垣县','0',144,0,'',1,0,'',NULL,0),(742,'屯留县','0',144,0,'',1,0,'',NULL,0),(743,'平顺县','0',144,0,'',1,0,'',NULL,0),(744,'黎城县','0',144,0,'',1,0,'',NULL,0),(745,'壶关县','0',144,0,'',1,0,'',NULL,0),(746,'长子县','0',144,0,'',1,0,'',NULL,0),(747,'武乡县','0',144,0,'',1,0,'',NULL,0),(748,'沁县','0',144,0,'',1,0,'',NULL,0),(749,'沁源县','0',144,0,'',1,0,'',NULL,0),(750,'潞城市','0',144,0,'',1,0,'',NULL,0),(751,'城区','0',145,0,'',1,0,'',NULL,0),(752,'沁水县','0',145,0,'',1,0,'',NULL,0),(753,'阳城县','0',145,0,'',1,0,'',NULL,0),(754,'陵川县','0',145,0,'',1,0,'',NULL,0),(755,'泽州县','0',145,0,'',1,0,'',NULL,0),(756,'高平市','0',145,0,'',1,0,'',NULL,0),(757,'朔城区','0',146,0,'',1,0,'',NULL,0),(758,'平鲁区','0',146,0,'',1,0,'',NULL,0),(759,'山阴县','0',146,0,'',1,0,'',NULL,0),(760,'应县','0',146,0,'',1,0,'',NULL,0),(761,'右玉县','0',146,0,'',1,0,'',NULL,0),(762,'怀仁县','0',146,0,'',1,0,'',NULL,0),(763,'榆次区','0',147,0,'',1,0,'',NULL,0),(764,'榆社县','0',147,0,'',1,0,'',NULL,0),(765,'左权县','0',147,0,'',1,0,'',NULL,0),(766,'和顺县','0',147,0,'',1,0,'',NULL,0),(767,'昔阳县','0',147,0,'',1,0,'',NULL,0),(768,'寿阳县','0',147,0,'',1,0,'',NULL,0),(769,'太谷县','0',147,0,'',1,0,'',NULL,0),(770,'祁县','0',147,0,'',1,0,'',NULL,0),(771,'平遥县','0',147,0,'',1,0,'',NULL,0),(772,'灵石县','0',147,0,'',1,0,'',NULL,0),(773,'介休市','0',147,0,'',1,0,'',NULL,0),(774,'盐湖区','0',148,0,'',1,0,'',NULL,0),(775,'临猗县','0',148,0,'',1,0,'',NULL,0),(776,'万荣县','0',148,0,'',1,0,'',NULL,0),(777,'闻喜县','0',148,0,'',1,0,'',NULL,0),(778,'稷山县','0',148,0,'',1,0,'',NULL,0),(779,'新绛县','0',148,0,'',1,0,'',NULL,0),(780,'绛县','0',148,0,'',1,0,'',NULL,0),(781,'垣曲县','0',148,0,'',1,0,'',NULL,0),(782,'夏县','0',148,0,'',1,0,'',NULL,0),(783,'平陆县','0',148,0,'',1,0,'',NULL,0),(784,'芮城县','0',148,0,'',1,0,'',NULL,0),(785,'永济市','0',148,0,'',1,0,'',NULL,0),(786,'河津市','0',148,0,'',1,0,'',NULL,0),(787,'忻府区','0',149,0,'',1,0,'',NULL,0),(788,'定襄县','0',149,0,'',1,0,'',NULL,0),(789,'五台县','0',149,0,'',1,0,'',NULL,0),(790,'代县','0',149,0,'',1,0,'',NULL,0),(791,'繁峙县','0',149,0,'',1,0,'',NULL,0),(792,'宁武县','0',149,0,'',1,0,'',NULL,0),(793,'静乐县','0',149,0,'',1,0,'',NULL,0),(794,'神池县','0',149,0,'',1,0,'',NULL,0),(795,'五寨县','0',149,0,'',1,0,'',NULL,0),(796,'岢岚县','0',149,0,'',1,0,'',NULL,0),(797,'河曲县','0',149,0,'',1,0,'',NULL,0),(798,'保德县','0',149,0,'',1,0,'',NULL,0),(799,'偏关县','0',149,0,'',1,0,'',NULL,0),(800,'原平市','0',149,0,'',1,0,'',NULL,0),(801,'尧都区','0',150,0,'',1,0,'',NULL,0),(802,'曲沃县','0',150,0,'',1,0,'',NULL,0),(803,'翼城县','0',150,0,'',1,0,'',NULL,0),(804,'襄汾县','0',150,0,'',1,0,'',NULL,0),(805,'洪洞县','0',150,0,'',1,0,'',NULL,0),(806,'古县','0',150,0,'',1,0,'',NULL,0),(807,'安泽县','0',150,0,'',1,0,'',NULL,0),(808,'浮山县','0',150,0,'',1,0,'',NULL,0),(809,'吉县','0',150,0,'',1,0,'',NULL,0),(810,'乡宁县','0',150,0,'',1,0,'',NULL,0),(811,'大宁县','0',150,0,'',1,0,'',NULL,0),(812,'隰县','0',150,0,'',1,0,'',NULL,0),(813,'永和县','0',150,0,'',1,0,'',NULL,0),(814,'蒲县','0',150,0,'',1,0,'',NULL,0),(815,'汾西县','0',150,0,'',1,0,'',NULL,0),(816,'侯马市','0',150,0,'',1,0,'',NULL,0),(817,'霍州市','0',150,0,'',1,0,'',NULL,0),(818,'离石区','0',151,0,'',1,0,'',NULL,0),(819,'文水县','0',151,0,'',1,0,'',NULL,0),(820,'交城县','0',151,0,'',1,0,'',NULL,0),(821,'兴县','0',151,0,'',1,0,'',NULL,0),(822,'临县','0',151,0,'',1,0,'',NULL,0),(823,'柳林县','0',151,0,'',1,0,'',NULL,0),(824,'石楼县','0',151,0,'',1,0,'',NULL,0),(825,'岚县','0',151,0,'',1,0,'',NULL,0),(826,'方山县','0',151,0,'',1,0,'',NULL,0),(827,'中阳县','0',151,0,'',1,0,'',NULL,0),(828,'交口县','0',151,0,'',1,0,'',NULL,0),(829,'孝义市','0',151,0,'',1,0,'',NULL,0),(830,'汾阳市','0',151,0,'',1,0,'',NULL,0),(831,'新城区','0',152,0,'',1,0,'',NULL,0),(832,'回民区','0',152,0,'',1,0,'',NULL,0),(833,'玉泉区','0',152,0,'',1,0,'',NULL,0),(834,'赛罕区','0',152,0,'',1,0,'',NULL,0),(835,'土默特左旗','0',152,0,'',1,0,'',NULL,0),(836,'托克托县','0',152,0,'',1,0,'',NULL,0),(837,'和林格尔县','0',152,0,'',1,0,'',NULL,0),(838,'清水河县','0',152,0,'',1,0,'',NULL,0),(839,'武川县','0',152,0,'',1,0,'',NULL,0),(840,'东河区','0',153,0,'',1,0,'',NULL,0),(841,'昆都仑区','0',153,0,'',1,0,'',NULL,0),(842,'青山区','0',153,0,'',1,0,'',NULL,0),(843,'石拐区','0',153,0,'',1,0,'',NULL,0),(844,'白云矿区','0',153,0,'',1,0,'',NULL,0),(845,'九原区','0',153,0,'',1,0,'',NULL,0),(846,'土默特右旗','0',153,0,'',1,0,'',NULL,0),(847,'固阳县','0',153,0,'',1,0,'',NULL,0),(848,'达尔罕茂明安联合旗','0',153,0,'',1,0,'',NULL,0),(849,'海勃湾区','0',154,0,'',1,0,'',NULL,0),(850,'海南区','0',154,0,'',1,0,'',NULL,0),(851,'乌达区','0',154,0,'',1,0,'',NULL,0),(852,'红山区','0',155,0,'',1,0,'',NULL,0),(853,'元宝山区','0',155,0,'',1,0,'',NULL,0),(854,'松山区','0',155,0,'',1,0,'',NULL,0),(855,'阿鲁科尔沁旗','0',155,0,'',1,0,'',NULL,0),(856,'巴林左旗','0',155,0,'',1,0,'',NULL,0),(857,'巴林右旗','0',155,0,'',1,0,'',NULL,0),(858,'林西县','0',155,0,'',1,0,'',NULL,0),(859,'克什克腾旗','0',155,0,'',1,0,'',NULL,0),(860,'翁牛特旗','0',155,0,'',1,0,'',NULL,0),(861,'喀喇沁旗','0',155,0,'',1,0,'',NULL,0),(862,'宁城县','0',155,0,'',1,0,'',NULL,0),(863,'敖汉旗','0',155,0,'',1,0,'',NULL,0),(864,'科尔沁区','0',156,0,'',1,0,'',NULL,0),(865,'科尔沁左翼中旗','0',156,0,'',1,0,'',NULL,0),(866,'科尔沁左翼后旗','0',156,0,'',1,0,'',NULL,0),(867,'开鲁县','0',156,0,'',1,0,'',NULL,0),(868,'库伦旗','0',156,0,'',1,0,'',NULL,0),(869,'奈曼旗','0',156,0,'',1,0,'',NULL,0),(870,'扎鲁特旗','0',156,0,'',1,0,'',NULL,0),(871,'霍林郭勒市','0',156,0,'',1,0,'',NULL,0),(872,'东胜区','0',157,0,'',1,0,'',NULL,0),(873,'达拉特旗','0',157,0,'',1,0,'',NULL,0),(874,'准格尔旗','0',157,0,'',1,0,'',NULL,0),(875,'鄂托克前旗','0',157,0,'',1,0,'',NULL,0),(876,'鄂托克旗','0',157,0,'',1,0,'',NULL,0),(877,'杭锦旗','0',157,0,'',1,0,'',NULL,0),(878,'乌审旗','0',157,0,'',1,0,'',NULL,0),(879,'伊金霍洛旗','0',157,0,'',1,0,'',NULL,0),(880,'海拉尔区','0',158,0,'',1,0,'',NULL,0),(881,'阿荣旗','0',158,0,'',1,0,'',NULL,0),(882,'莫力达瓦达斡尔族自治旗','0',158,0,'',1,0,'',NULL,0),(883,'鄂伦春自治旗','0',158,0,'',1,0,'',NULL,0),(884,'鄂温克族自治旗','0',158,0,'',1,0,'',NULL,0),(885,'陈巴尔虎旗','0',158,0,'',1,0,'',NULL,0),(886,'新巴尔虎左旗','0',158,0,'',1,0,'',NULL,0),(887,'新巴尔虎右旗','0',158,0,'',1,0,'',NULL,0),(888,'满洲里市','0',158,0,'',1,0,'',NULL,0),(889,'牙克石市','0',158,0,'',1,0,'',NULL,0),(890,'扎兰屯市','0',158,0,'',1,0,'',NULL,0),(891,'额尔古纳市','0',158,0,'',1,0,'',NULL,0),(892,'根河市','0',158,0,'',1,0,'',NULL,0),(893,'临河区','0',159,0,'',1,0,'',NULL,0),(894,'五原县','0',159,0,'',1,0,'',NULL,0),(895,'磴口县','0',159,0,'',1,0,'',NULL,0),(896,'乌拉特前旗','0',159,0,'',1,0,'',NULL,0),(897,'乌拉特中旗','0',159,0,'',1,0,'',NULL,0),(898,'乌拉特后旗','0',159,0,'',1,0,'',NULL,0),(899,'杭锦后旗','0',159,0,'',1,0,'',NULL,0),(900,'集宁区','0',160,0,'',1,0,'',NULL,0),(901,'卓资县','0',160,0,'',1,0,'',NULL,0),(902,'化德县','0',160,0,'',1,0,'',NULL,0),(903,'商都县','0',160,0,'',1,0,'',NULL,0),(904,'兴和县','0',160,0,'',1,0,'',NULL,0),(905,'凉城县','0',160,0,'',1,0,'',NULL,0),(906,'察哈尔右翼前旗','0',160,0,'',1,0,'',NULL,0),(907,'察哈尔右翼中旗','0',160,0,'',1,0,'',NULL,0),(908,'察哈尔右翼后旗','0',160,0,'',1,0,'',NULL,0),(909,'四子王旗','0',160,0,'',1,0,'',NULL,0),(910,'丰镇市','0',160,0,'',1,0,'',NULL,0),(911,'乌兰浩特市','0',161,0,'',1,0,'',NULL,0),(912,'阿尔山市','0',161,0,'',1,0,'',NULL,0),(913,'科尔沁右翼前旗','0',161,0,'',1,0,'',NULL,0),(914,'科尔沁右翼中旗','0',161,0,'',1,0,'',NULL,0),(915,'扎赉特旗','0',161,0,'',1,0,'',NULL,0),(916,'突泉县','0',161,0,'',1,0,'',NULL,0),(917,'二连浩特市','0',162,0,'',1,0,'',NULL,0),(918,'锡林浩特市','0',162,0,'',1,0,'',NULL,0),(919,'阿巴嘎旗','0',162,0,'',1,0,'',NULL,0),(920,'苏尼特左旗','0',162,0,'',1,0,'',NULL,0),(921,'苏尼特右旗','0',162,0,'',1,0,'',NULL,0),(922,'东乌珠穆沁旗','0',162,0,'',1,0,'',NULL,0),(923,'西乌珠穆沁旗','0',162,0,'',1,0,'',NULL,0),(924,'太仆寺旗','0',162,0,'',1,0,'',NULL,0),(925,'镶黄旗','0',162,0,'',1,0,'',NULL,0),(926,'正镶白旗','0',162,0,'',1,0,'',NULL,0),(927,'正蓝旗','0',162,0,'',1,0,'',NULL,0),(928,'多伦县','0',162,0,'',1,0,'',NULL,0),(929,'阿拉善左旗','0',163,0,'',1,0,'',NULL,0),(930,'阿拉善右旗','0',163,0,'',1,0,'',NULL,0),(931,'额济纳旗','0',163,0,'',1,0,'',NULL,0),(932,'和平区','0',164,0,'',1,0,'',NULL,0),(933,'沈河区','0',164,0,'',1,0,'',NULL,0),(934,'大东区','0',164,0,'',1,0,'',NULL,0),(935,'皇姑区','0',164,0,'',1,0,'',NULL,0),(936,'铁西区','0',164,0,'',1,0,'',NULL,0),(937,'苏家屯区','0',164,0,'',1,0,'',NULL,0),(938,'东陵区','0',164,0,'',1,0,'',NULL,0),(939,'新城子区','0',164,0,'',1,0,'',NULL,0),(940,'于洪区','0',164,0,'',1,0,'',NULL,0),(941,'辽中县','0',164,0,'',1,0,'',NULL,0),(942,'康平县','0',164,0,'',1,0,'',NULL,0),(943,'法库县','0',164,0,'',1,0,'',NULL,0),(944,'新民市','0',164,0,'',1,0,'',NULL,0),(945,'中山区','0',165,0,'',1,0,'',NULL,0),(946,'西岗区','0',165,0,'',1,0,'',NULL,0),(947,'沙河口区','0',165,0,'',1,0,'',NULL,0),(948,'甘井子区','0',165,0,'',1,0,'',NULL,0),(949,'旅顺口区','0',165,0,'',1,0,'',NULL,0),(950,'金州区','0',165,0,'',1,0,'',NULL,0),(951,'长海县','0',165,0,'',1,0,'',NULL,0),(952,'瓦房店市','0',165,0,'',1,0,'',NULL,0),(953,'普兰店市','0',165,0,'',1,0,'',NULL,0),(954,'庄河市','0',165,0,'',1,0,'',NULL,0),(955,'铁东区','0',166,0,'',1,0,'',NULL,0),(956,'铁西区','0',166,0,'',1,0,'',NULL,0),(957,'立山区','0',166,0,'',1,0,'',NULL,0),(958,'千山区','0',166,0,'',1,0,'',NULL,0),(959,'台安县','0',166,0,'',1,0,'',NULL,0),(960,'岫岩满族自治县','0',166,0,'',1,0,'',NULL,0),(961,'海城市','0',166,0,'',1,0,'',NULL,0),(962,'新抚区','0',167,0,'',1,0,'',NULL,0),(963,'东洲区','0',167,0,'',1,0,'',NULL,0),(964,'望花区','0',167,0,'',1,0,'',NULL,0),(965,'顺城区','0',167,0,'',1,0,'',NULL,0),(966,'抚顺县','0',167,0,'',1,0,'',NULL,0),(967,'新宾满族自治县','0',167,0,'',1,0,'',NULL,0),(968,'清原满族自治县','0',167,0,'',1,0,'',NULL,0),(969,'平山区','0',168,0,'',1,0,'',NULL,0),(970,'溪湖区','0',168,0,'',1,0,'',NULL,0),(971,'明山区','0',168,0,'',1,0,'',NULL,0),(972,'南芬区','0',168,0,'',1,0,'',NULL,0),(973,'本溪满族自治县','0',168,0,'',1,0,'',NULL,0),(974,'桓仁满族自治县','0',168,0,'',1,0,'',NULL,0),(975,'元宝区','0',169,0,'',1,0,'',NULL,0),(976,'振兴区','0',169,0,'',1,0,'',NULL,0),(977,'振安区','0',169,0,'',1,0,'',NULL,0),(978,'宽甸满族自治县','0',169,0,'',1,0,'',NULL,0),(979,'东港市','0',169,0,'',1,0,'',NULL,0),(980,'凤城市','0',169,0,'',1,0,'',NULL,0),(981,'古塔区','0',170,0,'',1,0,'',NULL,0),(982,'凌河区','0',170,0,'',1,0,'',NULL,0),(983,'太和区','0',170,0,'',1,0,'',NULL,0),(984,'黑山县','0',170,0,'',1,0,'',NULL,0),(985,'义县','0',170,0,'',1,0,'',NULL,0),(986,'凌海市','0',170,0,'',1,0,'',NULL,0),(987,'北镇市','0',170,0,'',1,0,'',NULL,0),(988,'站前区','0',171,0,'',1,0,'',NULL,0),(989,'西市区','0',171,0,'',1,0,'',NULL,0),(990,'鲅鱼圈区','0',171,0,'',1,0,'',NULL,0),(991,'老边区','0',171,0,'',1,0,'',NULL,0),(992,'盖州市','0',171,0,'',1,0,'',NULL,0),(993,'大石桥市','0',171,0,'',1,0,'',NULL,0),(994,'海州区','0',172,0,'',1,0,'',NULL,0),(995,'新邱区','0',172,0,'',1,0,'',NULL,0),(996,'太平区','0',172,0,'',1,0,'',NULL,0),(997,'清河门区','0',172,0,'',1,0,'',NULL,0),(998,'细河区','0',172,0,'',1,0,'',NULL,0),(999,'阜新蒙古族自治县','0',172,0,'',1,0,'',NULL,0),(1000,'彰武县','0',172,0,'',1,0,'',NULL,0),(1001,'白塔区','0',173,0,'',1,0,'',NULL,0),(1002,'文圣区','0',173,0,'',1,0,'',NULL,0),(1003,'宏伟区','0',173,0,'',1,0,'',NULL,0),(1004,'弓长岭区','0',173,0,'',1,0,'',NULL,0),(1005,'太子河区','0',173,0,'',1,0,'',NULL,0),(1006,'辽阳县','0',173,0,'',1,0,'',NULL,0),(1007,'灯塔市','0',173,0,'',1,0,'',NULL,0),(1008,'双台子区','0',174,0,'',1,0,'',NULL,0),(1009,'兴隆台区','0',174,0,'',1,0,'',NULL,0),(1010,'大洼县','0',174,0,'',1,0,'',NULL,0),(1011,'盘山县','0',174,0,'',1,0,'',NULL,0),(1012,'银州区','0',175,0,'',1,0,'',NULL,0),(1013,'清河区','0',175,0,'',1,0,'',NULL,0),(1014,'铁岭县','0',175,0,'',1,0,'',NULL,0),(1015,'西丰县','0',175,0,'',1,0,'',NULL,0),(1016,'昌图县','0',175,0,'',1,0,'',NULL,0),(1017,'调兵山市','0',175,0,'',1,0,'',NULL,0),(1018,'开原市','0',175,0,'',1,0,'',NULL,0),(1019,'双塔区','0',176,0,'',1,0,'',NULL,0),(1020,'龙城区','0',176,0,'',1,0,'',NULL,0),(1021,'朝阳县','0',176,0,'',1,0,'',NULL,0),(1022,'建平县','0',176,0,'',1,0,'',NULL,0),(1023,'喀喇沁左翼蒙古族自治县','0',176,0,'',1,0,'',NULL,0),(1024,'北票市','0',176,0,'',1,0,'',NULL,0),(1025,'凌源市','0',176,0,'',1,0,'',NULL,0),(1026,'连山区','0',177,0,'',1,0,'',NULL,0),(1027,'龙港区','0',177,0,'',1,0,'',NULL,0),(1028,'南票区','0',177,0,'',1,0,'',NULL,0),(1029,'绥中县','0',177,0,'',1,0,'',NULL,0),(1030,'建昌县','0',177,0,'',1,0,'',NULL,0),(1031,'兴城市','0',177,0,'',1,0,'',NULL,0),(1032,'南关区','0',178,0,'',1,0,'',NULL,0),(1033,'宽城区','0',178,0,'',1,0,'',NULL,0),(1034,'朝阳区','0',178,0,'',1,0,'',NULL,0),(1035,'二道区','0',178,0,'',1,0,'',NULL,0),(1036,'绿园区','0',178,0,'',1,0,'',NULL,0),(1037,'双阳区','0',178,0,'',1,0,'',NULL,0),(1038,'农安县','0',178,0,'',1,0,'',NULL,0),(1039,'九台市','0',178,0,'',1,0,'',NULL,0),(1040,'榆树市','0',178,0,'',1,0,'',NULL,0),(1041,'德惠市','0',178,0,'',1,0,'',NULL,0),(1042,'昌邑区','0',179,0,'',1,0,'',NULL,0),(1043,'龙潭区','0',179,0,'',1,0,'',NULL,0),(1044,'船营区','0',179,0,'',1,0,'',NULL,0),(1045,'丰满区','0',179,0,'',1,0,'',NULL,0),(1046,'永吉县','0',179,0,'',1,0,'',NULL,0),(1047,'蛟河市','0',179,0,'',1,0,'',NULL,0),(1048,'桦甸市','0',179,0,'',1,0,'',NULL,0),(1049,'舒兰市','0',179,0,'',1,0,'',NULL,0),(1050,'磐石市','0',179,0,'',1,0,'',NULL,0),(1051,'铁西区','0',180,0,'',1,0,'',NULL,0),(1052,'铁东区','0',180,0,'',1,0,'',NULL,0),(1053,'梨树县','0',180,0,'',1,0,'',NULL,0),(1054,'伊通满族自治县','0',180,0,'',1,0,'',NULL,0),(1055,'公主岭市','0',180,0,'',1,0,'',NULL,0),(1056,'双辽市','0',180,0,'',1,0,'',NULL,0),(1057,'龙山区','0',181,0,'',1,0,'',NULL,0),(1058,'西安区','0',181,0,'',1,0,'',NULL,0),(1059,'东丰县','0',181,0,'',1,0,'',NULL,0),(1060,'东辽县','0',181,0,'',1,0,'',NULL,0),(1061,'东昌区','0',182,0,'',1,0,'',NULL,0),(1062,'二道江区','0',182,0,'',1,0,'',NULL,0),(1063,'通化县','0',182,0,'',1,0,'',NULL,0),(1064,'辉南县','0',182,0,'',1,0,'',NULL,0),(1065,'柳河县','0',182,0,'',1,0,'',NULL,0),(1066,'梅河口市','0',182,0,'',1,0,'',NULL,0),(1067,'集安市','0',182,0,'',1,0,'',NULL,0),(1068,'八道江区','0',183,0,'',1,0,'',NULL,0),(1069,'抚松县','0',183,0,'',1,0,'',NULL,0),(1070,'靖宇县','0',183,0,'',1,0,'',NULL,0),(1071,'长白朝鲜族自治县','0',183,0,'',1,0,'',NULL,0),(1072,'江源县','0',183,0,'',1,0,'',NULL,0),(1073,'临江市','0',183,0,'',1,0,'',NULL,0),(1074,'宁江区','0',184,0,'',1,0,'',NULL,0),(1075,'前郭尔罗斯蒙古族自治县','0',184,0,'',1,0,'',NULL,0),(1076,'长岭县','0',184,0,'',1,0,'',NULL,0),(1077,'乾安县','0',184,0,'',1,0,'',NULL,0),(1078,'扶余县','0',184,0,'',1,0,'',NULL,0),(1079,'洮北区','0',185,0,'',1,0,'',NULL,0),(1080,'镇赉县','0',185,0,'',1,0,'',NULL,0),(1081,'通榆县','0',185,0,'',1,0,'',NULL,0),(1082,'洮南市','0',185,0,'',1,0,'',NULL,0),(1083,'大安市','0',185,0,'',1,0,'',NULL,0),(1084,'延吉市','0',186,0,'',1,0,'',NULL,0),(1085,'图们市','0',186,0,'',1,0,'',NULL,0),(1086,'敦化市','0',186,0,'',1,0,'',NULL,0),(1087,'珲春市','0',186,0,'',1,0,'',NULL,0),(1088,'龙井市','0',186,0,'',1,0,'',NULL,0),(1089,'和龙市','0',186,0,'',1,0,'',NULL,0),(1090,'汪清县','0',186,0,'',1,0,'',NULL,0),(1091,'安图县','0',186,0,'',1,0,'',NULL,0),(1092,'道里区','0',187,0,'',1,0,'',NULL,0),(1093,'南岗区','0',187,0,'',1,0,'',NULL,0),(1094,'道外区','0',187,0,'',1,0,'',NULL,0),(1095,'香坊区','0',187,0,'',1,0,'',NULL,0),(1096,'动力区','0',187,0,'',1,0,'',NULL,0),(1097,'平房区','0',187,0,'',1,0,'',NULL,0),(1098,'松北区','0',187,0,'',1,0,'',NULL,0),(1099,'呼兰区','0',187,0,'',1,0,'',NULL,0),(1100,'依兰县','0',187,0,'',1,0,'',NULL,0),(1101,'方正县','0',187,0,'',1,0,'',NULL,0),(1102,'宾县','0',187,0,'',1,0,'',NULL,0),(1103,'巴彦县','0',187,0,'',1,0,'',NULL,0),(1104,'木兰县','0',187,0,'',1,0,'',NULL,0),(1105,'通河县','0',187,0,'',1,0,'',NULL,0),(1106,'延寿县','0',187,0,'',1,0,'',NULL,0),(1107,'阿城市','0',187,0,'',1,0,'',NULL,0),(1108,'双城市','0',187,0,'',1,0,'',NULL,0),(1109,'尚志市','0',187,0,'',1,0,'',NULL,0),(1110,'五常市','0',187,0,'',1,0,'',NULL,0),(1111,'龙沙区','0',188,0,'',1,0,'',NULL,0),(1112,'建华区','0',188,0,'',1,0,'',NULL,0),(1113,'铁锋区','0',188,0,'',1,0,'',NULL,0),(1114,'昂昂溪区','0',188,0,'',1,0,'',NULL,0),(1115,'富拉尔基区','0',188,0,'',1,0,'',NULL,0),(1116,'碾子山区','0',188,0,'',1,0,'',NULL,0),(1117,'梅里斯达斡尔族区','0',188,0,'',1,0,'',NULL,0),(1118,'龙江县','0',188,0,'',1,0,'',NULL,0),(1119,'依安县','0',188,0,'',1,0,'',NULL,0),(1120,'泰来县','0',188,0,'',1,0,'',NULL,0),(1121,'甘南县','0',188,0,'',1,0,'',NULL,0),(1122,'富裕县','0',188,0,'',1,0,'',NULL,0),(1123,'克山县','0',188,0,'',1,0,'',NULL,0),(1124,'克东县','0',188,0,'',1,0,'',NULL,0),(1125,'拜泉县','0',188,0,'',1,0,'',NULL,0),(1126,'讷河市','0',188,0,'',1,0,'',NULL,0),(1127,'鸡冠区','0',189,0,'',1,0,'',NULL,0),(1128,'恒山区','0',189,0,'',1,0,'',NULL,0),(1129,'滴道区','0',189,0,'',1,0,'',NULL,0),(1130,'梨树区','0',189,0,'',1,0,'',NULL,0),(1131,'城子河区','0',189,0,'',1,0,'',NULL,0),(1132,'麻山区','0',189,0,'',1,0,'',NULL,0),(1133,'鸡东县','0',189,0,'',1,0,'',NULL,0),(1134,'虎林市','0',189,0,'',1,0,'',NULL,0),(1135,'密山市','0',189,0,'',1,0,'',NULL,0),(1136,'向阳区','0',190,0,'',1,0,'',NULL,0),(1137,'工农区','0',190,0,'',1,0,'',NULL,0),(1138,'南山区','0',190,0,'',1,0,'',NULL,0),(1139,'兴安区','0',190,0,'',1,0,'',NULL,0),(1140,'东山区','0',190,0,'',1,0,'',NULL,0),(1141,'兴山区','0',190,0,'',1,0,'',NULL,0),(1142,'萝北县','0',190,0,'',1,0,'',NULL,0),(1143,'绥滨县','0',190,0,'',1,0,'',NULL,0),(1144,'尖山区','0',191,0,'',1,0,'',NULL,0),(1145,'岭东区','0',191,0,'',1,0,'',NULL,0),(1146,'四方台区','0',191,0,'',1,0,'',NULL,0),(1147,'宝山区','0',191,0,'',1,0,'',NULL,0),(1148,'集贤县','0',191,0,'',1,0,'',NULL,0),(1149,'友谊县','0',191,0,'',1,0,'',NULL,0),(1150,'宝清县','0',191,0,'',1,0,'',NULL,0),(1151,'饶河县','0',191,0,'',1,0,'',NULL,0),(1152,'萨尔图区','0',192,0,'',1,0,'',NULL,0),(1153,'龙凤区','0',192,0,'',1,0,'',NULL,0),(1154,'让胡路区','0',192,0,'',1,0,'',NULL,0),(1155,'红岗区','0',192,0,'',1,0,'',NULL,0),(1156,'大同区','0',192,0,'',1,0,'',NULL,0),(1157,'肇州县','0',192,0,'',1,0,'',NULL,0),(1158,'肇源县','0',192,0,'',1,0,'',NULL,0),(1159,'林甸县','0',192,0,'',1,0,'',NULL,0),(1160,'杜尔伯特蒙古族自治县','0',192,0,'',1,0,'',NULL,0),(1161,'伊春区','0',193,0,'',1,0,'',NULL,0),(1162,'南岔区','0',193,0,'',1,0,'',NULL,0),(1163,'友好区','0',193,0,'',1,0,'',NULL,0),(1164,'西林区','0',193,0,'',1,0,'',NULL,0),(1165,'翠峦区','0',193,0,'',1,0,'',NULL,0),(1166,'新青区','0',193,0,'',1,0,'',NULL,0),(1167,'美溪区','0',193,0,'',1,0,'',NULL,0),(1168,'金山屯区','0',193,0,'',1,0,'',NULL,0),(1169,'五营区','0',193,0,'',1,0,'',NULL,0),(1170,'乌马河区','0',193,0,'',1,0,'',NULL,0),(1171,'汤旺河区','0',193,0,'',1,0,'',NULL,0),(1172,'带岭区','0',193,0,'',1,0,'',NULL,0),(1173,'乌伊岭区','0',193,0,'',1,0,'',NULL,0),(1174,'红星区','0',193,0,'',1,0,'',NULL,0),(1175,'上甘岭区','0',193,0,'',1,0,'',NULL,0),(1176,'嘉荫县','0',193,0,'',1,0,'',NULL,0),(1177,'铁力市','0',193,0,'',1,0,'',NULL,0),(1178,'永红区','0',194,0,'',1,0,'',NULL,0),(1179,'向阳区','0',194,0,'',1,0,'',NULL,0),(1180,'前进区','0',194,0,'',1,0,'',NULL,0),(1181,'东风区','0',194,0,'',1,0,'',NULL,0),(1182,'郊区','0',194,0,'',1,0,'',NULL,0),(1183,'桦南县','0',194,0,'',1,0,'',NULL,0),(1184,'桦川县','0',194,0,'',1,0,'',NULL,0),(1185,'汤原县','0',194,0,'',1,0,'',NULL,0),(1186,'抚远县','0',194,0,'',1,0,'',NULL,0),(1187,'同江市','0',194,0,'',1,0,'',NULL,0),(1188,'富锦市','0',194,0,'',1,0,'',NULL,0),(1189,'新兴区','0',195,0,'',1,0,'',NULL,0),(1190,'桃山区','0',195,0,'',1,0,'',NULL,0),(1191,'茄子河区','0',195,0,'',1,0,'',NULL,0),(1192,'勃利县','0',195,0,'',1,0,'',NULL,0),(1193,'东安区','0',196,0,'',1,0,'',NULL,0),(1194,'阳明区','0',196,0,'',1,0,'',NULL,0),(1195,'爱民区','0',196,0,'',1,0,'',NULL,0),(1196,'西安区','0',196,0,'',1,0,'',NULL,0),(1197,'东宁县','0',196,0,'',1,0,'',NULL,0),(1198,'林口县','0',196,0,'',1,0,'',NULL,0),(1199,'绥芬河市','0',196,0,'',1,0,'',NULL,0),(1200,'海林市','0',196,0,'',1,0,'',NULL,0),(1201,'宁安市','0',196,0,'',1,0,'',NULL,0),(1202,'穆棱市','0',196,0,'',1,0,'',NULL,0),(1203,'爱辉区','0',197,0,'',1,0,'',NULL,0),(1204,'嫩江县','0',197,0,'',1,0,'',NULL,0),(1205,'逊克县','0',197,0,'',1,0,'',NULL,0),(1206,'孙吴县','0',197,0,'',1,0,'',NULL,0),(1207,'北安市','0',197,0,'',1,0,'',NULL,0),(1208,'五大连池市','0',197,0,'',1,0,'',NULL,0),(1209,'北林区','0',198,0,'',1,0,'',NULL,0),(1210,'望奎县','0',198,0,'',1,0,'',NULL,0),(1211,'兰西县','0',198,0,'',1,0,'',NULL,0),(1212,'青冈县','0',198,0,'',1,0,'',NULL,0),(1213,'庆安县','0',198,0,'',1,0,'',NULL,0),(1214,'明水县','0',198,0,'',1,0,'',NULL,0),(1215,'绥棱县','0',198,0,'',1,0,'',NULL,0),(1216,'安达市','0',198,0,'',1,0,'',NULL,0),(1217,'肇东市','0',198,0,'',1,0,'',NULL,0),(1218,'海伦市','0',198,0,'',1,0,'',NULL,0),(1219,'呼玛县','0',199,0,'',1,0,'',NULL,0),(1220,'塔河县','0',199,0,'',1,0,'',NULL,0),(1221,'漠河县','0',199,0,'',1,0,'',NULL,0),(1222,'玄武区','0',200,0,'',1,0,'',NULL,0),(1223,'白下区','0',200,0,'',1,0,'',NULL,0),(1224,'秦淮区','0',200,0,'',1,0,'',NULL,0),(1225,'建邺区','0',200,0,'',1,0,'',NULL,0),(1226,'鼓楼区','0',200,0,'',1,0,'',NULL,0),(1227,'下关区','0',200,0,'',1,0,'',NULL,0),(1228,'浦口区','0',200,0,'',1,0,'',NULL,0),(1229,'栖霞区','0',200,0,'',1,0,'',NULL,0),(1230,'雨花台区','0',200,0,'',1,0,'',NULL,0),(1231,'江宁区','0',200,0,'',1,0,'',NULL,0),(1232,'六合区','0',200,0,'',1,0,'',NULL,0),(1233,'溧水县','0',200,0,'',1,0,'',NULL,0),(1234,'高淳县','0',200,0,'',1,0,'',NULL,0),(1235,'崇安区','0',201,0,'',1,0,'',NULL,0),(1236,'南长区','0',201,0,'',1,0,'',NULL,0),(1237,'北塘区','0',201,0,'',1,0,'',NULL,0),(1238,'锡山区','0',201,0,'',1,0,'',NULL,0),(1239,'惠山区','0',201,0,'',1,0,'',NULL,0),(1240,'滨湖区','0',201,0,'',1,0,'',NULL,0),(1241,'江阴市','0',201,0,'',1,0,'',NULL,0),(1242,'宜兴市','0',201,0,'',1,0,'',NULL,0),(1243,'鼓楼区','0',202,0,'',1,0,'',NULL,0),(1244,'云龙区','0',202,0,'',1,0,'',NULL,0),(1245,'九里区','0',202,0,'',1,0,'',NULL,0),(1246,'贾汪区','0',202,0,'',1,0,'',NULL,0),(1247,'泉山区','0',202,0,'',1,0,'',NULL,0),(1248,'丰县','0',202,0,'',1,0,'',NULL,0),(1249,'沛县','0',202,0,'',1,0,'',NULL,0),(1250,'铜山县','0',202,0,'',1,0,'',NULL,0),(1251,'睢宁县','0',202,0,'',1,0,'',NULL,0),(1252,'新沂市','0',202,0,'',1,0,'',NULL,0),(1253,'邳州市','0',202,0,'',1,0,'',NULL,0),(1254,'天宁区','0',203,0,'',1,0,'',NULL,0),(1255,'钟楼区','0',203,0,'',1,0,'',NULL,0),(1256,'戚墅堰区','0',203,0,'',1,0,'',NULL,0),(1257,'新北区','0',203,0,'',1,0,'',NULL,0),(1258,'武进区','0',203,0,'',1,0,'',NULL,0),(1259,'溧阳市','0',203,0,'',1,0,'',NULL,0),(1260,'金坛市','0',203,0,'',1,0,'',NULL,0),(1261,'沧浪区','0',204,0,'',1,0,'',NULL,0),(1262,'平江区','0',204,0,'',1,0,'',NULL,0),(1263,'金阊区','0',204,0,'',1,0,'',NULL,0),(1264,'虎丘区','0',204,0,'',1,0,'',NULL,0),(1265,'吴中区','0',204,0,'',1,0,'',NULL,0),(1266,'相城区','0',204,0,'',1,0,'',NULL,0),(1267,'常熟市','0',204,0,'',1,0,'',NULL,0),(1268,'张家港市','0',204,0,'',1,0,'',NULL,0),(1269,'昆山市','0',204,0,'',1,0,'',NULL,0),(1270,'吴江市','0',204,0,'',1,0,'',NULL,0),(1271,'太仓市','0',204,0,'',1,0,'',NULL,0),(1272,'崇川区','0',205,0,'',1,0,'',NULL,0),(1273,'港闸区','0',205,0,'',1,0,'',NULL,0),(1274,'海安县','0',205,0,'',1,0,'',NULL,0),(1275,'如东县','0',205,0,'',1,0,'',NULL,0),(1276,'启东市','0',205,0,'',1,0,'',NULL,0),(1277,'如皋市','0',205,0,'',1,0,'',NULL,0),(1278,'通州市','0',205,0,'',1,0,'',NULL,0),(1279,'海门市','0',205,0,'',1,0,'',NULL,0),(1280,'连云区','0',206,0,'',1,0,'',NULL,0),(1281,'新浦区','0',206,0,'',1,0,'',NULL,0),(1282,'海州区','0',206,0,'',1,0,'',NULL,0),(1283,'赣榆县','0',206,0,'',1,0,'',NULL,0),(1284,'东海县','0',206,0,'',1,0,'',NULL,0),(1285,'灌云县','0',206,0,'',1,0,'',NULL,0),(1286,'灌南县','0',206,0,'',1,0,'',NULL,0),(1287,'清河区','0',207,0,'',1,0,'',NULL,0),(1288,'楚州区','0',207,0,'',1,0,'',NULL,0),(1289,'淮阴区','0',207,0,'',1,0,'',NULL,0),(1290,'清浦区','0',207,0,'',1,0,'',NULL,0),(1291,'涟水县','0',207,0,'',1,0,'',NULL,0),(1292,'洪泽县','0',207,0,'',1,0,'',NULL,0),(1293,'盱眙县','0',207,0,'',1,0,'',NULL,0),(1294,'金湖县','0',207,0,'',1,0,'',NULL,0),(1295,'亭湖区','0',208,0,'',1,0,'',NULL,0),(1296,'盐都区','0',208,0,'',1,0,'',NULL,0),(1297,'响水县','0',208,0,'',1,0,'',NULL,0),(1298,'滨海县','0',208,0,'',1,0,'',NULL,0),(1299,'阜宁县','0',208,0,'',1,0,'',NULL,0),(1300,'射阳县','0',208,0,'',1,0,'',NULL,0),(1301,'建湖县','0',208,0,'',1,0,'',NULL,0),(1302,'东台市','0',208,0,'',1,0,'',NULL,0),(1303,'大丰市','0',208,0,'',1,0,'',NULL,0),(1304,'广陵区','0',209,0,'',1,0,'',NULL,0),(1305,'邗江区','0',209,0,'',1,0,'',NULL,0),(1306,'维扬区','0',209,0,'',1,0,'',NULL,0),(1307,'宝应县','0',209,0,'',1,0,'',NULL,0),(1308,'仪征市','0',209,0,'',1,0,'',NULL,0),(1309,'高邮市','0',209,0,'',1,0,'',NULL,0),(1310,'江都市','0',209,0,'',1,0,'',NULL,0),(1311,'京口区','0',210,0,'',1,0,'',NULL,0),(1312,'润州区','0',210,0,'',1,0,'',NULL,0),(1313,'丹徒区','0',210,0,'',1,0,'',NULL,0),(1314,'丹阳市','0',210,0,'',1,0,'',NULL,0),(1315,'扬中市','0',210,0,'',1,0,'',NULL,0),(1316,'句容市','0',210,0,'',1,0,'',NULL,0),(1317,'海陵区','0',211,0,'',1,0,'',NULL,0),(1318,'高港区','0',211,0,'',1,0,'',NULL,0),(1319,'兴化市','0',211,0,'',1,0,'',NULL,0),(1320,'靖江市','0',211,0,'',1,0,'',NULL,0),(1321,'泰兴市','0',211,0,'',1,0,'',NULL,0),(1322,'姜堰市','0',211,0,'',1,0,'',NULL,0),(1323,'宿城区','0',212,0,'',1,0,'',NULL,0),(1324,'宿豫区','0',212,0,'',1,0,'',NULL,0),(1325,'沭阳县','0',212,0,'',1,0,'',NULL,0),(1326,'泗阳县','0',212,0,'',1,0,'',NULL,0),(1327,'泗洪县','0',212,0,'',1,0,'',NULL,0),(1328,'上城区','0',213,0,'',1,0,'',NULL,0),(1329,'下城区','0',213,0,'',1,0,'',NULL,0),(1330,'江干区','0',213,0,'',1,0,'',NULL,0),(1331,'拱墅区','0',213,0,'',1,0,'',NULL,0),(1332,'西湖区','0',213,0,'',1,0,'',NULL,0),(1333,'滨江区','0',213,0,'',1,0,'',NULL,0),(1334,'萧山区','0',213,0,'',1,0,'',NULL,0),(1335,'余杭区','0',213,0,'',1,0,'',NULL,0),(1336,'桐庐县','0',213,0,'',1,0,'',NULL,0),(1337,'淳安县','0',213,0,'',1,0,'',NULL,0),(1338,'建德市','0',213,0,'',1,0,'',NULL,0),(1339,'富阳市','0',213,0,'',1,0,'',NULL,0),(1340,'临安市','0',213,0,'',1,0,'',NULL,0),(1341,'海曙区','0',214,0,'',1,0,'',NULL,0),(1342,'江东区','0',214,0,'',1,0,'',NULL,0),(1343,'江北区','0',214,0,'',1,0,'',NULL,0),(1344,'北仑区','0',214,0,'',1,0,'',NULL,0),(1345,'镇海区','0',214,0,'',1,0,'',NULL,0),(1346,'鄞州区','0',214,0,'',1,0,'',NULL,0),(1347,'象山县','0',214,0,'',1,0,'',NULL,0),(1348,'宁海县','0',214,0,'',1,0,'',NULL,0),(1349,'余姚市','0',214,0,'',1,0,'',NULL,0),(1350,'慈溪市','0',214,0,'',1,0,'',NULL,0),(1351,'奉化市','0',214,0,'',1,0,'',NULL,0),(1352,'鹿城区','0',215,0,'',1,0,'',NULL,0),(1353,'龙湾区','0',215,0,'',1,0,'',NULL,0),(1354,'瓯海区','0',215,0,'',1,0,'',NULL,0),(1355,'洞头县','0',215,0,'',1,0,'',NULL,0),(1356,'永嘉县','0',215,0,'',1,0,'',NULL,0),(1357,'平阳县','0',215,0,'',1,0,'',NULL,0),(1358,'苍南县','0',215,0,'',1,0,'',NULL,0),(1359,'文成县','0',215,0,'',1,0,'',NULL,0),(1360,'泰顺县','0',215,0,'',1,0,'',NULL,0),(1361,'瑞安市','0',215,0,'',1,0,'',NULL,0),(1362,'乐清市','0',215,0,'',1,0,'',NULL,0),(1363,'秀城区','0',216,0,'',1,0,'',NULL,0),(1364,'秀洲区','0',216,0,'',1,0,'',NULL,0),(1365,'嘉善县','0',216,0,'',1,0,'',NULL,0),(1366,'海盐县','0',216,0,'',1,0,'',NULL,0),(1367,'海宁市','0',216,0,'',1,0,'',NULL,0),(1368,'平湖市','0',216,0,'',1,0,'',NULL,0),(1369,'桐乡市','0',216,0,'',1,0,'',NULL,0),(1370,'吴兴区','0',217,0,'',1,0,'',NULL,0),(1371,'南浔区','0',217,0,'',1,0,'',NULL,0),(1372,'德清县','0',217,0,'',1,0,'',NULL,0),(1373,'长兴县','0',217,0,'',1,0,'',NULL,0),(1374,'安吉县','0',217,0,'',1,0,'',NULL,0),(1375,'越城区','0',218,0,'',1,0,'',NULL,0),(1376,'绍兴县','0',218,0,'',1,0,'',NULL,0),(1377,'新昌县','0',218,0,'',1,0,'',NULL,0),(1378,'诸暨市','0',218,0,'',1,0,'',NULL,0),(1379,'上虞市','0',218,0,'',1,0,'',NULL,0),(1380,'嵊州市','0',218,0,'',1,0,'',NULL,0),(1381,'婺城区','0',219,0,'',1,0,'',NULL,0),(1382,'金东区','0',219,0,'',1,0,'',NULL,0),(1383,'武义县','0',219,0,'',1,0,'',NULL,0),(1384,'浦江县','0',219,0,'',1,0,'',NULL,0),(1385,'磐安县','0',219,0,'',1,0,'',NULL,0),(1386,'兰溪市','0',219,0,'',1,0,'',NULL,0),(1387,'义乌市','0',219,0,'',1,0,'',NULL,0),(1388,'东阳市','0',219,0,'',1,0,'',NULL,0),(1389,'永康市','0',219,0,'',1,0,'',NULL,0),(1390,'柯城区','0',220,0,'',1,0,'',NULL,0),(1391,'衢江区','0',220,0,'',1,0,'',NULL,0),(1392,'常山县','0',220,0,'',1,0,'',NULL,0),(1393,'开化县','0',220,0,'',1,0,'',NULL,0),(1394,'龙游县','0',220,0,'',1,0,'',NULL,0),(1395,'江山市','0',220,0,'',1,0,'',NULL,0),(1396,'定海区','0',221,0,'',1,0,'',NULL,0),(1397,'普陀区','0',221,0,'',1,0,'',NULL,0),(1398,'岱山县','0',221,0,'',1,0,'',NULL,0),(1399,'嵊泗县','0',221,0,'',1,0,'',NULL,0),(1400,'椒江区','0',222,0,'',1,0,'',NULL,0),(1401,'黄岩区','0',222,0,'',1,0,'',NULL,0),(1402,'路桥区','0',222,0,'',1,0,'',NULL,0),(1403,'玉环县','0',222,0,'',1,0,'',NULL,0),(1404,'三门县','0',222,0,'',1,0,'',NULL,0),(1405,'天台县','0',222,0,'',1,0,'',NULL,0),(1406,'仙居县','0',222,0,'',1,0,'',NULL,0),(1407,'温岭市','0',222,0,'',1,0,'',NULL,0),(1408,'临海市','0',222,0,'',1,0,'',NULL,0),(1409,'莲都区','0',223,0,'',1,0,'',NULL,0),(1410,'青田县','0',223,0,'',1,0,'',NULL,0),(1411,'缙云县','0',223,0,'',1,0,'',NULL,0),(1412,'遂昌县','0',223,0,'',1,0,'',NULL,0),(1413,'松阳县','0',223,0,'',1,0,'',NULL,0),(1414,'云和县','0',223,0,'',1,0,'',NULL,0),(1415,'庆元县','0',223,0,'',1,0,'',NULL,0),(1416,'景宁畲族自治县','0',223,0,'',1,0,'',NULL,0),(1417,'龙泉市','0',223,0,'',1,0,'',NULL,0),(1418,'瑶海区','0',224,0,'',1,0,'',NULL,0),(1419,'庐阳区','0',224,0,'',1,0,'',NULL,0),(1420,'蜀山区','0',224,0,'',1,0,'',NULL,0),(1421,'包河区','0',224,0,'',1,0,'',NULL,0),(1422,'长丰县','0',224,0,'',1,0,'',NULL,0),(1423,'肥东县','0',224,0,'',1,0,'',NULL,0),(1424,'肥西县','0',224,0,'',1,0,'',NULL,0),(1425,'镜湖区','0',225,0,'',1,0,'',NULL,0),(1426,'弋江区','0',225,0,'',1,0,'',NULL,0),(1427,'鸠江区','0',225,0,'',1,0,'',NULL,0),(1428,'三山区','0',225,0,'',1,0,'',NULL,0),(1429,'芜湖县','0',225,0,'',1,0,'',NULL,0),(1430,'繁昌县','0',225,0,'',1,0,'',NULL,0),(1431,'南陵县','0',225,0,'',1,0,'',NULL,0),(1432,'龙子湖区','0',226,0,'',1,0,'',NULL,0),(1433,'蚌山区','0',226,0,'',1,0,'',NULL,0),(1434,'禹会区','0',226,0,'',1,0,'',NULL,0),(1435,'淮上区','0',226,0,'',1,0,'',NULL,0),(1436,'怀远县','0',226,0,'',1,0,'',NULL,0),(1437,'五河县','0',226,0,'',1,0,'',NULL,0),(1438,'固镇县','0',226,0,'',1,0,'',NULL,0),(1439,'大通区','0',227,0,'',1,0,'',NULL,0),(1440,'田家庵区','0',227,0,'',1,0,'',NULL,0),(1441,'谢家集区','0',227,0,'',1,0,'',NULL,0),(1442,'八公山区','0',227,0,'',1,0,'',NULL,0),(1443,'潘集区','0',227,0,'',1,0,'',NULL,0),(1444,'凤台县','0',227,0,'',1,0,'',NULL,0),(1445,'金家庄区','0',228,0,'',1,0,'',NULL,0),(1446,'花山区','0',228,0,'',1,0,'',NULL,0),(1447,'雨山区','0',228,0,'',1,0,'',NULL,0),(1448,'当涂县','0',228,0,'',1,0,'',NULL,0),(1449,'杜集区','0',229,0,'',1,0,'',NULL,0),(1450,'相山区','0',229,0,'',1,0,'',NULL,0),(1451,'烈山区','0',229,0,'',1,0,'',NULL,0),(1452,'濉溪县','0',229,0,'',1,0,'',NULL,0),(1453,'铜官山区','0',230,0,'',1,0,'',NULL,0),(1454,'狮子山区','0',230,0,'',1,0,'',NULL,0),(1455,'郊区','0',230,0,'',1,0,'',NULL,0),(1456,'铜陵县','0',230,0,'',1,0,'',NULL,0),(1457,'迎江区','0',231,0,'',1,0,'',NULL,0),(1458,'大观区','0',231,0,'',1,0,'',NULL,0),(1459,'宜秀区','0',231,0,'',1,0,'',NULL,0),(1460,'怀宁县','0',231,0,'',1,0,'',NULL,0),(1461,'枞阳县','0',231,0,'',1,0,'',NULL,0),(1462,'潜山县','0',231,0,'',1,0,'',NULL,0),(1463,'太湖县','0',231,0,'',1,0,'',NULL,0),(1464,'宿松县','0',231,0,'',1,0,'',NULL,0),(1465,'望江县','0',231,0,'',1,0,'',NULL,0),(1466,'岳西县','0',231,0,'',1,0,'',NULL,0),(1467,'桐城市','0',231,0,'',1,0,'',NULL,0),(1468,'屯溪区','0',232,0,'',1,0,'',NULL,0),(1469,'黄山区','0',232,0,'',1,0,'',NULL,0),(1470,'徽州区','0',232,0,'',1,0,'',NULL,0),(1471,'歙县','0',232,0,'',1,0,'',NULL,0),(1472,'休宁县','0',232,0,'',1,0,'',NULL,0),(1473,'黟县','0',232,0,'',1,0,'',NULL,0),(1474,'祁门县','0',232,0,'',1,0,'',NULL,0),(1475,'琅琊区','0',233,0,'',1,0,'',NULL,0),(1476,'南谯区','0',233,0,'',1,0,'',NULL,0),(1477,'来安县','0',233,0,'',1,0,'',NULL,0),(1478,'全椒县','0',233,0,'',1,0,'',NULL,0),(1479,'定远县','0',233,0,'',1,0,'',NULL,0),(1480,'凤阳县','0',233,0,'',1,0,'',NULL,0),(1481,'天长市','0',233,0,'',1,0,'',NULL,0),(1482,'明光市','0',233,0,'',1,0,'',NULL,0),(1483,'颍州区','0',234,0,'',1,0,'',NULL,0),(1484,'颍东区','0',234,0,'',1,0,'',NULL,0),(1485,'颍泉区','0',234,0,'',1,0,'',NULL,0),(1486,'临泉县','0',234,0,'',1,0,'',NULL,0),(1487,'太和县','0',234,0,'',1,0,'',NULL,0),(1488,'阜南县','0',234,0,'',1,0,'',NULL,0),(1489,'颍上县','0',234,0,'',1,0,'',NULL,0),(1490,'界首市','0',234,0,'',1,0,'',NULL,0),(1491,'埇桥区','0',235,0,'',1,0,'',NULL,0),(1492,'砀山县','0',235,0,'',1,0,'',NULL,0),(1493,'萧县','0',235,0,'',1,0,'',NULL,0),(1494,'灵璧县','0',235,0,'',1,0,'',NULL,0),(1495,'泗县','0',235,0,'',1,0,'',NULL,0),(1496,'居巢区','0',236,0,'',1,0,'',NULL,0),(1497,'庐江县','0',236,0,'',1,0,'',NULL,0),(1498,'无为县','0',236,0,'',1,0,'',NULL,0),(1499,'含山县','0',236,0,'',1,0,'',NULL,0),(1500,'和县','0',236,0,'',1,0,'',NULL,0),(1501,'金安区','0',237,0,'',1,0,'',NULL,0),(1502,'裕安区','0',237,0,'',1,0,'',NULL,0),(1503,'寿县','0',237,0,'',1,0,'',NULL,0),(1504,'霍邱县','0',237,0,'',1,0,'',NULL,0),(1505,'舒城县','0',237,0,'',1,0,'',NULL,0),(1506,'金寨县','0',237,0,'',1,0,'',NULL,0),(1507,'霍山县','0',237,0,'',1,0,'',NULL,0),(1508,'谯城区','0',238,0,'',1,0,'',NULL,0),(1509,'涡阳县','0',238,0,'',1,0,'',NULL,0),(1510,'蒙城县','0',238,0,'',1,0,'',NULL,0),(1511,'利辛县','0',238,0,'',1,0,'',NULL,0),(1512,'贵池区','0',239,0,'',1,0,'',NULL,0),(1513,'东至县','0',239,0,'',1,0,'',NULL,0),(1514,'石台县','0',239,0,'',1,0,'',NULL,0),(1515,'青阳县','0',239,0,'',1,0,'',NULL,0),(1516,'宣州区','0',240,0,'',1,0,'',NULL,0),(1517,'郎溪县','0',240,0,'',1,0,'',NULL,0),(1518,'广德县','0',240,0,'',1,0,'',NULL,0),(1519,'泾县','0',240,0,'',1,0,'',NULL,0),(1520,'绩溪县','0',240,0,'',1,0,'',NULL,0),(1521,'旌德县','0',240,0,'',1,0,'',NULL,0),(1522,'宁国市','0',240,0,'',1,0,'',NULL,0),(1523,'鼓楼区','0',241,0,'',1,0,'',NULL,0),(1524,'台江区','0',241,0,'',1,0,'',NULL,0),(1525,'仓山区','0',241,0,'',1,0,'',NULL,0),(1526,'马尾区','0',241,0,'',1,0,'',NULL,0),(1527,'晋安区','0',241,0,'',1,0,'',NULL,0),(1528,'闽侯县','0',241,0,'',1,0,'',NULL,0),(1529,'连江县','0',241,0,'',1,0,'',NULL,0),(1530,'罗源县','0',241,0,'',1,0,'',NULL,0),(1531,'闽清县','0',241,0,'',1,0,'',NULL,0),(1532,'永泰县','0',241,0,'',1,0,'',NULL,0),(1533,'平潭县','0',241,0,'',1,0,'',NULL,0),(1534,'福清市','0',241,0,'',1,0,'',NULL,0),(1535,'长乐市','0',241,0,'',1,0,'',NULL,0),(1536,'思明区','0',242,0,'',1,0,'',NULL,0),(1537,'海沧区','0',242,0,'',1,0,'',NULL,0),(1538,'湖里区','0',242,0,'',1,0,'',NULL,0),(1539,'集美区','0',242,0,'',1,0,'',NULL,0),(1540,'同安区','0',242,0,'',1,0,'',NULL,0),(1541,'翔安区','0',242,0,'',1,0,'',NULL,0),(1542,'城厢区','0',243,0,'',1,0,'',NULL,0),(1543,'涵江区','0',243,0,'',1,0,'',NULL,0),(1544,'荔城区','0',243,0,'',1,0,'',NULL,0),(1545,'秀屿区','0',243,0,'',1,0,'',NULL,0),(1546,'仙游县','0',243,0,'',1,0,'',NULL,0),(1547,'梅列区','0',244,0,'',1,0,'',NULL,0),(1548,'三元区','0',244,0,'',1,0,'',NULL,0),(1549,'明溪县','0',244,0,'',1,0,'',NULL,0),(1550,'清流县','0',244,0,'',1,0,'',NULL,0),(1551,'宁化县','0',244,0,'',1,0,'',NULL,0),(1552,'大田县','0',244,0,'',1,0,'',NULL,0),(1553,'尤溪县','0',244,0,'',1,0,'',NULL,0),(1554,'沙县','0',244,0,'',1,0,'',NULL,0),(1555,'将乐县','0',244,0,'',1,0,'',NULL,0),(1556,'泰宁县','0',244,0,'',1,0,'',NULL,0),(1557,'建宁县','0',244,0,'',1,0,'',NULL,0),(1558,'永安市','0',244,0,'',1,0,'',NULL,0),(1559,'鲤城区','0',245,0,'',1,0,'',NULL,0),(1560,'丰泽区','0',245,0,'',1,0,'',NULL,0),(1561,'洛江区','0',245,0,'',1,0,'',NULL,0),(1562,'泉港区','0',245,0,'',1,0,'',NULL,0),(1563,'惠安县','0',245,0,'',1,0,'',NULL,0),(1564,'安溪县','0',245,0,'',1,0,'',NULL,0),(1565,'永春县','0',245,0,'',1,0,'',NULL,0),(1566,'德化县','0',245,0,'',1,0,'',NULL,0),(1567,'金门县','0',245,0,'',1,0,'',NULL,0),(1568,'石狮市','0',245,0,'',1,0,'',NULL,0),(1569,'晋江市','0',245,0,'',1,0,'',NULL,0),(1570,'南安市','0',245,0,'',1,0,'',NULL,0),(1571,'芗城区','0',246,0,'',1,0,'',NULL,0),(1572,'龙文区','0',246,0,'',1,0,'',NULL,0),(1573,'云霄县','0',246,0,'',1,0,'',NULL,0),(1574,'漳浦县','0',246,0,'',1,0,'',NULL,0),(1575,'诏安县','0',246,0,'',1,0,'',NULL,0),(1576,'长泰县','0',246,0,'',1,0,'',NULL,0),(1577,'东山县','0',246,0,'',1,0,'',NULL,0),(1578,'南靖县','0',246,0,'',1,0,'',NULL,0),(1579,'平和县','0',246,0,'',1,0,'',NULL,0),(1580,'华安县','0',246,0,'',1,0,'',NULL,0),(1581,'龙海市','0',246,0,'',1,0,'',NULL,0),(1582,'延平区','0',247,0,'',1,0,'',NULL,0),(1583,'顺昌县','0',247,0,'',1,0,'',NULL,0),(1584,'浦城县','0',247,0,'',1,0,'',NULL,0),(1585,'光泽县','0',247,0,'',1,0,'',NULL,0),(1586,'松溪县','0',247,0,'',1,0,'',NULL,0),(1587,'政和县','0',247,0,'',1,0,'',NULL,0),(1588,'邵武市','0',247,0,'',1,0,'',NULL,0),(1589,'武夷山市','0',247,0,'',1,0,'',NULL,0),(1590,'建瓯市','0',247,0,'',1,0,'',NULL,0),(1591,'建阳市','0',247,0,'',1,0,'',NULL,0),(1592,'新罗区','0',248,0,'',1,0,'',NULL,0),(1593,'长汀县','0',248,0,'',1,0,'',NULL,0),(1594,'永定县','0',248,0,'',1,0,'',NULL,0),(1595,'上杭县','0',248,0,'',1,0,'',NULL,0),(1596,'武平县','0',248,0,'',1,0,'',NULL,0),(1597,'连城县','0',248,0,'',1,0,'',NULL,0),(1598,'漳平市','0',248,0,'',1,0,'',NULL,0),(1599,'蕉城区','0',249,0,'',1,0,'',NULL,0),(1600,'霞浦县','0',249,0,'',1,0,'',NULL,0),(1601,'古田县','0',249,0,'',1,0,'',NULL,0),(1602,'屏南县','0',249,0,'',1,0,'',NULL,0),(1603,'寿宁县','0',249,0,'',1,0,'',NULL,0),(1604,'周宁县','0',249,0,'',1,0,'',NULL,0),(1605,'柘荣县','0',249,0,'',1,0,'',NULL,0),(1606,'福安市','0',249,0,'',1,0,'',NULL,0),(1607,'福鼎市','0',249,0,'',1,0,'',NULL,0),(1608,'东湖区','0',250,0,'',1,0,'',NULL,0),(1609,'西湖区','0',250,0,'',1,0,'',NULL,0),(1610,'青云谱区','0',250,0,'',1,0,'',NULL,0),(1611,'湾里区','0',250,0,'',1,0,'',NULL,0),(1612,'青山湖区','0',250,0,'',1,0,'',NULL,0),(1613,'南昌县','0',250,0,'',1,0,'',NULL,0),(1614,'新建县','0',250,0,'',1,0,'',NULL,0),(1615,'安义县','0',250,0,'',1,0,'',NULL,0),(1616,'进贤县','0',250,0,'',1,0,'',NULL,0),(1617,'昌江区','0',251,0,'',1,0,'',NULL,0),(1618,'珠山区','0',251,0,'',1,0,'',NULL,0),(1619,'浮梁县','0',251,0,'',1,0,'',NULL,0),(1620,'乐平市','0',251,0,'',1,0,'',NULL,0),(1621,'安源区','0',252,0,'',1,0,'',NULL,0),(1622,'湘东区','0',252,0,'',1,0,'',NULL,0),(1623,'莲花县','0',252,0,'',1,0,'',NULL,0),(1624,'上栗县','0',252,0,'',1,0,'',NULL,0),(1625,'芦溪县','0',252,0,'',1,0,'',NULL,0),(1626,'庐山区','0',253,0,'',1,0,'',NULL,0),(1627,'浔阳区','0',253,0,'',1,0,'',NULL,0),(1628,'九江县','0',253,0,'',1,0,'',NULL,0),(1629,'武宁县','0',253,0,'',1,0,'',NULL,0),(1630,'修水县','0',253,0,'',1,0,'',NULL,0),(1631,'永修县','0',253,0,'',1,0,'',NULL,0),(1632,'德安县','0',253,0,'',1,0,'',NULL,0),(1633,'星子县','0',253,0,'',1,0,'',NULL,0),(1634,'都昌县','0',253,0,'',1,0,'',NULL,0),(1635,'湖口县','0',253,0,'',1,0,'',NULL,0),(1636,'彭泽县','0',253,0,'',1,0,'',NULL,0),(1637,'瑞昌市','0',253,0,'',1,0,'',NULL,0),(1638,'渝水区','0',254,0,'',1,0,'',NULL,0),(1639,'分宜县','0',254,0,'',1,0,'',NULL,0),(1640,'月湖区','0',255,0,'',1,0,'',NULL,0),(1641,'余江县','0',255,0,'',1,0,'',NULL,0),(1642,'贵溪市','0',255,0,'',1,0,'',NULL,0),(1643,'章贡区','0',256,0,'',1,0,'',NULL,0),(1644,'赣县','0',256,0,'',1,0,'',NULL,0),(1645,'信丰县','0',256,0,'',1,0,'',NULL,0),(1646,'大余县','0',256,0,'',1,0,'',NULL,0),(1647,'上犹县','0',256,0,'',1,0,'',NULL,0),(1648,'崇义县','0',256,0,'',1,0,'',NULL,0),(1649,'安远县','0',256,0,'',1,0,'',NULL,0),(1650,'龙南县','0',256,0,'',1,0,'',NULL,0),(1651,'定南县','0',256,0,'',1,0,'',NULL,0),(1652,'全南县','0',256,0,'',1,0,'',NULL,0),(1653,'宁都县','0',256,0,'',1,0,'',NULL,0),(1654,'于都县','0',256,0,'',1,0,'',NULL,0),(1655,'兴国县','0',256,0,'',1,0,'',NULL,0),(1656,'会昌县','0',256,0,'',1,0,'',NULL,0),(1657,'寻乌县','0',256,0,'',1,0,'',NULL,0),(1658,'石城县','0',256,0,'',1,0,'',NULL,0),(1659,'瑞金市','0',256,0,'',1,0,'',NULL,0),(1660,'南康市','0',256,0,'',1,0,'',NULL,0),(1661,'吉州区','0',257,0,'',1,0,'',NULL,0),(1662,'青原区','0',257,0,'',1,0,'',NULL,0),(1663,'吉安县','0',257,0,'',1,0,'',NULL,0),(1664,'吉水县','0',257,0,'',1,0,'',NULL,0),(1665,'峡江县','0',257,0,'',1,0,'',NULL,0),(1666,'新干县','0',257,0,'',1,0,'',NULL,0),(1667,'永丰县','0',257,0,'',1,0,'',NULL,0),(1668,'泰和县','0',257,0,'',1,0,'',NULL,0),(1669,'遂川县','0',257,0,'',1,0,'',NULL,0),(1670,'万安县','0',257,0,'',1,0,'',NULL,0),(1671,'安福县','0',257,0,'',1,0,'',NULL,0),(1672,'永新县','0',257,0,'',1,0,'',NULL,0),(1673,'井冈山市','0',257,0,'',1,0,'',NULL,0),(1674,'袁州区','0',258,0,'',1,0,'',NULL,0),(1675,'奉新县','0',258,0,'',1,0,'',NULL,0),(1676,'万载县','0',258,0,'',1,0,'',NULL,0),(1677,'上高县','0',258,0,'',1,0,'',NULL,0),(1678,'宜丰县','0',258,0,'',1,0,'',NULL,0),(1679,'靖安县','0',258,0,'',1,0,'',NULL,0),(1680,'铜鼓县','0',258,0,'',1,0,'',NULL,0),(1681,'丰城市','0',258,0,'',1,0,'',NULL,0),(1682,'樟树市','0',258,0,'',1,0,'',NULL,0),(1683,'高安市','0',258,0,'',1,0,'',NULL,0),(1684,'临川区','0',259,0,'',1,0,'',NULL,0),(1685,'南城县','0',259,0,'',1,0,'',NULL,0),(1686,'黎川县','0',259,0,'',1,0,'',NULL,0),(1687,'南丰县','0',259,0,'',1,0,'',NULL,0),(1688,'崇仁县','0',259,0,'',1,0,'',NULL,0),(1689,'乐安县','0',259,0,'',1,0,'',NULL,0),(1690,'宜黄县','0',259,0,'',1,0,'',NULL,0),(1691,'金溪县','0',259,0,'',1,0,'',NULL,0),(1692,'资溪县','0',259,0,'',1,0,'',NULL,0),(1693,'东乡县','0',259,0,'',1,0,'',NULL,0),(1694,'广昌县','0',259,0,'',1,0,'',NULL,0),(1695,'信州区','0',260,0,'',1,0,'',NULL,0),(1696,'上饶县','0',260,0,'',1,0,'',NULL,0),(1697,'广丰县','0',260,0,'',1,0,'',NULL,0),(1698,'玉山县','0',260,0,'',1,0,'',NULL,0),(1699,'铅山县','0',260,0,'',1,0,'',NULL,0),(1700,'横峰县','0',260,0,'',1,0,'',NULL,0),(1701,'弋阳县','0',260,0,'',1,0,'',NULL,0),(1702,'余干县','0',260,0,'',1,0,'',NULL,0),(1703,'鄱阳县','0',260,0,'',1,0,'',NULL,0),(1704,'万年县','0',260,0,'',1,0,'',NULL,0),(1705,'婺源县','0',260,0,'',1,0,'',NULL,0),(1706,'德兴市','0',260,0,'',1,0,'',NULL,0),(1707,'历下区','0',261,0,'',1,0,'',NULL,0),(1708,'市中区','0',261,0,'',1,0,'',NULL,0),(1709,'槐荫区','0',261,0,'',1,0,'',NULL,0),(1710,'天桥区','0',261,0,'',1,0,'',NULL,0),(1711,'历城区','0',261,0,'',1,0,'',NULL,0),(1712,'长清区','0',261,0,'',1,0,'',NULL,0),(1713,'平阴县','0',261,0,'',1,0,'',NULL,0),(1714,'济阳县','0',261,0,'',1,0,'',NULL,0),(1715,'商河县','0',261,0,'',1,0,'',NULL,0),(1716,'章丘市','0',261,0,'',1,0,'',NULL,0),(1717,'市南区','0',262,0,'',1,0,'',NULL,0),(1718,'市北区','0',262,0,'',1,0,'',NULL,0),(1719,'四方区','0',262,0,'',1,0,'',NULL,0),(1720,'黄岛区','0',262,0,'',1,0,'',NULL,0),(1721,'崂山区','0',262,0,'',1,0,'',NULL,0),(1722,'李沧区','0',262,0,'',1,0,'',NULL,0),(1723,'城阳区','0',262,0,'',1,0,'',NULL,0),(1724,'胶州市','0',262,0,'',1,0,'',NULL,0),(1725,'即墨市','0',262,0,'',1,0,'',NULL,0),(1726,'平度市','0',262,0,'',1,0,'',NULL,0),(1727,'胶南市','0',262,0,'',1,0,'',NULL,0),(1728,'莱西市','0',262,0,'',1,0,'',NULL,0),(1729,'淄川区','0',263,0,'',1,0,'',NULL,0),(1730,'张店区','0',263,0,'',1,0,'',NULL,0),(1731,'博山区','0',263,0,'',1,0,'',NULL,0),(1732,'临淄区','0',263,0,'',1,0,'',NULL,0),(1733,'周村区','0',263,0,'',1,0,'',NULL,0),(1734,'桓台县','0',263,0,'',1,0,'',NULL,0),(1735,'高青县','0',263,0,'',1,0,'',NULL,0),(1736,'沂源县','0',263,0,'',1,0,'',NULL,0),(1737,'市中区','0',264,0,'',1,0,'',NULL,0),(1738,'薛城区','0',264,0,'',1,0,'',NULL,0),(1739,'峄城区','0',264,0,'',1,0,'',NULL,0),(1740,'台儿庄区','0',264,0,'',1,0,'',NULL,0),(1741,'山亭区','0',264,0,'',1,0,'',NULL,0),(1742,'滕州市','0',264,0,'',1,0,'',NULL,0),(1743,'东营区','0',265,0,'',1,0,'',NULL,0),(1744,'河口区','0',265,0,'',1,0,'',NULL,0),(1745,'垦利县','0',265,0,'',1,0,'',NULL,0),(1746,'利津县','0',265,0,'',1,0,'',NULL,0),(1747,'广饶县','0',265,0,'',1,0,'',NULL,0),(1748,'芝罘区','0',266,0,'',1,0,'',NULL,0),(1749,'福山区','0',266,0,'',1,0,'',NULL,0),(1750,'牟平区','0',266,0,'',1,0,'',NULL,0),(1751,'莱山区','0',266,0,'',1,0,'',NULL,0),(1752,'长岛县','0',266,0,'',1,0,'',NULL,0),(1753,'龙口市','0',266,0,'',1,0,'',NULL,0),(1754,'莱阳市','0',266,0,'',1,0,'',NULL,0),(1755,'莱州市','0',266,0,'',1,0,'',NULL,0),(1756,'蓬莱市','0',266,0,'',1,0,'',NULL,0),(1757,'招远市','0',266,0,'',1,0,'',NULL,0),(1758,'栖霞市','0',266,0,'',1,0,'',NULL,0),(1759,'海阳市','0',266,0,'',1,0,'',NULL,0),(1760,'潍城区','0',267,0,'',1,0,'',NULL,0),(1761,'寒亭区','0',267,0,'',1,0,'',NULL,0),(1762,'坊子区','0',267,0,'',1,0,'',NULL,0),(1763,'奎文区','0',267,0,'',1,0,'',NULL,0),(1764,'临朐县','0',267,0,'',1,0,'',NULL,0),(1765,'昌乐县','0',267,0,'',1,0,'',NULL,0),(1766,'青州市','0',267,0,'',1,0,'',NULL,0),(1767,'诸城市','0',267,0,'',1,0,'',NULL,0),(1768,'寿光市','0',267,0,'',1,0,'',NULL,0),(1769,'安丘市','0',267,0,'',1,0,'',NULL,0),(1770,'高密市','0',267,0,'',1,0,'',NULL,0),(1771,'昌邑市','0',267,0,'',1,0,'',NULL,0),(1772,'市中区','0',268,0,'',1,0,'',NULL,0),(1773,'任城区','0',268,0,'',1,0,'',NULL,0),(1774,'微山县','0',268,0,'',1,0,'',NULL,0),(1775,'鱼台县','0',268,0,'',1,0,'',NULL,0),(1776,'金乡县','0',268,0,'',1,0,'',NULL,0),(1777,'嘉祥县','0',268,0,'',1,0,'',NULL,0),(1778,'汶上县','0',268,0,'',1,0,'',NULL,0),(1779,'泗水县','0',268,0,'',1,0,'',NULL,0),(1780,'梁山县','0',268,0,'',1,0,'',NULL,0),(1781,'曲阜市','0',268,0,'',1,0,'',NULL,0),(1782,'兖州市','0',268,0,'',1,0,'',NULL,0),(1783,'邹城市','0',268,0,'',1,0,'',NULL,0),(1784,'泰山区','0',269,0,'',1,0,'',NULL,0),(1785,'岱岳区','0',269,0,'',1,0,'',NULL,0),(1786,'宁阳县','0',269,0,'',1,0,'',NULL,0),(1787,'东平县','0',269,0,'',1,0,'',NULL,0),(1788,'新泰市','0',269,0,'',1,0,'',NULL,0),(1789,'肥城市','0',269,0,'',1,0,'',NULL,0),(1790,'环翠区','0',270,0,'',1,0,'',NULL,0),(1791,'文登市','0',270,0,'',1,0,'',NULL,0),(1792,'荣成市','0',270,0,'',1,0,'',NULL,0),(1793,'乳山市','0',270,0,'',1,0,'',NULL,0),(1794,'东港区','0',271,0,'',1,0,'',NULL,0),(1795,'岚山区','0',271,0,'',1,0,'',NULL,0),(1796,'五莲县','0',271,0,'',1,0,'',NULL,0),(1797,'莒县','0',271,0,'',1,0,'',NULL,0),(1798,'莱城区','0',272,0,'',1,0,'',NULL,0),(1799,'钢城区','0',272,0,'',1,0,'',NULL,0),(1800,'兰山区','0',273,0,'',1,0,'',NULL,0),(1801,'罗庄区','0',273,0,'',1,0,'',NULL,0),(1802,'河东区','0',273,0,'',1,0,'',NULL,0),(1803,'沂南县','0',273,0,'',1,0,'',NULL,0),(1804,'郯城县','0',273,0,'',1,0,'',NULL,0),(1805,'沂水县','0',273,0,'',1,0,'',NULL,0),(1806,'苍山县','0',273,0,'',1,0,'',NULL,0),(1807,'费县','0',273,0,'',1,0,'',NULL,0),(1808,'平邑县','0',273,0,'',1,0,'',NULL,0),(1809,'莒南县','0',273,0,'',1,0,'',NULL,0),(1810,'蒙阴县','0',273,0,'',1,0,'',NULL,0),(1811,'临沭县','0',273,0,'',1,0,'',NULL,0),(1812,'德城区','0',274,0,'',1,0,'',NULL,0),(1813,'陵县','0',274,0,'',1,0,'',NULL,0),(1814,'宁津县','0',274,0,'',1,0,'',NULL,0),(1815,'庆云县','0',274,0,'',1,0,'',NULL,0),(1816,'临邑县','0',274,0,'',1,0,'',NULL,0),(1817,'齐河县','0',274,0,'',1,0,'',NULL,0),(1818,'平原县','0',274,0,'',1,0,'',NULL,0),(1819,'夏津县','0',274,0,'',1,0,'',NULL,0),(1820,'武城县','0',274,0,'',1,0,'',NULL,0),(1821,'乐陵市','0',274,0,'',1,0,'',NULL,0),(1822,'禹城市','0',274,0,'',1,0,'',NULL,0),(1823,'东昌府区','0',275,0,'',1,0,'',NULL,0),(1824,'阳谷县','0',275,0,'',1,0,'',NULL,0),(1825,'莘县','0',275,0,'',1,0,'',NULL,0),(1826,'茌平县','0',275,0,'',1,0,'',NULL,0),(1827,'东阿县','0',275,0,'',1,0,'',NULL,0),(1828,'冠县','0',275,0,'',1,0,'',NULL,0),(1829,'高唐县','0',275,0,'',1,0,'',NULL,0),(1830,'临清市','0',275,0,'',1,0,'',NULL,0),(1831,'滨城区','0',276,0,'',1,0,'',NULL,0),(1832,'惠民县','0',276,0,'',1,0,'',NULL,0),(1833,'阳信县','0',276,0,'',1,0,'',NULL,0),(1834,'无棣县','0',276,0,'',1,0,'',NULL,0),(1835,'沾化县','0',276,0,'',1,0,'',NULL,0),(1836,'博兴县','0',276,0,'',1,0,'',NULL,0),(1837,'邹平县','0',276,0,'',1,0,'',NULL,0),(1838,'牡丹区','0',277,0,'',1,0,'',NULL,0),(1839,'曹县','0',277,0,'',1,0,'',NULL,0),(1840,'单县','0',277,0,'',1,0,'',NULL,0),(1841,'成武县','0',277,0,'',1,0,'',NULL,0),(1842,'巨野县','0',277,0,'',1,0,'',NULL,0),(1843,'郓城县','0',277,0,'',1,0,'',NULL,0),(1844,'鄄城县','0',277,0,'',1,0,'',NULL,0),(1845,'定陶县','0',277,0,'',1,0,'',NULL,0),(1846,'东明县','0',277,0,'',1,0,'',NULL,0),(1847,'中原区','0',278,0,'',1,0,'',NULL,0),(1848,'二七区','0',278,0,'',1,0,'',NULL,0),(1849,'管城回族区','0',278,0,'',1,0,'',NULL,0),(1850,'金水区','0',278,0,'',1,0,'',NULL,0),(1851,'上街区','0',278,0,'',1,0,'',NULL,0),(1852,'惠济区','0',278,0,'',1,0,'',NULL,0),(1853,'中牟县','0',278,0,'',1,0,'',NULL,0),(1854,'巩义市','0',278,0,'',1,0,'',NULL,0),(1855,'荥阳市','0',278,0,'',1,0,'',NULL,0),(1856,'新密市','0',278,0,'',1,0,'',NULL,0),(1857,'新郑市','0',278,0,'',1,0,'',NULL,0),(1858,'登封市','0',278,0,'',1,0,'',NULL,0),(1859,'龙亭区','0',279,0,'',1,0,'',NULL,0),(1860,'顺河回族区','0',279,0,'',1,0,'',NULL,0),(1861,'鼓楼区','0',279,0,'',1,0,'',NULL,0),(1862,'禹王台区','0',279,0,'',1,0,'',NULL,0),(1863,'金明区','0',279,0,'',1,0,'',NULL,0),(1864,'杞县','0',279,0,'',1,0,'',NULL,0),(1865,'通许县','0',279,0,'',1,0,'',NULL,0),(1866,'尉氏县','0',279,0,'',1,0,'',NULL,0),(1867,'开封县','0',279,0,'',1,0,'',NULL,0),(1868,'兰考县','0',279,0,'',1,0,'',NULL,0),(1869,'老城区','0',280,0,'',1,0,'',NULL,0),(1870,'西工区','0',280,0,'',1,0,'',NULL,0),(1871,'廛河回族区','0',280,0,'',1,0,'',NULL,0),(1872,'涧西区','0',280,0,'',1,0,'',NULL,0),(1873,'吉利区','0',280,0,'',1,0,'',NULL,0),(1874,'洛龙区','0',280,0,'',1,0,'',NULL,0),(1875,'孟津县','0',280,0,'',1,0,'',NULL,0),(1876,'新安县','0',280,0,'',1,0,'',NULL,0),(1877,'栾川县','0',280,0,'',1,0,'',NULL,0),(1878,'嵩县','0',280,0,'',1,0,'',NULL,0),(1879,'汝阳县','0',280,0,'',1,0,'',NULL,0),(1880,'宜阳县','0',280,0,'',1,0,'',NULL,0),(1881,'洛宁县','0',280,0,'',1,0,'',NULL,0),(1882,'伊川县','0',280,0,'',1,0,'',NULL,0),(1883,'偃师市','0',280,0,'',1,0,'',NULL,0),(1884,'新华区','0',281,0,'',1,0,'',NULL,0),(1885,'卫东区','0',281,0,'',1,0,'',NULL,0),(1886,'石龙区','0',281,0,'',1,0,'',NULL,0),(1887,'湛河区','0',281,0,'',1,0,'',NULL,0),(1888,'宝丰县','0',281,0,'',1,0,'',NULL,0),(1889,'叶县','0',281,0,'',1,0,'',NULL,0),(1890,'鲁山县','0',281,0,'',1,0,'',NULL,0),(1891,'郏县','0',281,0,'',1,0,'',NULL,0),(1892,'舞钢市','0',281,0,'',1,0,'',NULL,0),(1893,'汝州市','0',281,0,'',1,0,'',NULL,0),(1894,'文峰区','0',282,0,'',1,0,'',NULL,0),(1895,'北关区','0',282,0,'',1,0,'',NULL,0),(1896,'殷都区','0',282,0,'',1,0,'',NULL,0),(1897,'龙安区','0',282,0,'',1,0,'',NULL,0),(1898,'安阳县','0',282,0,'',1,0,'',NULL,0),(1899,'汤阴县','0',282,0,'',1,0,'',NULL,0),(1900,'滑县','0',282,0,'',1,0,'',NULL,0),(1901,'内黄县','0',282,0,'',1,0,'',NULL,0),(1902,'林州市','0',282,0,'',1,0,'',NULL,0),(1903,'鹤山区','0',283,0,'',1,0,'',NULL,0),(1904,'山城区','0',283,0,'',1,0,'',NULL,0),(1905,'淇滨区','0',283,0,'',1,0,'',NULL,0),(1906,'浚县','0',283,0,'',1,0,'',NULL,0),(1907,'淇县','0',283,0,'',1,0,'',NULL,0),(1908,'红旗区','0',284,0,'',1,0,'',NULL,0),(1909,'卫滨区','0',284,0,'',1,0,'',NULL,0),(1910,'凤泉区','0',284,0,'',1,0,'',NULL,0),(1911,'牧野区','0',284,0,'',1,0,'',NULL,0),(1912,'新乡县','0',284,0,'',1,0,'',NULL,0),(1913,'获嘉县','0',284,0,'',1,0,'',NULL,0),(1914,'原阳县','0',284,0,'',1,0,'',NULL,0),(1915,'延津县','0',284,0,'',1,0,'',NULL,0),(1916,'封丘县','0',284,0,'',1,0,'',NULL,0),(1917,'长垣县','0',284,0,'',1,0,'',NULL,0),(1918,'卫辉市','0',284,0,'',1,0,'',NULL,0),(1919,'辉县市','0',284,0,'',1,0,'',NULL,0),(1920,'解放区','0',285,0,'',1,0,'',NULL,0),(1921,'中站区','0',285,0,'',1,0,'',NULL,0),(1922,'马村区','0',285,0,'',1,0,'',NULL,0),(1923,'山阳区','0',285,0,'',1,0,'',NULL,0),(1924,'修武县','0',285,0,'',1,0,'',NULL,0),(1925,'博爱县','0',285,0,'',1,0,'',NULL,0),(1926,'武陟县','0',285,0,'',1,0,'',NULL,0),(1927,'温县','0',285,0,'',1,0,'',NULL,0),(1928,'济源市','0',285,0,'',1,0,'',NULL,0),(1929,'沁阳市','0',285,0,'',1,0,'',NULL,0),(1930,'孟州市','0',285,0,'',1,0,'',NULL,0),(1931,'华龙区','0',286,0,'',1,0,'',NULL,0),(1932,'清丰县','0',286,0,'',1,0,'',NULL,0),(1933,'南乐县','0',286,0,'',1,0,'',NULL,0),(1934,'范县','0',286,0,'',1,0,'',NULL,0),(1935,'台前县','0',286,0,'',1,0,'',NULL,0),(1936,'濮阳县','0',286,0,'',1,0,'',NULL,0),(1937,'魏都区','0',287,0,'',1,0,'',NULL,0),(1938,'许昌县','0',287,0,'',1,0,'',NULL,0),(1939,'鄢陵县','0',287,0,'',1,0,'',NULL,0),(1940,'襄城县','0',287,0,'',1,0,'',NULL,0),(1941,'禹州市','0',287,0,'',1,0,'',NULL,0),(1942,'长葛市','0',287,0,'',1,0,'',NULL,0),(1943,'源汇区','0',288,0,'',1,0,'',NULL,0),(1944,'郾城区','0',288,0,'',1,0,'',NULL,0),(1945,'召陵区','0',288,0,'',1,0,'',NULL,0),(1946,'舞阳县','0',288,0,'',1,0,'',NULL,0),(1947,'临颍县','0',288,0,'',1,0,'',NULL,0),(1948,'湖滨区','0',289,0,'',1,0,'',NULL,0),(1949,'渑池县','0',289,0,'',1,0,'',NULL,0),(1950,'陕县','0',289,0,'',1,0,'',NULL,0),(1951,'卢氏县','0',289,0,'',1,0,'',NULL,0),(1952,'义马市','0',289,0,'',1,0,'',NULL,0),(1953,'灵宝市','0',289,0,'',1,0,'',NULL,0),(1954,'宛城区','0',290,0,'',1,0,'',NULL,0),(1955,'卧龙区','0',290,0,'',1,0,'',NULL,0),(1956,'南召县','0',290,0,'',1,0,'',NULL,0),(1957,'方城县','0',290,0,'',1,0,'',NULL,0),(1958,'西峡县','0',290,0,'',1,0,'',NULL,0),(1959,'镇平县','0',290,0,'',1,0,'',NULL,0),(1960,'内乡县','0',290,0,'',1,0,'',NULL,0),(1961,'淅川县','0',290,0,'',1,0,'',NULL,0),(1962,'社旗县','0',290,0,'',1,0,'',NULL,0),(1963,'唐河县','0',290,0,'',1,0,'',NULL,0),(1964,'新野县','0',290,0,'',1,0,'',NULL,0),(1965,'桐柏县','0',290,0,'',1,0,'',NULL,0),(1966,'邓州市','0',290,0,'',1,0,'',NULL,0),(1967,'梁园区','0',291,0,'',1,0,'',NULL,0),(1968,'睢阳区','0',291,0,'',1,0,'',NULL,0),(1969,'民权县','0',291,0,'',1,0,'',NULL,0),(1970,'睢县','0',291,0,'',1,0,'',NULL,0),(1971,'宁陵县','0',291,0,'',1,0,'',NULL,0),(1972,'柘城县','0',291,0,'',1,0,'',NULL,0),(1973,'虞城县','0',291,0,'',1,0,'',NULL,0),(1974,'夏邑县','0',291,0,'',1,0,'',NULL,0),(1975,'永城市','0',291,0,'',1,0,'',NULL,0),(1976,'浉河区','0',292,0,'',1,0,'',NULL,0),(1977,'平桥区','0',292,0,'',1,0,'',NULL,0),(1978,'罗山县','0',292,0,'',1,0,'',NULL,0),(1979,'光山县','0',292,0,'',1,0,'',NULL,0),(1980,'新县','0',292,0,'',1,0,'',NULL,0),(1981,'商城县','0',292,0,'',1,0,'',NULL,0),(1982,'固始县','0',292,0,'',1,0,'',NULL,0),(1983,'潢川县','0',292,0,'',1,0,'',NULL,0),(1984,'淮滨县','0',292,0,'',1,0,'',NULL,0),(1985,'息县','0',292,0,'',1,0,'',NULL,0),(1986,'川汇区','0',293,0,'',1,0,'',NULL,0),(1987,'扶沟县','0',293,0,'',1,0,'',NULL,0),(1988,'西华县','0',293,0,'',1,0,'',NULL,0),(1989,'商水县','0',293,0,'',1,0,'',NULL,0),(1990,'沈丘县','0',293,0,'',1,0,'',NULL,0),(1991,'郸城县','0',293,0,'',1,0,'',NULL,0),(1992,'淮阳县','0',293,0,'',1,0,'',NULL,0),(1993,'太康县','0',293,0,'',1,0,'',NULL,0),(1994,'鹿邑县','0',293,0,'',1,0,'',NULL,0),(1995,'项城市','0',293,0,'',1,0,'',NULL,0),(1996,'驿城区','0',294,0,'',1,0,'',NULL,0),(1997,'西平县','0',294,0,'',1,0,'',NULL,0),(1998,'上蔡县','0',294,0,'',1,0,'',NULL,0),(1999,'平舆县','0',294,0,'',1,0,'',NULL,0),(2000,'正阳县','0',294,0,'',1,0,'',NULL,0),(2001,'确山县','0',294,0,'',1,0,'',NULL,0),(2002,'泌阳县','0',294,0,'',1,0,'',NULL,0),(2003,'汝南县','0',294,0,'',1,0,'',NULL,0),(2004,'遂平县','0',294,0,'',1,0,'',NULL,0),(2005,'新蔡县','0',294,0,'',1,0,'',NULL,0),(2006,'江岸区','0',295,0,'',1,0,'',NULL,0),(2007,'江汉区','0',295,0,'',1,0,'',NULL,0),(2008,'硚口区','0',295,0,'',1,0,'',NULL,0),(2009,'汉阳区','0',295,0,'',1,0,'',NULL,0),(2010,'武昌区','0',295,0,'',1,0,'',NULL,0),(2011,'青山区','0',295,0,'',1,0,'',NULL,0),(2012,'洪山区','0',295,0,'',1,0,'',NULL,0),(2013,'东西湖区','0',295,0,'',1,0,'',NULL,0),(2014,'汉南区','0',295,0,'',1,0,'',NULL,0),(2015,'蔡甸区','0',295,0,'',1,0,'',NULL,0),(2016,'江夏区','0',295,0,'',1,0,'',NULL,0),(2017,'黄陂区','0',295,0,'',1,0,'',NULL,0),(2018,'新洲区','0',295,0,'',1,0,'',NULL,0),(2019,'黄石港区','0',296,0,'',1,0,'',NULL,0),(2020,'西塞山区','0',296,0,'',1,0,'',NULL,0),(2021,'下陆区','0',296,0,'',1,0,'',NULL,0),(2022,'铁山区','0',296,0,'',1,0,'',NULL,0),(2023,'阳新县','0',296,0,'',1,0,'',NULL,0),(2024,'大冶市','0',296,0,'',1,0,'',NULL,0),(2025,'茅箭区','0',297,0,'',1,0,'',NULL,0),(2026,'张湾区','0',297,0,'',1,0,'',NULL,0),(2027,'郧县','0',297,0,'',1,0,'',NULL,0),(2028,'郧西县','0',297,0,'',1,0,'',NULL,0),(2029,'竹山县','0',297,0,'',1,0,'',NULL,0),(2030,'竹溪县','0',297,0,'',1,0,'',NULL,0),(2031,'房县','0',297,0,'',1,0,'',NULL,0),(2032,'丹江口市','0',297,0,'',1,0,'',NULL,0),(2033,'西陵区','0',298,0,'',1,0,'',NULL,0),(2034,'伍家岗区','0',298,0,'',1,0,'',NULL,0),(2035,'点军区','0',298,0,'',1,0,'',NULL,0),(2036,'猇亭区','0',298,0,'',1,0,'',NULL,0),(2037,'夷陵区','0',298,0,'',1,0,'',NULL,0),(2038,'远安县','0',298,0,'',1,0,'',NULL,0),(2039,'兴山县','0',298,0,'',1,0,'',NULL,0),(2040,'秭归县','0',298,0,'',1,0,'',NULL,0),(2041,'长阳土家族自治县','0',298,0,'',1,0,'',NULL,0),(2042,'五峰土家族自治县','0',298,0,'',1,0,'',NULL,0),(2043,'宜都市','0',298,0,'',1,0,'',NULL,0),(2044,'当阳市','0',298,0,'',1,0,'',NULL,0),(2045,'枝江市','0',298,0,'',1,0,'',NULL,0),(2046,'襄城区','0',299,0,'',1,0,'',NULL,0),(2047,'樊城区','0',299,0,'',1,0,'',NULL,0),(2048,'襄阳区','0',299,0,'',1,0,'',NULL,0),(2049,'南漳县','0',299,0,'',1,0,'',NULL,0),(2050,'谷城县','0',299,0,'',1,0,'',NULL,0),(2051,'保康县','0',299,0,'',1,0,'',NULL,0),(2052,'老河口市','0',299,0,'',1,0,'',NULL,0),(2053,'枣阳市','0',299,0,'',1,0,'',NULL,0),(2054,'宜城市','0',299,0,'',1,0,'',NULL,0),(2055,'梁子湖区','0',300,0,'',1,0,'',NULL,0),(2056,'华容区','0',300,0,'',1,0,'',NULL,0),(2057,'鄂城区','0',300,0,'',1,0,'',NULL,0),(2058,'东宝区','0',301,0,'',1,0,'',NULL,0),(2059,'掇刀区','0',301,0,'',1,0,'',NULL,0),(2060,'京山县','0',301,0,'',1,0,'',NULL,0),(2061,'沙洋县','0',301,0,'',1,0,'',NULL,0),(2062,'钟祥市','0',301,0,'',1,0,'',NULL,0),(2063,'孝南区','0',302,0,'',1,0,'',NULL,0),(2064,'孝昌县','0',302,0,'',1,0,'',NULL,0),(2065,'大悟县','0',302,0,'',1,0,'',NULL,0),(2066,'云梦县','0',302,0,'',1,0,'',NULL,0),(2067,'应城市','0',302,0,'',1,0,'',NULL,0),(2068,'安陆市','0',302,0,'',1,0,'',NULL,0),(2069,'汉川市','0',302,0,'',1,0,'',NULL,0),(2070,'沙市区','0',303,0,'',1,0,'',NULL,0),(2071,'荆州区','0',303,0,'',1,0,'',NULL,0),(2072,'公安县','0',303,0,'',1,0,'',NULL,0),(2073,'监利县','0',303,0,'',1,0,'',NULL,0),(2074,'江陵县','0',303,0,'',1,0,'',NULL,0),(2075,'石首市','0',303,0,'',1,0,'',NULL,0),(2076,'洪湖市','0',303,0,'',1,0,'',NULL,0),(2077,'松滋市','0',303,0,'',1,0,'',NULL,0),(2078,'黄州区','0',304,0,'',1,0,'',NULL,0),(2079,'团风县','0',304,0,'',1,0,'',NULL,0),(2080,'红安县','0',304,0,'',1,0,'',NULL,0),(2081,'罗田县','0',304,0,'',1,0,'',NULL,0),(2082,'英山县','0',304,0,'',1,0,'',NULL,0),(2083,'浠水县','0',304,0,'',1,0,'',NULL,0),(2084,'蕲春县','0',304,0,'',1,0,'',NULL,0),(2085,'黄梅县','0',304,0,'',1,0,'',NULL,0),(2086,'麻城市','0',304,0,'',1,0,'',NULL,0),(2087,'武穴市','0',304,0,'',1,0,'',NULL,0),(2088,'咸安区','0',305,0,'',1,0,'',NULL,0),(2089,'嘉鱼县','0',305,0,'',1,0,'',NULL,0),(2090,'通城县','0',305,0,'',1,0,'',NULL,0),(2091,'崇阳县','0',305,0,'',1,0,'',NULL,0),(2092,'通山县','0',305,0,'',1,0,'',NULL,0),(2093,'赤壁市','0',305,0,'',1,0,'',NULL,0),(2094,'曾都区','0',306,0,'',1,0,'',NULL,0),(2095,'广水市','0',306,0,'',1,0,'',NULL,0),(2096,'恩施市','0',307,0,'',1,0,'',NULL,0),(2097,'利川市','0',307,0,'',1,0,'',NULL,0),(2098,'建始县','0',307,0,'',1,0,'',NULL,0),(2099,'巴东县','0',307,0,'',1,0,'',NULL,0),(2100,'宣恩县','0',307,0,'',1,0,'',NULL,0),(2101,'咸丰县','0',307,0,'',1,0,'',NULL,0),(2102,'来凤县','0',307,0,'',1,0,'',NULL,0),(2103,'鹤峰县','0',307,0,'',1,0,'',NULL,0),(2104,'芙蓉区','0',312,0,'',1,0,'',NULL,0),(2105,'天心区','0',312,0,'',1,0,'',NULL,0),(2106,'岳麓区','0',312,0,'',1,0,'',NULL,0),(2107,'开福区','0',312,0,'',1,0,'',NULL,0),(2108,'雨花区','0',312,0,'',1,0,'',NULL,0),(2109,'长沙县','0',312,0,'',1,0,'',NULL,0),(2110,'望城县','0',312,0,'',1,0,'',NULL,0),(2111,'宁乡县','0',312,0,'',1,0,'',NULL,0),(2112,'浏阳市','0',312,0,'',1,0,'',NULL,0),(2113,'荷塘区','0',313,0,'',1,0,'',NULL,0),(2114,'芦淞区','0',313,0,'',1,0,'',NULL,0),(2115,'石峰区','0',313,0,'',1,0,'',NULL,0),(2116,'天元区','0',313,0,'',1,0,'',NULL,0),(2117,'株洲县','0',313,0,'',1,0,'',NULL,0),(2118,'攸县','0',313,0,'',1,0,'',NULL,0),(2119,'茶陵县','0',313,0,'',1,0,'',NULL,0),(2120,'炎陵县','0',313,0,'',1,0,'',NULL,0),(2121,'醴陵市','0',313,0,'',1,0,'',NULL,0),(2122,'雨湖区','0',314,0,'',1,0,'',NULL,0),(2123,'岳塘区','0',314,0,'',1,0,'',NULL,0),(2124,'湘潭县','0',314,0,'',1,0,'',NULL,0),(2125,'湘乡市','0',314,0,'',1,0,'',NULL,0),(2126,'韶山市','0',314,0,'',1,0,'',NULL,0),(2127,'珠晖区','0',315,0,'',1,0,'',NULL,0),(2128,'雁峰区','0',315,0,'',1,0,'',NULL,0),(2129,'石鼓区','0',315,0,'',1,0,'',NULL,0),(2130,'蒸湘区','0',315,0,'',1,0,'',NULL,0),(2131,'南岳区','0',315,0,'',1,0,'',NULL,0),(2132,'衡阳县','0',315,0,'',1,0,'',NULL,0),(2133,'衡南县','0',315,0,'',1,0,'',NULL,0),(2134,'衡山县','0',315,0,'',1,0,'',NULL,0),(2135,'衡东县','0',315,0,'',1,0,'',NULL,0),(2136,'祁东县','0',315,0,'',1,0,'',NULL,0),(2137,'耒阳市','0',315,0,'',1,0,'',NULL,0),(2138,'常宁市','0',315,0,'',1,0,'',NULL,0),(2139,'双清区','0',316,0,'',1,0,'',NULL,0),(2140,'大祥区','0',316,0,'',1,0,'',NULL,0),(2141,'北塔区','0',316,0,'',1,0,'',NULL,0),(2142,'邵东县','0',316,0,'',1,0,'',NULL,0),(2143,'新邵县','0',316,0,'',1,0,'',NULL,0),(2144,'邵阳县','0',316,0,'',1,0,'',NULL,0),(2145,'隆回县','0',316,0,'',1,0,'',NULL,0),(2146,'洞口县','0',316,0,'',1,0,'',NULL,0),(2147,'绥宁县','0',316,0,'',1,0,'',NULL,0),(2148,'新宁县','0',316,0,'',1,0,'',NULL,0),(2149,'城步苗族自治县','0',316,0,'',1,0,'',NULL,0),(2150,'武冈市','0',316,0,'',1,0,'',NULL,0),(2151,'岳阳楼区','0',317,0,'',1,0,'',NULL,0),(2152,'云溪区','0',317,0,'',1,0,'',NULL,0),(2153,'君山区','0',317,0,'',1,0,'',NULL,0),(2154,'岳阳县','0',317,0,'',1,0,'',NULL,0),(2155,'华容县','0',317,0,'',1,0,'',NULL,0),(2156,'湘阴县','0',317,0,'',1,0,'',NULL,0),(2157,'平江县','0',317,0,'',1,0,'',NULL,0),(2158,'汨罗市','0',317,0,'',1,0,'',NULL,0),(2159,'临湘市','0',317,0,'',1,0,'',NULL,0),(2160,'武陵区','0',318,0,'',1,0,'',NULL,0),(2161,'鼎城区','0',318,0,'',1,0,'',NULL,0),(2162,'安乡县','0',318,0,'',1,0,'',NULL,0),(2163,'汉寿县','0',318,0,'',1,0,'',NULL,0),(2164,'澧县','0',318,0,'',1,0,'',NULL,0),(2165,'临澧县','0',318,0,'',1,0,'',NULL,0),(2166,'桃源县','0',318,0,'',1,0,'',NULL,0),(2167,'石门县','0',318,0,'',1,0,'',NULL,0),(2168,'津市市','0',318,0,'',1,0,'',NULL,0),(2169,'永定区','0',319,0,'',1,0,'',NULL,0),(2170,'武陵源区','0',319,0,'',1,0,'',NULL,0),(2171,'慈利县','0',319,0,'',1,0,'',NULL,0),(2172,'桑植县','0',319,0,'',1,0,'',NULL,0),(2173,'资阳区','0',320,0,'',1,0,'',NULL,0),(2174,'赫山区','0',320,0,'',1,0,'',NULL,0),(2175,'南县','0',320,0,'',1,0,'',NULL,0),(2176,'桃江县','0',320,0,'',1,0,'',NULL,0),(2177,'安化县','0',320,0,'',1,0,'',NULL,0),(2178,'沅江市','0',320,0,'',1,0,'',NULL,0),(2179,'北湖区','0',321,0,'',1,0,'',NULL,0),(2180,'苏仙区','0',321,0,'',1,0,'',NULL,0),(2181,'桂阳县','0',321,0,'',1,0,'',NULL,0),(2182,'宜章县','0',321,0,'',1,0,'',NULL,0),(2183,'永兴县','0',321,0,'',1,0,'',NULL,0),(2184,'嘉禾县','0',321,0,'',1,0,'',NULL,0),(2185,'临武县','0',321,0,'',1,0,'',NULL,0),(2186,'汝城县','0',321,0,'',1,0,'',NULL,0),(2187,'桂东县','0',321,0,'',1,0,'',NULL,0),(2188,'安仁县','0',321,0,'',1,0,'',NULL,0),(2189,'资兴市','0',321,0,'',1,0,'',NULL,0),(2190,'零陵区','0',322,0,'',1,0,'',NULL,0),(2191,'冷水滩区','0',322,0,'',1,0,'',NULL,0),(2192,'祁阳县','0',322,0,'',1,0,'',NULL,0),(2193,'东安县','0',322,0,'',1,0,'',NULL,0),(2194,'双牌县','0',322,0,'',1,0,'',NULL,0),(2195,'道县','0',322,0,'',1,0,'',NULL,0),(2196,'江永县','0',322,0,'',1,0,'',NULL,0),(2197,'宁远县','0',322,0,'',1,0,'',NULL,0),(2198,'蓝山县','0',322,0,'',1,0,'',NULL,0),(2199,'新田县','0',322,0,'',1,0,'',NULL,0),(2200,'江华瑶族自治县','0',322,0,'',1,0,'',NULL,0),(2201,'鹤城区','0',323,0,'',1,0,'',NULL,0),(2202,'中方县','0',323,0,'',1,0,'',NULL,0),(2203,'沅陵县','0',323,0,'',1,0,'',NULL,0),(2204,'辰溪县','0',323,0,'',1,0,'',NULL,0),(2205,'溆浦县','0',323,0,'',1,0,'',NULL,0),(2206,'会同县','0',323,0,'',1,0,'',NULL,0),(2207,'麻阳苗族自治县','0',323,0,'',1,0,'',NULL,0),(2208,'新晃侗族自治县','0',323,0,'',1,0,'',NULL,0),(2209,'芷江侗族自治县','0',323,0,'',1,0,'',NULL,0),(2210,'靖州苗族侗族自治县','0',323,0,'',1,0,'',NULL,0),(2211,'通道侗族自治县','0',323,0,'',1,0,'',NULL,0),(2212,'洪江市','0',323,0,'',1,0,'',NULL,0),(2213,'娄星区','0',324,0,'',1,0,'',NULL,0),(2214,'双峰县','0',324,0,'',1,0,'',NULL,0),(2215,'新化县','0',324,0,'',1,0,'',NULL,0),(2216,'冷水江市','0',324,0,'',1,0,'',NULL,0),(2217,'涟源市','0',324,0,'',1,0,'',NULL,0),(2218,'吉首市','0',325,0,'',1,0,'',NULL,0),(2219,'泸溪县','0',325,0,'',1,0,'',NULL,0),(2220,'凤凰县','0',325,0,'',1,0,'',NULL,0),(2221,'花垣县','0',325,0,'',1,0,'',NULL,0),(2222,'保靖县','0',325,0,'',1,0,'',NULL,0),(2223,'古丈县','0',325,0,'',1,0,'',NULL,0),(2224,'永顺县','0',325,0,'',1,0,'',NULL,0),(2225,'龙山县','0',325,0,'',1,0,'',NULL,0),(2226,'荔湾区','0',326,0,'',1,0,'',NULL,0),(2227,'越秀区','0',326,0,'',1,0,'',NULL,0),(2228,'海珠区','0',326,0,'',1,0,'',NULL,0),(2229,'天河区','0',326,0,'',1,0,'',NULL,0),(2230,'白云区','0',326,0,'',1,0,'',NULL,0),(2231,'黄埔区','0',326,0,'',1,0,'',NULL,0),(2232,'番禺区','0',326,0,'',1,0,'',NULL,0),(2233,'花都区','0',326,0,'',1,0,'',NULL,0),(2234,'南沙区','0',326,0,'',1,0,'',NULL,0),(2235,'萝岗区','0',326,0,'',1,0,'',NULL,0),(2236,'增城市','0',326,0,'',1,0,'',NULL,0),(2237,'从化市','0',326,0,'',1,0,'',NULL,0),(2238,'武江区','0',327,0,'',1,0,'',NULL,0),(2239,'浈江区','0',327,0,'',1,0,'',NULL,0),(2240,'曲江区','0',327,0,'',1,0,'',NULL,0),(2241,'始兴县','0',327,0,'',1,0,'',NULL,0),(2242,'仁化县','0',327,0,'',1,0,'',NULL,0),(2243,'翁源县','0',327,0,'',1,0,'',NULL,0),(2244,'乳源瑶族自治县','0',327,0,'',1,0,'',NULL,0),(2245,'新丰县','0',327,0,'',1,0,'',NULL,0),(2246,'乐昌市','0',327,0,'',1,0,'',NULL,0),(2247,'南雄市','0',327,0,'',1,0,'',NULL,0),(2248,'罗湖区','0',328,0,'',1,0,'',NULL,0),(2249,'福田区','0',328,0,'',1,0,'',NULL,0),(2250,'南山区','0',328,0,'',1,0,'',NULL,0),(2251,'宝安区','0',328,0,'',1,0,'',NULL,0),(2252,'龙岗区','0',328,0,'',1,0,'',NULL,0),(2253,'盐田区','0',328,0,'',1,0,'',NULL,0),(2254,'香洲区','0',329,0,'',1,0,'',NULL,0),(2255,'斗门区','0',329,0,'',1,0,'',NULL,0),(2256,'金湾区','0',329,0,'',1,0,'',NULL,0),(2257,'龙湖区','0',330,0,'',1,0,'',NULL,0),(2258,'金平区','0',330,0,'',1,0,'',NULL,0),(2259,'濠江区','0',330,0,'',1,0,'',NULL,0),(2260,'潮阳区','0',330,0,'',1,0,'',NULL,0),(2261,'潮南区','0',330,0,'',1,0,'',NULL,0),(2262,'澄海区','0',330,0,'',1,0,'',NULL,0),(2263,'南澳县','0',330,0,'',1,0,'',NULL,0),(2264,'禅城区','0',331,0,'',1,0,'',NULL,0),(2265,'南海区','0',331,0,'',1,0,'',NULL,0),(2266,'顺德区','0',331,0,'',1,0,'',NULL,0),(2267,'三水区','0',331,0,'',1,0,'',NULL,0),(2268,'高明区','0',331,0,'',1,0,'',NULL,0),(2269,'蓬江区','0',332,0,'',1,0,'',NULL,0),(2270,'江海区','0',332,0,'',1,0,'',NULL,0),(2271,'新会区','0',332,0,'',1,0,'',NULL,0),(2272,'台山市','0',332,0,'',1,0,'',NULL,0),(2273,'开平市','0',332,0,'',1,0,'',NULL,0),(2274,'鹤山市','0',332,0,'',1,0,'',NULL,0),(2275,'恩平市','0',332,0,'',1,0,'',NULL,0),(2276,'赤坎区','0',333,0,'',1,0,'',NULL,0),(2277,'霞山区','0',333,0,'',1,0,'',NULL,0),(2278,'坡头区','0',333,0,'',1,0,'',NULL,0),(2279,'麻章区','0',333,0,'',1,0,'',NULL,0),(2280,'遂溪县','0',333,0,'',1,0,'',NULL,0),(2281,'徐闻县','0',333,0,'',1,0,'',NULL,0),(2282,'廉江市','0',333,0,'',1,0,'',NULL,0),(2283,'雷州市','0',333,0,'',1,0,'',NULL,0),(2284,'吴川市','0',333,0,'',1,0,'',NULL,0),(2285,'茂南区','0',334,0,'',1,0,'',NULL,0),(2286,'茂港区','0',334,0,'',1,0,'',NULL,0),(2287,'电白县','0',334,0,'',1,0,'',NULL,0),(2288,'高州市','0',334,0,'',1,0,'',NULL,0),(2289,'化州市','0',334,0,'',1,0,'',NULL,0),(2290,'信宜市','0',334,0,'',1,0,'',NULL,0),(2291,'端州区','0',335,0,'',1,0,'',NULL,0),(2292,'鼎湖区','0',335,0,'',1,0,'',NULL,0),(2293,'广宁县','0',335,0,'',1,0,'',NULL,0),(2294,'怀集县','0',335,0,'',1,0,'',NULL,0),(2295,'封开县','0',335,0,'',1,0,'',NULL,0),(2296,'德庆县','0',335,0,'',1,0,'',NULL,0),(2297,'高要市','0',335,0,'',1,0,'',NULL,0),(2298,'四会市','0',335,0,'',1,0,'',NULL,0),(2299,'惠城区','0',336,0,'',1,0,'',NULL,0),(2300,'惠阳区','0',336,0,'',1,0,'',NULL,0),(2301,'博罗县','0',336,0,'',1,0,'',NULL,0),(2302,'惠东县','0',336,0,'',1,0,'',NULL,0),(2303,'龙门县','0',336,0,'',1,0,'',NULL,0),(2304,'梅江区','0',337,0,'',1,0,'',NULL,0),(2305,'梅县','0',337,0,'',1,0,'',NULL,0),(2306,'大埔县','0',337,0,'',1,0,'',NULL,0),(2307,'丰顺县','0',337,0,'',1,0,'',NULL,0),(2308,'五华县','0',337,0,'',1,0,'',NULL,0),(2309,'平远县','0',337,0,'',1,0,'',NULL,0),(2310,'蕉岭县','0',337,0,'',1,0,'',NULL,0),(2311,'兴宁市','0',337,0,'',1,0,'',NULL,0),(2312,'城区','0',338,0,'',1,0,'',NULL,0),(2313,'海丰县','0',338,0,'',1,0,'',NULL,0),(2314,'陆河县','0',338,0,'',1,0,'',NULL,0),(2315,'陆丰市','0',338,0,'',1,0,'',NULL,0),(2316,'源城区','0',339,0,'',1,0,'',NULL,0),(2317,'紫金县','0',339,0,'',1,0,'',NULL,0),(2318,'龙川县','0',339,0,'',1,0,'',NULL,0),(2319,'连平县','0',339,0,'',1,0,'',NULL,0),(2320,'和平县','0',339,0,'',1,0,'',NULL,0),(2321,'东源县','0',339,0,'',1,0,'',NULL,0),(2322,'江城区','0',340,0,'',1,0,'',NULL,0),(2323,'阳西县','0',340,0,'',1,0,'',NULL,0),(2324,'阳东县','0',340,0,'',1,0,'',NULL,0),(2325,'阳春市','0',340,0,'',1,0,'',NULL,0),(2326,'清城区','0',341,0,'',1,0,'',NULL,0),(2327,'佛冈县','0',341,0,'',1,0,'',NULL,0),(2328,'阳山县','0',341,0,'',1,0,'',NULL,0),(2329,'连山壮族瑶族自治县','0',341,0,'',1,0,'',NULL,0),(2330,'连南瑶族自治县','0',341,0,'',1,0,'',NULL,0),(2331,'清新县','0',341,0,'',1,0,'',NULL,0),(2332,'英德市','0',341,0,'',1,0,'',NULL,0),(2333,'连州市','0',341,0,'',1,0,'',NULL,0),(2334,'湘桥区','0',344,0,'',1,0,'',NULL,0),(2335,'潮安县','0',344,0,'',1,0,'',NULL,0),(2336,'饶平县','0',344,0,'',1,0,'',NULL,0),(2337,'榕城区','0',345,0,'',1,0,'',NULL,0),(2338,'揭东县','0',345,0,'',1,0,'',NULL,0),(2339,'揭西县','0',345,0,'',1,0,'',NULL,0),(2340,'惠来县','0',345,0,'',1,0,'',NULL,0),(2341,'普宁市','0',345,0,'',1,0,'',NULL,0),(2342,'云城区','0',346,0,'',1,0,'',NULL,0),(2343,'新兴县','0',346,0,'',1,0,'',NULL,0),(2344,'郁南县','0',346,0,'',1,0,'',NULL,0),(2345,'云安县','0',346,0,'',1,0,'',NULL,0),(2346,'罗定市','0',346,0,'',1,0,'',NULL,0),(2347,'兴宁区','0',347,0,'',1,0,'',NULL,0),(2348,'青秀区','0',347,0,'',1,0,'',NULL,0),(2349,'江南区','0',347,0,'',1,0,'',NULL,0),(2350,'西乡塘区','0',347,0,'',1,0,'',NULL,0),(2351,'良庆区','0',347,0,'',1,0,'',NULL,0),(2352,'邕宁区','0',347,0,'',1,0,'',NULL,0),(2353,'武鸣县','0',347,0,'',1,0,'',NULL,0),(2354,'隆安县','0',347,0,'',1,0,'',NULL,0),(2355,'马山县','0',347,0,'',1,0,'',NULL,0),(2356,'上林县','0',347,0,'',1,0,'',NULL,0),(2357,'宾阳县','0',347,0,'',1,0,'',NULL,0),(2358,'横县','0',347,0,'',1,0,'',NULL,0),(2359,'城中区','0',348,0,'',1,0,'',NULL,0),(2360,'鱼峰区','0',348,0,'',1,0,'',NULL,0),(2361,'柳南区','0',348,0,'',1,0,'',NULL,0),(2362,'柳北区','0',348,0,'',1,0,'',NULL,0),(2363,'柳江县','0',348,0,'',1,0,'',NULL,0),(2364,'柳城县','0',348,0,'',1,0,'',NULL,0),(2365,'鹿寨县','0',348,0,'',1,0,'',NULL,0),(2366,'融安县','0',348,0,'',1,0,'',NULL,0),(2367,'融水苗族自治县','0',348,0,'',1,0,'',NULL,0),(2368,'三江侗族自治县','0',348,0,'',1,0,'',NULL,0),(2369,'秀峰区','0',349,0,'',1,0,'',NULL,0),(2370,'叠彩区','0',349,0,'',1,0,'',NULL,0),(2371,'象山区','0',349,0,'',1,0,'',NULL,0),(2372,'七星区','0',349,0,'',1,0,'',NULL,0),(2373,'雁山区','0',349,0,'',1,0,'',NULL,0),(2374,'阳朔县','0',349,0,'',1,0,'',NULL,0),(2375,'临桂县','0',349,0,'',1,0,'',NULL,0),(2376,'灵川县','0',349,0,'',1,0,'',NULL,0),(2377,'全州县','0',349,0,'',1,0,'',NULL,0),(2378,'兴安县','0',349,0,'',1,0,'',NULL,0),(2379,'永福县','0',349,0,'',1,0,'',NULL,0),(2380,'灌阳县','0',349,0,'',1,0,'',NULL,0),(2381,'龙胜各族自治县','0',349,0,'',1,0,'',NULL,0),(2382,'资源县','0',349,0,'',1,0,'',NULL,0),(2383,'平乐县','0',349,0,'',1,0,'',NULL,0),(2384,'荔蒲县','0',349,0,'',1,0,'',NULL,0),(2385,'恭城瑶族自治县','0',349,0,'',1,0,'',NULL,0),(2386,'万秀区','0',350,0,'',1,0,'',NULL,0),(2387,'蝶山区','0',350,0,'',1,0,'',NULL,0),(2388,'长洲区','0',350,0,'',1,0,'',NULL,0),(2389,'苍梧县','0',350,0,'',1,0,'',NULL,0),(2390,'藤县','0',350,0,'',1,0,'',NULL,0),(2391,'蒙山县','0',350,0,'',1,0,'',NULL,0),(2392,'岑溪市','0',350,0,'',1,0,'',NULL,0),(2393,'海城区','0',351,0,'',1,0,'',NULL,0),(2394,'银海区','0',351,0,'',1,0,'',NULL,0),(2395,'铁山港区','0',351,0,'',1,0,'',NULL,0),(2396,'合浦县','0',351,0,'',1,0,'',NULL,0),(2397,'港口区','0',352,0,'',1,0,'',NULL,0),(2398,'防城区','0',352,0,'',1,0,'',NULL,0),(2399,'上思县','0',352,0,'',1,0,'',NULL,0),(2400,'东兴市','0',352,0,'',1,0,'',NULL,0),(2401,'钦南区','0',353,0,'',1,0,'',NULL,0),(2402,'钦北区','0',353,0,'',1,0,'',NULL,0),(2403,'灵山县','0',353,0,'',1,0,'',NULL,0),(2404,'浦北县','0',353,0,'',1,0,'',NULL,0),(2405,'港北区','0',354,0,'',1,0,'',NULL,0),(2406,'港南区','0',354,0,'',1,0,'',NULL,0),(2407,'覃塘区','0',354,0,'',1,0,'',NULL,0),(2408,'平南县','0',354,0,'',1,0,'',NULL,0),(2409,'桂平市','0',354,0,'',1,0,'',NULL,0),(2410,'玉州区','0',355,0,'',1,0,'',NULL,0),(2411,'容县','0',355,0,'',1,0,'',NULL,0),(2412,'陆川县','0',355,0,'',1,0,'',NULL,0),(2413,'博白县','0',355,0,'',1,0,'',NULL,0),(2414,'兴业县','0',355,0,'',1,0,'',NULL,0),(2415,'北流市','0',355,0,'',1,0,'',NULL,0),(2416,'右江区','0',356,0,'',1,0,'',NULL,0),(2417,'田阳县','0',356,0,'',1,0,'',NULL,0),(2418,'田东县','0',356,0,'',1,0,'',NULL,0),(2419,'平果县','0',356,0,'',1,0,'',NULL,0),(2420,'德保县','0',356,0,'',1,0,'',NULL,0),(2421,'靖西县','0',356,0,'',1,0,'',NULL,0),(2422,'那坡县','0',356,0,'',1,0,'',NULL,0),(2423,'凌云县','0',356,0,'',1,0,'',NULL,0),(2424,'乐业县','0',356,0,'',1,0,'',NULL,0),(2425,'田林县','0',356,0,'',1,0,'',NULL,0),(2426,'西林县','0',356,0,'',1,0,'',NULL,0),(2427,'隆林各族自治县','0',356,0,'',1,0,'',NULL,0),(2428,'八步区','0',357,0,'',1,0,'',NULL,0),(2429,'昭平县','0',357,0,'',1,0,'',NULL,0),(2430,'钟山县','0',357,0,'',1,0,'',NULL,0),(2431,'富川瑶族自治县','0',357,0,'',1,0,'',NULL,0),(2432,'金城江区','0',358,0,'',1,0,'',NULL,0),(2433,'南丹县','0',358,0,'',1,0,'',NULL,0),(2434,'天峨县','0',358,0,'',1,0,'',NULL,0),(2435,'凤山县','0',358,0,'',1,0,'',NULL,0),(2436,'东兰县','0',358,0,'',1,0,'',NULL,0),(2437,'罗城仫佬族自治县','0',358,0,'',1,0,'',NULL,0),(2438,'环江毛南族自治县','0',358,0,'',1,0,'',NULL,0),(2439,'巴马瑶族自治县','0',358,0,'',1,0,'',NULL,0),(2440,'都安瑶族自治县','0',358,0,'',1,0,'',NULL,0),(2441,'大化瑶族自治县','0',358,0,'',1,0,'',NULL,0),(2442,'宜州市','0',358,0,'',1,0,'',NULL,0),(2443,'兴宾区','0',359,0,'',1,0,'',NULL,0),(2444,'忻城县','0',359,0,'',1,0,'',NULL,0),(2445,'象州县','0',359,0,'',1,0,'',NULL,0),(2446,'武宣县','0',359,0,'',1,0,'',NULL,0),(2447,'金秀瑶族自治县','0',359,0,'',1,0,'',NULL,0),(2448,'合山市','0',359,0,'',1,0,'',NULL,0),(2449,'江洲区','0',360,0,'',1,0,'',NULL,0),(2450,'扶绥县','0',360,0,'',1,0,'',NULL,0),(2451,'宁明县','0',360,0,'',1,0,'',NULL,0),(2452,'龙州县','0',360,0,'',1,0,'',NULL,0),(2453,'大新县','0',360,0,'',1,0,'',NULL,0),(2454,'天等县','0',360,0,'',1,0,'',NULL,0),(2455,'凭祥市','0',360,0,'',1,0,'',NULL,0),(2456,'秀英区','0',361,0,'',1,0,'',NULL,0),(2457,'龙华区','0',361,0,'',1,0,'',NULL,0),(2458,'琼山区','0',361,0,'',1,0,'',NULL,0),(2459,'美兰区','0',361,0,'',1,0,'',NULL,0),(2460,'锦江区','0',382,0,'',1,0,'',NULL,0),(2461,'青羊区','0',382,0,'',1,0,'',NULL,0),(2462,'金牛区','0',382,0,'',1,0,'',NULL,0),(2463,'武侯区','0',382,0,'',1,0,'',NULL,0),(2464,'成华区','0',382,0,'',1,0,'',NULL,0),(2465,'龙泉驿区','0',382,0,'',1,0,'',NULL,0),(2466,'青白江区','0',382,0,'',1,0,'',NULL,0),(2467,'新都区','0',382,0,'',1,0,'',NULL,0),(2468,'温江区','0',382,0,'',1,0,'',NULL,0),(2469,'金堂县','0',382,0,'',1,0,'',NULL,0),(2470,'双流县','0',382,0,'',1,0,'',NULL,0),(2471,'郫县','0',382,0,'',1,0,'',NULL,0),(2472,'大邑县','0',382,0,'',1,0,'',NULL,0),(2473,'蒲江县','0',382,0,'',1,0,'',NULL,0),(2474,'新津县','0',382,0,'',1,0,'',NULL,0),(2475,'都江堰市','0',382,0,'',1,0,'',NULL,0),(2476,'彭州市','0',382,0,'',1,0,'',NULL,0),(2477,'邛崃市','0',382,0,'',1,0,'',NULL,0),(2478,'崇州市','0',382,0,'',1,0,'',NULL,0),(2479,'自流井区','0',383,0,'',1,0,'',NULL,0),(2480,'贡井区','0',383,0,'',1,0,'',NULL,0),(2481,'大安区','0',383,0,'',1,0,'',NULL,0),(2482,'沿滩区','0',383,0,'',1,0,'',NULL,0),(2483,'荣县','0',383,0,'',1,0,'',NULL,0),(2484,'富顺县','0',383,0,'',1,0,'',NULL,0),(2485,'东区','0',384,0,'',1,0,'',NULL,0),(2486,'西区','0',384,0,'',1,0,'',NULL,0),(2487,'仁和区','0',384,0,'',1,0,'',NULL,0),(2488,'米易县','0',384,0,'',1,0,'',NULL,0),(2489,'盐边县','0',384,0,'',1,0,'',NULL,0),(2490,'江阳区','0',385,0,'',1,0,'',NULL,0),(2491,'纳溪区','0',385,0,'',1,0,'',NULL,0),(2492,'龙马潭区','0',385,0,'',1,0,'',NULL,0),(2493,'泸县','0',385,0,'',1,0,'',NULL,0),(2494,'合江县','0',385,0,'',1,0,'',NULL,0),(2495,'叙永县','0',385,0,'',1,0,'',NULL,0),(2496,'古蔺县','0',385,0,'',1,0,'',NULL,0),(2497,'旌阳区','0',386,0,'',1,0,'',NULL,0),(2498,'中江县','0',386,0,'',1,0,'',NULL,0),(2499,'罗江县','0',386,0,'',1,0,'',NULL,0),(2500,'广汉市','0',386,0,'',1,0,'',NULL,0),(2501,'什邡市','0',386,0,'',1,0,'',NULL,0),(2502,'绵竹市','0',386,0,'',1,0,'',NULL,0),(2503,'涪城区','0',387,0,'',1,0,'',NULL,0),(2504,'游仙区','0',387,0,'',1,0,'',NULL,0),(2505,'三台县','0',387,0,'',1,0,'',NULL,0),(2506,'盐亭县','0',387,0,'',1,0,'',NULL,0),(2507,'安县','0',387,0,'',1,0,'',NULL,0),(2508,'梓潼县','0',387,0,'',1,0,'',NULL,0),(2509,'北川羌族自治县','0',387,0,'',1,0,'',NULL,0),(2510,'平武县','0',387,0,'',1,0,'',NULL,0),(2511,'江油市','0',387,0,'',1,0,'',NULL,0),(2512,'市中区','0',388,0,'',1,0,'',NULL,0),(2513,'元坝区','0',388,0,'',1,0,'',NULL,0),(2514,'朝天区','0',388,0,'',1,0,'',NULL,0),(2515,'旺苍县','0',388,0,'',1,0,'',NULL,0),(2516,'青川县','0',388,0,'',1,0,'',NULL,0),(2517,'剑阁县','0',388,0,'',1,0,'',NULL,0),(2518,'苍溪县','0',388,0,'',1,0,'',NULL,0),(2519,'船山区','0',389,0,'',1,0,'',NULL,0),(2520,'安居区','0',389,0,'',1,0,'',NULL,0),(2521,'蓬溪县','0',389,0,'',1,0,'',NULL,0),(2522,'射洪县','0',389,0,'',1,0,'',NULL,0),(2523,'大英县','0',389,0,'',1,0,'',NULL,0),(2524,'市中区','0',390,0,'',1,0,'',NULL,0),(2525,'东兴区','0',390,0,'',1,0,'',NULL,0),(2526,'威远县','0',390,0,'',1,0,'',NULL,0),(2527,'资中县','0',390,0,'',1,0,'',NULL,0),(2528,'隆昌县','0',390,0,'',1,0,'',NULL,0),(2529,'市中区','0',391,0,'',1,0,'',NULL,0),(2530,'沙湾区','0',391,0,'',1,0,'',NULL,0),(2531,'五通桥区','0',391,0,'',1,0,'',NULL,0),(2532,'金口河区','0',391,0,'',1,0,'',NULL,0),(2533,'犍为县','0',391,0,'',1,0,'',NULL,0),(2534,'井研县','0',391,0,'',1,0,'',NULL,0),(2535,'夹江县','0',391,0,'',1,0,'',NULL,0),(2536,'沐川县','0',391,0,'',1,0,'',NULL,0),(2537,'峨边彝族自治县','0',391,0,'',1,0,'',NULL,0),(2538,'马边彝族自治县','0',391,0,'',1,0,'',NULL,0),(2539,'峨眉山市','0',391,0,'',1,0,'',NULL,0),(2540,'顺庆区','0',392,0,'',1,0,'',NULL,0),(2541,'高坪区','0',392,0,'',1,0,'',NULL,0),(2542,'嘉陵区','0',392,0,'',1,0,'',NULL,0),(2543,'南部县','0',392,0,'',1,0,'',NULL,0),(2544,'营山县','0',392,0,'',1,0,'',NULL,0),(2545,'蓬安县','0',392,0,'',1,0,'',NULL,0),(2546,'仪陇县','0',392,0,'',1,0,'',NULL,0),(2547,'西充县','0',392,0,'',1,0,'',NULL,0),(2548,'阆中市','0',392,0,'',1,0,'',NULL,0),(2549,'东坡区','0',393,0,'',1,0,'',NULL,0),(2550,'仁寿县','0',393,0,'',1,0,'',NULL,0),(2551,'彭山县','0',393,0,'',1,0,'',NULL,0),(2552,'洪雅县','0',393,0,'',1,0,'',NULL,0),(2553,'丹棱县','0',393,0,'',1,0,'',NULL,0),(2554,'青神县','0',393,0,'',1,0,'',NULL,0),(2555,'翠屏区','0',394,0,'',1,0,'',NULL,0),(2556,'宜宾县','0',394,0,'',1,0,'',NULL,0),(2557,'南溪县','0',394,0,'',1,0,'',NULL,0),(2558,'江安县','0',394,0,'',1,0,'',NULL,0),(2559,'长宁县','0',394,0,'',1,0,'',NULL,0),(2560,'高县','0',394,0,'',1,0,'',NULL,0),(2561,'珙县','0',394,0,'',1,0,'',NULL,0),(2562,'筠连县','0',394,0,'',1,0,'',NULL,0),(2563,'兴文县','0',394,0,'',1,0,'',NULL,0),(2564,'屏山县','0',394,0,'',1,0,'',NULL,0),(2565,'广安区','0',395,0,'',1,0,'',NULL,0),(2566,'岳池县','0',395,0,'',1,0,'',NULL,0),(2567,'武胜县','0',395,0,'',1,0,'',NULL,0),(2568,'邻水县','0',395,0,'',1,0,'',NULL,0),(2569,'华蓥市','0',395,0,'',1,0,'',NULL,0),(2570,'通川区','0',396,0,'',1,0,'',NULL,0),(2571,'达县','0',396,0,'',1,0,'',NULL,0),(2572,'宣汉县','0',396,0,'',1,0,'',NULL,0),(2573,'开江县','0',396,0,'',1,0,'',NULL,0),(2574,'大竹县','0',396,0,'',1,0,'',NULL,0),(2575,'渠县','0',396,0,'',1,0,'',NULL,0),(2576,'万源市','0',396,0,'',1,0,'',NULL,0),(2577,'雨城区','0',397,0,'',1,0,'',NULL,0),(2578,'名山县','0',397,0,'',1,0,'',NULL,0),(2579,'荥经县','0',397,0,'',1,0,'',NULL,0),(2580,'汉源县','0',397,0,'',1,0,'',NULL,0),(2581,'石棉县','0',397,0,'',1,0,'',NULL,0),(2582,'天全县','0',397,0,'',1,0,'',NULL,0),(2583,'芦山县','0',397,0,'',1,0,'',NULL,0),(2584,'宝兴县','0',397,0,'',1,0,'',NULL,0),(2585,'巴州区','0',398,0,'',1,0,'',NULL,0),(2586,'通江县','0',398,0,'',1,0,'',NULL,0),(2587,'南江县','0',398,0,'',1,0,'',NULL,0),(2588,'平昌县','0',398,0,'',1,0,'',NULL,0),(2589,'雁江区','0',399,0,'',1,0,'',NULL,0),(2590,'安岳县','0',399,0,'',1,0,'',NULL,0),(2591,'乐至县','0',399,0,'',1,0,'',NULL,0),(2592,'简阳市','0',399,0,'',1,0,'',NULL,0),(2593,'汶川县','0',400,0,'',1,0,'',NULL,0),(2594,'理县','0',400,0,'',1,0,'',NULL,0),(2595,'茂县','0',400,0,'',1,0,'',NULL,0),(2596,'松潘县','0',400,0,'',1,0,'',NULL,0),(2597,'九寨沟县','0',400,0,'',1,0,'',NULL,0),(2598,'金川县','0',400,0,'',1,0,'',NULL,0),(2599,'小金县','0',400,0,'',1,0,'',NULL,0),(2600,'黑水县','0',400,0,'',1,0,'',NULL,0),(2601,'马尔康县','0',400,0,'',1,0,'',NULL,0),(2602,'壤塘县','0',400,0,'',1,0,'',NULL,0),(2603,'阿坝县','0',400,0,'',1,0,'',NULL,0),(2604,'若尔盖县','0',400,0,'',1,0,'',NULL,0),(2605,'红原县','0',400,0,'',1,0,'',NULL,0),(2606,'康定县','0',401,0,'',1,0,'',NULL,0),(2607,'泸定县','0',401,0,'',1,0,'',NULL,0),(2608,'丹巴县','0',401,0,'',1,0,'',NULL,0),(2609,'九龙县','0',401,0,'',1,0,'',NULL,0),(2610,'雅江县','0',401,0,'',1,0,'',NULL,0),(2611,'道孚县','0',401,0,'',1,0,'',NULL,0),(2612,'炉霍县','0',401,0,'',1,0,'',NULL,0),(2613,'甘孜县','0',401,0,'',1,0,'',NULL,0),(2614,'新龙县','0',401,0,'',1,0,'',NULL,0),(2615,'德格县','0',401,0,'',1,0,'',NULL,0),(2616,'白玉县','0',401,0,'',1,0,'',NULL,0),(2617,'石渠县','0',401,0,'',1,0,'',NULL,0),(2618,'色达县','0',401,0,'',1,0,'',NULL,0),(2619,'理塘县','0',401,0,'',1,0,'',NULL,0),(2620,'巴塘县','0',401,0,'',1,0,'',NULL,0),(2621,'乡城县','0',401,0,'',1,0,'',NULL,0),(2622,'稻城县','0',401,0,'',1,0,'',NULL,0),(2623,'得荣县','0',401,0,'',1,0,'',NULL,0),(2624,'西昌市','0',402,0,'',1,0,'',NULL,0),(2625,'木里藏族自治县','0',402,0,'',1,0,'',NULL,0),(2626,'盐源县','0',402,0,'',1,0,'',NULL,0),(2627,'德昌县','0',402,0,'',1,0,'',NULL,0),(2628,'会理县','0',402,0,'',1,0,'',NULL,0),(2629,'会东县','0',402,0,'',1,0,'',NULL,0),(2630,'宁南县','0',402,0,'',1,0,'',NULL,0),(2631,'普格县','0',402,0,'',1,0,'',NULL,0),(2632,'布拖县','0',402,0,'',1,0,'',NULL,0),(2633,'金阳县','0',402,0,'',1,0,'',NULL,0),(2634,'昭觉县','0',402,0,'',1,0,'',NULL,0),(2635,'喜德县','0',402,0,'',1,0,'',NULL,0),(2636,'冕宁县','0',402,0,'',1,0,'',NULL,0),(2637,'越西县','0',402,0,'',1,0,'',NULL,0),(2638,'甘洛县','0',402,0,'',1,0,'',NULL,0),(2639,'美姑县','0',402,0,'',1,0,'',NULL,0),(2640,'雷波县','0',402,0,'',1,0,'',NULL,0),(2641,'南明区','0',403,0,'',1,0,'',NULL,0),(2642,'云岩区','0',403,0,'',1,0,'',NULL,0),(2643,'花溪区','0',403,0,'',1,0,'',NULL,0),(2644,'乌当区','0',403,0,'',1,0,'',NULL,0),(2645,'白云区','0',403,0,'',1,0,'',NULL,0),(2646,'小河区','0',403,0,'',1,0,'',NULL,0),(2647,'开阳县','0',403,0,'',1,0,'',NULL,0),(2648,'息烽县','0',403,0,'',1,0,'',NULL,0),(2649,'修文县','0',403,0,'',1,0,'',NULL,0),(2650,'清镇市','0',403,0,'',1,0,'',NULL,0),(2651,'钟山区','0',404,0,'',1,0,'',NULL,0),(2652,'六枝特区','0',404,0,'',1,0,'',NULL,0),(2653,'水城县','0',404,0,'',1,0,'',NULL,0),(2654,'盘县','0',404,0,'',1,0,'',NULL,0),(2655,'红花岗区','0',405,0,'',1,0,'',NULL,0),(2656,'汇川区','0',405,0,'',1,0,'',NULL,0),(2657,'遵义县','0',405,0,'',1,0,'',NULL,0),(2658,'桐梓县','0',405,0,'',1,0,'',NULL,0),(2659,'绥阳县','0',405,0,'',1,0,'',NULL,0),(2660,'正安县','0',405,0,'',1,0,'',NULL,0),(2661,'道真仡佬族苗族自治县','0',405,0,'',1,0,'',NULL,0),(2662,'务川仡佬族苗族自治县','0',405,0,'',1,0,'',NULL,0),(2663,'凤冈县','0',405,0,'',1,0,'',NULL,0),(2664,'湄潭县','0',405,0,'',1,0,'',NULL,0),(2665,'余庆县','0',405,0,'',1,0,'',NULL,0),(2666,'习水县','0',405,0,'',1,0,'',NULL,0),(2667,'赤水市','0',405,0,'',1,0,'',NULL,0),(2668,'仁怀市','0',405,0,'',1,0,'',NULL,0),(2669,'西秀区','0',406,0,'',1,0,'',NULL,0),(2670,'平坝县','0',406,0,'',1,0,'',NULL,0),(2671,'普定县','0',406,0,'',1,0,'',NULL,0),(2672,'镇宁布依族苗族自治县','0',406,0,'',1,0,'',NULL,0),(2673,'关岭布依族苗族自治县','0',406,0,'',1,0,'',NULL,0),(2674,'紫云苗族布依族自治县','0',406,0,'',1,0,'',NULL,0),(2675,'铜仁市','0',407,0,'',1,0,'',NULL,0),(2676,'江口县','0',407,0,'',1,0,'',NULL,0),(2677,'玉屏侗族自治县','0',407,0,'',1,0,'',NULL,0),(2678,'石阡县','0',407,0,'',1,0,'',NULL,0),(2679,'思南县','0',407,0,'',1,0,'',NULL,0),(2680,'印江土家族苗族自治县','0',407,0,'',1,0,'',NULL,0),(2681,'德江县','0',407,0,'',1,0,'',NULL,0),(2682,'沿河土家族自治县','0',407,0,'',1,0,'',NULL,0),(2683,'松桃苗族自治县','0',407,0,'',1,0,'',NULL,0),(2684,'万山特区','0',407,0,'',1,0,'',NULL,0),(2685,'兴义市','0',408,0,'',1,0,'',NULL,0),(2686,'兴仁县','0',408,0,'',1,0,'',NULL,0),(2687,'普安县','0',408,0,'',1,0,'',NULL,0),(2688,'晴隆县','0',408,0,'',1,0,'',NULL,0),(2689,'贞丰县','0',408,0,'',1,0,'',NULL,0),(2690,'望谟县','0',408,0,'',1,0,'',NULL,0),(2691,'册亨县','0',408,0,'',1,0,'',NULL,0),(2692,'安龙县','0',408,0,'',1,0,'',NULL,0),(2693,'毕节市','0',409,0,'',1,0,'',NULL,0),(2694,'大方县','0',409,0,'',1,0,'',NULL,0),(2695,'黔西县','0',409,0,'',1,0,'',NULL,0),(2696,'金沙县','0',409,0,'',1,0,'',NULL,0),(2697,'织金县','0',409,0,'',1,0,'',NULL,0),(2698,'纳雍县','0',409,0,'',1,0,'',NULL,0),(2699,'威宁彝族回族苗族自治县','0',409,0,'',1,0,'',NULL,0),(2700,'赫章县','0',409,0,'',1,0,'',NULL,0),(2701,'凯里市','0',410,0,'',1,0,'',NULL,0),(2702,'黄平县','0',410,0,'',1,0,'',NULL,0),(2703,'施秉县','0',410,0,'',1,0,'',NULL,0),(2704,'三穗县','0',410,0,'',1,0,'',NULL,0),(2705,'镇远县','0',410,0,'',1,0,'',NULL,0),(2706,'岑巩县','0',410,0,'',1,0,'',NULL,0),(2707,'天柱县','0',410,0,'',1,0,'',NULL,0),(2708,'锦屏县','0',410,0,'',1,0,'',NULL,0),(2709,'剑河县','0',410,0,'',1,0,'',NULL,0),(2710,'台江县','0',410,0,'',1,0,'',NULL,0),(2711,'黎平县','0',410,0,'',1,0,'',NULL,0),(2712,'榕江县','0',410,0,'',1,0,'',NULL,0),(2713,'从江县','0',410,0,'',1,0,'',NULL,0),(2714,'雷山县','0',410,0,'',1,0,'',NULL,0),(2715,'麻江县','0',410,0,'',1,0,'',NULL,0),(2716,'丹寨县','0',410,0,'',1,0,'',NULL,0),(2717,'都匀市','0',411,0,'',1,0,'',NULL,0),(2718,'福泉市','0',411,0,'',1,0,'',NULL,0),(2719,'荔波县','0',411,0,'',1,0,'',NULL,0),(2720,'贵定县','0',411,0,'',1,0,'',NULL,0),(2721,'瓮安县','0',411,0,'',1,0,'',NULL,0),(2722,'独山县','0',411,0,'',1,0,'',NULL,0),(2723,'平塘县','0',411,0,'',1,0,'',NULL,0),(2724,'罗甸县','0',411,0,'',1,0,'',NULL,0),(2725,'长顺县','0',411,0,'',1,0,'',NULL,0),(2726,'龙里县','0',411,0,'',1,0,'',NULL,0),(2727,'惠水县','0',411,0,'',1,0,'',NULL,0),(2728,'三都水族自治县','0',411,0,'',1,0,'',NULL,0),(2729,'五华区','0',412,0,'',1,0,'',NULL,0),(2730,'盘龙区','0',412,0,'',1,0,'',NULL,0),(2731,'官渡区','0',412,0,'',1,0,'',NULL,0),(2732,'西山区','0',412,0,'',1,0,'',NULL,0),(2733,'东川区','0',412,0,'',1,0,'',NULL,0),(2734,'呈贡县','0',412,0,'',1,0,'',NULL,0),(2735,'晋宁县','0',412,0,'',1,0,'',NULL,0),(2736,'富民县','0',412,0,'',1,0,'',NULL,0),(2737,'宜良县','0',412,0,'',1,0,'',NULL,0),(2738,'石林彝族自治县','0',412,0,'',1,0,'',NULL,0),(2739,'嵩明县','0',412,0,'',1,0,'',NULL,0),(2740,'禄劝彝族苗族自治县','0',412,0,'',1,0,'',NULL,0),(2741,'寻甸回族彝族自治县','0',412,0,'',1,0,'',NULL,0),(2742,'安宁市','0',412,0,'',1,0,'',NULL,0),(2743,'麒麟区','0',413,0,'',1,0,'',NULL,0),(2744,'马龙县','0',413,0,'',1,0,'',NULL,0),(2745,'陆良县','0',413,0,'',1,0,'',NULL,0),(2746,'师宗县','0',413,0,'',1,0,'',NULL,0),(2747,'罗平县','0',413,0,'',1,0,'',NULL,0),(2748,'富源县','0',413,0,'',1,0,'',NULL,0),(2749,'会泽县','0',413,0,'',1,0,'',NULL,0),(2750,'沾益县','0',413,0,'',1,0,'',NULL,0),(2751,'宣威市','0',413,0,'',1,0,'',NULL,0),(2752,'红塔区','0',414,0,'',1,0,'',NULL,0),(2753,'江川县','0',414,0,'',1,0,'',NULL,0),(2754,'澄江县','0',414,0,'',1,0,'',NULL,0),(2755,'通海县','0',414,0,'',1,0,'',NULL,0),(2756,'华宁县','0',414,0,'',1,0,'',NULL,0),(2757,'易门县','0',414,0,'',1,0,'',NULL,0),(2758,'峨山彝族自治县','0',414,0,'',1,0,'',NULL,0),(2759,'新平彝族傣族自治县','0',414,0,'',1,0,'',NULL,0),(2760,'元江哈尼族彝族傣族自治县','0',414,0,'',1,0,'',NULL,0),(2761,'隆阳区','0',415,0,'',1,0,'',NULL,0),(2762,'施甸县','0',415,0,'',1,0,'',NULL,0),(2763,'腾冲县','0',415,0,'',1,0,'',NULL,0),(2764,'龙陵县','0',415,0,'',1,0,'',NULL,0),(2765,'昌宁县','0',415,0,'',1,0,'',NULL,0),(2766,'昭阳区','0',416,0,'',1,0,'',NULL,0),(2767,'鲁甸县','0',416,0,'',1,0,'',NULL,0),(2768,'巧家县','0',416,0,'',1,0,'',NULL,0),(2769,'盐津县','0',416,0,'',1,0,'',NULL,0),(2770,'大关县','0',416,0,'',1,0,'',NULL,0),(2771,'永善县','0',416,0,'',1,0,'',NULL,0),(2772,'绥江县','0',416,0,'',1,0,'',NULL,0),(2773,'镇雄县','0',416,0,'',1,0,'',NULL,0),(2774,'彝良县','0',416,0,'',1,0,'',NULL,0),(2775,'威信县','0',416,0,'',1,0,'',NULL,0),(2776,'水富县','0',416,0,'',1,0,'',NULL,0),(2777,'古城区','0',417,0,'',1,0,'',NULL,0),(2778,'玉龙纳西族自治县','0',417,0,'',1,0,'',NULL,0),(2779,'永胜县','0',417,0,'',1,0,'',NULL,0),(2780,'华坪县','0',417,0,'',1,0,'',NULL,0),(2781,'宁蒗彝族自治县','0',417,0,'',1,0,'',NULL,0),(2782,'翠云区','0',418,0,'',1,0,'',NULL,0),(2783,'普洱哈尼族彝族自治县','0',418,0,'',1,0,'',NULL,0),(2784,'墨江哈尼族自治县','0',418,0,'',1,0,'',NULL,0),(2785,'景东彝族自治县','0',418,0,'',1,0,'',NULL,0),(2786,'景谷傣族彝族自治县','0',418,0,'',1,0,'',NULL,0),(2787,'镇沅彝族哈尼族拉祜族自治县','0',418,0,'',1,0,'',NULL,0),(2788,'江城哈尼族彝族自治县','0',418,0,'',1,0,'',NULL,0),(2789,'孟连傣族拉祜族佤族自治县','0',418,0,'',1,0,'',NULL,0),(2790,'澜沧拉祜族自治县','0',418,0,'',1,0,'',NULL,0),(2791,'西盟佤族自治县','0',418,0,'',1,0,'',NULL,0),(2792,'临翔区','0',419,0,'',1,0,'',NULL,0),(2793,'凤庆县','0',419,0,'',1,0,'',NULL,0),(2794,'云县','0',419,0,'',1,0,'',NULL,0),(2795,'永德县','0',419,0,'',1,0,'',NULL,0),(2796,'镇康县','0',419,0,'',1,0,'',NULL,0),(2797,'双江拉祜族佤族布朗族傣族自治县','0',419,0,'',1,0,'',NULL,0),(2798,'耿马傣族佤族自治县','0',419,0,'',1,0,'',NULL,0),(2799,'沧源佤族自治县','0',420,0,'',1,0,'',NULL,0),(2800,'楚雄市','0',420,0,'',1,0,'',NULL,0),(2801,'双柏县','0',420,0,'',1,0,'',NULL,0),(2802,'牟定县','0',420,0,'',1,0,'',NULL,0),(2803,'南华县','0',420,0,'',1,0,'',NULL,0),(2804,'姚安县','0',420,0,'',1,0,'',NULL,0),(2805,'大姚县','0',420,0,'',1,0,'',NULL,0),(2806,'永仁县','0',420,0,'',1,0,'',NULL,0),(2807,'元谋县','0',420,0,'',1,0,'',NULL,0),(2808,'武定县','0',420,0,'',1,0,'',NULL,0),(2809,'禄丰县','0',420,0,'',1,0,'',NULL,0),(2810,'个旧市','0',421,0,'',1,0,'',NULL,0),(2811,'开远市','0',421,0,'',1,0,'',NULL,0),(2812,'蒙自县','0',421,0,'',1,0,'',NULL,0),(2813,'屏边苗族自治县','0',421,0,'',1,0,'',NULL,0),(2814,'建水县','0',421,0,'',1,0,'',NULL,0),(2815,'石屏县','0',421,0,'',1,0,'',NULL,0),(2816,'弥勒县','0',421,0,'',1,0,'',NULL,0),(2817,'泸西县','0',421,0,'',1,0,'',NULL,0),(2818,'元阳县','0',421,0,'',1,0,'',NULL,0),(2819,'红河县','0',421,0,'',1,0,'',NULL,0),(2820,'金平苗族瑶族傣族自治县','0',421,0,'',1,0,'',NULL,0),(2821,'绿春县','0',421,0,'',1,0,'',NULL,0),(2822,'河口瑶族自治县','0',421,0,'',1,0,'',NULL,0),(2823,'文山县','0',422,0,'',1,0,'',NULL,0),(2824,'砚山县','0',422,0,'',1,0,'',NULL,0),(2825,'西畴县','0',422,0,'',1,0,'',NULL,0),(2826,'麻栗坡县','0',422,0,'',1,0,'',NULL,0),(2827,'马关县','0',422,0,'',1,0,'',NULL,0),(2828,'丘北县','0',422,0,'',1,0,'',NULL,0),(2829,'广南县','0',422,0,'',1,0,'',NULL,0),(2830,'富宁县','0',422,0,'',1,0,'',NULL,0),(2831,'景洪市','0',423,0,'',1,0,'',NULL,0),(2832,'勐海县','0',423,0,'',1,0,'',NULL,0),(2833,'勐腊县','0',423,0,'',1,0,'',NULL,0),(2834,'大理市','0',424,0,'',1,0,'',NULL,0),(2835,'漾濞彝族自治县','0',424,0,'',1,0,'',NULL,0),(2836,'祥云县','0',424,0,'',1,0,'',NULL,0),(2837,'宾川县','0',424,0,'',1,0,'',NULL,0),(2838,'弥渡县','0',424,0,'',1,0,'',NULL,0),(2839,'南涧彝族自治县','0',424,0,'',1,0,'',NULL,0),(2840,'巍山彝族回族自治县','0',424,0,'',1,0,'',NULL,0),(2841,'永平县','0',424,0,'',1,0,'',NULL,0),(2842,'云龙县','0',424,0,'',1,0,'',NULL,0),(2843,'洱源县','0',424,0,'',1,0,'',NULL,0),(2844,'剑川县','0',424,0,'',1,0,'',NULL,0),(2845,'鹤庆县','0',424,0,'',1,0,'',NULL,0),(2846,'瑞丽市','0',425,0,'',1,0,'',NULL,0),(2847,'潞西市','0',425,0,'',1,0,'',NULL,0),(2848,'梁河县','0',425,0,'',1,0,'',NULL,0),(2849,'盈江县','0',425,0,'',1,0,'',NULL,0),(2850,'陇川县','0',425,0,'',1,0,'',NULL,0),(2851,'泸水县','0',426,0,'',1,0,'',NULL,0),(2852,'福贡县','0',426,0,'',1,0,'',NULL,0),(2853,'贡山独龙族怒族自治县','0',426,0,'',1,0,'',NULL,0),(2854,'兰坪白族普米族自治县','0',426,0,'',1,0,'',NULL,0),(2855,'香格里拉县','0',427,0,'',1,0,'',NULL,0),(2856,'德钦县','0',427,0,'',1,0,'',NULL,0),(2857,'维西傈僳族自治县','0',427,0,'',1,0,'',NULL,0),(2858,'城关区','0',428,0,'',1,0,'',NULL,0),(2859,'林周县','0',428,0,'',1,0,'',NULL,0),(2860,'当雄县','0',428,0,'',1,0,'',NULL,0),(2861,'尼木县','0',428,0,'',1,0,'',NULL,0),(2862,'曲水县','0',428,0,'',1,0,'',NULL,0),(2863,'堆龙德庆县','0',428,0,'',1,0,'',NULL,0),(2864,'达孜县','0',428,0,'',1,0,'',NULL,0),(2865,'墨竹工卡县','0',428,0,'',1,0,'',NULL,0),(2866,'昌都县','0',429,0,'',1,0,'',NULL,0),(2867,'江达县','0',429,0,'',1,0,'',NULL,0),(2868,'贡觉县','0',429,0,'',1,0,'',NULL,0),(2869,'类乌齐县','0',429,0,'',1,0,'',NULL,0),(2870,'丁青县','0',429,0,'',1,0,'',NULL,0),(2871,'察雅县','0',429,0,'',1,0,'',NULL,0),(2872,'八宿县','0',429,0,'',1,0,'',NULL,0),(2873,'左贡县','0',429,0,'',1,0,'',NULL,0),(2874,'芒康县','0',429,0,'',1,0,'',NULL,0),(2875,'洛隆县','0',429,0,'',1,0,'',NULL,0),(2876,'边坝县','0',429,0,'',1,0,'',NULL,0),(2877,'乃东县','0',430,0,'',1,0,'',NULL,0),(2878,'扎囊县','0',430,0,'',1,0,'',NULL,0),(2879,'贡嘎县','0',430,0,'',1,0,'',NULL,0),(2880,'桑日县','0',430,0,'',1,0,'',NULL,0),(2881,'琼结县','0',430,0,'',1,0,'',NULL,0),(2882,'曲松县','0',430,0,'',1,0,'',NULL,0),(2883,'措美县','0',430,0,'',1,0,'',NULL,0),(2884,'洛扎县','0',430,0,'',1,0,'',NULL,0),(2885,'加查县','0',430,0,'',1,0,'',NULL,0),(2886,'隆子县','0',430,0,'',1,0,'',NULL,0),(2887,'错那县','0',430,0,'',1,0,'',NULL,0),(2888,'浪卡子县','0',430,0,'',1,0,'',NULL,0),(2889,'日喀则市','0',431,0,'',1,0,'',NULL,0),(2890,'南木林县','0',431,0,'',1,0,'',NULL,0),(2891,'江孜县','0',431,0,'',1,0,'',NULL,0),(2892,'定日县','0',431,0,'',1,0,'',NULL,0),(2893,'萨迦县','0',431,0,'',1,0,'',NULL,0),(2894,'拉孜县','0',431,0,'',1,0,'',NULL,0),(2895,'昂仁县','0',431,0,'',1,0,'',NULL,0),(2896,'谢通门县','0',431,0,'',1,0,'',NULL,0),(2897,'白朗县','0',431,0,'',1,0,'',NULL,0),(2898,'仁布县','0',431,0,'',1,0,'',NULL,0),(2899,'康马县','0',431,0,'',1,0,'',NULL,0),(2900,'定结县','0',431,0,'',1,0,'',NULL,0),(2901,'仲巴县','0',431,0,'',1,0,'',NULL,0),(2902,'亚东县','0',431,0,'',1,0,'',NULL,0),(2903,'吉隆县','0',431,0,'',1,0,'',NULL,0),(2904,'聂拉木县','0',431,0,'',1,0,'',NULL,0),(2905,'萨嘎县','0',431,0,'',1,0,'',NULL,0),(2906,'岗巴县','0',431,0,'',1,0,'',NULL,0),(2907,'那曲县','0',432,0,'',1,0,'',NULL,0),(2908,'嘉黎县','0',432,0,'',1,0,'',NULL,0),(2909,'比如县','0',432,0,'',1,0,'',NULL,0),(2910,'聂荣县','0',432,0,'',1,0,'',NULL,0),(2911,'安多县','0',432,0,'',1,0,'',NULL,0),(2912,'申扎县','0',432,0,'',1,0,'',NULL,0),(2913,'索县','0',432,0,'',1,0,'',NULL,0),(2914,'班戈县','0',432,0,'',1,0,'',NULL,0),(2915,'巴青县','0',432,0,'',1,0,'',NULL,0),(2916,'尼玛县','0',432,0,'',1,0,'',NULL,0),(2917,'普兰县','0',433,0,'',1,0,'',NULL,0),(2918,'札达县','0',433,0,'',1,0,'',NULL,0),(2919,'噶尔县','0',433,0,'',1,0,'',NULL,0),(2920,'日土县','0',433,0,'',1,0,'',NULL,0),(2921,'革吉县','0',433,0,'',1,0,'',NULL,0),(2922,'改则县','0',433,0,'',1,0,'',NULL,0),(2923,'措勤县','0',433,0,'',1,0,'',NULL,0),(2924,'林芝县','0',434,0,'',1,0,'',NULL,0),(2925,'工布江达县','0',434,0,'',1,0,'',NULL,0),(2926,'米林县','0',434,0,'',1,0,'',NULL,0),(2927,'墨脱县','0',434,0,'',1,0,'',NULL,0),(2928,'波密县','0',434,0,'',1,0,'',NULL,0),(2929,'察隅县','0',434,0,'',1,0,'',NULL,0),(2930,'朗县','0',434,0,'',1,0,'',NULL,0),(2931,'新城区','0',435,0,'',1,0,'',NULL,0),(2932,'碑林区','0',435,0,'',1,0,'',NULL,0),(2933,'莲湖区','0',435,0,'',1,0,'',NULL,0),(2934,'灞桥区','0',435,0,'',1,0,'',NULL,0),(2935,'未央区','0',435,0,'',1,0,'',NULL,0),(2936,'雁塔区','0',435,0,'',1,0,'',NULL,0),(2937,'阎良区','0',435,0,'',1,0,'',NULL,0),(2938,'临潼区','0',435,0,'',1,0,'',NULL,0),(2939,'长安区','0',435,0,'',1,0,'',NULL,0),(2940,'蓝田县','0',435,0,'',1,0,'',NULL,0),(2941,'周至县','0',435,0,'',1,0,'',NULL,0),(2942,'户县','0',435,0,'',1,0,'',NULL,0),(2943,'高陵县','0',435,0,'',1,0,'',NULL,0),(2944,'王益区','0',436,0,'',1,0,'',NULL,0),(2945,'印台区','0',436,0,'',1,0,'',NULL,0),(2946,'耀州区','0',436,0,'',1,0,'',NULL,0),(2947,'宜君县','0',436,0,'',1,0,'',NULL,0),(2948,'渭滨区','0',437,0,'',1,0,'',NULL,0),(2949,'金台区','0',437,0,'',1,0,'',NULL,0),(2950,'陈仓区','0',437,0,'',1,0,'',NULL,0),(2951,'凤翔县','0',437,0,'',1,0,'',NULL,0),(2952,'岐山县','0',437,0,'',1,0,'',NULL,0),(2953,'扶风县','0',437,0,'',1,0,'',NULL,0),(2954,'眉县','0',437,0,'',1,0,'',NULL,0),(2955,'陇县','0',437,0,'',1,0,'',NULL,0),(2956,'千阳县','0',437,0,'',1,0,'',NULL,0),(2957,'麟游县','0',437,0,'',1,0,'',NULL,0),(2958,'凤县','0',437,0,'',1,0,'',NULL,0),(2959,'太白县','0',437,0,'',1,0,'',NULL,0),(2960,'秦都区','0',438,0,'',1,0,'',NULL,0),(2961,'杨凌区','0',438,0,'',1,0,'',NULL,0),(2962,'渭城区','0',438,0,'',1,0,'',NULL,0),(2963,'三原县','0',438,0,'',1,0,'',NULL,0),(2964,'泾阳县','0',438,0,'',1,0,'',NULL,0),(2965,'乾县','0',438,0,'',1,0,'',NULL,0),(2966,'礼泉县','0',438,0,'',1,0,'',NULL,0),(2967,'永寿县','0',438,0,'',1,0,'',NULL,0),(2968,'彬县','0',438,0,'',1,0,'',NULL,0),(2969,'长武县','0',438,0,'',1,0,'',NULL,0),(2970,'旬邑县','0',438,0,'',1,0,'',NULL,0),(2971,'淳化县','0',438,0,'',1,0,'',NULL,0),(2972,'武功县','0',438,0,'',1,0,'',NULL,0),(2973,'兴平市','0',438,0,'',1,0,'',NULL,0),(2974,'临渭区','0',439,0,'',1,0,'',NULL,0),(2975,'华县','0',439,0,'',1,0,'',NULL,0),(2976,'潼关县','0',439,0,'',1,0,'',NULL,0),(2977,'大荔县','0',439,0,'',1,0,'',NULL,0),(2978,'合阳县','0',439,0,'',1,0,'',NULL,0),(2979,'澄城县','0',439,0,'',1,0,'',NULL,0),(2980,'蒲城县','0',439,0,'',1,0,'',NULL,0),(2981,'白水县','0',439,0,'',1,0,'',NULL,0),(2982,'富平县','0',439,0,'',1,0,'',NULL,0),(2983,'韩城市','0',439,0,'',1,0,'',NULL,0),(2984,'华阴市','0',439,0,'',1,0,'',NULL,0),(2985,'宝塔区','0',440,0,'',1,0,'',NULL,0),(2986,'延长县','0',440,0,'',1,0,'',NULL,0),(2987,'延川县','0',440,0,'',1,0,'',NULL,0),(2988,'子长县','0',440,0,'',1,0,'',NULL,0),(2989,'安塞县','0',440,0,'',1,0,'',NULL,0),(2990,'志丹县','0',440,0,'',1,0,'',NULL,0),(2991,'吴起县','0',440,0,'',1,0,'',NULL,0),(2992,'甘泉县','0',440,0,'',1,0,'',NULL,0),(2993,'富县','0',440,0,'',1,0,'',NULL,0),(2994,'洛川县','0',440,0,'',1,0,'',NULL,0),(2995,'宜川县','0',440,0,'',1,0,'',NULL,0),(2996,'黄龙县','0',440,0,'',1,0,'',NULL,0),(2997,'黄陵县','0',440,0,'',1,0,'',NULL,0),(2998,'汉台区','0',441,0,'',1,0,'',NULL,0),(2999,'南郑县','0',441,0,'',1,0,'',NULL,0),(3000,'城固县','0',441,0,'',1,0,'',NULL,0),(3001,'洋县','0',441,0,'',1,0,'',NULL,0),(3002,'西乡县','0',441,0,'',1,0,'',NULL,0),(3003,'勉县','0',441,0,'',1,0,'',NULL,0),(3004,'宁强县','0',441,0,'',1,0,'',NULL,0),(3005,'略阳县','0',441,0,'',1,0,'',NULL,0),(3006,'镇巴县','0',441,0,'',1,0,'',NULL,0),(3007,'留坝县','0',441,0,'',1,0,'',NULL,0),(3008,'佛坪县','0',441,0,'',1,0,'',NULL,0),(3009,'榆阳区','0',442,0,'',1,0,'',NULL,0),(3010,'神木县','0',442,0,'',1,0,'',NULL,0),(3011,'府谷县','0',442,0,'',1,0,'',NULL,0),(3012,'横山县','0',442,0,'',1,0,'',NULL,0),(3013,'靖边县','0',442,0,'',1,0,'',NULL,0),(3014,'定边县','0',442,0,'',1,0,'',NULL,0),(3015,'绥德县','0',442,0,'',1,0,'',NULL,0),(3016,'米脂县','0',442,0,'',1,0,'',NULL,0),(3017,'佳县','0',442,0,'',1,0,'',NULL,0),(3018,'吴堡县','0',442,0,'',1,0,'',NULL,0),(3019,'清涧县','0',442,0,'',1,0,'',NULL,0),(3020,'子洲县','0',442,0,'',1,0,'',NULL,0),(3021,'汉滨区','0',443,0,'',1,0,'',NULL,0),(3022,'汉阴县','0',443,0,'',1,0,'',NULL,0),(3023,'石泉县','0',443,0,'',1,0,'',NULL,0),(3024,'宁陕县','0',443,0,'',1,0,'',NULL,0),(3025,'紫阳县','0',443,0,'',1,0,'',NULL,0),(3026,'岚皋县','0',443,0,'',1,0,'',NULL,0),(3027,'平利县','0',443,0,'',1,0,'',NULL,0),(3028,'镇坪县','0',443,0,'',1,0,'',NULL,0),(3029,'旬阳县','0',443,0,'',1,0,'',NULL,0),(3030,'白河县','0',443,0,'',1,0,'',NULL,0),(3031,'商州区','0',444,0,'',1,0,'',NULL,0),(3032,'洛南县','0',444,0,'',1,0,'',NULL,0),(3033,'丹凤县','0',444,0,'',1,0,'',NULL,0),(3034,'商南县','0',444,0,'',1,0,'',NULL,0),(3035,'山阳县','0',444,0,'',1,0,'',NULL,0),(3036,'镇安县','0',444,0,'',1,0,'',NULL,0),(3037,'柞水县','0',444,0,'',1,0,'',NULL,0),(3038,'城关区','0',445,0,'',1,0,'',NULL,0),(3039,'七里河区','0',445,0,'',1,0,'',NULL,0),(3040,'西固区','0',445,0,'',1,0,'',NULL,0),(3041,'安宁区','0',445,0,'',1,0,'',NULL,0),(3042,'红古区','0',445,0,'',1,0,'',NULL,0),(3043,'永登县','0',445,0,'',1,0,'',NULL,0),(3044,'皋兰县','0',445,0,'',1,0,'',NULL,0),(3045,'榆中县','0',445,0,'',1,0,'',NULL,0),(3046,'金川区','0',447,0,'',1,0,'',NULL,0),(3047,'永昌县','0',447,0,'',1,0,'',NULL,0),(3048,'白银区','0',448,0,'',1,0,'',NULL,0),(3049,'平川区','0',448,0,'',1,0,'',NULL,0),(3050,'靖远县','0',448,0,'',1,0,'',NULL,0),(3051,'会宁县','0',448,0,'',1,0,'',NULL,0),(3052,'景泰县','0',448,0,'',1,0,'',NULL,0),(3053,'秦城区','0',449,0,'',1,0,'',NULL,0),(3054,'北道区','0',449,0,'',1,0,'',NULL,0),(3055,'清水县','0',449,0,'',1,0,'',NULL,0),(3056,'秦安县','0',449,0,'',1,0,'',NULL,0),(3057,'甘谷县','0',449,0,'',1,0,'',NULL,0),(3058,'武山县','0',449,0,'',1,0,'',NULL,0),(3059,'张家川回族自治县','0',449,0,'',1,0,'',NULL,0),(3060,'凉州区','0',450,0,'',1,0,'',NULL,0),(3061,'民勤县','0',450,0,'',1,0,'',NULL,0),(3062,'古浪县','0',450,0,'',1,0,'',NULL,0),(3063,'天祝藏族自治县','0',450,0,'',1,0,'',NULL,0),(3064,'甘州区','0',451,0,'',1,0,'',NULL,0),(3065,'肃南裕固族自治县','0',451,0,'',1,0,'',NULL,0),(3066,'民乐县','0',451,0,'',1,0,'',NULL,0),(3067,'临泽县','0',451,0,'',1,0,'',NULL,0),(3068,'高台县','0',451,0,'',1,0,'',NULL,0),(3069,'山丹县','0',451,0,'',1,0,'',NULL,0),(3070,'崆峒区','0',452,0,'',1,0,'',NULL,0),(3071,'泾川县','0',452,0,'',1,0,'',NULL,0),(3072,'灵台县','0',452,0,'',1,0,'',NULL,0),(3073,'崇信县','0',452,0,'',1,0,'',NULL,0),(3074,'华亭县','0',452,0,'',1,0,'',NULL,0),(3075,'庄浪县','0',452,0,'',1,0,'',NULL,0),(3076,'静宁县','0',452,0,'',1,0,'',NULL,0),(3077,'肃州区','0',453,0,'',1,0,'',NULL,0),(3078,'金塔县','0',453,0,'',1,0,'',NULL,0),(3079,'瓜州县','0',453,0,'',1,0,'',NULL,0),(3080,'肃北蒙古族自治县','0',453,0,'',1,0,'',NULL,0),(3081,'阿克塞哈萨克族自治县','0',453,0,'',1,0,'',NULL,0),(3082,'玉门市','0',453,0,'',1,0,'',NULL,0),(3083,'敦煌市','0',453,0,'',1,0,'',NULL,0),(3084,'西峰区','0',454,0,'',1,0,'',NULL,0),(3085,'庆城县','0',454,0,'',1,0,'',NULL,0),(3086,'环县','0',454,0,'',1,0,'',NULL,0),(3087,'华池县','0',454,0,'',1,0,'',NULL,0),(3088,'合水县','0',454,0,'',1,0,'',NULL,0),(3089,'正宁县','0',454,0,'',1,0,'',NULL,0),(3090,'宁县','0',454,0,'',1,0,'',NULL,0),(3091,'镇原县','0',454,0,'',1,0,'',NULL,0),(3092,'安定区','0',455,0,'',1,0,'',NULL,0),(3093,'通渭县','0',455,0,'',1,0,'',NULL,0),(3094,'陇西县','0',455,0,'',1,0,'',NULL,0),(3095,'渭源县','0',455,0,'',1,0,'',NULL,0),(3096,'临洮县','0',455,0,'',1,0,'',NULL,0),(3097,'漳县','0',455,0,'',1,0,'',NULL,0),(3098,'岷县','0',455,0,'',1,0,'',NULL,0),(3099,'武都区','0',456,0,'',1,0,'',NULL,0),(3100,'成县','0',456,0,'',1,0,'',NULL,0),(3101,'文县','0',456,0,'',1,0,'',NULL,0),(3102,'宕昌县','0',456,0,'',1,0,'',NULL,0),(3103,'康县','0',456,0,'',1,0,'',NULL,0),(3104,'西和县','0',456,0,'',1,0,'',NULL,0),(3105,'礼县','0',456,0,'',1,0,'',NULL,0),(3106,'徽县','0',456,0,'',1,0,'',NULL,0),(3107,'两当县','0',456,0,'',1,0,'',NULL,0),(3108,'临夏市','0',457,0,'',1,0,'',NULL,0),(3109,'临夏县','0',457,0,'',1,0,'',NULL,0),(3110,'康乐县','0',457,0,'',1,0,'',NULL,0),(3111,'永靖县','0',457,0,'',1,0,'',NULL,0),(3112,'广河县','0',457,0,'',1,0,'',NULL,0),(3113,'和政县','0',457,0,'',1,0,'',NULL,0),(3114,'东乡族自治县','0',457,0,'',1,0,'',NULL,0),(3115,'积石山保安族东乡族撒拉族自治县','0',457,0,'',1,0,'',NULL,0),(3116,'合作市','0',458,0,'',1,0,'',NULL,0),(3117,'临潭县','0',458,0,'',1,0,'',NULL,0),(3118,'卓尼县','0',458,0,'',1,0,'',NULL,0),(3119,'舟曲县','0',458,0,'',1,0,'',NULL,0),(3120,'迭部县','0',458,0,'',1,0,'',NULL,0),(3121,'玛曲县','0',458,0,'',1,0,'',NULL,0),(3122,'碌曲县','0',458,0,'',1,0,'',NULL,0),(3123,'夏河县','0',458,0,'',1,0,'',NULL,0),(3124,'城东区','0',459,0,'',1,0,'',NULL,0),(3125,'城中区','0',459,0,'',1,0,'',NULL,0),(3126,'城西区','0',459,0,'',1,0,'',NULL,0),(3127,'城北区','0',459,0,'',1,0,'',NULL,0),(3128,'大通回族土族自治县','0',459,0,'',1,0,'',NULL,0),(3129,'湟中县','0',459,0,'',1,0,'',NULL,0),(3130,'湟源县','0',459,0,'',1,0,'',NULL,0),(3131,'平安县','0',460,0,'',1,0,'',NULL,0),(3132,'民和回族土族自治县','0',460,0,'',1,0,'',NULL,0),(3133,'乐都县','0',460,0,'',1,0,'',NULL,0),(3134,'互助土族自治县','0',460,0,'',1,0,'',NULL,0),(3135,'化隆回族自治县','0',460,0,'',1,0,'',NULL,0),(3136,'循化撒拉族自治县','0',460,0,'',1,0,'',NULL,0),(3137,'门源回族自治县','0',461,0,'',1,0,'',NULL,0),(3138,'祁连县','0',461,0,'',1,0,'',NULL,0),(3139,'海晏县','0',461,0,'',1,0,'',NULL,0),(3140,'刚察县','0',461,0,'',1,0,'',NULL,0),(3141,'同仁县','0',462,0,'',1,0,'',NULL,0),(3142,'尖扎县','0',462,0,'',1,0,'',NULL,0),(3143,'泽库县','0',462,0,'',1,0,'',NULL,0),(3144,'河南蒙古族自治县','0',462,0,'',1,0,'',NULL,0),(3145,'共和县','0',463,0,'',1,0,'',NULL,0),(3146,'同德县','0',463,0,'',1,0,'',NULL,0),(3147,'贵德县','0',463,0,'',1,0,'',NULL,0),(3148,'兴海县','0',463,0,'',1,0,'',NULL,0),(3149,'贵南县','0',463,0,'',1,0,'',NULL,0),(3150,'玛沁县','0',464,0,'',1,0,'',NULL,0),(3151,'班玛县','0',464,0,'',1,0,'',NULL,0),(3152,'甘德县','0',464,0,'',1,0,'',NULL,0),(3153,'达日县','0',464,0,'',1,0,'',NULL,0),(3154,'久治县','0',464,0,'',1,0,'',NULL,0),(3155,'玛多县','0',464,0,'',1,0,'',NULL,0),(3156,'玉树县','0',465,0,'',1,0,'',NULL,0),(3157,'杂多县','0',465,0,'',1,0,'',NULL,0),(3158,'称多县','0',465,0,'',1,0,'',NULL,0),(3159,'治多县','0',465,0,'',1,0,'',NULL,0),(3160,'囊谦县','0',465,0,'',1,0,'',NULL,0),(3161,'曲麻莱县','0',465,0,'',1,0,'',NULL,0),(3162,'格尔木市','0',466,0,'',1,0,'',NULL,0),(3163,'德令哈市','0',466,0,'',1,0,'',NULL,0),(3164,'乌兰县','0',466,0,'',1,0,'',NULL,0),(3165,'都兰县','0',466,0,'',1,0,'',NULL,0),(3166,'天峻县','0',466,0,'',1,0,'',NULL,0),(3167,'兴庆区','0',467,0,'',1,0,'',NULL,0),(3168,'西夏区','0',467,0,'',1,0,'',NULL,0),(3169,'金凤区','0',467,0,'',1,0,'',NULL,0),(3170,'永宁县','0',467,0,'',1,0,'',NULL,0),(3171,'贺兰县','0',467,0,'',1,0,'',NULL,0),(3172,'灵武市','0',467,0,'',1,0,'',NULL,0),(3173,'大武口区','0',468,0,'',1,0,'',NULL,0),(3174,'惠农区','0',468,0,'',1,0,'',NULL,0),(3175,'平罗县','0',468,0,'',1,0,'',NULL,0),(3176,'利通区','0',469,0,'',1,0,'',NULL,0),(3177,'盐池县','0',469,0,'',1,0,'',NULL,0),(3178,'同心县','0',469,0,'',1,0,'',NULL,0),(3179,'青铜峡市','0',469,0,'',1,0,'',NULL,0),(3180,'原州区','0',470,0,'',1,0,'',NULL,0),(3181,'西吉县','0',470,0,'',1,0,'',NULL,0),(3182,'隆德县','0',470,0,'',1,0,'',NULL,0),(3183,'泾源县','0',470,0,'',1,0,'',NULL,0),(3184,'彭阳县','0',470,0,'',1,0,'',NULL,0),(3185,'沙坡头区','0',471,0,'',1,0,'',NULL,0),(3186,'中宁县','0',471,0,'',1,0,'',NULL,0),(3187,'海原县','0',471,0,'',1,0,'',NULL,0),(3188,'天山区','0',472,0,'',1,0,'',NULL,0),(3189,'沙依巴克区','0',472,0,'',1,0,'',NULL,0),(3190,'新市区','0',472,0,'',1,0,'',NULL,0),(3191,'水磨沟区','0',472,0,'',1,0,'',NULL,0),(3192,'头屯河区','0',472,0,'',1,0,'',NULL,0),(3193,'达坂城区','0',472,0,'',1,0,'',NULL,0),(3194,'东山区','0',472,0,'',1,0,'',NULL,0),(3195,'乌鲁木齐县','0',472,0,'',1,0,'',NULL,0),(3196,'独山子区','0',473,0,'',1,0,'',NULL,0),(3197,'克拉玛依区','0',473,0,'',1,0,'',NULL,0),(3198,'白碱滩区','0',473,0,'',1,0,'',NULL,0),(3199,'乌尔禾区','0',473,0,'',1,0,'',NULL,0),(3200,'吐鲁番市','0',474,0,'',1,0,'',NULL,0),(3201,'鄯善县','0',474,0,'',1,0,'',NULL,0),(3202,'托克逊县','0',474,0,'',1,0,'',NULL,0),(3203,'哈密市','0',475,0,'',1,0,'',NULL,0),(3204,'巴里坤哈萨克自治县','0',475,0,'',1,0,'',NULL,0),(3205,'伊吾县','0',475,0,'',1,0,'',NULL,0),(3206,'昌吉市','0',476,0,'',1,0,'',NULL,0),(3207,'阜康市','0',476,0,'',1,0,'',NULL,0),(3208,'米泉市','0',476,0,'',1,0,'',NULL,0),(3209,'呼图壁县','0',476,0,'',1,0,'',NULL,0),(3210,'玛纳斯县','0',476,0,'',1,0,'',NULL,0),(3211,'奇台县','0',476,0,'',1,0,'',NULL,0),(3212,'吉木萨尔县','0',476,0,'',1,0,'',NULL,0),(3213,'木垒哈萨克自治县','0',476,0,'',1,0,'',NULL,0),(3214,'博乐市','0',477,0,'',1,0,'',NULL,0),(3215,'精河县','0',477,0,'',1,0,'',NULL,0),(3216,'温泉县','0',477,0,'',1,0,'',NULL,0),(3217,'库尔勒市','0',478,0,'',1,0,'',NULL,0),(3218,'轮台县','0',478,0,'',1,0,'',NULL,0),(3219,'尉犁县','0',478,0,'',1,0,'',NULL,0),(3220,'若羌县','0',478,0,'',1,0,'',NULL,0),(3221,'且末县','0',478,0,'',1,0,'',NULL,0),(3222,'焉耆回族自治县','0',478,0,'',1,0,'',NULL,0),(3223,'和静县','0',478,0,'',1,0,'',NULL,0),(3224,'和硕县','0',478,0,'',1,0,'',NULL,0),(3225,'博湖县','0',478,0,'',1,0,'',NULL,0),(3226,'阿克苏市','0',479,0,'',1,0,'',NULL,0),(3227,'温宿县','0',479,0,'',1,0,'',NULL,0),(3228,'库车县','0',479,0,'',1,0,'',NULL,0),(3229,'沙雅县','0',479,0,'',1,0,'',NULL,0),(3230,'新和县','0',479,0,'',1,0,'',NULL,0),(3231,'拜城县','0',479,0,'',1,0,'',NULL,0),(3232,'乌什县','0',479,0,'',1,0,'',NULL,0),(3233,'阿瓦提县','0',479,0,'',1,0,'',NULL,0),(3234,'柯坪县','0',479,0,'',1,0,'',NULL,0),(3235,'阿图什市','0',480,0,'',1,0,'',NULL,0),(3236,'阿克陶县','0',480,0,'',1,0,'',NULL,0),(3237,'阿合奇县','0',480,0,'',1,0,'',NULL,0),(3238,'乌恰县','0',480,0,'',1,0,'',NULL,0),(3239,'喀什市','0',481,0,'',1,0,'',NULL,0),(3240,'疏附县','0',481,0,'',1,0,'',NULL,0),(3241,'疏勒县','0',481,0,'',1,0,'',NULL,0),(3242,'英吉沙县','0',481,0,'',1,0,'',NULL,0),(3243,'泽普县','0',481,0,'',1,0,'',NULL,0),(3244,'莎车县','0',481,0,'',1,0,'',NULL,0),(3245,'叶城县','0',481,0,'',1,0,'',NULL,0),(3246,'麦盖提县','0',481,0,'',1,0,'',NULL,0),(3247,'岳普湖县','0',481,0,'',1,0,'',NULL,0),(3248,'伽师县','0',481,0,'',1,0,'',NULL,0),(3249,'巴楚县','0',481,0,'',1,0,'',NULL,0),(3250,'塔什库尔干塔吉克自治县','0',481,0,'',1,0,'',NULL,0),(3251,'和田市','0',482,0,'',1,0,'',NULL,0),(3252,'和田县','0',482,0,'',1,0,'',NULL,0),(3253,'墨玉县','0',482,0,'',1,0,'',NULL,0),(3254,'皮山县','0',482,0,'',1,0,'',NULL,0),(3255,'洛浦县','0',482,0,'',1,0,'',NULL,0),(3256,'策勒县','0',482,0,'',1,0,'',NULL,0),(3257,'于田县','0',482,0,'',1,0,'',NULL,0),(3258,'民丰县','0',482,0,'',1,0,'',NULL,0),(3259,'伊宁市','0',483,0,'',1,0,'',NULL,0),(3260,'奎屯市','0',483,0,'',1,0,'',NULL,0),(3261,'伊宁县','0',483,0,'',1,0,'',NULL,0),(3262,'察布查尔锡伯自治县','0',483,0,'',1,0,'',NULL,0),(3263,'霍城县','0',483,0,'',1,0,'',NULL,0),(3264,'巩留县','0',483,0,'',1,0,'',NULL,0),(3265,'新源县','0',483,0,'',1,0,'',NULL,0),(3266,'昭苏县','0',483,0,'',1,0,'',NULL,0),(3267,'特克斯县','0',483,0,'',1,0,'',NULL,0),(3268,'尼勒克县','0',483,0,'',1,0,'',NULL,0),(3269,'塔城市','0',484,0,'',1,0,'',NULL,0),(3270,'乌苏市','0',484,0,'',1,0,'',NULL,0),(3271,'额敏县','0',484,0,'',1,0,'',NULL,0),(3272,'沙湾县','0',484,0,'',1,0,'',NULL,0),(3273,'托里县','0',484,0,'',1,0,'',NULL,0),(3274,'裕民县','0',484,0,'',1,0,'',NULL,0),(3275,'和布克赛尔蒙古自治县','0',484,0,'',1,0,'',NULL,0),(3276,'阿勒泰市','0',485,0,'',1,0,'',NULL,0),(3277,'布尔津县','0',485,0,'',1,0,'',NULL,0),(3278,'富蕴县','0',485,0,'',1,0,'',NULL,0),(3279,'福海县','0',485,0,'',1,0,'',NULL,0),(3280,'哈巴河县','0',485,0,'',1,0,'',NULL,0),(3281,'青河县','0',485,0,'',1,0,'',NULL,0),(3282,'吉木乃县','0',485,0,'',1,0,'',NULL,0),(3358,'钓鱼岛','',0,0,'',1,0,'',NULL,0),(3359,'钓鱼岛','',3358,0,'',1,0,'',NULL,0);
/*!40000 ALTER TABLE `hl_linkage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_log`
--

DROP TABLE IF EXISTS `hl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_log` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(15) NOT NULL,
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `querystring` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `module` (`module`,`file`,`action`),
  KEY `username` (`username`,`action`)
) ENGINE=MyISAM AUTO_INCREMENT=940 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_log`
--

LOCK TABLES `hl_log` WRITE;
/*!40000 ALTER TABLE `hl_log` DISABLE KEYS */;
INSERT INTO `hl_log` VALUES (1,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-03 20:24:58'),(2,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-03 20:27:18'),(3,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-03 20:27:22'),(4,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-03 20:27:23'),(5,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-03 20:28:45'),(6,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-03 20:29:03'),(7,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 20:40:48'),(8,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 20:44:39'),(9,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:44:56'),(10,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:45:03'),(11,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:45:13'),(12,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:45:19'),(13,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:45:32'),(14,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:46:42'),(15,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:47:54'),(16,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 20:48:27'),(17,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 20:50:28'),(18,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:51:08'),(19,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 20:59:47'),(20,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:00:05'),(21,'',0,'template','','style','?m=template&c=style&a=disable','',1,'healstec','127.0.0.1','2017-06-03 21:01:58'),(22,'',0,'template','','style','?m=template&c=style&a=disable','',1,'healstec','127.0.0.1','2017-06-03 21:02:18'),(23,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:02:26'),(24,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:02:31'),(25,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:02:34'),(26,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:02:44'),(27,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:02:55'),(28,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:03:03'),(29,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:17:39'),(30,'',0,'admin','','setting','?m=admin&c=setting&a=save','',1,'healstec','127.0.0.1','2017-06-03 21:18:15'),(31,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-03 21:40:43'),(32,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-03 21:40:47'),(33,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-03 21:40:51'),(34,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:41:06'),(35,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:44:18'),(36,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:45:04'),(37,'',0,'admin','','setting','?m=admin&c=setting&a=save','',1,'healstec','127.0.0.1','2017-06-03 21:46:24'),(38,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:46:34'),(39,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 21:54:37'),(40,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:54:42'),(41,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:55:54'),(42,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:56:06'),(43,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:56:32'),(44,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:56:37'),(45,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:57:29'),(46,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:57:39'),(47,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 21:58:09'),(48,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:13:33'),(49,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:13:49'),(50,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:13:58'),(51,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:14:13'),(52,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:14:28'),(53,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:14:48'),(54,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:26:34'),(55,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:26:57'),(56,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:27:13'),(57,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:28:57'),(58,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:33:53'),(59,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:35:42'),(60,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:36:27'),(61,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:38:12'),(62,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 22:40:38'),(63,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:49:33'),(64,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:51:03'),(65,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:57:13'),(66,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:57:49'),(67,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 22:58:00'),(68,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:01:16'),(69,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 23:06:38'),(70,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:08:48'),(71,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 23:09:20'),(72,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:09:31'),(73,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:09:57'),(74,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:11:23'),(75,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:11:25'),(76,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-03 23:12:26'),(77,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:12:34'),(78,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:13:13'),(79,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-03 23:13:39'),(80,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:13:45'),(81,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:13:46'),(82,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:14:13'),(83,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:14:22'),(84,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:16:24'),(85,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:16:26'),(86,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-03 23:16:53'),(87,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-03 23:16:59'),(88,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:17:04'),(89,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:17:05'),(90,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:17:44'),(91,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:17:53'),(92,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:17:55'),(93,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:18:52'),(94,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:19:18'),(95,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:20:35'),(96,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:20:36'),(97,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:52:15'),(98,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-03 23:52:16'),(99,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 23:58:26'),(100,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-03 23:59:08'),(101,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-04 00:08:46'),(102,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-04 00:11:13'),(103,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-04 00:18:18'),(104,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-05 10:57:26'),(105,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-05 10:57:37'),(106,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'healstec','127.0.0.1','2017-06-05 10:58:35'),(107,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 10:58:49'),(108,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 10:58:57'),(109,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 10:59:22'),(110,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 10:59:29'),(111,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 11:05:00'),(112,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 11:05:11'),(113,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 11:11:53'),(114,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 11:12:06'),(115,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 11:12:18'),(116,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-05 11:12:23'),(117,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:38:28'),(118,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:45:08'),(119,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:45:10'),(120,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:45:43'),(121,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:45:52'),(122,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:45:53'),(123,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:45:54'),(124,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:46:10'),(125,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:46:12'),(126,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:46:59'),(127,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:58:35'),(128,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:58:36'),(129,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:59:09'),(130,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:59:25'),(131,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 11:59:28'),(132,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:26:07'),(133,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:26:09'),(134,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-05 12:34:04'),(135,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:39:42'),(136,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:39:52'),(137,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:39:54'),(138,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:40:03'),(139,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:40:05'),(140,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:40:14'),(141,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:47:48'),(142,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:48:24'),(143,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:48:25'),(144,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:49:05'),(145,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-05 12:50:03'),(146,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:50:23'),(147,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:54:28'),(148,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:56:38'),(149,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:58:26'),(150,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:59:13'),(151,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 12:59:56'),(152,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:00:54'),(153,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-05 13:08:19'),(154,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:10:53'),(155,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:12:00'),(156,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:12:13'),(157,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:12:14'),(158,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:18:20'),(159,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:19:48'),(160,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:19:59'),(161,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:20:04'),(162,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 13:20:33'),(163,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:21:42'),(164,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:22:14'),(165,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 13:26:23'),(166,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 13:31:28'),(167,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 13:31:41'),(168,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:39:58'),(169,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'healstec','127.0.0.1','2017-06-05 13:40:47'),(170,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-05 13:41:03'),(171,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-05 13:41:38'),(172,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=import','',1,'healstec','127.0.0.1','2017-06-05 13:42:47'),(173,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 14:11:06'),(174,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:16:39'),(175,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:16:49'),(176,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 14:17:06'),(177,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:17:15'),(178,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:19:12'),(179,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:19:15'),(180,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:19:17'),(181,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 14:19:29'),(182,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:19:33'),(183,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 14:19:38'),(184,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 14:19:44'),(185,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:32:47'),(186,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:32:54'),(187,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:34:46'),(188,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-05 14:34:59'),(189,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 15:00:19'),(190,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 15:00:38'),(191,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 15:01:01'),(192,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 15:01:07'),(193,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 15:01:30'),(194,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:08:36'),(195,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:10:14'),(196,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:11:18'),(197,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:11:37'),(198,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:12:13'),(199,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:18:51'),(200,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:20:13'),(201,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:20:22'),(202,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:20:35'),(203,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:20:39'),(204,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:24:54'),(205,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:25:52'),(206,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:26:19'),(207,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:27:22'),(208,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:27:29'),(209,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:37:37'),(210,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:37:49'),(211,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:37:54'),(212,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:38:02'),(213,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:38:10'),(214,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:38:19'),(215,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:38:33'),(216,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:39:19'),(217,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:39:30'),(218,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:39:34'),(219,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 19:39:48'),(220,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-05 19:40:28'),(221,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-05 19:42:22'),(222,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-06 09:20:46'),(223,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-06 09:21:14'),(224,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:22:19'),(225,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:22:32'),(226,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:23:33'),(227,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:23:43'),(228,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:27:13'),(229,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:29:16'),(230,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:29:29'),(231,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:31:35'),(232,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:32:09'),(233,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:33:48'),(234,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:36:05'),(235,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:36:16'),(236,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:36:25'),(237,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:37:12'),(238,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:37:18'),(239,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:37:28'),(240,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:38:03'),(241,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:38:38'),(242,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:38:44'),(243,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:39:06'),(244,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-06 09:39:35'),(245,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-06 09:39:40'),(246,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-06 09:39:45'),(247,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:41:02'),(248,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:41:22'),(249,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:42:24'),(250,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:43:37'),(251,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:45:14'),(252,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:45:24'),(253,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:47:27'),(254,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:47:46'),(255,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:48:03'),(256,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 09:49:06'),(257,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:56:59'),(258,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 09:59:03'),(259,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:30:01'),(260,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:44:31'),(261,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:44:39'),(262,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:44:54'),(263,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:47:09'),(264,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=delete','',1,'healstec','127.0.0.1','2017-06-06 12:47:38'),(265,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:47:46'),(266,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:49:46'),(267,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:49:59'),(268,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 12:50:37'),(269,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 12:50:43'),(270,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 12:51:02'),(271,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 12:51:10'),(272,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 12:52:16'),(273,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 12:52:44'),(274,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 12:52:58'),(275,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 12:56:02'),(276,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:03:35'),(277,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:04:16'),(278,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:04:28'),(279,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:04:33'),(280,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:15:12'),(281,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:15:32'),(282,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:17:47'),(283,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:18:05'),(284,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:18:12'),(285,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:18:39'),(286,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:18:45'),(287,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:20:13'),(288,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:20:42'),(289,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:21:13'),(290,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:21:14'),(291,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:21:19'),(292,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:21:45'),(293,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:21:58'),(294,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:22:24'),(295,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:28:54'),(296,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:29:15'),(297,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:29:19'),(298,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:29:34'),(299,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:31:20'),(300,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:31:55'),(301,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:32:01'),(302,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:32:15'),(303,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:32:55'),(304,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:33:04'),(305,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:33:57'),(306,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:34:30'),(307,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:34:33'),(308,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:34:45'),(309,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:34:48'),(310,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:34:58'),(311,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:36:44'),(312,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:37:07'),(313,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:37:13'),(314,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:37:31'),(315,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:37:41'),(316,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:37:45'),(317,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:38:03'),(318,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:38:06'),(319,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 13:38:23'),(320,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:44:50'),(321,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:45:01'),(322,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:46:08'),(323,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 13:46:20'),(324,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 14:30:19'),(325,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 14:31:14'),(326,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 14:31:24'),(327,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 14:31:39'),(328,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 14:33:58'),(329,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-06 23:14:43'),(330,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-06 23:15:00'),(331,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:19:59'),(332,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:20:36'),(333,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:22:15'),(334,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:23:42'),(335,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:24:11'),(336,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:25:08'),(337,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:26:59'),(338,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:42:22'),(339,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:43:04'),(340,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:43:09'),(341,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:43:18'),(342,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:43:29'),(343,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:43:48'),(344,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:43:52'),(345,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:43:58'),(346,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:44:30'),(347,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:44:48'),(348,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:45:25'),(349,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:45:34'),(350,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:45:58'),(351,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:46:09'),(352,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:46:23'),(353,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:47:48'),(354,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:48:11'),(355,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:48:26'),(356,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:49:56'),(357,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:50:22'),(358,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:50:28'),(359,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:50:33'),(360,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:50:48'),(361,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:50:56'),(362,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:51:03'),(363,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:51:17'),(364,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:51:26'),(365,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:51:32'),(366,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:51:46'),(367,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-06 23:52:01'),(368,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:52:07'),(369,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-06 23:52:47'),(370,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-07 00:03:45'),(371,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-07 00:03:51'),(372,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:04:02'),(373,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:04:21'),(374,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:04:25'),(375,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:05:08'),(376,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 00:13:40'),(377,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-07 00:13:46'),(378,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:13:51'),(379,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:14:16'),(380,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:14:25'),(381,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:14:49'),(382,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:14:53'),(383,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 00:15:15'),(384,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-07 09:06:15'),(385,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-07 09:06:31'),(386,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:06:40'),(387,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:10:46'),(388,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:11:15'),(389,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:11:45'),(390,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:11:54'),(391,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:12:13'),(392,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:12:33'),(393,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:16:12'),(394,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:16:25'),(395,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:18:06'),(396,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:22:36'),(397,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-07 09:24:44'),(398,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:25:00'),(399,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:27:57'),(400,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:28:36'),(401,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:29:03'),(402,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:29:23'),(403,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:29:36'),(404,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:29:40'),(405,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:29:51'),(406,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:29:56'),(407,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:30:06'),(408,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:30:21'),(409,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:30:31'),(410,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:54:19'),(411,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:55:55'),(412,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 09:56:01'),(413,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 12:59:41'),(414,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:00:02'),(415,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:00:45'),(416,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-07 13:00:59'),(417,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-07 13:01:45'),(418,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:02:18'),(419,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:02:32'),(420,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:03:26'),(421,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 13:05:29'),(422,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:17:42'),(423,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:19:07'),(424,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-07 13:22:03'),(425,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:24:01'),(426,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:24:20'),(427,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:25:02'),(428,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:25:10'),(429,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-07 13:25:20'),(430,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-07 13:26:22'),(431,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-07 13:26:29'),(432,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-07 13:26:47'),(433,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-08 00:05:05'),(434,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-08 00:05:24'),(435,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 00:05:49'),(436,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 00:08:05'),(437,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 00:13:43'),(438,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 00:15:13'),(439,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 00:15:25'),(440,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 00:15:36'),(441,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-08 00:19:32'),(442,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-08 00:29:20'),(443,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-08 00:30:49'),(444,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-08 10:05:26'),(445,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-08 10:05:39'),(446,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-08 10:05:49'),(447,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-08 10:06:31'),(448,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-08 10:07:22'),(449,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 10:13:23'),(450,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 12:48:44'),(451,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=edit','',1,'healstec','127.0.0.1','2017-06-08 12:48:57'),(452,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'healstec','127.0.0.1','2017-06-08 12:49:03'),(453,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'healstec','127.0.0.1','2017-06-08 12:49:50'),(454,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-08 12:50:00'),(455,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 12:53:01'),(456,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 12:54:36'),(457,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 13:01:57'),(458,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 13:04:03'),(459,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 13:04:20'),(460,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 13:04:59'),(461,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-08 13:21:20'),(462,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-08 13:21:29'),(463,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 14:26:25'),(464,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 14:26:37'),(465,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 14:27:39'),(466,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 14:32:17'),(467,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 14:32:27'),(468,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-08 14:35:30'),(469,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-08 14:35:37'),(470,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-08 23:14:59'),(471,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-08 23:26:05'),(472,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 23:26:15'),(473,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-08 23:27:00'),(474,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:31:47'),(475,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:42:36'),(476,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:42:47'),(477,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:44:04'),(478,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:44:11'),(479,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:44:49'),(480,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:44:57'),(481,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:45:31'),(482,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 00:46:20'),(483,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 00:46:27'),(484,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 00:46:50'),(485,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 00:46:51'),(486,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 00:47:49'),(487,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-09 16:23:01'),(488,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-09 16:23:17'),(489,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-09 16:23:18'),(490,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-09 16:23:33'),(491,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-09 16:23:34'),(492,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-09 16:23:48'),(493,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 16:24:53'),(494,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 16:29:57'),(495,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-09 16:30:19'),(496,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-09 16:30:22'),(497,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-09 16:30:26'),(498,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-09 16:30:30'),(499,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-09 16:30:34'),(500,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 16:30:41'),(501,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 16:31:40'),(502,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 16:34:15'),(503,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 16:35:23'),(504,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 16:35:26'),(505,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:13:42'),(506,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:13:57'),(507,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:14:58'),(508,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 17:15:17'),(509,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-09 17:15:51'),(510,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-09 17:20:02'),(511,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:37:35'),(512,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:38:00'),(513,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:42:11'),(514,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:43:58'),(515,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:44:26'),(516,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:44:51'),(517,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:44:57'),(518,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:45:22'),(519,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 17:49:09'),(520,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 17:49:13'),(521,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:51:51'),(522,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:51:54'),(523,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:52:23'),(524,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:52:30'),(525,'',0,'special','','special','?m=special&c=special&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:56:16'),(526,'',0,'special','','special','?m=special&c=special&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:57:00'),(527,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:57:52'),(528,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:59:10'),(529,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 17:59:11'),(530,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:03:42'),(531,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:03:43'),(532,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:04:56'),(533,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:06:56'),(534,'',0,'special','','special','?m=special&c=special&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:07:48'),(535,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:11:21'),(536,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:13:16'),(537,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:16:40'),(538,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:16:59'),(539,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:17:25'),(540,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:23:51'),(541,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:24:04'),(542,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:24:23'),(543,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:29:07'),(544,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:33:06'),(545,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:33:22'),(546,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:39:03'),(547,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:39:34'),(548,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:39:36'),(549,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:42:05'),(550,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:43:13'),(551,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:43:20'),(552,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:43:34'),(553,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:43:46'),(554,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:43:49'),(555,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-09 18:44:22'),(556,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-09 18:44:30'),(557,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-09 18:44:47'),(558,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 21:51:15'),(559,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-09 21:51:26'),(560,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-09 21:51:57'),(561,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-09 21:52:21'),(562,'',0,'admin','','setting','?m=admin&c=setting&a=save','',1,'healstec','127.0.0.1','2017-06-09 22:12:04'),(563,'',0,'wap','','wap_admin','?m=wap&c=wap_admin&a=edit','',1,'healstec','127.0.0.1','2017-06-09 22:12:28'),(564,'',0,'wap','','wap_admin','?m=wap&c=wap_admin&a=edit','',1,'healstec','127.0.0.1','2017-06-09 22:12:32'),(565,'',0,'content','','content','?m=content&c=content&a=clear_data','',1,'healstec','127.0.0.1','2017-06-09 22:12:39'),(566,'',0,'content','','create_html','?m=content&c=create_html&a=show','',1,'healstec','127.0.0.1','2017-06-09 22:12:40'),(567,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'healstec','127.0.0.1','2017-06-09 22:12:41'),(568,'',0,'content','','create_html','?m=content&c=create_html&a=show','',1,'healstec','127.0.0.1','2017-06-09 22:12:43'),(569,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-09 22:22:53'),(570,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-10 00:06:30'),(571,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-10 00:07:23'),(572,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-10 00:27:56'),(573,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-10 00:28:03'),(574,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-10 00:31:46'),(575,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-10 00:32:14'),(576,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-10 00:33:38'),(577,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-10 00:33:44'),(578,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-11 20:57:48'),(579,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-11 21:04:03'),(580,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'healstec','127.0.0.1','2017-06-11 21:05:11'),(581,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:05:19'),(582,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:05:32'),(583,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:05:46'),(584,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:05:58'),(585,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:06:05'),(586,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:06:29'),(587,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:07:00'),(588,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:07:11'),(589,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:07:37'),(590,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:07:50'),(591,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:08:14'),(592,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:08:44'),(593,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:08:48'),(594,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:09:07'),(595,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-11 21:10:39'),(596,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-11 21:12:01'),(597,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-11 21:12:34'),(598,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-11 21:12:42'),(599,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-11 21:13:14'),(600,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-11 21:13:22'),(601,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-11 21:13:48'),(602,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:42:55'),(603,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:43:41'),(604,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:43:45'),(605,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:43:48'),(606,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:44:17'),(607,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'healstec','127.0.0.1','2017-06-11 21:44:26'),(608,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-13 00:49:03'),(609,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-13 00:49:17'),(610,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 00:49:28'),(611,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 00:50:36'),(612,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-13 22:46:20'),(613,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-13 22:46:32'),(614,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:47:06'),(615,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:49:02'),(616,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:49:35'),(617,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:49:48'),(618,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:50:04'),(619,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:50:24'),(620,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:50:28'),(621,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:50:53'),(622,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:51:46'),(623,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:52:06'),(624,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:52:11'),(625,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:52:21'),(626,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:52:26'),(627,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:52:30'),(628,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:52:34'),(629,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:52:37'),(630,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:52:40'),(631,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:52:57'),(632,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:53:35'),(633,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:54:02'),(634,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:54:13'),(635,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:54:29'),(636,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:54:38'),(637,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:54:54'),(638,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:55:30'),(639,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:55:44'),(640,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:55:51'),(641,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:56:03'),(642,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:56:11'),(643,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 22:56:23'),(644,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:57:38'),(645,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:59:20'),(646,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:59:26'),(647,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 22:59:33'),(648,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:01:08'),(649,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:02:21'),(650,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:02:48'),(651,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:04:00'),(652,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:04:25'),(653,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:04:46'),(654,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:25:54'),(655,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:26:17'),(656,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:27:59'),(657,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:29:07'),(658,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:29:52'),(659,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:30:25'),(660,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:32:15'),(661,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:32:24'),(662,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:33:32'),(663,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:33:36'),(664,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:33:51'),(665,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:34:35'),(666,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:35:04'),(667,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:35:15'),(668,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:35:46'),(669,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:36:02'),(670,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:36:55'),(671,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:37:01'),(672,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:37:08'),(673,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:37:32'),(674,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:37:54'),(675,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:38:17'),(676,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:38:25'),(677,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:38:30'),(678,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:38:36'),(679,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:39:23'),(680,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:40:07'),(681,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:40:13'),(682,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:40:25'),(683,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:41:23'),(684,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:41:49'),(685,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:42:03'),(686,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:42:09'),(687,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:42:17'),(688,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:43:05'),(689,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:43:25'),(690,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:43:29'),(691,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:43:57'),(692,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:44:19'),(693,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:44:49'),(694,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:46:14'),(695,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:46:59'),(696,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:47:13'),(697,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:47:22'),(698,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:48:29'),(699,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:48:47'),(700,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:50:28'),(701,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:50:55'),(702,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:51:48'),(703,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:52:02'),(704,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-13 23:53:11'),(705,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:53:20'),(706,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:53:31'),(707,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:53:49'),(708,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:54:37'),(709,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:54:44'),(710,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:55:46'),(711,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:55:59'),(712,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:56:14'),(713,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:56:56'),(714,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:57:11'),(715,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:57:16'),(716,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:57:24'),(717,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:59:41'),(718,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:59:44'),(719,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-13 23:59:51'),(720,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:02:22'),(721,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:02:32'),(722,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:02:37'),(723,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:02:47'),(724,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:02:50'),(725,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:04:02'),(726,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:04:23'),(727,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:05:02'),(728,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:05:14'),(729,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:14:06'),(730,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:14:10'),(731,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:14:13'),(732,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:14:16'),(733,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-14 00:14:25'),(734,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-14 00:14:40'),(735,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-14 00:14:48'),(736,'',0,'content','','content','?m=content&c=content&a=add','',1,'healstec','127.0.0.1','2017-06-14 00:15:05'),(737,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:33:34'),(738,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:33:40'),(739,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:33:43'),(740,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:33:48'),(741,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:33:51'),(742,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:33:57'),(743,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:34:00'),(744,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:34:05'),(745,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:38:51'),(746,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:39:31'),(747,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 00:40:09'),(748,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-14 09:13:55'),(749,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-14 09:14:09'),(750,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:14:31'),(751,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:15:01'),(752,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:15:07'),(753,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:15:50'),(754,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:16:49'),(755,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:17:34'),(756,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:17:57'),(757,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:18:02'),(758,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:18:20'),(759,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:18:34'),(760,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:18:50'),(761,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:19:10'),(762,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:19:20'),(763,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:12'),(764,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:18'),(765,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:21'),(766,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:25'),(767,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:28'),(768,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:32'),(769,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:35'),(770,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:39'),(771,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:42'),(772,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:28:45'),(773,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:29:10'),(774,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:29:14'),(775,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-14 09:32:44'),(776,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-14 09:32:55'),(777,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-14 09:32:57'),(778,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:41:40'),(779,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:42:24'),(780,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:42:38'),(781,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:43:17'),(782,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:43:21'),(783,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:43:35'),(784,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:43:39'),(785,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:43:45'),(786,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:47:51'),(787,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:48:14'),(788,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:48:23'),(789,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:48:53'),(790,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:31'),(791,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:35'),(792,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:39'),(793,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:42'),(794,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:45'),(795,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:48'),(796,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:50'),(797,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:50:53'),(798,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:08'),(799,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:13'),(800,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:16'),(801,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:18'),(802,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:21'),(803,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:24'),(804,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:28'),(805,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:31'),(806,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:37'),(807,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:48'),(808,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:51:53'),(809,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:52:03'),(810,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:52:07'),(811,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:52:24'),(812,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:52:28'),(813,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:52:41'),(814,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:53:09'),(815,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:53:33'),(816,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:53:45'),(817,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:53:50'),(818,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:53:54'),(819,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:53:57'),(820,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:54:00'),(821,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:54:04'),(822,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:54:07'),(823,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:54:10'),(824,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:57:40'),(825,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 09:59:23'),(826,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:00:19'),(827,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:00:25'),(828,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:01:02'),(829,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:01:11'),(830,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:01:39'),(831,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:01:56'),(832,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:02:58'),(833,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:04:05'),(834,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:04:10'),(835,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:04:13'),(836,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:04:19'),(837,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:04:22'),(838,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:07:56'),(839,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:25:32'),(840,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:27:01'),(841,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:27:08'),(842,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:27:39'),(843,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 10:27:46'),(844,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','127.0.0.1','2017-06-14 12:16:25'),(845,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','124.205.66.66','2017-06-14 13:33:36'),(846,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','124.205.66.66','2017-06-14 13:34:00'),(847,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','124.205.66.66','2017-06-14 13:38:05'),(848,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:38:49'),(849,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:40:03'),(850,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:48:31'),(851,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:49:38'),(852,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:49:44'),(853,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:52:21'),(854,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:52:49'),(855,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:05'),(856,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:11'),(857,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:14'),(858,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:17'),(859,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:22'),(860,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:25'),(861,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:28'),(862,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:53:31'),(863,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:55:23'),(864,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:55:29'),(865,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:56:21'),(866,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:56:31'),(867,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:57:04'),(868,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:57:13'),(869,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:57:30'),(870,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:57:48'),(871,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:58:10'),(872,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:58:21'),(873,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:58:37'),(874,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:58:45'),(875,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:58:55'),(876,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','124.205.66.66','2017-06-14 13:59:00'),(877,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','43.224.46.23','2017-06-14 22:27:32'),(878,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','43.224.46.23','2017-06-14 22:30:12'),(879,'',0,'pay','','payment','?m=pay&c=payment&a=pay_list','',1,'healstec','43.224.46.23','2017-06-14 22:31:03'),(880,'',0,'pay','','payment','?m=pay&c=payment&a=pay_list','',1,'healstec','43.224.46.23','2017-06-14 22:32:36'),(881,'',0,'member','','member_menu','?m=member&c=member_menu&a=manage','',1,'healstec','43.224.46.23','2017-06-14 22:34:30'),(882,'',0,'admin','','database','?m=admin&c=database&a=export','',1,'healstec','43.224.46.23','2017-06-14 22:34:44'),(883,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'healstec','43.224.46.23','2017-06-14 22:34:49'),(884,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-14 22:47:47'),(885,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-14 23:32:48'),(886,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-14 23:32:49'),(887,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'healstec','127.0.0.1','2017-06-14 23:32:59'),(888,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:33:29'),(889,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:34:27'),(890,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:34:34'),(891,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:38:09'),(892,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:38:16'),(893,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:38:29'),(894,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:39:30'),(895,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','127.0.0.1','2017-06-14 23:39:41'),(896,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-14 23:54:59'),(897,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-14 23:55:11'),(898,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-14 23:57:30'),(899,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-14 23:58:56'),(900,'',0,'admin','','admin_manage','?m=admin&c=admin_manage&a=add','',1,'healstec','127.0.0.1','2017-06-15 00:12:09'),(901,'',0,'admin','','admin_manage','?m=admin&c=admin_manage&a=add','',1,'healstec','127.0.0.1','2017-06-15 00:12:54'),(902,'',0,'admin','','role','?m=admin&c=role&a=priv_setting','',1,'healstec','127.0.0.1','2017-06-15 00:13:10'),(903,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:10'),(904,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:13'),(905,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:27'),(906,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:28'),(907,'',0,'admin','','role','?m=admin&c=role&a=setting_cat_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:35'),(908,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:35'),(909,'',0,'admin','','role','?m=admin&c=role&a=setting_cat_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:37'),(910,'',0,'admin','','role','?m=admin&c=role&a=priv_setting','',1,'healstec','127.0.0.1','2017-06-15 00:13:48'),(911,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:48'),(912,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:13:49'),(913,'',0,'admin','','role','?m=admin&c=role&a=priv_setting','',1,'healstec','127.0.0.1','2017-06-15 00:14:16'),(914,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:14:16'),(915,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:14:17'),(916,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:14:22'),(917,'',0,'admin','','role','?m=admin&c=role&a=role_priv','',1,'healstec','127.0.0.1','2017-06-15 00:14:23'),(918,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:14:29'),(919,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:14:48'),(920,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:14:49'),(921,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:15:12'),(922,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:15:14'),(923,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:15:31'),(924,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:15:54'),(925,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:16:06'),(926,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:16:23'),(927,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2017-06-15 00:16:37'),(928,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','118.186.143.112','2017-06-15 00:35:52'),(929,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','118.186.143.112','2017-06-15 00:36:03'),(930,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:36:47'),(931,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:37:31'),(932,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:38:03'),(933,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:38:09'),(934,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:39:42'),(935,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:39:52'),(936,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:41:23'),(937,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:41:51'),(938,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:43:04'),(939,'',0,'content','','content','?m=content&c=content&a=edit','',1,'healstec','118.186.143.112','2017-06-15 00:43:07');
/*!40000 ALTER TABLE `hl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_member`
--

DROP TABLE IF EXISTS `hl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_member` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `phpssouid` mediumint(8) unsigned NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `email` char(32) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `areaid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overduedate` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `connectid` char(40) NOT NULL DEFAULT '',
  `from` char(10) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20)),
  KEY `phpssouid` (`phpssouid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_member`
--

LOCK TABLES `hl_member` WRITE;
/*!40000 ALTER TABLE `hl_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_member_detail`
--

DROP TABLE IF EXISTS `hl_member_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_member_detail` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_member_detail`
--

LOCK TABLES `hl_member_detail` WRITE;
/*!40000 ALTER TABLE `hl_member_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_member_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_member_group`
--

DROP TABLE IF EXISTS `hl_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_member_group` (
  `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starnum` tinyint(2) unsigned NOT NULL,
  `point` smallint(6) unsigned NOT NULL,
  `allowmessage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowvisit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL,
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL,
  `allowpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) NOT NULL,
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `icon` char(30) NOT NULL,
  `usernamecolor` char(7) NOT NULL,
  `description` char(100) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `disabled` (`disabled`),
  KEY `listorder` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_member_group`
--

LOCK TABLES `hl_member_group` WRITE;
/*!40000 ALTER TABLE `hl_member_group` DISABLE KEYS */;
INSERT INTO `hl_member_group` VALUES (8,'游客',1,0,0,0,0,0,0,1,0,0,0,0,0.00,0.00,0.00,'','','',0,0),(2,'新手上路',1,1,50,100,1,1,0,0,0,1,0,0,50.00,10.00,1.00,'','','',2,0),(6,'注册会员',1,2,100,150,0,1,0,0,1,1,0,0,300.00,30.00,1.00,'','','',6,0),(4,'中级会员',1,3,150,500,1,1,0,1,1,1,0,0,500.00,60.00,1.00,'','','',4,0),(5,'高级会员',1,5,300,999,1,1,0,1,1,1,0,0,360.00,90.00,5.00,'','','',5,0),(1,'禁止访问',1,0,0,0,1,1,0,1,0,0,0,0,0.00,0.00,0.00,'','','0',0,0),(7,'邮件认证',1,0,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,'images/group/vip.jpg','#000000','',7,0);
/*!40000 ALTER TABLE `hl_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_member_menu`
--

DROP TABLE IF EXISTS `hl_member_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_member_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `isurl` enum('1','0') NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`a`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_member_menu`
--

LOCK TABLES `hl_member_menu` WRITE;
/*!40000 ALTER TABLE `hl_member_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_member_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_member_verify`
--

DROP TABLE IF EXISTS `hl_member_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_member_verify` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) unsigned NOT NULL,
  `regip` char(15) NOT NULL,
  `email` char(32) NOT NULL,
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `modelinfo` char(255) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message` char(100) DEFAULT NULL,
  `mobile` char(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_member_verify`
--

LOCK TABLES `hl_member_verify` WRITE;
/*!40000 ALTER TABLE `hl_member_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_member_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_member_vip`
--

DROP TABLE IF EXISTS `hl_member_vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_member_vip` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_member_vip`
--

LOCK TABLES `hl_member_vip` WRITE;
/*!40000 ALTER TABLE `hl_member_vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_member_vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_menu`
--

DROP TABLE IF EXISTS `hl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `project1` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project2` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project3` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project4` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project5` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`a`)
) ENGINE=MyISAM AUTO_INCREMENT=1577 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_menu`
--

LOCK TABLES `hl_menu` WRITE;
/*!40000 ALTER TABLE `hl_menu` DISABLE KEYS */;
INSERT INTO `hl_menu` VALUES (1,'sys_setting',0,'admin','setting','init','',1,'1',0,1,1,1,1),(2,'module',10000,'admin','module','init','',2,'1',1,1,1,1,1),(872,'sync_release_point',873,'release','index','init','',3,'1',1,1,1,1,1),(4,'content',0,'content','content','init','',4,'1',1,1,1,1,1),(5,'members',0,'member','member','init','',5,'1',1,1,1,1,1),(6,'userinterface',10000,'template','style','init','',6,'1',0,1,1,1,1),(30,'correlative_setting',1,'admin','admin','admin','',0,'1',1,1,1,1,1),(31,'menu_manage',977,'admin','menu','init','',8,'1',1,1,1,1,1),(32,'posid_manage',975,'admin','position','init','',7,'1',1,1,1,1,1),(29,'module_list',2,'admin','module','','',0,'1',1,1,1,1,1),(82,'module_manage',2,'admin','module','','',0,'1',1,1,1,1,1),(10,'panel',0,'admin','index','public_main','',0,'1',0,1,1,1,1),(35,'menu_add',31,'admin','menu','add','',0,'1',1,1,1,1,1),(826,'template_manager',6,'','','','',0,'1',1,1,1,1,1),(54,'admin_manage',49,'admin','admin_manage','init','',0,'1',1,1,1,1,1),(43,'category_manage',975,'admin','category','init','module=admin',4,'1',1,1,1,1,1),(42,'add_category',43,'admin','category','add','s=0',1,'1',1,1,1,1,1),(44,'edit_category',43,'admin','category','edit','',0,'0',1,1,1,1,1),(45,'badword_manage',977,'admin','badword','init','',10,'1',1,1,1,1,1),(46,'posid_add',32,'admin','position','add','',0,'0',1,1,1,1,1),(49,'admin_setting',1,'admin','','','',0,'1',1,1,1,1,1),(50,'role_manage',49,'admin','role','init','',0,'1',1,1,1,1,1),(51,'role_add',50,'admin','role','add','',0,'1',1,1,1,1,1),(52,'category_cache',43,'admin','category','public_cache','module=admin',4,'1',1,1,1,1,1),(55,'manage_member',5,'member','member','manage','',0,'1',1,1,1,1,1),(58,'admin_add',54,'admin','admin_manage','add','',0,'1',1,1,1,1,1),(59,'model_manage',975,'content','sitemodel','init','',5,'1',1,1,1,1,1),(64,'site_management',30,'admin','site','init','',2,'1',1,1,1,1,1),(81,'member_add',72,'member','member','add','',2,'0',1,1,1,1,1),(62,'add_model',59,'content','sitemodel','add','',0,'0',1,1,1,1,1),(65,'release_point_management',30,'admin','release_point','init','',3,'1',1,1,1,1,1),(66,'badword_export',45,'admin','badword','export','',0,'1',1,1,1,1,1),(67,'add_site',64,'admin','site','add','',0,'0',1,1,1,1,1),(68,'badword_import',45,'admin','badword','import','',0,'1',1,1,1,1,1),(812,'member_group_manage',76,'member','member_group','manage','',0,'1',1,1,1,1,1),(74,'member_verify',55,'member','member_verify','manage','s=0',3,'1',1,1,1,1,1),(76,'manage_member_group',5,'member','member_group','manage','',0,'1',1,1,1,1,1),(77,'manage_member_model',5,'member','member_model','manage','',0,'1',1,1,1,1,1),(78,'member_group_add',812,'member','member_group','add','',0,'0',1,1,1,1,1),(79,'member_model_add',813,'member','member_model','add','',1,'0',1,1,1,1,1),(80,'member_model_import',77,'member','member_model','import','',2,'0',1,1,1,1,1),(72,'member_manage',55,'member','member','manage','',1,'1',1,1,1,1,1),(813,'member_model_manage',77,'member','member_model','manage','',0,'1',1,1,1,1,1),(814,'site_edit',64,'admin','site','edit','',0,'0',1,1,1,1,1),(815,'site_del',64,'admin','site','del','',0,'0',1,1,1,1,1),(816,'release_point_add',65,'admin','release_point','add','',0,'0',1,1,1,1,1),(817,'release_point_del',65,'admin','release_point','del','',0,'0',1,1,1,1,1),(818,'release_point_edit',65,'admin','release_point','edit','',0,'0',1,1,1,1,1),(821,'content_publish',4,'content','content','init','',0,'1',1,1,1,1,1),(822,'content_manage',821,'content','content','init','',0,'1',1,1,1,1,1),(867,'linkage',977,'admin','linkage','init','',13,'1',1,1,1,1,1),(827,'template_style',826,'template','style','init','',0,'1',1,1,1,1,1),(828,'import_style',827,'template','style','import','',0,'0',1,1,1,1,1),(831,'template_export',827,'template','style','export','',0,'0',1,1,1,1,1),(830,'template_file',827,'template','file','init','',0,'0',1,1,1,1,1),(832,'template_onoff',827,'template','style','disable','',0,'0',1,1,1,1,1),(833,'template_updatename',827,'template','style','updatename','',0,'0',1,1,1,1,1),(834,'member_lock',72,'member','member','lock','',0,'0',1,1,1,1,1),(835,'member_unlock',72,'member','member','unlock','',0,'0',1,1,1,1,1),(836,'member_move',72,'member','member','move','',0,'0',1,1,1,1,1),(837,'member_delete',72,'member','member','delete','',0,'0',1,1,1,1,1),(842,'verify_ignore',74,'member','member_verify','manage','s=2',0,'1',1,1,1,1,1),(839,'member_setting',55,'member','member_setting','manage','',4,'1',1,1,1,1,1),(841,'verify_pass',74,'member','member_verify','manage','s=1',0,'1',1,1,1,1,1),(843,'verify_delete',74,'member','member_verify','manage','s=3',0,'0',1,1,1,1,1),(844,'verify_deny',74,'member','member_verify','manage','s=4',0,'1',1,1,1,1,1),(845,'never_pass',74,'member','member_verify','manage','s=5',0,'1',1,1,1,1,1),(846,'template_file_list',827,'template','file','init','',0,'0',1,1,1,1,1),(847,'template_file_edit',827,'template','file','edit_file','',0,'0',1,1,1,1,1),(848,'file_add_file',827,'template','file','add_file','',0,'0',1,1,1,1,1),(850,'listorder',76,'member','member_group','sort','',0,'0',1,1,1,1,1),(852,'priv_setting',50,'admin','role','priv_setting','',0,'0',1,1,1,1,1),(853,'role_priv',50,'admin','role','role_priv','',0,'0',1,1,1,1,1),(857,'attachment_manage',821,'attachment','manage','init','',0,'1',1,1,1,1,1),(868,'special',821,'special','special','init','',0,'1',1,1,1,1,1),(869,'template_editor',827,'template','file','edit_file','',0,'0',1,1,1,1,1),(870,'template_visualization',827,'template','file','visualization','',0,'0',1,1,1,1,1),(871,'pc_tag_edit',827,'template','file','edit_pc_tag','',0,'0',1,1,1,1,1),(873,'release_manage',4,'release','html','init','',0,'1',1,1,1,1,1),(874,'type_manage',975,'content','type_manage','init','',6,'1',1,1,1,1,1),(875,'add_type',874,'content','type_manage','add','',0,'0',1,1,1,1,1),(876,'linkageadd',867,'admin','linkage','add','',0,'0',1,1,1,1,1),(877,'failure_list',872,'release','index','failed','',0,'1',1,1,1,1,1),(879,'member_search',72,'member','member','search','',0,'0',1,1,1,1,1),(880,'queue_del',872,'release','index','del','',0,'0',1,1,1,1,1),(881,'member_model_delete',813,'member','member_model','delete','',0,'0',1,1,1,1,1),(882,'member_model_edit',813,'member','member_model','edit','',0,'0',1,1,1,1,1),(885,'workflow',977,'content','workflow','init','',15,'1',1,1,1,1,1),(888,'add_workflow',885,'content','workflow','add','',0,'1',1,1,1,1,1),(889,'member_modelfield_add',813,'member','member_modelfield','add','',0,'0',1,1,1,1,1),(890,'member_modelfield_edit',813,'member','member_modelfield','edit','',0,'0',1,1,1,1,1),(891,'member_modelfield_delete',813,'member','member_modelfield','delete','',0,'0',1,1,1,1,1),(892,'member_modelfield_manage',813,'member','member_modelfield','manage','',0,'0',1,1,1,1,1),(895,'sitemodel_import',59,'content','sitemodel','import','',0,'1',1,1,1,1,1),(896,'pay',29,'pay','payment','pay_list','s=3',0,'1',1,1,1,1,1),(897,'payments',896,'pay','payment','init','',0,'1',1,1,1,1,1),(898,'paylist',896,'pay','payment','pay_list','',0,'1',1,1,1,1,1),(899,'add_content',822,'content','content','add','',0,'0',1,1,1,1,1),(900,'modify_deposit',896,'pay','payment','modify_deposit','s=1',0,'1',1,1,1,1,1),(901,'check_content',822,'content','content','pass','',0,'0',1,1,1,1,1),(902,'dbsource',29,'dbsource','data','init','',0,'1',1,1,1,1,1),(905,'create_content_html',873,'content','create_html','show','',2,'1',1,1,1,1,1),(904,'external_data_sources',902,'dbsource','dbsource_admin','init','',0,'1',1,1,1,1,1),(906,'update_urls',873,'content','create_html','update_urls','',1,'1',1,1,1,1,1),(960,'node_add',957,'collection','node','add','',0,'1',1,1,1,1,1),(909,'fulltext_search',29,'search','search_type','init','',0,'1',1,1,1,1,1),(910,'manage_type',909,'search','search_type','init','',0,'0',1,1,1,1,1),(911,'search_setting',909,'search','search_admin','setting','',0,'1',1,1,1,1,1),(912,'createindex',909,'search','search_admin','createindex','',0,'1',1,1,1,1,1),(913,'add_search_type',909,'search','search_type','add','',0,'0',1,1,1,1,1),(914,'database_toos',977,'admin','database','export','',6,'1',1,1,1,1,1),(915,'database_export',914,'admin','database','export','',0,'1',1,1,1,1,1),(916,'database_import',914,'admin','database','import','',0,'1',1,1,1,1,1),(917,'dbsource_add',902,'dbsource','dbsource_admin','add','',0,'0',1,1,1,1,1),(918,'dbsource_edit',902,'dbsource','dbsource_admin','edit','',0,'0',1,1,1,1,1),(919,'dbsource_del',902,'dbsource','dbsource_admin','del','',0,'0',1,1,1,1,1),(920,'dbsource_data_add',902,'dbsource','data','add','',0,'0',1,1,1,1,1),(921,'dbsource_data_edit',902,'dbsource','data','edit','',0,'0',1,1,1,1,1),(922,'dbsource_data_del',902,'dbsource','data','del','',0,'0',1,1,1,1,1),(926,'add_special',868,'special','special','add','',0,'1',1,1,1,1,1),(927,'edit_special',868,'special','special','edit','',0,'0',1,1,1,1,1),(928,'special_list',868,'special','special','init','',0,'0',1,1,1,1,1),(929,'special_elite',868,'special','special','elite','',0,'0',1,1,1,1,1),(930,'delete_special',868,'special','special','delete','',0,'0',1,1,1,1,1),(931,'badword_add',45,'admin','badword','add','',0,'0',1,1,1,1,1),(932,'badword_edit',45,'admin','badword','edit','',0,'0',1,1,1,1,1),(933,'badword_delete',45,'admin','badword','delete','',0,'0',1,1,1,1,1),(934,'special_listorder',868,'special','special','listorder','',0,'0',1,1,1,1,1),(935,'special_content_list',868,'special','content','init','',0,'0',1,1,1,1,1),(936,'special_content_add',935,'special','content','add','',0,'0',1,1,1,1,1),(937,'special_content_list',935,'special','content','init','',0,'0',1,1,1,1,1),(938,'special_content_edit',935,'special','content','edit','',0,'0',1,1,1,1,1),(939,'special_content_delete',935,'special','content','delete','',0,'0',1,1,1,1,1),(940,'special_content_listorder',935,'special','content','listorder','',0,'0',1,1,1,1,1),(941,'special_content_import',935,'special','special','import','',0,'0',1,1,1,1,1),(942,'history_version',827,'template','template_bak','init','',0,'0',1,1,1,1,1),(943,'restore_version',827,'template','template_bak','restore','',0,'0',1,1,1,1,1),(944,'del_history_version',827,'template','template_bak','del','',0,'0',1,1,1,1,1),(945,'block',821,'block','block_admin','init','',0,'1',1,1,1,1,1),(946,'block_add',945,'block','block_admin','add','',0,'0',1,1,1,1,1),(950,'block_edit',945,'block','block_admin','edit','',0,'0',1,1,1,1,1),(951,'block_del',945,'block','block_admin','del','',0,'0',1,1,1,1,1),(952,'block_update',945,'block','block_admin','block_update','',0,'0',1,1,1,1,1),(953,'block_restore',945,'block','block_admin','history_restore','',0,'0',1,1,1,1,1),(954,'history_del',945,'block','block_admin','history_del','',0,'0',1,1,1,1,1),(978,'urlrule_manage',977,'admin','urlrule','init','',0,'1',1,1,1,1,1),(957,'collection_node',821,'collection','node','manage','',0,'1',1,1,1,1,1),(979,'safe_config',30,'admin','setting','init','&tab=2',11,'1',1,1,1,1,1),(959,'basic_config',30,'admin','setting','init','',10,'1',1,1,1,1,1),(961,'position_edit',32,'admin','position','edit','',0,'0',1,1,1,1,1),(962,'collection_node_edit',957,'collection','node','edit','',0,'0',1,1,1,1,1),(963,'collection_node_delete',957,'collection','node','del','',0,'0',1,1,1,1,1),(990,'col_url_list',957,'collection','node','col_url_list','',0,'0',1,1,1,1,1),(965,'collection_node_publish',957,'collection','node','publist','',0,'0',1,1,1,1,1),(966,'collection_node_import',957,'collection','node','node_import','',0,'0',1,1,1,1,1),(967,'collection_node_export',957,'collection','node','export','',0,'0',1,1,1,1,1),(968,'collection_node_collection_content',957,'collection','node','col_content','',0,'0',1,1,1,1,1),(969,'googlesitemap',977,'admin','googlesitemap','set','',11,'1',1,1,1,1,1),(970,'admininfo',10,'admin','admin_manage','init','',0,'1',1,1,1,1,1),(971,'editpwd',970,'admin','admin_manage','public_edit_pwd','',1,'1',1,1,1,1,1),(972,'editinfo',970,'admin','admin_manage','public_edit_info','',0,'1',1,1,1,1,1),(973,'keylink',977,'admin','keylink','init','',12,'1',1,1,1,1,1),(974,'add_keylink',973,'admin','keylink','add','',0,'0',1,1,1,1,1),(975,'content_settings',4,'content','content_settings','init','',0,'1',1,1,1,1,1),(7,'extend',10000,'admin','extend','init_extend','',7,'1',0,1,1,1,1),(977,'extend_all',7,'admin','extend_all','init','',0,'1',1,1,1,1,1),(980,'sso_config',30,'admin','setting','init','&tab=3',12,'1',1,1,1,1,1),(981,'email_config',30,'admin','setting','init','&tab=4',13,'1',1,1,1,1,1),(982,'module_manage',82,'admin','module','init','',0,'1',1,1,1,1,1),(983,'ipbanned',977,'admin','ipbanned','init','',0,'1',1,1,1,1,1),(984,'add_ipbanned',983,'admin','ipbanned','add','',0,'0',1,1,1,1,1),(993,'collection_content_import',957,'collection','node','import','',0,'0',1,1,1,1,1),(991,'copy_node',957,'collection','node','copy','',0,'0',1,1,1,1,1),(992,'content_del',957,'collection','node','content_del','',0,'0',1,1,1,1,1),(989,'downsites',977,'admin','downservers','init','',0,'1',1,1,1,1,1),(994,'import_program_add',957,'collection','node','import_program_add','',0,'0',1,1,1,1,1),(995,'import_program_del',957,'collection','node','import_program_del','',0,'0',1,1,1,1,1),(996,'import_content',957,'collection','node','import_content','',0,'0',1,1,1,1,1),(997,'log',977,'admin','log','init','',0,'1',1,1,1,1,1),(998,'add_page',43,'admin','category','add','s=1',2,'1',1,1,1,1,1),(999,'add_cat_link',43,'admin','category','add','s=2',2,'1',1,1,1,1,1),(1000,'count_items',43,'admin','category','count_items','',5,'1',1,1,1,1,1),(1001,'cache_all',977,'admin','cache_all','init','',0,'1',1,1,1,1,1),(1002,'create_list_html',873,'content','create_html','category','',0,'1',1,1,1,1,1),(1003,'create_html_quick',10,'content','create_html_opt','index','',0,'1',1,1,1,1,1),(1004,'create_index',1003,'content','create_html','public_index','',0,'1',1,1,1,1,1),(1005,'scan',977,'scan','index','init','',0,'1',1,1,1,1,1),(1006,'scan_report',1005,'scan','index','scan_report','',0,'1',1,1,1,1,1),(1007,'md5_creat',1005,'scan','index','md5_creat','',0,'1',1,1,1,1,1),(1008,'album_import',868,'special','album','import','',0,'1',1,1,1,1,1),(8,'phpsso',10000,'admin','phpsso','menu','',7,'1',0,1,1,1,1),(1011,'edit_content',822,'content','content','edit','',0,'0',1,1,1,1,1),(1012,'push_to_special',822,'content','push','init','',0,'0',1,1,1,1,1),(1023,'delete_log',997,'admin','log','delete','',0,'0',1,1,1,1,1),(1024,'delete_ip',983,'admin','ipbanned','delete','',0,'0',1,1,1,1,1),(1026,'delete_keylink',973,'admin','keylink','delete','',0,'0',1,1,1,1,1),(1027,'edit_keylink',973,'admin','keylink','edit','',0,'0',1,1,1,1,1),(1034,'operation_pass',74,'member','member_verify','pass','',0,'0',1,1,1,1,1),(1035,'operation_delete',74,'member','member_verify','delete','',0,'0',1,1,1,1,1),(1039,'operation_ignore',74,'member','member_verify','ignore','',0,'0',1,1,1,1,1),(1038,'settingsave',30,'admin','setting','save','',0,'0',1,1,1,1,1),(1040,'admin_edit',54,'admin','admin_manage','edit','',0,'0',1,1,1,1,1),(1041,'operation_reject',74,'member','member_verify','reject','',0,'0',1,1,1,1,1),(1042,'admin_delete',54,'admin','admin_manage','delete','',0,'0',1,1,1,1,1),(1043,'card',54,'admin','admin_manage','card','',0,'0',1,1,1,1,1),(1044,'creat_card',54,'admin','admin_manage','creat_card','',0,'0',1,1,1,1,1),(1045,'remove_card',54,'admin','admin_manage','remove_card','',0,'0',1,1,1,1,1),(1049,'member_group_edit',812,'member','member_group','edit','',0,'0',1,1,1,1,1),(1048,'member_edit',72,'member','member','edit','',0,'0',1,1,1,1,1),(1050,'role_edit',50,'admin','role','edit','',0,'0',1,1,1,1,1),(1051,'member_group_delete',812,'member','member_group','delete','',0,'0',1,1,1,1,1),(1052,'member_manage',50,'admin','role','member_manage','',0,'0',1,1,1,1,1),(1053,'role_delete',50,'admin','role','delete','',0,'0',1,1,1,1,1),(1054,'member_model_export',77,'member','member_model','export','',0,'0',1,1,1,1,1),(1055,'member_model_sort',77,'member','member_model','sort','',0,'0',1,1,1,1,1),(1056,'member_model_move',77,'member','member_model','move','',0,'0',1,1,1,1,1),(1057,'payment_add',897,'pay','payment','add','',0,'0',1,1,1,1,1),(1058,'payment_delete',897,'pay','payment','delete','',0,'0',1,1,1,1,1),(1059,'payment_edit',897,'pay','payment','edit','',0,'0',1,1,1,1,1),(1060,'spend_record',896,'pay','spend','init','',0,'1',1,1,1,1,1),(1061,'pay_stat',896,'pay','payment','pay_stat','',0,'1',1,1,1,1,1),(1062,'fields_manage',59,'content','sitemodel_field','init','',0,'0',1,1,1,1,1),(1063,'edit_model_content',59,'content','sitemodel','edit','',0,'0',1,1,1,1,1),(1064,'disabled_model',59,'content','sitemodel','disabled','',0,'0',1,1,1,1,1),(1065,'delete_model',59,'content','sitemodel','delete','',0,'0',1,1,1,1,1),(1066,'export_model',59,'content','sitemodel','export','',0,'0',1,1,1,1,1),(1067,'delete',874,'content','type_manage','delete','',0,'0',1,1,1,1,1),(1068,'edit',874,'content','type_manage','edit','',0,'0',1,1,1,1,1),(1069,'add_urlrule',978,'admin','urlrule','add','',0,'0',1,1,1,1,1),(1070,'edit_urlrule',978,'admin','urlrule','edit','',0,'0',1,1,1,1,1),(1071,'delete_urlrule',978,'admin','urlrule','delete','',0,'0',1,1,1,1,1),(1072,'edit_menu',31,'admin','menu','edit','',0,'0',1,1,1,1,1),(1073,'delete_menu',31,'admin','menu','delete','',0,'0',1,1,1,1,1),(1074,'edit_workflow',885,'content','workflow','edit','',0,'0',1,1,1,1,1),(1075,'delete_workflow',885,'content','workflow','delete','',0,'0',1,1,1,1,1),(1076,'creat_html',868,'special','special','html','',0,'1',1,1,1,1,1),(1093,'connect_config',30,'admin','setting','init','&tab=5',14,'1',1,1,1,1,1),(1102,'view_modelinfo',74,'member','member_verify','modelinfo','',0,'0',1,1,1,1,1),(1202,'create_special_list',868,'special','special','create_special_list','',0,'1',1,1,1,1,1),(1240,'view_memberlinfo',72,'member','member','memberinfo','',0,'0',1,1,1,1,1),(1239,'copyfrom_manage',977,'admin','copyfrom','init','',0,'1',1,1,1,1,1),(1241,'move_content',822,'content','content','remove','',0,'0',1,1,1,1,1),(1242,'poster_template',56,'poster','space','poster_template','',0,'1',1,1,1,1,1),(1243,'create_index',873,'content','create_html','public_index','',0,'1',1,1,1,1,1),(1244,'add_othors',822,'content','content','add_othors','',0,'1',1,1,1,1,1),(1295,'attachment_manager_dir',857,'attachment','manage','dir','',2,'1',1,1,1,1,1),(1296,'attachment_manager_db',857,'attachment','manage','init','',1,'1',1,1,1,1,1),(1346,'attachment_address_replace',857,'attachment','address','init','',3,'1',1,1,1,1,1),(1347,'attachment_address_update',857,'attachment','address','update','',0,'0',1,1,1,1,1),(1348,'delete_content',822,'content','content','delete','',0,'1',1,1,1,1,1),(1349,'member_menu_manage',977,'member','member_menu','manage','',0,'1',1,1,1,1,1),(1350,'member_menu_add',1349,'member','member_menu','add','',0,'1',1,1,1,1,1),(1351,'member_menu_edit',1349,'member','member_menu','edit','',0,'0',1,1,1,1,1),(1352,'member_menu_delete',1349,'member','member_menu','delete','',0,'0',1,1,1,1,1),(1353,'batch_show',822,'content','create_html','batch_show','',0,'1',1,1,1,1,1),(1354,'pay_delete',898,'pay','payment','pay_del','',0,'0',1,1,1,1,1),(1355,'pay_cancel',898,'pay','payment','pay_cancel','',0,'0',1,1,1,1,1),(1356,'discount',898,'pay','payment','discount','',0,'0',1,1,1,1,1),(1360,'category_batch_edit',43,'admin','category','batch_edit','',6,'1',1,1,1,1,1),(1500,'listorder',822,'content','content','listorder','',0,'0',1,1,1,1,1),(1501,'a_clean_data',873,'content','content','clear_data','',0,'1',0,0,0,0,0),(1502,'announce',29,'announce','admin_announce','init','s=1',0,'1',1,1,1,1,1),(1503,'announce_add',1502,'announce','admin_announce','add','',0,'0',1,1,1,1,1),(1504,'edit_announce',1502,'announce','admin_announce','edit','s=1',0,'0',1,1,1,1,1),(1505,'check_announce',1502,'announce','admin_announce','init','s=2',0,'1',1,1,1,1,1),(1506,'overdue',1502,'announce','admin_announce','init','s=3',0,'1',1,1,1,1,1),(1507,'del_announce',1502,'announce','admin_announce','delete','',0,'0',1,1,1,1,1),(1508,'comment',29,'comment','comment_admin','init','',0,'1',1,1,1,1,1),(1509,'comment_manage',821,'comment','comment_admin','listinfo','',0,'1',1,1,1,1,1),(1510,'comment_check',1509,'comment','check','checks','',0,'1',1,1,1,1,1),(1511,'comment_list',1508,'comment','comment_admin','lists','',0,'0',1,1,1,1,1),(1512,'link',29,'link','link','init','',0,'1',1,1,1,1,1),(1513,'add_link',1512,'link','link','add','',0,'0',1,1,1,1,1),(1514,'edit_link',1512,'link','link','edit','',0,'0',1,1,1,1,1),(1515,'delete_link',1512,'link','link','delete','',0,'0',1,1,1,1,1),(1516,'link_setting',1512,'link','link','setting','',0,'1',1,1,1,1,1),(1517,'add_type',1512,'link','link','add_type','',0,'1',1,1,1,1,1),(1518,'list_type',1512,'link','link','list_type','',0,'1',1,1,1,1,1),(1519,'check_register',1512,'link','link','check_register','',0,'1',1,1,1,1,1),(1520,'vote',29,'vote','vote','init','',0,'1',1,1,1,1,1),(1521,'add_vote',1520,'vote','vote','add','',0,'0',1,1,1,1,1),(1522,'edit_vote',1520,'vote','vote','edit','',0,'0',1,1,1,1,1),(1523,'delete_vote',1520,'vote','vote','delete','',0,'0',1,1,1,1,1),(1524,'vote_setting',1520,'vote','vote','setting','',0,'1',1,1,1,1,1),(1525,'statistics_vote',1520,'vote','vote','statistics','',0,'0',1,1,1,1,1),(1526,'statistics_userlist',1520,'vote','vote','statistics_userlist','',0,'0',1,1,1,1,1),(1527,'create_js',1520,'vote','vote','create_js','',0,'1',1,1,1,1,1),(1528,'message',29,'message','message','init','',0,'1',1,1,1,1,1),(1529,'send_one',1528,'message','message','send_one','',0,'1',1,1,1,1,1),(1530,'delete_message',1528,'message','message','delete','',0,'0',1,1,1,1,1),(1531,'message_send',1528,'message','message','message_send','',0,'0',1,1,1,1,1),(1532,'message_group_manage',1528,'message','message','message_group_manage','',0,'1',1,1,1,1,1),(1533,'mood',29,'mood','mood_admin','init','',0,'1',1,1,1,1,1),(1534,'mood_setting',1533,'mood','mood_admin','setting','',0,'1',1,1,1,1,1),(1535,'poster',29,'poster','space','init','',0,'1',1,1,1,1,1),(1536,'add_space',1535,'poster','space','add','',0,'0',1,1,1,1,1),(1537,'edit_space',1535,'poster','space','edit','',0,'0',1,1,1,1,1),(1538,'del_space',1535,'poster','space','delete','',0,'0',1,1,1,1,1),(1539,'poster_list',1535,'poster','poster','init','',0,'0',1,1,1,1,1),(1540,'add_poster',1535,'poster','poster','add','',0,'0',1,1,1,1,1),(1541,'edit_poster',1535,'poster','poster','edit','',0,'0',1,1,1,1,1),(1542,'del_poster',1535,'poster','poster','delete','',0,'0',1,1,1,1,1),(1543,'poster_stat',1535,'poster','poster','stat','',0,'0',1,1,1,1,1),(1544,'poster_setting',1535,'poster','space','setting','',0,'0',1,1,1,1,1),(1545,'create_poster_js',1535,'poster','space','create_js','',0,'1',1,1,1,1,1),(1546,'poster_template',1535,'poster','space','poster_template','',0,'1',1,1,1,1,1),(1547,'formguide',29,'formguide','formguide','init','',0,'1',1,1,1,1,1),(1548,'formguide_add',1547,'formguide','formguide','add','',0,'0',1,1,1,1,1),(1549,'formguide_edit',1547,'formguide','formguide','edit','',0,'0',1,1,1,1,1),(1550,'form_info_list',1547,'formguide','formguide_info','init','',0,'0',1,1,1,1,1),(1551,'formguide_disabled',1547,'formguide','formguide','disabled','',0,'0',1,1,1,1,1),(1552,'formguide_delete',1547,'formguide','formguide','delete','',0,'0',1,1,1,1,1),(1553,'formguide_stat',1547,'formguide','formguide','stat','',0,'0',1,1,1,1,1),(1554,'add_public_field',1547,'formguide','formguide_field','add','',0,'1',1,1,1,1,1),(1555,'list_public_field',1547,'formguide','formguide_field','init','',0,'1',1,1,1,1,1),(1556,'module_setting',1547,'formguide','formguide','setting','',0,'0',1,1,1,1,1),(1557,'wap',29,'wap','wap_admin','init','',0,'1',1,1,1,1,1),(1558,'wap_add',1557,'wap','wap_admin','add','',0,'0',1,1,1,1,1),(1559,'wap_edit',1557,'wap','wap_admin','edit','',0,'0',1,1,1,1,1),(1560,'wap_delete',1557,'wap','wap_admin','delete','',0,'0',1,1,1,1,1),(1561,'wap_type_manage',1557,'wap','wap_admin','type_manage','',0,'0',1,1,1,1,1),(1562,'wap_type_edit',1557,'wap','wap_admin','type_edit','',0,'0',1,1,1,1,1),(1563,'wap_type_delete',1557,'wap','wap_admin','type_delete','',0,'0',1,1,1,1,1),(1564,'upgrade',977,'upgrade','index','init','',0,'1',1,1,1,1,1),(1565,'checkfile',1564,'upgrade','index','checkfile','',0,'1',1,1,1,1,1),(1566,'tag',826,'tag','tag','init','',0,'1',1,1,1,1,1),(1567,'add_tag',1566,'tag','tag','add','',0,'0',1,1,1,1,1),(1568,'edit_tag',1566,'tag','tag','edit','',0,'0',1,1,1,1,1),(1569,'delete_tag',1566,'tag','tag','del','',0,'0',1,1,1,1,1),(1570,'tag_lists',1566,'tag','tag','lists','',0,'0',1,1,1,1,1),(1571,'sms',29,'sms','sms','init','',0,'1',1,1,1,1,1),(1572,'sms_setting',1571,'sms','sms','sms_setting','',0,'1',1,1,1,1,1),(1573,'sms_pay_history',1571,'sms','sms','sms_pay_history','',0,'1',1,1,1,1,1),(1574,'sms_buy_history',1571,'sms','sms','sms_buy_history','',0,'1',1,1,1,1,1),(1575,'sms_api',1571,'sms','sms','sms_api','',0,'1',1,1,1,1,1),(1576,'sms_sent',1571,'sms','sms','sms_sent','',0,'1',1,1,1,1,1);
/*!40000 ALTER TABLE `hl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_message`
--

DROP TABLE IF EXISTS `hl_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_message` (
  `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_from_id` char(30) NOT NULL DEFAULT '0',
  `send_to_id` char(30) NOT NULL DEFAULT '0',
  `folder` enum('all','inbox','outbox') NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_time` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` char(80) DEFAULT NULL,
  `content` text NOT NULL,
  `replyid` int(10) unsigned NOT NULL DEFAULT '0',
  `del_type` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`messageid`),
  KEY `msgtoid` (`send_to_id`,`folder`),
  KEY `replyid` (`replyid`),
  KEY `folder` (`send_from_id`,`folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_message`
--

LOCK TABLES `hl_message` WRITE;
/*!40000 ALTER TABLE `hl_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_message_data`
--

DROP TABLE IF EXISTS `hl_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_message_data` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) NOT NULL,
  `group_message_id` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message` (`userid`,`group_message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_message_data`
--

LOCK TABLES `hl_message_data` WRITE;
/*!40000 ALTER TABLE `hl_message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_message_group`
--

DROP TABLE IF EXISTS `hl_message_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_message_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `subject` char(80) DEFAULT NULL,
  `content` text NOT NULL COMMENT '内容',
  `inputtime` int(10) unsigned DEFAULT '0',
  `status` tinyint(2) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_message_group`
--

LOCK TABLES `hl_message_group` WRITE;
/*!40000 ALTER TABLE `hl_message_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_message_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_model`
--

DROP TABLE IF EXISTS `hl_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `description` char(100) NOT NULL,
  `tablename` char(20) NOT NULL,
  `setting` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_style` char(30) NOT NULL,
  `category_template` char(30) NOT NULL,
  `list_template` char(30) NOT NULL,
  `show_template` char(30) NOT NULL,
  `js_template` varchar(30) NOT NULL,
  `admin_list_template` char(30) NOT NULL,
  `member_add_template` varchar(30) NOT NULL,
  `member_list_template` varchar(30) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_model`
--

LOCK TABLES `hl_model` WRITE;
/*!40000 ALTER TABLE `hl_model` DISABLE KEYS */;
INSERT INTO `hl_model` VALUES (1,1,'文章模型','','news','',0,0,1,0,'default','category','list','show','','','','',0,0),(2,1,'下载模型','','download','',0,0,1,0,'default','category_download','list_download','show_download','','','','',0,0),(3,1,'图片模型','','picture','',0,0,1,0,'default','category_picture','list_picture','show_picture','','','','',0,0),(10,1,'普通会员','普通会员','member_detail','',0,0,1,0,'','','','','','','','',0,2),(11,1,'视频模型','','video','',0,0,1,0,'default','category_video','list_video','show_video','','','','',0,0);
/*!40000 ALTER TABLE `hl_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_model_field`
--

DROP TABLE IF EXISTS `hl_model_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tips` text NOT NULL,
  `css` varchar(30) NOT NULL,
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_model_field`
--

LOCK TABLES `hl_model_field` WRITE;
/*!40000 ALTER TABLE `hl_model_field` DISABLE KEYS */;
INSERT INTO `hl_model_field` VALUES (1,1,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(2,1,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,0,0),(3,1,1,'title','标题','','inputtitle',1,200,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,4,0,0),(4,1,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(5,1,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(6,1,1,'description','摘要','','',0,2550,'','','textarea','{\"width\":\"98\",\"height\":\"46\",\"defaultvalue\":\"\",\"enablehtml\":\"0\"}','','','',0,1,0,1,0,1,1,1,10,0,0),(7,1,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(8,1,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',1,999999,'','内容不能为空','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(9,1,1,'voteid','添加投票','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'text\\\' name=\\\'info[voteid]\\\' id=\\\'voteid\\\' value=\\\'{FIELD_VALUE}\\\' size=\\\'3\\\'> \r\n<input type=\\\'button\\\' value=\"选择已有投票\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=vote&c=vote&a=public_get_votelist&from_api=1\\\',\\\'选择已有投票\\\')\" class=\"button\">\r\n<input type=\\\'button\\\' value=\"新增投票\" onclick=\"omnipotent(\\\'addvote\\\',\\\'?m=vote&c=vote&a=add&from_api=1\\\',\\\'添加投票\\\',0)\" class=\"button\">\',\n  \'fieldtype\' => \'mediumint\',\n  \'minnumber\' => \'1\',\n)','','','',0,0,0,1,0,0,1,0,21,0,0),(10,1,1,'pages','分页方式','','',0,0,'','','pages','','','-99','-99',0,0,0,1,0,0,0,0,16,0,0),(11,1,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(12,1,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(13,1,1,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,0,50,0,0),(14,1,1,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,51,0,0),(15,1,1,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,55,0,0),(16,1,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(17,1,1,'groupids_view','阅读权限','','',0,0,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(18,1,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(19,1,1,'relation','相关文章','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(20,1,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(21,1,1,'copyfrom','来源','','',0,100,'','','copyfrom','array (\n  \'defaultvalue\' => \'\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(80,1,1,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,98,0,0),(22,2,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(23,2,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,1,0),(24,2,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,4,0,0),(25,2,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(26,2,1,'description','摘要','','',0,255,'','','textarea','array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)','','','',0,1,0,1,0,1,1,1,10,0,0),(27,2,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(28,2,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',1,999999,'','内容不能为空','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(29,2,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(30,2,1,'relation','相关文章','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(31,2,1,'pages','分页方式','','',0,0,'','','pages','','','-99','-99',0,0,0,1,0,0,0,0,16,1,0),(32,2,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(33,2,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(34,2,1,'groupids_view','阅读权限','','',0,0,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(35,2,1,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,0,50,0,0),(36,2,1,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,51,0,0),(37,2,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(38,2,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(39,2,1,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,55,0,0),(40,2,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(41,2,1,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,98,0,0),(42,2,1,'downfiles','本地下载','','',0,0,'','','downfiles','array (\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'10\',\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(43,2,1,'downfile','镜像下载','','',0,0,'','','downfile','array (\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'1\',\n)','','','',0,0,0,1,0,1,0,0,9,0,0),(44,2,1,'systems','软件平台','<select name=\'selectSystem\' onchange=\"ChangeInput(this,document.myform.systems,\'/\')\">\r\n	<option value=\'WinXP\'>WinXP</option>\r\n	<option value=\'Vista\'>Windows 7</option>\r\n	<option value=\'Win2000\'>Win2000</option>\r\n	<option value=\'Win2003\'>Win2003</option>\r\n	<option value=\'Unix\'>Unix</option>\r\n	<option value=\'Linux\'>Linux</option>\r\n	<option value=\'MacOS\'>MacOS</option>\r\n</select>','',0,100,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'Win2000/WinXP/Win2003\',\n  \'ispassword\' => \'0\',\n)','','','',0,1,0,1,0,1,1,0,14,0,0),(45,2,1,'copytype','软件授权形式','','',0,15,'','','box','array (\n  \'options\' => \'免费版|免费版\r\n共享版|共享版\r\n试用版|试用版\r\n演示版|演示版\r\n注册版|注册版\r\n破解版|破解版\r\n零售版|零售版\r\nOEM版|OEM版\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'免费版\',\n)','','','',0,1,0,1,0,1,0,0,12,0,0),(46,2,1,'language','软件语言','','',0,16,'','','box','array (\n  \'options\' => \'英文|英文\r\n简体中文|简体中文\r\n繁体中文|繁体中文\r\n简繁中文|简繁中文\r\n多国语言|多国语言\r\n其他语言|其他语言\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'简体中文\',\n)','','','',0,1,0,1,0,1,0,0,13,0,0),(47,2,1,'classtype','软件类型','','',0,20,'','','box','array (\n  \'options\' => \'国产软件|国产软件\r\n国外软件|国外软件\r\n汉化补丁|汉化补丁\r\n程序源码|程序源码\r\n其他|其他\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'国产软件\',\n)','','','',0,1,0,1,0,1,0,0,17,0,0),(48,2,1,'version','版本号','','',0,20,'','','text','array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,1,0,0,0,1,1,0,13,0,0),(49,2,1,'filesize','文件大小','','',0,10,'','','text','array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'未知\',\n  \'ispassword\' => \'0\',\n)','','','',0,1,0,0,0,1,1,0,14,0,0),(50,2,1,'stars','评分等级','','',0,20,'','','box','array (\n  \'options\' => \'★☆☆☆☆|★☆☆☆☆\r\n★★☆☆☆|★★☆☆☆\r\n★★★☆☆|★★★☆☆\r\n★★★★☆|★★★★☆\r\n★★★★★|★★★★★\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'★★★☆☆\',\n)','','','',0,1,0,1,0,1,0,0,17,0,0),(51,3,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(52,3,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(53,3,1,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,0,50,0,0),(54,3,1,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,51,0,0),(55,3,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(56,3,1,'groupids_view','阅读权限','','',0,0,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(57,3,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(58,3,1,'pages','分页方式','','',0,0,'','','pages','','','-99','-99',0,0,0,1,0,0,0,0,16,0,0),(59,3,1,'relation','相关组图','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(60,3,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(61,3,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',0,999999,'','','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(62,3,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(63,3,1,'description','摘要','','',0,255,'','','textarea','array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)','','','',0,1,0,1,0,1,1,1,10,0,0),(64,3,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,4,0,0),(65,3,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(66,3,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,0,0),(67,3,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(68,3,1,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,55,0,0),(69,3,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(70,3,1,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,98,0,0),(71,3,1,'pictureurls','组图','','',0,0,'','','images','array (\n  \'upload_allowext\' => \'gif|jpg|jpeg|png|bmp\',\n  \'isselectimage\' => \'1\',\n  \'upload_number\' => \'50\',\n)','','','',0,0,0,1,0,1,0,0,15,0,0),(72,3,1,'copyfrom','来源','','',0,0,'','','copyfrom','array (\n  \'defaultvalue\' => \'\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(73,1,1,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,30,0,0),(74,2,1,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,30,0,0),(75,3,1,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,30,0,0),(83,10,1,'birthday','生日','','',0,0,'','生日格式错误','datetime','array (\n  \'fieldtype\' => \'date\',\n  \'format\' => \'Y-m-d\',\n  \'defaulttype\' => \'0\',\n)','','','',0,0,0,0,0,1,1,0,0,0,0),(84,11,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(85,11,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,0,0),(86,11,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','array (\n)','','','',0,1,0,1,1,1,1,1,4,0,0),(87,11,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\n  \'size\' => \'100\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(88,11,1,'description','摘要','','',0,255,'','','textarea','array (\n  \'width\' => \'98\',\n  \'height\' => \'46\',\n  \'defaultvalue\' => \'\',\n  \'enablehtml\' => \'0\',\n)','','','',0,1,0,1,0,1,1,1,10,0,0),(89,11,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\n  \'dateformat\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'1\',\n  \'defaultvalue\' => \'\',\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(90,11,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',0,999999,'','内容不能为空','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'0\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(91,11,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(92,11,1,'relation','相关文章','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(93,11,1,'pages','分页方式','','',0,0,'','','pages','array (\n)','','-99','-99',0,0,0,1,0,0,0,0,16,0,0),(94,11,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(95,11,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(96,11,1,'groupids_view','阅读权限','','',0,100,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(97,11,1,'url','URL','','',0,100,'','','text','array (\n)','','','',1,1,0,1,0,0,0,0,50,0,0),(98,11,1,'listorder','排序','','',0,6,'','','number','array (\n)','','','',1,1,0,1,0,0,0,0,51,0,0),(99,11,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(100,11,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(101,11,1,'status','状态','','',0,2,'','','box','array (\n)','','','',1,1,0,1,0,0,0,0,55,0,0),(102,11,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(103,11,1,'username','用户名','','',0,20,'','','text','array (\n)','','','',1,1,0,1,0,0,0,0,98,0,0),(104,11,1,'islink','转向链接','','',0,0,'','','islink','array (\n)','','','',0,1,0,1,0,1,0,0,20,0,0),(105,11,1,'video','视频上传','','',0,0,'','','video','array (\n  \'upload_allowext\' => \'flv|rm|mp4|rmv\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(106,11,1,'vision','画质','','',0,0,'','','box','array (\n  \'options\' => \'高清|1\r\n普通|2\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'0\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)','','','',0,1,0,1,0,1,0,0,9,0,0),(107,11,1,'video_category','视频分类','','',0,0,'','','box','array (\n  \'options\' => \'喜剧|1\r\n爱情|2\r\n科幻|3\r\n剧情|4\r\n动作|5\r\n伦理|6\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)','','','',0,1,0,1,0,1,0,0,9,0,0),(109,1,1,'redirect_url','指定跳转地址','跳转地址','',0,0,'','','text','{\"size\":\"50\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','',0,1,0,1,0,1,1,0,4,0,0),(110,1,1,'muti_image','图片','多张图片','',0,0,'','','images','{\"upload_allowext\":\"gif|jpg|jpeg|png|bmp\",\"isselectimage\":\"0\",\"upload_number\":\"10\"}','','','',0,0,0,1,0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `hl_model_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_module`
--

DROP TABLE IF EXISTS `hl_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_module` (
  `module` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '0000-00-00',
  `updatedate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_module`
--

LOCK TABLES `hl_module` WRITE;
/*!40000 ALTER TABLE `hl_module` DISABLE KEYS */;
INSERT INTO `hl_module` VALUES ('admin','admin','',1,'1.0','','{\"admin_email\":\"phpcms@phpcms.cn\",\"maxloginfailedtimes\":\"8\",\"minrefreshtime\":\"2\",\"mail_type\":\"1\",\"mail_server\":\"smtp.qq.com\",\"mail_port\":\"25\",\"category_ajax\":\"0\",\"mail_user\":\"healstec@foxmail.com\",\"mail_auth\":\"1\",\"mail_from\":\"healstec@foxmail.com\",\"mail_password\":\"\",\"errorlog_size\":\"20\"}',0,0,'2010-10-18','2010-10-18'),('member','会员','',1,'1.0','','array (\n  \'allowregister\' => \'1\',\n  \'choosemodel\' => \'1\',\n  \'enablemailcheck\' => \'0\',\n  \'registerverify\' => \'0\',\n  \'showapppoint\' => \'0\',\n  \'rmb_point_rate\' => \'10\',\n  \'defualtpoint\' => \'0\',\n  \'defualtamount\' => \'0\',\n  \'showregprotocol\' => \'0\',\n  \'regprotocol\' => \'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \',\n  \'registerverifymessage\' => \' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\',\n  \'forgetpassword\' => \' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\',\n)',0,0,'2010-09-06','2010-09-06'),('pay','支付','',1,'1.0','','',0,0,'2010-09-06','2010-09-06'),('digg','顶一下','',0,'1.0','','',0,0,'2010-09-06','2010-09-06'),('special','专题','',0,'1.0','','',0,0,'2010-09-06','2010-09-06'),('content','内容模块','',1,'1.0','','',0,0,'2010-09-06','2010-09-06'),('search','全站搜索','',0,'1.0','','array (\n  \'fulltextenble\' => \'1\',\n  \'relationenble\' => \'1\',\n  \'suggestenable\' => \'1\',\n  \'sphinxenable\' => \'0\',\n  \'sphinxhost\' => \'10.228.134.102\',\n  \'sphinxport\' => \'9312\',\n)',0,0,'2010-09-06','2010-09-06'),('scan','木马扫描','scan',0,'1.0','','',0,0,'2010-09-01','2010-09-06'),('attachment','附件','attachment',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('block','碎片','',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('collection','采集模块','collection',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('dbsource','数据源','',1,'','','',0,0,'2010-09-01','2010-09-06'),('template','模板风格','',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('release','发布点','',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('video','视频库','',0,'1.0','','',0,0,'2012-09-28','2012-09-28'),('announce','公告','announce/',0,'1.0','公告','',0,0,'2017-06-03','2017-06-03'),('comment','评论','comment/',0,'1.0','评论','',0,0,'2017-06-03','2017-06-03'),('link','友情链接','',0,'1.0','','array (\n  1 => \n  array (\n    \'is_post\' => \'1\',\n    \'enablecheckcode\' => \'0\',\n  ),\n)',0,0,'2010-09-06','2010-09-06'),('vote','投票','',0,'1.0','','array (\r\n  1 => \r\n  array (\r\n    \'default_style\' => \'default\',\r\n    \'vote_tp_template\' => \'vote_tp\',\r\n    \'allowguest\' => \'1\',\r\n    \'enabled\' => \'1\',\r\n    \'interval\' => \'1\',\r\n    \'credit\' => \'1\',\r\n  ),\r\n)',0,0,'2010-09-06','2010-09-06'),('message','短消息','',0,'1.0','','',0,0,'2010-09-06','2010-09-06'),('mood','新闻心情','mood/',0,'1.0','新闻心情','',0,0,'2017-06-03','2017-06-03'),('poster','广告模块','poster/',0,'1.0','广告模块','',0,0,'2017-06-03','2017-06-03'),('formguide','表单向导','formguide/',0,'1.0','formguide','array (\n  \'allowmultisubmit\' => \'1\',\n  \'interval\' => \'30\',\n  \'allowunreg\' => \'0\',\n  \'mailmessage\' => \'用户向我们提交了表单数据，赶快去看看吧。\',\n)',0,0,'2010-10-20','2010-10-20'),('wap','手机门户','wap/',0,'1.0','手机门户','',0,0,'2017-06-03','2017-06-03'),('upgrade','在线升级','',0,'1.0','','',0,0,'2011-05-18','2011-05-18'),('tag','标签向导','tag/',0,'1.0','标签向导','',0,0,'2017-06-03','2017-06-03'),('sms','短信平台','sms/',0,'1.0','短信平台','',0,0,'2011-09-02','2011-09-02');
/*!40000 ALTER TABLE `hl_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_mood`
--

DROP TABLE IF EXISTS `hl_mood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_mood` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `siteid` mediumint(6) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `contentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总数',
  `n1` int(10) unsigned NOT NULL DEFAULT '0',
  `n2` int(10) unsigned NOT NULL DEFAULT '0',
  `n3` int(10) unsigned NOT NULL DEFAULT '0',
  `n4` int(10) unsigned NOT NULL DEFAULT '0',
  `n5` int(10) unsigned NOT NULL DEFAULT '0',
  `n6` int(10) unsigned NOT NULL DEFAULT '0',
  `n7` int(10) unsigned NOT NULL DEFAULT '0',
  `n8` int(10) unsigned NOT NULL DEFAULT '0',
  `n9` int(10) unsigned NOT NULL DEFAULT '0',
  `n10` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `total` (`total`),
  KEY `lastupdate` (`lastupdate`),
  KEY `catid` (`catid`,`siteid`,`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_mood`
--

LOCK TABLES `hl_mood` WRITE;
/*!40000 ALTER TABLE `hl_mood` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_mood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_news`
--

DROP TABLE IF EXISTS `hl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_news` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `redirect_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_news`
--

LOCK TABLES `hl_news` WRITE;
/*!40000 ALTER TABLE `hl_news` DISABLE KEYS */;
INSERT INTO `hl_news` VALUES (2,15,0,'新闻频道测试1','','http://healstec.itcask.com/uploadfile/2017/0603/20170603102849984.jpg','创新改变生活','创新改变生活',1,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=15&id=2',0,99,1,0,'healstec',1496500033,1496500137,''),(3,15,0,'创新改变生活2','','http://healstec.itcask.com/uploadfile/2017/0603/20170603103623444.jpg','创新改变生活2','创新改变生活2',1,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=15&id=3',0,99,1,0,'healstec',1496500542,1496641298,''),(4,27,0,'浔阳村小学生活公益活动','','http://healstec.itcask.com/uploadfile/2017/0614/20170614120512785.png','浔阳村小学生活公益活动','大学生社会公益实践活动由大学生发起或参与，以利他为内容，以公共利益为目标指向。大学生社会公益实践是服务社群的一种方式，也是大学生观 ',1,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=27&id=4',0,99,1,0,'healstec',1496724466,1497404625,''),(5,27,0,'浔阳村小学生活公益活动','','http://healstec.itcask.com/uploadfile/2017/0614/20170614120421565.png','第二个文章','大学生社会公益实践活动由大学生发起或参与，以利他为内容，以公共利益为目标指向。大学生社会公益实践是服务社群的一种方式，也是大学生观   ',1,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=27&id=5',0,99,1,0,'healstec',1496724599,1497404933,''),(6,28,0,'吕现黄乡村小学基础建设募捐活动','','http://healstec.itcask.com/uploadfile/2017/0614/20170614120512785.png','社会活动1','大学生社会公益实践活动由大学生发起或参与，以利他为内容，以公共利益为目标指向。大学生社会公益实践是服务社群的一种方式，也是大学生观察和研究社会的途径。经由这一渠道，有利于大学生把专业知识应用到社会服务之中，拓展了青年大学生的视野，也为社会公益事业带来了新的动力。大学生社会公益实践活动具有自愿性、社会性、利他性、学习性以及多方联动性等多重属性。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=28&id=6',0,99,1,0,'healstec',1496725415,1497405250,''),(7,28,0,'吕现黄乡村小学基础建设募捐活动','','http://healstec.itcask.com/uploadfile/2017/0614/20170614120512785.png','社会活动2','大学生社会公益实践活动由大学生发起或参与，以利他为内容，以公共利益为目标指向。大学生社会公益实践是服务社群的一种方式，也是大学生观察和研究社会的途径。经由这一渠道，有利于大学生把专业知识应用到社会服务之中，拓展了青年大学生的视野，也为社会公益事业带来了新的动力。大学生社会公益实践活动具有自愿性、社会性、利他性、学习性以及多方联动性等多重属性。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=28&id=7',0,99,1,0,'healstec',1496726112,1497405244,''),(8,29,0,'如何瘦身如何手很','','','健康瘦身1','健康瘦身1',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=29&id=8',0,99,1,0,'healstec',1496726934,1497405862,''),(9,29,0,'如何瘦身如何手很','','','健康瘦身2','健康瘦身2',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=29&id=9',0,99,1,0,'healstec',1496726959,1497405845,''),(10,30,0,'产品剖析1','','','产品剖析1','产品剖析1',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=30&id=10',0,99,1,0,'healstec',1496727237,1496727270,''),(11,30,0,'产品剖析2','','','产品剖析2','产品剖析2',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=30&id=11',0,99,1,0,'healstec',1496727273,1496727285,''),(12,30,0,'产品剖析3','','','产品剖析3','产品剖析3',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=30&id=12',0,99,1,0,'healstec',1496727288,1496727298,''),(13,31,0,'营养膳食1','','http://healstec.itcask.com/uploadfile/2017/0605/20170605124814798.jpg','营养膳食1','营养膳食1',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=31&id=13',0,99,1,0,'healstec',1496727404,1496727461,''),(14,31,0,'营养膳食2','','http://healstec.itcask.com/uploadfile/2017/0605/20170605124814798.jpg','营养膳食2','营养膳食2',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=31&id=14',0,99,1,0,'healstec',1496727465,1496727483,''),(15,31,0,'营养膳食3','','http://healstec.itcask.com/uploadfile/2017/0605/20170605124814798.jpg','营养膳食3','营养膳食3',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=31&id=15',0,99,1,0,'healstec',1496727486,1496727901,''),(16,32,0,'米花糖系列','','http://healstec.itcask.com/uploadfile/2017/0606/20170606112436907.png','','100%食品级配方，安全健康',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=32&id=16',0,99,1,0,'healstec',1496762708,1497003863,''),(17,32,0,'棉花糖系列','','http://healstec.itcask.com/uploadfile/2017/0606/20170606112436907.png','','100%食品级配方，安全健康',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=32&id=17',0,99,1,0,'healstec',1496763742,1496763798,''),(18,32,0,'米花糖系列','','http://healstec.itcask.com/uploadfile/2017/0606/20170606112436907.png','','100%食品级配方，安全健康',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=32&id=18',0,99,1,0,'healstec',1496763809,1497458587,''),(23,36,0,'食品级2','','','','shipjiji',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=36&id=23',0,99,1,0,'healstec',1496765693,1496765715,'http://www.qq.com'),(22,36,0,'食品级','','','','shipinj',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=36&id=22',0,99,1,0,'healstec',1496765665,1496765689,'http://www.baidu.com'),(24,37,0,'北京海生泰和医药科技有限公司','','http://healstec.itcask.com/uploadfile/2017/0607/20170607010139979.jpg','','成立于2015年12月，由留英药学博士，及其来自于制药，能源，电子等行业的伙伴共同创立，致力于采用创新性的药品和食品制剂技术，为中国消费者研究、开发和生产日化品、食品、营养品、药',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=37&id=24',0,99,1,0,'healstec',1496811581,1496811705,''),(25,37,0,'目前','','http://healstec.itcask.com/uploadfile/2017/0607/20170607010322726.jpg','','已在英国伦敦设立了分公司，在中国北京建立研发中心，并初步创立了由国内外知名专家学者和国内资深博士、研究员共同建立的技术研发团队。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=37&id=25',0,99,1,0,'healstec',1496811752,1496811806,''),(26,38,0,'价值观','','http://healstec.itcask.com/uploadfile/2017/0613/20170613113022888.jpg','','价值观',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=38&id=26',0,99,1,0,'healstec',1496812662,1497367825,''),(27,39,0,'我们的使命','','','','使用新药研发技术和营养包埋等食品技术结合创新的配方选择为中国消费者提供更有效，更安全，具有更高依从性的健康产品解决方案',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=39&id=27',0,99,1,0,'healstec',1496813041,1496813207,''),(28,39,0,'我们的愿景','','','','山高水低共商国是噶',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=39&id=28',0,99,1,0,'healstec',1496813110,1496813120,''),(29,40,0,'公司核心竞争力','','http://healstec.itcask.com/uploadfile/2017/0608/20170608120758507.jpg','','创始人和核心研发团队在肿瘤，代谢类疾病， 自身免疫性疾病等领域有丰富的新药研发经验，因此能够更好的理解相关健康产品的作用机理和安全   ',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=40&id=29',0,99,1,0,'healstec',1496851549,1497367944,''),(30,41,0,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行','','http://healstec.itcask.com/uploadfile/2017/0614/20170614091817910.jpg','','创新改变生活',1,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=41&id=30',0,99,1,0,'healstec',1496852023,1497419611,''),(41,51,0,'集团新闻列表1','','','','集团新闻列表1摘要',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=51&id=41',0,99,1,0,'healstec',1497186802,1497186828,''),(31,23,0,'纳米乳液的制备方法及原理','','','','纳米乳液（nanoemulsion）又称微乳液（microemulsion），是由水、油、表面活性剂和助表面活性剂等自发形成，粒径为1～100nm的热力学稳定、   ',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=23&id=31',0,99,1,0,'healstec',1496897581,1497454781,''),(32,24,0,'微乳剂','','http://healstec.itcask.com/uploadfile/2017/0608/20170608010353110.png','','为了更好地实现我们的愿景，为我们的家人和顾客开发更有效，更便捷，更安全，更具依从性的健康产品和服务，我们在北京建立了研发中心，配备   ',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=24&id=32',0,99,1,0,'healstec',1496898117,1496898243,''),(33,24,0,'脂质体','','http://healstec.itcask.com/uploadfile/2017/0608/20170608010353110.png','','为了更好地实现我们的愿景，为我们的家人和顾客开发更有效，更便捷，更安全，更具依从性的健康产品和服务，我们在北京建立了研发中心，配备   ',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=24&id=33',0,99,1,0,'healstec',1496898260,1496899289,''),(34,25,0,'食品级日化','','http://healstec.itcask.com/uploadfile/2017/0608/20170608022730733.png','','内容内容',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=25&id=34',0,99,1,0,'healstec',1496903197,1497369055,''),(35,26,0,'纳米乳液的制备方法及原理','','','','纳米乳液的制备方法及原理纳米乳液的制备方法及原理纳米乳液的制备方法及原理纳米乳液的制备方法及原理纳米乳液的制备方法及原理纳米乳液的   ',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=26&id=35',0,99,1,0,'healstec',1496903537,1497369284,''),(36,41,0,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行','','http://healstec.itcask.com/uploadfile/2017/0603/20170603094254562.jpg','','创新改变生活',1,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=41&id=36',0,99,1,0,'healstec',1483200000,1497403705,''),(37,42,0,'公司历史','','','','我们的历史历史历史历史',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=42&id=37',0,99,1,0,'healstec',1496999637,1497016286,''),(38,42,0,'业务原则','','','','声明声明',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=42&id=38',0,99,1,0,'healstec',1497001055,1497365744,''),(42,52,0,'自然科学1','','http://healstec.itcask.com/uploadfile/2017/0613/20170613105049610.jpg','','让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=52&id=42',0,99,1,0,'healstec',1497365404,1497365550,''),(43,52,0,'自然科学2','','http://healstec.itcask.com/uploadfile/2017/0613/20170613105049610.jpg','','让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=52&id=43',0,99,1,0,'healstec',1497365506,1497365557,''),(44,52,0,'自然科学3','','http://healstec.itcask.com/uploadfile/2017/0613/20170613105049610.jpg','','让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=52&id=44',0,99,1,0,'healstec',1497365560,1497365577,''),(45,42,0,'H在中国','','','','中国',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=42&id=45',0,99,1,0,'healstec',1497365751,1497365763,''),(46,42,0,'质量与安全','','','','质量安全',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=42&id=46',0,99,1,0,'healstec',1497365771,1497365783,''),(47,37,0,'我们相信“中国制造”的力量','','http://healstec.itcask.com/uploadfile/2017/0613/20170613112827312.jpg','','扎根中国，与国内外的科研院所和科技公司进行广泛的技术合作，在全球范围内选取创造性的技术方案和优质原料、辅料，参照中国人的健康数据及   ',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=37&id=47',0,99,1,0,'healstec',1497367679,1497454474,''),(48,41,0,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行','','http://healstec.itcask.com/uploadfile/2017/0614/20170614015217600.jpg','','在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。',1,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=41&id=48',0,99,1,0,'healstec',1497368585,1497419594,''),(49,41,0,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行','','','','在一带一路国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的丝路荟影摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协   ',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=41&id=49',0,99,1,0,'healstec',1497368609,1497403719,''),(50,41,0,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行','','','','在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=41&id=50',0,99,1,0,'healstec',1497368659,1497403725,''),(51,25,0,'健康人群营养','','http://healstec.itcask.com/uploadfile/2017/0613/20170613115347552.png','','日常营养摄入的严重不足，导致现代人亚健康的生活状态。我们用美味便捷的营养饮料，让您随时随地的快速补充营养！',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=25&id=51',0,99,1,0,'healstec',1497369122,1497369229,''),(52,28,0,'吕现黄乡村小学基础建设募捐活动','','http://healstec.itcask.com/uploadfile/2017/0614/20170614120512785.png','','大学生社会公益实践活动由大学生发起或参与，以利他为内容，以公共利益为目标指向。大学生社会公益实践是服务社群的一种方式，也是大学生观察和研究社会的途径。经由这一渠道，有利于大学生把专业知识应用到社会服务之中，拓展了青年大学生的视野，也为社会公益事业带来了新的动力。大学生社会公益实践活动具有自愿性、社会性、利他性、学习性以及多方联动性等多重属性。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=28&id=52',0,99,1,0,'healstec',1497370465,1497405237,''),(53,28,0,'吕现黄乡村小学基础建设募捐活动','','http://healstec.itcask.com/uploadfile/2017/0606/20170606124931367.png','','大学生社会公益实践活动由大学生发起或参与，以利他为内容，以公共利益为目标指向。大学生社会公益实践是服务社群的一种方式，也是大学生观察和研究社会的途径。经由这一渠道，有利于大学生把专业知识应用到社会服务之中，拓展了青年大学生的视野，也为社会公益事业带来了新的动力。大学生社会公益实践活动具有自愿性、社会性、利他性、学习性以及多方联动性等多重属性。',0,'http://healstec.itcask.com/index.php?m=content&c=index&a=show&catid=28&id=53',0,99,1,0,'healstec',1497370488,1497405230,'');
/*!40000 ALTER TABLE `hl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_news_data`
--

DROP TABLE IF EXISTS `hl_news_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_news_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` mediumtext NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `voteid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `copyfrom` varchar(100) NOT NULL DEFAULT '',
  `muti_image` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_news_data`
--

LOCK TABLES `hl_news_data` WRITE;
/*!40000 ALTER TABLE `hl_news_data` DISABLE KEYS */;
INSERT INTO `hl_news_data` VALUES (2,'这是我的测试新闻频道',0,'',0,10000,'',0,'',0,1,'|0',''),(3,'aaaaaa2',0,'',0,10000,'',0,'',0,1,'|0',''),(4,'<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（一）大学生社会公益实践的自愿性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生自愿参与的一种善意的举动，是以大学生的自愿自觉为前提，并不是出于政府或学校的强制。当然，政府部门或高校出于鼓励学生接触社会、了解社会、参与社会以及回馈社会的良好意愿，制定一些政策或采取相关措施来推动大学生进行社会公益实践，只要这些措施和办法是倡导性的而不是强制性的，并且大学生是可以根据自身实际选择参加与否的，就应多从正面的角度予以支持和理解。否则，政府和高校在大学生社会公益实践中就会成为不作为的相关方，资源的配置和公益生态系统也因此变得极不完整。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（二）大学生社会公益实践的社会性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是在社会领域践行，其活动平台是在社会，服务对象的指向也应具有社会方面的特征，而不是服务经济部门或私人部门。参与社会公益实践的大学生应该走出校园，在了解社会民情及环境特征的基础上参与服务活动。大学生社会公益实践的社会性，也意味着大学生公益实践将产生一定的社会影响，在一定程度上将改善社会某方面状况，或促成社会的发展进步。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（三）大学生社会公益实践的利他性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践具有利他性，不以私利为目的，以更多人的公共好处为目标，从社会公益实践项目的设计初始便应确立&ldquo;公益&rdquo;这个核心价值。青年大学生群体普遍具有热心公益、胸怀理想、有所作为的心理特点，青春、理想、激情与公益的结合，将激发出大学生服务社会、奉献社会的强大动力，使得青年大学生成为推动社会福利发展的重要力量。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（四）大学生社会公益实践的学习性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生参与社会实践活动的一种方式。在这里，&ldquo;实践&rdquo;指的是学习实践，是把理论和专业知识在现实中加以应用，把理论与实践结合起来，从而促进学生学习，也就是通过&ldquo;做&rdquo;来进行的&ldquo;学习&rdquo;。所以，在推动大学生参与社会公益实践活动时，应强调其&ldquo;在做中学&rdquo;的意涵，让大学生把社会公益实践活动和专业学习有机结合起来。大学生是在高等学校接受教育的人，他们的主要任务是学习。在推动大学生参与社会公益实践时，要从理论与实践相结合的高度让学生参与社会、服务他人并最终提升能力，提高学生的综合素质。因而，大学生社会公益实践无论具有多么重大的意义，但其最基本的还应回归教育的本质，促成学生的德、智、体、美全面发展。</p>\r\n',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614094213796.png\",\"alt\":\"gongyibg\"}}'),(5,'<h4 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: &quot;microsoft yahei&quot;; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">（一）大学生社会公益实践的自愿性</h4>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;;\">大学生社会公益实践是大学生自愿参与的一种善意的举动，是以大学生的自愿自觉为前提，并不是出于政府或学校的强制。当然，政府部门或高校出于鼓励学生接触社会、了解社会、参与社会以及回馈社会的良好意愿，制定一些政策或采取相关措施来推动大学生进行社会公益实践，只要这些措施和办法是倡导性的而不是强制性的，并且大学生是可以根据自身实际选择参加与否的，就应多从正面的角度予以支持和理解。否则，政府和高校在大学生社会公益实践中就会成为不作为的相关方，资源的配置和公益生态系统也因此变得极不完整。</p>\r\n<h4 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: &quot;microsoft yahei&quot;; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">（二）大学生社会公益实践的社会性</h4>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;;\">大学生社会公益实践是在社会领域践行，其活动平台是在社会，服务对象的指向也应具有社会方面的特征，而不是服务经济部门或私人部门。参与社会公益实践的大学生应该走出校园，在了解社会民情及环境特征的基础上参与服务活动。大学生社会公益实践的社会性，也意味着大学生公益实践将产生一定的社会影响，在一定程度上将改善社会某方面状况，或促成社会的发展进步。</p>\r\n<h4 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: &quot;microsoft yahei&quot;; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">（三）大学生社会公益实践的利他性</h4>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;;\">大学生社会公益实践具有利他性，不以私利为目的，以更多人的公共好处为目标，从社会公益实践项目的设计初始便应确立&ldquo;公益&rdquo;这个核心价值。青年大学生群体普遍具有热心公益、胸怀理想、有所作为的心理特点，青春、理想、激情与公益的结合，将激发出大学生服务社会、奉献社会的强大动力，使得青年大学生成为推动社会福利发展的重要力量。</p>\r\n<h4 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: &quot;microsoft yahei&quot;; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">（四）大学生社会公益实践的学习性</h4>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;;\">大学生社会公益实践是大学生参与社会实践活动的一种方式。在这里，&ldquo;实践&rdquo;指的是学习实践，是把理论和专业知识在现实中加以应用，把理论与实践结合起来，从而促进学生学习，也就是通过&ldquo;做&rdquo;来进行的&ldquo;学习&rdquo;。所以，在推动大学生参与社会公益实践活动时，应强调其&ldquo;在做中学&rdquo;的意涵，让大学生把社会公益实践活动和专业学习有机结合起来。大学生是在高等学校接受教育的人，他们的主要任务是学习。在推动大学生参与社会公益实践时，要从理论与实践相结合的高度让学生参与社会、服务他人并最终提升能力，提高学生的综合素质。因而，大学生社会公益实践无论具有多么重大的意义，但其最基本的还应回归教育的本质，促成学生的德、智、体、美全面发展。</p>\r\n',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614094836604.png\",\"alt\":\"gongyibg\"}}'),(52,'<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（一）大学生社会公益实践的自愿性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生自愿参与的一种善意的举动，是以大学生的自愿自觉为前提，并不是出于政府或学校的强制。当然，政府部门或高校出于鼓励学生接触社会、了解社会、参与社会以及回馈社会的良好意愿，制定一些政策或采取相关措施来推动大学生进行社会公益实践，只要这些措施和办法是倡导性的而不是强制性的，并且大学生是可以根据自身实际选择参加与否的，就应多从正面的角度予以支持和理解。否则，政府和高校在大学生社会公益实践中就会成为不作为的相关方，资源的配置和公益生态系统也因此变得极不完整。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（二）大学生社会公益实践的社会性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是在社会领域践行，其活动平台是在社会，服务对象的指向也应具有社会方面的特征，而不是服务经济部门或私人部门。参与社会公益实践的大学生应该走出校园，在了解社会民情及环境特征的基础上参与服务活动。大学生社会公益实践的社会性，也意味着大学生公益实践将产生一定的社会影响，在一定程度上将改善社会某方面状况，或促成社会的发展进步。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（三）大学生社会公益实践的利他性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践具有利他性，不以私利为目的，以更多人的公共好处为目标，从社会公益实践项目的设计初始便应确立&ldquo;公益&rdquo;这个核心价值。青年大学生群体普遍具有热心公益、胸怀理想、有所作为的心理特点，青春、理想、激情与公益的结合，将激发出大学生服务社会、奉献社会的强大动力，使得青年大学生成为推动社会福利发展的重要力量。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（四）大学生社会公益实践的学习性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生参与社会实践活动的一种方式。在这里，&ldquo;实践&rdquo;指的是学习实践，是把理论和专业知识在现实中加以应用，把理论与实践结合起来，从而促进学生学习，也就是通过&ldquo;做&rdquo;来进行的&ldquo;学习&rdquo;。所以，在推动大学生参与社会公益实践活动时，应强调其&ldquo;在做中学&rdquo;的意涵，让大学生把社会公益实践活动和专业学习有机结合起来。大学生是在高等学校接受教育的人，他们的主要任务是学习。在推动大学生参与社会公益实践时，要从理论与实践相结合的高度让学生参与社会、服务他人并最终提升能力，提高学生的综合素质。因而，大学生社会公益实践无论具有多么重大的意义，但其最基本的还应回归教育的本质，促成学生的德、智、体、美全面发展。</p>\r\n<br />\r\n',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614095201306.png\",\"alt\":\"gongyibg\"}}'),(53,'<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（一）大学生社会公益实践的自愿性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生自愿参与的一种善意的举动，是以大学生的自愿自觉为前提，并不是出于政府或学校的强制。当然，政府部门或高校出于鼓励学生接触社会、了解社会、参与社会以及回馈社会的良好意愿，制定一些政策或采取相关措施来推动大学生进行社会公益实践，只要这些措施和办法是倡导性的而不是强制性的，并且大学生是可以根据自身实际选择参加与否的，就应多从正面的角度予以支持和理解。否则，政府和高校在大学生社会公益实践中就会成为不作为的相关方，资源的配置和公益生态系统也因此变得极不完整。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（二）大学生社会公益实践的社会性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是在社会领域践行，其活动平台是在社会，服务对象的指向也应具有社会方面的特征，而不是服务经济部门或私人部门。参与社会公益实践的大学生应该走出校园，在了解社会民情及环境特征的基础上参与服务活动。大学生社会公益实践的社会性，也意味着大学生公益实践将产生一定的社会影响，在一定程度上将改善社会某方面状况，或促成社会的发展进步。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（三）大学生社会公益实践的利他性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践具有利他性，不以私利为目的，以更多人的公共好处为目标，从社会公益实践项目的设计初始便应确立&ldquo;公益&rdquo;这个核心价值。青年大学生群体普遍具有热心公益、胸怀理想、有所作为的心理特点，青春、理想、激情与公益的结合，将激发出大学生服务社会、奉献社会的强大动力，使得青年大学生成为推动社会福利发展的重要力量。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（四）大学生社会公益实践的学习性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生参与社会实践活动的一种方式。在这里，&ldquo;实践&rdquo;指的是学习实践，是把理论和专业知识在现实中加以应用，把理论与实践结合起来，从而促进学生学习，也就是通过&ldquo;做&rdquo;来进行的&ldquo;学习&rdquo;。所以，在推动大学生参与社会公益实践活动时，应强调其&ldquo;在做中学&rdquo;的意涵，让大学生把社会公益实践活动和专业学习有机结合起来。大学生是在高等学校接受教育的人，他们的主要任务是学习。在推动大学生参与社会公益实践时，要从理论与实践相结合的高度让学生参与社会、服务他人并最终提升能力，提高学生的综合素质。因而，大学生社会公益实践无论具有多么重大的意义，但其最基本的还应回归教育的本质，促成学生的德、智、体、美全面发展。</p>\r\n<br />\r\n<br />\r\n',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614095318555.png\",\"alt\":\"gongyibg\"}}'),(6,'<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（一）大学生社会公益实践的自愿性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生自愿参与的一种善意的举动，是以大学生的自愿自觉为前提，并不是出于政府或学校的强制。当然，政府部门或高校出于鼓励学生接触社会、了解社会、参与社会以及回馈社会的良好意愿，制定一些政策或采取相关措施来推动大学生进行社会公益实践，只要这些措施和办法是倡导性的而不是强制性的，并且大学生是可以根据自身实际选择参加与否的，就应多从正面的角度予以支持和理解。否则，政府和高校在大学生社会公益实践中就会成为不作为的相关方，资源的配置和公益生态系统也因此变得极不完整。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（二）大学生社会公益实践的社会性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是在社会领域践行，其活动平台是在社会，服务对象的指向也应具有社会方面的特征，而不是服务经济部门或私人部门。参与社会公益实践的大学生应该走出校园，在了解社会民情及环境特征的基础上参与服务活动。大学生社会公益实践的社会性，也意味着大学生公益实践将产生一定的社会影响，在一定程度上将改善社会某方面状况，或促成社会的发展进步。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（三）大学生社会公益实践的利他性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践具有利他性，不以私利为目的，以更多人的公共好处为目标，从社会公益实践项目的设计初始便应确立&ldquo;公益&rdquo;这个核心价值。青年大学生群体普遍具有热心公益、胸怀理想、有所作为的心理特点，青春、理想、激情与公益的结合，将激发出大学生服务社会、奉献社会的强大动力，使得青年大学生成为推动社会福利发展的重要力量。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（四）大学生社会公益实践的学习性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生参与社会实践活动的一种方式。在这里，&ldquo;实践&rdquo;指的是学习实践，是把理论和专业知识在现实中加以应用，把理论与实践结合起来，从而促进学生学习，也就是通过&ldquo;做&rdquo;来进行的&ldquo;学习&rdquo;。所以，在推动大学生参与社会公益实践活动时，应强调其&ldquo;在做中学&rdquo;的意涵，让大学生把社会公益实践活动和专业学习有机结合起来。大学生是在高等学校接受教育的人，他们的主要任务是学习。在推动大学生参与社会公益实践时，要从理论与实践相结合的高度让学生参与社会、服务他人并最终提升能力，提高学生的综合素质。因而，大学生社会公益实践无论具有多么重大的意义，但其最基本的还应回归教育的本质，促成学生的德、智、体、美全面发展。</p>\r\n',0,'',0,10000,'',0,'',0,1,'社会活动1|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614095237866.png\",\"alt\":\"gongyibg\"}}'),(7,'<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（一）大学生社会公益实践的自愿性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生自愿参与的一种善意的举动，是以大学生的自愿自觉为前提，并不是出于政府或学校的强制。当然，政府部门或高校出于鼓励学生接触社会、了解社会、参与社会以及回馈社会的良好意愿，制定一些政策或采取相关措施来推动大学生进行社会公益实践，只要这些措施和办法是倡导性的而不是强制性的，并且大学生是可以根据自身实际选择参加与否的，就应多从正面的角度予以支持和理解。否则，政府和高校在大学生社会公益实践中就会成为不作为的相关方，资源的配置和公益生态系统也因此变得极不完整。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（二）大学生社会公益实践的社会性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是在社会领域践行，其活动平台是在社会，服务对象的指向也应具有社会方面的特征，而不是服务经济部门或私人部门。参与社会公益实践的大学生应该走出校园，在了解社会民情及环境特征的基础上参与服务活动。大学生社会公益实践的社会性，也意味着大学生公益实践将产生一定的社会影响，在一定程度上将改善社会某方面状况，或促成社会的发展进步。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（三）大学生社会公益实践的利他性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践具有利他性，不以私利为目的，以更多人的公共好处为目标，从社会公益实践项目的设计初始便应确立&ldquo;公益&rdquo;这个核心价值。青年大学生群体普遍具有热心公益、胸怀理想、有所作为的心理特点，青春、理想、激情与公益的结合，将激发出大学生服务社会、奉献社会的强大动力，使得青年大学生成为推动社会福利发展的重要力量。</p>\r\n<h4 color:=\"\" font-size:=\"\" line-height:=\"\" microsoft=\"\" style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \">（四）大学生社会公益实践的学习性</h4>\r\n<p microsoft=\"\" style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \">大学生社会公益实践是大学生参与社会实践活动的一种方式。在这里，&ldquo;实践&rdquo;指的是学习实践，是把理论和专业知识在现实中加以应用，把理论与实践结合起来，从而促进学生学习，也就是通过&ldquo;做&rdquo;来进行的&ldquo;学习&rdquo;。所以，在推动大学生参与社会公益实践活动时，应强调其&ldquo;在做中学&rdquo;的意涵，让大学生把社会公益实践活动和专业学习有机结合起来。大学生是在高等学校接受教育的人，他们的主要任务是学习。在推动大学生参与社会公益实践时，要从理论与实践相结合的高度让学生参与社会、服务他人并最终提升能力，提高学生的综合素质。因而，大学生社会公益实践无论具有多么重大的意义，但其最基本的还应回归教育的本质，促成学生的德、智、体、美全面发展。</p>\r\n',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614095221494.png\",\"alt\":\"gongyibg\"}}'),(8,'<span font-size:=\"\" microsoft=\"\" style=\"color: rgb(51, 51, 51); font-family: \">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span><br font-size:=\"\" microsoft=\"\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" />\r\n<span font-size:=\"\" microsoft=\"\" style=\"color: rgb(51, 51, 51); font-family: \">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span><br font-size:=\"\" microsoft=\"\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" />\r\n<span font-size:=\"\" microsoft=\"\" style=\"color: rgb(51, 51, 51); font-family: \">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span><br font-size:=\"\" microsoft=\"\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" />\r\n<span font-size:=\"\" microsoft=\"\" style=\"color: rgb(51, 51, 51); font-family: \">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span>',0,'',0,10000,'',0,'',0,1,'|0',''),(9,'<span style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 20px;\">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 20px;\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 20px;\">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 20px;\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 20px;\">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 20px;\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 20px;\">啦啦啦地导航诋毁是啦啦啦地导航诋毁是</span>',0,'',0,10000,'',0,'',0,1,'|0',''),(10,'产品剖析1的内容',0,'',0,10000,'',0,'',0,1,'|0',''),(11,'产品剖析2的内容',0,'',0,10000,'',0,'',0,1,'|0',''),(12,'产品剖析3的内容',0,'',0,10000,'',0,'',0,1,'|0',''),(13,'营养膳食1的内容',0,'',0,10000,'',0,'',0,1,'|0',''),(14,'营养膳食2的内容',0,'',0,10000,'',0,'',0,1,'|0',''),(15,'营养膳食3的内容',0,'',0,10000,'',0,'',0,1,'|0',''),(16,'简单+安全',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0609\\/20170609062420124.png\",\"alt\":\"pinpai1\"},\"1\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0609\\/20170609062420712.png\",\"alt\":\"pinpai2\"},\"2\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0609\\/20170609062420980.png\",\"alt\":\"pinpai3\"}}'),(17,'真简单+这健康',0,'',0,10000,'',0,'',0,1,'|0',''),(18,'实际费率计算的两家公司的价格',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0609\\/20170609061722825.png\",\"alt\":\"pinpai1\"},\"1\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0609\\/20170609061722897.png\",\"alt\":\"pinpai2\"},\"2\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0609\\/20170609061722807.png\",\"alt\":\"pinpai3\"}}'),(23,'shipjiji',0,'',0,10000,'',0,'',0,1,'|0',''),(22,'shipinj',0,'',0,10000,'',0,'',0,1,'|0',''),(24,'成立于2015年12月，由留英药学博士，及其来自于制药，能源，电子等行业的伙伴共同创立，致力于采用创新性的药品和食品制剂技术，为中国消费者研究、开发和生产日化品、食品、营养品、药',0,'',0,10000,'',0,'',0,1,'|0',''),(25,'已在英国伦敦设立了分公司，在中国北京建立研发中心，并初步创立了由国内外知名专家学者和国内资深博士、研究员共同建立的技术研发团队。',0,'',0,10000,'',0,'',0,1,'|0',''),(26,'价值观',0,'',0,10000,'',0,'',0,1,'|0',''),(27,'<span font-size:=\"\" letter-spacing:=\"\" microsoft=\"\" style=\"color: rgb(129, 129, 129); font-family: \" text-align:=\"\">使用新药研发技术和营养包埋等食品技术&nbsp;</span><br />\r\n<span font-size:=\"\" letter-spacing:=\"\" microsoft=\"\" style=\"color: rgb(129, 129, 129); font-family: \" text-align:=\"\">结合创新的配方选择&nbsp;</span><span font-size:=\"\" letter-spacing:=\"\" microsoft=\"\" style=\"color: rgb(129, 129, 129); font-family: \" text-align:=\"\">为中国消费者提供更有效，更安全，<br />\r\n具有更高依从性的健康产品解决方案</span>',0,'',0,10000,'',0,'',0,1,'|0',''),(28,'山高水低共商国是噶',0,'',0,10000,'',0,'',0,1,'|0',''),(29,'<span style=\"color:#ffffff;\"><span style=\"font-family: \'microsoft yahei\'; line-height: 17.142858505249px;\">创始人和核心研发团队在肿瘤，代谢类疾病， 自身免疫性疾病等领域有丰富的新药研发经验，因此能够更好的理解相关健康产品的作用机理和安全范围，找出最佳的解决方案。同时，研发团队整合了营养， 食品，制药等多方面的技术力量，确保我们的产品在效果，味道和安全性等方面达到最优。</span></span>',0,'',0,10000,'',0,'',0,1,'|0',''),(30,'<span style=\"font-family: \'microsoft yahei\'; font-size: 14px; line-height: 24px;\">在&ldquo;一带一路&rdquo;国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的&ldquo;丝路荟影&rdquo;摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</span><br />\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(31,'<span style=\"color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; line-height: 17.1429px;\">纳米乳液（nanoemulsion）又称微乳液（microemulsion），是由水、油、表面活性剂和助表面活性剂等自发形成，粒径为1～100nm的热力学稳定、各向同性，透明或半透明的均相分散体系.一般来说，纳米乳分为三种类型，即水包油型纳米乳(O/W)、油包水型纳米乳(W/O以及双连续型纳米乳(B.C)，1943年由Hoar和Schulman首次发现并报道了这一分散体系。</span>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; line-height: 17.1429px;\">纳米乳具有许多其它制剂无可比拟的优点：①为各向同性的透明液体，属热力学稳定系统，经热压灭菌或离心也不能使之分层；②工艺简单，制备过程不需特殊设备，可自发形成，纳米乳粒径一般为1～100nm；③黏度低，可减少注射时的疼痛；④具有缓释和靶向作用；⑤提高药物的溶解度，减少药物在体内的酶解，可形成对药物的保护作用并提高胃肠道对药物的吸收，提高药物的生物利用度[20]。因此纳米乳作为一种药物载体受到广泛的关注。</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; line-height: 17.1429px;\">乳化大致可分为机械法和物理化学法两大类。纳米乳剂是非平衡体系，它的形成需要外加能量，一般来自机械设备或来自化学制剂的结构潜能。利用机械设备的能量(高速搅拌器、高压均质机和超声波发生器)这类方法通常被认为是高能乳化法。而利用结构中的化学潜能的方法通常被认为是浓缩法或低能乳化法。</p>\r\n<h3 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \'microsoft yahei\'; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">1.机械法制备纳米乳剂</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; line-height: 17.1429px;\">机械法制备纳米乳剂的常规过程有两步：首先是粗乳液的制备，通常按照工艺配比将油一水，表面活性剂及其他稳定剂成分混合，利用搅拌器得到一定粒度分布的常规乳液；然后是纳米乳剂的制备，利用动态超高压微射流均质机或超声波与高压均质机联用对粗乳液进行特定条件下的均质处理得到纳米乳剂。</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; line-height: 17.1429px;\">利用高压均质机或超声波发生器能量的方法通常被叫做高能乳化法。研究表明，这些设备能在最短的时间内提供所需要的能量并获得液滴粒径最小的均匀流体 。动态超高压微射均质机在国内外纳米乳剂领域的研究中被广泛应用。超声波乳化在降低液滴粒径方面相当有效，仅仅适用于小批量生产。</p>\r\n<h3 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \'microsoft yahei\'; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">2.低能乳化法</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; line-height: 17.1429px;\">低能乳化法是利用在乳化作用过程中曲率和相转变发生的原理。乳剂转换点EIP (Emulsioninversion point)法由Marszall和Shick首先发明。在恒定温度下，乳化过程中不断改变组分就可以观察到相转变。Sadurni等研制的O/W型纳米乳剂，粒径小至14nm，同时还具有高的动力学稳定性。转相乳化PIT(phase inversion temperature)法由Shinoda和Saito首先发明。在恒定组分条件下，调节温度得到目标乳化体系。此法在实际应用中多用来制备0/W型乳液。研究表明，在不添加任何表面活性剂的情况下，自发的乳化也会产生，并获得纳米乳剂。</p>\r\n',0,'',0,10000,'',0,'',0,1,'|0','{\"0\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0608\\/20170608125353630.png\",\"alt\":\"keyan-tab1\"},\"1\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0608\\/20170608125353448.png\",\"alt\":\"keyan-tab2\"},\"2\":{\"url\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0608\\/20170608125353972.png\",\"alt\":\"keyan-tab3\"}}'),(32,'<span style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">为了更好地实现我们的愿景，为我们的家人和顾客开发更有效，更便捷，更安全，更具依从性的健康产品和服务，我们在北京建立了研发中心，配备了高剪切，高压均质，液相色谱，气相色谱，喷雾干燥等设备，组建了由国内外专家顾问团队和资深研究人员所组成的研发队伍，经验领域涵盖了制药，食品，营养等多个方面。我们期望运用科学知识，根据不同的使用场景，为我们的消费者提供最科学的配方，最有效的活性成分递送系统，同时兼顾味道，口感等重要的消费体验。科学的配方是一切产品的开始，我们通过严格的文献调研和广泛的科研合作，仅选择具有最充足证据的活性成分进行配方组合。我们知道，相比于片剂，胶囊，固体粉剂等剂型，液体剂型能够提供最好的配方多样性，便携性，易用性，生物利用度以及口感和味道。构建液体的活性成分传递体系有许多技术上的难点，其中的一个难点就是如何将水不溶性的活性物质加入到液体产品中，并保持货架期的稳定性。这些水不溶性的物质在所有的活性物质中占据了重要的地位，它们可能是关键脂肪酸，例如鱼油；可能是脂溶性的维生素，例如维生素E或维生素A；也可能是其它的抗氧化活性成分，比如白藜芦醇或辅酶Q10。解决上诉的技术问题需要大量的科研实验。借鉴国际上现有的成功经验，我们将微乳剂，脂质体，微囊化等制药和食品领域技术手段应用于我们的液体产品，开发具有自主知识产权的稳定体系。在技术力量上的投入和创新使我们在配方的组合上有更多的自由度，可以为健康人群和患者提供更具创新性的健康解决方案和产品。</span>\r\n<h3 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: &quot;microsoft yahei&quot;; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">1.微乳剂</h3>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;;\">　　乳剂是大自然的营养物质传递系统，是表面活性物质，例如蛋白质和磷脂，包裹油溶性物质在水中形成的一种均匀的分散体系，我们所熟知的牛奶和椰浆就是乳剂的代表。现代食品行业通过稳定剂以及高压均质等技术将乳剂的粒径达到微米或亚微米的大小，使牛奶和椰浆能够在更长的货架期内保持均匀的性状和风味，且更容易通过胃肠道吸收。通过生物技术人工构建的微乳剂以及其喷雾干燥所形成的微胶囊粉被广泛地应用于ICU病人的配方营养，婴儿配方乳粉，营养代餐，甚至维生素水等产品之中。微乳剂在制药和医疗器械行业也有广泛的应用。使用微乳剂的药物传递系统有更好的生物利用度，能够促进难溶药物的吸收，提高药物的疗效。</p>\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(33,'<span font-size:=\"\" microsoft=\"\" style=\"color: rgb(51, 51, 51); font-family: \">2222222为了更好地实现我们的愿景，为我们的家人和顾客开发更有效，更便捷，更安全，更具依从性的健康产品和服务，我们在北京建立了研发中心，配备了高剪切，高压均质，液相色谱，气相色谱，喷雾干燥等设备，组建了由国内外专家顾问团队和资深研究人员所组成的研发队伍，经验领域涵盖了制药，食品，营养等多个方面。我们期望运用科学知识，根据不同的使用场景，为我们的消费者提供最科学的配方，最有效的活性成分递送系统，同时兼顾味道，口感等重要的消费体验。科学的配方是一切产品的开始，我们通过严格的文献调研和广泛的科研合作，仅选择具有最充足证据的活性成分</span>',0,'',0,10000,'',0,'',0,1,'|0',''),(34,'用食品配料制造日化产品，做顶级安全日化产品是<br />\r\n我们始终追求的产品宗旨，让您的生活吃的放心，<br />\r\n用的安心！',0,'',0,10000,'',0,'',0,1,'|0',''),(35,'<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\';\">纳米乳液（nanoemulsion）又称微乳液（microemulsion），是由水、油、表面活性剂和助表面活性剂等自发形成，粒径为1～100nm的热力学稳定、各向同性，透明或半透明的均相分散体系.一般来说，纳米乳分为三种类型，即水包油型纳米乳(O/W)、油包水型纳米乳(W/O以及双连续型纳米乳(B.C)，1943年由Hoar和Schulman首次发现并报道了这一分散体系。</p>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\';\">纳米乳具有许多其它制剂无可比拟的优点：①为各向同性的透明液体，属热力学稳定系统，经热压灭菌或离心也不能使之分层；②工艺简单，制备过程不需特殊设备，可自发形成，纳米乳粒径一般为1～100nm；③黏度低，可减少注射时的疼痛；④具有缓释和靶向作用；⑤提高药物的溶解度，减少药物在体内的酶解，可形成对药物的保护作用并提高胃肠道对药物的吸收，提高药物的生物利用度[20]。因此纳米乳作为一种药物载体受到广泛的关注。</p>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\';\">乳化大致可分为机械法和物理化学法两大类。纳米乳剂是非平衡体系，它的形成需要外加能量，一般来自机械设备或来自化学制剂的结构潜能。利用机械设备的能量(高速搅拌器、高压均质机和超声波发生器)这类方法通常被认为是高能乳化法。而利用结构中的化学潜能的方法通常被认为是浓缩法或低能乳化法。</p>\r\n<h3 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \'microsoft yahei\'; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">1.机械法制备纳米乳剂</h3>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\';\">机械法制备纳米乳剂的常规过程有两步：首先是粗乳液的制备，通常按照工艺配比将油一水，表面活性剂及其他稳定剂成分混合，利用搅拌器得到一定粒度分布的常规乳液；然后是纳米乳剂的制备，利用动态超高压微射流均质机或超声波与高压均质机联用对粗乳液进行特定条件下的均质处理得到纳米乳剂。</p>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\';\">利用高压均质机或超声波发生器能量的方法通常被叫做高能乳化法。研究表明，这些设备能在最短的时间内提供所需要的能量并获得液滴粒径最小的均匀流体 。动态超高压微射均质机在国内外纳米乳剂领域的研究中被广泛应用。超声波乳化在降低液滴粒径方面相当有效，仅仅适用于小批量生产。</p>\r\n<h3 style=\"box-sizing: border-box; margin: 2rem 0px 3rem; padding: 0px; font-family: \'microsoft yahei\'; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\">2.低能乳化法</h3>\r\n<p style=\"box-sizing: border-box; margin: 1rem 0px 2rem; padding: 0px; font-size: 14px; line-height: 30px; color: rgb(51, 51, 51); font-family: \'microsoft yahei\';\">低能乳化法是利用在乳化作用过程中曲率和相转变发生的原理。乳剂转换点EIP (Emulsioninversion point)法由Marszall和Shick首先发明。在恒定温度下，乳化过程中不断改变组分就可以观察到相转变。Sadurni等研制的O/W型纳米乳剂，粒径小至14nm，同时还具有高的动力学稳定性。转相乳化PIT(phase inversion temperature)法由Shinoda和Saito首先发明。在恒定组分条件下，调节温度得到目标乳化体系。此法在实际应用中多用来制备0/W型乳液。研究表明，在不添加任何表面活性剂的情况下，自发的乳化也会产生，并获得纳米乳剂。</p>\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(36,'<span style=\"font-family: \'microsoft yahei\'; font-size: 14px; line-height: 24px;\">在&ldquo;一带一路&rdquo;国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的&ldquo;丝路荟影&rdquo;摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</span><br />\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(37,'&nbsp; &nbsp;我们的历史历史历史历史 &nbsp;<br />\r\n<br />\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(38,'声明声明',0,'',0,10000,'',0,'',0,1,'|0',''),(41,'集团新闻列表1内容',0,'',0,10000,'',0,'',0,1,'|0',''),(42,'<span style=\"color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; font-size: 15px; line-height: 22px;\">让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。</span>',0,'',0,10000,'',0,'',0,1,'|0',''),(43,'<span style=\"color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; font-size: 15px; line-height: 22px;\">让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。</span>',0,'',0,10000,'',0,'',0,1,'|0',''),(44,'<span style=\"color: rgb(51, 51, 51); font-family: \'microsoft yahei\'; font-size: 15px; line-height: 22px;\">让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。</span>',0,'',0,10000,'',0,'',0,1,'|0',''),(45,'中国',0,'',0,10000,'',0,'',0,1,'|0',''),(46,'质量安全',0,'',0,10000,'',0,'',0,1,'|0',''),(47,'扎根中国，与国内外的科研院所和科技公司进行广泛的技术合作，在全球范围内选取创造性的技术方案和优质原料、辅料，参照中国人的健康数据及国家标准，为健康人群和患病人群在运动、能力代谢、体重管理、慢病管理和愈后等领域提供最好的解决方案。质原料、辅料，参照中国人的健康数据及国家标准，为健康人群和患病人群在运动、能力代谢、体重管理、慢病管理和愈后等领域提供最好的解决方案。',0,'',0,10000,'',0,'',0,1,'|0',''),(48,'<span style=\"font-family: \'microsoft yahei\'; font-size: 14px; line-height: 24px;\">在&ldquo;一带一路&rdquo;国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的&ldquo;丝路荟影&rdquo;摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</span><br />\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(49,'<span style=\"font-family: \'microsoft yahei\'; font-size: 14px; line-height: 24px;\">在&ldquo;一带一路&rdquo;国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的&ldquo;丝路荟影&rdquo;摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</span><br />\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(50,'<span style=\"font-family: \'microsoft yahei\'; font-size: 14px; line-height: 24px;\">在&ldquo;一带一路&rdquo;国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的&ldquo;丝路荟影&rdquo;摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</span><br />\r\n',0,'',0,10000,'',0,'',0,1,'|0',''),(51,'日常营养摄入的严重不足，导致现代人亚健康的<br />\r\n生活状态。我们用美味便捷的营养饮料，让您<br />\r\n随时随地的快速补充营养！',0,'',0,10000,'',0,'',0,1,'|0','');
/*!40000 ALTER TABLE `hl_news_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_page`
--

DROP TABLE IF EXISTS `hl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) NOT NULL,
  `style` varchar(24) NOT NULL,
  `keywords` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `image1` varchar(1024) DEFAULT NULL,
  `image2` varchar(1024) DEFAULT NULL,
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_page`
--

LOCK TABLES `hl_page` WRITE;
/*!40000 ALTER TABLE `hl_page` DISABLE KEYS */;
INSERT INTO `hl_page` VALUES (20,'关注科研',';','','专业的科研团队&hellip;&hellip;','',0,NULL,NULL),(22,'what id do?',';','','我们用已知的科学积累和严谨的科研态度，加之强烈的责任感和爱心，为您奉上针对不同人群的健康解决方案，安全无忧，健康生活！','',0,'http://healstec.itcask.com/uploadfile/2017/0605/20170605114456182.jpg',''),(2,'公司历史',';','','电视柜电视柜深度公司','',0,'',''),(46,'联系我们',';','','<span style=\"line-height:170%;\">官方热线：2242424<br />\r\n官方微信：3333<br />\r\nqq:33333</span><br />\r\n','',0,'','');
/*!40000 ALTER TABLE `hl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_pay_account`
--

DROP TABLE IF EXISTS `hl_pay_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_pay_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `trade_sn` char(50) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `contactname` char(50) NOT NULL,
  `email` char(40) NOT NULL,
  `telephone` char(20) NOT NULL,
  `discount` float(8,2) NOT NULL DEFAULT '0.00',
  `money` char(8) NOT NULL,
  `quantity` int(8) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `usernote` char(255) NOT NULL,
  `pay_id` tinyint(3) NOT NULL,
  `pay_type` enum('offline','recharge','selfincome','online') NOT NULL DEFAULT 'recharge',
  `payment` char(90) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  `ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  `status` enum('succ','failed','error','progress','timeout','cancel','waitting','unpay') NOT NULL DEFAULT 'unpay',
  `adminnote` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `trade_sn` (`trade_sn`,`money`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_pay_account`
--

LOCK TABLES `hl_pay_account` WRITE;
/*!40000 ALTER TABLE `hl_pay_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_pay_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_pay_payment`
--

DROP TABLE IF EXISTS `hl_pay_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_pay_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `pay_name` varchar(120) NOT NULL,
  `pay_code` varchar(20) NOT NULL,
  `pay_desc` text NOT NULL,
  `pay_method` tinyint(1) DEFAULT NULL,
  `pay_fee` varchar(10) NOT NULL,
  `config` text NOT NULL,
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_pay_payment`
--

LOCK TABLES `hl_pay_payment` WRITE;
/*!40000 ALTER TABLE `hl_pay_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_pay_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_pay_spend`
--

DROP TABLE IF EXISTS `hl_pay_spend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_pay_spend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creat_at` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logo` varchar(20) NOT NULL,
  `value` int(5) NOT NULL,
  `op_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `op_username` char(20) NOT NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `creat_at` (`creat_at`),
  KEY `logo` (`logo`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_pay_spend`
--

LOCK TABLES `hl_pay_spend` WRITE;
/*!40000 ALTER TABLE `hl_pay_spend` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_pay_spend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_picture`
--

DROP TABLE IF EXISTS `hl_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_picture` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_picture`
--

LOCK TABLES `hl_picture` WRITE;
/*!40000 ALTER TABLE `hl_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_picture_data`
--

DROP TABLE IF EXISTS `hl_picture_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_picture_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `pictureurls` mediumtext NOT NULL,
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_picture_data`
--

LOCK TABLES `hl_picture_data` WRITE;
/*!40000 ALTER TABLE `hl_picture_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_picture_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_position`
--

DROP TABLE IF EXISTS `hl_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned DEFAULT '0',
  `catid` smallint(5) unsigned DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  `extention` char(100) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_position`
--

LOCK TABLES `hl_position` WRITE;
/*!40000 ALTER TABLE `hl_position` DISABLE KEYS */;
INSERT INTO `hl_position` VALUES (1,0,0,'首页焦点图推荐',20,NULL,1,1,''),(2,0,0,'首页头条推荐',20,NULL,4,1,''),(13,82,0,'栏目页焦点图',20,NULL,0,1,''),(5,69,0,'推荐下载',20,NULL,0,1,''),(8,30,54,'图片频道首页焦点图',20,NULL,0,1,''),(9,0,0,'网站顶部推荐',20,NULL,0,1,''),(10,0,0,'栏目首页推荐',20,NULL,0,1,''),(12,0,0,'首页图片推荐',20,NULL,0,1,''),(14,0,0,'视频首页焦点图',20,'',0,1,''),(15,0,0,'视频首页头条推荐',20,'',0,1,''),(16,0,0,'视频首页每日热点',20,'',0,1,''),(17,0,0,'视频栏目精彩推荐',20,'',0,1,'');
/*!40000 ALTER TABLE `hl_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_position_data`
--

DROP TABLE IF EXISTS `hl_position_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `modelid` smallint(6) unsigned DEFAULT '0',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `data` mediumtext,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `listorder` mediumint(8) DEFAULT '0',
  `expiration` int(10) NOT NULL,
  `extention` char(30) DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_position_data`
--

LOCK TABLES `hl_position_data` WRITE;
/*!40000 ALTER TABLE `hl_position_data` DISABLE KEYS */;
INSERT INTO `hl_position_data` VALUES (1,6,1,'content',1,1,'{\"title\":\"test1\",\"description\":\"my test1 description\",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0603\\/20170603084431597.jpg\",\"inputtime\":\"1496493648\",\"style\":\"\"}',1,1,0,NULL,0),(1,6,2,'content',1,1,'{\"title\":\"test1\",\"description\":\"my test1 description\",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0603\\/20170603084431597.jpg\",\"inputtime\":\"1496493648\",\"style\":\"\"}',1,1,0,NULL,0),(2,15,2,'content',1,1,'{\"title\":\"\\u65b0\\u95fb\\u9891\\u9053\\u6d4b\\u8bd51\",\"description\":\"\\u521b\\u65b0\\u6539\\u53d8\\u751f\\u6d3b\",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0603\\/20170603102849984.jpg\",\"inputtime\":\"1496500033\"}',1,2,0,NULL,0),(3,15,2,'content',1,1,'{\"title\":\"\\u521b\\u65b0\\u6539\\u53d8\\u751f\\u6d3b2\",\"description\":\"\\u521b\\u65b0\\u6539\\u53d8\\u751f\\u6d3b2\",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0603\\/20170603103623444.jpg\",\"inputtime\":\"1496500542\",\"style\":\"\"}',1,3,0,NULL,0),(4,27,10,'content',1,1,'{\"title\":\"\\u6d54\\u9633\\u6751\\u5c0f\\u5b66\\u751f\\u6d3b\\u516c\\u76ca\\u6d3b\\u52a8\",\"description\":\"\\u5927\\u5b66\\u751f\\u793e\\u4f1a\\u516c\\u76ca\\u5b9e\\u8df5\\u6d3b\\u52a8\\u7531\\u5927\\u5b66\\u751f\\u53d1\\u8d77\\u6216\\u53c2\\u4e0e\\uff0c\\u4ee5\\u5229\\u4ed6\\u4e3a\\u5185\\u5bb9\\uff0c\\u4ee5\\u516c\\u5171\\u5229\\u76ca\\u4e3a\\u76ee\\u6807\\u6307\\u5411\\u3002\\u5927\\u5b66\\u751f\\u793e\\u4f1a\\u516c\\u76ca\\u5b9e\\u8df5\\u662f\\u670d\\u52a1\\u793e\\u7fa4\\u7684\\u4e00\\u79cd\\u65b9\\u5f0f\\uff0c\\u4e5f\\u662f\\u5927\\u5b66\\u751f\\u89c2 \",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614120512785.png\",\"inputtime\":\"1496724466\",\"style\":\"\"}',1,4,0,NULL,0),(5,27,10,'content',1,1,'{\"title\":\"\\u6d54\\u9633\\u6751\\u5c0f\\u5b66\\u751f\\u6d3b\\u516c\\u76ca\\u6d3b\\u52a8\",\"description\":\"\\u5927\\u5b66\\u751f\\u793e\\u4f1a\\u516c\\u76ca\\u5b9e\\u8df5\\u6d3b\\u52a8\\u7531\\u5927\\u5b66\\u751f\\u53d1\\u8d77\\u6216\\u53c2\\u4e0e\\uff0c\\u4ee5\\u5229\\u4ed6\\u4e3a\\u5185\\u5bb9\\uff0c\\u4ee5\\u516c\\u5171\\u5229\\u76ca\\u4e3a\\u76ee\\u6807\\u6307\\u5411\\u3002\\u5927\\u5b66\\u751f\\u793e\\u4f1a\\u516c\\u76ca\\u5b9e\\u8df5\\u662f\\u670d\\u52a1\\u793e\\u7fa4\\u7684\\u4e00\\u79cd\\u65b9\\u5f0f\\uff0c\\u4e5f\\u662f\\u5927\\u5b66\\u751f\\u89c2   \",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614120421565.png\",\"inputtime\":\"1496724599\",\"style\":\"\"}',1,5,0,NULL,0),(36,41,2,'content',1,1,'{\"title\":\"\\u63a8\\u52a8\\u201c\\u4e00\\u5e26\\u4e00\\u8def\\u201d\\u6cbf\\u7ebf\\u6587\\u5316\\u4ea4\\u6d41\\u5408\\u4f5c\\u201c\\u4e1d\\u8def\\u835f\\u5f71\\u201d\\u6444\\u5f71\\u5c55\\u5728\\u5317\\u4eac\\u4e3e\\u884c\",\"description\":\"\\u521b\\u65b0\\u6539\\u53d8\\u751f\\u6d3b\",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0603\\/20170603094254562.jpg\",\"inputtime\":\"1483200000\",\"style\":\"\"}',1,36,0,NULL,0),(30,41,2,'content',1,1,'{\"title\":\"\\u63a8\\u52a8\\u201c\\u4e00\\u5e26\\u4e00\\u8def\\u201d\\u6cbf\\u7ebf\\u6587\\u5316\\u4ea4\\u6d41\\u5408\\u4f5c\\u201c\\u4e1d\\u8def\\u835f\\u5f71\\u201d\\u6444\\u5f71\\u5c55\\u5728\\u5317\\u4eac\\u4e3e\\u884c\",\"description\":\"\\u521b\\u65b0\\u6539\\u53d8\\u751f\\u6d3b\",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614091817910.jpg\",\"inputtime\":\"1496852023\",\"style\":\"\"}',1,30,0,NULL,0),(48,41,10,'content',1,1,'{\"title\":\"\\u63a8\\u52a8\\u201c\\u4e00\\u5e26\\u4e00\\u8def\\u201d\\u6cbf\\u7ebf\\u6587\\u5316\\u4ea4\\u6d41\\u5408\\u4f5c\\u201c\\u4e1d\\u8def\\u835f\\u5f71\\u201d\\u6444\\u5f71\\u5c55\\u5728\\u5317\\u4eac\\u4e3e\\u884c\",\"description\":\"\\u5728\\u201c\\u4e00\\u5e26\\u4e00\\u8def\\u201d\\u56fd\\u9645\\u5408\\u4f5c\\u9ad8\\u5cf0\\u8bba\\u575b\\u53ec\\u5f00\\u4e4b\\u9645\\uff0c\\u7531\\u4e1d\\u8def\\u5546\\u65c5\\u6587\\u7ec4\\u59d4\\u4f1a\\u7b49\\u5355\\u4f4d\\u4e3b\\u529e\\u7684\\u201c\\u4e1d\\u8def\\u835f\\u5f71\\u201d\\u6444\\u5f71\\u5c55\\u5728\\u5317\\u4eac\\u62c9\\u5f00\\u5e37\\u5e55\\uff0c\\u5168\\u56fd\\u4eba\\u5927\\u539f\\u526f\\u59d4\\u5458\\u957f\\u848b\\u6b63\\u534e\\u3001\\u5168\\u56fd\\u653f\\u534f\\u539f\\u526f\\u4e3b\\u5e2d\\u674e\\u91d1\\u534e\\u7b49\\u9886\\u5bfc\\u540c\\u5fd7\\uff0c\\u4ee5\\u53ca\\u6d77\\u5185\\u5916\\u534e\\u4eba\\u6444\\u5f71\\u827a\\u672f\\u5bb6\\u548c\\u5404\\u754c\\u4eba\\u58eb\\u51fa\\u5e2d\\u4e865\\u670812\\u65e5\\u7684\\u5f00\\u5e55\\u5f0f\\u3002\",\"thumb\":\"http:\\/\\/healstec.itcask.com\\/uploadfile\\/2017\\/0614\\/20170614015217600.jpg\",\"inputtime\":\"1497368585\",\"style\":\"\"}',1,48,0,NULL,0);
/*!40000 ALTER TABLE `hl_position_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_poster`
--

DROP TABLE IF EXISTS `hl_poster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_poster` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL,
  `spaceid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `setting` text NOT NULL,
  `startdate` int(10) unsigned NOT NULL DEFAULT '0',
  `enddate` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicks` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `spaceid` (`spaceid`,`siteid`,`disabled`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_poster`
--

LOCK TABLES `hl_poster` WRITE;
/*!40000 ALTER TABLE `hl_poster` DISABLE KEYS */;
INSERT INTO `hl_poster` VALUES (1,1,'banner',1,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/2.png\',\n    \'alt\' => \'\',\n  ),\n)',1285813808,1446249600,1285813833,0,1,0,0),(2,1,'phpcmsv9',2,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/statics/images/v9/ad_login.jpg\',\n    \'alt\' => \'phpcms专业建站系统\',\n  ),\n)',1285816298,1446249600,1285816310,0,1,0,0),(3,1,'phpcms下载推荐',3,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/3.png\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)',1286504815,1446249600,1286504865,0,1,0,0),(4,1,'phpcms广告',4,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/4.gif\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)',1286505141,1446249600,1286505178,0,0,0,0),(5,1,'phpcms下载',5,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)',1286509363,1446249600,1286509401,0,0,0,0),(6,1,'phpcms下载推荐1',6,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)',1286510183,1446249600,1286510227,0,0,0,0),(7,1,'phpcms下载详情',7,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)',1286510314,1446249600,1286510341,0,0,0,0),(8,1,'phpcms下载页',8,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/1.jpg\',\n    \'alt\' => \'官方站\',\n  ),\n)',1286522084,1446249600,1286522125,0,0,0,0),(9,1,'phpcms v9广告',9,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/4.gif\',\n    \'alt\' => \'\',\n  ),\n)',1287041759,1446249600,1287041804,0,0,0,0),(10,1,'phpcms',10,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://www.healstectest.com/install_package/uploadfile/poster/6.jpg\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)',1289270509,1446249600,1289270541,1,0,0,0);
/*!40000 ALTER TABLE `hl_poster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_poster_201706`
--

DROP TABLE IF EXISTS `hl_poster_201706`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_poster_201706` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`type`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_poster_201706`
--

LOCK TABLES `hl_poster_201706` WRITE;
/*!40000 ALTER TABLE `hl_poster_201706` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_poster_201706` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_poster_space`
--

DROP TABLE IF EXISTS `hl_poster_space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_poster_space` (
  `spaceid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(50) NOT NULL,
  `type` char(30) NOT NULL,
  `path` char(40) NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `setting` char(100) NOT NULL,
  `description` char(100) NOT NULL,
  `items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spaceid`),
  KEY `disabled` (`disabled`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_poster_space`
--

LOCK TABLES `hl_poster_space` WRITE;
/*!40000 ALTER TABLE `hl_poster_space` DISABLE KEYS */;
INSERT INTO `hl_poster_space` VALUES (1,1,'顶部搜索右侧广告位','banner','poster_js/1.js',430,63,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(2,1,'会员登陆页广告','banner','poster_js/2.js',310,304,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','会员登陆页广告右侧代替外部通行证广告',1,0),(3,1,'图片频道图片排行下方','banner','poster_js/3.js',249,87,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(4,1,'新闻中心推荐链接左侧','banner','poster_js/4.js',748,91,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(5,1,'下载列表页右侧顶部','banner','poster_js/5.js',248,162,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(6,1,'下载详情页右侧顶部','banner','poster_js/6.js',248,162,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(7,1,'下载详情页右侧下部','banner','poster_js/7.js',248,162,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(8,1,'下载频道首页','banner','poster_js/8.js',698,80,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(9,1,'下载详情页地址列表右侧','banner','poster_js/12.js',330,50,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(10,1,'首页关注下方广告','banner','poster_js/10.js',307,60,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0);
/*!40000 ALTER TABLE `hl_poster_space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_queue`
--

DROP TABLE IF EXISTS `hl_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_queue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` char(5) DEFAULT NULL,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `path` varchar(100) DEFAULT NULL,
  `status1` tinyint(1) DEFAULT '0',
  `status2` tinyint(1) DEFAULT '0',
  `status3` tinyint(1) DEFAULT '0',
  `status4` tinyint(1) DEFAULT '0',
  `times` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `times` (`times`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_queue`
--

LOCK TABLES `hl_queue` WRITE;
/*!40000 ALTER TABLE `hl_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_release_point`
--

DROP TABLE IF EXISTS `hl_release_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_release_point` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `port` varchar(10) DEFAULT '21',
  `pasv` tinyint(1) DEFAULT '0',
  `ssl` tinyint(1) DEFAULT '0',
  `path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_release_point`
--

LOCK TABLES `hl_release_point` WRITE;
/*!40000 ALTER TABLE `hl_release_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_release_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_search`
--

DROP TABLE IF EXISTS `hl_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_search` (
  `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adddate` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`searchid`),
  KEY `typeid` (`typeid`,`id`),
  KEY `siteid` (`siteid`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_search`
--

LOCK TABLES `hl_search` WRITE;
/*!40000 ALTER TABLE `hl_search` DISABLE KEYS */;
INSERT INTO `hl_search` VALUES (1,1,1,1496493648,'test1 test1keyword ',1),(2,1,2,1496500033,'新闻频道测试1 创新改变生活 改变 生活 新闻 创新 测试 频道 这是',1),(3,1,3,1496500542,'创新改变生活2 创新改变生活2 生活 改变 创新',1),(4,1,4,1496724466,'浔阳村小学生活公益活动 浔阳村小学生活公益活动 社会 大学生 公益 实践 参与 学习 活动 学生 具有 结合 推动 服务 理论 不是 自愿 目的 理想 了解 特征 目标 起来 进行 相关 社会性 方式 教育 方面 高校 小学 发展 生活 指向 促成 成为 出于 一定 措施 青年 政府 动力 社会福利 重要 使得 发出 奉献 强大 设计 青春 价值 群体 力量 核心 确立 这个 普遍 特点 激情 心理 初始 高等学校 能力 提高 综合 提升 最终 任务 高度 他人 素质 因而 回归 本质 全面 基本 意义 无论 多么 重大 主要 他们 从而 促进 也就是 应用 加以 这里 专业知识 现实 通过 所以 有机 好处 接受 专业 强调 中学 社会实践 对象 只要 这些 办法 采取 政策 意愿 制定 一些 倡导 强制性 实际 选择 参加 自身 根据 并且 可以 良好 善意 是以 社群 公共利益 发起 内容 自觉 前提 鼓励 接触 以及 政府部门 当然 学校 强制 与否 面的 基础 意味着 产生 环境 应该 走出 校园 影响 程度 进步 更多 的发展 状况 改善 私人部门 部门 否则 资源 理解 支持 角度 予以 配置 生态 领域 平台 服务经济 完整 变得 系统 因此 公共',1),(52,1,52,1497370465,'吕现黄乡村小学基础建设募捐活动  社会 大学生 实践 公益 参与 活动 学习 具有 学生 自愿 服务 结合 推动 不是 青年 理论 社会性 专业知识 应用 理想 出于 起来 方面 动力 成为 了解 目的 特征 政府 相关 教育 以及 发展 高校 进行 方式 目标 一定 指向 措施 促成 激情 奉献 发出 进步 特点 青春 心理 价值 强大 状况 公共 好处 这个 确立 初始 设计 改善 群体 普遍 核心 更多 的发展 程度 影响 中学 能力 提高 综合 素质 提升 最终 任务 高度 他人 因而 无论 本质 全面 回归 基本 多么 重大 意义 主要 他们 现实 加以 从而 这里 社会实践 社会福利 重要 力量 促进 也就是 有机 高等学校 接受 专业 通过 所以 强调 使得 理解 自觉 前提 学校 强制 是以 多重 属性 善意 当然 政府部门 制定 一些 政策 意愿 良好 鼓励 接触 多方 公共利益 社群 观察 研究 内容 发起 小学 途径 经由 视野 带来 拓展 之中 渠道 有利于 采取 只要 完整 领域 平台 对象 变得 因此 配置 生态 系统 服务经济 部门 环境 基础 意味着 校园 私人部门 应该 走出 资源 可以 根据 自身 并且 强制性 这些 办法 倡导 实际 选择 支持 乡村 否则 予以 角度 参加 与否 面的 产生',1),(5,1,5,1496724599,'浔阳村小学生活公益活动 第二个文章 社会 大学生 公益 实践 参与 学习 活动 学生 推动 具有 服务 结合 不是 理论 自愿 成为 了解 相关 措施 目的 进行 一定 发展 教育 起来 理想 促成 方面 特征 青年 社会性 指向 出于 政府 方式 目标 高校 使得 社会福利 动力 奉献 发起 强大 力量 专业知识 第二 社会实践 发出 这里 文章 重要 青春 核心 价值 群体 这个 社群 初始 确立 普遍 特点 现实 激情 心理 公共利益 内容 应用 提高 综合 素质 能力 提升 高度 他人 最终 因而 无论 回归 本质 全面 基本 意义 多么 重大 任务 主要 也就是 通过 所以 促进 从而 设计 强调 中学 接受 生活 他们 高等学校 有机 专业 加以 更多 实际 选择 参加 自身 根据 并且 可以 与否 面的 否则 资源 理解 支持 角度 予以 强制性 倡导 意愿 制定 一些 良好 接触 以及 政策 采取 只要 这些 办法 学校 强制 政府部门 当然 配置 生态 影响 程度 产生 意味着 环境 基础 改善 鼓励 公共 进步 的发展 状况 善意 校园 小学 领域 平台 完整 变得 系统 因此 对象 前提 私人部门 应该 走出 部门 服务经济 自觉 是以 好处',1),(6,1,6,1496725415,'吕现黄乡村小学基础建设募捐活动 社会活动1 社会 大学生 实践 公益 参与 活动 学习 学生 具有 自愿 服务 结合 推动 不是 理论 青年 社会性 成为 促成 一定 目标 高校 了解 起来 以及 方面 进行 目的 特征 政府 理想 方式 专业知识 应用 动力 教育 出于 发展 措施 相关 指向 激情 奉献 发出 特点 青春 心理 程度 好处 设计 初始 确立 公共 更多 的发展 进步 这个 强大 价值 群体 普遍 核心 影响 状况 改善 强调 提升 能力 提高 综合 最终 他人 主要 任务 高度 素质 因而 回归 本质 全面 基本 意义 无论 多么 重大 他们 接受 现实 加以 从而 这里 社会实践 社会福利 重要 力量 促进 也就是 专业 有机 高等学校 中学 通过 所以 产生 使得 支持 是以 自觉 前提 学校 善意 多重 属性 强制 当然 意愿 制定 一些 良好 政府部门 鼓励 接触 多方 带来 内容 公共利益 社群 观察 发起 小学 研究 途径 拓展 视野 之中 经由 渠道 有利于 政策 采取 变得 完整 领域 平台 因此 系统 资源 配置 生态 对象 服务经济 环境 基础 校园 走出 部门 私人部门 应该 否则 并且 可以 根据 强制性 倡导 只要 这些 办法 自身 实际 予以 乡村 理解 角度 面的 选择 参加 与否 意味着',1),(7,1,7,1496726112,'吕现黄乡村小学基础建设募捐活动 社会活动2 社会 大学生 实践 公益 参与 活动 学习 学生 具有 自愿 服务 结合 推动 不是 理论 青年 社会性 成为 促成 一定 目标 高校 了解 起来 以及 方面 进行 目的 特征 政府 理想 方式 专业知识 应用 动力 教育 出于 发展 措施 相关 指向 激情 奉献 发出 特点 青春 心理 程度 好处 设计 初始 确立 公共 更多 的发展 进步 这个 强大 价值 群体 普遍 核心 影响 状况 改善 强调 提升 能力 提高 综合 最终 他人 主要 任务 高度 素质 因而 回归 本质 全面 基本 意义 无论 多么 重大 他们 接受 现实 加以 从而 这里 社会实践 社会福利 重要 力量 促进 也就是 专业 有机 高等学校 中学 通过 所以 产生 使得 支持 是以 自觉 前提 学校 善意 多重 属性 强制 当然 意愿 制定 一些 良好 政府部门 鼓励 接触 多方 带来 内容 公共利益 社群 观察 发起 小学 研究 途径 拓展 视野 之中 经由 渠道 有利于 政策 采取 变得 完整 领域 平台 因此 系统 资源 配置 生态 对象 服务经济 环境 基础 校园 走出 部门 私人部门 应该 否则 并且 可以 根据 强制性 倡导 只要 这些 办法 自身 实际 予以 乡村 理解 角度 面的 选择 参加 与否 意味着',1),(8,1,8,1496726934,'如何瘦身如何手很 健康瘦身1 导航 瘦身 健康 如何',1),(9,1,9,1496726959,'如何瘦身如何手很 健康瘦身2 导航 瘦身 健康 如何',1),(10,1,10,1496727237,'产品剖析1 产品剖析1 产品 剖析 内容',1),(11,1,11,1496727273,'产品剖析2 产品剖析2 产品 剖析 内容',1),(12,1,12,1496727288,'产品剖析3 产品剖析3 产品 剖析 内容',1),(13,1,13,1496727404,'营养膳食1 营养膳食1 营养 内容',1),(14,1,14,1496727465,'营养膳食2 营养膳食2 营养 内容',1),(15,1,15,1496727486,'营养膳食3 营养膳食3 营养 内容',1),(16,1,16,1496762708,'米花糖系列  安全 健康 简单 食品 系列',1),(17,1,17,1496763742,'棉花糖系列  健康 安全 简单 食品 系列 棉花',1),(18,1,18,1496763809,'米花糖系列  计算 家公司 价格 实际 健康 食品 安全 系列',1),(19,1,19,1496764327,'产品1  产品',1),(20,1,20,1496765042,'食品级  食品',1),(21,1,21,1496765065,'食品级2  食品',1),(22,1,22,1496765665,'食品级  食品',1),(23,1,23,1496765693,'食品级2  食品',1),(24,1,24,1496811581,'北京海生泰和医药科技有限公司  食品 药品 致力于 采用 技术 中国消费者 营养 生产 开发 研究 创立 共同 及其 博士 成立 制药 来自 伙伴 电子 等行业 能源 医药 科技 有限公司 北京',1),(25,1,25,1496811752,'目前  建立 博士 资深 国内 研究员 研发团队 技术 共同 知名 在中国 分公司 设立 北京 研发 初步 中心 国内外 目前',1),(26,1,26,1496812662,'价值观  价值观',1),(27,1,27,1496813041,'我们的使命  技术 产品 解决方案 健康 安全 食品 结合 营养 研发 使用 新药 具有 创新 有效 提供 中国消费者 选择 使命 我们',1),(28,1,28,1496813110,'我们的愿景  我们',1),(29,1,29,1496851549,'公司核心竞争力  疾病 研发团队 健康 相关 更好 因此 能够 理解 产品的 安全 作用 经验 肿瘤 人和 创始 研发 核心 自身 丰富 领域 免疫 新药 确保 力量 多方 我们 面的 技术 达到 制药 核心竞争力 方面 安全性 效果 味道 产品 找出 公司 范围 整合 营养 同时 解决方案 最佳 食品',1),(30,1,30,1496852023,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行  丝路 全国 北京 政协 主席 金华 主办 领导 拉开 人大 海内外 出席 人士 各界 艺术家 以及 单位 华人 摄影 同志 召开 生活 改变 创新 文化 交流合作 举行 论坛 推动 之际 商旅 高峰',1),(31,1,31,1496897581,'纳米乳液的制备方法及原理  纳米 利用 药物 表面 形成 高压 能量 体系 自发 过程 通常 稳定 方法 具有 研究 机械 透明 力学 作用 首先 得到 提高 广泛 化学 结构 潜能 需要 法制 表明 条件 动态 获得 应用 温度 发明 转变 常规 认为 来自 分为 又称 减少 设备 原理 是由 同性 工艺 分散 批量 适用于 发生 转换 仅仅 生产 降低 提供 最小 时间 这些 相当 方面 领域 国内外 有效 目标 调节 实际 用来 情况 产生 任何 添加 可以 观察 改变 不断 叫做 研制 稳定性 同时 进行 特殊 平衡 是非 大类 简单 一般 系统 高速 不能 大致 一般为 吸收 保护 生物 注射 受到 关注 载体 作为 因此 优点 及其他 成分 按照 类型 混合 一定 特定 一般来说 然后 分布 以及 许多 其它 无可 报道 连续 发现 处理',1),(32,1,32,1496898117,'微乳剂  我们 活性 物质 产品 通过 技术 成分 维生素 健康 营养 可能 提供 科学 广泛 应用 传递 制药 能够 以及 食品 系统 体系 例如 研发 更具 有效 开发 更好 药物 胶囊 组合 具有 味道 行业 吸收 重要 牛奶 科研 生物 就是 难点 保持 的稳定 利用 形成 构建 顾客 干燥 配备 人和 实现 中心 便捷 北京 服务 经验 领域 安全 建立 高压 使用 为了 力量 自主知识产权 手段 成功 投入 创新 解决方案 人群 更多 可以 患者 病人 婴儿 人工 生物技术 甚至 等产品 疗效 提高 促进 之中 医疗器械 容易 风味 有的 表面 大自然 分散 大小 达到 稳定 代表 现代 大量 期望 知道 相比 进行 证据 运用 充足 方面 便携 多样性 最好 多个 涵盖 选择 合作 体验 一切 消费 场景 同时 兼顾 产品的 开始 根据 知识 调研 文献 不同 严格 队伍 组成 其它 比如 脂肪 关键 地位 它们 解决 实验 借鉴 消费者 需要 上诉 技术问题 占据 所有 顾问 其中 团队 许多 研究人员 资深 一个 专家 设备 这些 组建 加入 如何 国内外 国际',1),(33,1,33,1496898260,'脂质体  我们 科学 研发 有效 建立 配备 北京 为了 成分 活性 服务 中心 便捷 顾客 开发 更好 人和 安全 健康 更具 实现 产品 兼顾 重要 味道 系统 同时 提供 消费 不同 使用 场景 消费者 科研 选择 合作 根据 具有 充足 证据 广泛 调研 产品的 一切 开始 通过 文献 严格 体验 领域 干燥 设备 组建 专家 国内外 高压 顾问 团队 营养 食品 多个 方面 运用 期望 制药 涵盖 研究人员 资深 组成 队伍 经验 知识',1),(34,1,34,1496903197,'食品级日化  产品 食品 追求 宗旨 生活 放心 始终 安全 制造 顶级 我们',1),(35,1,35,1496903537,'纳米乳液的制备方法及原理  纳米 方法 原理 利用 药物 高压 通常 体系 能量 形成 表面 过程 作用 提高 具有 机械 透明 自发 首先 得到 稳定 研究 应用 来自 需要 转变 动态 表明 广泛 获得 化学 认为 法制 潜能 结构 常规 发明 设备 力学 工艺 同性 分散 减少 温度 条件 分为 用来 国内外 调节 目标 实际 情况 任何 产生 叫做 处理 这些 添加 最小 提供 时间 改变 生产 批量 仅仅 适用于 不断 发生 转换 可以 有效 同时 稳定性 领域 研制 方面 相当 降低 观察 一般 系统 优点 其它 无可 不能 一般为 注射 特殊 简单 许多 报道 一般来说 类型 是由 又称 以及 发现 连续 按照 高速 及其他 成分 然后 进行 分布 一定 混合 平衡 是非 生物 因此 吸收 保护 作为 载体 大类 大致 关注 受到 特定',1),(36,1,36,1483200000,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行  丝路 全国 北京 政协 主席 金华 主办 领导 拉开 人大 海内外 出席 人士 各界 艺术家 以及 单位 华人 摄影 同志 召开 生活 改变 创新 文化 交流合作 举行 论坛 推动 之际 商旅 高峰',1),(37,1,37,1496999637,'公司历史  我们 历史 公司',1),(38,1,38,1497001055,'业务原则  原则 业务',1),(39,1,39,1497025676,'sdfsdgdsdg  ',1),(40,1,40,1497026018,'rtryryry  ',1),(41,1,41,1497186802,'集团新闻列表1  集团 新闻 内容 摘要',1),(42,1,42,1497365404,'自然科学1  更加 生命 简单 安全 生活 自然科学',1),(43,1,43,1497365506,'自然科学2  更加 生命 简单 安全 生活 自然科学',1),(44,1,44,1497365560,'自然科学3  更加 生命 简单 安全 生活 自然科学',1),(45,1,45,1497365751,'H在中国  在中国',1),(46,1,46,1497365771,'质量与安全  安全 质量',1),(47,1,47,1497367679,'我们相信“中国制造”的力量  健康 人群 管理 原料 参照 国人 数据 辅料 国家标准 能力 最好 解决方案 提供 领域 体重 运动 优质 科技 公司 国内外 广泛 进行 技术 方案 创造性 选取 全球范围内 相信 中国制造 我们 力量',1),(48,1,48,1497368585,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行  丝路 全国 北京 以及 海内外 同志 领导 金华 政协 华人 各界 出席 人士 艺术家 摄影 主席 论坛 之际 高峰 人大 商旅 召开 拉开 主办 单位 文化 举行 交流合作 推动',1),(49,1,49,1497368609,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行  丝路 全国 北京 拉开 单位 人大 政协 主办 高峰 商旅 论坛 之际 召开 同志 以及 海内外 领导 华人 人士 出席 金华 各界 艺术家 摄影 推动 举行 交流合作 文化 主席',1),(50,1,50,1497368659,'推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行  丝路 全国 北京 以及 海内外 同志 领导 金华 政协 华人 各界 出席 人士 艺术家 摄影 主席 论坛 之际 高峰 人大 商旅 召开 拉开 主办 单位 文化 举行 交流合作 推动',1),(51,1,51,1497369122,'健康人群营养  营养 便捷 美味 饮料 我们 快速 补充 状态 严重 日常 生活 不足 导致 现代人 人群 健康',1),(53,1,53,1497370488,'吕现黄乡村小学基础建设募捐活动  社会 大学生 实践 公益 参与 活动 学习 具有 学生 自愿 服务 结合 推动 理论 不是 青年 社会性 专业知识 成为 促成 高校 方面 特征 起来 出于 应用 目的 动力 相关 教育 进行 发展 以及 理想 政府 指向 一定 了解 方式 措施 目标 进步 青春 奉献 发出 的发展 特点 激情 心理 核心 强大 状况 改善 公共 好处 初始 设计 确立 更多 群体 普遍 价值 这个 程度 影响 中学 能力 提高 综合 提升 最终 任务 高度 他人 素质 因而 回归 本质 全面 基本 意义 无论 多么 重大 主要 他们 现实 加以 从而 这里 社会实践 社会福利 重要 力量 促进 也就是 有机 高等学校 接受 专业 通过 所以 强调 使得 理解 自觉 前提 学校 强制 是以 多重 属性 善意 当然 政府部门 制定 一些 政策 意愿 良好 鼓励 接触 多方 公共利益 社群 观察 研究 内容 发起 小学 途径 经由 视野 带来 拓展 之中 渠道 有利于 采取 只要 完整 领域 平台 对象 变得 因此 配置 生态 系统 服务经济 部门 环境 基础 意味着 校园 私人部门 应该 走出 资源 可以 根据 自身 并且 强制性 这些 办法 倡导 实际 选择 支持 乡村 否则 予以 角度 参加 与否 面的 产生',1);
/*!40000 ALTER TABLE `hl_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_search_keyword`
--

DROP TABLE IF EXISTS `hl_search_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_search_keyword` (
  `keyword` char(20) NOT NULL,
  `pinyin` char(20) NOT NULL,
  `searchnums` int(10) unsigned NOT NULL,
  `data` char(20) NOT NULL,
  UNIQUE KEY `keyword` (`keyword`),
  UNIQUE KEY `pinyin` (`pinyin`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_search_keyword`
--

LOCK TABLES `hl_search_keyword` WRITE;
/*!40000 ALTER TABLE `hl_search_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_search_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_session`
--

DROP TABLE IF EXISTS `hl_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_session`
--

LOCK TABLES `hl_session` WRITE;
/*!40000 ALTER TABLE `hl_session` DISABLE KEYS */;
INSERT INTO `hl_session` VALUES ('0l1p7ssqrtpiikni1qq5fp4kl7',1,'118.186.143.112',1497458756,1,0,'admin','index','public_session_life','code|s:0:\"\";userid|s:1:\"1\";roleid|s:1:\"1\";pc_hash|s:6:\"mWvx40\";lock_screen|i:0;'),('ign8vobe57u7veifhpe7ttfen3',1,'118.186.143.112',1497458806,1,0,'admin','index','public_session_life','code|s:0:\"\";userid|s:1:\"1\";roleid|s:1:\"1\";pc_hash|s:6:\"e0CMwQ\";lock_screen|i:0;');
/*!40000 ALTER TABLE `hl_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_site`
--

DROP TABLE IF EXISTS `hl_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_site` (
  `siteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT '',
  `dirname` char(255) DEFAULT '',
  `domain` char(255) DEFAULT '',
  `site_title` char(255) DEFAULT '',
  `keywords` char(255) DEFAULT '',
  `description` char(255) DEFAULT '',
  `release_point` text,
  `default_style` char(50) DEFAULT NULL,
  `template` text,
  `setting` mediumtext,
  `uuid` char(40) DEFAULT '',
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_site`
--

LOCK TABLES `hl_site` WRITE;
/*!40000 ALTER TABLE `hl_site` DISABLE KEYS */;
INSERT INTO `hl_site` VALUES (1,'healstec','','http://healstec.itcask.com/','healstec','healstec','healstec','','healstec','healstec','{\"upload_maxsize\":\"2048\",\"upload_allowext\":\"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf\",\"watermark_enable\":\"1\",\"watermark_minwidth\":\"300\",\"watermark_minheight\":\"300\",\"watermark_img\":\"statics\\/images\\/water\\/\\/mark.png\",\"watermark_pct\":\"85\",\"watermark_quality\":\"80\",\"watermark_pos\":\"9\"}','3b579107-4858-11e7-8b56-c45444531b8e');
/*!40000 ALTER TABLE `hl_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sms_report`
--

DROP TABLE IF EXISTS `hl_sms_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sms_report` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL,
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `id_code` varchar(10) NOT NULL,
  `msg` varchar(90) NOT NULL,
  `send_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `return_id` varchar(30) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`,`posttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sms_report`
--

LOCK TABLES `hl_sms_report` WRITE;
/*!40000 ALTER TABLE `hl_sms_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_sms_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_special`
--

DROP TABLE IF EXISTS `hl_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_special` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL,
  `typeids` char(100) NOT NULL,
  `thumb` char(100) NOT NULL,
  `banner` char(100) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ispage` tinyint(1) unsigned NOT NULL,
  `filename` char(40) NOT NULL,
  `pics` char(100) NOT NULL,
  `voteid` char(60) NOT NULL,
  `style` char(20) NOT NULL,
  `index_template` char(40) NOT NULL,
  `list_template` char(40) NOT NULL,
  `show_template` char(60) NOT NULL,
  `css` text NOT NULL,
  `username` char(40) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL,
  `elite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isvideo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_special`
--

LOCK TABLES `hl_special` WRITE;
/*!40000 ALTER TABLE `hl_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_special_c_data`
--

DROP TABLE IF EXISTS `hl_special_c_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_special_c_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `paginationtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `style` char(20) NOT NULL,
  `show_template` varchar(30) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_special_c_data`
--

LOCK TABLES `hl_special_c_data` WRITE;
/*!40000 ALTER TABLE `hl_special_c_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_special_c_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_special_content`
--

DROP TABLE IF EXISTS `hl_special_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_special_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `specialid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `style` char(24) NOT NULL,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thumb` char(100) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `curl` char(15) NOT NULL,
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isdata` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `videoid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `specialid` (`specialid`,`typeid`,`isdata`),
  KEY `typeid` (`typeid`,`isdata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_special_content`
--

LOCK TABLES `hl_special_content` WRITE;
/*!40000 ALTER TABLE `hl_special_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_special_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sphinx_counter`
--

DROP TABLE IF EXISTS `hl_sphinx_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sphinx_counter` (
  `counter_id` int(11) unsigned NOT NULL,
  `max_doc_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sphinx_counter`
--

LOCK TABLES `hl_sphinx_counter` WRITE;
/*!40000 ALTER TABLE `hl_sphinx_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_sphinx_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sso_admin`
--

DROP TABLE IF EXISTS `hl_sso_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sso_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT '0',
  `lastlogin` int(10) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sso_admin`
--

LOCK TABLES `hl_sso_admin` WRITE;
/*!40000 ALTER TABLE `hl_sso_admin` DISABLE KEYS */;
INSERT INTO `hl_sso_admin` VALUES (1,'healstec','8097ec6fd4df1cf24b93d115dc3e9310','zBTfri',1,0,'');
/*!40000 ALTER TABLE `hl_sso_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sso_applications`
--

DROP TABLE IF EXISTS `hl_sso_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sso_applications` (
  `appid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(16) NOT NULL DEFAULT '',
  `name` char(20) NOT NULL DEFAULT '',
  `url` char(255) NOT NULL DEFAULT '',
  `authkey` char(255) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `apifilename` char(30) NOT NULL DEFAULT 'phpsso.php',
  `charset` char(8) NOT NULL DEFAULT '',
  `synlogin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`appid`),
  KEY `synlogin` (`synlogin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sso_applications`
--

LOCK TABLES `hl_sso_applications` WRITE;
/*!40000 ALTER TABLE `hl_sso_applications` DISABLE KEYS */;
INSERT INTO `hl_sso_applications` VALUES (1,'phpcms_v9','phpcms v9','http://www.healstectest.com/install_package/','HN4T7RYcAOqZUKpzKzMeAS1be1Ake11g','','api.php?op=phpsso','utf-8',1);
/*!40000 ALTER TABLE `hl_sso_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sso_members`
--

DROP TABLE IF EXISTS `hl_sso_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sso_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `random` char(8) NOT NULL DEFAULT '',
  `email` char(32) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '0',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `appname` char(15) NOT NULL,
  `type` enum('app','connect') DEFAULT NULL,
  `avatar` tinyint(1) NOT NULL DEFAULT '0',
  `ucuserid` mediumint(8) unsigned DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `ucuserid` (`ucuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sso_members`
--

LOCK TABLES `hl_sso_members` WRITE;
/*!40000 ALTER TABLE `hl_sso_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_sso_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sso_messagequeue`
--

DROP TABLE IF EXISTS `hl_sso_messagequeue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sso_messagequeue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operation` char(32) NOT NULL,
  `succeed` tinyint(1) NOT NULL DEFAULT '0',
  `totalnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `noticedata` mediumtext NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `appstatus` mediumtext,
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`),
  KEY `succeed` (`succeed`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sso_messagequeue`
--

LOCK TABLES `hl_sso_messagequeue` WRITE;
/*!40000 ALTER TABLE `hl_sso_messagequeue` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_sso_messagequeue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sso_session`
--

DROP TABLE IF EXISTS `hl_sso_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sso_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sso_session`
--

LOCK TABLES `hl_sso_session` WRITE;
/*!40000 ALTER TABLE `hl_sso_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_sso_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_sso_settings`
--

DROP TABLE IF EXISTS `hl_sso_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_sso_settings` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_sso_settings`
--

LOCK TABLES `hl_sso_settings` WRITE;
/*!40000 ALTER TABLE `hl_sso_settings` DISABLE KEYS */;
INSERT INTO `hl_sso_settings` VALUES ('denyemail',''),('denyusername',''),('creditrate',''),('sp4',''),('ucenter','');
/*!40000 ALTER TABLE `hl_sso_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_tag`
--

DROP TABLE IF EXISTS `hl_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` text NOT NULL,
  `name` char(40) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module` char(20) NOT NULL,
  `action` char(20) NOT NULL,
  `data` text NOT NULL,
  `page` char(15) NOT NULL,
  `return` char(20) NOT NULL,
  `cache` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_tag`
--

LOCK TABLES `hl_tag` WRITE;
/*!40000 ALTER TABLE `hl_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_template_bak`
--

DROP TABLE IF EXISTS `hl_template_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_template_bak` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `creat_at` int(10) unsigned DEFAULT '0',
  `fileid` char(50) DEFAULT NULL,
  `userid` mediumint(8) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `template` text,
  PRIMARY KEY (`id`),
  KEY `fileid` (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_template_bak`
--

LOCK TABLES `hl_template_bak` WRITE;
/*!40000 ALTER TABLE `hl_template_bak` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_template_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_times`
--

DROP TABLE IF EXISTS `hl_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_times` (
  `username` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`isadmin`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_times`
--

LOCK TABLES `hl_times` WRITE;
/*!40000 ALTER TABLE `hl_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_type`
--

DROP TABLE IF EXISTS `hl_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` char(15) NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typedir` char(20) NOT NULL,
  `url` char(100) NOT NULL,
  `template` char(30) NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`typeid`),
  KEY `module` (`module`,`parentid`,`siteid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_type`
--

LOCK TABLES `hl_type` WRITE;
/*!40000 ALTER TABLE `hl_type` DISABLE KEYS */;
INSERT INTO `hl_type` VALUES (52,1,'search',0,'专题',0,'special','','',4,'专题'),(1,1,'search',1,'新闻',0,'','','',1,'新闻模型搜索'),(2,1,'search',2,'下载',0,'','','',3,'下载模型搜索'),(3,1,'search',3,'图片',0,'','','',2,'图片模型搜索');
/*!40000 ALTER TABLE `hl_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_urlrule`
--

DROP TABLE IF EXISTS `hl_urlrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlrule` varchar(255) NOT NULL,
  `example` varchar(255) NOT NULL,
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_urlrule`
--

LOCK TABLES `hl_urlrule` WRITE;
/*!40000 ALTER TABLE `hl_urlrule` DISABLE KEYS */;
INSERT INTO `hl_urlrule` VALUES (1,'content','category',1,'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html','news/china/1000.html'),(6,'content','category',0,'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}','index.php?m=content&c=index&a=lists&catid=1&page=1'),(11,'content','show',1,'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html','2010/catdir_0720/1_2.html'),(12,'content','show',1,'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html','it/product/2010/0720/1_2.html'),(16,'content','show',0,'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}','index.php?m=content&c=index&a=show&catid=1&id=1'),(17,'content','show',0,'show-{$catid}-{$id}-{$page}.html','show-1-2-1.html'),(18,'content','show',0,'content-{$catid}-{$id}-{$page}.html','content-1-2-1.html'),(30,'content','category',0,'list-{$catid}-{$page}.html','list-1-1.html');
/*!40000 ALTER TABLE `hl_urlrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_video`
--

DROP TABLE IF EXISTS `hl_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_video` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `vision` varchar(255) NOT NULL DEFAULT '',
  `video_category` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_video`
--

LOCK TABLES `hl_video` WRITE;
/*!40000 ALTER TABLE `hl_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_video_content`
--

DROP TABLE IF EXISTS `hl_video_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_video_content` (
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `videoid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `videoid` (`videoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_video_content`
--

LOCK TABLES `hl_video_content` WRITE;
/*!40000 ALTER TABLE `hl_video_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_video_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_video_data`
--

DROP TABLE IF EXISTS `hl_video_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_video_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `video` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_video_data`
--

LOCK TABLES `hl_video_data` WRITE;
/*!40000 ALTER TABLE `hl_video_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_video_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_video_store`
--

DROP TABLE IF EXISTS `hl_video_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_video_store` (
  `videoid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(60) NOT NULL,
  `vid` char(40) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `picpath` char(120) NOT NULL,
  `size` char(20) NOT NULL,
  `timelen` mediumint(9) NOT NULL DEFAULT '0',
  `userupload` tinyint(1) NOT NULL DEFAULT '0',
  `channelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`videoid`),
  KEY `videoid` (`videoid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_video_store`
--

LOCK TABLES `hl_video_store` WRITE;
/*!40000 ALTER TABLE `hl_video_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_video_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_vote_data`
--

DROP TABLE IF EXISTS `hl_vote_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_vote_data` (
  `userid` mediumint(8) unsigned DEFAULT '0',
  `username` char(20) NOT NULL,
  `subjectid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `data` text NOT NULL,
  `userinfo` text NOT NULL,
  KEY `subjectid` (`subjectid`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_vote_data`
--

LOCK TABLES `hl_vote_data` WRITE;
/*!40000 ALTER TABLE `hl_vote_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_vote_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_vote_option`
--

DROP TABLE IF EXISTS `hl_vote_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_vote_option` (
  `optionid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `subjectid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `listorder` tinyint(2) unsigned DEFAULT '0',
  PRIMARY KEY (`optionid`),
  KEY `subjectid` (`subjectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_vote_option`
--

LOCK TABLES `hl_vote_option` WRITE;
/*!40000 ALTER TABLE `hl_vote_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_vote_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_vote_subject`
--

DROP TABLE IF EXISTS `hl_vote_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_vote_subject` (
  `subjectid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `subject` char(255) NOT NULL,
  `ismultiple` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ischeckbox` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `credit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromdate` date NOT NULL DEFAULT '0000-00-00',
  `todate` date NOT NULL DEFAULT '0000-00-00',
  `interval` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` char(20) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowguest` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `maxval` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `minval` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `optionnumber` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `votenumber` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subjectid`),
  KEY `enabled` (`enabled`),
  KEY `fromdate` (`fromdate`,`todate`),
  KEY `todate` (`todate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_vote_subject`
--

LOCK TABLES `hl_vote_subject` WRITE;
/*!40000 ALTER TABLE `hl_vote_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_vote_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_wap`
--

DROP TABLE IF EXISTS `hl_wap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_wap` (
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sitename` char(30) NOT NULL,
  `logo` char(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `setting` mediumtext,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_wap`
--

LOCK TABLES `hl_wap` WRITE;
/*!40000 ALTER TABLE `hl_wap` DISABLE KEYS */;
INSERT INTO `hl_wap` VALUES (1,'手机门户','/statics/images/wap/wlogo.gif','','{\"listnum\":\"10\",\"thumb_w\":\"220\",\"thumb_h\":\"0\",\"c_num\":\"1000\",\"index_template\":\"index\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"hotwords\":\"\"}',0);
/*!40000 ALTER TABLE `hl_wap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_wap_type`
--

DROP TABLE IF EXISTS `hl_wap_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_wap_type` (
  `typeid` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat` smallint(5) NOT NULL,
  `parentid` smallint(5) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `siteid` smallint(5) NOT NULL,
  `listorder` smallint(5) DEFAULT '0',
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_wap_type`
--

LOCK TABLES `hl_wap_type` WRITE;
/*!40000 ALTER TABLE `hl_wap_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `hl_wap_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hl_workflow`
--

DROP TABLE IF EXISTS `hl_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl_workflow` (
  `workflowid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `steps` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workname` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `setting` text NOT NULL,
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflowid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl_workflow`
--

LOCK TABLES `hl_workflow` WRITE;
/*!40000 ALTER TABLE `hl_workflow` DISABLE KEYS */;
INSERT INTO `hl_workflow` VALUES (1,1,1,'一级审核','审核一次','',0),(2,1,2,'二级审核','审核两次','',0),(3,1,3,'三级审核','审核三次','',0),(4,1,4,'四级审核','四级审核','',0);
/*!40000 ALTER TABLE `hl_workflow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-15  0:46:47
