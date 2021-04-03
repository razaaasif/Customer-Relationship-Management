# Customer-Relationship-Management

<h1 >How to Run this Application in Eclipse</h1>
<h3>Run these Sql Query in Your MySql Databse</h3>



CREATE USER 'hbstudent'@'localhost' IDENTIFIED BY 'hbstudent';
GRANT ALL PRIVILEGES ON * . * TO 'hbstudent'@'localhost';
ALTER USER 'hbstudent'@'localhost' IDENTIFIED WITH mysql_native_password BY 'hbstudent';
                                                     
                                                     
                                                     
                                                     
<h1>after creating user and password  Create Database name customer_tracker y below query<h1>
CREATE DATABASE  IF NOT EXISTS `customer_tracker` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `customer_tracker`;


<h2> now if you want to give create a table and insert data in table then run below query or other wise you are good to run the application .<h1>







DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile_number` int(10) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;

INSERT INTO `customer` VALUES 
	(1,'Aasif','Raza',9123158952,'aasifraza.com'),
	(2,'Mohit','Chauhan',0123456789,'mohitchauhan@gmail.com'),
	(3,'Arjun','Raj',1234789654,'arjunraj@gmail.com'),
	(4,'Sonu','Shekhar',4789632547,'sonushekhar@gmail.com'),
	(5,'Sarfraz','Alam',1596347896,'sarfrazalam@gmail.com'),
    (6,'Tauhid','Raja',4589654123,'tauhidraja@gmail.com');
    

/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
