-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: Student
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add book',7,'add_book'),(26,'Can change book',7,'change_book'),(27,'Can delete book',7,'delete_book'),(28,'Can view book',7,'view_book'),(29,'Can add school',8,'add_school'),(30,'Can change school',8,'change_school'),(31,'Can delete school',8,'delete_school'),(32,'Can view school',8,'view_school'),(33,'Can add student',9,'add_student'),(34,'Can change student',9,'change_student'),(35,'Can delete student',9,'delete_student'),(36,'Can view student',9,'view_student');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$zSg560WxeOAt$194NpqcqcZbbvR0aJvJ1L3UvrKiDz4AML5GkJ2++dU8=','2021-01-24 14:25:57.971294',1,'carnot','','','carnot@gmail.com',1,1,'2021-01-24 12:26:09.763242');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-24 12:30:09.766132','2','Sands of Iwo Jima',1,'[{\"added\": {}}]',7,1),(2,'2021-01-24 12:30:51.760119','3','Connections',1,'[{\"added\": {}}]',7,1),(3,'2021-01-24 12:31:10.803914','4','Keane',1,'[{\"added\": {}}]',7,1),(4,'2021-01-24 12:31:42.548715','5','She Cried No (Freshman Fall)',1,'[{\"added\": {}}]',7,1),(5,'2021-01-24 12:32:08.484864','6','Big Nothing',1,'[{\"added\": {}}]',7,1),(6,'2021-01-24 12:32:56.287997','7','Opera Jawa',1,'[{\"added\": {}}]',7,1),(7,'2021-01-24 12:33:18.818116','8','My Chauffeur',1,'[{\"added\": {}}]',7,1),(8,'2021-01-24 12:33:56.187319','9','Genghis Blues',1,'[{\"added\": {}}]',7,1),(9,'2021-01-24 12:34:21.934217','10','Basic Instinct',1,'[{\"added\": {}}]',7,1),(10,'2021-01-24 12:34:39.859953','11','Billy Bathgate',1,'[{\"added\": {}}]',7,1),(11,'2021-01-24 12:36:54.698445','1','St. Peter\'s School',1,'[{\"added\": {}}]',8,1),(12,'2021-01-24 12:45:43.728296','2','Queen of Peace Middle School',1,'[{\"added\": {}}]',8,1),(13,'2021-01-24 12:46:03.859396','3','Amos Comenius Memorial School',1,'[{\"added\": {}}]',8,1),(14,'2021-01-24 12:46:19.988375','4','Menihek High School',1,'[{\"added\": {}}]',8,1),(15,'2021-01-24 12:46:36.426319','5','J.C. Erhardt Memorial School',1,'[{\"added\": {}}]',8,1),(16,'2021-01-24 12:46:58.036778','6','Mud Lake School',1,'[{\"added\": {}}]',8,1),(17,'2021-01-24 12:47:15.973626','7','Jens Haven Memorial',1,'[{\"added\": {}}]',8,1),(18,'2021-01-24 12:47:34.783192','8','Lake Melville School',1,'[{\"added\": {}}]',8,1),(19,'2021-01-24 12:47:59.062735','9','B.L. Morrison',1,'[{\"added\": {}}]',8,1),(20,'2021-01-24 12:48:17.401226','10','Northern Lights Academy',1,'[{\"added\": {}}]',8,1),(21,'2021-01-24 12:48:33.952390','11','William Gillett Academy',1,'[{\"added\": {}}]',8,1),(22,'2021-01-24 12:48:56.254743','12','Peacock Primary School',1,'[{\"added\": {}}]',8,1),(23,'2021-01-24 12:49:12.637000','13','Bayside Academy',1,'[{\"added\": {}}]',8,1),(24,'2021-01-24 12:49:27.414451','14','St. Lewis Academy',1,'[{\"added\": {}}]',8,1),(25,'2021-01-24 12:55:32.836950','15','Henry Gordon Academy',1,'[{\"added\": {}}]',8,1),(26,'2021-01-24 12:56:04.904592','1','1',1,'[{\"added\": {}}]',9,1),(27,'2021-01-24 13:00:13.081927','2','2',1,'[{\"added\": {}}]',9,1),(28,'2021-01-24 14:25:09.851473','2','2',3,'',9,1),(29,'2021-01-24 14:26:42.032525','3','3',1,'[{\"added\": {}}]',9,1),(30,'2021-01-24 14:27:05.545053','4','4',1,'[{\"added\": {}}]',9,1),(31,'2021-01-24 14:28:05.558871','5','5',1,'[{\"added\": {}}]',9,1),(32,'2021-01-24 14:28:39.188245','6','6',1,'[{\"added\": {}}]',9,1),(33,'2021-01-24 14:29:18.279875','7','7',1,'[{\"added\": {}}]',9,1),(34,'2021-01-24 14:30:49.691644','8','8',1,'[{\"added\": {}}]',9,1),(35,'2021-01-24 14:31:18.963219','9','9',1,'[{\"added\": {}}]',9,1),(36,'2021-01-24 14:32:15.114548','10','10',1,'[{\"added\": {}}]',9,1),(37,'2021-01-24 14:32:45.222113','11','11',1,'[{\"added\": {}}]',9,1),(38,'2021-01-24 14:33:10.696567','12','12',1,'[{\"added\": {}}]',9,1),(39,'2021-01-24 14:33:38.396635','13','13',1,'[{\"added\": {}}]',9,1),(40,'2021-01-24 14:34:19.149379','14','14',1,'[{\"added\": {}}]',9,1),(41,'2021-01-24 14:34:45.644180','15','15',1,'[{\"added\": {}}]',9,1),(42,'2021-01-24 14:36:14.298548','16','Chrisse Blackburne',1,'[{\"added\": {}}]',9,1),(43,'2021-01-24 14:37:52.807677','17','17',1,'[{\"added\": {}}]',9,1),(44,'2021-01-24 14:38:47.377545','18','18',1,'[{\"added\": {}}]',9,1),(45,'2021-01-24 14:39:11.071499','19','19',1,'[{\"added\": {}}]',9,1),(46,'2021-01-24 14:39:37.867306','20','20',1,'[{\"added\": {}}]',9,1),(47,'2021-01-24 14:39:59.012152','21','21',1,'[{\"added\": {}}]',9,1),(48,'2021-01-24 14:41:29.890309','22','22',1,'[{\"added\": {}}]',9,1),(49,'2021-01-24 15:02:26.196619','23','23',1,'[{\"added\": {}}]',9,1),(50,'2021-01-24 15:02:49.708401','24','24',1,'[{\"added\": {}}]',9,1),(51,'2021-01-24 15:03:24.422615','25','25',1,'[{\"added\": {}}]',9,1),(52,'2021-01-24 15:04:03.310906','26','26',1,'[{\"added\": {}}]',9,1),(53,'2021-01-24 15:04:30.761288','27','27',1,'[{\"added\": {}}]',9,1),(54,'2021-01-24 15:05:50.147048','28','28',1,'[{\"added\": {}}]',9,1),(55,'2021-01-24 15:06:15.376863','29','29',1,'[{\"added\": {}}]',9,1),(56,'2021-01-24 15:06:48.437896','30','30',1,'[{\"added\": {}}]',9,1),(57,'2021-01-24 15:07:04.143255','31','31',1,'[{\"added\": {}}]',9,1),(58,'2021-01-24 15:07:28.940980','32','32',1,'[{\"added\": {}}]',9,1),(59,'2021-01-24 15:07:55.127793','33','33',1,'[{\"added\": {}}]',9,1),(60,'2021-01-24 15:08:25.813616','34','34',1,'[{\"added\": {}}]',9,1),(61,'2021-01-24 15:08:40.971708','35','35',1,'[{\"added\": {}}]',9,1),(62,'2021-01-24 15:09:15.628235','36','36',1,'[{\"added\": {}}]',9,1),(63,'2021-01-24 15:09:39.608482','37','37',1,'[{\"added\": {}}]',9,1),(64,'2021-01-24 15:10:06.260702','38','38',1,'[{\"added\": {}}]',9,1),(65,'2021-01-24 15:10:20.629024','39','39',1,'[{\"added\": {}}]',9,1),(66,'2021-01-24 15:10:43.238234','40','40',1,'[{\"added\": {}}]',9,1),(67,'2021-01-24 15:11:09.838186','41','41',1,'[{\"added\": {}}]',9,1),(68,'2021-01-24 15:11:34.421955','42','42',1,'[{\"added\": {}}]',9,1),(69,'2021-01-24 15:12:00.177833','43','43',1,'[{\"added\": {}}]',9,1),(70,'2021-01-24 15:12:22.225870','44','44',1,'[{\"added\": {}}]',9,1),(71,'2021-01-24 15:12:43.286993','45','45',1,'[{\"added\": {}}]',9,1),(72,'2021-01-24 15:13:03.520317','46','46',1,'[{\"added\": {}}]',9,1),(73,'2021-01-24 15:13:22.978504','47','47',1,'[{\"added\": {}}]',9,1),(74,'2021-01-24 15:13:49.384213','48','48',1,'[{\"added\": {}}]',9,1),(75,'2021-01-24 15:14:09.421254','49','49',1,'[{\"added\": {}}]',9,1),(76,'2021-01-24 15:14:31.945530','50','50',1,'[{\"added\": {}}]',9,1),(77,'2021-01-24 15:14:51.519645','51','51',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'stu_details','book'),(8,'stu_details','school'),(9,'stu_details','student');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-24 12:24:46.477049'),(2,'auth','0001_initial','2021-01-24 12:24:49.727748'),(3,'admin','0001_initial','2021-01-24 12:25:00.130688'),(4,'admin','0002_logentry_remove_auto_add','2021-01-24 12:25:02.416953'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-24 12:25:02.505156'),(6,'contenttypes','0002_remove_content_type_name','2021-01-24 12:25:04.507594'),(7,'auth','0002_alter_permission_name_max_length','2021-01-24 12:25:05.622977'),(8,'auth','0003_alter_user_email_max_length','2021-01-24 12:25:05.908333'),(9,'auth','0004_alter_user_username_opts','2021-01-24 12:25:05.991081'),(10,'auth','0005_alter_user_last_login_null','2021-01-24 12:25:06.948842'),(11,'auth','0006_require_contenttypes_0002','2021-01-24 12:25:07.046594'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-24 12:25:07.130588'),(13,'auth','0008_alter_user_username_max_length','2021-01-24 12:25:08.283216'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-24 12:25:09.473904'),(15,'auth','0010_alter_group_name_max_length','2021-01-24 12:25:09.754910'),(16,'auth','0011_update_proxy_permissions','2021-01-24 12:25:09.906713'),(17,'sessions','0001_initial','2021-01-24 12:25:10.379738'),(18,'stu_details','0001_initial','2021-01-24 12:25:12.580061'),(19,'stu_details','0002_auto_20210124_1228','2021-01-24 12:28:12.980347'),(20,'stu_details','0003_auto_20210124_1236','2021-01-24 12:36:27.653839'),(21,'auth','0012_alter_user_first_name_max_length','2021-01-24 14:08:40.296115'),(22,'stu_details','0004_auto_20210124_1430','2021-01-24 14:30:23.680635');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('litx86o7n9dxvbqwqbgbkw6yzfon1lus','.eJxVjEEOwiAQRe_C2pDCAAWX7j0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4kzgLJU6_W8L84LoDumO9NZlbXZc5yV2RB-3y2oifl8P9OyjYy7dGy5aGacQEKo_aq8lTtpBVVsGkFChZ0tbRYDSA5xAsoNYuGE_ADlm8P-2-N9Q:1l3gL0:m2Yf60Sl66y7UCEdDT9V07T71T5hwr0Ibke6mY-3WTM','2021-02-07 14:25:58.055259');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_details_book`
--

DROP TABLE IF EXISTS `stu_details_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stu_details_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `book_author` varchar(100) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `pages` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_details_book`
--

LOCK TABLES `stu_details_book` WRITE;
/*!40000 ALTER TABLE `stu_details_book` DISABLE KEYS */;
INSERT INTO `stu_details_book` VALUES (2,'Sands of Iwo Jima','Philippine Hinemoor','2017-11-20',812),(3,'Connections','Nilson Hallewell','2018-02-06',3619),(4,'Keane','Jana Pyford',NULL,4877),(5,'She Cried No (Freshman Fall)','Federico Stobo','2018-02-06',4395),(6,'Big Nothing','Zachary Steely','2016-05-10',2427),(7,'Opera Jawa','Mei Mattevi','2016-10-22',1542),(8,'My Chauffeur',NULL,'2017-10-06',1018),(9,'Genghis Blues','Julienne Zelner','2017-04-19',2566),(10,'Basic Instinct','Mickie Solomonides','2016-11-22',4548),(11,'Billy Bathgate','Glenn Mallindine','2017-01-26',76);
/*!40000 ALTER TABLE `stu_details_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_details_school`
--

DROP TABLE IF EXISTS `stu_details_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stu_details_school` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) NOT NULL,
  `school_email` varchar(100) NOT NULL,
  `school_principal` varchar(100) NOT NULL,
  `school_number` varchar(12) NOT NULL,
  `school_address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_details_school`
--

LOCK TABLES `stu_details_school` WRITE;
/*!40000 ALTER TABLE `stu_details_school` DISABLE KEYS */;
INSERT INTO `stu_details_school` VALUES (1,'St. Peter\'s School','madelinekeefe@gmail.com','Madeline Keefe','471-8828','Black Tickle, NL'),(2,'Queen of Peace Middle School','markbonnell@gmail.com','Mark Bonnell','896-5315','Happy Valley-Goose Bay, NL'),(3,'Amos Comenius Memorial School','deancoombs@gmail.com','Dean Coombs','933-3815','Hopedale, NL'),(4,'Menihek High School','fraserdrover@gmail.com','Fraser Drover','944-7731','Labrador City, NL'),(5,'J.C. Erhardt Memorial School','dionrideout@gmail.com','Dion Rideout','923-2275','Makkovik, NL'),(6,'Mud Lake School','aprilblake@gmail.com','April Blake','896-8632','Mud Lake, NL'),(7,'Jens Haven Memorial','jacoblarkin@gmail.com','Jacob Larkin','922-2813','Nain, NL'),(8,'Lake Melville School','jenniferwhite@gmail.com','Jennifer White','497-8241','North West River, NL'),(9,'B.L. Morrison','carmensheppard@gmail.com','Carmen Sheppard','479-9811','Postville, NL'),(10,'Northern Lights Academy','tommugford@gmail.com','Tom Mugford','947-3350','Rigolet, NL'),(11,'William Gillett Academy','pamelacampbell@gmail.com','Pamela Campbell','949-0223','Charlottetown, LAB'),(12,'Peacock Primary School','vernabrown@gmail.com','Verna Brown','921-6245','Mary\'s Harbour, NL'),(13,'Bayside Academy','tomflynn@gmail.com','Thompson Flynn','960-0252','Port Hope Simpson, NL'),(14,'St. Lewis Academy','susanpoole@gmail.com','Susan Poole','939-2245','St. Lewis, NL'),(15,'Henry Gordon Academy','lindseylethbridge@gmail.com','Lindsey Lethbridge','938-7291','Cartwright, NL');
/*!40000 ALTER TABLE `stu_details_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_details_student`
--

DROP TABLE IF EXISTS `stu_details_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stu_details_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `school_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_details_student_book_id_6fea9a55_fk_stu_details_book_id` (`book_id`),
  KEY `stu_details_student_school_id_3c419091_fk_stu_details_school_id` (`school_id`),
  CONSTRAINT `stu_details_student_book_id_6fea9a55_fk_stu_details_book_id` FOREIGN KEY (`book_id`) REFERENCES `stu_details_book` (`id`),
  CONSTRAINT `stu_details_student_school_id_3c419091_fk_stu_details_school_id` FOREIGN KEY (`school_id`) REFERENCES `stu_details_school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_details_student`
--

LOCK TABLES `stu_details_student` WRITE;
/*!40000 ALTER TABLE `stu_details_student` DISABLE KEYS */;
INSERT INTO `stu_details_student` VALUES (1,'Andy','Fullegar','afullegar0@wsj.com','Female',2,15),(3,'Lucy','Olifard','lolifard1@macromedia.com',NULL,3,8),(4,'Brianne','Reaman','breaman2@clickbank.net',NULL,NULL,4),(5,'Menihek High School','Fison','lfison3@nationalgeographic.com','Male',10,5),(6,'Alyss','Harcombe','aharcombe4@toplist.cz','Female',6,3),(7,'Cirillo','Ferby','cferby5@cbsnews.com',NULL,7,10),(8,'Sandor','','shylands6@rambler.ru','Male',8,4),(9,'Lev','Boyford','lboyford7@zdnet.com','Male',NULL,8),(10,'Gram','Mecchi','gmecchi8@mysql.com','Male',4,11),(11,'Glenine','Blakey','gblakey9@whitehouse.gov','Female',3,2),(12,'Grady','Diggins','gdigginsa@youtu.be','Male',9,11),(13,'Edlin','Cotterel','ecotterelb@blinklist.com','Male',NULL,1),(14,'Abraham','Crothers','acrothersc@comsenz.com','Male',5,4),(15,'Hedwig','Englefield','henglefieldd@mapquest.com','Female',NULL,10),(16,'Chrisse','Blackburne','cblackburnee@geocities.jp','Male',2,1),(17,'Estelle','Tatteshall','etatteshallf@archive.org','Female',10,4),(18,'Robinet','Godbert','rgodbertg@geocities.com','Male',7,15),(19,'Hadrian','Dunaway','hdunawayh@cnbc.com','Male',NULL,6),(20,'Dominik','Barrick','dbarricki@amazon.com','Male',10,11),(21,'Caitlin','Whapham','cwhaphamj@cnn.com','Female',NULL,2),(22,'Theodore','Gentric','tgentrick@free.fr',NULL,6,9),(23,'Lurleen','Stickler','lsticklerl@whitehouse.gov','Female',NULL,10),(24,'Hasheem','Got','hgotm@cnn.com','Male',NULL,3),(25,'Johnette','Shaudfurth','jshaudfurthn@yandex.ru','Female',11,11),(26,'Angel','Souter','asoutero@europa.eu',NULL,NULL,4),(27,'Montgomery','Balm','mbalmp@ftc.gov',NULL,2,2),(28,'Frank','Tilney','ftilneyq@wix.com',NULL,NULL,10),(29,'Ianthe','Merigeau','imerigeaur@eepurl.com','Female',8,1),(30,'Monica','Pasquale','mpasquales@home.pl','Female',6,7),(31,'Belicia','Cardillo','bcardillot@multiply.com','Female',NULL,NULL),(32,'Basil','Yedy','byedyu@free.fr',NULL,8,15),(33,'Milzie','Gyurkovics','mgyurkovicsv@gizmodo.com','Female',3,15),(34,'Tierney','Moulsdall','tmoulsdallw@stanford.edu','Female',11,1),(35,'Petey','Ovesen','povesenx@blogtalkradio.com',NULL,NULL,8),(36,'Nola','Stappard','nstappardy@imageshack.us','Female',10,2),(37,'Durant','Becken','dbeckenz@blinklist.com','Male',5,9),(38,'Otis','Bediss','obediss10@google.com.au','Mud Lake S',NULL,6),(39,'Diane-marie','Tommen','dtommen11@ask.com','Female',NULL,NULL),(40,'Lotte','Clell','lclell12@rambler.ru',NULL,11,12),(41,'Sherwin','Pert','spert13@uiuc.edu','Male',7,NULL),(42,'Anallese','Thireau','athireau14@omniture.com','Female',NULL,15),(43,'Chancey','Lehr','clehr15@prlog.org',NULL,NULL,11),(44,'Tristam','Oram','toram16@berkeley.edu','Male',4,1),(45,'Niel','MacGaughey','nmacgaughey17@discuz.net','Male',8,NULL),(46,'Koo','Favela','kfavela18@com.com','Female',NULL,8),(47,'Roger','Sterre','rsterre19@github.com','Male',9,NULL),(48,'Dalston','Alway','dalway1a@creativecommons.org','Male',6,15),(49,'Ryley','Gostridge','rgostridge1b@un.org','Male',10,NULL),(50,'Loralee','Panton','lpanton1c@wsj.com','Female',NULL,1),(51,'Lainey','Crossfield','lcrossfield1d@yolasite.com',NULL,4,15);
/*!40000 ALTER TABLE `stu_details_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24 22:47:25
