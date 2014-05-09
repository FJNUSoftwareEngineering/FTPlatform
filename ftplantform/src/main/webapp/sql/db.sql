CREATE DATABASE  IF NOT EXISTS `ftplatform` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ftplatform`;
-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: ftplatform
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1000,'123456'),(1001,'123456'),(1003,'123456'),(1004,'123456'),(1005,'123456');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `ID_CARD_NO` char(18) NOT NULL,
  `CLIENT_NAME` varchar(30) NOT NULL,
  `SEX` char(2) DEFAULT NULL COMMENT '‘M’--男\n‘F’—女',
  `PHONE` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `HOBBY` varchar(50) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID_CARD_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('100000000000000000','Test','M','bbbbbb','aaaaaa','aaaaaaa','aaaaaa','2014-04-24 21:19:08'),('350107196512136578','王文博','M','18046041832','福建省福州市，闽侯','485683942@qq.com','写代码','2014-04-18 20:15:41'),('350107196512223478','吕健','M','18359023441','福建省福州市闽侯县','wakeupevi@gmail.com',NULL,'2014-04-18 17:00:44'),('350107196512236578','陈武','M','18359101010','泉州市','123412@qq.com','玩游戏','2011-03-13 00:00:00'),('350121199102031307','林玲','W','18359101110','南屿镇小河村','999999999@qq.com','讲笑话','2010-02-26 00:00:00'),('350134567512223478','马晓星','M','18359103456','福建福州','329435673@qq.com','钓鱼','2014-04-18 18:20:47'),('350498198510127639','刘宝','M','18359107854','厦门市','76549@qq.com','看书','2011-08-06 00:00:00'),('350600196706232577','张悟','M','13859102222','永泰县永和村','333333@qq.com','打篮球','2010-11-09 00:00:00'),('3506001992032925XX','蔡敏','W','183591023431','厦门','3245923441@qq.com',NULL,'2014-04-18 17:25:59'),('350923199308042343','小美','W','18359302243','福州五一广场','12343212@qq.com',NULL,'2014-04-17 21:10:20'),('350923199308042372','唐糖','W','18359102243','尧沙村','867354@qq.com','画画','2013-04-07 00:00:00');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_account`
--

