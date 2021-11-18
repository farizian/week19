-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

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
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Main Course'),(2,'Coffee'),(3,'dessert'),(4,'pudding'),(5,'Ice Cream'),(6,'Ice Tea'),(7,'thai tea'),(14,'makanan ringan');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(555) DEFAULT NULL,
  `disc` varchar(45) DEFAULT NULL,
  `prdname` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (83,'554318372.png','10%','Veggie Tomato Mix',34000,1,'R'),(85,'67203214.png','13%','Summer Fried Rice',32000,1,'R'),(86,'18736230.png','','Creamy Ice Latte',27000,2,'R'),(87,'386378701.png','20%','Drum Stick',30000,1,'R'),(88,'532943002.png','','Salty Rice',20000,1,'R'),(89,'899937278.png','18%','Summer Fried Rice',32010,1,'L'),(90,'222664874.png','','Creamy Ice Latte',27010,1,'L'),(91,'280735087.png','','Veggie Tomato Mix',34010,1,'L'),(92,'92006017.png','22%','Hazelnut Latte',25010,2,'L'),(93,'22235314.png','','Summer Fried Rice',32020,1,'XL'),(94,'661594717.png','10%','Creamy Ice Latte',27020,2,'XL'),(95,'554318372.png','','Veggie Tomato Mix',34020,1,'XL'),(96,'752121497.png','','Hazelnut Latte',25020,2,'XL'),(97,'386378701.png','','Drum Stick',30010,1,'L'),(98,'386378701.png','','Drum Stick',30020,1,'XL'),(99,'532943002.png','','Salty Rice',20010,1,'L'),(100,'532943002.png','','Salty Rice',20020,1,'XL'),(118,'622723987.png','','Pinky Promise',4000,2,'L'),(156,'506741096.png','10%','ayam geprek',20000,6,'L');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promoTitle` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (1,'HAPPY MOTHER’S DAY!','Get one of our favorite menu for free!','780624835.png'),(2,'Get a cup of coffee for free on sunday morning','Only at 7 to 9 AM','382685296.png'),(3,'HAPPY HALLOWEEN!','Do you like chicken wings? Get 1 free only if you buy pinky promise','722661557.png'),(4,'HAPPY WOMEN’S DAY!','Get one of our product for free!','692832291.png');
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_ibfk_1` (`user_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (19,1,'jalan333','cod',30001,2000,0,32005,NULL),(20,1,'jalan333','bank',30001,2000,0,32005,NULL),(21,1,'jalan333','bank',30001,2000,0,32005,NULL),(22,2,'kampung durian runtuh','cod',300001,20,0,300021,NULL),(23,13,'kampung anggur aja','bank',400002,40,40,400021,1),(25,NULL,'jalan kucing','bank',660002,60,60,600021,NULL),(74,6,'jalan berang','bank',660002,60,60,600021,NULL),(81,20,'jalan berang','bank',660002,60,60,600021,NULL),(91,20,'jalan berang','bank',660002,60,60,600021,NULL),(98,10,'jalan berang2','bank',660002,60,60,600021,0),(99,20,'jalan berang2','bank',660002,60,60,600021,0),(105,20,'jalan berang2','bank',660002,60,60,600021,0),(107,NULL,'jalan berang2','bank',86020,200,2000,88220,1),(108,NULL,'jl.mana yah lupa aquh ingetin dung','card',86020,200,2000,88220,1),(109,NULL,'jl.mana yah lupa','bank',92040,200,2000,94240,1),(110,NULL,'jl. kaliidup raya','bank',52010,200,2000,54210,0),(111,NULL,'jl.mana yah lupa','card',59010,200,2000,61210,0),(112,NULL,'jl.mana yah lupa','bank',93030,200,3000,96230,0),(113,77,'jl.jl tokyo','card',118020,200,2000,120220,0),(114,77,'jl.jl jujutsu','bank',27000,200,1000,28200,1),(115,77,'jl.jl tokyo','bank',54000,200,1000,55200,1),(116,77,'jl.jl tokyo','card',27000,200,1000,28200,0),(117,77,'jl.jl tokyo','card',30000,200,1000,31200,1),(118,77,'jl.jl tokyo','card',34000,200,1000,35200,1),(119,77,'jl.jl tokyo','card',27000,200,1000,28200,1),(120,77,'jl.jl tokyo','bank',32000,200,1000,33200,1),(121,77,'jl.jl tokyo','card',32000,200,1000,33200,1),(148,77,'jl.jl tokyo','bank',109020,200,4000,113220,1),(152,77,'jl.jl tokyo','card',72000,200,2000,74200,1),(153,346,'jalan jalan','card',60000,200,1000,61200,1),(154,346,'null','bank',161040,200,4000,165240,1);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_details_ibfk_2` (`product_id`),
  KEY `transaction_details_ibfk_3` (`transaction_id`),
  CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `transaction_details_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_details`
--

LOCK TABLES `transaction_details` WRITE;
/*!40000 ALTER TABLE `transaction_details` DISABLE KEYS */;
INSERT INTO `transaction_details` VALUES (19,22,NULL,20021,4),(20,23,89,40022,2),(21,23,88,40022,2),(24,25,NULL,6002,6),(25,25,NULL,6,6),(124,81,NULL,6002,6),(125,81,NULL,6,6),(134,91,NULL,6002,6),(135,91,NULL,6,6),(142,98,89,60000,6),(143,98,88,600,6),(144,99,89,60000,6),(145,99,88,600,6),(146,105,89,60000,6),(147,105,88,600,6),(148,107,85,32000,1),(149,107,90,27010,2),(150,108,85,32000,1),(151,108,90,27010,2),(152,109,85,32000,1),(153,109,98,30020,2),(154,110,89,32010,1),(155,110,88,20000,1),(156,111,85,32000,1),(157,111,90,27010,1),(158,112,93,32020,1),(159,112,86,27000,1),(160,112,91,34010,1),(161,113,86,27000,2),(162,113,89,32010,2),(163,114,86,27000,1),(164,115,86,27000,2),(165,116,86,27000,1),(166,117,87,30000,1),(167,118,83,34000,1),(168,119,86,27000,1),(169,120,85,32000,1),(170,121,85,32000,1),(177,148,85,32000,1),(178,148,88,20000,1),(179,148,87,30000,1),(180,148,94,27020,1),(187,152,85,32000,1),(188,152,88,20000,2),(189,153,87,30000,2),(190,154,83,34000,2),(191,154,89,32010,2),(192,154,118,4000,1),(193,154,96,25020,1);
/*!40000 ALTER TABLE `transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(55) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'zul.jpg','zulaikha','nirmala','1997-07-08','female','zulaikha','zulaikha17@gmail.com','15928hahas','Iskandar Street no. 67 Block A Near Bus Stop','938492830',1),(2,'asep.png','asep','bensin','1987-09-12','male','asep','asep@gmail.com','8739yahayuk','jl kamboja 10','89784683',1),(3,'andri.jpg','andri','tnm','1987-02-15','male','andri','lunatic@gmail.com','8493uhuk','jl bekasi 87','2147483647',1),(6,'asepp.jpg','asepp','bensinnn','1987-09-11','male','asep','asep@gmail.com','$2b$10$Vc9XFjAtgI38.1RQsNjrUOLi7o.GjBJlInbZwO','jl kamboja 10','89784683',1),(10,'frz.jpg','fariz','irfan','1997-07-05','male','panjul','panjul@gmail.com','$2b$10$udMOfipwEdFo9XRis10/GuWtVSp5bCen/OJMoy','Jl lain kehatimu','938492830',1),(12,'jeny.jpg','jenny','ferguson','1998-04-17','female','jenny','jenny@gmail.com','$2b$10$akzQY45bsimTEiChRp4LaOjPE6UT3fzN1CYE4lAopkV9S3XQzd5xC','jl kamboja','2147483647',1),(13,'510692058.jpg','Fariz','Irfan','1997-08-08','male','farizian','farizian@gmail.com','$2b$10$6vckMc/8r.0uCiyncM1Dye6f79Vf/VNLAJn5mT3bbVrzpXXffpZ4K','jl. Jujutsu Kaisen','0898',0),(14,'688301648.jpg','agung','setia','1997-02-14','male','agung','agung@gmail.com','$2b$10$Vq7k7oIT7AtHOsuq7uGFye7J2SPMN0.4XaqAnw5QWQ1zUwAoXPopa','jl.mulu capek','123',1),(19,'200842387.jpg','Nobara','Rifai','1997-08-05','female','nobara','nobara@gmail.com','$2b$10$esI4NUKX.lGAR2zbsaUvM.4rY7mPrsPbVLDsvEMl2hL4X6d6LsL9S','jl.mana yah lupa','898',1),(20,NULL,NULL,NULL,'1997-08-21','female','nadyta','nadyta@gmail.com','$2b$10$rsIaXnjLoYXF6C2MqD0YjuADp3kbKAlr1EnmHioknqAzZ.ryO7JQa',NULL,'89394',1),(77,'815949761.jpg','nobara','Rifai','2021-10-24','female','nobara','nobara1@gmail.com','$2b$10$Xt6KD7v8TySj53Elq7amr.spMl0B1d6Op1kF9w9vwAMb08s67c/2a','jl.jl tokyo','123',1),(100,'274006195.jpg','Nobara','Rifai','1997-08-07','female','nobara','nobara2@gmail.com','$2b$10$9QfpzNmusXO2TfuD3/yJneZlYGa6aAJ.Bm4ACJDHaJYo34wxw4YIG','jl.jl','123',0),(330,'841537163.jpg','Nobara','Rifai','1997-08-07','female','nobara','nobara3@gmail.com','$2b$10$ToHvp5slmml7qExhu1ujZeP30n5FsYqd3UgqCWPi5heOzXSffYLf.','jl.jl','123',0),(337,'765491435.jpg','Nobara','Rifai','1997-08-07','female','nobara','nobara@gmail.com','$2b$10$b1EnwEm1WJx0us44XzAJCOuBt4iwCPXap3HlpVMSw742FGGOQ6jvq','jl.jl','123',0),(339,'172452997.jpg','Nobara','Kugisaki','1997-08-07','female','nobara','nobara@gmail.com','$2b$10$gNuCU5OSou0XOPnY.PkyH.nCeI.2cEuq/ZHWphENAW9y7.G3V1OY2','jl.mulu capek','123',1),(344,NULL,NULL,NULL,NULL,NULL,'','haikal@gmail.com','$2b$10$jpF9uUtOGHvNlPGWr0r5iOjhfJWBHvdDJC1vOdgPnhqmcGeJVXkRa',NULL,'089',1),(345,NULL,NULL,NULL,NULL,NULL,'','hani@gmail.com','$2b$10$CQqNY36kP.bo6R2ci5lZOOLHiu29JdKZgvEp3TQzWPgyK4lQbpqV2',NULL,'123',1),(346,'689699494.png','lulu','lula','2021-11-19','female','lulu','lulu@gmail.com','$2b$10$LP4TQW9BblR6YChBkx5TnuqoDn3irmRCMf02pHF5hufMVsh.WnXw2','null','123',1);
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

-- Dump completed on 2021-11-18 15:51:52
