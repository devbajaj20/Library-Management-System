-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: libmgt
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `ADMIN_ID` int NOT NULL,
  `ADMIN_NAME_FIRST` varchar(50) DEFAULT NULL,
  `ADMIN_NAME_LAST` varchar(50) DEFAULT NULL,
  `ADMIN_CONTACT_NO` varchar(20) DEFAULT NULL,
  `ADMIN_ROLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Ramesh','Sharma','9876543210','Head Librarian'),(2,'Seema','Joshi','9876501234','System Admin'),(3,'Alok','Rai','9812345678','Inventory Manager'),(4,'Neha','Verma','9823456789','Accountant'),(5,'Vikas','Kumar','9834567890','Assistant Admin'),(6,'Anjali','Mehta','9845678901','Finance Admin'),(7,'Nitin','Gupta','9856789012','Database Admin'),(8,'Tanya','Kapoor','9867890123','Operations Manager'),(9,'Rajeev','Malhotra','9878901234','HR Admin'),(10,'Poonam','Yadav','9889012345','Communications Admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `AUTHOR_ID` int NOT NULL,
  `AUTHOR_NAME_FIRST` varchar(50) DEFAULT NULL,
  `AUTHOR_NAME_LAST` varchar(50) DEFAULT NULL,
  `AUTHOR_NATIONALITY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Arundhati','Roy','Indian'),(2,'Jhumpa','Lahiri','Indian-American'),(3,'R.K.','Narayan','Indian'),(4,'Salman','Rushdie','British-Indian'),(5,'Amitav','Ghosh','Indian'),(6,'Kiran','Desai','Indian'),(7,'Vikram','Seth','Indian'),(8,'Ruskin','Bond','Indian'),(9,'Kamala','Das','Indian'),(10,'Chitra','Banerjee','Indian'),(11,'Anita','Desai','Indian'),(12,'Mulk','Raj Anand','Indian'),(13,'Salman','Rushdie','British-Indian'),(14,'Agha','Hashar','Indian'),(15,'Amish','Tripathi','Indian'),(16,'Devdutt','Pattanaik','Indian'),(17,'Ruskin','Bond','Indian'),(18,'Kiran','Nambiar','Indian'),(19,'Sudha','Murthy','Indian'),(20,'Rohinton','Mistry','Indian-Canadian'),(21,'Vikram','Chandra','Indian'),(22,'Shashi','Tharoor','Indian'),(23,'Anita','Nair','Indian'),(24,'Manju','Kapur','Indian'),(25,'Sujata','Mitra','Indian'),(26,'Jhumpa','Lahiri','Indian-American'),(27,'Ruskin','Bond','Indian'),(28,'Kamala','Das','Indian'),(29,'Arundhati','Roy','Indian'),(30,'Salman','Rushdie','British-Indian'),(31,'Amitav','Ghosh','Indian'),(32,'Kiran','Desai','Indian'),(33,'Vikram','Seth','Indian'),(34,'Chitra','Banerjee','Indian'),(35,'Anita','Desai','Indian'),(36,'Ruskin','Bond','Indian'),(37,'Sudha','Murthy','Indian'),(38,'Devdutt','Pattanaik','Indian'),(39,'Amish','Tripathi','Indian'),(40,'Mulk','Raj Anand','Indian'),(41,'Salman','Rushdie','British-Indian'),(42,'Kamala','Das','Indian'),(43,'Jhumpa','Lahiri','Indian-American'),(44,'Vikram','Chandra','Indian'),(45,'Anita','Nair','Indian'),(46,'Manju','Kapur','Indian'),(47,'Sujata','Mitra','Indian'),(48,'Shashi','Tharoor','Indian'),(49,'Rohinton','Mistry','Indian-Canadian'),(50,'Sudha','Murthy','Indian');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BOOK_ID` int NOT NULL,
  `BOOK_TITLE` varchar(255) DEFAULT NULL,
  `BOOK_PRICE` decimal(10,2) DEFAULT NULL,
  `BOOK_STATUS` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (101,'The Silent Patient',499.00,'Available'),(102,'Atomic Habits',399.00,'Borrowed'),(103,'Educated',450.00,'Available'),(104,'Where the Crawdads Sing',420.00,'Borrowed'),(105,'Becoming',500.00,'Available'),(106,'The Power of Now',350.00,'Reserved'),(107,'The Alchemist',299.00,'Available'),(108,'The Midnight Library',430.00,'Available'),(109,'The Psychology of Money',480.00,'Borrowed'),(110,'Ikigai',299.00,'Available'),(111,'Sapiens',550.00,'Borrowed'),(112,'Homo Deus',600.00,'Available'),(113,'21 Lessons for the 21st Century',620.00,'Reserved'),(114,'CanΓÇÖt Hurt Me',470.00,'Available'),(115,'The Four Agreements',410.00,'Available'),(116,'Think and Grow Rich',360.00,'Borrowed'),(117,'Deep Work',490.00,'Available'),(118,'Digital Minimalism',400.00,'Available'),(119,'Grit',520.00,'Borrowed'),(120,'ManΓÇÖs Search for Meaning',310.00,'Available'),(121,'Rich Dad Poor Dad',450.00,'Available'),(122,'The 5 AM Club',480.00,'Reserved'),(123,'Start With Why',500.00,'Available'),(124,'The Subtle Art of Not Giving a F*ck',390.00,'Available'),(125,'Everything Is F*cked',410.00,'Borrowed'),(126,'Make Your Bed',370.00,'Available'),(127,'The Art of War',340.00,'Available'),(128,'Meditations',300.00,'Reserved'),(129,'12 Rules for Life',530.00,'Available'),(130,'The Daily Stoic',450.00,'Borrowed'),(131,'The Obstacle Is the Way',460.00,'Available'),(132,'Extreme Ownership',510.00,'Available'),(133,'Leaders Eat Last',490.00,'Available'),(134,'Principles',620.00,'Borrowed'),(135,'The Hard Thing About Hard Things',550.00,'Available'),(136,'Hooked',430.00,'Available'),(137,'The Lean Startup',400.00,'Available'),(138,'Zero to One',420.00,'Borrowed'),(139,'Crushing It!',460.00,'Reserved'),(140,'Steal Like an Artist',390.00,'Available'),(141,'Show Your Work',360.00,'Available'),(142,'Keep Going',370.00,'Available'),(143,'Tools of Titans',680.00,'Borrowed'),(144,'Tribe of Mentors',690.00,'Available'),(145,'Daring Greatly',510.00,'Available'),(146,'The Gifts of Imperfection',480.00,'Borrowed'),(147,'Rising Strong',520.00,'Available'),(148,'Braving the Wilderness',500.00,'Available'),(149,'Untamed',530.00,'Available'),(150,'Year of Yes',550.00,'Available');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowing_record`
--

DROP TABLE IF EXISTS `borrowing_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowing_record` (
  `RECORD_ID` int NOT NULL,
  `BORROWED_DATE` date DEFAULT NULL,
  `RETURN_DATE` date DEFAULT NULL,
  `BOOK_ID` int DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  PRIMARY KEY (`RECORD_ID`),
  KEY `member_id` (`MEMBER_ID`),
  CONSTRAINT `borrowing_record_ibfk_1` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowing_record`
