CREATE DATABASE  IF NOT EXISTS `visa_management_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `visa_management_system`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: visa_management_system
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `accomodation`
--

DROP TABLE IF EXISTS `accomodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accomodation` (
  `BookingId` int(11) NOT NULL AUTO_INCREMENT,
  `HotelName` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` date NOT NULL,
  `Passport` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`BookingId`),
  UNIQUE KEY `BookingId_UNIQUE` (`BookingId`),
  KEY `fk_appl_paspt_idx` (`Passport`),
  CONSTRAINT `fk_appl_paspt` FOREIGN KEY (`Passport`) REFERENCES `applicant` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodation`
--

LOCK TABLES `accomodation` WRITE;
/*!40000 ALTER TABLE `accomodation` DISABLE KEYS */;
INSERT INTO `accomodation` VALUES (36848,'Wal-mart Stores','Plano','Germany','2012-03-03','2014-11-29',3419741),(40757,'International Business Machines Corporation','Colorado Springs','Spain','2010-08-17','2015-05-02',7948907),(54905,'J. C. Penney Company','Chandler','Austria','2012-12-17','2016-11-10',1273530),(66513,'Sally Beauty','Little Rock','Sweden','2015-01-17','2015-08-01',3968063),(72959,'Kansas City Power & Light Company','Philadelphia','Italy','2014-05-02','2015-02-02',6480344),(92124,'Realogy Corporation','Jersey City','Netherlands','2011-08-18','2015-03-27',9630037);
/*!40000 ALTER TABLE `accomodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant` (
  `passport` int(10) unsigned NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `City` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `DateIssued` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  `Street` varchar(20) NOT NULL,
  `Zipcode` int(11) NOT NULL,
  `ApartmentNo` int(11) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `PhoneNo` varchar(20) NOT NULL,
  `State` varchar(45) NOT NULL,
  PRIMARY KEY (`passport`),
  UNIQUE KEY `ApplicantId_UNIQUE` (`passport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES (1273530,'Zion','Mcdonald','1981-04-17','Tallahassee','United States','Male','2003-05-17','2025-04-14','Lafayette',45943,545,'Zion.MCDO9211@yahoo.com','(559) 338-6016','Florida'),(2106332,'Danica','Whitley','1976-01-07','Houston','United States','Male','1990-03-13','2025-07-17','Dan Ryan',10398,813,'Dani.WHI2612@gmail.com','(779) 750-5706','Texas'),(2867688,'Rocco','Mendoza','1995-06-01','Newark','United States','Female','2003-08-16','2033-11-03','Anchor',89892,757,'Rocc.MENDOZ1189@live.com','(952) 733-2028','New Jersey'),(3419741,'Julia','Benson','1998-12-09','San Bernardino','United States','Female','2006-05-06','2014-10-07','Reilly',37324,707,'Julia.BENSO9624@mail2web.com','(310) 172-4165','California'),(3495221,'Kristina','Tanner','1992-06-26','Anaheim','United States','Female','2007-11-04','2021-02-18','Finsbury',84087,295,'Kristina.TANNE1324@mail2web.com','(985) 389-6353','California'),(3968063,'Kael','Pate','2008-04-16','Chesapeake','United States','Male','2005-03-27','2012-03-11','Southspine',92506,922,'Ka.PATE9396@live.com','(812) 315-6169','Virginia'),(5794657,'Gunnar','Sampson','2011-09-29','Kent','United States','Male','1997-08-17','2021-10-22','Kennedy Harlem Av',53665,249,'Gunn.SAM2582@live.com','(351) 296-6875','Washington'),(5828520,'Maleah','Parks','1996-09-03','Stamford','United States','Male','2009-12-02','2011-05-07','Lowerlevelt3',31549,507,'Male.PARKS1783@mail2web.com','(909) 328-2161','Connecticut'),(6480344,'Rylie','Bartlett','1996-06-06','Hialeah','United States','Female','2005-01-31','2013-11-30','Lyman',19503,640,'Ryli.BART7710@yahoo.com','(443) 221-7630','Florida'),(7219757,'Maritza','Shaw','2000-03-01','Reno','United States','Female','1997-12-07','2013-08-18','Seeley',30621,61,'Maritza.SHAW6650@live.com','(262) 559-2652','Nevada'),(7761508,'Ryleigh','Mcmahon','1990-02-12','Cincinnati','United States','Female','2008-06-21','2028-03-04','Waterside',15717,276,'Ryle.MCMA5173@yahoo.com','(979) 618-8936','Ohio'),(7868238,'Hayden','Everett','1980-11-30','Lansing','United States','Female','1991-03-29','2023-05-07','Dan Ryan 63rd St',22557,112,'Hayde.EVER1867@yahoo.com','(312) 327-5414','Michigan'),(7948907,'Pablo','Meyer','1992-08-23','Naperville','United States','Male','2000-11-08','2026-03-17','Avenue K',38720,479,'Pa.MEYER2405@mail2web.com','(351) 702-9667','Illinois'),(8552357,'Christine','Skinner','1980-04-15','Grand Rapids','United States','Male','1994-10-20','2013-03-07','Bowler',84069,965,'Chri.SKI6981@live.com','(980) 653-1334','Michigan'),(8872372,'Chloe','Johns','1977-07-23','Augusta','United States','Female','1992-09-10','2023-07-26','Kreiter',54963,431,'Chlo.JO9751@live.com','(503) 426-7194','Georgia'),(9395437,'Clinton','Lane','1990-09-09','Sterling Heights','United States','Female','1998-08-15','2021-08-15','Circle',43654,631,'Clinton.LAN5645@hushmail.com','(351) 910-7949','Michigan'),(9630037,'Levi','Burch','1986-12-06','Alexandria','United States','Male','2009-04-24','2033-09-20','Kennicott',39648,616,'Lev.BURCH1566@yahoo.com','(903) 481-0633','Virginia'),(9719041,'Yesenia','Beach','1986-06-16','Atlanta','United States','Female','2008-07-21','2014-11-20','Court',69044,22,'Yeseni.BEA8706@live.com','(302) 755-1993','Georgia'),(9898560,'Marissa','Flowers','1993-10-17','Joliet','United States','Female','1994-07-02','2019-07-31','Root',29135,797,'Marissa.FLOWER3292@yahoo.com','(940) 532-4797','Illinois'),(9967118,'Amalia','Kelley','1988-04-24','Madison','United States','Female','2005-05-20','2028-04-16','Newgard',21278,174,'Amal.KELL4129@gmail.com','(862) 133-8662','Wisconsin');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `ApplicationId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ApplicationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('Submitted','Processing','Approved','Rejected') NOT NULL,
  `Purpose` enum('Tourism','Education','Business','Medical','Transit') NOT NULL DEFAULT 'Tourism',
  `Passport` int(10) unsigned NOT NULL,
  `InsuranceId` int(10) unsigned DEFAULT NULL,
  `EmbassyId` int(10) unsigned DEFAULT NULL,
  `VisaId` int(10) unsigned NOT NULL,
  `SchengenCountry_CountryId` int(10) unsigned NOT NULL,
  `FinancialStatus_Id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ApplicationId`),
  UNIQUE KEY `ApplicationId_UNIQUE` (`ApplicationId`),
  KEY `fk_applt_psp_idx` (`Passport`),
  KEY `fk_Ins_insid_idx` (`InsuranceId`),
  KEY `fk_visa_id_idx` (`VisaId`),
  KEY `fk_embs_id_idx` (`EmbassyId`),
  KEY `fk_Application_SchengenCountry1_idx` (`SchengenCountry_CountryId`),
  KEY `fk_Application_FinancialStatus1_idx` (`FinancialStatus_Id`),
  CONSTRAINT `fk_Application_FinancialStatus1` FOREIGN KEY (`FinancialStatus_Id`) REFERENCES `financialstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Application_SchengenCountry1` FOREIGN KEY (`SchengenCountry_CountryId`) REFERENCES `schengencountry` (`CountryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ins_insid` FOREIGN KEY (`InsuranceId`) REFERENCES `travelinsurance` (`InsuranceId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_applt_psp` FOREIGN KEY (`Passport`) REFERENCES `applicant` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_embs_id` FOREIGN KEY (`EmbassyId`) REFERENCES `embassy` (`EmbassyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_visa_id` FOREIGN KEY (`VisaId`) REFERENCES `visatype` (`VisaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (1,'2017-12-10 07:42:35','Approved','Education',9967118,900745,1,3,3,1),(2,'2017-12-10 08:26:03','Submitted','Education',5828520,560326,3,3,6,2),(3,'2017-12-10 08:26:10','Rejected','Education',2867688,489762,5,3,9,3),(4,'2017-12-10 08:26:17','Submitted','Education',8872372,747778,7,3,10,4),(5,'2017-12-10 08:26:24','Submitted','Education',9395437,247943,13,3,16,5),(6,'2017-12-10 08:26:33','Submitted','Business',2106332,751659,9,3,12,6),(7,'2017-12-10 08:26:40','Rejected','Business',7868238,846482,11,3,15,7),(8,'2017-12-10 08:26:47','Submitted','Business',3495221,805672,13,3,16,8),(9,'2017-12-10 08:26:53','Submitted','Business',7761508,439923,15,3,22,9),(10,'2017-12-10 08:27:16','Submitted','Business',9898560,264404,2,3,3,10),(11,'2017-12-10 08:27:23','Submitted','Tourism',9719041,132543,4,1,6,17),(12,'2017-12-10 08:27:28','Submitted','Tourism',7219757,804717,6,1,9,18),(13,'2017-12-10 08:27:41','Submitted','Tourism',5794657,635563,8,1,10,19),(14,'2017-12-10 08:27:48','Submitted','Tourism',8552357,503239,10,1,12,20),(15,'2017-12-10 08:27:54','Submitted','Transit',1273530,151840,12,1,15,11),(16,'2017-12-10 08:28:02','Submitted','Transit',3419741,430742,14,1,16,12),(17,'2017-12-10 08:28:09','Submitted','Transit',6480344,824740,16,1,22,13),(18,'2017-12-10 08:28:15','Submitted','Medical',7948907,211017,1,2,3,14),(19,'2017-12-10 08:28:23','Submitted','Medical',3968063,114174,7,2,10,15),(20,'2017-12-10 08:28:30','Submitted','Medical',9630037,571506,8,2,10,16);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_has_accomodation`
--

DROP TABLE IF EXISTS `application_has_accomodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_has_accomodation` (
  `Application_ApplicationId` int(10) unsigned NOT NULL,
  `Accomodation_BookingId` int(11) NOT NULL,
  PRIMARY KEY (`Application_ApplicationId`,`Accomodation_BookingId`),
  KEY `fk_Application_has_Accomodation_Accomodation1_idx` (`Accomodation_BookingId`),
  KEY `fk_Application_has_Accomodation_Application1_idx` (`Application_ApplicationId`),
  CONSTRAINT `fk_Application_has_Accomodation_Accomodation1` FOREIGN KEY (`Accomodation_BookingId`) REFERENCES `accomodation` (`BookingId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Application_has_Accomodation_Application1` FOREIGN KEY (`Application_ApplicationId`) REFERENCES `application` (`ApplicationId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_has_accomodation`
--

LOCK TABLES `application_has_accomodation` WRITE;
/*!40000 ALTER TABLE `application_has_accomodation` DISABLE KEYS */;
INSERT INTO `application_has_accomodation` VALUES (16,36848),(18,40757),(15,54905),(19,66513),(17,72959),(20,92124);
/*!40000 ALTER TABLE `application_has_accomodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `CourseId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(45) NOT NULL,
  `CourseDuration` int(11) NOT NULL,
  `Fees` decimal(15,2) NOT NULL,
  `CourseStartDate` date NOT NULL,
  PRIMARY KEY (`CourseId`),
  UNIQUE KEY `CourseId_UNIQUE` (`CourseId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Information Systems',2,23000.00,'2016-10-09'),(2,'Computer Science',2,15000.00,'2016-05-09'),(3,'Cyber Security',2,30000.00,'2016-01-09'),(4,'Engineering Management',2,23000.00,'2016-04-09');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embassy`
--

DROP TABLE IF EXISTS `embassy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `embassy` (
  `EmbassyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EmbassyName` varchar(45) NOT NULL,
  `EmailId` varchar(45) NOT NULL,
  `PhoneNo` varchar(20) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Zipcode` int(11) NOT NULL,
  `Street` varchar(45) NOT NULL,
  `Country_Id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`EmbassyId`),
  UNIQUE KEY `EmbassyId_UNIQUE` (`EmbassyId`),
  KEY `fk_Country_Id_idx` (`Country_Id`),
  CONSTRAINT `fk_Country_Id` FOREIGN KEY (`Country_Id`) REFERENCES `schengencountry` (`CountryId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embassy`
--

LOCK TABLES `embassy` WRITE;
/*!40000 ALTER TABLE `embassy` DISABLE KEYS */;
INSERT INTO `embassy` VALUES (1,'Embassy of schname','Tho.SMI7515@gmail.com','(606)-788-5029','Chula Vista',369126,'stevenson ib lsd sb',3),(2,'Embassy of schname','Alfred.WILE2482@yahoo.com','(409)-243-7554','Rochester',890380,'kilpatrick',3),(3,'Embassy of schname','Col.BO2835@live.com','(713)-276-3667','Moreno Valley',594593,'loring',6),(4,'Embassy of schname','Celes.AGUIRRE5782@mail2web.com','(907)-249-2836','Newark',830775,'gole',6),(5,'Embassy of schname','Kourtney.HARM8823@hushmail.com','(617)-874-4433','Henderson',405126,'solidarity',9),(6,'Embassy of schname','Kailyn.STONE5511@live.com','(608)-723-5380','Baton Rouge',660662,'kinzua',9),(7,'Embassy of schname','Keyl.MORR7376@gmail.com','(808)-628-7845','Allentown',676252,'kewanee',10),(8,'Embassy of schname','Pay.RIC3349@mail2web.com','(430)-885-2511','San Francisco',416239,'aberdeen',10),(9,'Embassy of schname','Zo.GORD8635@mail2web.com','(623)-118-5720','Chandler',290638,'eisenhower wacker dr',12),(10,'Embassy of schname','Danielle.AUST5414@gmail.com','(641)-863-4150','Spokane',505691,'bowen',12),(11,'Embassy of schname','Maximili.SPE8064@yahoo.com','(623)-382-6650','Chicago',505155,'menomonee',15),(12,'Embassy of schname','Cor.GARZA1633@hushmail.com','(646)-195-0797','St. Petersburg',299292,'berwyn',15),(13,'Embassy of schname','Mos.BARRON4508@hushmail.com','(814)-615-4539','North Las Vegas',922853,'montgomery',16),(14,'Embassy of schname','Briell.YO3118@yahoo.com','(980)-845-8302','Independence',767512,'green bay',16),(15,'Embassy of schname','Ron.DODSO3277@yahoo.com','(602)-359-8754','Warren',109036,'calhoun',22),(16,'Embassy of schname','Gilbert.WEIS4771@yahoo.com','(732)-148-1666','Fort Collins',755152,'pollock',22);
/*!40000 ALTER TABLE `embassy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fetchembassyemployeedetails`
--

DROP TABLE IF EXISTS `fetchembassyemployeedetails`;
/*!50001 DROP VIEW IF EXISTS `fetchembassyemployeedetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `fetchembassyemployeedetails` AS SELECT 
 1 AS `EmbassyId`,
 1 AS `EmbassyName`,
 1 AS `No Of Employees`,
 1 AS `PhoneNo`,
 1 AS `EmailId`,
 1 AS `SchengenCountry`,
 1 AS `Street`,
 1 AS `City`,
 1 AS `Zipcode`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fetchotherapplicantdetails`
--

DROP TABLE IF EXISTS `fetchotherapplicantdetails`;
/*!50001 DROP VIEW IF EXISTS `fetchotherapplicantdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `fetchotherapplicantdetails` AS SELECT 
 1 AS `passport`,
 1 AS `Applicant Name`,
 1 AS `Date_Of_Birth`,
 1 AS `Gender`,
 1 AS `ApartmentNo`,
 1 AS `Street`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fetchstudentapplicantdetails`
--

DROP TABLE IF EXISTS `fetchstudentapplicantdetails`;
/*!50001 DROP VIEW IF EXISTS `fetchstudentapplicantdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `fetchstudentapplicantdetails` AS SELECT 
 1 AS `passport`,
 1 AS `Applicant Name`,
 1 AS `DOB`,
 1 AS `Gender`,
 1 AS `UniversityName`,
 1 AS `CourseName`,
 1 AS `CourseDuration`,
 1 AS `Fees`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fetchworkingapplcantdetails`
--

DROP TABLE IF EXISTS `fetchworkingapplcantdetails`;
/*!50001 DROP VIEW IF EXISTS `fetchworkingapplcantdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `fetchworkingapplcantdetails` AS SELECT 
 1 AS `passport`,
 1 AS `Applicant Name`,
 1 AS `DOB`,
 1 AS `Gender`,
 1 AS `Company`,
 1 AS `Designation`,
 1 AS `Contract`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `financialstatus`
--

DROP TABLE IF EXISTS `financialstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialstatus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Funds` set('TravellersCheque','CreditCards','ChequeBooks','Cash') NOT NULL,
  `Amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialstatus`
--

LOCK TABLES `financialstatus` WRITE;
/*!40000 ALTER TABLE `financialstatus` DISABLE KEYS */;
INSERT INTO `financialstatus` VALUES (1,'TravellersCheque,Cash',52752.00),(2,'TravellersCheque',65340.00),(3,'CreditCards',61068.00),(4,'TravellersCheque',48014.00),(5,'CreditCards',53322.00),(6,'TravellersCheque,CreditCards',61958.00),(7,'Cash',49391.00),(8,'ChequeBooks,Cash',47421.00),(9,'CreditCards',59779.00),(10,'ChequeBooks',50357.00),(11,'CreditCards,Cash',51745.00),(12,'TravellersCheque',42423.00),(13,'CreditCards,ChequeBooks',58732.00),(14,'TravellersCheque,Cash',51267.00),(15,'ChequeBooks',44879.00),(16,'TravellersCheque',57185.00),(17,'TravellersCheque',42280.00),(18,'ChequeBooks',48724.00),(19,'ChequeBooks,Cash',64095.00),(20,'TravellersCheque',68669.00);
/*!40000 ALTER TABLE `financialstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `getrejectedapplicationdetails`
--

DROP TABLE IF EXISTS `getrejectedapplicationdetails`;
/*!50001 DROP VIEW IF EXISTS `getrejectedapplicationdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `getrejectedapplicationdetails` AS SELECT 
 1 AS `passport`,
 1 AS `ApplicantName`,
 1 AS `DOB`,
 1 AS `Gender`,
 1 AS `EmailId`,
 1 AS `PhoneNo`,
 1 AS `ApplicationId`,
 1 AS `Purpose`,
 1 AS `EmbassyId`,
 1 AS `VisaName`,
 1 AS `MemberState`,
 1 AS `CompanyName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `grantedvisa`
--

DROP TABLE IF EXISTS `grantedvisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grantedvisa` (
  `VisaEntryType` enum('Single','Double','Multiple') NOT NULL,
  `Applicant_passport` int(10) unsigned NOT NULL,
  `IssuedDate` date NOT NULL,
  `Validity` smallint(3) NOT NULL,
  `IsActive` tinyint(4) NOT NULL,
  `VisaType_VisaId` int(10) unsigned NOT NULL,
  `SchengenCountry_CountryId` int(10) unsigned NOT NULL,
  `ApplicationId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Applicant_passport`,`ApplicationId`),
  UNIQUE KEY `ApplicationId_UNIQUE` (`ApplicationId`),
  KEY `fk_GrantedVisa_VisaType1_idx` (`VisaType_VisaId`),
  KEY `fk_GrantedVisa_SchengenCountry1_idx` (`SchengenCountry_CountryId`),
  KEY `fk_appliatn_id_idx` (`ApplicationId`),
  CONSTRAINT `fk_GrantedVisa_SchengenCountry1` FOREIGN KEY (`SchengenCountry_CountryId`) REFERENCES `schengencountry` (`CountryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GrantedVisa_VisaType1` FOREIGN KEY (`VisaType_VisaId`) REFERENCES `visatype` (`VisaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appliatn_id` FOREIGN KEY (`ApplicationId`) REFERENCES `application` (`ApplicationId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viza_pspt` FOREIGN KEY (`Applicant_passport`) REFERENCES `applicant` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grantedvisa`
--

LOCK TABLES `grantedvisa` WRITE;
/*!40000 ALTER TABLE `grantedvisa` DISABLE KEYS */;
INSERT INTO `grantedvisa` VALUES ('Multiple',9967118,'2017-12-13',365,1,1,1,1);
/*!40000 ALTER TABLE `grantedvisa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger LogUserDetails
after insert 
on GrantedVisa  
for each row begin
declare iuser varchar(50);
select user() into iuser;
insert into  loguserdetails(GrantedVisa_ApplicationId,GrantedVisa_Applicant_passport,DateCreated,UserAcc)
values(New.ApplicationId,New.Applicant_passport,curdate(),iuser);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger updateApplicationStatusApproved
after insert
on GrantedVisa
for each row
begin
Update Application
set `Status`='Approved'
where ApplicationId=New.ApplicationId;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `loguserdetails`
--

DROP TABLE IF EXISTS `loguserdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loguserdetails` (
  `GrantedVisa_ApplicationId` int(10) unsigned NOT NULL,
  `GrantedVisa_Applicant_passport` int(10) unsigned NOT NULL,
  `DateCreated` date NOT NULL,
  `UserAcc` varchar(45) NOT NULL,
  PRIMARY KEY (`GrantedVisa_ApplicationId`,`GrantedVisa_Applicant_passport`),
  KEY `fk_LogVisaChanges_GrantedVisa1_idx` (`GrantedVisa_Applicant_passport`,`GrantedVisa_ApplicationId`),
  CONSTRAINT `fk_LogVisaChanges_GrantedVisa1` FOREIGN KEY (`GrantedVisa_Applicant_passport`, `GrantedVisa_ApplicationId`) REFERENCES `grantedvisa` (`Applicant_passport`, `ApplicationId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loguserdetails`
--

LOCK TABLES `loguserdetails` WRITE;
/*!40000 ALTER TABLE `loguserdetails` DISABLE KEYS */;
INSERT INTO `loguserdetails` VALUES (1,9967118,'2017-12-13','root@localhost');
/*!40000 ALTER TABLE `loguserdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `OrganizationId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrganizationName` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  PRIMARY KEY (`OrganizationId`),
  UNIQUE KEY `ContractId_UNIQUE` (`OrganizationId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'Volkswagen','Paris','France'),(2,'Qualcomm','Munich','Germany'),(3,'Infosys','abc','Belgium');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relative`
--

DROP TABLE IF EXISTS `relative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relative` (
  `Passport` int(10) unsigned NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Street` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `ApartmentNo` int(11) NOT NULL,
  `FinancialStatus_id` int(10) unsigned NOT NULL,
  `Relation` enum('Spouse','Parent','Sibling','Friend') NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  PRIMARY KEY (`Passport`),
  UNIQUE KEY `Passport_UNIQUE` (`Passport`),
  KEY `fk_Relative_FinancialStatus1_idx` (`FinancialStatus_id`),
  CONSTRAINT `fk_Relative_FinancialStatus1` FOREIGN KEY (`FinancialStatus_id`) REFERENCES `financialstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relative`
--

LOCK TABLES `relative` WRITE;
/*!40000 ALTER TABLE `relative` DISABLE KEYS */;
INSERT INTO `relative` VALUES (435245,'Titus','Saunders','blue island','virginia beach',485,17,'Parent','Male'),(442225,'Hazel','Heath','bosworth','san francisco',813,19,'Parent','Female'),(710157,'Danny','Stokes','norwood','manchester',730,20,'Sibling','Female'),(942445,'Nicholas','Henderson','dan ryan ob dan ryan','aurora',768,18,'Friend','Female');
/*!40000 ALTER TABLE `relative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schengencountry`
--

DROP TABLE IF EXISTS `schengencountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schengencountry` (
  `CountryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(45) NOT NULL,
  PRIMARY KEY (`CountryId`),
  UNIQUE KEY `CountryId_UNIQUE` (`CountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schengencountry`
--

LOCK TABLES `schengencountry` WRITE;
/*!40000 ALTER TABLE `schengencountry` DISABLE KEYS */;
INSERT INTO `schengencountry` VALUES (1,'Austria'),(2,'Belgium'),(3,'Switzerland'),(4,'Cyprus'),(5,'Czech Republic'),(6,'Germany'),(7,'Denmark'),(8,'Estonia'),(9,'Greece'),(10,'Spain'),(11,'Finland'),(12,'France'),(13,'Hungary'),(14,'Ireland'),(15,'Iceland'),(16,'Italy'),(17,'Liechtenstein'),(18,'Lithuania'),(19,'Luxembourg'),(20,'Latvia'),(21,'Malta'),(22,'Netherlands'),(23,'Norway'),(24,'Poland'),(25,'Portugal'),(26,'Sweden'),(27,'Slovenia'),(28,'Slovakia');
/*!40000 ALTER TABLE `schengencountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentapplicant`
--

DROP TABLE IF EXISTS `studentapplicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentapplicant` (
  `Passport` int(10) unsigned NOT NULL,
  `University_UnvId` int(10) unsigned NOT NULL,
  `AcceptanceLetter` varchar(45) NOT NULL,
  `CourseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Passport`),
  UNIQUE KEY `Passport_UNIQUE` (`Passport`),
  KEY `fk_StudentApplicant_University1_idx` (`University_UnvId`),
  KEY `fk_cid_cour` (`CourseId`),
  CONSTRAINT `fk_StudentApplicant_University1` FOREIGN KEY (`University_UnvId`) REFERENCES `university` (`UniversityId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cid_cour` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`) ON DELETE NO ACTION,
  CONSTRAINT `fk_stAppl_Passp` FOREIGN KEY (`Passport`) REFERENCES `applicant` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentapplicant`
--

LOCK TABLES `studentapplicant` WRITE;
/*!40000 ALTER TABLE `studentapplicant` DISABLE KEYS */;
INSERT INTO `studentapplicant` VALUES (2867688,3,'Mercury General Corporation',1),(5828520,2,'Alcoa',1),(8872372,2,'Carlisle Companiesorporated',2),(9395437,1,'Exterran Holdings',2),(9967118,4,'Tesoro Corporation',4);
/*!40000 ALTER TABLE `studentapplicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelinsurance`
--

DROP TABLE IF EXISTS `travelinsurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travelinsurance` (
  `InsuranceId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Amount` decimal(15,2) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Passport` int(10) unsigned NOT NULL,
  `CompanyName` varchar(45) NOT NULL,
  PRIMARY KEY (`InsuranceId`),
  UNIQUE KEY `InsuranceId_UNIQUE` (`InsuranceId`),
  KEY `fk_appl_pasp_idx` (`Passport`),
  CONSTRAINT `fk_appl_pasp` FOREIGN KEY (`Passport`) REFERENCES `applicant` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=900746 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelinsurance`
--

LOCK TABLES `travelinsurance` WRITE;
/*!40000 ALTER TABLE `travelinsurance` DISABLE KEYS */;
INSERT INTO `travelinsurance` VALUES (114174,543709.00,'2014-08-21','2017-12-02',3968063,'Sherwin-williams'),(132543,829364.00,'2015-10-29','2016-03-01',9719041,'Lithia Motors'),(151840,660905.00,'2014-09-19','2017-09-01',1273530,'News Corporation'),(211017,541557.00,'2015-06-22','2017-07-27',7948907,'Cbs Corporation'),(247943,327042.00,'2013-12-26','2016-08-15',9395437,'Cytec Industries'),(264404,706887.00,'2015-11-30','2017-03-13',9898560,'Cinemark Usa'),(430742,893322.00,'2014-04-27','2017-07-25',3419741,'Barnes & Noble'),(439923,577821.00,'2014-10-02','2017-07-25',7761508,'News Corporation'),(489762,477236.00,'2012-08-28','2015-04-08',2867688,'Meritor'),(503239,610517.00,'2015-02-08','2016-11-08',8552357,'Questar Corporation'),(560326,921809.00,'2010-11-23','2014-09-30',5828520,'Sungard'),(571506,626292.00,'2014-01-09','2017-08-27',9630037,'Questar Corporation'),(635563,532530.00,'2015-04-04','2016-10-04',5794657,'Cbs Corporation'),(747778,373860.00,'2010-02-03','2014-03-19',8872372,'Supermedia'),(751659,846191.00,'2015-02-21','2017-06-18',2106332,'Barnes & Noble'),(804717,681766.00,'2014-07-14','2017-06-30',7219757,'Sunoco'),(805672,640280.00,'2015-10-18','2016-12-26',3495221,'Seaboard Foods'),(824740,616847.00,'2014-07-11','2016-03-03',6480344,'Meritor'),(846482,708812.00,'2015-12-15','2017-01-27',7868238,'News Corporation'),(900745,745221.00,'2012-07-04','2014-12-10',9967118,'Cinemark Usa');
/*!40000 ALTER TABLE `travelinsurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelitinerary`
--

DROP TABLE IF EXISTS `travelitinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travelitinerary` (
  `BookingId` int(11) NOT NULL,
  `Source` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `Transit` varchar(45) DEFAULT NULL,
  `Departure` datetime NOT NULL,
  `Arrival` datetime NOT NULL,
  `Returnbooking` int(11) DEFAULT NULL,
  `Application_ApplicationId` int(10) unsigned DEFAULT NULL,
  `Applicant_passport` int(10) unsigned NOT NULL,
  PRIMARY KEY (`BookingId`),
  UNIQUE KEY `BookingId_UNIQUE` (`BookingId`),
  KEY `fk_TravelItinerary_Application1_idx` (`Application_ApplicationId`),
  KEY `fk_TravelItinerary_Applicant1_idx` (`Applicant_passport`),
  CONSTRAINT `fk_TravelItinerary_Applicant1` FOREIGN KEY (`Applicant_passport`) REFERENCES `applicant` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TravelItinerary_Application1` FOREIGN KEY (`Application_ApplicationId`) REFERENCES `application` (`ApplicationId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelitinerary`
--

LOCK TABLES `travelitinerary` WRITE;
/*!40000 ALTER TABLE `travelitinerary` DISABLE KEYS */;
INSERT INTO `travelitinerary` VALUES (11276,'Boston','Barcelona',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,4,8872372),(12345,'Nashville','mumbai','dubai','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,11,9719041),(15019,'Chennai','st. louis','Munich','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,16,3419741),(19131,'Delhi','oxnard',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,10,9898560),(21278,'Mumbai','fort lauderdale',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,8,3495221),(25987,'Mumbai','Berlin',NULL,'2017-12-10 03:15:42','2017-12-10 03:15:42',NULL,1,9967118),(36859,'Eugene','Paris','Monaco','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,18,7948907),(37085,'Gainesville','Gainesville',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,5,9395437),(54321,'Delhi','baton rouge','Baton Rouge','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,12,7219757),(54537,'Colorado Springs','Bruggels',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,9,7761508),(55269,'Mumbai','Nashville','abudhabi','2017-10-04 14:20:30','2017-10-04 20:20:30',12345,11,9719041),(56789,'Aurora','Bangalore','Aurora','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,13,5794657),(69083,'Kolkata','Paris',NULL,'2017-12-10 03:15:59','2017-12-10 03:15:59',NULL,2,5828520),(69483,'San Bernardino','Mumbai','Milan','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,17,6480344),(70606,'Tacoma','Amsterdam',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,7,7868238),(73659,'Mesa','Madrid','Mesa','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,14,8552357),(75935,'Atlanta','duthces','Paris','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,20,9630037),(78596,'Greece','Hialeadg','Lyon','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,19,3968063),(78689,'Bangalore','aurora','Aurora','2017-10-04 14:20:30','2017-10-04 20:20:30',56789,13,5794657),(78711,'Baton Rouge','Delhi','Baton Rouge','2017-10-04 14:20:30','2017-10-04 20:20:30',54321,12,7219757),(80008,'Elizabeth','Bangalore','Paris','2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,15,1273530),(83311,'Chennai','bellevue',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,3,2867688),(86243,'Orlando','Naples',NULL,'2017-10-04 14:20:30','2017-10-04 20:20:30',NULL,6,2106332);
/*!40000 ALTER TABLE `travelitinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university` (
  `UniversityId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UniversityName` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  PRIMARY KEY (`UniversityId`),
  UNIQUE KEY `AcceptanceId_UNIQUE` (`UniversityId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES (1,'Oxford','Orlando','Sweden'),(2,'Northeastern university','Shreveport','Switzerland'),(3,'Stevens institute of technology','Stutgart','Germany'),(4,'University of Republic','Naples','Italy');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university_has_course`
--

DROP TABLE IF EXISTS `university_has_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university_has_course` (
  `University_UniversityId` int(10) unsigned NOT NULL,
  `Course_CourseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`University_UniversityId`,`Course_CourseId`),
  KEY `fk_University_has_Course_Course1_idx` (`Course_CourseId`),
  KEY `fk_University_has_Course_University1_idx` (`University_UniversityId`),
  CONSTRAINT `fk_University_has_Course_Course1` FOREIGN KEY (`Course_CourseId`) REFERENCES `course` (`CourseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_University_has_Course_University1` FOREIGN KEY (`University_UniversityId`) REFERENCES `university` (`UniversityId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university_has_course`
--

LOCK TABLES `university_has_course` WRITE;
/*!40000 ALTER TABLE `university_has_course` DISABLE KEYS */;
INSERT INTO `university_has_course` VALUES (1,1),(2,1),(3,1),(4,1),(1,2),(2,2),(3,2),(4,2),(1,3),(4,3),(2,4),(3,4),(4,4);
/*!40000 ALTER TABLE `university_has_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visaofficer`
--

DROP TABLE IF EXISTS `visaofficer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visaofficer` (
  `EmployeeId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Embassy_Id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`),
  UNIQUE KEY `EmployeeId_UNIQUE` (`EmployeeId`),
  KEY `fk_emb_Id_idx` (`Embassy_Id`),
  CONSTRAINT `fk_emb_Id` FOREIGN KEY (`Embassy_Id`) REFERENCES `embassy` (`EmbassyId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visaofficer`
--

LOCK TABLES `visaofficer` WRITE;
/*!40000 ALTER TABLE `visaofficer` DISABLE KEYS */;
INSERT INTO `visaofficer` VALUES (13,'Abril','Paul','1973-01-03',5),(15,'Braiden','Hobbs','1986-03-17',6),(16,'Paisley','Peck','1971-10-05',6),(17,'Nico','Peck','1970-05-21',7),(18,'Kyra','Rosales','1990-02-23',7),(19,'Van','Everett','1976-02-18',7),(20,'Leilani','Park','1992-10-09',8),(21,'Giada','Simpson','1975-10-21',8),(22,'Major','Johnson','1990-02-22',8),(23,'Keon','Goodman','1988-06-05',9),(24,'Marlon','Medina','1979-02-25',9),(25,'Wendy','Small','1971-10-24',9),(26,'Bentley','Guzman','1980-09-05',10),(27,'Macy','Palmer','1970-04-19',10),(28,'Cale','Mcgee','1990-05-27',11),(29,'Mattie','Gordon','1988-02-01',11),(30,'Giovanni','Church','1994-02-11',11),(31,'Nadia','Miller','1991-03-01',12),(32,'Emery','Noble','1985-05-12',12),(33,'Meadow','Stout','1982-09-17',13),(34,'Jaelyn','Evans','1973-10-08',13),(35,'Rayden','Mcbride','1975-11-08',14),(36,'Sariyah','Kent','1986-12-03',14),(37,'Beckett','Whitley','1987-06-13',14),(38,'Ali','Gaines','1987-03-26',15),(39,'Kaleb','Sharpe','1971-08-04',15),(40,'Romeo','Curry','1994-05-31',16),(41,'Kade','Larsen','1975-09-29',16);
/*!40000 ALTER TABLE `visaofficer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visatype`
--

DROP TABLE IF EXISTS `visatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visatype` (
  `VisaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `VisaName` enum('Uniform Schengen Visa','Limited Territorial Visa','National visa') NOT NULL,
  PRIMARY KEY (`VisaId`),
  UNIQUE KEY `Visa_Id_UNIQUE` (`VisaId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visatype`
--

LOCK TABLES `visatype` WRITE;
/*!40000 ALTER TABLE `visatype` DISABLE KEYS */;
INSERT INTO `visatype` VALUES (1,'Uniform Schengen Visa'),(2,'Limited Territorial Visa'),(3,'National visa');
/*!40000 ALTER TABLE `visatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workingapplicant`
--

DROP TABLE IF EXISTS `workingapplicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workingapplicant` (
  `Passport` int(10) unsigned NOT NULL,
  `Organization_OrgId` int(10) unsigned NOT NULL,
  `Contract` varchar(45) NOT NULL,
  `Designation` varchar(45) NOT NULL,
  PRIMARY KEY (`Passport`),
  UNIQUE KEY `Passport_UNIQUE` (`Passport`),
  KEY `fk_WorkingApplicant_Organization1_idx` (`Organization_OrgId`),
  CONSTRAINT `fk_WorkingApplicant_Organization1` FOREIGN KEY (`Organization_OrgId`) REFERENCES `organization` (`OrganizationId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wkApp_passp` FOREIGN KEY (`Passport`) REFERENCES `applicant` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workingapplicant`
--

LOCK TABLES `workingapplicant` WRITE;
/*!40000 ALTER TABLE `workingapplicant` DISABLE KEYS */;
INSERT INTO `workingapplicant` VALUES (2106332,1,'ContractPath3','Analyst'),(3495221,3,'ContractPath1','Consultant'),(7761508,1,'ContractPath3','Test Engineer'),(7868238,2,'ContractPath1','Senior Developer'),(9898560,2,'ContractPath3','Senior Manager');
/*!40000 ALTER TABLE `workingapplicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'visa_management_system'
--
/*!50003 DROP FUNCTION IF EXISTS `calculateProcessingFee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculateProcessingFee`(appId int) RETURNS decimal(15,2)
    DETERMINISTIC
begin
 declare fee decimal(15,2);
 declare pur varchar(20);
 declare age int;
 declare flag boolean;
 case when exists(select * from Application where ApplicationId=appId) then
 set flag:=true;
 select Purpose into pur from Application where ApplicationId=appId;
 select truncate(datediff(curdate(),Date_Of_Birth)/365,0) into age
 from Application
 join applicant
 on application.Passport=applicant.passport
 where ApplicationId=appId;
 else
 set flag:=false;
 end case;
 
if flag=true then
	if pur = 'Transit' or pur ='Medical'   then
		if age>12 then
		set fee:=60;
	    else 
		set fee:=35;
		end if;
     else 
		set fee:=90;
     end if;
else
set fee:=0;
end if;
return fee;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `applicant_Visa_Table_Backup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `applicant_Visa_Table_Backup`()
    COMMENT 'This procedure is used to take backup of applicant and visagranted details'
begin
create table GrantedVisaBackup as select * from GrantedVisa;
create table ApplicantBackup as select * from applicant;
create table StudentApplicantBackup as select * from StudentApplicant;
create table WorkingApplicantBackup as select * from WorkingApplicant;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createApplicantDataDump` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createApplicantDataDump`()
    DETERMINISTIC
    COMMENT 'This procedure is used to dump data to a file'
begin
select passport,First_name,Last_name,Date_of_birth,City,Country,Gender,DateIssued,ExpiryDate,Street,Zipcode,ApartmentNo,EmailId,PhoneNo,State
into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\vmsdump.csv'
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
from Applicant;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAccomodationDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAccomodationDetails`()
    COMMENT 'This procedure is used to get accomodation details for applicant'
begin
select applicationId,concat_ws(' ',First_Name,Last_Name) as 'Applicant Name',Gender,bookingId,HotelName,accomodation.CheckIn,accomodation.CheckOut,accomodation.City,accomodation.Country
from accomodation
join application_has_accomodation
on accomodation.BookingId=application_has_accomodation.Accomodation_BookingId
right join application
on Application.ApplicationId=application_has_accomodation.Application_ApplicationId
join applicant
on application.Passport=applicant.passport;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicantFlightBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicantFlightBooking`()
    COMMENT 'This procedure is used to fetch tourist applicant without returnBookingID'
begin
-- 
select ApplicationId,concat_ws(' ',applicant.First_Name,Last_Name) as 'Applicant Name',Gender,BookingId,`Source`,`Destination`,`arrival`,`departure`
from application 
join travelitinerary
on application.applicationId=travelitinerary.Application_ApplicationId
join Applicant
on Application.passport=Applicant.passport
where ApplicationId 
not in (select  ti1.Application_ApplicationId from travelitinerary ti1  join travelitinerary ti2
on ti1.BookingId=ti2.Returnbooking) and Purpose='Tourism';
--
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicationRelativeDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicationRelativeDetails`()
    COMMENT 'This procedure is used to get details of applicants supported/not supported by relative'
begin
select concat_ws(' ',applicant.First_Name,applicant.Last_Name) 'ApplicantName',application.Purpose,visaName
,funds,concat_ws(' ',FirstName,LastName) 'RelativeName',relative.Gender,relative.ApartmentNo,relative.Street,relative.City
from application
join applicant
on applicant.passport=application.Passport
join visatype
on application.VisaId=visatype.VisaId
join financialstatus
on application.FinancialStatus_Id=financialStatus.id
left join relative
on financialstatus.id=relative.FinancialStatus_Id
order by applicationId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApprovedVisaDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApprovedVisaDetails`()
    COMMENT 'Gives details of approved visas'
begin
select Application.ApplicationId,Applicant_Passport,concat_ws(' ',First_name,Last_Name)'ApplicantName',CountryName,VisaEntryType,VisaName,IssuedDate,Validity,IsActive
from GrantedVisa
join visatype
on visatype.VisaId=GrantedVisa.VisaType_VisaId
join Application
on application.ApplicationId=GrantedVisa.ApplicationId
join Schengencountry
on application.SchengenCountry_CountryId=schengencountry.CountryId
join Applicant
on Applicant.Passport=Application.Passport;  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxApplicationCountEmbassy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxApplicationCountEmbassy`()
    COMMENT 'This procedure is used to fetch max student applcation received by embassy'
begin
-- select a.embassyId,sc.CountryName,count(ApplicationId) `application_count`
-- from application a
-- join embassy e
-- on a.embassyId=e.embassyId
-- join schengencountry sc
-- on sc.CountryId=e.Country_Id
-- group by a.embassyId
-- having `application_count`>1 
-- order by sc.countryName desc 
-- Limit 2;
-- ---
select application.embassyId,CountryName,count(applicationId) `totalCount`
from Application
join SchengenCountry
on Application.SchengenCountry_CountryId=SchengenCountry.CountryId
group by application.embassyId,CountryName
order by totalCount desc
limit 1 ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSumOfProcessingFee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSumOfProcessingFee`()
begin
-- 
select CountryName,embassy.EmbassyId,sum(calculateProcessingfee(ApplicationId)) as 'Revenue'
from application
join embassy
on application.EmbassyId=embassy.EmbassyId
join schengencountry
on schengencountry.CountryId=embassy.Country_Id
group by CountryName,embassy.EmbassyId with rollup;
--
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `fetchembassyemployeedetails`
--

/*!50001 DROP VIEW IF EXISTS `fetchembassyemployeedetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fetchembassyemployeedetails` AS select `embassy`.`EmbassyId` AS `EmbassyId`,`embassy`.`EmbassyName` AS `EmbassyName`,count(`visaofficer`.`EmployeeId`) AS `No Of Employees`,`embassy`.`PhoneNo` AS `PhoneNo`,`embassy`.`EmailId` AS `EmailId`,`schengencountry`.`CountryName` AS `SchengenCountry`,`embassy`.`Street` AS `Street`,`embassy`.`City` AS `City`,`embassy`.`Zipcode` AS `Zipcode` from ((`schengencountry` join `embassy` on((`embassy`.`Country_Id` = `schengencountry`.`CountryId`))) join `visaofficer` on((`visaofficer`.`Embassy_Id` = `embassy`.`EmbassyId`))) group by `embassy`.`EmbassyId` order by `schengencountry`.`CountryName` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fetchotherapplicantdetails`
--

/*!50001 DROP VIEW IF EXISTS `fetchotherapplicantdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fetchotherapplicantdetails` AS select `applicant`.`passport` AS `passport`,concat_ws(' ',`applicant`.`First_Name`,`applicant`.`Last_Name`) AS `Applicant Name`,`applicant`.`Date_Of_Birth` AS `Date_Of_Birth`,`applicant`.`Gender` AS `Gender`,`applicant`.`ApartmentNo` AS `ApartmentNo`,`applicant`.`Street` AS `Street`,`applicant`.`City` AS `City`,`applicant`.`State` AS `State`,`applicant`.`Country` AS `Country` from `applicant` where (not(`applicant`.`passport` in (select `studentapplicant`.`Passport` from `studentapplicant` union select `workingapplicant`.`Passport` from `workingapplicant`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fetchstudentapplicantdetails`
--

/*!50001 DROP VIEW IF EXISTS `fetchstudentapplicantdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fetchstudentapplicantdetails` AS select `applicant`.`passport` AS `passport`,concat_ws(' ',`applicant`.`First_Name`,`applicant`.`Last_Name`) AS `Applicant Name`,`applicant`.`Date_Of_Birth` AS `DOB`,`applicant`.`Gender` AS `Gender`,`university`.`UniversityName` AS `UniversityName`,`course`.`CourseName` AS `CourseName`,`course`.`CourseDuration` AS `CourseDuration`,`course`.`Fees` AS `Fees` from ((((`applicant` join `studentapplicant` on((`applicant`.`passport` = `studentapplicant`.`Passport`))) join `university_has_course` on(((`studentapplicant`.`University_UnvId` = `university_has_course`.`University_UniversityId`) and (`studentapplicant`.`CourseId` = `university_has_course`.`Course_CourseId`)))) join `university` on((`university_has_course`.`University_UniversityId` = `university`.`UniversityId`))) join `course` on((`course`.`CourseId` = `university_has_course`.`Course_CourseId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fetchworkingapplcantdetails`
--

/*!50001 DROP VIEW IF EXISTS `fetchworkingapplcantdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fetchworkingapplcantdetails` AS select `applicant`.`passport` AS `passport`,concat_ws(' ',`applicant`.`First_Name`,`applicant`.`Last_Name`) AS `Applicant Name`,`applicant`.`Date_Of_Birth` AS `DOB`,`applicant`.`Gender` AS `Gender`,`organization`.`OrganizationName` AS `Company`,`workingapplicant`.`Designation` AS `Designation`,`workingapplicant`.`Contract` AS `Contract` from ((`applicant` join `workingapplicant` on((`applicant`.`passport` = `workingapplicant`.`Passport`))) join `organization` on((`workingapplicant`.`Organization_OrgId` = `organization`.`OrganizationId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getrejectedapplicationdetails`
--

/*!50001 DROP VIEW IF EXISTS `getrejectedapplicationdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getrejectedapplicationdetails` AS select `applicant`.`passport` AS `passport`,concat_ws(' ',`applicant`.`First_Name`,`applicant`.`Last_Name`) AS `ApplicantName`,`applicant`.`Date_Of_Birth` AS `DOB`,`applicant`.`Gender` AS `Gender`,`applicant`.`EmailId` AS `EmailId`,`applicant`.`PhoneNo` AS `PhoneNo`,`application`.`ApplicationId` AS `ApplicationId`,`application`.`Purpose` AS `Purpose`,`application`.`EmbassyId` AS `EmbassyId`,`visatype`.`VisaName` AS `VisaName`,`application`.`SchengenCountry_CountryId` AS `MemberState`,`travelinsurance`.`CompanyName` AS `CompanyName` from (((`applicant` join `application` on((`applicant`.`passport` = `application`.`Passport`))) join `travelinsurance` on((`travelinsurance`.`InsuranceId` = `application`.`InsuranceId`))) join `visatype` on((`visatype`.`VisaId` = `application`.`VisaId`))) where (`application`.`Status` = 'Rejected') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 13:53:36
