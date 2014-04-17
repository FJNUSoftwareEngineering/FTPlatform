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
INSERT INTO `account` VALUES (1000,'123456');
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
INSERT INTO `client` VALUES ('324','才','M','地方','地方','发的',NULL,'2014-04-15 16:21:10'),('350600199203293432','陈先生','M','0596-2343543','福建漳州','329827904@qq.com',NULL,'2014-04-13 23:33:53');
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
  PRIMARY KEY (`ACC_NO`),
  KEY `IDCARD_NO_idx` (`IDCARD_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_account`
--

LOCK TABLES `financial_account` WRITE;
/*!40000 ALTER TABLE `financial_account` DISABLE KEYS */;
INSERT INTO `financial_account` VALUES (1,'123456',99100.00,'A','3506001992032923','2014-04-15 20:20:54');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_account_transinfo`
--

LOCK TABLES `financial_account_transinfo` WRITE;
/*!40000 ALTER TABLE `financial_account_transinfo` DISABLE KEYS */;
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
INSERT INTO `fund` VALUES (1000,'嘉实多利分级债券型证券投资基金',100.00,'在控制基金组合下行波动幅度和保持适当流动性的前提下,追求收益最大化。','Y','2014-04-15');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_holding`
--

LOCK TABLES `fund_holding` WRITE;
/*!40000 ALTER TABLE `fund_holding` DISABLE KEYS */;
/*!40000 ALTER TABLE `fund_holding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_transinfo`
--

DROP TABLE IF EXISTS `fund_transinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_transinfo` (
  `TRANS_ID` int(11) NOT NULL COMMENT '交易流水号',
  `TRANS_TYPE` char(1) NOT NULL COMMENT '‘B’—基金购买\n‘G’—赎回基金\n',
  `ACC_NO` int(11) NOT NULL COMMENT '交易账户',
  `FUND_NO` int(11) NOT NULL COMMENT '交易的基金',
  `AMOUNT` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`TRANS_ID`),
  KEY `_idx` (`ACC_NO`),
  KEY `d_idx` (`FUND_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_transinfo`
--

LOCK TABLES `fund_transinfo` WRITE;
/*!40000 ALTER TABLE `fund_transinfo` DISABLE KEYS */;
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

-- Dump completed on 2014-04-17  9:22:10
