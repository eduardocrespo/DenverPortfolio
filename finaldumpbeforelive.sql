-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: symfony
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `Email`
--

DROP TABLE IF EXISTS `Email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Email`
--

LOCK TABLES `Email` WRITE;
/*!40000 ALTER TABLE `Email` DISABLE KEYS */;
INSERT INTO `Email` VALUES (22,'David Eugene Peterson','davideugenepeterson@gmail.com','Yo, the contact page is up, and this is a test run. It will also upload this email to http://198.199.100.78/admin/admin/admin/email/list'),(23,'DesmondEt','maribethb0nta@hotmail.com','sample web site <a href=http://tophamsterporn.com/>Hamster porn</a>'),(24,'Gregorygomo','les79fausel@hotmail.com','useful website <a href=http://opatube.com/>Youporn</a>'),(25,'Williamdire','fredabmxl@hotmail.com','good website <a href=http://www.xvideos6.com/>xvideos</a>'),(26,'MelvinPi','tracyrepa0@hotmail.com','highly praised website <a href=http://www.pornwebcamtube.com/>http://www.pornwebcamtube.com/</a>'),(27,'StephenPar','tatyanayzkhi@hotmail.com','first resource <a href=http://www.milfxxxpornpics.com/>MILF Porn</a>');
/*!40000 ALTER TABLE `Email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Video`
--

DROP TABLE IF EXISTS `Video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biography` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Video`
--

LOCK TABLES `Video` WRITE;
/*!40000 ALTER TABLE `Video` DISABLE KEYS */;
INSERT INTO `Video` VALUES (1,'Denver James Harward is an award-winning full-time cinematographer working regularly across the United States. He was born in a small city in Utah, and as soon as he learned to talk he told his parents that he was going to work in the movie industry. Growing up he filled every available hour of his childhood with watching film after film. As soon as he was able to, he got his hands on a consumer DV camera and began filming short films with his friends. He directed his first official music video during his senior year of high school.'),(3,'After graduating he began working at a camera store while studying film at Utah Valley University, where he had received a full-ride scholarship, but he soon chose to drop out of school and quit his day job to dedicate all of his time to pursuing a career in the film industry. He was the cinematographer for his first feature film at the age of 20. Since then, he has worked on many projects across the United States, including commercials, short films, a TV series, interviews for AMC and the Sundance Film Festival, and two feature films, winning awards at local and international film festivals. At the 2014 Filmed in Utah Awards, he won Best Cinematography for his work on the TV Series \"Day Zero.\"'),(4,'That summer he completed one of his favorite projects to date, a dark modern Western set in Springville, Utah called \"Wildlife,\" starring Jon Heder, Lauren Lapkus, Whit Hertford and Rusty Schwimmer. The film had its premiere screening at the 2015 Cannes Film Festival and was the most viewed film of the American Pavilion selections. Denver prides himself on being able to get along with anyone and is a firm believer in the power of collaboration. Possibly the biggest thing he has learned from his experiences in the world of visual storytelling is that it takes a group of talented and dedicated artists working together in harmony to create a great artistic film, and he is always searching for the next story that needs to be told.');
/*!40000 ALTER TABLE `Video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_classes`
--

DROP TABLE IF EXISTS `acl_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_classes`
--

LOCK TABLES `acl_classes` WRITE;
/*!40000 ALTER TABLE `acl_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_entries`
--

DROP TABLE IF EXISTS `acl_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) unsigned NOT NULL,
  `object_identity_id` int(10) unsigned DEFAULT NULL,
  `security_identity_id` int(10) unsigned NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) unsigned NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  KEY `IDX_46C8B806EA000B10` (`class_id`),
  KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  KEY `IDX_46C8B806DF9183C9` (`security_identity_id`),
  CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_entries`
--

LOCK TABLES `acl_entries` WRITE;
/*!40000 ALTER TABLE `acl_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_object_identities`
--

DROP TABLE IF EXISTS `acl_object_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_object_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_object_identity_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`),
  CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_object_identities`
--

LOCK TABLES `acl_object_identities` WRITE;
/*!40000 ALTER TABLE `acl_object_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_object_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_object_identity_ancestors`
--

DROP TABLE IF EXISTS `acl_object_identity_ancestors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_object_identity_ancestors` (
  `object_identity_id` int(10) unsigned NOT NULL,
  `ancestor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  KEY `IDX_825DE299C671CEA1` (`ancestor_id`),
  CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_object_identity_ancestors`
--

LOCK TABLES `acl_object_identity_ancestors` WRITE;
/*!40000 ALTER TABLE `acl_object_identity_ancestors` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_object_identity_ancestors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_security_identities`
--

DROP TABLE IF EXISTS `acl_security_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_security_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_security_identities`
--

LOCK TABLES `acl_security_identities` WRITE;
/*!40000 ALTER TABLE `acl_security_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_security_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification__category`
--

DROP TABLE IF EXISTS `classification__category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification__category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_43629B36727ACA70` (`parent_id`),
  KEY `IDX_43629B36E25D857E` (`context`),
  KEY `IDX_43629B36EA9FDD75` (`media_id`),
  CONSTRAINT `FK_43629B36727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `classification__category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_43629B36E25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`),
  CONSTRAINT `FK_43629B36EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification__category`
--

LOCK TABLES `classification__category` WRITE;
/*!40000 ALTER TABLE `classification__category` DISABLE KEYS */;
INSERT INTO `classification__category` VALUES (1,NULL,'default',NULL,'Denver Portfolio',1,'denver-portfolio','Main category',0,'2015-05-17 04:53:17','2015-05-18 05:48:21'),(3,NULL,'sonata_category',NULL,'sonata_category',1,'sonata-category','sonata_category',NULL,'2015-05-17 08:03:17','2015-05-17 08:03:17'),(4,1,'default',NULL,'Home Slideshow',1,'home-slideshow','Images that go in slideshow on the index page.',0,'2015-05-18 03:09:07','2015-05-18 05:49:02'),(5,1,'default',NULL,'Home Videos 3-col',1,'home-videos-3-col','Videos that go into 3 column bootstrap on home page.',0,'2015-05-18 05:51:49','2015-05-18 05:51:49'),(6,1,'default',NULL,'Demo Reel',1,'demo-reel','1 video for demo reel',0,'2015-06-04 05:25:04','2015-06-04 05:25:04'),(7,1,'default',NULL,'About Me Left Slideshow',1,'about-me-left-slideshow','Image gallery that goes on the left side of the homepage in the about me section.',0,'2015-06-04 07:32:53','2015-06-04 07:32:53'),(8,1,'default',NULL,'About Me Right Slideshow',1,'about-me-right-slideshow','Image gallery that goes on the right side of the homepage in the about me section.',0,'2015-06-04 09:03:10','2015-06-04 09:03:10');
/*!40000 ALTER TABLE `classification__category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification__collection`
--

DROP TABLE IF EXISTS `classification__collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification__collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_collection` (`slug`,`context`),
  KEY `IDX_A406B56AE25D857E` (`context`),
  KEY `IDX_A406B56AEA9FDD75` (`media_id`),
  CONSTRAINT `FK_A406B56AE25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`),
  CONSTRAINT `FK_A406B56AEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification__collection`
--

LOCK TABLES `classification__collection` WRITE;
/*!40000 ALTER TABLE `classification__collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `classification__collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification__context`
--

DROP TABLE IF EXISTS `classification__context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification__context` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification__context`
--

LOCK TABLES `classification__context` WRITE;
/*!40000 ALTER TABLE `classification__context` DISABLE KEYS */;
INSERT INTO `classification__context` VALUES ('default','default',1,'2015-05-17 04:53:17','2015-05-17 04:53:17'),('sonata_category','sonata_category',1,'2015-05-17 08:03:17','2015-05-17 08:03:17');
/*!40000 ALTER TABLE `classification__context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification__tag`
--

DROP TABLE IF EXISTS `classification__tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification__tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_context` (`slug`,`context`),
  KEY `IDX_CA57A1C7E25D857E` (`context`),
  CONSTRAINT `FK_CA57A1C7E25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification__tag`
--

LOCK TABLES `classification__tag` WRITE;
/*!40000 ALTER TABLE `classification__tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `classification__tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user_group`
--

DROP TABLE IF EXISTS `fos_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_group`
--

LOCK TABLES `fos_user_group` WRITE;
/*!40000 ALTER TABLE `fos_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fos_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user_user`
--

DROP TABLE IF EXISTS `fos_user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_user`
--

LOCK TABLES `fos_user_user` WRITE;
/*!40000 ALTER TABLE `fos_user_user` DISABLE KEYS */;
INSERT INTO `fos_user_user` VALUES (1,'denver','denver','denver@denverharward.com','denver@denverharward.com',1,'f9c9vdapnkg8080s4k4oog8gcs808k8','A8XZi6Oqcjaap79/RGqnpoLb8O629pQaAQyUGrS24/ELgo8MVx5ODV9wgydGrQEAIpdUfIunaTDliWYrP9KxvQ==','2015-06-08 21:33:36',0,0,NULL,NULL,NULL,'a:2:{i:0;s:10:\"ROLE_ADMIN\";i:1;s:17:\"ROLE_SONATA_ADMIN\";}',0,NULL,'2015-05-16 14:05:32','2015-06-08 21:43:42',NULL,NULL,NULL,NULL,NULL,'u',NULL,NULL,NULL,NULL,NULL,'null',NULL,NULL,'null',NULL,NULL,'null',NULL,NULL);
/*!40000 ALTER TABLE `fos_user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user_user_group`
--

DROP TABLE IF EXISTS `fos_user_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`),
  CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_user_group`
--

LOCK TABLES `fos_user_user_group` WRITE;
/*!40000 ALTER TABLE `fos_user_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fos_user_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__gallery`
--

DROP TABLE IF EXISTS `media__gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `default_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__gallery`
--

LOCK TABLES `media__gallery` WRITE;
/*!40000 ALTER TABLE `media__gallery` DISABLE KEYS */;
INSERT INTO `media__gallery` VALUES (3,'Slideshow1','default','default_big',0,'2015-05-18 03:18:21','2015-05-18 03:18:21');
/*!40000 ALTER TABLE `media__gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__gallery_media`
--

DROP TABLE IF EXISTS `media__gallery_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__gallery_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_80D4C5414E7AF8F` (`gallery_id`),
  KEY `IDX_80D4C541EA9FDD75` (`media_id`),
  CONSTRAINT `FK_80D4C5414E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `media__gallery` (`id`),
  CONSTRAINT `FK_80D4C541EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__gallery_media`
--

LOCK TABLES `media__gallery_media` WRITE;
/*!40000 ALTER TABLE `media__gallery_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media__gallery_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__media`
--

DROP TABLE IF EXISTS `media__media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_status` int(11) NOT NULL,
  `provider_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_metadata` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_size` int(11) DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdn_is_flushable` tinyint(1) DEFAULT NULL,
  `cdn_flush_at` datetime DEFAULT NULL,
  `cdn_status` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `cdn_flush_identifier` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5C6DD74E12469DE2` (`category_id`),
  CONSTRAINT `FK_5C6DD74E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `classification__category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__media`
--

LOCK TABLES `media__media` WRITE;
/*!40000 ALTER TABLE `media__media` DISABLE KEYS */;
INSERT INTO `media__media` VALUES (123,'The Janus Project Concept Teaser',NULL,1,'sonata.media.provider.youtube',1,'tCLEoBo0nGc','{\"version\":\"1.0\",\"provider_name\":\"YouTube\",\"thumbnail_height\":360,\"title\":\"The Janus Project Concept Teaser\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/tCLEoBo0nGc\\/hqdefault.jpg\",\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/tCLEoBo0nGc?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"type\":\"video\",\"height\":270,\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/thejanusprojectfilm\",\"thumbnail_width\":480,\"author_name\":\"The Janus Project\",\"width\":480}',480,270,NULL,'video/x-flv',NULL,NULL,'The Janus Project','default',0,NULL,NULL,'2015-06-08 21:14:44','2015-06-08 21:11:37',5,NULL),(124,'ASCEND Teaser',NULL,1,'sonata.media.provider.youtube',1,'abhUqjgfevI','{\"thumbnail_height\":360,\"height\":270,\"provider_name\":\"YouTube\",\"thumbnail_width\":480,\"author_name\":\"AscendFilm2013\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"width\":480,\"version\":\"1.0\",\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/AscendFilm2013\",\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/abhUqjgfevI?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"title\":\"ASCEND Teaser\",\"type\":\"video\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/abhUqjgfevI\\/hqdefault.jpg\"}',480,270,NULL,'video/x-flv',NULL,NULL,'AscendFilm2013','default',0,NULL,NULL,'2015-06-08 21:14:49','2015-06-08 21:11:47',5,NULL),(125,'The Retribution of Tom Percival (2013 SLC 48-Hour Film Fest Entry)',NULL,1,'sonata.media.provider.youtube',1,'MHryaLAQPk8','{\"type\":\"video\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/MHryaLAQPk8\\/hqdefault.jpg\",\"thumbnail_height\":360,\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"provider_name\":\"YouTube\",\"width\":480,\"title\":\"The Retribution of Tom Percival (2013 SLC 48-Hour Film Fest Entry)\",\"thumbnail_width\":480,\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/DenverHarward\",\"version\":\"1.0\",\"height\":270,\"author_name\":\"Denver James Harward\",\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/MHryaLAQPk8?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\"}',480,270,NULL,'video/x-flv',NULL,NULL,'Denver James Harward','default',0,NULL,NULL,'2015-06-08 21:14:54','2015-06-08 21:12:02',5,NULL),(126,'Dreamcatcher Teaser Trailer',NULL,1,'sonata.media.provider.youtube',1,'BgKPTPsxkqI','{\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/BgKPTPsxkqI?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"provider_name\":\"YouTube\",\"version\":\"1.0\",\"thumbnail_height\":360,\"type\":\"video\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/BgKPTPsxkqI\\/hqdefault.jpg\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"thumbnail_width\":480,\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/trevorlmcintosh\",\"title\":\"Dreamcatcher Teaser Trailer\",\"width\":480,\"author_name\":\"Trevor McIntosh\",\"height\":270}',480,270,NULL,'video/x-flv',NULL,NULL,'Trevor McIntosh','default',0,NULL,NULL,'2015-06-08 21:15:26','2015-06-08 21:12:17',5,NULL),(128,'Ono Teaser',NULL,1,'sonata.media.provider.youtube',1,'QNlpUwd0s2o','{\"title\":\"Ono Teaser\",\"width\":480,\"height\":270,\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/QNlpUwd0s2o?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"thumbnail_height\":360,\"thumbnail_width\":480,\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/snazzyflapper\",\"version\":\"1.0\",\"provider_name\":\"YouTube\",\"type\":\"video\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/QNlpUwd0s2o\\/hqdefault.jpg\",\"author_name\":\"Chris Adler\"}',480,270,NULL,'video/x-flv',NULL,NULL,'Chris Adler','default',0,NULL,NULL,'2015-06-08 21:15:31','2015-06-08 21:13:20',5,NULL),(129,'Mirror',NULL,1,'sonata.media.provider.youtube',1,'lV0XoBYeCRU','{\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/lV0XoBYeCRU?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"title\":\"Mirror\",\"type\":\"video\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/lV0XoBYeCRU\\/hqdefault.jpg\",\"thumbnail_width\":480,\"author_name\":\"ARedGiantProduction\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"thumbnail_height\":360,\"height\":270,\"provider_name\":\"YouTube\",\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/ARedGiantProduction\",\"width\":480,\"version\":\"1.0\"}',480,270,NULL,'video/x-flv',NULL,NULL,'ARedGiantProduction','default',0,NULL,NULL,'2015-06-08 21:15:36','2015-06-08 21:13:41',5,NULL),(130,'Oh, Be Clever - Next To You',NULL,1,'sonata.media.provider.youtube',1,'d8XrxY3NVRA','{\"version\":\"1.0\",\"provider_name\":\"YouTube\",\"thumbnail_height\":360,\"title\":\"Oh, Be Clever - Next To You\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/d8XrxY3NVRA\\/hqdefault.jpg\",\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/d8XrxY3NVRA?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"type\":\"video\",\"height\":270,\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/ohbeclever\",\"thumbnail_width\":480,\"author_name\":\"Oh, Be Clever\",\"width\":480}',480,270,NULL,'video/x-flv',NULL,NULL,'Oh, Be Clever','default',0,NULL,NULL,'2015-06-08 21:15:40','2015-06-08 21:14:00',5,NULL),(131,'Jody Whitesides - Touch [Explicit] ft. Jacarri',NULL,1,'sonata.media.provider.youtube',1,'8rqb0h2l8Lg','{\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/JodyWhitesidesVEVO\",\"thumbnail_width\":480,\"width\":480,\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/8rqb0h2l8Lg\\/hqdefault.jpg\",\"version\":\"1.0\",\"type\":\"video\",\"provider_name\":\"YouTube\",\"title\":\"Jody Whitesides - Touch [Explicit] ft. Jacarri\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/8rqb0h2l8Lg?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"author_name\":\"JodyWhitesidesVEVO\",\"height\":270,\"thumbnail_height\":360}',480,270,NULL,'video/x-flv',NULL,NULL,'JodyWhitesidesVEVO','default',0,NULL,NULL,'2015-06-08 21:15:51','2015-06-08 21:14:22',5,NULL),(132,'Loss - Official Trailer (2014 Short Film)',NULL,1,'sonata.media.provider.youtube',1,'t0Iz3TrgK0g','{\"author_name\":\"Levi E\",\"provider_url\":\"http:\\/\\/www.youtube.com\\/\",\"provider_name\":\"YouTube\",\"thumbnail_height\":360,\"height\":270,\"author_url\":\"http:\\/\\/www.youtube.com\\/user\\/FastAndFuriousClips\",\"version\":\"1.0\",\"width\":480,\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/t0Iz3TrgK0g?feature=oembed\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\",\"title\":\"Loss - Official Trailer (2014 Short Film)\",\"type\":\"video\",\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/t0Iz3TrgK0g\\/hqdefault.jpg\",\"thumbnail_width\":480}',480,270,NULL,'video/x-flv',NULL,NULL,'Levi E','default',0,NULL,NULL,'2015-06-08 21:15:55','2015-06-08 21:14:38',5,NULL),(133,'1-1.png',NULL,1,'sonata.media.provider.image',1,'5cf199b87547649c220d8ad03908902890a89ad7.png','{\"filename\":\"1-1.png\"}',1821,1366,NULL,'image/png',7484039,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:26:18','2015-06-08 21:17:24',7,NULL),(134,'1-2.png',NULL,1,'sonata.media.provider.image',1,'00a33225aa469fc94d60928dccd4a65f483c4115.png','{\"filename\":\"1-2.png\"}',1821,1366,NULL,'image/png',7484039,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:26:24','2015-06-08 21:18:56',7,NULL),(135,'1-3.png',NULL,1,'sonata.media.provider.image',1,'c7d8450132f3c0c541b17a3aa23d5cc13e9b9820.png','{\"filename\":\"1-3.png\"}',2049,1366,NULL,'image/png',8416198,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:26:30','2015-06-08 21:20:32',7,NULL),(136,'1-4.png',NULL,1,'sonata.media.provider.image',1,'c7bf0cbfb47b52643579f921c4e2d84e8f151ef1.png','{\"filename\":\"1-4.png\"}',1821,1366,NULL,'image/png',7484039,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:26:38','2015-06-08 21:22:02',7,NULL),(137,'1-5.png',NULL,1,'sonata.media.provider.image',1,'4eb29601375ae4f56d364679e4028c93ae83e840.png','{\"filename\":\"1-5.png\"}',1210,1366,NULL,'image/png',4979781,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:26:46','2015-06-08 21:23:35',7,NULL),(138,'1-6.png',NULL,1,'sonata.media.provider.image',1,'0da7fa27779b256befd1ee50438b3f207a6ca8e5.png','{\"filename\":\"1-6.png\"}',2048,1366,NULL,'image/png',8414631,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:26:51','2015-06-08 21:25:09',7,NULL),(139,'2-1.png',NULL,1,'sonata.media.provider.image',1,'621c2a62fa60ce1d7916d83439a12469017e61f6.png','{\"filename\":\"2-1.png\"}',1821,1366,NULL,'image/png',7481905,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:35:20','2015-06-08 21:26:56',8,NULL),(140,'2-2.png',NULL,1,'sonata.media.provider.image',1,'582938b9135745a48f41da57412471faa38337ee.png','{\"filename\":\"2-2.png\"}',1821,1366,NULL,'image/png',7484039,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:35:24','2015-06-08 21:28:22',8,NULL),(141,'2-3.png',NULL,1,'sonata.media.provider.image',1,'fd582746efd38ccab5deea6bed00a2fd1295a5ab.png','{\"filename\":\"2-3.png\"}',2049,1366,NULL,'image/png',8416198,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:35:29','2015-06-08 21:30:25',8,NULL),(142,'2-4.png',NULL,1,'sonata.media.provider.image',1,'4ccd6075a3745966e62b00ac15d9c04f656f6c95.png','{\"filename\":\"2-4.png\"}',1492,1366,NULL,'image/png',6135592,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:35:33','2015-06-08 21:31:45',8,NULL),(143,'2-5.png',NULL,1,'sonata.media.provider.image',1,'af3803f8c3771c8c33e4884551bcdd561debb663.png','{\"filename\":\"2-5.png\"}',2048,1366,NULL,'image/png',8414435,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:35:37','2015-06-08 21:33:19',8,NULL),(144,'2-6.png',NULL,1,'sonata.media.provider.image',1,'f0cb0ab4037774380788f80722410bc0ccc1a169.png','{\"filename\":\"2-6.png\"}',2050,1366,NULL,'image/png',8422822,NULL,NULL,'default',0,NULL,NULL,'2015-06-08 21:35:42','2015-06-08 21:34:56',8,NULL),(145,'DENVER JAMES HARWARD 2015 CINEMATOGRAPHY REEL','imdb.me/denverharward',1,'sonata.media.provider.vimeo',1,'129937282','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"DENVER JAMES HARWARD 2015 CINEMATOGRAPHY REEL\",\"author_name\":\"denverjamesharward\",\"author_url\":\"http:\\/\\/vimeo.com\\/denverjamesharward\",\"is_plus\":\"1\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/129937282\\\" width=\\\"1280\\\" height=\\\"720\\\" frameborder=\\\"0\\\" title=\\\"DENVER JAMES HARWARD 2015 CINEMATOGRAPHY REEL\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1280,\"height\":720,\"duration\":271,\"description\":\"imdb.me\\/denverharward\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/521621303_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":129937282,\"uri\":\"\\/videos\\/129937282\"}',1280,720,271,'video/x-flv',NULL,NULL,'denverjamesharward','default',0,NULL,NULL,'2015-06-08 21:39:53','2015-06-08 21:39:46',6,NULL),(146,'galleryOpti.png',NULL,0,'sonata.media.provider.image',1,'aa96e35ac19f896b45fba37df06dfb80f428536f.png','{\"filename\":\"galleryOpti.png\"}',1024,518,NULL,'image/png',527354,NULL,NULL,'default',NULL,NULL,NULL,'2015-06-08 21:41:10','2015-06-08 21:41:10',1,NULL),(147,'demoreelOpti.png',NULL,0,'sonata.media.provider.image',1,'075157b5816499ca4b07bfcea4ef769ad0d6220d.png','{\"filename\":\"demoreelOpti.png\"}',1024,470,NULL,'image/png',367201,NULL,NULL,'default',NULL,NULL,NULL,'2015-06-08 21:41:20','2015-06-08 21:41:20',1,NULL),(149,'contactOpti.png',NULL,0,'sonata.media.provider.image',1,'ff294876e9acfdd283b78a1164254005e2bcf13d.png','{\"filename\":\"contactOpti.png\"}',1004,334,NULL,'image/png',201173,NULL,NULL,'default',NULL,NULL,NULL,'2015-06-08 21:41:41','2015-06-08 21:41:41',1,NULL),(150,'aboutmeOpti.png',NULL,0,'sonata.media.provider.image',1,'803dc3570ae004fcaefe7d6b143f907863fc0204.png','{\"filename\":\"aboutmeOpti.png\"}',1080,484,NULL,'image/png',113622,NULL,NULL,'default',NULL,NULL,NULL,'2015-06-08 21:41:51','2015-06-08 21:41:51',1,NULL),(151,'headerrepeat.png',NULL,0,'sonata.media.provider.image',1,'0c4936942d34d25a12944695726a06e4723d1627.png','{\"filename\":\"headerrepeat.png\"}',1,11,NULL,'image/png',453,NULL,NULL,'default',NULL,NULL,NULL,'2015-06-08 21:42:04','2015-06-08 21:42:04',1,NULL);
/*!40000 ALTER TABLE `media__media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-08 23:55:42
