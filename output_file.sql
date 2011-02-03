-- MySQL dump 10.13  Distrib 5.1.54, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: inovafi
-- ------------------------------------------------------
-- Server version	5.1.54

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'estudantes');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,7);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add poll',8,'add_poll'),(23,'Can change poll',8,'change_poll'),(24,'Can delete poll',8,'delete_poll'),(25,'Can add choice',9,'add_choice'),(26,'Can change choice',9,'change_choice'),(27,'Can delete choice',9,'delete_choice'),(46,'Can add log entry',16,'add_logentry'),(47,'Can change log entry',16,'change_logentry'),(48,'Can delete log entry',16,'delete_logentry'),(49,'Can add aluno',17,'add_aluno'),(50,'Can change aluno',17,'change_aluno'),(51,'Can delete aluno',17,'delete_aluno'),(52,'Can add curso',18,'add_curso'),(53,'Can change curso',18,'change_curso'),(54,'Can delete curso',18,'delete_curso'),(55,'Can add matricula',19,'add_matricula'),(56,'Can change matricula',19,'change_matricula'),(57,'Can delete matricula',19,'delete_matricula'),(58,'Can add pergunta',20,'add_pergunta'),(59,'Can change pergunta',20,'change_pergunta'),(60,'Can delete pergunta',20,'delete_pergunta'),(61,'Can add resposta',21,'add_resposta'),(62,'Can change resposta',21,'change_resposta'),(63,'Can delete resposta',21,'delete_resposta'),(64,'Can add prova',22,'add_prova'),(65,'Can change prova',22,'change_prova'),(66,'Can delete prova',22,'delete_prova');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'trvd1707','Teresa','Van Dusen','trvd1707@gmail.com','sha1$6581d$9511988f233b878b49db07b7d96764b41ee6b5de',1,1,1,'2011-01-23 21:29:14','2011-01-12 15:18:08'),(2,'paulobrios','Paulo','Rios','paulobrios@gmail.com','sha1$833c1$92db2c67a61598b1009a1776cccec6a355471252',1,1,1,'2011-01-22 21:33:17','2011-01-22 21:33:17'),(3,'jsilva','José','da Silva','jsilva@gmail.com','sha1$56101$3de48e36d7ae9597cf89aa6dbf496f925eafbbe3',0,1,0,'2011-01-23 20:42:56','2011-01-23 20:42:56');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,3,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (96,2,66),(95,2,65),(94,2,64),(93,2,63),(92,2,62),(91,2,61),(90,2,60),(89,2,59),(88,2,58),(87,2,57),(86,2,56),(85,2,55),(84,2,54),(83,2,53),(82,2,52),(81,2,51),(80,2,50),(79,2,49),(78,2,48),(77,2,47),(76,2,46),(75,2,27),(74,2,26),(73,2,25),(72,2,24),(71,2,23),(70,2,22),(69,2,21),(68,2,20),(67,2,19),(66,2,18),(65,2,17),(64,2,16),(63,2,15),(62,2,14),(61,2,13),(60,2,12),(59,2,11),(58,2,10),(57,2,9),(56,2,8),(55,2,7),(54,2,6),(53,2,5),(52,2,4),(51,2,3),(50,2,2),(49,2,1);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-01-13 20:30:52',1,8,'1','What\'s up?',2,'Changed question.'),(2,'2011-01-13 20:31:07',1,8,'1','What\'s up?',2,'No fields changed.'),(3,'2011-01-13 20:46:56',1,8,'1','What\'s up?',2,'Added choice \"nothing\".'),(4,'2011-01-13 20:47:49',1,8,'1','What\'s up?',2,'Added choice \"it\'s all a big mess\".'),(5,'2011-01-13 20:50:24',1,8,'2','how many fish there are in the ocean?',1,''),(6,'2011-01-13 21:28:44',1,8,'2','how many fish there are in the ocean?',3,''),(9,'2011-01-14 07:25:49',1,8,'1','What\'s up?',2,'Changed choice for choice \"good\".'),(35,'2011-01-23 19:39:17',1,17,'1','Aluno object',1,''),(36,'2011-01-23 19:40:14',1,17,'2','Aluno object',1,''),(37,'2011-01-23 20:42:02',1,3,'1','trvd1707',2,'Modificado first_name e last_name.'),(38,'2011-01-23 20:42:18',1,3,'2','paulobrios',2,'Modificado last_name.'),(39,'2011-01-23 20:42:56',1,3,'3','jsilva',1,''),(40,'2011-01-23 20:43:47',1,3,'3','jsilva',2,'Modificado first_name, last_name e email.'),(41,'2011-01-28 16:24:39',1,2,'1','estudantes',1,''),(42,'2011-01-28 16:26:57',1,3,'3','jsilva',2,'Modificado groups.'),(31,'2011-01-22 21:23:07',1,17,'4','Mariana Sant\'Anna',1,''),(32,'2011-01-22 21:33:17',1,3,'2','paulobrios',1,''),(33,'2011-01-22 21:34:15',1,3,'2','paulobrios',2,'Modificado first_name, last_name, email, is_staff, is_superuser e user_permissions.'),(34,'2011-01-23 19:12:40',1,17,'2','Aluno object',1,''),(29,'2011-01-22 20:55:43',1,17,'2','Isabel Van Dusen',1,''),(30,'2011-01-22 21:22:11',1,17,'3','José da Silva',1,''),(27,'2011-01-19 19:01:48',1,18,'2','Treinamento Operacional',1,''),(28,'2011-01-19 19:02:23',1,18,'2','Treinamento Operacional',2,'Deletado pergunta \"pergunta4\".');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'poll','polls','poll'),(9,'choice','polls','choice'),(16,'log entry','admin','logentry'),(17,'aluno','inovafi','aluno'),(18,'curso','inovafi','curso'),(19,'matricula','inovafi','matricula'),(20,'pergunta','inovafi','pergunta'),(21,'resposta','inovafi','resposta'),(22,'prova','inovafi','prova');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('93011056dd71802c46630b12e8d4f9af','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjcyNDI2NTkyYjE1YTNhMmE4OTVjNWU4OThl\nNTY2YmE2\n','2011-01-29 20:42:54'),('c211c3d743e3dd3c7c817d8cc08df053','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-01-27 19:42:28'),('427b372e1df9be933b7ecd1fdfa7c07b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-01-28 18:13:14'),('2bc09530f4f71e0d23e94958ee6a1cd8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-02-03 19:32:04'),('f1f69054850fceaad96d2bcd932c1f16','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-01-29 20:43:23'),('69a4e3197951fe5e146d23632d230fb3','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-02-02 16:01:51'),('26f31ee6b0c764203d1ae26c61420bf6','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-01-31 19:21:14'),('828836ae074d9175d94539804c0ad5fb','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjcyNDI2NTkyYjE1YTNhMmE4OTVjNWU4OThl\nNTY2YmE2\n','2011-02-11 16:13:46'),('13c6ef966fc996a6c1f467407e4da427','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-02-05 09:11:03'),('bb2537a710d28da5e522725186fe7839','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS40YjNhNDlkNmRhNmVhOTI5ODI2\nNjFkZDkzMDQ5ZjY2MQ==\n','2011-02-06 21:29:14');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_aluno`
--

DROP TABLE IF EXISTS `inovafi_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_aluno` (
  `usrid` int(11) NOT NULL,
  `tipodealuno` tinyint(1) NOT NULL,
  `nascimento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  PRIMARY KEY (`usrid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_aluno`
--

LOCK TABLES `inovafi_aluno` WRITE;
/*!40000 ALTER TABLE `inovafi_aluno` DISABLE KEYS */;
INSERT INTO `inovafi_aluno` VALUES (1,1,'1962-08-28','F'),(2,1,'1969-02-11','M');
/*!40000 ALTER TABLE `inovafi_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_answer`
--

DROP TABLE IF EXISTS `inovafi_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `answerBody` varchar(150) NOT NULL,
  `correctAnswer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inovafi_answer_1f92e550` (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_answer`
--

LOCK TABLES `inovafi_answer` WRITE;
/*!40000 ALTER TABLE `inovafi_answer` DISABLE KEYS */;
INSERT INTO `inovafi_answer` VALUES (1,1,'Não há diferença',0),(2,1,'Irradiação é pior que contaminação',0),(3,1,'A pessoa irradiada recebe a radiação, já na contaminação, a pessoa mantém contato com o material radioativo também.',1),(4,1,'A pessoa irradiada e contaminada passa radiação para os outros',0),(5,1,'A contaminação e a irradiação acontecem quando trabalhamos próximos à radiação',0),(6,2,'Audição',0),(7,2,'Visão',0),(8,2,'Tato',0),(9,2,'Olfato',0),(10,2,'Nenhum deles',1),(11,3,'Verificar se o isolamento de área é suficiente e contatar o Supervisor de Radioproteção',1),(12,3,'Fazer contato com o corpo de bombeiros',0),(13,3,'Fazer contato com o CNEN',0),(14,3,'Sair correndo',0),(15,3,'Nenhuma das anteriores',0),(16,4,'Contaminantes',1),(17,4,'Mortais ao primeiro contato',0),(18,4,'Contagiosos',0),(19,4,'Visíveis no escuro',0),(20,4,'Nenhuma das anteriores',0),(21,5,'Minimizar o tempo de exposição, aumentar a distância em relação à fonte de radiação e interpor uma barreira física',1),(22,5,'Minimizar a distância em relação à fonte de radiação e utilizar o dosímetro',0),(23,5,'Prestar atenção aos sentidos que possam perceber os sinais de radiação e evitar a radiação médica',0),(24,5,'Conhecer o princípio de funcionamento da fonte de radiação e ler com atenção o manual de operação',0),(25,5,'Nenhuma das anteriores',0);
/*!40000 ALTER TABLE `inovafi_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_course`
--

DROP TABLE IF EXISTS `inovafi_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `expiration` int(11) NOT NULL,
  `slidesPath` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_course`
--

LOCK TABLES `inovafi_course` WRITE;
/*!40000 ALTER TABLE `inovafi_course` DISABLE KEYS */;
INSERT INTO `inovafi_course` VALUES (1,'Treinamento em Proteção Radiológica','todos os detalhes do treinamento em protecao radiologica',6,'/slides/curso1');
/*!40000 ALTER TABLE `inovafi_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_curso`
--

DROP TABLE IF EXISTS `inovafi_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `validade` int(11) NOT NULL,
  `slidesPath` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_curso`
--

LOCK TABLES `inovafi_curso` WRITE;
/*!40000 ALTER TABLE `inovafi_curso` DISABLE KEYS */;
INSERT INTO `inovafi_curso` VALUES (1,'Treinamento em Proteção Radiológica','todos os detalhes do treinamento em protecao radiologica',6,'/slides/curso1'),(2,'Treinamento Operacional','Funcionamento de máquinas ',12,'/slides/curso2');
/*!40000 ALTER TABLE `inovafi_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_enrollment`
--

DROP TABLE IF EXISTS `inovafi_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_enrollment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `enrollDate` date NOT NULL,
  `testDate` date NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inovafi_enrollment_ff48d8e5` (`course_id`),
  KEY `inovafi_enrollment_42ff452e` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_enrollment`
--

LOCK TABLES `inovafi_enrollment` WRITE;
/*!40000 ALTER TABLE `inovafi_enrollment` DISABLE KEYS */;
INSERT INTO `inovafi_enrollment` VALUES (1,1,1,'2011-01-13','2011-01-13',0);
/*!40000 ALTER TABLE `inovafi_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_matricula`
--

DROP TABLE IF EXISTS `inovafi_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso_id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `dataMatricula` date NOT NULL,
  `dataProva` date NOT NULL,
  `nota` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inovafi_matricula_17e2b2af` (`curso_id`),
  KEY `inovafi_matricula_5b201a70` (`aluno_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_matricula`
--

LOCK TABLES `inovafi_matricula` WRITE;
/*!40000 ALTER TABLE `inovafi_matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `inovafi_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_pergunta`
--

DROP TABLE IF EXISTS `inovafi_pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_pergunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso_id` int(11) NOT NULL,
  `corpoPergunta` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inovafi_pergunta_17e2b2af` (`curso_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_pergunta`
--

LOCK TABLES `inovafi_pergunta` WRITE;
/*!40000 ALTER TABLE `inovafi_pergunta` DISABLE KEYS */;
INSERT INTO `inovafi_pergunta` VALUES (1,1,'Aponte a diferença entre irradiação e contaminação:'),(2,1,'A presença de radiação ionizante é percebida por qual dos nossos sentidos:'),(3,1,'Quais são as primeiras providências a serem tomadas em uma situação de emergência?   '),(4,1,'Os Raios-x são:'),(5,1,'Os princípios de proteção radiológica são:'),(6,2,'pergunta1'),(7,2,'pergunta2'),(8,2,'pergunta3');
/*!40000 ALTER TABLE `inovafi_pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_prova`
--

DROP TABLE IF EXISTS `inovafi_prova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_prova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula_id` int(11) NOT NULL,
  `pergunta_id` int(11) NOT NULL,
  `resposta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inovafi_prova_6a873751` (`matricula_id`),
  KEY `inovafi_prova_355f7020` (`pergunta_id`),
  KEY `inovafi_prova_c76636bb` (`resposta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_prova`
--

LOCK TABLES `inovafi_prova` WRITE;
/*!40000 ALTER TABLE `inovafi_prova` DISABLE KEYS */;
/*!40000 ALTER TABLE `inovafi_prova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_question`
--

DROP TABLE IF EXISTS `inovafi_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `questionBody` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inovafi_question_ff48d8e5` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_question`
--

LOCK TABLES `inovafi_question` WRITE;
/*!40000 ALTER TABLE `inovafi_question` DISABLE KEYS */;
INSERT INTO `inovafi_question` VALUES (1,1,'Aponte a diferença entre irradiação e contaminação:'),(2,1,'A presença de radiação ionizante é percebida por qual dos nossos sentidos:'),(3,1,'Quais são as primeiras providências a serem tomadas em uma situação de emergência?   '),(4,1,'Os Raios-x são:'),(5,1,'Os princípios de proteção radiológica são:');
/*!40000 ALTER TABLE `inovafi_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inovafi_resposta`
--

DROP TABLE IF EXISTS `inovafi_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inovafi_resposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta_id` int(11) NOT NULL,
  `corpoResposta` varchar(150) NOT NULL,
  `correta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inovafi_resposta_355f7020` (`pergunta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inovafi_resposta`
--

LOCK TABLES `inovafi_resposta` WRITE;
/*!40000 ALTER TABLE `inovafi_resposta` DISABLE KEYS */;
INSERT INTO `inovafi_resposta` VALUES (1,1,'Não há diferença',0),(2,1,'Irradiação é pior que contaminação',0),(3,1,'A pessoa irradiada recebe a radiação, já na contaminação, a pessoa mantém contato com o material radioativo também.',1),(4,1,'A pessoa irradiada e contaminada passa radiação para os outros',0),(5,1,'A contaminação e a irradiação acontecem quando trabalhamos próximos à radiação',0),(6,2,'Audição',0),(7,2,'Visão',0),(8,2,'Tato',0),(9,2,'Olfato',0),(10,2,'Nenhum deles',1),(11,3,'Verificar se o isolamento de área é suficiente e contatar o Supervisor de Radioproteção',1),(12,3,'Fazer contato com o corpo de bombeiros',0),(13,3,'Fazer contato com o CNEN',0),(14,3,'Sair correndo',0),(15,3,'Nenhuma das anteriores',0),(16,4,'Contaminantes',1),(17,4,'Mortais ao primeiro contato',0),(18,4,'Contagiosos',0),(19,4,'Visíveis no escuro',0),(20,4,'Nenhuma das anteriores',0),(21,5,'Minimizar o tempo de exposição, aumentar a distância em relação à fonte de radiação e interpor uma barreira física',1),(22,5,'Minimizar a distância em relação à fonte de radiação e utilizar o dosímetro',0),(23,5,'Prestar atenção aos sentidos que possam perceber os sinais de radiação e evitar a radiação médica',0),(24,5,'Conhecer o princípio de funcionamento da fonte de radiação e ler com atenção o manual de operação',0),(25,5,'Nenhuma das anteriores',0);
/*!40000 ALTER TABLE `inovafi_resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `choice` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_763e883` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (1,1,'Not much',3),(2,1,'The sky',1),(3,1,'Just hacking again',2),(4,1,'nothing',2),(5,1,'good',2);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_poll`
--

DROP TABLE IF EXISTS `polls_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_poll`
--

LOCK TABLES `polls_poll` WRITE;
/*!40000 ALTER TABLE `polls_poll` DISABLE KEYS */;
INSERT INTO `polls_poll` VALUES (1,'What\'s up?','2011-01-12 15:35:52');
/*!40000 ALTER TABLE `polls_poll` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-28 16:44:29
