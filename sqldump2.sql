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
-- Table structure for table `Video`
--

DROP TABLE IF EXISTS `Video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Video`
--

LOCK TABLES `Video` WRITE;
/*!40000 ALTER TABLE `Video` DISABLE KEYS */;
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
  CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  CONSTRAINT `FK_43629B36EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_43629B36727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `classification__category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_43629B36E25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification__category`
--

LOCK TABLES `classification__category` WRITE;
/*!40000 ALTER TABLE `classification__category` DISABLE KEYS */;
INSERT INTO `classification__category` VALUES (1,NULL,'default',NULL,'Denver Portfolio',1,'denver-portfolio','Main category',0,'2015-05-17 04:53:17','2015-05-18 05:48:21'),(3,NULL,'sonata_category',NULL,'sonata_category',1,'sonata-category','sonata_category',NULL,'2015-05-17 08:03:17','2015-05-17 08:03:17'),(4,1,'default',NULL,'Home Slideshow',1,'home-slideshow','Images that go in slideshow on the index page.',0,'2015-05-18 03:09:07','2015-05-18 05:49:02'),(5,1,'default',NULL,'Home Videos 3-col',1,'home-videos-3-col','Videos that go into 3 column bootstrap on home page.',0,'2015-05-18 05:51:49','2015-05-18 05:51:49');
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
  CONSTRAINT `FK_A406B56AEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A406B56AE25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`)
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
INSERT INTO `fos_user_user` VALUES (1,'denver','denver','denver@denverharward.com','denver@denverharward.com',1,'f9c9vdapnkg8080s4k4oog8gcs808k8','wwYOKH3ojsQCWtpD7NXJwv/OqPGROpcwFk0VasYOXr+1T739W2KwQnru9xIHSIQtASThizOPj6VULXUVpoJSgg==','2015-05-27 17:39:16',0,0,NULL,NULL,NULL,'a:2:{i:0;s:10:\"ROLE_ADMIN\";i:1;s:17:\"ROLE_SONATA_ADMIN\";}',0,NULL,'2015-05-16 14:05:32','2015-05-27 17:39:16',NULL,NULL,NULL,NULL,NULL,'u',NULL,NULL,NULL,NULL,NULL,'null',NULL,NULL,'null',NULL,NULL,'null',NULL,NULL);
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
  CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE
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
  CONSTRAINT `FK_80D4C541EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`),
  CONSTRAINT `FK_80D4C5414E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `media__gallery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__gallery_media`
--