DROP TABLE IF EXISTS `financial_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financial_account` (
  `ACC_NO` int(11) NOT NULL AUTO_INCREMENT,
  `ACC_PWD` char(6) NOT NULL,
  `ACC_AMOUNT` decimal(12,2) NOT NULL,
  `ACC_STATUS` char(1) NOT NULL COMMENT 'A’—可用\n‘F’—冻结',
  `IDCARD_NO` char(18) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `ACC_TOTAL_AMOUNT` decimal(12,2) NOT NULL,
  PRIMARY KEY (`ACC_NO`),
  KEY `IDCARD_NO_idx` (`IDCARD_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_account`
--

LOCK TABLES `financial_account` WRITE;
/*!40000 ALTER TABLE `financial_account` DISABLE KEYS */;
INSERT INTO `financial_account` VALUES (1,'123456',74654.14,'A','350107196512236578','2011-03-13 00:00:00',99500.00),(2,'123456',10000.00,'A','350121199102031307','2010-02-26 00:00:00',10000.00),(3,'123456',5000.00,'A','350498198510127639','2011-08-06 00:00:00',5000.00),(4,'123456',20000.00,'A','350600196706232577','2010-11-09 00:00:00',20000.00),(5,'123456',50000.00,'A','350923199308042372','2013-04-07 00:00:00',50000.00),(6,'123456',10000.00,'A','350107196512236578','2014-04-17 23:51:46',10000.00),(7,'123456',80000.00,'A','350107196512223478','2014-04-18 17:26:43',80000.00),(8,'123456',10000.00,'A','350107196512136578','2014-04-21 10:42:37',10000.00),(10,'123456',4954545.00,'A','100000000000000000','2014-04-24 21:19:30',5000000.00);
/*!40000 ALTER TABLE `financial_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_account_transinfo`
--

DROP TABLE IF EXISTS `financial_account_transinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financial_account_transinfo` (
  `TRANS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRANS_TYPE` char(1) NOT NULL COMMENT '‘D’—存款‘W’—取款\n‘O’—开户’F’—冻结\n‘A’—解冻’B’—基金购买\n‘G’—赎回基金',
  `TRANS_AMOUNT` int(11) NOT NULL COMMENT '非基金交易，一律显示为0',
  `ACC_NO` int(11) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`TRANS_ID`),
  KEY `ACC_NO_idx` (`ACC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_account_transinfo`
--

LOCK TABLES `financial_account_transinfo` WRITE;
/*!40000 ALTER TABLE `financial_account_transinfo` DISABLE KEYS */;
INSERT INTO `financial_account_transinfo` VALUES (1000,'D',1000,1,'2013-02-12 00:00:00'),(1001,'W',2000,2,'2011-03-23 00:00:00'),(1002,'O',5000,3,'2011-08-06 00:00:00'),(1003,'F',10000,4,'2011-05-04 00:00:00'),(1004,'B',5000,2,'2012-06-25 00:00:00'),(1005,'G',10000,5,'2014-03-12 00:00:00'),(1006,'A',10000,4,'2011-06-07 00:00:00');
/*!40000 ALTER TABLE `financial_account_transinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund`
--

DROP TABLE IF EXISTS `fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund` (
  `FUND_NO` int(11) NOT NULL,
  `FUND_NAME` varchar(40) NOT NULL,
  `PRICE` decimal(6,2) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `STATUS` char(1) NOT NULL COMMENT 'Y – 可交易\nN – 未上市交易',
  `CREATED_DATE` date NOT NULL,
  PRIMARY KEY (`FUND_NO`),
  UNIQUE KEY `FUND_NAME_UNIQUE` (`FUND_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund`
--

LOCK TABLES `fund` WRITE;
/*!40000 ALTER TABLE `fund` DISABLE KEYS */;
INSERT INTO `fund` VALUES (100000,' 盛利精选',0.91,'通过采用积极主动的分散化投资策略，依靠先进成熟的风险管理技术。','Y','2004-04-09'),(100001,'新动力',0.59,'专注于对因受益于推动中国经济持续增长的五大动力。','Y','2005-11-10'),(100002,'添益宝A',1.06,'本基金投资于具有良好流动性的固定收益类品种','Y','2008-12-04'),(100003,' 沪深300价值',0.71,'本基金至少80%的非现金资产投资于基本面良好、具有高成长性的小市值公司股票。','Y','2010-02-11'),(100004,'嘉实多利投资基金',0.81,'在控制基金组合下行波动幅度和保持适当流动性的前提下,追求收益最大化。','Y','2014-04-15'),(100005,'宝盈增强债券A/B',1.15,'债券型|中低风险','Y','2014-04-17');
/*!40000 ALTER TABLE `fund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_holding`
--

DROP TABLE IF EXISTS `fund_holding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_holding` (
  `HID` int(11) NOT NULL AUTO_INCREMENT,
  `ACC_NO` int(11) NOT NULL,
  `FUND_NO` int(11) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  PRIMARY KEY (`HID`),
  KEY `  _idx` (`FUND_NO`),
  KEY `FK_FH_ACC_NO_idx` (`ACC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_holding`
--

LOCK TABLES `fund_holding` WRITE;
/*!40000 ALTER TABLE `fund_holding` DISABLE KEYS */;
INSERT INTO `fund_holding` VALUES (1,1,100003,22433),(2,2,100002,13998),(3,3,100002,1000),(4,4,100003,600),(5,5,100004,500),(7,6,100000,900),(9,10,100000,20501),(10,10,100001,30000),(11,1,100000,100);
/*!40000 ALTER TABLE `fund_holding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_transinfo`
--

DROP TABLE IF EXISTS `fund_transinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_transinfo` (
  `TRANS_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '交易流水号',
  `TRANS_TYPE` char(1) NOT NULL COMMENT '‘B’—基金购买\n‘G’—赎回基金\n',
  `ACC_NO` int(11) NOT NULL COMMENT '交易账户',
  `FUND_NO` int(11) NOT NULL COMMENT '交易的基金',
  `AMOUNT` int(11) NOT NULL,
  `PRICE` decimal(6,2) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`TRANS_ID`),
  KEY `_idx` (`ACC_NO`),
  KEY `d_idx` (`FUND_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_transinfo`
--

LOCK TABLES `fund_transinfo` WRITE;
/*!40000 ALTER TABLE `fund_transinfo` DISABLE KEYS */;
INSERT INTO `fund_transinfo` VALUES (1004,'B',2,100000,400,0.91,'2012-06-25 00:00:00'),(1005,'G',5,100001,500,0.59,'2014-03-12 00:00:00'),(1006,'B',1,100001,333,0.59,'2014-04-24 14:44:42'),(1007,'B',2,100002,3000,1.06,'2014-04-24 14:56:40'),(1008,'B',2,100002,2000,1.06,'2014-04-24 14:59:12'),(1009,'G',2,100002,2000,1.06,'2014-04-24 14:59:45'),(1010,'B',1,100003,10000,0.71,'2014-04-24 15:54:32'),(1011,'B',1,100003,10000,0.71,'2014-04-24 20:51:00'),(1017,'B',10,100000,30000,0.91,'2014-04-24 21:22:15'),(1018,'B',10,100001,30000,0.59,'2014-04-24 21:22:27'),(1019,'G',10,100000,9999,0.91,'2014-04-24 21:23:03'),(1020,'B',10,100000,500,0.91,'2014-04-24 21:23:39'),(1021,'B',1,100000,100,0.91,'2014-04-25 15:35:44');
/*!40000 ALTER TABLE `fund_transinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-27 17:56:42
