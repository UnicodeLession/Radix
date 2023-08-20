-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: phpbasic
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `category_id` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `thumbnail` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `duplicate` int(11) DEFAULT 0,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`),
  CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (9,'Việt Nam hết hy vọng qua vòng bảng World Cup nữ','viet-nam-het-hy-vong-qua-vong-bang-world-cup-nu',6,3,'&#60;p&#62;Bồ Đ&#38;agrave;o Nha lần đầu dự World Cup nữ như Việt Nam, nhưng tr&#38;igrave;nh độ vượt trội. Đại diện ch&#38;acirc;u &#38;Acirc;u gi&#38;agrave;u tốc độ, sức mạnh v&#38;agrave; kỹ thuật. Việt Nam dường như chưa đ&#38;aacute;nh gi&#38;aacute; đ&#38;uacute;ng khả năng tấn c&#38;ocirc;ng của đối thủ v&#38;agrave; đẩy đội h&#38;igrave;nh l&#38;ecirc;n cao từ đầu. Đại diện Đ&#38;ocirc;ng Nam &#38;Aacute; kiếm được quả phạt g&#38;oacute;c đầu ti&#38;ecirc;n tại giải ngay ở ph&#38;uacute;t thứ ba, rồi sau đ&#38;oacute; tho&#38;aacute;t thua hai lần nhờ c&#38;aacute;c pha dứt điểm hỏng của Jessica Silva v&#38;agrave; Kika Nazareth ở thế trống trải. B&#38;agrave;n thắng sớm đến trong thế trận đ&#38;ocirc;i c&#38;ocirc;ng. Ph&#38;uacute;t thứ 7, Sousa Alves tho&#38;aacute;t xuống b&#38;ecirc;n c&#38;aacute;nh phải, tạt vừa tầm để Encarnacao lao l&#38;ecirc;n đệm một chạm, đ&#38;aacute;nh bại thủ th&#38;agrave;nh Kim Thanh.&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;Do thể h&#38;igrave;nh v&#38;agrave; thể lực thua k&#38;eacute;m, hai tiền vệ trung t&#38;acirc;m lại d&#38;acirc;ng cao, hệ thống ph&#38;ograve;ng ngự của Việt Nam nhanh ch&#38;oacute;ng bị bẻ gẫy khi Bồ Đ&#38;agrave;o Nha tổ chức tấn c&#38;ocirc;ng. Ph&#38;uacute;t 21, Việt Nam thủng b&#38;agrave;n thứ hai. Sau c&#38;uacute; ph&#38;aacute;t l&#38;ecirc;n của Kim Thanh, Bồ Đ&#38;agrave;o Nha cướp b&#38;oacute;ng v&#38;agrave; phản c&#38;ocirc;ng. Lần n&#38;agrave;y, Encarnacao sắm vai người kiến tạo với c&#38;uacute; tỉa b&#38;oacute;ng cho Kika Nazareth tho&#38;aacute;t xuống ghi b&#38;agrave;n.&#60;/p&#62;&#13;&#10;',0,'/radix/uploads/images/blogs/woman_football.jpg','Trận gặp Bồ Đào Nha được xem như cơ hội lớn nhất để Việt Nam ghi dấu ấn tại World Cup, khi đây là đối thủ nhẹ hơn Mỹ và Hà Lan tại bảng E. Việt Nam khởi đầu đầy hứa hẹn, tràn lên từ sớm. Tuy nhiên, cách tiếp cận trận đấu hưng phấn và mạo hiểm khiến các học trò Mai Đức Chung sớm thủng lưới, qua đó đánh mất thế chủ động.',3,'2023-07-27 20:43:15',NULL),(10,'Việt Nam hết hy vọng qua vòng bảng World Cup nữ (1)','viet-nam-het-hy-vong-qua-vong-bang-world-cup-nu',6,3,'&#60;p&#62;Bồ Đ&#38;agrave;o Nha lần đầu dự World Cup nữ như Việt Nam, nhưng tr&#38;igrave;nh độ vượt trội. Đại diện ch&#38;acirc;u &#38;Acirc;u gi&#38;agrave;u tốc độ, sức mạnh v&#38;agrave; kỹ thuật. Việt Nam dường như chưa đ&#38;aacute;nh gi&#38;aacute; đ&#38;uacute;ng khả năng tấn c&#38;ocirc;ng của đối thủ v&#38;agrave; đẩy đội h&#38;igrave;nh l&#38;ecirc;n cao từ đầu. Đại diện Đ&#38;ocirc;ng Nam &#38;Aacute; kiếm được quả phạt g&#38;oacute;c đầu ti&#38;ecirc;n tại giải ngay ở ph&#38;uacute;t thứ ba, rồi sau đ&#38;oacute; tho&#38;aacute;t thua hai lần nhờ c&#38;aacute;c pha dứt điểm hỏng của Jessica Silva v&#38;agrave; Kika Nazareth ở thế trống trải. B&#38;agrave;n thắng sớm đến trong thế trận đ&#38;ocirc;i c&#38;ocirc;ng. Ph&#38;uacute;t thứ 7, Sousa Alves tho&#38;aacute;t xuống b&#38;ecirc;n c&#38;aacute;nh phải, tạt vừa tầm để Encarnacao lao l&#38;ecirc;n đệm một chạm, đ&#38;aacute;nh bại thủ th&#38;agrave;nh Kim Thanh.&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;Do thể h&#38;igrave;nh v&#38;agrave; thể lực thua k&#38;eacute;m, hai tiền vệ trung t&#38;acirc;m lại d&#38;acirc;ng cao, hệ thống ph&#38;ograve;ng ngự của Việt Nam nhanh ch&#38;oacute;ng bị bẻ gẫy khi Bồ Đ&#38;agrave;o Nha tổ chức tấn c&#38;ocirc;ng. Ph&#38;uacute;t 21, Việt Nam thủng b&#38;agrave;n thứ hai. Sau c&#38;uacute; ph&#38;aacute;t l&#38;ecirc;n của Kim Thanh, Bồ Đ&#38;agrave;o Nha cướp b&#38;oacute;ng v&#38;agrave; phản c&#38;ocirc;ng. Lần n&#38;agrave;y, Encarnacao sắm vai người kiến tạo với c&#38;uacute; tỉa b&#38;oacute;ng cho Kika Nazareth tho&#38;aacute;t xuống ghi b&#38;agrave;n.&#60;/p&#62;&#13;&#10;',0,'/radix/uploads/images/blogs/woman_football.jpg','Trận gặp Bồ Đào Nha được xem như cơ hội lớn nhất để Việt Nam ghi dấu ấn tại World Cup, khi đây là đối thủ nhẹ hơn Mỹ và Hà Lan tại bảng E. Việt Nam khởi đầu đầy hứa hẹn, tràn lên từ sớm. Tuy nhiên, cách tiếp cận trận đấu hưng phấn và mạo hiểm khiến các học trò Mai Đức Chung sớm thủng lưới, qua đó đánh mất thế chủ động.',1,'2023-07-27 20:43:23',NULL),(11,'Việt Nam hết hy vọng qua vòng bảng World Cup nữ (1) (1)','viet-nam-het-hy-vong-qua-vong-bang-world-cup-nu',6,3,'&#60;p&#62;Bồ Đ&#38;agrave;o Nha lần đầu dự World Cup nữ như Việt Nam, nhưng tr&#38;igrave;nh độ vượt trội. Đại diện ch&#38;acirc;u &#38;Acirc;u gi&#38;agrave;u tốc độ, sức mạnh v&#38;agrave; kỹ thuật. Việt Nam dường như chưa đ&#38;aacute;nh gi&#38;aacute; đ&#38;uacute;ng khả năng tấn c&#38;ocirc;ng của đối thủ v&#38;agrave; đẩy đội h&#38;igrave;nh l&#38;ecirc;n cao từ đầu. Đại diện Đ&#38;ocirc;ng Nam &#38;Aacute; kiếm được quả phạt g&#38;oacute;c đầu ti&#38;ecirc;n tại giải ngay ở ph&#38;uacute;t thứ ba, rồi sau đ&#38;oacute; tho&#38;aacute;t thua hai lần nhờ c&#38;aacute;c pha dứt điểm hỏng của Jessica Silva v&#38;agrave; Kika Nazareth ở thế trống trải. B&#38;agrave;n thắng sớm đến trong thế trận đ&#38;ocirc;i c&#38;ocirc;ng. Ph&#38;uacute;t thứ 7, Sousa Alves tho&#38;aacute;t xuống b&#38;ecirc;n c&#38;aacute;nh phải, tạt vừa tầm để Encarnacao lao l&#38;ecirc;n đệm một chạm, đ&#38;aacute;nh bại thủ th&#38;agrave;nh Kim Thanh.&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;Do thể h&#38;igrave;nh v&#38;agrave; thể lực thua k&#38;eacute;m, hai tiền vệ trung t&#38;acirc;m lại d&#38;acirc;ng cao, hệ thống ph&#38;ograve;ng ngự của Việt Nam nhanh ch&#38;oacute;ng bị bẻ gẫy khi Bồ Đ&#38;agrave;o Nha tổ chức tấn c&#38;ocirc;ng. Ph&#38;uacute;t 21, Việt Nam thủng b&#38;agrave;n thứ hai. Sau c&#38;uacute; ph&#38;aacute;t l&#38;ecirc;n của Kim Thanh, Bồ Đ&#38;agrave;o Nha cướp b&#38;oacute;ng v&#38;agrave; phản c&#38;ocirc;ng. Lần n&#38;agrave;y, Encarnacao sắm vai người kiến tạo với c&#38;uacute; tỉa b&#38;oacute;ng cho Kika Nazareth tho&#38;aacute;t xuống ghi b&#38;agrave;n.&#60;/p&#62;&#13;&#10;',0,'/radix/uploads/images/blogs/woman_football.jpg','Trận gặp Bồ Đào Nha được xem như cơ hội lớn nhất để Việt Nam ghi dấu ấn tại World Cup, khi đây là đối thủ nhẹ hơn Mỹ và Hà Lan tại bảng E. Việt Nam khởi đầu đầy hứa hẹn, tràn lên từ sớm. Tuy nhiên, cách tiếp cận trận đấu hưng phấn và mạo hiểm khiến các học trò Mai Đức Chung sớm thủng lưới, qua đó đánh mất thế chủ động.',0,'2023-07-27 20:43:24',NULL),(12,'Việt Nam hết hy vọng qua vòng bảng World Cup nữ (2)','viet-nam-het-hy-vong-qua-vong-bang-world-cup-nu',6,3,'&#60;p&#62;Bồ Đ&#38;agrave;o Nha lần đầu dự World Cup nữ như Việt Nam, nhưng tr&#38;igrave;nh độ vượt trội. Đại diện ch&#38;acirc;u &#38;Acirc;u gi&#38;agrave;u tốc độ, sức mạnh v&#38;agrave; kỹ thuật. Việt Nam dường như chưa đ&#38;aacute;nh gi&#38;aacute; đ&#38;uacute;ng khả năng tấn c&#38;ocirc;ng của đối thủ v&#38;agrave; đẩy đội h&#38;igrave;nh l&#38;ecirc;n cao từ đầu. Đại diện Đ&#38;ocirc;ng Nam &#38;Aacute; kiếm được quả phạt g&#38;oacute;c đầu ti&#38;ecirc;n tại giải ngay ở ph&#38;uacute;t thứ ba, rồi sau đ&#38;oacute; tho&#38;aacute;t thua hai lần nhờ c&#38;aacute;c pha dứt điểm hỏng của Jessica Silva v&#38;agrave; Kika Nazareth ở thế trống trải. B&#38;agrave;n thắng sớm đến trong thế trận đ&#38;ocirc;i c&#38;ocirc;ng. Ph&#38;uacute;t thứ 7, Sousa Alves tho&#38;aacute;t xuống b&#38;ecirc;n c&#38;aacute;nh phải, tạt vừa tầm để Encarnacao lao l&#38;ecirc;n đệm một chạm, đ&#38;aacute;nh bại thủ th&#38;agrave;nh Kim Thanh.&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;Do thể h&#38;igrave;nh v&#38;agrave; thể lực thua k&#38;eacute;m, hai tiền vệ trung t&#38;acirc;m lại d&#38;acirc;ng cao, hệ thống ph&#38;ograve;ng ngự của Việt Nam nhanh ch&#38;oacute;ng bị bẻ gẫy khi Bồ Đ&#38;agrave;o Nha tổ chức tấn c&#38;ocirc;ng. Ph&#38;uacute;t 21, Việt Nam thủng b&#38;agrave;n thứ hai. Sau c&#38;uacute; ph&#38;aacute;t l&#38;ecirc;n của Kim Thanh, Bồ Đ&#38;agrave;o Nha cướp b&#38;oacute;ng v&#38;agrave; phản c&#38;ocirc;ng. Lần n&#38;agrave;y, Encarnacao sắm vai người kiến tạo với c&#38;uacute; tỉa b&#38;oacute;ng cho Kika Nazareth tho&#38;aacute;t xuống ghi b&#38;agrave;n.&#60;/p&#62;&#13;&#10;',9,'/radix/uploads/images/blogs/woman_football.jpg','Trận gặp Bồ Đào Nha được xem như cơ hội lớn nhất để Việt Nam ghi dấu ấn tại World Cup, khi đây là đối thủ nhẹ hơn Mỹ và Hà Lan tại bảng E. Việt Nam khởi đầu đầy hứa hẹn, tràn lên từ sớm. Tuy nhiên, cách tiếp cận trận đấu hưng phấn và mạo hiểm khiến các học trò Mai Đức Chung sớm thủng lưới, qua đó đánh mất thế chủ động.',1,'2023-07-27 20:43:26',NULL),(13,'Việt Nam hết hy vọng qua vòng bảng World Cup nữ (3)','viet-nam-het-hy-vong-qua-vong-bang-world-cup-nu',6,4,'&#60;p&#62;Bồ Đ&#38;agrave;o Nha lần đầu dự World Cup nữ như Việt Nam, nhưng tr&#38;igrave;nh độ vượt trội. Đại diện ch&#38;acirc;u &#38;Acirc;u gi&#38;agrave;u tốc độ, sức mạnh v&#38;agrave; kỹ thuật. Việt Nam dường như chưa đ&#38;aacute;nh gi&#38;aacute; đ&#38;uacute;ng khả năng tấn c&#38;ocirc;ng của đối thủ v&#38;agrave; đẩy đội h&#38;igrave;nh l&#38;ecirc;n cao từ đầu. Đại diện Đ&#38;ocirc;ng Nam &#38;Aacute; kiếm được quả phạt g&#38;oacute;c đầu ti&#38;ecirc;n tại giải ngay ở ph&#38;uacute;t thứ ba, rồi sau đ&#38;oacute; tho&#38;aacute;t thua hai lần nhờ c&#38;aacute;c pha dứt điểm hỏng của Jessica Silva v&#38;agrave; Kika Nazareth ở thế trống trải. B&#38;agrave;n thắng sớm đến trong thế trận đ&#38;ocirc;i c&#38;ocirc;ng. Ph&#38;uacute;t thứ 7, Sousa Alves tho&#38;aacute;t xuống b&#38;ecirc;n c&#38;aacute;nh phải, tạt vừa tầm để Encarnacao lao l&#38;ecirc;n đệm một chạm, đ&#38;aacute;nh bại thủ th&#38;agrave;nh Kim Thanh.&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;Do thể h&#38;igrave;nh v&#38;agrave; thể lực thua k&#38;eacute;m, hai tiền vệ trung t&#38;acirc;m lại d&#38;acirc;ng cao, hệ thống ph&#38;ograve;ng ngự của Việt Nam nhanh ch&#38;oacute;ng bị bẻ gẫy khi Bồ Đ&#38;agrave;o Nha tổ chức tấn c&#38;ocirc;ng. Ph&#38;uacute;t 21, Việt Nam thủng b&#38;agrave;n thứ hai. Sau c&#38;uacute; ph&#38;aacute;t l&#38;ecirc;n của Kim Thanh, Bồ Đ&#38;agrave;o Nha cướp b&#38;oacute;ng v&#38;agrave; phản c&#38;ocirc;ng. Lần n&#38;agrave;y, Encarnacao sắm vai người kiến tạo với c&#38;uacute; tỉa b&#38;oacute;ng cho Kika Nazareth tho&#38;aacute;t xuống ghi b&#38;agrave;n.&#60;/p&#62;&#13;&#10;',8,'/radix/uploads/images/blogs/woman_football.jpg','Trận gặp Bồ Đào Nha được xem như cơ hội lớn nhất để Việt Nam ghi dấu ấn tại World Cup, khi đây là đối thủ nhẹ hơn Mỹ và Hà Lan tại bảng E. Việt Nam khởi đầu đầy hứa hẹn, tràn lên từ sớm. Tuy nhiên, cách tiếp cận trận đấu hưng phấn và mạo hiểm khiến các học trò Mai Đức Chung sớm thủng lưới, qua đó đánh mất thế chủ động.',2,'2023-07-27 20:43:28','2023-08-18 10:22:06');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `duplicate` int(11) DEFAULT 0,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `blog_categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (3,'Kiến thức','kien-thuc',3,1,'2021-11-17 15:08:47','2022-01-22 19:55:57'),(4,'Tin thị trường','tin-thi-truong',3,1,'2021-11-17 15:08:54','2022-01-22 19:55:49'),(8,'Chia sẻ kinh nghiệm','chia-se-kinh-nghiem-2',3,0,'2021-11-17 15:16:40','2021-11-17 15:18:20');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `blog_id` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0 COMMENT '0: Chưa duyệt 1: Đã duyệt',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (2,'Hoàng An','hoangan.web@gmail.com','https://unicode.vn','test comment',0,7,NULL,1,'2021-12-27 14:42:26',NULL),(3,'Văn Quân','vanquan@gmail.com','','Tôi đang viết comment',0,7,NULL,1,'2021-12-27 14:43:50',NULL),(4,'Anh Tuấn','hoanganit19@gmail.com','','Anh tuấn comment',0,7,NULL,1,'2021-12-27 16:49:42',NULL),(5,'Tạ Hoàng An','friendntt10@gmail.com','','Tạ Hoàng An trả lời bạn anh Tuấn',4,7,NULL,1,'2021-12-27 17:07:31',NULL),(7,'Ánh Dương','anhduong@gmail.com','','Tại sao lại phải test?',2,7,NULL,1,'2022-01-01 23:36:04',NULL),(8,'Hoàng An','hoangan.web@gmail.com','','Thích thì test thôi',7,7,NULL,1,'2022-01-01 23:36:39',NULL),(10,'Hoàng An','hoangan.web@gmail.com','https://hoangan.net','Tôi test comment ngày 02/01/2022',0,7,NULL,1,'2022-01-02 17:04:52',NULL),(11,'Hoàng An','hoangan.web@gmail.com','https://hoangan.net','Cảm ơn bạn đã viết comment',3,7,NULL,1,'2022-01-02 17:10:05',NULL),(12,NULL,NULL,NULL,'Test comment user id',0,7,3,1,'2022-01-02 23:11:21',NULL),(17,NULL,NULL,NULL,'Test comment Hoàng An Unicode',0,8,3,0,'2022-01-12 14:47:22',NULL),(18,NULL,NULL,NULL,'Bình luận đầu tiên của tôi',0,6,3,0,'2022-01-23 00:55:15',NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_type`
--

DROP TABLE IF EXISTS `contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `duplicate` int(11) DEFAULT 0,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_type`
--

LOCK TABLES `contact_type` WRITE;
/*!40000 ALTER TABLE `contact_type` DISABLE KEYS */;
INSERT INTO `contact_type` VALUES (1,'Kinh doanh',1,NULL,NULL),(3,'Kế toán - Tài chính',2,'2021-11-25 16:03:22','2021-11-25 16:06:31');
/*!40000 ALTER TABLE `contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type_id` int(11) DEFAULT 0,
  `message` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0: Chưa xử lý 1: Đang xử lý 2: Đã xử lý',
  `note` text DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `contact_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Hoàng An','hoangan.web@gmail.com',1,'Tôi muón hỏi giá',1,'Khách hàng muốn mua sản phẩm giá rẻ','2021-11-25 02:00:00','2021-11-27 00:50:26'),(3,'Anh Quân','anhquan@gmail.com',1,'Tôi muốn mua hàng',1,'Đã gọi cho khách hàng nhưng không nghe máy','2022-01-15 02:45:51','2022-01-15 02:47:11'),(4,'Tạ hoàng An','hoangan.web@gmail.com',3,'tôi muốn hỏi thủ tục thanh toán',0,NULL,'2022-01-15 16:27:27',NULL),(5,'Hoàng An','hoangan.web@gmail.com',1,'tôi muốn mua hàng',0,NULL,'2022-01-15 16:29:24',NULL),(6,'Tạ hoàng An','hoangan.web@gmail.com',3,'Toi muốn hoàn tiền',0,NULL,'2022-01-15 16:32:42',NULL),(7,'Hoàng an','hoangan.web@gmail.com',3,'An Test redirect',0,NULL,'2022-01-23 00:53:46',NULL),(8,'Nguyễn Minh Hiếu','31032005h@gmail.com',3,'Nguyễn Minh Hiếu',0,NULL,'2023-08-18 10:16:39',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `permission` text DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Super Admin','{\"pages\":[\"lists\",\"add\",\"edit\",\"delete\",\"duplicate\"],\"services\":[\"lists\",\"add\"],\"portfolios\":[\"lists\"],\"options\":[\"general\",\"header\",\"footer\"]}','2021-11-02 00:00:00','2022-02-20 00:28:51'),(2,'Admin',NULL,'2021-11-01 00:00:00',NULL),(3,'Manager',NULL,'2021-11-01 00:00:00',NULL),(4,'Staff',NULL,'2021-11-01 00:00:00',NULL),(5,'Sale',NULL,'2021-11-01 00:00:00',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_token`
--

DROP TABLE IF EXISTS `login_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT 0,
  `token` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `login_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_token`
--

LOCK TABLES `login_token` WRITE;
/*!40000 ALTER TABLE `login_token` DISABLE KEYS */;
INSERT INTO `login_token` VALUES (67,6,'c53ee25b21f1aab2c54472fa9a2af210fda9b8af','2023-08-18 10:10:56');
/*!40000 ALTER TABLE `login_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `actions` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'pages','Quản lý trang','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"duplicate\":\"Nhân bản\"}'),(2,'services','Quản lý dịch vụ','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"duplicate\":\"Nhân bản\"}'),(3,'portfolios','Quản lý dự án','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"duplicate\":\"Nhân bản\"}'),(4,'blog','Quản lý blog','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"duplicate\":\"Nhân bản\"}'),(5,'blog_categories','Quản lý danh mục blog','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"duplicate\":\"Nhân bản\"}'),(6,'groups','Quản lý nhóm người dùng','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"permission\":\"Phân quyền\"}'),(7,'users','Quản lý người dùng','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\"}'),(8,'contacts','Quản lý liên hệ','{\"lists\":\"Xem\",\"edit\":\"Sửa\",\"delete\":\"Xoá\"}'),(9,'contact_type','Quản lý phòng ban','{\"lists\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"duplicate\":\"Nhân bản\"}'),(10,'comments','Quản lý bình luận','{\"lists\":\"Xem\",\"edit\":\"Sửa\",\"delete\":\"Xoá\",\"status\":\"Duyệt\"}'),(11,'subscribe','Quản lý đăng ký','{\"lists\":\"Xem\",\"edit\":\"Sửa\",\"delete\":\"Xoá\"}'),(12,'options','Thiết lập website','{\"general\":\"Chung\", \"header\":\"Header\", \"footer\": \"Footer\", \"home\": \"Trang chủ\", \"about\": \"Giới thiệu\", \"team\": \"Team\", \"services\": \"Dịch vụ\", \"portfolios\": \"Dự án\", \"blog\": \"Blog\", \"contact\": \"Liên hệ\", \"menu\": \"Menu\"}');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_key` varchar(100) DEFAULT NULL,
  `opt_value` text DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'general_hotline','+84377467432','Hotline công ty'),(2,'general_email','hieunm3103@gmail.com','Email'),(3,'general_time','Thời gian: 08h00 - 18h00','Thời gian làm việc'),(4,'header_search_placeholder','Tìm kiếm dịch vụ...','Placeholder tìm kiếm'),(5,'general_facebook','https://fb.com/profile.php?id=100047136492742','Facebook'),(6,'general_twitter','https://twitter.com','Twitter'),(7,'general_linkedin','https://linkedin.com','LinkedIn'),(8,'general_behance','https://www.behance.net/','Behance'),(9,'general_youtube','https://youtube.com','Youtube'),(10,'header_quote_text','Admin','Nút báo giá'),(11,'header_quote_link','/radix/admin','Link báo giá'),(12,'header_logo','/radix/uploads/images/logo.png','Logo'),(13,'header_favicon','/radix/uploads/images/favicon.png','Favicon'),(14,'general_sitename','radix','Tên website'),(15,'general_sitedesc','radix chuyên cung cấp dịch vụ tổ chức sự kiện','Mô tả website'),(16,'home_slide','[{\"slide_title\":\"radix &#60;span&#62;Business&#60;\\/span&#62; World That Possible anything&#60;span&#62;!&#60;\\/span&#62;\",\"slide_button_text\":\"Our Portfolio\",\"slide_button_link\":\"#\",\"slide_video\":\"https:\\/\\/www.youtube.com\\/watch?v=FZQPhrdKjow\",\"slide_image_1\":\"\\/radix\\/uploads\\/images\\/slider\\/gallery-image1.jpg\",\"slide_image_2\":\"\\/radix\\/uploads\\/images\\/slider\\/gallery-image2.jpg\",\"slide_desc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet urna ante, quis luctus nisi sodales sit amet. Aliquam a enim in massa molestie mollis Proin quis velit at nisl vulputate egestas non in arcu Proin a magna hendrerit, tincidunt neque sed. \",\"slide_bg\":\"\\/radix\\/uploads\\/images\\/slider\\/slider-image1.jpg\",\"slide_position\":\"left\"},{\"slide_title\":\"radix &#60;span&#62;Business&#60;\\/span&#62; World That Possible anything&#60;span&#62;!&#60;\\/span&#62;\",\"slide_button_text\":\"Our Service\",\"slide_button_link\":\"#\",\"slide_video\":\"https:\\/\\/www.youtube.com\\/watch?v=FZQPhrdKjow\",\"slide_image_1\":\"\\/radix\\/uploads\\/images\\/slider\\/gallery-image1.jpg\",\"slide_image_2\":\"\\/radix\\/uploads\\/images\\/slider\\/gallery-image2.jpg\",\"slide_desc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet urna ante, quis luctus nisi sodales sit amet. Aliquam a enim in massa molestie mollis Proin quis velit at nisl vulputate egestas non in arcu Proin a magna hendrerit, tincidunt neque sed. \",\"slide_bg\":\"\\/radix\\/uploads\\/images\\/slider\\/slider-image2.jpg\",\"slide_position\":\"right\"},{\"slide_title\":\"radix &#60;span&#62;Business&#60;\\/span&#62; World That Possible anything&#60;span&#62;!&#60;\\/span&#62;\",\"slide_button_text\":\"About Company\",\"slide_button_link\":\"#\",\"slide_video\":\"https:\\/\\/www.youtube.com\\/watch?v=FZQPhrdKjow\",\"slide_image_1\":\"\",\"slide_image_2\":\"\",\"slide_desc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet urna ante, quis luctus nisi sodales sit amet. Aliquam a enim in massa molestie mollis Proin quis velit at nisl vulputate egestas non in arcu Proin a magna hendrerit, tincidunt neque sed. \",\"slide_bg\":\"\\/templates\\/client\\/images\\/slider\\/slider-image1.jpg\",\"slide_position\":\"center\"}]','Slide'),(17,'home_about','{\"information\":\"{\\\"title_bg\\\":\\\"Hi\\\\u1ebfu\\\",\\\"desc\\\":\\\"&#60;h1&#62;V\\\\u1ec0 CH&#38;Uacute;NG T&#38;Ocirc;I&#60;\\\\\\/h1&#62;&#13;&#10;&#13;&#10;&#60;p&#62;contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old&#60;\\\\\\/p&#62;&#13;&#10;\\\",\\\"image\\\":\\\"\\\\\\/radix\\\\\\/uploads\\\\\\/images\\\\\\/gallery-4.jpg\\\",\\\"video\\\":\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=E-2ocmhF6TA&#38;feature=emb_title\\\",\\\"content\\\":\\\"&#60;h2&#62;We Are Professional Website Design &#38;amp; Development Company!&#60;\\\\\\/h2&#62;&#13;&#10;&#13;&#10;&#60;p&#62;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. You think water moves fast? You should see ice.&#60;\\\\\\/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a weeked do incididunt magna Lorem&#60;\\\\\\/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalancip isicing elit, sed do eiusmod tempor incididunt&#60;\\\\\\/p&#62;&#13;&#10;\\\",\\\"skill\\\":{\\\"name\\\":[\\\"N\\\\u0103ng l\\\\u1ef1c 1\\\",\\\"N\\\\u0103ng l\\\\u1ef1c 2\\\",\\\"N\\\\u0103ng l\\\\u1ef1c 3\\\",\\\"N\\\\u0103ng l\\\\u1ef1c 4\\\",\\\"Nguy\\\\u1ec5n Minh Hi\\\\u1ebfu\\\"],\\\"value\\\":[\\\"80\\\",\\\"44\\\",\\\"80\\\",\\\"96\\\",\\\"100\\\"]}}\",\"skill\":\"[{\\\"name\\\":\\\"N\\\\u0103ng l\\\\u1ef1c 1\\\",\\\"value\\\":\\\"80\\\"},{\\\"name\\\":\\\"N\\\\u0103ng l\\\\u1ef1c 2\\\",\\\"value\\\":\\\"44\\\"},{\\\"name\\\":\\\"N\\\\u0103ng l\\\\u1ef1c 3\\\",\\\"value\\\":\\\"80\\\"},{\\\"name\\\":\\\"N\\\\u0103ng l\\\\u1ef1c 4\\\",\\\"value\\\":\\\"96\\\"},{\\\"name\\\":\\\"Nguy\\\\u1ec5n Minh Hi\\\\u1ebfu\\\",\\\"value\\\":\\\"100\\\"}]\"}','Thiết lập giới thiệu'),(18,'home_service_title_bg','Services','Tiêu đề nền'),(19,'home_service_title','What We Provide','Tiêu đề'),(20,'home_service_desc','Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin','Mô tả'),(21,'home_fact_title','With Smooth Animation Numbering','Tiêu đề chính'),(22,'home_fact_sub_title','Our Achievements','Tiêu đề phụ'),(23,'home_fact_desc','Pellentesque vitae gravida nulla. Maecenas molestie ligula quis urna viverra venenatis. Donec at ex metus. Suspendisse ac est et magna viverra eleifend. Etiam varius auctor est eu eleifend.','Mô tả'),(24,'home_fact_button_text','Liên hệ','Nội dung nút'),(25,'home_fact_button_link','http://localhost/radix/lien-he.html','Link nút'),(26,'home_fact_year_number','35','Năm thành lập'),(27,'home_fact_project_number','88','Số lượng dự án'),(28,'home_fact_earn_number','10','Tổng doanh thu'),(29,'home_fact_award_number','32','Số giải thưởng'),(30,'home_portfolio_title','DỰ ÁN ĐÃ TRIỂN KHAI','Tiêu đề'),(31,'home_portfolio_desc','Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin','Mô tả'),(32,'home_portfolio_title_bg','DỰ ÁN','Tiêu đề nền'),(33,'home_portfolio_more_link','http://localhost/radix/du-an.html','Link dự án'),(34,'home_portfolio_more_text','Xem tất cả dự án','Nút xem dự án'),(35,'home_cta_content','&#60;h2&#62;We Have 35+ Years Of Experiences For Creating Creative Website Project.&#60;/h2&#62;&#13;&#10;&#13;&#10;&#60;p&#62;Maecenas sapien erat, porta non porttitor non, dignissim et enim. Aenean ac enim feugiat, facilisis arcu vehicula, consequat sem. Cras et vulputate nisi, ac dignissim mi. Etiam laoreet&#60;/p&#62;&#13;&#10;','Nội dung'),(36,'home_cta_button_text','Đặt hàng ngay','Nút kêu gọi'),(37,'home_cta_button_link','http://localhost/radix/lien-he.html','Link kêu gọi'),(38,'home_blog_title','Bài viết mới nhất','Tiêu đề'),(39,'home_blog_desc','Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin','Mô tả'),(40,'home_blog_title_bg','News','Tiêu đề nền'),(41,'home_partner_title','Our Partners','Tiêu đề'),(42,'home_partner_desc','Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin','Mô tả'),(43,'home_partner_title_bg','Clients','Tiêu đề nền'),(44,'home_partner_content','[{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-1.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-2.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-3.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-4.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-5.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-6.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-7.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-8.png\",\"link\":\"#\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-1.png\",\"link\":\"\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-2.png\",\"link\":\"\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-3.png\",\"link\":\"\"},{\"logo\":\"\\/radix\\/uploads\\/images\\/partner\\/partner-4.png\",\"link\":\"\"}]','Danh sách đối tác'),(45,'general_address','Tây Giang, Tiền Hải, Thái Bình','Địa chỉ'),(46,'footer_1_title','Office Location','Tiêu đề'),(47,'footer_1_content','&#60;p&#62;Maecenas sapien erat, porta non porttitor non, dignissim et enim.&#60;/p&#62;&#13;&#10;','Nội dung'),(48,'footer_2_title','Quick Links','Tiêu đề'),(49,'footer_2_content','&#60;ul&#62;&#13;&#10;&#9;&#60;li&#62;&#60;a href=&#34;#&#34;&#62;About Our Company&#60;/a&#62;&#60;/li&#62;&#13;&#10;&#9;&#60;li&#62;&#60;a href=&#34;#&#34;&#62;Our Latest services&#60;/a&#62;&#60;/li&#62;&#13;&#10;&#9;&#60;li&#62;&#60;a href=&#34;#&#34;&#62;Our Recent Project&#60;/a&#62;&#60;/li&#62;&#13;&#10;&#9;&#60;li&#62;&#60;a href=&#34;#&#34;&#62;Latest Blog&#60;/a&#62;&#60;/li&#62;&#13;&#10;&#9;&#60;li&#62;&#60;a href=&#34;#&#34;&#62;Help Desk&#60;/a&#62;&#60;/li&#62;&#13;&#10;&#9;&#60;li&#62;&#60;a href=&#34;#&#34;&#62;Contact With Us&#60;/a&#62;&#60;/li&#62;&#13;&#10;&#60;/ul&#62;&#13;&#10;','Nội dung'),(50,'footer_3_title','Recent Tweets','Tiêu đề'),(51,'footer_3_twitter','Nguyenhieu313','Tài khoản Twitter'),(52,'footer_4_title','Newsletter','Tiêu đề'),(53,'footer_4_content','&#60;p&#62;consectetur adipiscing elit. Vestibulum vel sapien et lacus tempus varius. In finibus lorem vel.&#60;/p&#62;&#13;&#10;','Nội dung'),(54,'footer_copyright','&#60;p&#62;Copyright&#38;nbsp; &#38;copy; 2023&#38;nbsp;by &#60;a href=&#34;https://fb.com/profile.php?id=100047136492742&#34; style=&#34;text-decoration: none&#34;&#62;Nguyễn Minh Hiếu&#60;/a&#62; . All rights reserved.&#60;/p&#62;&#13;&#10;','Copyright'),(55,'about_title','Giới thiệu chung','Tiêu đề trang'),(56,'team_title','Đội ngũ','Tiêu đề trang'),(57,'team_primary_title','Our Leaders','Tiêu đề chính'),(58,'team_title_bg','Team','Tiêu đề nền'),(59,'team_desc','Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin','Mô tả'),(60,'team_content','[{\"name\":\"Collis Molate\",\"position\":\"CEO\",\"image\":\"\\/radix\\/uploads\\/images\\/team\\/t1.jpg\",\"facebook\":\"#\",\"twitter\":\"#\",\"linkedin\":\"#\",\"behance\":\"#\"},{\"name\":\"Domani Plavon\",\"position\":\"Co-Founder\",\"image\":\"\\/radix\\/uploads\\/images\\/team\\/t2.jpg\",\"facebook\":\"#\",\"twitter\":\"#\",\"linkedin\":\"#\",\"behance\":\"#\"},{\"name\":\"John Mard\",\"position\":\"Developer\",\"image\":\"\\/radix\\/uploads\\/images\\/team\\/t3.jpg\",\"facebook\":\"#\",\"twitter\":\"#\",\"linkedin\":\"#\",\"behance\":\"#\"},{\"name\":\"Amanal Frond\",\"position\":\"Marketer\",\"image\":\"\\/radix\\/uploads\\/images\\/team\\/t4.jpg\",\"facebook\":\"#\",\"twitter\":\"#\",\"linkedin\":\"#\",\"behance\":\"#\"}]','Danh sách đội ngũ'),(61,'service_title','Dịch vụ radix','Tiêu đề trang'),(62,'portfolio_title','Dự án radix','Tiêu đề trang'),(63,'blog_title','Bài viết','Tiêu đề trang'),(64,'blog_per_page','9','Số lượng bài viết phân trang'),(65,'contact_title','Liên hệ','Tiêu đề trang'),(66,'contact_title_bg','Unicode','Tiêu đề nền'),(67,'contact_desc','contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old','Mô tả'),(68,'contact_primary_title','Contact Us','Tiêu đề chính'),(69,'menu','[{&#34;text&#34;:&#34;Trang chủ&#34;,&#34;href&#34;:&#34;http://localhost/radix/&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;},{&#34;text&#34;:&#34;Giới thiệu&#34;,&#34;href&#34;:&#34;#&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;,&#34;children&#34;:[{&#34;text&#34;:&#34;Giới thiệu chung&#34;,&#34;href&#34;:&#34;http://localhost/radix/gioi-thieu.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;},{&#34;text&#34;:&#34;Đội ngũ&#34;,&#34;href&#34;:&#34;http://localhost/radix/doi-ngu.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;}]},{&#34;text&#34;:&#34;Dự án&#34;,&#34;href&#34;:&#34;http://localhost/radix/du-an.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;},{&#34;text&#34;:&#34;Dịch vụ&#34;,&#34;href&#34;:&#34;http://localhost/radix/dich-vu.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;},{&#34;text&#34;:&#34;Blog&#34;,&#34;href&#34;:&#34;http://localhost/radix/blog.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;,&#34;children&#34;:[{&#34;text&#34;:&#34;Chia sẻ kinh nghiệm&#34;,&#34;href&#34;:&#34;http://localhost/radix/danh-muc/chia-se-kinh-nghiem-2-8.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;},{&#34;text&#34;:&#34;Tin thị trường&#34;,&#34;href&#34;:&#34;http://localhost/radix/danh-muc/tin-thi-truong-4.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;},{&#34;text&#34;:&#34;Kiến thức&#34;,&#34;href&#34;:&#34;http://localhost/radix/danh-muc/kien-thuc-3.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;}]},{&#34;text&#34;:&#34;Liên hệ&#34;,&#34;href&#34;:&#34;http://localhost/radix/lien-he.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;,&#34;children&#34;:[{&#34;text&#34;:&#34;Thông tin liên hệ&#34;,&#34;href&#34;:&#34;http://localhost/radix/lien-he.html&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_self&#34;,&#34;title&#34;:&#34;&#34;},{&#34;text&#34;:&#34;Liên hệ Facebook&#34;,&#34;href&#34;:&#34;https://fb.com/&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_blank&#34;,&#34;title&#34;:&#34;&#34;}]},{&#34;text&#34;:&#34;Cộng đồng&#34;,&#34;href&#34;:&#34;https://fb.com&#34;,&#34;icon&#34;:&#34;empty&#34;,&#34;target&#34;:&#34;_blank&#34;,&#34;title&#34;:&#34;Cộng đồng Unicode trên Facebook&#34;}]','Thiết lập menu');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `duplicate` int(11) DEFAULT 0,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Hướng dẫn mua hàng','huong-dan-mua-hang','Đang cập nhật...',3,2,'2021-11-14 00:00:00',NULL),(2,'Phương thức thanh toán','phuong-thuc-thanh-toan','Đang cập nhật...',3,1,'2021-11-14 00:00:00',NULL),(4,'Hướng dẫn mua hàng (1)','huong-dan-mua-hang','Đang cập nhật...',3,0,'2021-11-14 23:41:06',NULL),(5,'Phương thức thanh toán (1)','phuong-thuc-thanh-toan','Đang cập nhật...',3,0,'2021-11-14 23:41:11',NULL),(6,'Hướng dẫn mua hàng (2)','huong-dan-mua-hang','Đang cập nhật...',3,1,'2021-11-14 23:41:14',NULL),(7,'Chính sách bảo mật','chinh-sach-bao-mat','&#60;p&#62;Nội dung&#60;/p&#62;&#13;&#10;',3,0,'2021-11-19 19:18:35',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_categories`
--

DROP TABLE IF EXISTS `portfolio_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `duplicate` int(11) DEFAULT 0,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `portfolio_categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_categories`
--

LOCK TABLES `portfolio_categories` WRITE;
/*!40000 ALTER TABLE `portfolio_categories` DISABLE KEYS */;
INSERT INTO `portfolio_categories` VALUES (2,'Marketing',3,0,'2021-11-15 00:00:00',NULL),(5,'Tư vấn doanh nghiệp',3,0,'2021-11-15 11:53:37','2021-11-15 12:22:34'),(11,'Đào tạo lập trình',3,2,'2021-11-15 12:22:43','2021-11-24 16:14:45'),(14,'Thiết kế website',3,0,'2021-12-12 21:11:32',NULL),(15,'Thiết kế hiệu ứng',3,0,'2021-12-12 21:12:01',NULL);
/*!40000 ALTER TABLE `portfolio_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_images`
--

DROP TABLE IF EXISTS `portfolio_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_id` (`portfolio_id`),
  CONSTRAINT `portfolio_images_ibfk_1` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_images`
--

LOCK TABLES `portfolio_images` WRITE;
/*!40000 ALTER TABLE `portfolio_images` DISABLE KEYS */;
INSERT INTO `portfolio_images` VALUES (30,13,'/radix/uploads/images/portfolio/portfolio-masonry1.jpg','2021-12-19 16:31:17','2023-07-27 21:39:37'),(31,13,'/radix/uploads/images/portfolio/portfolio-masonry2.jpg','2021-12-19 16:31:17','2023-07-27 21:39:37'),(32,13,'/radix/uploads/images/portfolio/portfolio-masonry3.jpg','2021-12-19 16:31:17','2023-07-27 21:39:37'),(33,13,'/radix/uploads/images/portfolio/portfolio-masonry1.jpg','2021-12-19 16:31:17','2023-07-27 21:39:37'),(34,13,'/radix/uploads/images/portfolio/portfolio-masonry2.jpg','2021-12-19 16:31:17','2023-07-27 21:39:37'),(35,13,'/radix/uploads/images/portfolio/portfolio-masonry1.jpg','2021-12-19 16:31:17','2023-07-27 21:39:37'),(36,13,'/radix/uploads/images/portfolio/portfolio-masonry3.jpg','2021-12-19 16:31:41','2023-07-27 21:39:37'),(38,16,'/radix/uploads/images/portfolio/p1.jpg','2023-07-27 21:34:51','2023-07-27 21:38:09'),(39,16,'/radix/uploads/images/portfolio/p2.jpg','2023-07-27 21:38:09',NULL);
/*!40000 ALTER TABLE `portfolio_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `portfolio_category_id` int(11) DEFAULT 0,
  `duplicate` int(11) DEFAULT 0,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_category_id` (`portfolio_category_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `portfolios_ibfk_1` FOREIGN KEY (`portfolio_category_id`) REFERENCES `portfolio_categories` (`id`),
  CONSTRAINT `portfolios_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` VALUES (13,'Creative Work','creative-work','/radix/uploads/images/portfolio/p6.jpg','Maecenas sapien erat, porta non porttitor non, dignissim et enim. Aenean ac enim','https://www.youtube.com/watch?v=E-2ocmhF6TA&#38;feature=emb_title','&#60;p&#62;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#38;#39;Content here, content here&#38;#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#38;#39;lorem ipsum&#38;#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&#60;/p&#62;&#13;&#10;',3,2,1,'2021-12-12 21:17:38','2023-07-27 21:39:37'),(14,'Responsive Design','responsive-design','/radix/uploads/images/portfolio/p5.jpg','Maecenas sapien erat, porta non porttitor non, dignissim et enim. Aenean ac enim','https://www.youtube.com/watch?v=E-2ocmhF6TA&#38;feature=emb_title','&#60;p&#62;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#38;#39;Content here, content here&#38;#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#38;#39;lorem ipsum&#38;#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&#60;/p&#62;&#13;&#10;',3,11,1,'2021-12-12 21:18:36','2023-07-27 21:38:42'),(15,'Bootstrap Based','bootstrap-based','/radix/uploads/images/portfolio/p4.jpg','Maecenas sapien erat, porta non porttitor non, dignissim et enim. Aenean ac enim','https://www.youtube.com/watch?v=E-2ocmhF6TA&#38;feature=emb_title','&#60;p&#62;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#38;#39;Content here, content here&#38;#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#38;#39;lorem ipsum&#38;#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&#60;/p&#62;&#13;&#10;',3,15,2,'2021-12-12 21:21:22','2023-07-27 21:38:30'),(16,'Clean Design','clean-design','/radix/uploads/images/portfolio/p3.jpg','Maecenas sapien erat, porta non porttitor non, dignissim et enim. Aenean ac enim','https://www.youtube.com/watch?v=E-2ocmhF6TA&#38;feature=emb_title','&#60;p&#62;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#38;#39;Content here, content here&#38;#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#38;#39;lorem ipsum&#38;#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&#60;/p&#62;&#13;&#10;',3,14,1,'2021-12-12 21:22:37','2023-07-27 21:38:09'),(17,'Animation','animation','/radix/uploads/images/portfolio/p2.jpg','Maecenas sapien erat, porta non porttitor non, dignissim et enim. Aenean ac enim','https://www.youtube.com/watch?v=E-2ocmhF6TA&#38;feature=emb_title','&#60;p&#62;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#38;#39;Content here, content here&#38;#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#38;#39;lorem ipsum&#38;#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&#60;/p&#62;&#13;&#10;',3,5,0,'2021-12-12 21:23:38','2023-07-27 21:26:13'),(18,'Parallax','parallax','/radix/uploads/images/portfolio/p1.jpg','Maecenas sapien erat, porta non porttitor non, dignissim et enim. Aenean ac enim','https://www.youtube.com/watch?v=E-2ocmhF6TA&#38;feature=emb_title','&#60;p&#62;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#38;#39;Content here, content here&#38;#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#38;#39;lorem ipsum&#38;#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&#60;/p&#62;&#13;&#10;&#13;&#10;&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&#60;/p&#62;&#13;&#10;',3,14,1,'2021-12-12 21:39:52','2023-07-27 21:16:14');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `duplicate` int(11) DEFAULT 0,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (12,'Consulting','consulting','&#60;i class=&#34;fa fa-magic&#34;&#62;&#60;/i&#62;','welcome to our consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt','&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&#60;/p&#62;&#13;&#10;',3,4,'2021-12-04 11:39:02',NULL),(13,'Creative Idea','creative-idea','&#60;i class=&#34;fa fa-lightbulb-o&#34;&#62;&#60;/i&#62;','Creative and erat, porta non porttitor non, dignissim et enim Aenean ac enim feugiat classical Latin','&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&#60;/p&#62;&#13;&#10;',3,1,'2021-12-04 11:39:33','2021-12-04 11:41:56'),(14,'Development','development','&#60;i class=&#34;fa fa-wordpress&#34;&#62;&#60;/i&#62;','just fine erat, porta non porttitor non, dignissim et enim Aenean ac enim feugiat classical Latin','&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&#60;/p&#62;&#13;&#10;',3,1,'2021-12-04 11:40:06','2021-12-04 11:42:05'),(15,'Marketing','marketing','&#60;i class=&#34;fa fa-bullhorn&#34;&#62;&#60;/i&#62;','Possible of erat, porta non porttitor non, dignissim et enim Aenean ac enim feugiat classical Latin','&#60;p&#62;&#60;strong&#62;Lorem Ipsum&#60;/strong&#62;&#38;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#38;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&#60;/p&#62;&#13;&#10;',3,2,'2021-12-04 11:40:47','2023-07-27 21:09:39'),(18,'Direct Work','direct-work','&#60;i class =&#34;fa fa-bullseye&#34; &#62;&#60;/i&#62;','Everything ien erat, porta non porttitor non, dignissim et enim Aenean ac enim feugiat Latin','&#60;p&#62;Everything ien erat, porta non porttitor non, dignissim et enim Aenean ac enim feugiat Latin&#60;/p&#62;&#13;&#10;',6,0,'2023-07-27 21:13:02',NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0: Chưa xử lý 1: Đang xử lý 2: Đã xử lý',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,'Hoàng An','hoangan.web@gmail.com',1,'2022-01-15 19:48:07','2022-01-17 00:54:00'),(3,'Văn Nam','vannam@gmail.com',0,'2022-01-17 00:55:39',NULL),(4,'Hoàng An','hoangan.web@gmail.com',0,'2022-01-23 00:57:24',NULL),(5,'Hoàng an Unicode','hoanganunicode@gmail.com',0,'2022-01-23 00:58:08',NULL);
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `about_content` text DEFAULT NULL,
  `contact_facebook` varchar(100) DEFAULT NULL,
  `contact_twitter` varchar(100) DEFAULT NULL,
  `contact_linkedin` varchar(100) DEFAULT NULL,
  `contact_pinterest` varchar(100) DEFAULT NULL,
  `contact_behance` varchar(100) DEFAULT NULL,
  `forget_token` varchar(100) DEFAULT NULL,
  `group_id` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0 COMMENT '0: Chưa kích hoạt - 1: Đã kích hoạt',
  `last_activity` datetime DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Hoàng An Unicode','hoangan.web@gmail.com',NULL,'$2y$10$o4fWGlMrIK1uYX9jayctxu25rmap53Ua2DmdWKY90OEP7oNhqgDgS','Hi My name is Lamp! quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula There are many variations of passages of Lorem Ipsum available, but the majority have suffered alterations. Vivamus vehicula quis cursus. In hac habitasse platea dictumst Aenean tristique odio id lectus solmania trundard lamp!','https://facebook.com','https://twitter.com','https://linkedin.com','https://pinterest.com',NULL,NULL,1,1,'2022-02-20 00:29:20','2021-11-10 12:00:00','2021-12-24 23:35:43'),(5,'Văn Quân','nguyenvanquan@gmail.com',NULL,'$2y$10$/cFFNZj1PcECoCzEX7J79uOSC1TsUxvuc59mv6Utt59ABiqvpqbd2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-01-21 17:38:04','2021-11-12 14:10:51',NULL),(6,'Nguyễn Minh Hiếu','hieunm3103@gmail.com','0377467432','$2y$10$y1YQtdJwEa.XKVYbEZol4OGe80.E.pCiMms2GCEKBs2ZnNkqCWbFy','Lười chúa','https://www.facebook.com/profile.php?id=100047136492742','https://twitter.com/Nguyenhieu313','https://www.linkedin.com/','https://www.pinterest.com/','https://www.behance.net/',NULL,2,1,'2023-08-18 10:31:39','2021-11-10 12:00:00','2023-07-25 18:57:07');
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

-- Dump completed on 2023-08-18 10:32:33