LOCK TABLES `media__gallery_media` WRITE;
/*!40000 ALTER TABLE `media__gallery_media` DISABLE KEYS */;
INSERT INTO `media__gallery_media` VALUES (4,3,22,1,1,'2015-05-18 03:18:21','2015-05-18 03:18:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__media`
--

LOCK TABLES `media__media` WRITE;
/*!40000 ALTER TABLE `media__media` DISABLE KEYS */;
INSERT INTO `media__media` VALUES (5,'LOSTOPOLIS','Production Company:  \r\nDirector/Creative Directors: Jonathan Garin and Naomi Nishimura\r\nStory by: Jonathan Garin and Naomi Nishimura\r\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\r\nDesign: Kim Dulaney, Ivy Tai\r\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim 		\r\n3D Texturing/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\r\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\r\nLead Character Animator: Jamil Lahham\r\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \"Q\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\r\n\r\nCG Supervisors: Adam Burke, Raphael Matto\r\n3D Lighting: Mirelle Underwood\r\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \"Golf\" Tipyakanont, Rafael Villar\r\n3D Cloth and Hair: Jason Bikofsky, Phuwit \"Golf\" Tipyakanont\r\nCompositing Lead: Navid Bagherzadeh\r\nCompositing: Navid Bagherzadeh, TingTing Li\r\nEditing: Moss Levenson, Kevin Park\r\n3D Tracking: Stephen Hill\r\nIT: Evan Harper, Craig Zimmerman\r\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\r\n\r\nLive Action:\r\nDirector: Jonathan Garin and Naomi Nishimura\r\nAssistant Director: Shane Kalman\r\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\r\nDirector of Photography: Christopher Keohane\r\nAssistant Cameraman: Paul Storey\r\nMotion Control Operator: Hans Chew\r\nCG Supervisor: Raphael Matto\r\nP.A.: Matt Marlin, Kenji Ryuko\r\n\r\nSound Design Company:\r\nSound Design: Henry Boy\r\n	\r\nSound Editing and Mix:\r\nKevin Park\r\n\r\nVoice Over Record and Casting:\r\nTalkback Casting and Directing \r\nVoice Director: Amanda Wyatt\r\nAudio Engineer: James Heraz\r\n	\r\nVoice Over Artists:\r\nAbby: Cassandra Morris\r\nBoofer: Roger Craig Smith\r\nRoboto: Dave B. Mitchell\r\nRyan: Yuri Lowenthal\r\nVoidmaster: Roger Craig Smith\r\n	\r\nMusic:\r\nEggplant Collective\r\nComposer: Stefano D\'Angelo',1,'sonata.media.provider.vimeo',1,'77045571','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"LOSTOPOLIS\",\"author_name\":\"PandaPanther\",\"author_url\":\"http:\\/\\/vimeo.com\\/pandapanther\",\"is_plus\":\"1\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/77045571\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"LOSTOPOLIS\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":577,\"description\":\"Production Company:  \\nDirector\\/Creative Directors: Jonathan Garin and Naomi Nishimura\\nStory by: Jonathan Garin and Naomi Nishimura\\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\\nDesign: Kim Dulaney, Ivy Tai\\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim \\t\\t\\n3D Texturing\\/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\\nLead Character Animator: Jamil Lahham\\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \\\"Q\\\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\\n\\nCG Supervisors: Adam Burke, Raphael Matto\\n3D Lighting: Mirelle Underwood\\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \\\"Golf\\\" Tipyakanont, Rafael Villar\\n3D Cloth and Hair: Jason Bikofsky, Phuwit \\\"Golf\\\" Tipyakanont\\nCompositing Lead: Navid Bagherzadeh\\nCompositing: Navid Bagherzadeh, TingTing Li\\nEditing: Moss Levenson, Kevin Park\\n3D Tracking: Stephen Hill\\nIT: Evan Harper, Craig Zimmerman\\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\\n\\nLive Action:\\nDirector: Jonathan Garin and Naomi Nishimura\\nAssistant Director: Shane Kalman\\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\\nDirector of Photography: Christopher Keohane\\nAssistant Cameraman: Paul Storey\\nMotion Control Operator: Hans Chew\\nCG Supervisor: Raphael Matto\\nP.A.: Matt Marlin, Kenji Ryuko\\n\\nSound Design Company:\\nSound Design: Henry Boy\\n\\t\\nSound Editing and Mix:\\nKevin Park\\n\\nVoice Over Record and Casting:\\nTalkback Casting and Directing \\nVoice Director: Amanda Wyatt\\nAudio Engineer: James Heraz\\n\\t\\nVoice Over Artists:\\nAbby: Cassandra Morris\\nBoofer: Roger Craig Smith\\nRoboto: Dave B. Mitchell\\nRyan: Yuri Lowenthal\\nVoidmaster: Roger Craig Smith\\n\\t\\nMusic:\\nEggplant Collective\\nComposer: Stefano D\'Angelo\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/518482863_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":77045571,\"uri\":\"\\/videos\\/77045571\"}',1920,1080,577,'video/x-flv',NULL,NULL,'PandaPanther','default',0,NULL,NULL,'2015-05-18 05:53:15','2015-05-17 05:52:38',5,NULL),(12,'LOSTOPOLIS','Production Company:  \r\nDirector/Creative Directors: Jonathan Garin and Naomi Nishimura\r\nStory by: Jonathan Garin and Naomi Nishimura\r\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\r\nDesign: Kim Dulaney, Ivy Tai\r\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim 		\r\n3D Texturing/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\r\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\r\nLead Character Animator: Jamil Lahham\r\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \"Q\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\r\n\r\nCG Supervisors: Adam Burke, Raphael Matto\r\n3D Lighting: Mirelle Underwood\r\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \"Golf\" Tipyakanont, Rafael Villar\r\n3D Cloth and Hair: Jason Bikofsky, Phuwit \"Golf\" Tipyakanont\r\nCompositing Lead: Navid Bagherzadeh\r\nCompositing: Navid Bagherzadeh, TingTing Li\r\nEditing: Moss Levenson, Kevin Park\r\n3D Tracking: Stephen Hill\r\nIT: Evan Harper, Craig Zimmerman\r\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\r\n\r\nLive Action:\r\nDirector: Jonathan Garin and Naomi Nishimura\r\nAssistant Director: Shane Kalman\r\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\r\nDirector of Photography: Christopher Keohane\r\nAssistant Cameraman: Paul Storey\r\nMotion Control Operator: Hans Chew\r\nCG Supervisor: Raphael Matto\r\nP.A.: Matt Marlin, Kenji Ryuko\r\n\r\nSound Design Company:\r\nSound Design: Henry Boy\r\n	\r\nSound Editing and Mix:\r\nKevin Park\r\n\r\nVoice Over Record and Casting:\r\nTalkback Casting and Directing \r\nVoice Director: Amanda Wyatt\r\nAudio Engineer: James Heraz\r\n	\r\nVoice Over Artists:\r\nAbby: Cassandra Morris\r\nBoofer: Roger Craig Smith\r\nRoboto: Dave B. Mitchell\r\nRyan: Yuri Lowenthal\r\nVoidmaster: Roger Craig Smith\r\n	\r\nMusic:\r\nEggplant Collective\r\nComposer: Stefano D\'Angelo',1,'sonata.media.provider.vimeo',1,'77045571','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"LOSTOPOLIS\",\"author_name\":\"PandaPanther\",\"author_url\":\"http:\\/\\/vimeo.com\\/pandapanther\",\"is_plus\":\"1\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/77045571\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"LOSTOPOLIS\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":577,\"description\":\"Production Company:  \\nDirector\\/Creative Directors: Jonathan Garin and Naomi Nishimura\\nStory by: Jonathan Garin and Naomi Nishimura\\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\\nDesign: Kim Dulaney, Ivy Tai\\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim \\t\\t\\n3D Texturing\\/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\\nLead Character Animator: Jamil Lahham\\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \\\"Q\\\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\\n\\nCG Supervisors: Adam Burke, Raphael Matto\\n3D Lighting: Mirelle Underwood\\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \\\"Golf\\\" Tipyakanont, Rafael Villar\\n3D Cloth and Hair: Jason Bikofsky, Phuwit \\\"Golf\\\" Tipyakanont\\nCompositing Lead: Navid Bagherzadeh\\nCompositing: Navid Bagherzadeh, TingTing Li\\nEditing: Moss Levenson, Kevin Park\\n3D Tracking: Stephen Hill\\nIT: Evan Harper, Craig Zimmerman\\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\\n\\nLive Action:\\nDirector: Jonathan Garin and Naomi Nishimura\\nAssistant Director: Shane Kalman\\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\\nDirector of Photography: Christopher Keohane\\nAssistant Cameraman: Paul Storey\\nMotion Control Operator: Hans Chew\\nCG Supervisor: Raphael Matto\\nP.A.: Matt Marlin, Kenji Ryuko\\n\\nSound Design Company:\\nSound Design: Henry Boy\\n\\t\\nSound Editing and Mix:\\nKevin Park\\n\\nVoice Over Record and Casting:\\nTalkback Casting and Directing \\nVoice Director: Amanda Wyatt\\nAudio Engineer: James Heraz\\n\\t\\nVoice Over Artists:\\nAbby: Cassandra Morris\\nBoofer: Roger Craig Smith\\nRoboto: Dave B. Mitchell\\nRyan: Yuri Lowenthal\\nVoidmaster: Roger Craig Smith\\n\\t\\nMusic:\\nEggplant Collective\\nComposer: Stefano D\'Angelo\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/518482863_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":77045571,\"uri\":\"\\/videos\\/77045571\"}',1920,1080,577,'video/x-flv',NULL,NULL,'PandaPanther','default',0,NULL,NULL,'2015-05-18 05:53:50','2015-05-17 12:25:00',5,NULL),(15,'LOSTOPOLIS','Production Company:  \r\nDirector/Creative Directors: Jonathan Garin and Naomi Nishimura\r\nStory by: Jonathan Garin and Naomi Nishimura\r\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\r\nDesign: Kim Dulaney, Ivy Tai\r\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim 		\r\n3D Texturing/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\r\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\r\nLead Character Animator: Jamil Lahham\r\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \"Q\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\r\n\r\nCG Supervisors: Adam Burke, Raphael Matto\r\n3D Lighting: Mirelle Underwood\r\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \"Golf\" Tipyakanont, Rafael Villar\r\n3D Cloth and Hair: Jason Bikofsky, Phuwit \"Golf\" Tipyakanont\r\nCompositing Lead: Navid Bagherzadeh\r\nCompositing: Navid Bagherzadeh, TingTing Li\r\nEditing: Moss Levenson, Kevin Park\r\n3D Tracking: Stephen Hill\r\nIT: Evan Harper, Craig Zimmerman\r\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\r\n\r\nLive Action:\r\nDirector: Jonathan Garin and Naomi Nishimura\r\nAssistant Director: Shane Kalman\r\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\r\nDirector of Photography: Christopher Keohane\r\nAssistant Cameraman: Paul Storey\r\nMotion Control Operator: Hans Chew\r\nCG Supervisor: Raphael Matto\r\nP.A.: Matt Marlin, Kenji Ryuko\r\n\r\nSound Design Company:\r\nSound Design: Henry Boy\r\n	\r\nSound Editing and Mix:\r\nKevin Park\r\n\r\nVoice Over Record and Casting:\r\nTalkback Casting and Directing \r\nVoice Director: Amanda Wyatt\r\nAudio Engineer: James Heraz\r\n	\r\nVoice Over Artists:\r\nAbby: Cassandra Morris\r\nBoofer: Roger Craig Smith\r\nRoboto: Dave B. Mitchell\r\nRyan: Yuri Lowenthal\r\nVoidmaster: Roger Craig Smith\r\n	\r\nMusic:\r\nEggplant Collective\r\nComposer: Stefano D\'Angelo',1,'sonata.media.provider.vimeo',1,'77045571','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"LOSTOPOLIS\",\"author_name\":\"PandaPanther\",\"author_url\":\"http:\\/\\/vimeo.com\\/pandapanther\",\"is_plus\":\"1\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/77045571\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"LOSTOPOLIS\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":577,\"description\":\"Production Company:  \\nDirector\\/Creative Directors: Jonathan Garin and Naomi Nishimura\\nStory by: Jonathan Garin and Naomi Nishimura\\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\\nDesign: Kim Dulaney, Ivy Tai\\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim \\t\\t\\n3D Texturing\\/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\\nLead Character Animator: Jamil Lahham\\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \\\"Q\\\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\\n\\nCG Supervisors: Adam Burke, Raphael Matto\\n3D Lighting: Mirelle Underwood\\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \\\"Golf\\\" Tipyakanont, Rafael Villar\\n3D Cloth and Hair: Jason Bikofsky, Phuwit \\\"Golf\\\" Tipyakanont\\nCompositing Lead: Navid Bagherzadeh\\nCompositing: Navid Bagherzadeh, TingTing Li\\nEditing: Moss Levenson, Kevin Park\\n3D Tracking: Stephen Hill\\nIT: Evan Harper, Craig Zimmerman\\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\\n\\nLive Action:\\nDirector: Jonathan Garin and Naomi Nishimura\\nAssistant Director: Shane Kalman\\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\\nDirector of Photography: Christopher Keohane\\nAssistant Cameraman: Paul Storey\\nMotion Control Operator: Hans Chew\\nCG Supervisor: Raphael Matto\\nP.A.: Matt Marlin, Kenji Ryuko\\n\\nSound Design Company:\\nSound Design: Henry Boy\\n\\t\\nSound Editing and Mix:\\nKevin Park\\n\\nVoice Over Record and Casting:\\nTalkback Casting and Directing \\nVoice Director: Amanda Wyatt\\nAudio Engineer: James Heraz\\n\\t\\nVoice Over Artists:\\nAbby: Cassandra Morris\\nBoofer: Roger Craig Smith\\nRoboto: Dave B. Mitchell\\nRyan: Yuri Lowenthal\\nVoidmaster: Roger Craig Smith\\n\\t\\nMusic:\\nEggplant Collective\\nComposer: Stefano D\'Angelo\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/518482863_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":77045571,\"uri\":\"\\/videos\\/77045571\"}',1920,1080,577,'video/x-flv',NULL,NULL,'PandaPanther','default',0,NULL,NULL,'2015-05-18 05:54:09','2015-05-17 12:29:22',5,NULL),(16,'LOSTOPOLIS','Production Company:  \r\nDirector/Creative Directors: Jonathan Garin and Naomi Nishimura\r\nStory by: Jonathan Garin and Naomi Nishimura\r\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\r\nDesign: Kim Dulaney, Ivy Tai\r\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim 		\r\n3D Texturing/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\r\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\r\nLead Character Animator: Jamil Lahham\r\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \"Q\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\r\n\r\nCG Supervisors: Adam Burke, Raphael Matto\r\n3D Lighting: Mirelle Underwood\r\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \"Golf\" Tipyakanont, Rafael Villar\r\n3D Cloth and Hair: Jason Bikofsky, Phuwit \"Golf\" Tipyakanont\r\nCompositing Lead: Navid Bagherzadeh\r\nCompositing: Navid Bagherzadeh, TingTing Li\r\nEditing: Moss Levenson, Kevin Park\r\n3D Tracking: Stephen Hill\r\nIT: Evan Harper, Craig Zimmerman\r\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\r\n\r\nLive Action:\r\nDirector: Jonathan Garin and Naomi Nishimura\r\nAssistant Director: Shane Kalman\r\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\r\nDirector of Photography: Christopher Keohane\r\nAssistant Cameraman: Paul Storey\r\nMotion Control Operator: Hans Chew\r\nCG Supervisor: Raphael Matto\r\nP.A.: Matt Marlin, Kenji Ryuko\r\n\r\nSound Design Company:\r\nSound Design: Henry Boy\r\n	\r\nSound Editing and Mix:\r\nKevin Park\r\n\r\nVoice Over Record and Casting:\r\nTalkback Casting and Directing \r\nVoice Director: Amanda Wyatt\r\nAudio Engineer: James Heraz\r\n	\r\nVoice Over Artists:\r\nAbby: Cassandra Morris\r\nBoofer: Roger Craig Smith\r\nRoboto: Dave B. Mitchell\r\nRyan: Yuri Lowenthal\r\nVoidmaster: Roger Craig Smith\r\n	\r\nMusic:\r\nEggplant Collective\r\nComposer: Stefano D\'Angelo',1,'sonata.media.provider.vimeo',1,'77045571','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"LOSTOPOLIS\",\"author_name\":\"PandaPanther\",\"author_url\":\"http:\\/\\/vimeo.com\\/pandapanther\",\"is_plus\":\"1\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/77045571\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"LOSTOPOLIS\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":577,\"description\":\"Production Company:  \\nDirector\\/Creative Directors: Jonathan Garin and Naomi Nishimura\\nStory by: Jonathan Garin and Naomi Nishimura\\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\\nDesign: Kim Dulaney, Ivy Tai\\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim \\t\\t\\n3D Texturing\\/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\\nLead Character Animator: Jamil Lahham\\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \\\"Q\\\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\\n\\nCG Supervisors: Adam Burke, Raphael Matto\\n3D Lighting: Mirelle Underwood\\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \\\"Golf\\\" Tipyakanont, Rafael Villar\\n3D Cloth and Hair: Jason Bikofsky, Phuwit \\\"Golf\\\" Tipyakanont\\nCompositing Lead: Navid Bagherzadeh\\nCompositing: Navid Bagherzadeh, TingTing Li\\nEditing: Moss Levenson, Kevin Park\\n3D Tracking: Stephen Hill\\nIT: Evan Harper, Craig Zimmerman\\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\\n\\nLive Action:\\nDirector: Jonathan Garin and Naomi Nishimura\\nAssistant Director: Shane Kalman\\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\\nDirector of Photography: Christopher Keohane\\nAssistant Cameraman: Paul Storey\\nMotion Control Operator: Hans Chew\\nCG Supervisor: Raphael Matto\\nP.A.: Matt Marlin, Kenji Ryuko\\n\\nSound Design Company:\\nSound Design: Henry Boy\\n\\t\\nSound Editing and Mix:\\nKevin Park\\n\\nVoice Over Record and Casting:\\nTalkback Casting and Directing \\nVoice Director: Amanda Wyatt\\nAudio Engineer: James Heraz\\n\\t\\nVoice Over Artists:\\nAbby: Cassandra Morris\\nBoofer: Roger Craig Smith\\nRoboto: Dave B. Mitchell\\nRyan: Yuri Lowenthal\\nVoidmaster: Roger Craig Smith\\n\\t\\nMusic:\\nEggplant Collective\\nComposer: Stefano D\'Angelo\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/518482863_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":77045571,\"uri\":\"\\/videos\\/77045571\"}',1920,1080,577,'video/x-flv',NULL,NULL,'PandaPanther','default',0,NULL,NULL,'2015-05-18 05:54:29','2015-05-17 12:29:48',5,NULL),(22,'easy123abc.png',NULL,1,'sonata.media.provider.image',1,'21a5035a6a1430c10ea27b0adbf04ea9a9593fff.png','{\"filename\":\"easy123abc.png\"}',1599,899,NULL,'image/png',223192,NULL,NULL,'default',0,NULL,NULL,'2015-05-18 03:17:11','2015-05-18 03:16:56',4,NULL),(24,'LOSTOPOLIS','Production Company:  \r\nDirector/Creative Directors: Jonathan Garin and Naomi Nishimura\r\nStory by: Jonathan Garin and Naomi Nishimura\r\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\r\nDesign: Kim Dulaney, Ivy Tai\r\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim 		\r\n3D Texturing/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\r\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\r\nLead Character Animator: Jamil Lahham\r\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \"Q\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\r\n\r\nCG Supervisors: Adam Burke, Raphael Matto\r\n3D Lighting: Mirelle Underwood\r\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \"Golf\" Tipyakanont, Rafael Villar\r\n3D Cloth and Hair: Jason Bikofsky, Phuwit \"Golf\" Tipyakanont\r\nCompositing Lead: Navid Bagherzadeh\r\nCompositing: Navid Bagherzadeh, TingTing Li\r\nEditing: Moss Levenson, Kevin Park\r\n3D Tracking: Stephen Hill\r\nIT: Evan Harper, Craig Zimmerman\r\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\r\n\r\nLive Action:\r\nDirector: Jonathan Garin and Naomi Nishimura\r\nAssistant Director: Shane Kalman\r\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\r\nDirector of Photography: Christopher Keohane\r\nAssistant Cameraman: Paul Storey\r\nMotion Control Operator: Hans Chew\r\nCG Supervisor: Raphael Matto\r\nP.A.: Matt Marlin, Kenji Ryuko\r\n\r\nSound Design Company:\r\nSound Design: Henry Boy\r\n	\r\nSound Editing and Mix:\r\nKevin Park\r\n\r\nVoice Over Record and Casting:\r\nTalkback Casting and Directing \r\nVoice Director: Amanda Wyatt\r\nAudio Engineer: James Heraz\r\n	\r\nVoice Over Artists:\r\nAbby: Cassandra Morris\r\nBoofer: Roger Craig Smith\r\nRoboto: Dave B. Mitchell\r\nRyan: Yuri Lowenthal\r\nVoidmaster: Roger Craig Smith\r\n	\r\nMusic:\r\nEggplant Collective\r\nComposer: Stefano D\'Angelo',0,'sonata.media.provider.vimeo',1,'77045571','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"LOSTOPOLIS\",\"author_name\":\"PandaPanther\",\"author_url\":\"http:\\/\\/vimeo.com\\/pandapanther\",\"is_plus\":\"1\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/77045571\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"LOSTOPOLIS\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":577,\"description\":\"Production Company:  \\nDirector\\/Creative Directors: Jonathan Garin and Naomi Nishimura\\nStory by: Jonathan Garin and Naomi Nishimura\\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\\nDesign: Kim Dulaney, Ivy Tai\\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim \\t\\t\\n3D Texturing\\/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\\nLead Character Animator: Jamil Lahham\\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \\\"Q\\\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\\n\\nCG Supervisors: Adam Burke, Raphael Matto\\n3D Lighting: Mirelle Underwood\\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \\\"Golf\\\" Tipyakanont, Rafael Villar\\n3D Cloth and Hair: Jason Bikofsky, Phuwit \\\"Golf\\\" Tipyakanont\\nCompositing Lead: Navid Bagherzadeh\\nCompositing: Navid Bagherzadeh, TingTing Li\\nEditing: Moss Levenson, Kevin Park\\n3D Tracking: Stephen Hill\\nIT: Evan Harper, Craig Zimmerman\\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\\n\\nLive Action:\\nDirector: Jonathan Garin and Naomi Nishimura\\nAssistant Director: Shane Kalman\\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\\nDirector of Photography: Christopher Keohane\\nAssistant Cameraman: Paul Storey\\nMotion Control Operator: Hans Chew\\nCG Supervisor: Raphael Matto\\nP.A.: Matt Marlin, Kenji Ryuko\\n\\nSound Design Company:\\nSound Design: Henry Boy\\n\\t\\nSound Editing and Mix:\\nKevin Park\\n\\nVoice Over Record and Casting:\\nTalkback Casting and Directing \\nVoice Director: Amanda Wyatt\\nAudio Engineer: James Heraz\\n\\t\\nVoice Over Artists:\\nAbby: Cassandra Morris\\nBoofer: Roger Craig Smith\\nRoboto: Dave B. Mitchell\\nRyan: Yuri Lowenthal\\nVoidmaster: Roger Craig Smith\\n\\t\\nMusic:\\nEggplant Collective\\nComposer: Stefano D\'Angelo\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/518482863_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":77045571,\"uri\":\"\\/videos\\/77045571\"}',1920,1080,577,'video/x-flv',NULL,NULL,'PandaPanther','default',0,NULL,NULL,'2015-05-19 07:22:10','2015-05-19 07:03:39',5,NULL),(26,'LOSTOPOLIS','Production Company:  \r\nDirector/Creative Directors: Jonathan Garin and Naomi Nishimura\r\nStory by: Jonathan Garin and Naomi Nishimura\r\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\r\nDesign: Kim Dulaney, Ivy Tai\r\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim 		\r\n3D Texturing/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\r\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\r\nLead Character Animator: Jamil Lahham\r\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \"Q\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\r\n\r\nCG Supervisors: Adam Burke, Raphael Matto\r\n3D Lighting: Mirelle Underwood\r\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \"Golf\" Tipyakanont, Rafael Villar\r\n3D Cloth and Hair: Jason Bikofsky, Phuwit \"Golf\" Tipyakanont\r\nCompositing Lead: Navid Bagherzadeh\r\nCompositing: Navid Bagherzadeh, TingTing Li\r\nEditing: Moss Levenson, Kevin Park\r\n3D Tracking: Stephen Hill\r\nIT: Evan Harper, Craig Zimmerman\r\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\r\n\r\nLive Action:\r\nDirector: Jonathan Garin and Naomi Nishimura\r\nAssistant Director: Shane Kalman\r\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\r\nDirector of Photography: Christopher Keohane\r\nAssistant Cameraman: Paul Storey\r\nMotion Control Operator: Hans Chew\r\nCG Supervisor: Raphael Matto\r\nP.A.: Matt Marlin, Kenji Ryuko\r\n\r\nSound Design Company:\r\nSound Design: Henry Boy\r\n	\r\nSound Editing and Mix:\r\nKevin Park\r\n\r\nVoice Over Record and Casting:\r\nTalkback Casting and Directing \r\nVoice Director: Amanda Wyatt\r\nAudio Engineer: James Heraz\r\n	\r\nVoice Over Artists:\r\nAbby: Cassandra Morris\r\nBoofer: Roger Craig Smith\r\nRoboto: Dave B. Mitchell\r\nRyan: Yuri Lowenthal\r\nVoidmaster: Roger Craig Smith\r\n	\r\nMusic:\r\nEggplant Collective\r\nComposer: Stefano D\'Angelo',0,'sonata.media.provider.vimeo',1,'77045571','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"LOSTOPOLIS\",\"author_name\":\"PandaPanther\",\"author_url\":\"http:\\/\\/vimeo.com\\/pandapanther\",\"is_plus\":\"1\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/77045571\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"LOSTOPOLIS\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":577,\"description\":\"Production Company:  \\nDirector\\/Creative Directors: Jonathan Garin and Naomi Nishimura\\nStory by: Jonathan Garin and Naomi Nishimura\\nCharacter Design: Kim Dulaney, Ignacio Maroto, Naomi, Nishimura\\nDesign: Kim Dulaney, Ivy Tai\\n3D Modeling: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim \\t\\t\\n3D Texturing\\/Shading: Lucy Choi, Ari Seoyeon Hwang, Jeong Hyo Kim, Mirelle Underwood\\nPrevis: Ian Brauner, Nick Dubois, Doug Rappin\\nLead Character Animator: Jamil Lahham\\n3D Animation:  Jon Burke, Nick Dubois, Dave Han, Han Hu, Gyuhyum \\\"Q\\\" Kim, Hee Jin Kim, Henning Koczy, Jamil Lahham, Domel Libid, Doug Litos, Joe Mandia, Hillary McCarthy, Peter McEvoy, Matty Parent, Doug Rappin, Mike Sime, Cesar Tafoya, Shendy Wu\\n\\nCG Supervisors: Adam Burke, Raphael Matto\\n3D Lighting: Mirelle Underwood\\n3D Rigging:  Jason Bikofsky, Jonas Lilja, Phuwit \\\"Golf\\\" Tipyakanont, Rafael Villar\\n3D Cloth and Hair: Jason Bikofsky, Phuwit \\\"Golf\\\" Tipyakanont\\nCompositing Lead: Navid Bagherzadeh\\nCompositing: Navid Bagherzadeh, TingTing Li\\nEditing: Moss Levenson, Kevin Park\\n3D Tracking: Stephen Hill\\nIT: Evan Harper, Craig Zimmerman\\nProducers: Amy Fahl, Steve Intrabartola, Mariya Shikher Libid\\n\\nLive Action:\\nDirector: Jonathan Garin and Naomi Nishimura\\nAssistant Director: Shane Kalman\\nArt Department: Janet Kim, Keiko Miyamori, Junko Shimizu\\nDirector of Photography: Christopher Keohane\\nAssistant Cameraman: Paul Storey\\nMotion Control Operator: Hans Chew\\nCG Supervisor: Raphael Matto\\nP.A.: Matt Marlin, Kenji Ryuko\\n\\nSound Design Company:\\nSound Design: Henry Boy\\n\\t\\nSound Editing and Mix:\\nKevin Park\\n\\nVoice Over Record and Casting:\\nTalkback Casting and Directing \\nVoice Director: Amanda Wyatt\\nAudio Engineer: James Heraz\\n\\t\\nVoice Over Artists:\\nAbby: Cassandra Morris\\nBoofer: Roger Craig Smith\\nRoboto: Dave B. Mitchell\\nRyan: Yuri Lowenthal\\nVoidmaster: Roger Craig Smith\\n\\t\\nMusic:\\nEggplant Collective\\nComposer: Stefano D\'Angelo\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/518482863_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":77045571,\"uri\":\"\\/videos\\/77045571\"}',1920,1080,577,'video/x-flv',NULL,NULL,'PandaPanther','default',0,NULL,NULL,'2015-05-20 16:17:25','2015-05-20 16:16:40',5,NULL),(33,'What\'s cooking?','',0,'sonata.media.provider.vimeo',1,'124420570','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"What\'s cooking?\",\"author_name\":\"The Calvert Journal\",\"author_url\":\"http:\\/\\/vimeo.com\\/calvertjournal\",\"is_plus\":\"0\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/124420570\\\" width=\\\"1280\\\" height=\\\"720\\\" frameborder=\\\"0\\\" title=\\\"What&#039;s cooking?\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1280,\"height\":720,\"duration\":489,\"description\":\"\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/514138919_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":124420570,\"uri\":\"\\/videos\\/124420570\"}',1280,720,489,'video/x-flv',NULL,NULL,'The Calvert Journal','default',NULL,NULL,NULL,'2015-05-20 16:46:41','2015-05-20 16:46:41',5,NULL),(34,'What\'s cooking?',NULL,1,'sonata.media.provider.vimeo',1,'124420570','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"What\'s cooking?\",\"author_name\":\"The Calvert Journal\",\"author_url\":\"http:\\/\\/vimeo.com\\/calvertjournal\",\"is_plus\":\"0\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/124420570\\\" width=\\\"1280\\\" height=\\\"720\\\" frameborder=\\\"0\\\" title=\\\"What&#039;s cooking?\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1280,\"height\":720,\"duration\":489,\"description\":\"\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/514138919_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":124420570,\"uri\":\"\\/videos\\/124420570\"}',1280,720,489,'video/x-flv',NULL,NULL,'The Calvert Journal','default',0,NULL,NULL,'2015-05-20 16:47:13','2015-05-20 16:46:50',5,NULL),(37,'Love Cult – Wonderland',NULL,1,'sonata.media.provider.vimeo',1,'121023478','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"Love Cult \\u2013 Wonderland\",\"author_name\":\"The Calvert Journal\",\"author_url\":\"http:\\/\\/vimeo.com\\/calvertjournal\",\"is_plus\":\"0\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/121023478\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"Love Cult &ndash; Wonderland\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":246,\"description\":\"\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/509076152_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":121023478,\"uri\":\"\\/videos\\/121023478\"}',1920,1080,246,'video/x-flv',NULL,NULL,'The Calvert Journal','default',0,NULL,NULL,'2015-05-20 17:07:16','2015-05-20 17:06:45',5,NULL),(38,'Eisenstein in Guanajuato (2015)',NULL,1,'sonata.media.provider.vimeo',1,'122658432','{\"type\":\"video\",\"version\":\"1.0\",\"provider_name\":\"Vimeo\",\"provider_url\":\"https:\\/\\/vimeo.com\\/\",\"title\":\"Eisenstein in Guanajuato (2015)\",\"author_name\":\"The Calvert Journal\",\"author_url\":\"http:\\/\\/vimeo.com\\/calvertjournal\",\"is_plus\":\"0\",\"html\":\"<iframe src=\\\"https:\\/\\/player.vimeo.com\\/video\\/122658432\\\" width=\\\"1920\\\" height=\\\"1080\\\" frameborder=\\\"0\\\" title=\\\"Eisenstein in Guanajuato (2015)\\\" webkitallowfullscreen mozallowfullscreen allowfullscreen><\\/iframe>\",\"width\":1920,\"height\":1080,\"duration\":71,\"description\":\"\",\"thumbnail_url\":\"http:\\/\\/i.vimeocdn.com\\/video\\/511832331_1280.jpg\",\"thumbnail_width\":1280,\"thumbnail_height\":720,\"video_id\":122658432,\"uri\":\"\\/videos\\/122658432\"}',1920,1080,71,'video/x-flv',NULL,NULL,'The Calvert Journal','default',0,NULL,NULL,'2015-05-20 17:13:02','2015-05-20 17:12:33',5,NULL);
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

-- Dump completed on 2015-05-27 20:58:37