--

LOCK TABLES `borrowing_record` WRITE;
/*!40000 ALTER TABLE `borrowing_record` DISABLE KEYS */;
INSERT INTO `borrowing_record` VALUES (1,'2024-01-10','2024-01-20',101,1),(2,'2024-01-15','2024-01-25',102,2),(3,'2024-01-20','2024-01-30',103,3),(4,'2024-01-25','2024-02-04',104,4),(5,'2024-02-01','2024-02-11',105,5),(6,'2024-02-05','2024-02-15',106,6),(7,'2024-02-10','2024-02-20',107,7),(8,'2024-02-15','2024-02-25',108,8),(9,'2024-02-20','2024-03-01',109,9),(10,'2024-03-01','2024-03-10',110,10),(11,'2024-03-05','2024-03-15',111,11),(12,'2024-03-10','2024-03-20',112,12),(13,'2024-03-15','2024-03-25',113,13),(14,'2024-03-20','2024-03-30',114,14),(15,'2024-03-25','2024-04-04',115,15),(16,'2024-03-30','2024-04-09',116,16),(17,'2024-04-01','2024-04-11',117,17),(18,'2024-04-05','2024-04-15',118,18),(19,'2024-04-10','2024-04-20',119,19),(20,'2024-04-15','2024-04-25',120,20),(21,'2024-04-20','2024-04-30',121,21),(22,'2024-04-25','2024-05-05',122,22),(23,'2024-05-01','2024-05-11',123,23),(24,'2024-05-05','2024-05-15',124,24),(25,'2024-05-10','2024-05-20',125,25),(26,'2024-05-15','2024-05-25',126,26),(27,'2024-05-20','2024-05-30',127,27),(28,'2024-05-25','2024-06-04',128,28),(29,'2024-06-01','2024-06-11',129,29),(30,'2024-06-05','2024-06-15',130,30),(31,'2024-06-10','2024-06-20',131,31),(32,'2024-06-15','2024-06-25',132,32),(33,'2024-06-20','2024-06-30',133,33),(34,'2024-06-25','2024-07-05',134,34),(35,'2024-07-01','2024-07-11',135,35),(36,'2024-07-05','2024-07-15',136,36),(37,'2024-07-10','2024-07-20',137,37),(38,'2024-07-15','2024-07-25',138,38),(39,'2024-07-20','2024-07-30',139,39),(40,'2024-07-25','2024-08-04',140,40),(41,'2024-08-01','2024-08-11',141,41),(42,'2024-08-05','2024-08-15',142,42),(43,'2024-08-10','2024-08-20',143,43),(44,'2024-08-15','2024-08-25',144,44),(45,'2024-08-20','2024-08-30',145,45),(46,'2024-08-25','2024-09-04',146,46),(47,'2024-09-01','2024-09-11',147,47),(48,'2024-09-05','2024-09-15',148,48),(49,'2024-09-10','2024-09-20',149,49),(50,'2024-09-15','2024-09-25',150,50);
/*!40000 ALTER TABLE `borrowing_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_staff`
--

DROP TABLE IF EXISTS `faculty_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_staff` (
  `FACULTY_ID` int NOT NULL,
  `FACULTY_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FACULTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_staff`
--

LOCK TABLES `faculty_staff` WRITE;
/*!40000 ALTER TABLE `faculty_staff` DISABLE KEYS */;
INSERT INTO `faculty_staff` VALUES (1,'Dr. Amit Sharma'),(2,'Prof. Neha Singh'),(3,'Dr. Rakesh Patel'),(4,'Prof. Kavita Joshi'),(5,'Dr. Sanjay Verma'),(6,'Prof. Priya Mehta'),(7,'Dr. Vijay Kumar'),(8,'Prof. Rina Das'),(9,'Dr. Manish Bhatt'),(10,'Prof. Swati Malhotra'),(11,'Dr. Pankaj Jain'),(12,'Prof. Lata Choudhary'),(13,'Dr. Sunita Gupta'),(14,'Prof. Rajesh Kaur'),(15,'Dr. Suresh Shah'),(16,'Prof. Neeraj Singh'),(17,'Dr. Ritu Patel'),(18,'Prof. Gaurav Sharma'),(19,'Dr. Priti Kumar'),(20,'Prof. Siddharth Verma'),(21,'Dr. Anita Reddy'),(22,'Prof. Arjun Das'),(23,'Dr. Reema Bhatt'),(24,'Prof. Aditya Malhotra'),(25,'Dr. Kavita Jain'),(26,'Prof. Nitin Choudhary'),(27,'Dr. Sunil Gupta'),(28,'Prof. Manish Kaur'),(29,'Dr. Rakesh Shah'),(30,'Prof. Shweta Mehta'),(31,'Dr. Vikram Joshi'),(32,'Prof. Neha Singh'),(33,'Dr. Rohit Patel'),(34,'Prof. Priya Sharma'),(35,'Dr. Ajay Kumar'),(36,'Prof. Kavita Verma'),(37,'Dr. Sunita Joshi'),(38,'Prof. Rina Bhatt'),(39,'Dr. Deepak Malhotra'),(40,'Prof. Maya Jain'),(41,'Dr. Pankaj Choudhary'),(42,'Prof. Lata Gupta'),(43,'Dr. Suresh Kaur'),(44,'Prof. Reema Shah'),(45,'Dr. Neeraj Singh'),(46,'Prof. Ritu Patel'),(47,'Dr. Gaurav Sharma'),(48,'Prof. Priti Kumar'),(49,'Dr. Siddharth Verma'),(50,'Prof. Anita Reddy');
/*!40000 ALTER TABLE `faculty_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine`
--

DROP TABLE IF EXISTS `fine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine` (
  `FINE_ID` int NOT NULL,
  `FINE_AMOUNT` decimal(10,2) DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  `FINE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`FINE_ID`),
  KEY `member_id` (`MEMBER_ID`),
  CONSTRAINT `fine_ibfk_1` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine`
--

LOCK TABLES `fine` WRITE;
/*!40000 ALTER TABLE `fine` DISABLE KEYS */;
INSERT INTO `fine` VALUES (1,50.00,1,'2024-01-22'),(2,30.00,2,'2024-02-10'),(3,40.00,3,'2024-02-25'),(4,25.00,4,'2024-03-02'),(5,60.00,5,'2024-03-15'),(6,20.00,6,'2024-03-28'),(7,45.00,7,'2024-04-01'),(8,35.00,8,'2024-04-11'),(9,50.00,9,'2024-04-20'),(10,30.00,10,'2024-04-25'),(11,70.00,11,'2024-05-01'),(12,25.00,12,'2024-05-08'),(13,55.00,13,'2024-05-13'),(14,60.00,14,'2024-05-17'),(15,30.00,15,'2024-05-20'),(16,40.00,16,'2024-05-23'),(17,45.00,17,'2024-05-25'),(18,20.00,18,'2024-05-28'),(19,55.00,19,'2024-06-01'),(20,35.00,20,'2024-06-03'),(21,60.00,21,'2024-06-05'),(22,30.00,22,'2024-06-07'),(23,45.00,23,'2024-06-08'),(24,25.00,24,'2024-06-09'),(25,50.00,25,'2024-06-10'),(26,30.00,26,'2024-06-11'),(27,40.00,27,'2024-06-12'),(28,55.00,28,'2024-06-13'),(29,20.00,29,'2024-06-14'),(30,45.00,30,'2024-06-15'),(31,60.00,31,'2024-06-16'),(32,25.00,32,'2024-06-17'),(33,35.00,33,'2024-06-18'),(34,50.00,34,'2024-06-19'),(35,30.00,35,'2024-06-20'),(36,40.00,36,'2024-06-21'),(37,20.00,37,'2024-06-22'),(38,55.00,38,'2024-06-23'),(39,60.00,39,'2024-06-24'),(40,25.00,40,'2024-06-25'),(41,45.00,41,'2024-06-26'),(42,30.00,42,'2024-06-27'),(43,50.00,43,'2024-06-28'),(44,35.00,44,'2024-06-29'),(45,55.00,45,'2024-06-30'),(46,40.00,46,'2024-07-01'),(47,20.00,47,'2024-07-02'),(48,60.00,48,'2024-07-03'),(49,30.00,49,'2024-07-04'),(50,45.00,50,'2024-07-05');
/*!40000 ALTER TABLE `fine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `GENRE_NAME` varchar(50) NOT NULL,
  `GENRE_TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GENRE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('Adventure','Fiction'),('Art','Non-Fiction'),('Astrology','Non-Fiction'),('Autobiography','Non-Fiction'),('Biography','Non-Fiction'),('Business','Non-Fiction'),('Children','Fiction'),('Classic','Fiction'),('Comics','Fiction'),('Cooking','Non-Fiction'),('Crafts','Non-Fiction'),('Drama','Fiction'),('Dystopian','Fiction'),('Economics','Non-Fiction'),('Education','Non-Fiction'),('Fairy Tale','Fiction'),('Fantasy','Fiction'),('Gardening','Non-Fiction'),('Graphic Novel','Fiction'),('Health','Non-Fiction'),('Historical Fiction','Fiction'),('Horror','Fiction'),('Humor','Fiction'),('Law','Non-Fiction'),('Memoir','Non-Fiction'),('Music','Non-Fiction'),('Mystery','Fiction'),('Mythology','Fiction'),('Parenting','Non-Fiction'),('Philosophy','Non-Fiction'),('Photography','Non-Fiction'),('Poetry','Fiction'),('Politics','Non-Fiction'),('Psychology','Non-Fiction'),('Religion','Non-Fiction'),('Romance','Fiction'),('Satire','Fiction'),('Science','Non-Fiction'),('Science Fiction','Fiction'),('Self-Help','Non-Fiction'),('Short Story','Fiction'),('Spirituality','Non-Fiction'),('Sports','Non-Fiction'),('Technology','Non-Fiction'),('Thriller','Fiction'),('Travel','Non-Fiction'),('True Crime','Non-Fiction'),('Urban','Fiction'),('Western','Fiction'),('Young Adult','Fiction');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `LIBRARY_ID` int NOT NULL,
  `LIBRARY_NAME` varchar(255) DEFAULT NULL,
  `LIBRARY_LOCATION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LIBRARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,'Central Public Library','New Delhi'),(2,'City Knowledge Hub','Mumbai'),(3,'Heritage Library','Kolkata'),(4,'Tech Reading Center','Bengaluru'),(5,'North Campus Library','Chandigarh'),(6,'South City Library','Chennai'),(7,'Urban Study Zone','Hyderabad'),(8,'Saraswati Public Library','Jaipur'),(9,'Dr. Kalam Reading Hall','Pune'),(10,'Mahatma Gandhi Library','Ahmedabad'),(11,'Eastern Book House','Guwahati'),(12,'National Digital Library','Bhopal'),(13,'Student Resource Library','Lucknow'),(14,'Literacy Central Library','Patna'),(15,'City Study Corner','Nagpur'),(16,'Open Book Centre','Thiruvananthapuram'),(17,'Gyan Bhawan Library','Ranchi'),(18,'ReadersΓÇÖ Paradise','Surat'),(19,'Rajiv Gandhi Knowledge Park','Vishakhapatnam'),(20,'State Academic Library','Dehradun');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_card`
--

DROP TABLE IF EXISTS `library_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_card` (
  `CARD_ID` int NOT NULL,
  `EXPIRY_DATE` date DEFAULT NULL,
  `CARD_STATUS` varchar(20) DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  PRIMARY KEY (`CARD_ID`),
  KEY `member_id` (`MEMBER_ID`),
  CONSTRAINT `library_card_ibfk_1` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_card`
--

LOCK TABLES `library_card` WRITE;
/*!40000 ALTER TABLE `library_card` DISABLE KEYS */;
INSERT INTO `library_card` VALUES (1,'2026-12-31','Active',1),(2,'2026-11-30','Active',2),(3,'2025-10-15','Expired',3),(4,'2027-01-01','Active',4),(5,'2026-06-20','Active',5),(6,'2026-08-12','Active',6),(7,'2025-09-09','Expired',7),(8,'2026-12-01','Active',8),(9,'2027-03-30','Active',9),(10,'2026-05-25','Active',10),(11,'2026-12-31','Active',11),(12,'2026-11-30','Active',12),(13,'2025-10-15','Expired',13),(14,'2027-01-01','Active',14),(15,'2026-06-20','Active',15),(16,'2026-08-12','Active',16),(17,'2025-09-09','Expired',17),(18,'2026-12-01','Active',18),(19,'2027-03-30','Active',19),(20,'2026-05-25','Active',20),(21,'2026-12-31','Active',21),(22,'2026-11-30','Active',22),(23,'2025-10-15','Expired',23),(24,'2027-01-01','Active',24),(25,'2026-06-20','Active',25),(26,'2025-11-30','Inactive',26),(27,'2026-05-15','Active',27),(28,'2027-01-20','Active',28),(29,'2025-09-10','Expired',29),(30,'2026-10-05','Active',30),(31,'2027-03-12','Active',31),(32,'2025-06-18','Inactive',32),(33,'2026-08-25','Active',33),(34,'2026-04-01','Expired',34),(35,'2027-12-12','Active',35),(36,'2026-07-22','Active',36),(37,'2025-10-30','Inactive',37),(38,'2026-02-28','Active',38),(39,'2026-06-15','Active',39),(40,'2025-12-31','Expired',40),(41,'2027-05-19','Active',41),(42,'2025-08-24','Inactive',42),(43,'2026-09-14','Active',43),(44,'2026-11-11','Active',44),(45,'2025-03-20','Expired',45),(46,'2026-01-01','Active',46),(47,'2027-07-07','Active',47),(48,'2025-04-25','Inactive',48),(49,'2026-03-03','Active',49),(50,'2026-12-01','Active',50);
/*!40000 ALTER TABLE `library_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_history`
--

DROP TABLE IF EXISTS `loan_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_history` (
  `LOAN_ID` int NOT NULL,
  `BOOK_ID` int DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  `LOAN_DATE` date DEFAULT NULL,
  PRIMARY KEY (`LOAN_ID`),
  KEY `member_id` (`MEMBER_ID`),
  CONSTRAINT `loan_history_ibfk_1` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_history`
--

LOCK TABLES `loan_history` WRITE;
/*!40000 ALTER TABLE `loan_history` DISABLE KEYS */;
INSERT INTO `loan_history` VALUES (1,101,1,'2024-01-15'),(2,102,2,'2024-01-20'),(3,103,3,'2024-02-01'),(4,104,4,'2024-02-10'),(5,105,5,'2024-03-05'),(6,106,6,'2024-03-12'),(7,107,7,'2024-03-18'),(8,108,8,'2024-04-01'),(9,109,9,'2024-04-10'),(10,110,10,'2024-04-15'),(11,111,11,'2024-04-20'),(12,112,12,'2024-04-25'),(13,113,13,'2024-05-01'),(14,114,14,'2024-05-05'),(15,115,15,'2024-05-10'),(16,116,16,'2024-05-12'),(17,117,17,'2024-05-15'),(18,118,18,'2024-05-17'),(19,119,19,'2024-05-20'),(20,120,20,'2024-05-22'),(21,121,21,'2024-06-01'),(22,122,22,'2024-06-03'),(23,123,23,'2024-06-05'),(24,124,24,'2024-06-07'),(25,125,25,'2024-06-10'),(26,126,26,'2024-06-12'),(27,127,27,'2024-06-15'),(28,128,28,'2024-06-17'),(29,129,29,'2024-06-20'),(30,130,30,'2024-06-21'),(31,131,31,'2024-07-01'),(32,132,32,'2024-07-03'),(33,133,33,'2024-07-05'),(34,134,34,'2024-07-07'),(35,135,35,'2024-07-10'),(36,136,36,'2024-07-12'),(37,137,37,'2024-07-15'),(38,138,38,'2024-07-17'),(39,139,39,'2024-07-20'),(40,140,40,'2024-07-22'),(41,141,41,'2024-07-25'),(42,142,42,'2024-07-27'),(43,143,43,'2024-07-30'),(44,144,44,'2024-08-01'),(45,145,45,'2024-08-03'),(46,146,46,'2024-08-05'),(47,147,47,'2024-08-07'),(48,148,48,'2024-08-09'),(49,149,49,'2024-08-11'),(50,150,50,'2024-08-13');
/*!40000 ALTER TABLE `loan_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `MEMBER_ID` int NOT NULL,
  `MEMBER_TYPE` varchar(50) DEFAULT NULL,
  `MEMBER_ADDRESS` varchar(255) DEFAULT NULL,
  `MEMBER_CONTACT_NO` varchar(20) DEFAULT NULL,
  `MEMBER_NAME_FIRST` varchar(50) DEFAULT NULL,
  `MEMBER_NAME_LAST` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Student','12 MG Road, Bengaluru, Karnataka','9876543210','Rohan','Sharma'),(2,'Faculty','45 Park Street, Kolkata, West Bengal','9123456789','Anjali','Mukherjee'),(3,'Student','78 Marine Drive, Mumbai, Maharashtra','9988776655','Vikram','Patel'),(4,'Staff','90 Residency Road, Chennai, Tamil Nadu','9000123456','Lakshmi','Iyer'),(5,'Student','34 Bapuji Nagar, Jaipur, Rajasthan','9876501234','Siddharth','Mehta'),(6,'Faculty','56 Salt Lake, Kolkata, West Bengal','9234567890','Neha','Banerjee'),(7,'Student','23 Ashoka Road, New Delhi','9567890123','Karan','Singh'),(8,'Staff','101 Brigade Road, Bengaluru, Karnataka','9876512345','Priya','Nair'),(9,'Faculty','88 MG Road, Pune, Maharashtra','9123098765','Rahul','Deshmukh'),(10,'Student','67 Jayanagar, Bengaluru, Karnataka','9988123456','Ananya','Gupta'),(11,'Student','15 Park Street, Kolkata, West Bengal','9876504321','Amit','Roy'),(12,'Faculty','44 Churchgate, Mumbai, Maharashtra','9123451234','Simran','Kaur'),(13,'Student','89 T Nagar, Chennai, Tamil Nadu','9988112233','Manish','Joshi'),(14,'Staff','22 MG Road, Bengaluru, Karnataka','9000456789','Sunita','Chatterjee'),(15,'Student','18 Connaught Place, New Delhi','9876123456','Aditya','Kapoor'),(16,'Faculty','55 Hauz Khas, New Delhi','9234012345','Pooja','Malhotra'),(17,'Student','33 Shivaji Nagar, Pune, Maharashtra','9567009876','Suresh','Reddy'),(18,'Staff','7 Banjara Hills, Hyderabad, Telangana','9876432109','Divya','Shah'),(19,'Faculty','26 Salt Lake City, Kolkata, West Bengal','9123009876','Arjun','Das'),(20,'Student','43 Juhu, Mumbai, Maharashtra','9987001234','Kavita','Rao'),(21,'Student','12 Gandhi Nagar, Ahmedabad, Gujarat','9876123098','Vikas','Joshi'),(22,'Faculty','56 Salt Lake Sector 1, Kolkata','9123456780','Meera','Nair'),(23,'Student','90 Old Airport Road, Bengaluru, Karnataka','9988771122','Ramesh','Gupta'),(24,'Staff','44 MG Road, Kochi, Kerala','9000765432','Shalini','Menon'),(25,'Student','33 Jayanagar, Bengaluru, Karnataka','9876541122','Sanjay','Agarwal'),(26,'Faculty','77 Marine Lines, Mumbai, Maharashtra','9123987654','Ritu','Chopra'),(27,'Student','22 Jalandhar, Punjab','9988001122','Harsh','Singh'),(28,'Staff','45 Sector 17, Chandigarh','9000345678','Anita','Kaur'),(29,'Faculty','67 Kalyani Nagar, Pune, Maharashtra','9123098760','Deepak','Kulkarni'),(30,'Student','80 Andheri West, Mumbai, Maharashtra','9988113344','Preeti','Joshi'),(31,'Student','34 Rajpath, Jaipur, Rajasthan','9876501122','Gaurav','Verma'),(32,'Faculty','19 MG Road, Bengaluru, Karnataka','9123456709','Nisha','Sharma'),(33,'Student','58 Lakshmi Nagar, Hyderabad, Telangana','9988774455','Rajesh','Patil'),(34,'Staff','24 Park Street, Kolkata, West Bengal','9000789123','Pallavi','Chatterjee'),(35,'Student','42 Marine Drive, Mumbai, Maharashtra','9876123987','Manoj','Desai'),(36,'Faculty','89 Residency Road, Bengaluru, Karnataka','9123456798','Kiran','Iyer'),(37,'Student','15 Bapuji Nagar, Jaipur, Rajasthan','9988771234','Suresh','Mehta'),(38,'Staff','36 Ashoka Road, New Delhi','9000123789','Seema','Khandelwal'),(39,'Faculty','90 Salt Lake, Kolkata, West Bengal','9123456012','Vijay','Banerjee'),(40,'Student','27 Juhu, Mumbai, Maharashtra','9988776677','Ritika','Rao'),(41,'Student','39 Gandhi Nagar, Ahmedabad, Gujarat','9876543098','Nitin','Joshi'),(42,'Faculty','58 Hauz Khas, New Delhi','9123409876','Divya','Malhotra'),(43,'Student','61 Shivaji Nagar, Pune, Maharashtra','9988778899','Ajay','Reddy'),(44,'Staff','17 Banjara Hills, Hyderabad, Telangana','9000786543','Sunil','Shah'),(45,'Faculty','34 Salt Lake City, Kolkata, West Bengal','9123098767','Alok','Das'),(46,'Student','77 Jayanagar, Bengaluru, Karnataka','9988112233','Sonal','Gupta'),(47,'Student','25 Connaught Place, New Delhi','9876109876','Mohit','Kapoor'),(48,'Staff','44 Hauz Khas, New Delhi','9000432109','Rekha','Malhotra'),(49,'Faculty','53 MG Road, Pune, Maharashtra','9123097654','Anil','Kulkarni'),(50,'Student','88 Andheri West, Mumbai, Maharashtra','9988990011','Kajal','Joshi');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overdue_notice`
--

DROP TABLE IF EXISTS `overdue_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overdue_notice` (
  `NOTICE_ID` int NOT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  `NOTICE_STATUS` varchar(20) DEFAULT NULL,
  `NOTICE_DATE` date DEFAULT NULL,
  `BOOK_ID` int DEFAULT NULL,
  PRIMARY KEY (`NOTICE_ID`),
  KEY `member_id` (`MEMBER_ID`),
  CONSTRAINT `overdue_notice_ibfk_1` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overdue_notice`
--

LOCK TABLES `overdue_notice` WRITE;
/*!40000 ALTER TABLE `overdue_notice` DISABLE KEYS */;
INSERT INTO `overdue_notice` VALUES (1,1,'Sent','2024-01-22',102),(2,2,'Resolved','2024-02-10',104),(3,3,'Sent','2024-02-25',109),(4,4,'Pending','2024-03-02',111),(5,5,'Sent','2024-03-15',116),(6,6,'Sent','2024-03-28',119),(7,7,'Resolved','2024-04-01',125),(8,8,'Sent','2024-04-11',130),(9,9,'Pending','2024-04-20',134),(10,10,'Resolved','2024-04-25',138),(11,11,'Sent','2024-05-01',143),(12,12,'Sent','2024-05-08',109),(13,13,'Pending','2024-05-13',116),(14,14,'Sent','2024-05-17',119),(15,15,'Resolved','2024-05-20',125),(16,16,'Sent','2024-05-23',130),(17,17,'Sent','2024-05-25',134),(18,18,'Pending','2024-05-28',138),(19,19,'Sent','2024-06-01',143),(20,20,'Resolved','2024-06-03',111),(21,21,'Pending','2024-06-05',125),(22,22,'Sent','2024-06-07',138),(23,23,'Sent','2024-06-08',134),(24,24,'Resolved','2024-06-09',109),(25,25,'Pending','2024-06-10',116),(26,26,'Sent','2024-06-11',119),(27,27,'Sent','2024-06-12',143),(28,28,'Pending','2024-06-13',130),(29,29,'Resolved','2024-06-14',125),(30,30,'Sent','2024-06-15',111),(31,31,'Sent','2024-06-16',109),(32,32,'Pending','2024-06-17',116),(33,33,'Sent','2024-06-18',119),(34,34,'Sent','2024-06-19',125),(35,35,'Resolved','2024-06-20',130),(36,36,'Sent','2024-06-21',134),(37,37,'Pending','2024-06-22',138),(38,38,'Sent','2024-06-23',143),(39,39,'Resolved','2024-06-24',116),(40,40,'Sent','2024-06-25',119),(41,41,'Pending','2024-06-26',125),(42,42,'Sent','2024-06-27',130),(43,43,'Sent','2024-06-28',134),(44,44,'Resolved','2024-06-29',138),(45,45,'Sent','2024-06-30',143),(46,46,'Pending','2024-07-01',111),(47,47,'Sent','2024-07-02',109),(48,48,'Resolved','2024-07-03',116),(49,49,'Sent','2024-07-04',119),(50,50,'Pending','2024-07-05',125);
/*!40000 ALTER TABLE `overdue_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PAYMENT_ID` int NOT NULL,
  `PAYMENT_DATE` date DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `member_id` (`MEMBER_ID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2024-01-05',1),(2,'2024-01-12',2),(3,'2024-01-15',3),(4,'2024-01-20',4),(5,'2024-01-25',5),(6,'2024-02-01',6),(7,'2024-02-05',7),(8,'2024-02-10',8),(9,'2024-02-15',9),(10,'2024-02-18',10),(11,'2024-02-22',11),(12,'2024-02-27',12),(13,'2024-03-01',13),(14,'2024-03-05',14),(15,'2024-03-10',15),(16,'2024-03-14',16),(17,'2024-03-19',17),(18,'2024-03-23',18),(19,'2024-03-28',19),(20,'2024-04-02',20),(21,'2024-04-06',21),(22,'2024-04-11',22),(23,'2024-04-16',23),(24,'2024-04-20',24),(25,'2024-04-25',25),(26,'2024-05-01',26),(27,'2024-05-05',27),(28,'2024-05-10',28),(29,'2024-05-15',29),(30,'2024-05-20',30),(31,'2024-05-25',31),(32,'2024-05-30',32),(33,'2024-06-04',33),(34,'2024-06-09',34),(35,'2024-06-14',35),(36,'2024-06-19',36),(37,'2024-06-24',37),(38,'2024-06-29',38),(39,'2024-07-04',39),(40,'2024-07-09',40),(41,'2024-07-14',41),(42,'2024-07-19',42),(43,'2024-07-24',43),(44,'2024-07-29',44),(45,'2024-08-03',45),(46,'2024-08-08',46),(47,'2024-08-13',47),(48,'2024-08-18',48),(49,'2024-08-23',49),(50,'2024-08-28',50);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `PUBLISHER_ID` int NOT NULL,
  `PUBLISHER_NAME_FIRST` varchar(50) DEFAULT NULL,
  `PUBLISHER_NAME_LAST` varchar(50) DEFAULT NULL,
  `PUBLISHER_LOCATION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PUBLISHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Rakesh','Jain','Delhi'),(2,'Sunita','Mehta','Mumbai'),(3,'Arun','Nair','Chennai'),(4,'Komal','Bhatt','Kolkata'),(5,'Deepak','Shah','Ahmedabad'),(6,'Nisha','Mishra','Pune'),(7,'Suresh','Kapoor','Bangalore'),(8,'Rekha','Gupta','Hyderabad'),(9,'Mahesh','Singh','Lucknow'),(10,'Anjali','Chatterjee','Jaipur'),(11,'Ravi','Patel','Bhopal'),(12,'Preeti','Kumar','Kochi'),(13,'Ajay','Joshi','Nagpur'),(14,'Shalini','Verma','Ludhiana'),(15,'Vivek','Reddy','Surat'),(16,'Manisha','Rao','Indore'),(17,'Akhil','Thakur','Patna'),(18,'Neelam','Desai','Ranchi'),(19,'Yash','Malhotra','Visakhapatnam'),(20,'Divya','Yadav','Thiruvananthapuram'),(21,'Kunal','Bose','Kanpur'),(22,'Shruti','Gill','Amritsar'),(23,'Arvind','Sharma','Rajkot'),(24,'Sneha','Dutta','Guwahati'),(25,'Pritam','Das','Mysore');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `STAFF_ID` int NOT NULL,
  `STAFF_NAME_FIRST` varchar(50) DEFAULT NULL,
  `STAFF_NAME_LAST` varchar(50) DEFAULT NULL,
  `STAFF_POSITION` varchar(50) DEFAULT NULL,
  `STAFF_SALARY` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Dev','Bajaj','Manager',50000.00),(2,'Ravi','Kumar','Librarian',35000.00),(3,'Sunita','Sharma','Assistant',28000.00),(4,'Amit','Singh','Technician',25000.00),(5,'Priya','Patel','Clerk',22000.00),(6,'Manoj','Verma','Manager',45000.00),(7,'Suman','Das','Technician',26000.00),(8,'Neeraj','Shah','Clerk',23000.00),(9,'Rekha','Joshi','Manager',46000.00),(10,'Karan','Malhotra','Librarian',36000.00),(11,'Vikram','Gupta','Assistant',29000.00),(12,'Seema','Reddy','Technician',25500.00),(13,'Ajay','Mehta','Clerk',21000.00),(14,'Pooja','Singh','Manager',47000.00),(15,'Rajesh','Nair','Librarian',35500.00),(16,'Anita','Kaur','Assistant',28500.00),(17,'Sunil','Patel','Technician',24500.00),(18,'Kavita','Jain','Clerk',22500.00),(19,'Deepak','Choudhary','Manager',48000.00),(20,'Suresh','Bhatt','Librarian',36500.00),(21,'Neha','Joshi','Assistant',27500.00),(22,'Arun','Das','Technician',26500.00),(23,'Maya','Sharma','Clerk',21500.00),(24,'Rohit','Kumar','Manager',45500.00),(25,'Divya','Singh','Librarian',35000.00),(26,'Kiran','Iyer','Assistant',28000.00),(27,'Sanjay','Reddy','Technician',25000.00),(28,'Nisha','Patel','Clerk',22000.00),(29,'Ajit','Verma','Manager',45000.00),(30,'Mitali','Shah','Librarian',36000.00),(31,'Gaurav','Joshi','Assistant',29000.00),(32,'Ritu','Kumar','Technician',25500.00),(33,'Vijay','Das','Clerk',21000.00),(34,'Swati','Malhotra','Manager',47000.00),(35,'Nitin','Singh','Librarian',35500.00),(36,'Shweta','Bhatt','Assistant',28500.00),(37,'Anil','Choudhary','Technician',24500.00),(38,'Pankaj','Jain','Clerk',22500.00),(39,'Lata','Reddy','Manager',48000.00),(40,'Sonal','Patel','Librarian',36500.00),(41,'Manish','Gupta','Assistant',27500.00),(42,'Reema','Kaur','Technician',26500.00),(43,'Aditya','Mehta','Clerk',21500.00),(44,'Neeraj','Joshi','Manager',45500.00),(45,'Rina','Singh','Librarian',35000.00),(46,'Rakesh','Das','Assistant',28000.00),(47,'Priti','Sharma','Technician',25000.00),(48,'Siddharth','Kumar','Clerk',22000.00),(49,'Varun','Patel','Manager',45000.00),(50,'Asha','Verma','Librarian',36000.00);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `STUDENT_ID` int NOT NULL,
  `STUDENT_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Arjun Singh'),(2,'Neha Sharma'),(3,'Rohit Patel'),(4,'Pooja Kumar'),(5,'Karan Verma'),(6,'Divya Joshi'),(7,'Vikram Nair'),(8,'Anita Reddy'),(9,'Suresh Iyer'),(10,'Seema Das'),(11,'Ajay Bhatt'),(12,'Priya Malhotra'),(13,'Manish Jain'),(14,'Rina Choudhary'),(15,'Deepak Gupta'),(16,'Sunita Kaur'),(17,'Rajesh Shah'),(18,'Kavita Mehta'),(19,'Maya Joshi'),(20,'Sanjay Singh'),(21,'Nisha Patel'),(22,'Vijay Sharma'),(23,'Swati Kumar'),(24,'Neeraj Verma'),(25,'Lata Reddy'),(26,'Pankaj Das'),(27,'Sonal Bhatt'),(28,'Aditya Malhotra'),(29,'Reema Jain'),(30,'Arun Choudhary'),(31,'Rakesh Gupta'),(32,'Shweta Kaur'),(33,'Nitin Shah'),(34,'Kiran Mehta'),(35,'Varun Joshi'),(36,'Asha Singh'),(37,'Ritu Patel'),(38,'Gaurav Sharma'),(39,'Priti Kumar'),(40,'Siddharth Verma'),(41,'Neha Reddy'),(42,'Vikram Das'),(43,'Anita Bhatt'),(44,'Manish Malhotra'),(45,'Priya Jain'),(46,'Rohit Choudhary'),(47,'Sunil Gupta'),(48,'Kavita Kaur'),(49,'Rajesh Shah'),(50,'Divya Mehta');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SUPPLIER_ID` int NOT NULL,
  `SUPPLIER_NAME_FIRST` varchar(50) DEFAULT NULL,
  `SUPPLIER_NAME_LAST` varchar(50) DEFAULT NULL,
  `SUPPLIER_LOCATION` varchar(255) DEFAULT NULL,
  `SUPPLIER_CONTACT_NO` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Amit','Verma','Delhi','9871000001'),(2,'Sneha','Singh','Mumbai','9871000002'),(3,'Rahul','Sharma','Kolkata','9871000003'),(4,'Neha','Gupta','Chennai','9871000004'),(5,'Vikram','Rao','Bangalore','9871000005'),(6,'Rita','Joshi','Hyderabad','9871000006'),(7,'Anil','Kumar','Pune','9871000007'),(8,'Priya','Yadav','Ahmedabad','9871000008'),(9,'Karan','Patel','Lucknow','9871000009'),(10,'Meera','Chopra','Jaipur','9871000010'),(11,'Sanjay','Sinha','Bhopal','9871000011'),(12,'Divya','Reddy','Kochi','9871000012'),(13,'Manoj','Thakur','Nagpur','9871000013'),(14,'Alisha','Kapoor','Ludhiana','9871000014'),(15,'Raj','Mishra','Surat','9871000015'),(16,'Pooja','Desai','Indore','9871000016'),(17,'Tarun','Malik','Patna','9871000017'),(18,'Isha','Nair','Ranchi','9871000018'),(19,'Dev','Chawla','Thiruvananthapuram','9871000019'),(20,'Anita','Rathore','Visakhapatnam','9871000020'),(21,'Rohan','Agarwal','Kanpur','9871000021'),(22,'Simran','Gill','Amritsar','9871000022'),(23,'Nitin','Shah','Rajkot','9871000023'),(24,'Tanvi','Bose','Guwahati','9871000024'),(25,'Kavya','Dutta','Mysore','9871000025');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-02 21:40:17
