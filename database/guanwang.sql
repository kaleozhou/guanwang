-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: guanwang
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'WAULO4aMwamEMAwsAweRSwdRhgksc8tB',1,'2017-04-07 08:27:18','2017-04-07 08:27:18','2017-04-07 08:27:18');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard__widgets`
--

DROP TABLE IF EXISTS `dashboard__widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard__widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `widgets` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard__widgets_user_id_foreign` (`user_id`),
  CONSTRAINT `dashboard__widgets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard__widgets`
--

LOCK TABLES `dashboard__widgets` WRITE;
/*!40000 ALTER TABLE `dashboard__widgets` DISABLE KEYS */;
INSERT INTO `dashboard__widgets` VALUES (1,1,'[]','2017-04-07 18:20:24','2017-04-07 18:20:24');
/*!40000 ALTER TABLE `dashboard__widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__file_translations`
--

DROP TABLE IF EXISTS `media__file_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__file_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt_attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media__file_translations_file_id_locale_unique` (`file_id`,`locale`),
  KEY `media__file_translations_locale_index` (`locale`),
  CONSTRAINT `media__file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `media__files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__file_translations`
--

LOCK TABLES `media__file_translations` WRITE;
/*!40000 ALTER TABLE `media__file_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `media__file_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__files`
--

DROP TABLE IF EXISTS `media__files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filesize` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__files`
--

LOCK TABLES `media__files` WRITE;
/*!40000 ALTER TABLE `media__files` DISABLE KEYS */;
INSERT INTO `media__files` VALUES (1,'1rggacepdwrv-phpqunusn.jpg','/assets/media/1rggacepdwrv-phpqunusn.jpg','jpg','image/jpeg','66247',0,'2017-04-07 17:19:21','2017-04-07 17:19:21'),(2,'3d-1.jpg','/assets/media/3d-1.jpg','jpg','image/jpeg','207987',0,'2017-04-07 17:19:21','2017-04-07 17:19:21'),(3,'3d-2.jpg','/assets/media/3d-2.jpg','jpg','image/jpeg','282537',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(4,'3d-3.jpg','/assets/media/3d-3.jpg','jpg','image/jpeg','231629',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(5,'3oran4nm0ocw-phphfoxvs.jpg','/assets/media/3oran4nm0ocw-phphfoxvs.jpg','jpg','image/jpeg','86277',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(6,'20170109194805-705.jpg','/assets/media/20170109194805-705.jpg','jpg','image/jpeg','150766',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(7,'20170112173442-553.jpg','/assets/media/20170112173442-553.jpg','jpg','image/jpeg','133311',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(8,'20170224221222-478.jpg','/assets/media/20170224221222-478.jpg','jpg','image/jpeg','60857',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(9,'20170224221539-907.jpg','/assets/media/20170224221539-907.jpg','jpg','image/jpeg','69678',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(10,'aqkx-83x30.png','/assets/media/aqkx-83x30.png','png','image/png','3531',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(11,'foot-niuke.png','/assets/media/foot-niuke.png','png','image/png','2678',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(12,'imyuoslgikwa-phpybvuua.jpg','/assets/media/imyuoslgikwa-phpybvuua.jpg','jpg','image/jpeg','17858',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(13,'rven9krrbzzc-php3ujior.jpg','/assets/media/rven9krrbzzc-php3ujior.jpg','jpg','image/jpeg','53386',0,'2017-04-07 17:19:22','2017-04-07 17:19:22'),(14,'y095tgwsgnfe-phpkfgvnw.jpg','/assets/media/y095tgwsgnfe-phpkfgvnw.jpg','jpg','image/jpeg','24735',0,'2017-04-07 17:19:22','2017-04-07 17:19:22');
/*!40000 ALTER TABLE `media__files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__imageables`
--

DROP TABLE IF EXISTS `media__imageables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__imageables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__imageables`
--

LOCK TABLES `media__imageables` WRITE;
/*!40000 ALTER TABLE `media__imageables` DISABLE KEYS */;
/*!40000 ALTER TABLE `media__imageables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menu_translations`
--

DROP TABLE IF EXISTS `menu__menu_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menu_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menu_translations_menu_id_locale_unique` (`menu_id`,`locale`),
  KEY `menu__menu_translations_locale_index` (`locale`),
  CONSTRAINT `menu__menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menu_translations`
--

LOCK TABLES `menu__menu_translations` WRITE;
/*!40000 ALTER TABLE `menu__menu_translations` DISABLE KEYS */;
INSERT INTO `menu__menu_translations` VALUES (1,1,'zh',1,'main','2017-04-07 17:25:36','2017-04-07 19:25:15');
/*!40000 ALTER TABLE `menu__menu_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menuitem_translations`
--

DROP TABLE IF EXISTS `menu__menuitem_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menuitem_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuitem_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menuitem_translations_menuitem_id_locale_unique` (`menuitem_id`,`locale`),
  KEY `menu__menuitem_translations_locale_index` (`locale`),
  CONSTRAINT `menu__menuitem_translations_menuitem_id_foreign` FOREIGN KEY (`menuitem_id`) REFERENCES `menu__menuitems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menuitem_translations`
--

LOCK TABLES `menu__menuitem_translations` WRITE;
/*!40000 ALTER TABLE `menu__menuitem_translations` DISABLE KEYS */;
INSERT INTO `menu__menuitem_translations` VALUES (1,1,'zh',0,'root',NULL,NULL,'2017-04-07 17:25:36','2017-04-07 17:25:36'),(8,8,'zh',1,'首页','','yaoqianshu','2017-04-07 19:18:30','2017-04-14 06:23:06'),(9,9,'zh',1,'雄安新区','','tuigaung','2017-04-07 19:18:44','2017-04-14 06:22:05'),(10,10,'zh',1,'免费体验','','tuiguang3','2017-04-07 19:23:51','2017-05-03 00:44:35'),(11,11,'zh',1,'顶点资讯','','newslist','2017-04-07 19:24:22','2017-04-11 15:58:24'),(12,12,'zh',0,'软件下载','http://yqs.95105899.com/','appdownload','2017-04-07 19:24:40','2017-04-26 04:07:39'),(13,13,'zh',1,'关于我们','','abouts','2017-04-07 19:24:53','2017-04-07 19:30:59'),(14,14,'zh',0,'直播室','','zhibo','2017-04-07 22:16:01','2017-04-12 11:06:42');
/*!40000 ALTER TABLE `menu__menuitem_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menuitems`
--

DROP TABLE IF EXISTS `menu__menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menuitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu__menuitems_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu__menuitems_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menuitems`
--

LOCK TABLES `menu__menuitems` WRITE;
/*!40000 ALTER TABLE `menu__menuitems` DISABLE KEYS */;
INSERT INTO `menu__menuitems` VALUES (1,1,NULL,0,NULL,'page','',NULL,NULL,NULL,NULL,NULL,'2017-04-07 17:25:36','2017-04-07 17:25:36',1,NULL),(8,1,44,0,'_self','page','',NULL,1,NULL,NULL,NULL,'2017-04-07 19:18:30','2017-04-14 06:23:06',0,''),(9,1,43,2,'_self','page','',NULL,1,NULL,NULL,NULL,'2017-04-07 19:18:44','2017-04-12 10:43:47',0,''),(10,1,49,3,'_self','page','',NULL,1,NULL,NULL,NULL,'2017-04-07 19:23:51','2017-05-03 00:44:35',0,''),(11,1,5,4,'_self','internal','',NULL,1,NULL,NULL,NULL,'2017-04-07 19:24:22','2017-04-11 15:58:24',0,''),(12,1,6,5,'_self','external','',NULL,1,NULL,NULL,NULL,'2017-04-07 19:24:40','2017-04-18 08:59:00',0,''),(13,1,22,6,'_self','page','',NULL,1,NULL,NULL,NULL,'2017-04-07 19:24:53','2017-04-12 03:35:23',0,''),(14,1,21,1,'_self','page','',NULL,1,NULL,NULL,NULL,'2017-04-07 22:16:01','2017-04-12 03:33:45',0,'');
/*!40000 ALTER TABLE `menu__menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menus`
--

DROP TABLE IF EXISTS `menu__menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menus`
--

LOCK TABLES `menu__menus` WRITE;
/*!40000 ALTER TABLE `menu__menus` DISABLE KEYS */;
INSERT INTO `menu__menus` VALUES (1,'main',0,'2017-04-07 17:25:36','2017-04-07 19:17:46');
/*!40000 ALTER TABLE `menu__menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_02_230147_migration_cartalyst_sentinel',1),(2,'2016_06_24_193447_create_user_tokens_table',1),(3,'2014_10_14_200250_create_settings_table',2),(4,'2014_10_15_191204_create_setting_translations_table',2),(5,'2015_06_18_170048_make_settings_value_text_field',2),(6,'2015_10_22_130947_make_settings_name_unique',2),(7,'2014_11_03_160015_create_menus_table',3),(8,'2014_11_03_160138_create_menu-translations_table',3),(9,'2014_11_03_160753_create_menuitems_table',3),(10,'2014_11_03_160804_create_menuitem_translation_table',3),(11,'2014_12_17_185301_add_root_column_to_menus_table',3),(12,'2015_09_05_100142_add_icon_column_to_menuitems_table',3),(13,'2016_01_26_102307_update_icon_column_on_menuitems_table',3),(14,'2016_08_01_142345_add_link_type_colymn_to_menuitems_table',3),(15,'2016_08_01_143130_add_class_column_to_menuitems_table',3),(16,'2014_10_26_162751_create_files_table',4),(17,'2014_10_26_162811_create_file_translations_table',4),(18,'2015_02_27_105241_create_image_links_table',4),(19,'2015_12_19_143643_add_sortable',4),(20,'2014_11_30_191858_create_pages_tables',5),(21,'2015_04_02_184200_create_widgets_table',6),(22,'2013_04_09_062329_create_revisions_table',7),(23,'2015_11_20_184604486385_create_translation_translations_table',7),(24,'2015_11_20_184604743083_create_translation_translation_translations_table',7),(25,'2015_12_01_094031_update_translation_translations_table_with_index',7),(26,'2016_07_12_181155032011_create_tag_tags_table',8),(27,'2016_07_12_181155289444_create_tag_tag_translations_table',8),(28,'2017_04_11_202054188173_create_news_news_table',9),(29,'2017_04_11_202054438775_create_news_news_translations_table',9),(30,'2017_04_11_202054701066_create_news_contents_table',9),(31,'2017_04_11_202054951884_create_news_content_translations_table',9),(33,'2017_04_11_204337_create_news_table',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'你好','21432','sadfa','moasdfasf a','adsfa','adf','cjtt','2016-12-31 16:00:00','2016-12-31 16:00:00');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news__content_translations`
--

DROP TABLE IF EXISTS `news__content_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news__content_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news__content_translations_content_id_locale_unique` (`content_id`,`locale`),
  KEY `news__content_translations_locale_index` (`locale`),
  CONSTRAINT `news__content_translations_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `news__contents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news__content_translations`
--

LOCK TABLES `news__content_translations` WRITE;
/*!40000 ALTER TABLE `news__content_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `news__content_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news__contents`
--

DROP TABLE IF EXISTS `news__contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news__contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news__contents`
--

LOCK TABLES `news__contents` WRITE;
/*!40000 ALTER TABLE `news__contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `news__contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news__news`
--

DROP TABLE IF EXISTS `news__news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news__news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news__news`
--

LOCK TABLES `news__news` WRITE;
/*!40000 ALTER TABLE `news__news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news__news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news__news_translations`
--

DROP TABLE IF EXISTS `news__news_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news__news_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news__news_translations_news_id_locale_unique` (`news_id`,`locale`),
  KEY `news__news_translations_locale_index` (`locale`),
  CONSTRAINT `news__news_translations_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news__news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news__news_translations`
--

LOCK TABLES `news__news_translations` WRITE;
/*!40000 ALTER TABLE `news__news_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `news__news_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page__page_translations`
--

DROP TABLE IF EXISTS `page__page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page__page_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page__page_translations_page_id_locale_unique` (`page_id`,`locale`),
  KEY `page__page_translations_locale_index` (`locale`),
  CONSTRAINT `page__page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page__pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page__page_translations`
--

LOCK TABLES `page__page_translations` WRITE;
/*!40000 ALTER TABLE `page__page_translations` DISABLE KEYS */;
INSERT INTO `page__page_translations` VALUES (2,2,'zh','首页','',1,'<!--<style>\r\nhtml{background-color:#E3E3E3; font-size:14px; color:#000; font-family:\'微软雅黑\'}\r\na,a:hover{ text-decoration:none;}\r\npre{font-family:\'微软雅黑\'}\r\n.box{padding:20px; background-color:#fff; margin:50px 100px; border-radius:5px;}\r\n.box a{padding-right:15px;}\r\n#about_hide{display:none}\r\n.layer_text{background-color:#fff; padding:20px;}\r\n.layer_text p{margin-bottom: 10px; text-indent: 2em; line-height: 23px;}\r\n.button{display:inline-block; *display:inline; *zoom:1; line-height:30px; padding:0 20px; background-color:#56B4DC; color:#fff; font-size:14px; border-radius:3px; cursor:pointer; font-weight:normal;}\r\n.photos-demo img{width:200px;}\r\n</style>\r\n<script src=\"http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js\"></script>\r\n<script src=\"/js/layer.js\"></script>\r\n<script>\r\n;!function(){\r\n    //页面一打开就执行，放入ready是为了layer所需配件（css、扩展模块）加载完毕\r\n    layer.ready(function(){ \r\n        layer.open({\r\n            type: 2,\r\n            title: \'欢迎页\',\r\n            maxmin: true,\r\n            area: [\'500px\', \'300px\'],\r\n            content: \'/form/userdata.html\',\r\n            end: function(){\r\n                layer.tips(\'Hi\', \'#about\', {tips: 1})\r\n            }\r\n        });\r\n    });\r\n    //关于\r\n    $(\'#about\').on(\'click\', function(){\r\n        layer.alert(layer.v + \' - 贤心出品 sentsin.com\');\r\n    });\r\n}();\r\n</script>-->\r\n<div class=\"banner\">\r\n<div class=\"bannerShow\">\r\n<ul>\r\n	<li style=\"display: list-item;\"><a href=\"http://cdn.niuke.cn/html/pc170113/index.html\" target=\"_blank\"><img src=\"/src/20170112173442_553.jpg\" /></a></li>\r\n	<li style=\"display: none;\"><a href=\"http://cdn.niuke.cn/html/app_down/index.html\" target=\"_blank\"><img src=\"/src/20170109194805_705.jpg\" /></a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"focus\">\r\n<p class=\"focus_m clear\" style=\"width: 46px;\">&nbsp;</p>\r\n</div>\r\n</div>\r\n<!-- banner end --><!-- information -->\r\n\r\n<div class=\"information layout clear\">\r\n<div class=\"informationi_title\">\r\n<div class=\"information_title_left\">\r\n<h4 style=\"margin-top:0px\">资讯精选</h4>\r\n</div>\r\n\r\n<div class=\"information_title_right\">\r\n<h4>顶点产品</h4>\r\n</div>\r\n</div>\r\n\r\n<div class=\"Infmt_play_img  \">\r\n<div class=\"play_img_box\"><a href=\"http://www.niuke.cn/nkzx/9150\" style=\"display: none;\"><img alt=\"\" src=\"/src/3ORaN4NM0OCw_phpHfoxvS.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/8849\" style=\"display: none;\"><img alt=\"\" src=\"/src/Rven9kRrbZzC_php3Ujior.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/9143\" style=\"display: inline;\"><img alt=\"\" src=\"/src/y095tGWSgNfE_phpKFgVnw.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/9136\" style=\"display: none;\"><img alt=\"\" src=\"/src/1RgGaCEpDwRv_phpQuNusN.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/8766\" style=\"display: none;\"><img alt=\"\" src=\"/src/imyuoSlgIkwA_phpybVuUa.jpg\" /></a></div>\r\n\r\n<div class=\"Infmt_top_icon\">财经头条</div>\r\n\r\n<div class=\"list_nav\">\r\n<h4><span style=\"display: none;\">河北雄县：对不听劝阻的炒房人员 要该抓的抓、该判的判</span> <span style=\"display: none;\">人民日报：雄安新区不是迁都 也非再建首都副中心</span> <span style=\"display: inline;\">外媒调查：认为今年A股被纳入MSCI的机构不足五成</span> <span style=\"display: none;\">部分中央附属机构和事业单位料将首批迁入雄安新区</span> <span style=\"display: none;\">美国宣布对朝鲜实施新经济制裁措施</span></h4>\r\n\r\n<p class=\"list_nav_a\" style=\"width: 95px;\">&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"information_right\">\r\n<div class=\"information_right_product\">\r\n<div class=\"information_product  information_product_red \">\r\n<div class=\"information_product_left\"><img alt=\"\" src=\"/src/20170224221222_478.jpg\" /></div>\r\n\r\n<div class=\"product_information\">\r\n<h3>短线掘金</h3>\r\n\r\n<p class=\"product_information_text\">以市场为主导，事件为核心，资金、筹码为根本，三维立体选股模型把握股市命脉。</p>\r\n\r\n<div class=\"product_information_btn\">\r\n<p class=\"nummber_p\"><span>26987</span>位顶点已加入</p>\r\n<a class=\"dinyue_btn\" href=\"http://www.niuke.cn/dxjj#indexRight\">查看更多</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"information_product \">\r\n<div class=\"information_product_left\"><img alt=\"\" src=\"/src/20170224221539_907.jpg\" /></div>\r\n\r\n<div class=\"product_information\">\r\n<h3>股海擒牛</h3>\r\n\r\n<p class=\"product_information_text\">以价值投资为理念，紧跟趋势，挖掘潜力股，在稳健盈利的基础上精准把握市场脉搏。</p>\r\n\r\n<div class=\"product_information_btn\">\r\n<p class=\"nummber_p\"><span>5923</span>位顶点已加入</p>\r\n<a class=\"dinyue_btn\" href=\"http://www.niuke.cn/ghqn#indexRight\">查看更多</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"product_class\">\r\n<div class=\"product_class1\">\r\n<p>专业荐股</p>\r\n<span>每开盘推荐牛股</span></div>\r\n\r\n<div class=\"product_class2\">\r\n<p>金牌诊股</p>\r\n<span>股市大咖在线诊股</span></div>\r\n\r\n<div class=\"product_class3\">\r\n<p>金色两点半</p>\r\n<span>VIP专享</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- information end --><!-- exploits -->\r\n\r\n<div class=\"exploits layout clear\">\r\n<div class=\"exploits_title\">\r\n<h3>顶点战绩</h3>\r\n<!-- <a href=\"#\">更多>></a> --></div>\r\n\r\n<div class=\"exploits_class  marginL_0 \">\r\n<div class=\"exploits_class_left\">\r\n<div class=\"exploits_circle circle\">\r\n<div class=\"mark\"><span>17.71</span><i>%</i></div>\r\n</div>\r\n\r\n<p>最高收益率</p>\r\n</div>\r\n\r\n<div class=\"exploits_class_right\">\r\n<p>大连港（601880）</p>\r\n\r\n<p class=\"exploits_class_text\">牛股601880大连港，2个交易日最大涨幅达17.71%</p>\r\n\r\n<p class=\"exploits_class_date\">买入日期：<span>03-29</span></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"exploits_class \">\r\n<div class=\"exploits_class_left\">\r\n<div class=\"exploits_circle circle\">\r\n<div class=\"mark\"><span>17.98</span><i>%</i></div>\r\n</div>\r\n\r\n<p>最高收益率</p>\r\n</div>\r\n\r\n<div class=\"exploits_class_right\">\r\n<p>湖南天雁（600698）</p>\r\n\r\n<p class=\"exploits_class_text\">牛股600698湖南天雁，4个交易日最大涨幅达17.98%</p>\r\n\r\n<p class=\"exploits_class_date\">买入日期：<span>03-24</span></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"exploits_class \">\r\n<div class=\"exploits_class_left\">\r\n<div class=\"exploits_circle circle\">\r\n<div class=\"mark\"><span>15.41</span><i>%</i></div>\r\n</div>\r\n\r\n<p>最高收益率</p>\r\n</div>\r\n\r\n<div class=\"exploits_class_right\">\r\n<p>旷达科技（002516）</p>\r\n\r\n<p class=\"exploits_class_text\">牛股002516旷达科技，2个交易日最大涨幅达15.41%</p>\r\n\r\n<p class=\"exploits_class_date\">买入日期：<span>03-23</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- exploits end--><!-- teacher -->\r\n\r\n<div class=\"teacher  clear\">\r\n<h3 class=\"teacher_title layout\">老师团队</h3>\r\n\r\n<h4 class=\"tec_text_top\">股海护卫队，为您的投资保驾护航</h4>\r\n\r\n<ul class=\"layout\">\r\n	<li class=\"tec_text_left\">实战经验丰富，各有所长。捕捉热点、技术分析、行业研究、量化建模、公司实地调研，在各取所长的情况下，为用户制定个性化投资方案。</li>\r\n	<li class=\"tec_text_c\">金融领域的佼佼者，来自海内外知名院校的硕士、博士；</li>\r\n	<li class=\"tec_text_r\">曾是金字塔顶端的行业研究专家、分析师、操盘手，而今聚于顶点，只为股民谋利；</li>\r\n</ul>\r\n</div>\r\n<!-- serve end --><!-- company qualification-->\r\n\r\n<div class=\"company_qct layout\">\r\n<div class=\"company_qct_title\">\r\n<h3>公司资质</h3>\r\n\r\n<p>顶点母公司广州汇正财经顾问有限公司是中国证监会批准成立证券投资咨询机构，</p>\r\n\r\n<p class=\"cl_0e80d0\">是中国证券业协会的会员单位。</p>\r\n</div>\r\n\r\n<div class=\"company_qct_playImg\" id=\"posterTvGrid86804\" style=\"width: 1321px; height: 545px; position: relative;\">\r\n<div class=\"posterTvGrid\">\r\n<div class=\"bottomNav\">\r\n<div class=\"bottomNavButtonOFF bottomNavButtonON\" ref=\"1\">&nbsp;</div>\r\n\r\n<div class=\"bottomNavButtonOFF\" ref=\"2\">&nbsp;</div>\r\n\r\n<div class=\"bottomNavButtonOFF\" ref=\"3\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"bannerControls\">\r\n<div class=\"leftNav\" style=\"display: block;\">&nbsp;</div>\r\n\r\n<div class=\"rightNav\" style=\"display: block;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"width: 1321px; height: 545px;\">\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit1\" ref=\"1\" style=\"width: 830px; height: 545px; opacity: 1; left: 167.5px; z-index: 3; margin-top: 0px;\"><img alt=\"\" src=\"/src/3d_1.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit2\" ref=\"2\" style=\"width: 830px; height: 499px; opacity: 1; left: 335px; z-index: 0; margin-top: 23px;\"><img alt=\"\" src=\"/src/3d_3.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit3\" ref=\"3\" style=\"width: 0px; height: 0px; opacity: 0; left: 582.5px; z-index: 0; margin-top: 135px;\"><img alt=\"\" src=\"/src/3d_2.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit4\" ref=\"4\" style=\"width: 0px; height: 0px; opacity: 0; left: 582.5px; z-index: 0; margin-top: 135px;\"><img alt=\"\" src=\"/src/3d_1.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit5\" ref=\"5\" style=\"width: 0px; height: 0px; opacity: 0; left: 582.5px; z-index: 0; margin-top: 135px;\"><img alt=\"\" src=\"/src/3d_3.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit6\" ref=\"6\" style=\"width: 830px; height: 499px; opacity: 1; left: 0px; z-index: 0; margin-top: 23px;\"><img alt=\"\" src=\"/src/3d_2.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script src=\"/src/jquery-1.9.1.min.js\"></script><script src=\"/src/common.js\"></script><script type=\"text/javascript\" src=\"/src/simper_home.js\"></script><script type=\"text/javascript\" src=\"/src/posterTvGrid.js\"></script><script>\r\nvar posterTvGrid86804 = new posterTvGrid(\'posterTvGrid86804\',{className: \"posterTvGrid\"},[\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_1.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_3.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_2.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_1.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_3.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_2.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"}\r\n]\r\n);\r\n</script><!-- footer-->','','','','',NULL,'website','2017-04-07 17:11:54','2017-04-11 11:06:17'),(3,3,'zh','短线掘金','stub',1,'<p>短线掘金</p>\r\n','','','','',NULL,'website','2017-04-07 17:29:57','2017-04-07 19:30:15'),(4,4,'zh','股海擒牛','trick',1,'<link href=\"/src/common.css\" rel=\"stylesheet\" />\r\n<link href=\"/src/simper_niuke.css\" rel=\"stylesheet\" />\r\n<link href=\"http://www.niuke.cn/favicon.ico?v=1484029197\" rel=\"shortcut icon\" />\r\n<link href=\"http://www.niuke.cn/favicon.ico?v=1484029197\" rel=\"bookmark\" type=\"image/x-icon\" /><!-- 本页面 -->\r\n<link href=\"/src/share_style0_32.css\" rel=\"stylesheet\" />\r\n<div class=\"banner\">\r\n<div class=\"bannerShow\">\r\n<ul>\r\n	<li style=\"display: list-item;\"><a href=\"http://cdn.niuke.cn/html/pc170113/index.html\" target=\"_blank\"><img src=\"/src/20170112173442_553.jpg\" /></a></li>\r\n	<li style=\"display: none;\"><a href=\"http://cdn.niuke.cn/html/app_down/index.html\" target=\"_blank\"><img src=\"/src/20170109194805_705.jpg\" /></a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"focus\">\r\n<p class=\"focus_m clear\" style=\"width: 46px;\">&nbsp;</p>\r\n</div>\r\n</div>\r\n<!-- banner end --><!-- information -->\r\n\r\n<div class=\"information layout clear\">\r\n<div class=\"information_title\">\r\n<div class=\"information_title_left\">\r\n<h3>资讯精选</h3>\r\n</div>\r\n\r\n<div class=\"information_title_right\">\r\n<h3>顶点产品</h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"Infmt_play_img  \">\r\n<div class=\"play_img_box\"><a href=\"http://www.niuke.cn/nkzx/9150\" style=\"display: none;\"><img alt=\"\" src=\"/src/3ORaN4NM0OCw_phpHfoxvS.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/8849\" style=\"display: none;\"><img alt=\"\" src=\"/src/Rven9kRrbZzC_php3Ujior.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/9143\" style=\"display: inline;\"><img alt=\"\" src=\"/src/y095tGWSgNfE_phpKFgVnw.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/9136\" style=\"display: none;\"><img alt=\"\" src=\"/src/1RgGaCEpDwRv_phpQuNusN.jpg\" /></a> <a href=\"http://www.niuke.cn/nkzx/8766\" style=\"display: none;\"><img alt=\"\" src=\"/src/imyuoSlgIkwA_phpybVuUa.jpg\" /></a></div>\r\n\r\n<div class=\"Infmt_top_icon\">财经头条</div>\r\n\r\n<div class=\"list_nav\">\r\n<h4><span style=\"display: none;\">河北雄县：对不听劝阻的炒房人员 要该抓的抓、该判的判</span> <span style=\"display: none;\">人民日报：雄安新区不是迁都 也非再建首都副中心</span> <span style=\"display: inline;\">外媒调查：认为今年A股被纳入MSCI的机构不足五成</span> <span style=\"display: none;\">部分中央附属机构和事业单位料将首批迁入雄安新区</span> <span style=\"display: none;\">美国宣布对朝鲜实施新经济制裁措施</span></h4>\r\n\r\n<p class=\"list_nav_a\" style=\"width: 95px;\">&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"information_right\">\r\n<div class=\"information_right_product\">\r\n<div class=\"information_product  information_product_red \">\r\n<div class=\"information_product_left\"><img alt=\"\" src=\"/src/20170224221222_478.jpg\" /></div>\r\n\r\n<div class=\"product_information\">\r\n<h3>短线掘金</h3>\r\n\r\n<p class=\"product_information_text\">以市场为主导，事件为核心，资金、筹码为根本，三维立体选股模型把握股市命脉。</p>\r\n\r\n<div class=\"product_information_btn\">\r\n<p class=\"nummber_p\"><span>26987</span>位顶点已加入</p>\r\n<a class=\"dinyue_btn\" href=\"http://www.niuke.cn/dxjj#indexRight\">查看更多</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"information_product \">\r\n<div class=\"information_product_left\"><img alt=\"\" src=\"/src/20170224221539_907.jpg\" /></div>\r\n\r\n<div class=\"product_information\">\r\n<h3>股海擒牛</h3>\r\n\r\n<p class=\"product_information_text\">以价值投资为理念，紧跟趋势，挖掘潜力股，在稳健盈利的基础上精准把握市场脉搏。</p>\r\n\r\n<div class=\"product_information_btn\">\r\n<p class=\"nummber_p\"><span>5923</span>位顶点已加入</p>\r\n<a class=\"dinyue_btn\" href=\"http://www.niuke.cn/ghqn#indexRight\">查看更多</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"product_class\">\r\n<div class=\"product_class1\">\r\n<p>专业荐股</p>\r\n<span>每开盘推荐牛股</span></div>\r\n\r\n<div class=\"product_class2\">\r\n<p>金牌诊股</p>\r\n<span>股市大咖在线诊股</span></div>\r\n\r\n<div class=\"product_class3\">\r\n<p>金色两点半</p>\r\n<span>VIP专享</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- information end --><!-- exploits -->\r\n\r\n<div class=\"exploits layout clear\">\r\n<div class=\"exploits_title\">\r\n<h3>顶点战绩</h3>\r\n<!-- <a href=\"#\">更多>></a> --></div>\r\n\r\n<div class=\"exploits_class  marginL_0 \">\r\n<div class=\"exploits_class_left\">\r\n<div class=\"exploits_circle circle\">\r\n<div class=\"mark\"><span>17.71</span><i>%</i></div>\r\n</div>\r\n\r\n<p>最高收益率</p>\r\n</div>\r\n\r\n<div class=\"exploits_class_right\">\r\n<p>大连港（601880）</p>\r\n\r\n<p class=\"exploits_class_text\">牛股601880大连港，2个交易日最大涨幅达17.71%</p>\r\n\r\n<p class=\"exploits_class_date\">买入日期：<span>03-29</span></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"exploits_class \">\r\n<div class=\"exploits_class_left\">\r\n<div class=\"exploits_circle circle\">\r\n<div class=\"mark\"><span>17.98</span><i>%</i></div>\r\n</div>\r\n\r\n<p>最高收益率</p>\r\n</div>\r\n\r\n<div class=\"exploits_class_right\">\r\n<p>湖南天雁（600698）</p>\r\n\r\n<p class=\"exploits_class_text\">牛股600698湖南天雁，4个交易日最大涨幅达17.98%</p>\r\n\r\n<p class=\"exploits_class_date\">买入日期：<span>03-24</span></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"exploits_class \">\r\n<div class=\"exploits_class_left\">\r\n<div class=\"exploits_circle circle\">\r\n<div class=\"mark\"><span>15.41</span><i>%</i></div>\r\n</div>\r\n\r\n<p>最高收益率</p>\r\n</div>\r\n\r\n<div class=\"exploits_class_right\">\r\n<p>旷达科技（002516）</p>\r\n\r\n<p class=\"exploits_class_text\">牛股002516旷达科技，2个交易日最大涨幅达15.41%</p>\r\n\r\n<p class=\"exploits_class_date\">买入日期：<span>03-23</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- exploits end--><!-- teacher -->\r\n\r\n<div class=\"teacher  clear\">\r\n<h3 class=\"teacher_title layout\">老师团队</h3>\r\n\r\n<h4 class=\"tec_text_top\">股海护卫队，为您的投资保驾护航</h4>\r\n\r\n<ul class=\"layout\">\r\n	<li class=\"tec_text_left\">实战经验丰富，各有所长。捕捉热点、技术分析、行业研究、量化建模、公司实地调研，在各取所长的情况下，为用户制定个性化投资方案。</li>\r\n	<li class=\"tec_text_c\">金融领域的佼佼者，来自海内外知名院校的硕士、博士；</li>\r\n	<li class=\"tec_text_r\">曾是金字塔顶端的行业研究专家、分析师、操盘手，而今聚于顶点，只为股民谋利；</li>\r\n</ul>\r\n</div>\r\n<!-- serve end --><!-- company qualification-->\r\n\r\n<div class=\"company_qct layout\">\r\n<div class=\"company_qct_title\">\r\n<h3>公司资质</h3>\r\n\r\n<p>顶点母公司广州汇正财经顾问有限公司是中国证监会批准成立证券投资咨询机构，</p>\r\n\r\n<p class=\"cl_0e80d0\">是中国证券业协会的会员单位。</p>\r\n</div>\r\n\r\n<div class=\"company_qct_playImg\" id=\"posterTvGrid86804\" style=\"width: 1165px; height: 545px; position: relative;\">\r\n<div class=\"posterTvGrid\">\r\n<div class=\"bottomNav\">\r\n<div class=\"bottomNavButtonOFF bottomNavButtonON\" ref=\"1\">&nbsp;</div>\r\n\r\n<div class=\"bottomNavButtonOFF\" ref=\"2\">&nbsp;</div>\r\n\r\n<div class=\"bottomNavButtonOFF\" ref=\"3\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"bannerControls\">\r\n<div class=\"leftNav\" style=\"display: block;\">&nbsp;</div>\r\n\r\n<div class=\"rightNav\" style=\"display: block;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"width: 1165px; height: 545px;\">\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit1\" ref=\"1\" style=\"width: 830px; height: 545px; opacity: 1; left: 167.5px; z-index: 3; margin-top: 0px;\"><img alt=\"\" src=\"/src/3d_1.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit2\" ref=\"2\" style=\"width: 830px; height: 499px; opacity: 1; left: 335px; z-index: 0; margin-top: 23px;\"><img alt=\"\" src=\"/src/3d_3.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit3\" ref=\"3\" style=\"width: 0px; height: 0px; opacity: 0; left: 582.5px; z-index: 0; margin-top: 135px;\"><img alt=\"\" src=\"/src/3d_2.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit4\" ref=\"4\" style=\"width: 0px; height: 0px; opacity: 0; left: 582.5px; z-index: 0; margin-top: 135px;\"><img alt=\"\" src=\"/src/3d_1.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit5\" ref=\"5\" style=\"width: 0px; height: 0px; opacity: 0; left: 582.5px; z-index: 0; margin-top: 135px;\"><img alt=\"\" src=\"/src/3d_3.jpg\" /></div>\r\n\r\n<div class=\"contentHolderUnit\" id=\"contentHolderUnit6\" ref=\"6\" style=\"width: 830px; height: 499px; opacity: 1; left: 0px; z-index: 0; margin-top: 23px;\"><img alt=\"\" src=\"/src/3d_2.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script src=\"/src/jquery-1.9.1.min.js\"></script><script src=\"/src/common.js\"></script><script type=\"text/javascript\" src=\"/src/simper_home.js\"></script><script type=\"text/javascript\" src=\"/src/posterTvGrid.js\"></script><script>\r\nvar posterTvGrid86804 = new posterTvGrid(\'posterTvGrid86804\',{className: \"posterTvGrid\"},[\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_1.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_3.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_2.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_1.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_3.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"},\r\n        {\"img\":\"http://www.niuke.cn/static/images/home/3d_2.jpg?v=1484013382\",\"title\":\"\",\"url\":\"\",\"target\":\"\"}\r\n]\r\n);\r\n</script><!-- footer-->\r\n\r\n<div class=\"foot_bg\">\r\n<div class=\"foot layout\">\r\n<div class=\"foot_left\"><img alt=\"\" src=\"http://www.niuke.cn/static/images/common/foot_niuke.png?v=1484013381\" />\r\n<p>牛客财经，隶属于广州汇正财经顾问有限公司。公司基<br />\r\n于核心证券投资咨询业务，提供证券研究报告、金融数据分<br />\r\n析、软件服务、资讯传递及投资培训等产品。凭借国内领<br />\r\n先的研究实力与完善服务，以&ldquo;帮助投资者实现财富保<br />\r\n值、增值&rdquo;为使命，为投资者理清投资管理目标、捕捉市<br />\r\n场价值洼地、研判个股潜在价值、制定精准投资策略。</p>\r\n</div>\r\n\r\n<div class=\"foot_centent\">\r\n<h3>风险说明</h3>\r\n\r\n<p>牛客不向任何客户提供代客理财或私人推送股票等业<br />\r\n务；任何私下收取咨询费或推销非牛客官网提供的服<br />\r\n务行为均属于个人非法、违规行为，与牛客无关。请<br />\r\n勿上当受骗！<br />\r\n一经发现，请您及时向牛客官网举报，查证属实可获<br />\r\n牛客官网相关奖励。</p>\r\n</div>\r\n\r\n<div class=\"foot_list\">\r\n<ul>\r\n	<li><span>&gt;</span><a href=\"/gywm\">关于我们</a></li>\r\n	<li><span>&gt;</span><a href=\"/gywm\">联系我们</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"foot_right\" style=\"position: relative;\">\r\n<p>移动APP:</p>\r\n\r\n<p class=\"ios_android\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- foot end --><!-- bottom -->\r\n\r\n<div class=\"bottom_bg\">\r\n<div class=\"bottom layout\"><!--  <div class=\"Btm_left\">\r\n    <span class=\"Btm_left_text\">关注我们：</span>\r\n    <div class=\"share_con fl clear bdsharebuttonbox Btm_left_btn\" id=\"share\" data-bd-bind=\"1472433011068\">\r\n    <a class=\"share_wx\" href=\"javascript:;\" data-cmd=\"weixin\" title=\"分享到微信\"></a>\r\n    <a class=\"share_sina\" href=\"javascript:;\" data-cmd=\"tsina\" title=\"分享到新浪微博\"></a>\r\n    <a class=\"share_qq\" href=\"javascript:;\" data-cmd=\"qzone\" title=\"分享到QQ空间\"></a>\r\n    </div>\r\n    </div> -->\r\n<div class=\"Btm_right\">\r\n<p class=\"text_cent\">Copyright &copy; 2017 杭州顶点财经网络传媒有限公司 <span>备案号：<a href=\"http://www.miitbeian.gov.cn/\" rel=\"nofollow\" target=\"_blank\">粤ICP备16097072号</a></span></p>\r\n</div>\r\n</div>\r\n<!--安全认证logo-->\r\n\r\n<div class=\"safeLogo\">&nbsp;</div>\r\n</div>\r\n','','','','',NULL,'website','2017-04-07 18:16:25','2017-04-08 17:16:00'),(5,5,'zh','顶点咨讯','news',1,'<p>牛客咨讯</p>\r\n','','','','',NULL,'website','2017-04-07 19:26:34','2017-04-11 09:46:39'),(6,6,'zh','软件下载','appdownload',1,'<p>牛客咨讯</p>\r\n','','','','',NULL,'website','2017-04-07 19:27:09','2017-04-07 19:27:51'),(20,20,'zh','资讯列表','newslist',1,'<p>fgdsg</p>\r\n','','','','',NULL,'website','2017-04-11 16:22:17','2017-04-12 03:36:25'),(21,21,'zh','直播室','zhibo',1,'<p>qweqw</p>\r\n','','','','',NULL,'website','2017-04-12 03:31:49','2017-04-12 03:33:21'),(22,22,'zh','关于我们','abouts',1,'<p>abouts us</p>\r\n','','','','',NULL,'website','2017-04-12 03:35:04','2017-04-12 03:35:04'),(23,23,'zh','地缘政治风险发酵 原油黄金和日元“乱世称王”','001',1,'<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>原油中期看涨</strong></span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">布伦特原油从去年1月的28美元/桶一路飙升至如今的56美元/桶，油价似乎在经历了两年的供求失衡后起死回生。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">北京时间4月7日上午，一声&ldquo;炮响&rdquo;令全球为之震惊。美国总统特朗普发表电视讲话，下令对叙利亚境内一处机场实施定点军事打击，称以此回应叙政府对无辜平民进行化学武器袭击的行径。消息一出，全球市场避险情绪急速上升。多日无法突破阻力位的布伦特原油价格一举攻破55美元/桶。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">投资者担忧该地区供应可能中断，原油继续其上升趋势。尽管叙利亚不再是产油大国，但其靠近该富油地区的产油大国，并与之关系密切。地缘政治紧张局势加剧以及可能的供应中断盖过了市场对于全球石油供应或超预期的担忧。此前，美国石油供应随着油价反弹而上升，且市场担忧OPEC不继续履行限产协议。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;叙利亚产油量原本就不多，最高时曾达到40万桶/日，但由于近年来连续动乱，叙利亚几乎全面停产，产能仅为2万~3万桶/日，&rdquo;中石油集团经济技术研究院石油市场研究所副所长陈蕊判称，&ldquo;尽管叙利亚石油产量小，但其地理位置很特殊，其东南面毗邻伊拉克，还毗邻霍尔木兹海峡(StraitofHormuz)，这是通向中东产油国的繁忙要道，因此市场担心，由于美国空袭后导致军事冲突向其他重要产油国蔓延，尤其是伊拉克等，从而导致其原油中断，这可能会影响伊朗和沙特。&rdquo;</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">此外，科威特石油部部长马尔祖克称其预计产油国的减产协议遵守率将高于&ldquo;前几个月份&rdquo;，引发对于OPEC将在3月比其他月份更多减产的预期。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">主流观点认为，油价趋势向上，近期将在55美元/桶上下波动，而后期供应侧或有所收紧，对油价形成比较强的支撑，因此预计5月底后油价可能会突破60美元/桶。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>黄金上涨通道或打开</strong></span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;乱世买黄金&rdquo;的古老智慧似乎至今依然适用。二季度以来，市场上看涨黄金的呼声渐强，地缘政治风险近期加剧了黄金动能。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;日线图上，黄金走势仍趋于上涨，多头在1240美元低点上方牢牢保持控制权。从技术角度看，若金价日收盘突破1260美元，才能进一步上涨。反之，若跌破1240美元，那么将为其下探1225美元支撑位打开通道。&rdquo;FXTM富拓研究分析师LukmanOtunuga对第一财经记者表示。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">KVB昆仑国际全球交易首席分析师魏巍对第一财经记者分析称，&ldquo;除了眼下的地缘政治风险，新的一轮欧洲政治风险频发的预期，以及特朗普新政府诸多外交和经济政策的不确定性，导致黄金的波动和机会势必水涨船高。&rdquo;</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">在魏巍看来，尽管今年美联储仍有望加息两次，但美联储加息并不一定等于黄金跌。&ldquo;黄金和美元的负相关性为人熟知，但二者并非处于绝对值大于0.9之上的高度相关，也就是说，负相关强度并不非常大。在某些时候，黄金会有自己的行情。&rdquo;</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">例如，2004~2006年，美国经济复苏、房地产火热、通胀抬头，美联储加息了17次(1%升至5.25%)。然而，黄金并没有随加息而下跌，反而是大涨。黄金的商品属性和对美元的替代性投资的属性，在美元弱势下，表现极佳。2017年开始，利率升高而黄金仍然大幅上涨的局面会否重演，这值得关注。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>日元避险属性展现</strong></span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">也就在叙利亚事件爆发后，日元和VIX恐慌指数暴涨，日元的避险属性进一步凸显。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;美元/日元以3月27日低点110.09为起点，正在形成三角形的整理，市场等待方向性突破。假如后市跌破110.09的话，有望打开进一步下行空间，空头目标不排除指向200天均线108.70附近的可能。相反，若向上突破3月31日高点112.19的话，后市可能开展进一步的反弹。&rdquo;崔荣告诉记者。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">日元作为避险资产，是和全球货币套息(CarryTrade)的现象密切相关的。诺亚财富首席研究官金海年此前对第一财经记者表示，由于日元长期是低息货币，国际投资者往往融入日元、购买利息收益较高的资产，如果相对汇率在套息的这段时间里是稳定的，那么投资者的收益就是高息资产回报与日元借贷成本之差。然而，当风险事件爆发时，投资者从高息资产中撤出，并集中偿还日元，这就导致了日元需求在短时间内上升，日元汇率上升。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">此外，一系列因素也支持了日元的避险属性。金海年称，日本不仅官方拥有世界第二大规模的美元储备，民间也拥有大量美元债权，雄厚的储备和债权意味着做空日元的难度极大；此外，虽然日本国内债务繁重，但外债规模极小，因而日本政府一直享有很高的信用评级，因风险事件导致对外违约的概率较小；再者，日本国内货币政策长期在零利率上下，货币政策缺乏宽松空间导致日元因降息而突然下跌的可能性相对较小。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">目前，美元上涨的动能较去年明显减退，加之日本央行继续宽松的空间收窄，因此2017年日元的上行动能备受市场关注。</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/7zFkxca1i0pC_phphQDYe2.jpg','','','',NULL,'website','2017-04-12 03:39:21','2017-04-12 09:10:02'),(24,24,'zh','央行旗下媒体揭秘高利贷真实生态：月息高达10%','002',1,'<div background:=\"\" border:=\"\" class=\"stock_desc\" microsoft=\"\" style=\"margin: 20px 0px 0px; padding: 0px; font-family: \" width:=\"\">\r\n<p style=\"margin: 0px; padding: 13px 20px; border: none; line-height: 26px; text-align: justify;\"><b>摘要：</b></p>\r\n</div>\r\n\r\n<div border:=\"\" class=\"stock_article\" microsoft=\"\" style=\"margin: 20px 0px 0px; padding: 0px; font-family: \">\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">最近，山东&ldquo;辱母杀人案&rdquo;的热点还未散去，《人民的名义》又火爆全国，真实的山东企业家苏银霞，虚构的大风厂老板蔡成功，都倒在高利贷之下。记者近日采访了西部某地圈内人士，试图窥探高利贷的真实生态状况。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>高利贷生态图</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">这位W姓人士，非常熟悉西部某地的高利贷市场，向我们详细介绍了高利贷的几个基本信息：通行利率是多少&mdash;&mdash;&mdash;正常月息为2.5分或3分，高的可以达到6分、8分或月息10%；3分左右的款项一般周期是6个月，高的都比较短，不太会超过1个月，有的就是几天。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">什么能抵押&mdash;&mdash;&mdash;车(比二手车评估值低1万到2万元)、房(6折，要作他项权利登记，也不在乎借款人是不是只有1套房)、翡翠(3折)、古董字画(有专人看，3折)、手表(2折到3折)、黄金(比市价略低).</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">什么人在放款&mdash;&mdash;&mdash;个人放款者：&ldquo;老板自放&rdquo;占比30%左右，70%是&ldquo;资金贩子&rdquo;，前者一般是用自己的钱，后者则要向&ldquo;金主&rdquo;融资。贩子们一般会有1分到2分的抽成，如果有&ldquo;中间人&rdquo;介绍资金或业务，&ldquo;中间人&rdquo;还会拿走一部分。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">典当行：因为有抵押物，利息不会高过个人放款者，进入&ldquo;死当&rdquo;后变现了事。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;野担保&rdquo;公司：尤其是曾经遍布各地街头的&ldquo;野担保&rdquo;，在被彻底打击之前，一边向民间集资，一边高息向外放贷。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">小贷公司：通过&ldquo;手续费&rdquo;、&ldquo;财务顾问费&rdquo;等将高息隐藏起来。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">用什么手段收款&mdash;&mdash;&mdash;电话催收：一旦到期，平均每天会打3个到4个电话。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">上门找：敲门、坐在借款者家里，一坐就是一天。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">堵门：半夜用土堆堵住门(例如借款者拥有的饭店)，或者强行制止开门营业。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">跟：全天24小时跟着，与借款者寸步不离，甚至同吃同住。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">控制：用借款者身份证开房，把借款者全天控制(不用自己身份证以避免犯非法拘禁罪).</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">打：(非常少，也不会太重)主要是语言侮辱。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">据了解，2010年后，已经很少出现拍裸照、不让吃饭等事。但在以前则有把借款者脱得只剩一条内裤挂在树上、冬天扔到水里用电棒打、用铁笼子把人装起来放到野地里。但在目前，&ldquo;大账靠哄、小账靠要&rdquo;，基本是共识。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">什么人在收款&mdash;&mdash;&mdash;除了放款者自己催收之后，近几年涌现出一些&ldquo;收款公司&rdquo;。但主体是&ldquo;社会闲人&rdquo;，年龄大都低于30岁，提成比例有&ldquo;行规&rdquo;：逾期1个到2个月的收20%、逾期6个月以上的收30%、逾期超过12个月的则可以拿到40%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">什么人在借款&mdash;&mdash;&mdash;70%是&ldquo;正经在做生意的人&rdquo;；30%是在赌场上借给了&ldquo;企业法人中的赌棍&rdquo;。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">值得注意的是，正经借高利贷做生意的人，一般都是为了银行&ldquo;倒贷&rdquo;，没有人用这种钱来经营周转，更没有人用这种钱进行个人消费。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">对山东事件怎么看？</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">只剩下17万元还是苦苦相逼，最大的可能是，&ldquo;这就是老大立的规矩&rdquo;，否则也不好向小弟们交待。至于月息10分高不高？西部某地被调查者的普遍说法是，&ldquo;如果是短短几天的&lsquo;倒贷&rsquo;，肯定是按天算，不算特别过分&rdquo;，关键是&ldquo;没人逼你(企业家)借啊&rdquo;。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>&ldquo;倒贷&rdquo;是症结</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;倒贷&rdquo;这个词，任何银行人和生意人都不会陌生。山东那位女企业家也是如此。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">W姓人士告诉笔者，绝大多数寻找高利贷的生意人，都是在银行有贷款，到期后一是&ldquo;不愿意放弃自己的企业&rdquo;；二是&ldquo;不愿意在银行失去信用&rdquo;。为了及时还本付息，才从民间借款。其普遍想法是，借入高利贷，尽快完成银行还款；银行续贷之后，马上偿还，以救活自己的企业。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">市场上确实有一定比例是纯正的&ldquo;过桥&rdquo;，完成&ldquo;倒贷&rdquo;后顺利放款。但据W姓人士说，目前经济状况不好，银行压力很大，&ldquo;过桥&rdquo;比率正在降低，为了哄生意人，一般都说能放款；有的银行甚至把&ldquo;续贷批复&rdquo;拿给借款人看，以让其安心借入高利贷&ldquo;过桥&rdquo;，完成对银行的还款。其实，不少是根本就没打算放款，这样一弄，不但借款人死定了，借高利贷者也快疯了。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">至于&ldquo;倒贷&rdquo;失败的高利贷，就会让放贷人变得痛苦不堪：因为&ldquo;钱不是他自己的&rdquo;，必须追回来，本来几天的&ldquo;快生意&rdquo;，变成了谁也说不清的漫漫征途。发展到最后，许多放款者，即使面对看似风险最低的&ldquo;倒贷&rdquo;，也会在前一天失眠。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">但银行业内人士则不这样看。一位股份制银行的客户经理告诉记者，目前不良贷款是终身责任制，一旦形成不良，客户经理就基本成了&ldquo;专职催收人员&rdquo;，账一天收不回来，就停发全部奖金甚至工资。&ldquo;压力根本不是一般的大&rdquo;，所以&ldquo;为了安全，连哄带骗也得让企业把钱还了！&rdquo;</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">至于企业是否会不堪重负，这位客户经理表示：&ldquo;都觉得银行是&lsquo;雨天收伞&rsquo;，但话说回来，如果企业确实不好了，银行还继续放款，银行的损失谁来认？银行的钱是不是老百姓的钱？&rdquo;</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">对高利贷不能简单用情感判断代替一切</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">高利贷古今中外都普遍存在。调查中记者听到一种观点：&ldquo;被广为同情的企业家，不要一会儿抱怨政策调整了，一会儿抱怨银行没良心，甚至不要仇恨高利贷，应该从自身上想办法。因为在经济环境、信贷政策甚至是高利贷等所有变量中，企业家唯一能控制的就是他自己。&rdquo;</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;大企业家&rdquo;能否始终保持&ldquo;三省吾身&rdquo;？西部某地一位本土开发商，将楼盘盖到了各大片区，后期因房改政策变化及扩张过猛，陷入危机后借入高利贷，目前经营十分困难。他应该被同情吗？</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">不应该。他的财务总监说：&ldquo;想想我们老板会什么呀？20年来，房子一盖好就卖光了，房子没盖好又卖光了，房子还没盖也卖光了，老板就膨胀了，觉得自己就是&lsquo;经营之神&rsquo;，实际上不就是政策好、胆子大吗？&rdquo;</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">据了解，这个老板最喜欢拿着某地地图给别人比划：&ldquo;我这个人就适合做生意，你看这个项目是我的、这个也是我的、那个还是我的。&rdquo;而如今他走到借高利贷的地步，怨谁呢？</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">&ldquo;中型企业家&rdquo;能否对&ldquo;资金价格&rdquo;再敏感一些？</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">某地一位做钢贸的朋友，在10年前大致赚到了8000万元。在高铁建设最快的时代，他持续以垫资形式向施工方供货。当银行发现钢贸行业隐患很大，集体停贷，此人一下就被压趴下了。无奈时他借入高利贷，以为这一波信贷政策调整只是短期行为，扛一扛就过去了，没想到一扛就是五六年，现在不但打光了几千万&ldquo;子弹&rdquo;，还欠了不少债。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">银行作为拥有信息优势的机构，对各行业的景气判断肯定是有研究能力的，一旦银行业发出了&ldquo;价格信号&rdquo;，企业家是不是应该变得敏感一些？</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">此外，有一个群体也许有借鉴意义，就是资本市场上的&ldquo;被市场教育过&rdquo;的投资者。面对行情变化，他们普遍会设计几条线：一是&ldquo;补仓&rdquo;线；二是&ldquo;斩仓&rdquo;线；三是&ldquo;歇菜&rdquo;线。但这几条线都有一个根本，就是自己对大势的判断和手里的&ldquo;子弹&rdquo;，完全是出于自身实力作出的选择。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>企业生存发展的关键是能否创新</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">其实，无论是大中型企业的高管，还是那些准备进入商业战场的年轻人，如果想避免陷入资金困局(包括高利贷)，唯一的办法就是&ldquo;时时检索自己的产品或服务是否足够创新&rdquo;。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">有专家分析认为，大众创业与万众创新，从情感上看是一个好事，鼓励每一个有志者追求自我实现，但落到实处，万众创新似乎比大众创业更好，因为&ldquo;创新才是创业的根本&rdquo;。企业在社会单元中存在的价值只有一条，即&ldquo;提供创新产品与创新服务，提高社会整体福利&rdquo;。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">但遗憾的是，在过往30年到40年时间里，中国享受着加入全球分工体系与农业人口转移的&ldquo;改革红利&rdquo;，并形成了&ldquo;短缺经济&rdquo;向&ldquo;过剩经济&rdquo;的过渡，在这一特殊的历史时期，生产什么都能卖掉，使得许多&ldquo;根本就不创新的东西和服务被生产出来了&rdquo;，结果酿成&ldquo;低劣产能&rdquo;严重过剩，历史大潮一旦转向，&ldquo;企业死一片&rdquo;。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">回到这些抱怨高利贷的传统中小企业，哪个老板敢拍着胸脯说&ldquo;市场误杀了我的企业，我的企业是最棒的？！&rdquo;</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">调查结束时，两位采访对象的话比较引人深思。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">W姓人士表示：&ldquo;这一波下来，保守的人都活着，扩张太狠的老板离死都不远了。&rdquo;</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">某资深银行人士表示：&ldquo;有时候，银行给企业放款，其实是害了企业。&rdquo;</span></p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/2g7cBAEGeYkq_php8dAX6I.jpg','','','',NULL,'website','2017-04-12 03:43:52','2017-04-12 09:09:37'),(25,25,'zh','资讯详情','newsdetails',1,'<p>的寺打发</p>\r\n','','','','',NULL,'website','2017-04-12 04:06:44','2017-04-12 04:06:44'),(26,26,'zh','习近平同特朗普通电话 推进经济合作“百日计划”实施','003',1,'<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">据央视，两国元首就朝鲜半岛局势等共同关心的问题交换了意见。习近平强调，中方坚持实现半岛无核化目标，坚持维护半岛和平稳定，主张通过和平方式解决问题，愿同美方就半岛问题保持沟通协调。关于叙利亚问题，习近平指出，任何使用化学武器的行为都不可接受。叙利亚问题要坚持政治解决的方向。联合国安理会保持团结对解决叙利亚问题非常重要，希望安理会发出一致声音。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-align:=\"\" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">习近平指出，下一步，双方要通过外交安全对话、全面经济对话、执法及网络安全对话、社会和人文对话4个高级别对话机制，推进经济合作&ldquo;百日计划&rdquo;实施，拓展两军、执法、网络、人文等方面交流合作，加强在重大国际和地区问题上的沟通协调，争取尽可能多的早期收获。</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/nk0cR95zAQB5_phpxakllH.jpg','','','',NULL,'website','2017-04-12 08:57:32','2017-04-12 09:11:01'),(27,27,'zh','四大维度解析军工改革！拆分与合并：从哪里来 到哪里去','001',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>投资建议</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">行业策略：我们判断2017年有望成为我国军工行业改革的重要一年，在此时点，我们推出《四大维度解析军工改革》系列报告，此文为本系列第一篇，重点介绍军工集团发源历史与相应现状思考。结合军工集团的分合史，我们判断当前又来到集团间重归融合的时点。军工集团的重组整合动作已接二连三，今年3月，中核集团与中核建集团率先开启战略重组工作；我们认为，南北两船、电子电科等集团的整合也有望在今年取得实质性突破。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">推荐组合：建议关注军工集团重组合并两条主线&mdash;&mdash;南北船与电科系：1)重点关注南北两船现有上市平台：中国重工(601989)、中船防务(600685)、中国动力(600482)、中电广通(600764)、中国船舶(600150)、中船科技(600072)；2)同时关注中国电科、电子集团上市公司：杰赛科技(002544)、中国长城(000066).</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>行业观点</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">军工体系历经六十载变革，我国十二大军工集团同根同源：我国当前的国防工业呈现六大军事领域、十二大军工集团的构成格局。现有的军工体系是通过多次改革形成，具体可大致分为两个阶段&mdash;&mdash;前期整合扶持阶段和后期拆分竞争阶段。结合时代环境和行业特性，我们认为军工行业历史变革的推动因素是经济体制变革与行业发展的需要。放眼当下，十二大军工集团同根同源，业务各有侧重且部分重叠，在一定程度上呈现交错冗杂的特点。结合中航工业改革历程，我们认为&ldquo;横向竞争，纵向整合&rdquo;的模式将成为未来军工集团重组整合的典范。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">重组整合是军工产业做大做强的重要途径：纵观国内外，重组整合孕育了一批富有国际竞争力的行业巨头。重组兼并一直是世界军工行业发展的主旋律。以美国为例，重组整合使其军工行业步入发展快车道，成就了美国五大军工巨头。不仅解决了企业在同一领域内的过度竞争，更增强了其在海外市场的整体实力。近年来，我国诸如南北车合并而实现强强联合的央企整合成功案例，也为军工行业提供了重要参考。军工企业应该站在国家利益角度，将做大做强摆在迫切而重要的目标位置，重组整合是最为行之有效的路径。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">我国军工产业已处于变革转折期，重组整合有望成为军工改革的突破口：当前我国军工产业所处时期对应美国20世纪90年代合并的黄金十年。结合历史和现况来看，我国军工产业的重组整合正在持续推进。建国初期的行政干预造成了我国军工集团组织结构与管理上的&ldquo;拉郎配&rdquo;&mdash;&mdash;相对封闭、厂所矛盾、结构冗杂与体制不适。当前各大军工集团存在业务重叠度高，过度争抢市场资源与重复建设等问题，十分不利于我国军工产业的自身发展与对外竞争。重组整合能够在解决历史遗留问题的同时，形成&ldquo;1+1&gt;2&rdquo;的合力。当前，军工集团的重组整合动作已接二连三。两核合并正走向落地，同时，南北船和电子电科集团均具备了合并先期条件&mdash;&mdash;人事对调与内部整合接近尾声，合并预期持续升温。我们认为，在国资委缩减央企数量的大背景下，各大军工集团重组整合的车轮正在滚滚向前。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>风险提示</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">央企合并重组低于预期；相应上市平台资产重组进程不及预期。</span></p>\r\n\r\n<div>&nbsp;</div>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/yGbi47kvlLYd_phpcM3Cx9.jpg','','','',NULL,'website','2017-04-12 09:12:33','2017-04-12 09:12:33'),(28,28,'zh','创业板指尾盘跳水跌逾1% 雄安概念股迎来跌停潮','002',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">今日两市全天维持绿盘震荡，早盘小幅低开后维持弱势震荡，沪指跌破5日线，创业板指反弹乏力未能翻红，临近尾盘，两市加速跳水，多家个股冲击跌停，至今日收盘，两市双双绿盘报收，创业板跌近1%，成交量同比前一交易日缩量。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">盘面上，隔夜受监管层特停多家次新股的影响，早盘次新股再度陷入低迷，元成股份（603388）高开低走跌停，大幅打击次新股人气。昨日尾盘遭遇机构砸盘的雄安概念股今日人气迅速下降，多只个股冲击跌停，仅有青龙管业（002457）率先突围封板，午后河钢股份（000709）封板，带动一波雄安概念股反抽，但河钢股份，青龙管业先后开板，反抽随即结束，重回跌势。粤港澳概念龙头珠海港（000507）开盘即封死一字板，带动粤港澳概念走强，粤港澳成为全天最强热点，场内资金离开雄安概念，接力炒作粤港澳概念股。国元证券（000728）带动证券股拉升护盘，但指数的弱势未能明显改善。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">其他板块如福建，水泥，有色，军工，深圳国改等板块也有异动，但强度相对较弱。至今日收盘，两市超40家个股跌停。临近尾盘，中国平安（601318）和兴业银行（601166）大幅放量。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>热点板块</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">粤港澳概念在珠海港封死一字板的带动下逆势走强，格力地产（600185），恒基达鑫（002492），塔牌集团（002233），盐田港（000088），香江控股（600162），深赤湾A，珠江实业（600684），世荣兆业（002016），珠海港，粤水电（002060）涨停，广聚能源（000096）涨逾7%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">炒地图模式再度开启，福建板块走强，漳州发展（000753）涨停，福建水泥（600802）涨逾6%，平潭发展（000592）涨逾3%，三木股份，厦工股份（600815），厦门港务（000905）涨逾2%，福建高速（600033），建发股份（600153），象屿股份（600057）涨逾1%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">粤电力午后涨停，带动电力股拉升，粤电力，梅雁吉祥（600868），穗恒运A涨停，深圳能源（000027），建投能源（000600），韶能股份（000601）涨逾6%，三峡水利（600116），内蒙华电（600863）涨逾5%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">雄安新区概念股今日分化加剧，冀东水泥（000401），金隅股份（601992），中化岩土（002542），冀东装备（000856），巨力索具（002342），韩建河山（603616）涨停。博天环境（603603），凯发电气（300407）等多股大跌。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">跌幅榜上天津，次新股，环保等板块跌幅居前。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>消息面上</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">1、李克强：4月11日上午在中南海紫光阁会见林郑月娥并表示，今年，中央政府要研究制定粤港澳大湾区发展规划，将推出内地和香港之间的&ldquo;债券通&rdquo;，目的就是进一步密切内地与香港的交流合作，继续为香港发展注入新动能。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">2、发改委：印发2017年国家级新区体制机制创新工作要点。其中要求上海浦东新区力争在深化自由贸易试验区改革创新、推进科技创新中心建设和推进社会治理创新上有新作为，全面推进自由贸易试验区建设；天津滨海新区加快建设天津滨海中关村（000931）科技园和&ldquo;双创&rdquo;示范基地，全力推进京津冀全面创新改革试验区建设探索；浙江舟山群岛新区依托舟山港综合保税区和舟山江海联运服务中心建设，开展自由贸易港区建设探索。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">3、银监会相关负责人透露，按照 &ldquo;问题导向&rdquo;&ldquo;急用先行&rdquo;和&ldquo;协调配套&rdquo;的原则，研究制定26项重点规制。同步推进监管制度的配套实施细则，以及银行内部管理制度的修订和完善工作，确保各项监管制度落地实施。银监会方面表示，将重点加大对同业、投资、理财等业务的监管力度，切实防止监管套利。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>投资建议</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">今日指数维持弱势震荡，但盘面上人气尚未散失，主流热点粤港澳概念股大涨，带动市场做多人气。军工板块今日冲高回落，雄安新区概念股加速分化，龙头股多数仍维持一字板涨停，但个股筹码已有不少松动，午后一波反抽失败，资金后续仍将继续做多。该板块短线涨幅偏大，且板块体量较多，经历一轮暴涨后，获利盘兑现意愿强烈，因此目前不宜追高接力，当板块调整结束后仍将有机会反复炒作。军工，一带一路作为前期的中线题材，资金介入程度较深，后续仍将会有反复炒作的机会。雄安新区和粤港澳大湾区是近期涌现的新题材，政策刺激消息不断，炒作仍会持续，但板块中龙头股涨幅偏大，不宜追高，建议等龙头股调整充分再择机介入获利。</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/sQsJzOrXvOSW_phpJYRO5X.jpg','','','',NULL,'website','2017-04-12 09:13:36','2017-04-12 09:13:36'),(29,29,'zh','三大运营商布局雄安新区建设 5G和物联网成发展重点(附股)','003',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">近日三大运营商均召开会议，表示将积极参与雄安新区建设，基础通信网络、5G和物联网成发展重点。中国电信集团将实现千兆光网城市布局新区，以及4G、下一代物联网全面覆盖，提前布局5G试验网。中国移动将立足高起点、高标准，超前规划部署5G移动通信网络，全力支撑绿色智慧城市和创新发展示范区建设。中国联通也成立了雄安新区服务保障工作领导小组，对网络通信基础设施、信息应用进行规划。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">三大运营商作为通信网络和物联网的主要建设者，积极布局雄安新区5G、NB-IoT建设，有助于推动行业快速发展，智能水表、智能燃气表等物联网终端以及5G相关的射频器件、芯片设备等产品需求有望加速扩容。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>相关概念股：</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span style=\"color: rgb(51, 127, 229); font-family: &quot;Microsoft YaHei&quot;;\">新天科技：</span><span style=\"font-family: &quot;Microsoft YaHei&quot;;\">主营智能水表和燃气表，通过外延式并购，积极布局NB-IoT业务；</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span style=\"color: rgb(51, 127, 229); font-family: &quot;Microsoft YaHei&quot;;\">汉威电子：</span><span style=\"font-family: &quot;Microsoft YaHei&quot;;\">主营气体传感器业务，将受益物联网产业快速发展。</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span style=\"color: rgb(51, 127, 229); font-family: &quot;Microsoft YaHei&quot;;\">金卡智能：</span><span style=\"font-family: &quot;Microsoft YaHei&quot;;\">于6月24日获得中投证券、尚雅投资等6家机构调研。公司主营产品为智能燃气表及燃气计量管理系统。</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span style=\"color: rgb(51, 127, 229); font-family: &quot;Microsoft YaHei&quot;;\">三川智慧：</span><span style=\"font-family: &quot;Microsoft YaHei&quot;;\">主营各种水表产品的研发、生产和销售。公司认为，NB-IoT为水表行业带了巨大的商机。</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span style=\"color: rgb(51, 127, 229); font-family: &quot;Microsoft YaHei&quot;;\">榕基软件：</span><span style=\"font-family: &quot;Microsoft YaHei&quot;;\">是电子政务应用软件服务商。去年10月，公司合资成立控股子公司星榕基，该公司获得福建省物联网公共服务平台唯一经营权，承接运营物联网公共服务平台业务(包括可穿戴设备、车联网、智慧教育、智慧医疗、智能制造等).</span></span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/ZWCf1Or2ihXx_phpMxH0nh.jpg','','','',NULL,'website','2017-04-12 09:14:53','2017-04-12 09:14:53'),(30,30,'zh','涨停复盘：板块走势高度分化 粤港澳大湾区接棒领涨大旗','001',1,'<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>一、板块类</strong></span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">1、【雄安新区：港口、基建、本地股等】</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">一字板：金隅股份、冀东水泥、冀东装备、京汉股份、唐山港、巨力索具、中化岩土、韩建河山</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">非一字板：河北宣工、渤海股份、青龙管业、保变电气</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">【雄安新区+环保】</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">先河环保：一字板，六连板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">首创股份：T字板，六连板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">【公告板】</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">首航节能：拟在雄安开展储能业务，复牌一字板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">东旭蓝天：获大股东注入雄安新区周边资产，T字板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">热点分析：昨日复盘提示，雄安新区概念股将出现分化，今日即出现了明显的分化，非第一梯队个股走出了跌停潮的走势，但雄安新区是大题材，后面会反复炒作，仍重点关注龙头。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">2、【粤港澳大湾区：珠海港、天健集团、香江控股、深赤湾A、塔牌集团、珠江实业、世荣兆业、格力地产、盐田港、恒基达鑫、梅雁吉祥、粤高速A、深物业A、沙河股份、深华发A、特力A、穗恒运A、广聚能源、粤水电、贤丰控股】</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">龙头：珠海港、塔牌集团</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">珠海港：一字板，二连板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">盐田港：T字板，二连板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">香江控股：二连板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">恒基达鑫：二连板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">深赤湾A：14:16封板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">格力地产：T字板，二连板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">热点分析：消息面上，李克强表示中央要研究制定粤港澳大湾区发展规划，受此消息影响，粤港澳概念股持续暴涨，今日炒作甚至出现扩散，这是笔者没有预料的，A股市场现阶段对区域性题材的风险偏好增强，舆情上也是极力&ldquo;吹捧&rdquo;粤港澳题材，总之，关注龙头则大概率可以获得盈利。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>二、其他涨停</strong></span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">圣龙股份：新股首次打开一字板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">嘉澳环保：庄股，复牌后再次涨停。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">漳州发展：福建自贸区板块，9：56封板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">天音控股：新划归深圳市属国资国企，一字板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">天广中茂：拟25.88亿元收购神农菇业及裕灌农业，一字板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">西部矿业：逾20亿元收购两公司股权，控股股东签署百亿元债转股合作协议，T字板。</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \"><strong>三、数据复盘</strong></span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">今日涨停家数69家(不包括ST股65家)，跌停47家；</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">一字板34家；曾涨停个股9家，封板成功率：79.55%；</span></p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\">&nbsp;</p>\r\n\r\n<p border:=\"\" color:=\"\" font-size:=\"\" microsoft=\"\" style=\"margin: 0px; padding: 0px; font-family: \" text-indent:=\"\"><span microsoft=\"\" style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: \">涨幅大于5%的个股：91家，跌幅大于5%的个股：180家。</span></p>\r\n\r\n<div>&nbsp;</div>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/TBs8gnBjSiHx_phpyk1Wxq.jpg','','','',NULL,'website','2017-04-12 09:15:44','2017-04-12 09:16:18'),(31,31,'zh','【盘中异动】电力板块午后异动拉升 穗恒运A等2股涨停','002',1,'<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 16px; text-indent: 28px;\">电力板块午后异动拉升，截至发稿，穗恒运A、粤电力A涨停，韶能股份（000601）大涨9.11%，深圳能源（000027）涨7.23%、梅雁吉祥（600868）涨6.59%，内蒙华电（600863）涨6.19%，湖北能源（000883）涨6.00%。</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/ehvPZMoEmNID_phpsc9uC5.jpg','','','',NULL,'website','2017-04-12 09:16:58','2017-04-12 09:16:58'),(32,32,'zh','净流出金额超300亿元 资金涌入军工股','003',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">周二沪深两市量能较前一交易日有所放大，主力资金的净流出态势并未改变，但净流出规模环比缩减。数据显示，昨日沪深两市主力资金净流出金额为301.77亿元。行业之中，昨日除了国防军工行业外，其他所有的行业均呈现净流出状态。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">分析人士指出，雄安概念板块连续走强后，近期有加剧分化之势，国防军工板块有望成为接棒者。市场环境大幅转暖，资金虽然呈现净流出状态，但并不会改变市场走强的态势。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\"><strong>净流出规模收窄</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">周二沪深两市偏强震荡，两市共计成交7101.59亿元，量能较前一交易日的6255.84亿元有所放大。资金流向方面，主力资金的净流出态势却未改变，数据显示，昨日沪深两市主力资金净流出金额为301.77亿元，前一交易日净流出金额为369.78亿元。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">当日，开盘主力净流出155.08亿元，尾盘则净流入39.19亿元。超大单和大单净流出金额分别为180.11亿元和121.66亿元，中单和小单则呈现净流入状态，金额分别为76.91亿元和224.13亿元。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">从市场风格上看，昨日沪深300主力净流出金额为98.37亿元，前一交易日净流出规模为89.88亿元，净流出规模扩大。其中，开盘净流出42.57亿元，尾盘净流入12.78亿元。中小企业板主力净流出金额为80.64亿元，该板块前一交易日的净流出金额为80.37亿元，昨日净流出规模有所扩大。中小企业板开盘净流出23.88亿元，尾盘则净流入4.89亿元。创业板昨日主力净流出金额为41.90亿元，前一交易日则净流出86.42亿元。其开盘净流出7.81亿元，尾盘净流入3.59亿元。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">新时代证券研发中心研究总监刘光桓指出，大盘重拾升势，成交量放大，部分场外资金开始入场，特别是有新崛起的粤港澳大湾区板块接力担当龙头先锋，后市大盘有望正式攻击3300点。投资者无缘雄安概念股，只能&ldquo;望股兴叹&rdquo;，但粤港澳大湾区板块参与性强，可密切关注。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\"><strong>军工股一枝独秀</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">数据显示，个股中，昨日共有929只股票主力资金呈现净流入状态，占比31.74%。其中华测导航、中国重工和常熟银行等三股净流入金额位居前列，分别为5.76亿元、5.67亿元和4.52亿元，三者昨日涨幅分别为10%、3.47%和9.01%。华测导航新近上市不久，昨日放出巨量同时打开涨停板，后续或有震荡回调，投资者注意规避风险。中国重工3月23日以来持续反弹，累计涨幅达到11.36%。常熟银行近两个交易日累计反弹12.26%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">主力资金呈现净流出状态的个股多达1998只，北京城建、北新建材和格力电器等三股净流出金额位居前列，分别达11.78亿元、7.16亿元和6.63亿元。昨日涨幅分别为0.65%、3.51%和-2.19%。上一交易日，北京城建净流出额亦占据榜首，达到7.88亿元，该股持续放量冲高回落，追高风险较大。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: KaiTi_GB2312;\">从28个申万一级行业看，昨日除了国防军工行业外，其他所有的行业均呈现净流出状态。国防军工行业净流入金额为16.22亿元。主力净流出居前的行业板块则是化工、房地产和电子行业，净流出金额分别为34.89亿元，25.31亿元和24.04亿元。</span></p>\r\n\r\n<div>&nbsp;</div>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/jL8M2tA3enQe_phplho2PJ.jpg','','','',NULL,'website','2017-04-12 09:17:43','2017-04-12 09:17:43'),(33,33,'zh','【选股技巧】仙人指路选股法是怎么样的?','001',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">股市中的仙人指路，指的是主力在拉升股指或个股之前，先打出一个长长的上影线，看似空头力量很强，实则是主力震仓的行为。其后不久行情仍沿着这个上影线的方向运行，甚至涨势更为猛烈。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">仙人指路这种K线组合，多发生在强势洗盘的情形之中。并不是所有的带上影线的小阳或小阴线都是仙人指路，其出现和运用的条件是特定的，通常在强势上涨时出现。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>技术形态：</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">1、上涨的角度出现超过45度的运行态势，此时，说明大盘或个股上涨较为强势。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">2、仙人指路的前一天，通常会出现大阳线，并伴有大的成交量。说明主力有上攻的愿望。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">3、仙人指路K线出现时，量能要稳定。量价配合，说明诱多的可能性小。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">4、在高低价位出现，有所不同。在低位出现仙人指路，远比在高位出现仙人指路的有效性更强。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>两种特定状况：</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">1、在重要的阻力位出现长影线。此时，看似突破受阻，其实是突破前的一种蓄势和洗盘动作。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">2、出现在连续阳线拉升之中。此时，看似上涨力度减弱，其实是一种强势的震仓洗盘。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">实战中，仙人指路一般在拉升中运用，其安全性和可操作性较强。由于在许多情况下，会将真正的回调或转势，误判断成仙人指路，造成交易的方向性错误。所以，仙人指路的研判，要根据大盘、板块和个股的特点一起来分析。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">对于个股而言，强势股是基本的条件，在上升通道是必要条件。行业选出只是自上而下选股的第一步，选出翻倍牛股需要的是严谨的基本面调研以及对政策红利走向的预判的专业性。</span></p>\r\n\r\n<div>&nbsp;</div>\r\n','http://static.niuke.cn/uploads/information/information/2017-03-31/8DXvVVL31RFM_phpvutRo6.jpg','','','',NULL,'website','2017-04-12 09:20:49','2017-04-12 09:20:49'),(34,34,'zh','值得牢记的四大卖出法则','002',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">卖股票是最难的事，从某种程度上讲，何时卖股票甚至比何时买股票、买何种股票更难，而且更重要。而不同时期又有不同的卖出方法，比如很多投资者在此次行情初期，才赚了一点点就匆匆忙忙的跑掉了，看着出了的股票一路随大盘升上去，莫若奈何！又比如，行情短期见顶的时候，不少人为了那一点蝇头小利，个股明明已经破位还要死守甚至补仓！该卖不卖，必然遭受重大损失，就如本次大盘虽然调整不多，但个股却普遍有接近20％的跌幅！</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">从心理上来说，卖股票是令人痛苦的一件事。比如股票已经大幅涨升的时候，觉得还能赚更多，如果卖了就没有继续取得利润的机会了，却完全忽视了继续上涨的空间、上涨的概率、以及回落的巨大风险！一字曰之：贪！而在股票下跌的时候，甚至亏损比较严重的时候，卖出更是让人难受，一卖就不再是数字的变化而是实实在在的亏损！但不舍如何有机会、有资本再去取？现在的卖出正是为了避免更大的亏损！</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">因此，操作上到了卖出的时机或者条件就要坚决卖出，不求卖得多高明多有艺术，但要卖得正确、卖得及时！</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>卖出法则1：低于买入价7-8%坚决止损</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">第一个和最重要的一个卖出规则对于许多投资者来讲是很困难的。毕竟对许多人来说，承认自己犯了错误是比较困难的。投资最重要的就在于当你犯错误时迅速认识到错误并将损失控制在最小，这是7%止损规则产生的原因。通过研究发现40%的大牛股在发之后最终往往回到最初的发点。同样的研究也发现，在关键点位下跌7-8%的股票未来有较好表现的机会较小。投资者应注意不要只看见少数的大跌后股票大涨的例子。长期来看，持续的将损失控制在最小范围内投资将会获得较好收益。因此，底线就是股价下跌至买入价的7-8%以下时，卖掉股票！不要担心在犯错误时承担小的损失，当你没犯错误的时候，你将获得更多的补偿。当然，使用止损规则时有一点要注意：买入点应该是关键点位，投资者买入该股时判断买入点为发点，虽然事后来看买入点并不一定是发点。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>卖出法则2：高潮之后卖出股票</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">有许多方法判断一只牛股将见顶而回落到合理价位，一个最常用的判断方法就是当市场上所有投资者都试图拥有该股票的时候。一只股票在逐渐攀升100%甚至更多以后，突然加速上涨，股价在1-2周内上涨25-50%，从图形上看几乎是垂直上升。这种情况是不是很令人振奋？不过持股者在高兴之余应该意识到：该抛出股票了。这只股票已经进入了所谓的高潮区。一般股价很难继续上升了，因为没有人愿意以更高价买入了。突然，对该股的巨大需求变成了巨大的卖压。根据对过去10年中牛股的研究，股价在经过高潮回落之后很难在回到原糕点，如果能回来也需要3-5年的时间。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>卖出法则3：连续缩量创出高点为卖出时机</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">股票价格由供求关系决定。当一只股票股价开始大幅上涨的时候，其成交量往往大幅攀升。原因在于机构投资者争相买入该股以抢在竞争对手的前头。在一个较长时期的上涨后，股价上涨动力衰竭。股价也会会继续创出新高，但成交量开始下降。这个时候就得小心了，这个时候很少有机构投资者愿意再买入该股，供给开始超过需求，最终卖压越来越大。一系列缩量上涨往往预示着反转。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>卖出法则4：获利20%以后了结</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">不是所有的股票会不断上涨的，许多成长型投资者往往在股价上涨20%以后卖出股票。如果你能够在获利20%抛出股票而在7%止损，那么你投资4次对1次就不会遭受亏损。对于这一规则欧内尔给出了一个例外，他指出，如果股价在发点之后的1-3周内就上涨了20%，不要卖出，至少持有8周。他认为，这么快速上升的股票有股价上升100-200%的动能，因此需要持有更长的时间以分享更多的收益。</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-11/hqDXCNwKsgYN_phpCnlM9D.jpg','','','',NULL,'website','2017-04-12 09:21:22','2017-04-12 09:21:22'),(35,35,'zh','中短线操作的六个要点','003',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span p=\"\" span=\"\" style=\"line-height: 2; color: rgb(51, 127, 229); font-size: 16px;\">2、量能充足，必须持续放量。</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span p=\"\" span=\"\" style=\"color: rgb(51, 127, 229);\">4、股群板块整体走强，最好是热点</span><span style=\"font-family: &quot;Microsoft YaHei&quot;;\">，这对于短线安全和暴利来说至关重要! 有良好的中线基础或极端的高速连续暴跌，如无较高技术不要轻试，风险很大!</span></span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px;\"><span p=\"\" span=\"\" style=\"line-height: 2; color: rgb(51, 127, 229); font-size: 16px;\">6、该股所在的板块不能处于热炒后的整体退潮向空甚至领跌大盘的状况。</span></span></span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-02-21/MUuguh463M8k_phpFCkw0e.jpg','','','',NULL,'website','2017-04-12 09:22:04','2017-04-12 09:22:04'),(36,36,'zh','日经225指数收跌1.04%至18552.61点。','2251041855261',1,'<p>日经225指数收跌1.04%至18552.61点。</p>\r\n','','','','',NULL,'website','2017-04-12 09:41:59','2017-04-12 09:41:59'),(37,37,'zh','韩国首尔综指收涨0.17%。','017',1,'<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 14px; background-color: rgb(247, 247, 247);\">韩国首尔综指收涨0.17%。</span></p>\r\n','','','','',NULL,'website','2017-04-12 09:42:19','2017-04-12 09:42:19'),(38,38,'zh','欧洲STOXX 600指数高开0.2%。英国富时100指数高开0.1%。','stoxx-6000210001',1,'<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 14px; background-color: rgb(247, 247, 247);\">欧洲STOXX 600指数高开0.2%。英国富时100指数高开0.1%。</span></p>\r\n','','','','',NULL,'website','2017-04-12 09:42:44','2017-04-12 09:42:44'),(39,39,'zh','【市场午后小幅跳水，雄安概念尾盘遭遇资金出逃】沪指收报3273.83点，跌0.46%，成交额3115亿。深成指收报10587.31点，跌0.64%，成交额3418亿。创业板收报1897.51点，跌1.05%，成交额700亿。','004',1,'<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 14px; background-color: rgb(247, 247, 247);\">【市场午后小幅跳水，雄安概念尾盘遭遇资金出逃】沪指收报3273.83点，跌0.46%，成交额3115亿。深成指收报10587.31点，跌0.64%，成交额3418亿。创业板收报1897.51点，跌1.05%，成交额700亿。</span></p>\r\n','','','','',NULL,'website','2017-04-12 09:43:33','2017-04-12 09:43:33'),(40,40,'zh','【午评】两市小幅翻绿 粤港澳概念逆势领涨','001',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">今日两市小幅低开后维持弱势震荡局面，沪指震荡走低跌破5日线，创业板指反弹乏力，至午间收盘，两市双双翻绿，成交量同比前一交易日缩量。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">盘面上，昨日尾盘遭遇机构砸盘的雄安概念股今日人气迅速下降，多只个股冲击跌停，而前排的龙头股筹码也有明显松动，仅有青龙管业（002457）率先突围封板，但其余跟风股力度过弱。粤港澳概念龙头珠海港（000507）开盘即封死一字板，带动粤港澳概念走强，资金离场雄安概念，接力炒作粤港澳概念股。国元证券（000728）带动证券股拉升护盘，福建板块，水泥板块，电力板块也有异动，但强度相对较弱。近期开板的新股继续大跌，次新股的赚钱效应持续低迷。黄金TD午间收盘284.51，涨幅1.25%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>热点板块</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">粤港澳概念早盘逆势走强，格力地产（600185），恒基达鑫（002492），塔牌集团（002233），盐田港（000088），香江控股（600162），深赤湾A，珠江实业（600684），世荣兆业（002016），珠海港涨停，沙河股份（000014），粤水电（002060）涨逾8%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">炒地图模式再度开启，福建板块走强，漳州发展（000753）涨停，福建水泥（600802）涨逾7%，三木股份，厦工股份（600815），平潭发展（000592），厦门港务（000905）涨逾2%，福建高速（600033），象屿股份（600057）涨逾1%。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">雄安新区概念股出现分化，冀东水泥（000401），金隅股份（601992），中化岩土（002542），冀东装备（000856），巨力索具（002342），韩建河山（603616）涨停。博天环境（603603），凯发电气（300407）等多股大跌。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">跌幅榜上天津，河北，环保等板块跌幅居前。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>消息面上</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">1、李克强：4月11日上午在中南海紫光阁会见林郑月娥并表示，今年，中央政府要研究制定粤港澳大湾区发展规划，将推出内地和香港之间的&ldquo;债券通&rdquo;，目的就是进一步密切内地与香港的交流合作，继续为香港发展注入新动能。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">2、发改委：印发2017年国家级新区体制机制创新工作要点。其中要求上海浦东新区力争在深化自由贸易试验区改革创新、推进科技创新中心建设和推进社会治理创新上有新作为，全面推进自由贸易试验区建设；天津滨海新区加快建设天津滨海中关村（000931）科技园和&ldquo;双创&rdquo;示范基地，全力推进京津冀全面创新改革试验区建设探索；浙江舟山群岛新区依托舟山港综合保税区和舟山江海联运服务中心建设，开展自由贸易港区建设探索。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>投资建议</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">今日雄安新区概念股加速分化，部分跟风股大跌，龙头股多数仍维持一字板涨停，但个股筹码已有不少松动，预计后期仍会相继开板。今日粤港澳概念接力雄安新区成为今日热点板块，北有雄安，南有大湾，作为国家政策级别的题材，炒作仍将会反复，雄安新区经历连续5个交易日的暴涨之后，短线涨幅过大，且存量资金有限，短线有调整的需求。后期龙头股开板后仍将会有炒作行情，板块分化后仍将有机会参与，因此目前不宜过于悲观。建议投资者紧抓主线题材，控制仓位，以低吸为主。</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/rn0M4lRU8qqn_phpMZETLm.jpg','','','',NULL,'website','2017-04-12 10:02:25','2017-04-12 10:02:25'),(41,41,'zh','【实时解盘】粤港澳大湾区接力雄安概念股 格力地产等多股涨停','002',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>消息面上</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">国务院总理李克强4月11日上午在中南海紫光阁会见林郑月娥，颁发任命她为中华人民共和国香港特别行政区第五任行政长官的国务院第678号令。同时指出，今年，中央政府要研究制定粤港澳大湾区发展规划，将推出内地和香港之间的&ldquo;债券通&rdquo;。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">粤港澳大湾区已被列入国家经济发展战略，在今年《政府工作报告》中也被重点提及：要推动内地与港澳深化合作，研究制定粤港澳大湾区城市群发展规划，发挥港澳独特优势，提升在国家经济发展和对外开放中的地位与功能。另外，珠港澳大桥主体工程也已经完工，预计进展顺利的话有望于今年年底通车。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">粤港澳大湾区指的是由珠三角9市(广州、深圳、珠海、佛山、惠州、东莞、中山、江门、肇庆)和香港、澳门两个特别行政区共同构成的新型城市群。按照目前的城市群体量已经是仅此于纽约湾区、旧金山湾区、东京湾区的全球第四大湾区，考虑到其城市发展较为平衡，有望出现多个核心城市的多核心湾区，其中期模式可能会与旧金山比较类似。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>相关股票</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">地产(格力地产、香江控股、华发股份、招商蛇口、世荣兆业、世联行、珠江实业、深深房等)、基建(塔牌集团、天健集团、粤水电等)、交运(珠海港、深赤湾、盐田港、广州港、广深铁路、中远海特等)、金融(越秀金控、广发证券、力合股份等)、旅游(华侨城A等)、高端制造(佛山照明、国光电器、比亚迪等)、环保(东江环保等)。</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/rn0M4lRU8qqn_phpMZETLm.jpg','','','',NULL,'website','2017-04-12 10:03:01','2017-04-12 10:03:01'),(42,42,'zh','【实时解盘】粤港澳大湾区接力雄安概念股 格力地产等多股涨停','003',1,'<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">4月12日消息，粤港澳大湾区接力雄安概念股，格力地产等多股涨停。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>消息面上</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">国务院总理李克强4月11日上午在中南海紫光阁会见林郑月娥，颁发任命她为中华人民共和国香港特别行政区第五任行政长官的国务院第678号令。同时指出，今年，中央政府要研究制定粤港澳大湾区发展规划，将推出内地和香港之间的&ldquo;债券通&rdquo;。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">粤港澳大湾区已被列入国家经济发展战略，在今年《政府工作报告》中也被重点提及：要推动内地与港澳深化合作，研究制定粤港澳大湾区城市群发展规划，发挥港澳独特优势，提升在国家经济发展和对外开放中的地位与功能。另外，珠港澳大桥主体工程也已经完工，预计进展顺利的话有望于今年年底通车。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">粤港澳大湾区指的是由珠三角9市(广州、深圳、珠海、佛山、惠州、东莞、中山、江门、肇庆)和香港、澳门两个特别行政区共同构成的新型城市群。按照目前的城市群体量已经是仅此于纽约湾区、旧金山湾区、东京湾区的全球第四大湾区，考虑到其城市发展较为平衡，有望出现多个核心城市的多核心湾区，其中期模式可能会与旧金山比较类似。</span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\"><strong>相关股票</strong></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-indent: 2em;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ËÎÌå, Tahoma, Helvetica, Arial, 宋体, sans-serif; border: none; color: rgb(102, 102, 102); font-size: 14px; text-align: justify; text-indent: 2em;\"><span style=\"line-height: 2; color: rgb(0, 0, 0); font-size: 16px; font-family: &quot;Microsoft YaHei&quot;;\">地产(格力地产、香江控股、华发股份、招商蛇口、世荣兆业、世联行、珠江实业、深深房等)、基建(塔牌集团、天健集团、粤水电等)、交运(珠海港、深赤湾、盐田港、广州港、广深铁路、中远海特等)、金融(越秀金控、广发证券、力合股份等)、旅游(华侨城A等)、高端制造(佛山照明、国光电器、比亚迪等)、环保(东江环保等)</span></p>\r\n','http://static.niuke.cn/uploads/information/information/2017-04-12/2yUapoNKPeoq_php3iaRvu.jpg','','','',NULL,'website','2017-04-12 10:03:36','2017-04-12 10:03:36'),(43,43,'zh','雄安新区千年大计','tuiguang',1,'<p>tuigaung</p>\r\n','','','','',NULL,'website','2017-04-12 10:42:36','2017-04-19 02:47:14'),(44,44,'zh','摇钱术软件','yaoqianshu',1,'<p>yaoqianshu</p>\r\n','','','','',NULL,'website','2017-04-14 05:25:34','2017-04-14 05:25:34'),(45,45,'zh','涨停先锋','zhangting',1,'<p>涨停</p>\r\n','','','','',NULL,'website','2017-04-16 07:33:08','2017-04-16 07:33:08'),(46,46,'zh','免费领取','tuiguang1',1,'<p>tuiguang1</p>\r\n','','','','',NULL,'website','2017-04-28 01:46:56','2017-04-28 04:20:54'),(47,47,'zh','免费领取牛股','tuiguang2',1,'<p>tuiguang2</p>\r\n','','','','',NULL,'website','2017-04-28 03:31:26','2017-04-28 03:31:26'),(48,48,'zh','摇钱术注册','mobile1',1,'<p>摇钱术注册</p>\r\n','','','','',NULL,'website','2017-04-29 04:43:11','2017-04-29 04:43:11'),(49,49,'zh','免费领取牛股','tuiguang3',1,'<p>tuiguang3</p>\r\n','','','','',NULL,'website','2017-05-02 10:29:41','2017-05-02 10:29:41');
/*!40000 ALTER TABLE `page__page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page__pages`
--

DROP TABLE IF EXISTS `page__pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page__pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page__pages`
--

LOCK TABLES `page__pages` WRITE;
/*!40000 ALTER TABLE `page__pages` DISABLE KEYS */;
INSERT INTO `page__pages` VALUES (2,0,'index','2017-04-07 17:11:54','2017-04-14 03:31:01'),(3,0,'default','2017-04-07 17:29:57','2017-04-07 17:29:57'),(4,0,'default','2017-04-07 18:16:25','2017-04-07 18:16:25'),(5,0,'news','2017-04-07 19:26:34','2017-04-11 10:09:06'),(6,0,'appdownload','2017-04-07 19:27:09','2017-04-12 10:11:32'),(20,0,'newslist','2017-04-11 16:22:17','2017-04-11 16:22:17'),(21,0,'zhibo','2017-04-12 03:31:49','2017-04-12 03:31:49'),(22,0,'abouts','2017-04-12 03:35:04','2017-04-12 03:35:04'),(23,0,'news_cjtt','2017-04-12 03:39:21','2017-04-12 03:39:21'),(24,0,'news_cjtt','2017-04-12 03:43:52','2017-04-12 03:43:52'),(25,0,'newsdetails','2017-04-12 04:06:44','2017-04-12 04:06:44'),(26,0,'news_cjtt','2017-04-12 08:57:32','2017-04-12 08:57:32'),(27,0,'news_hsgs','2017-04-12 09:12:33','2017-04-12 09:12:33'),(28,0,'news_hsgs','2017-04-12 09:13:36','2017-04-12 09:13:36'),(29,0,'news_hsgs','2017-04-12 09:14:53','2017-04-12 09:14:53'),(30,0,'news_cpbd','2017-04-12 09:15:44','2017-04-12 09:15:44'),(31,0,'news_cpbd','2017-04-12 09:16:58','2017-04-12 09:16:58'),(32,0,'news_cpbd','2017-04-12 09:17:43','2017-04-12 09:17:43'),(33,0,'news_gmxy','2017-04-12 09:20:49','2017-04-12 09:20:49'),(34,0,'news_gmxy','2017-04-12 09:21:22','2017-04-12 09:21:22'),(35,0,'news_gmxy','2017-04-12 09:22:04','2017-04-12 09:22:04'),(36,0,'news_cjkx','2017-04-12 09:41:59','2017-04-12 09:41:59'),(37,0,'news_cjkx','2017-04-12 09:42:19','2017-04-12 09:42:19'),(38,0,'news_cjkx','2017-04-12 09:42:44','2017-04-12 09:42:44'),(39,0,'news_cjkx','2017-04-12 09:43:33','2017-04-12 09:43:33'),(40,0,'news_tjcj','2017-04-12 10:02:25','2017-04-12 10:02:25'),(41,0,'news_tjcj','2017-04-12 10:03:01','2017-04-12 10:03:01'),(42,0,'news_tjcj','2017-04-12 10:03:36','2017-04-12 10:03:36'),(43,0,'tuiguang','2017-04-12 10:42:36','2017-04-14 05:25:34'),(44,1,'yaoqianshu','2017-04-14 05:25:34','2017-05-03 02:27:37'),(45,0,'zhangting','2017-04-16 07:33:08','2017-04-16 07:33:08'),(46,0,'tuiguang1','2017-04-28 01:46:56','2017-05-02 06:47:29'),(47,0,'tuiguang2','2017-04-28 03:31:26','2017-04-28 03:31:26'),(48,0,'mobile1','2017-04-29 04:43:11','2017-04-29 04:43:11'),(49,0,'tuiguang3','2017-05-02 10:29:41','2017-05-03 02:27:37');
/*!40000 ALTER TABLE `page__pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistences`
--

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` VALUES (2,1,'Dnbkf0LqJE83zXifrWGmOn6DpjqjdTUP','2017-04-07 16:48:33','2017-04-07 16:48:33'),(3,1,'CkKBS6rkQtTf2SosnLIAAkkxtZj0rqyG','2017-04-07 16:54:43','2017-04-07 16:54:43'),(4,1,'Qp5XGrcJvyTYNL45gUlwBHPv5H7S6Pms','2017-04-07 17:09:37','2017-04-07 17:09:37'),(5,1,'j9ExYoQBvFQZrb66Z4vHOQq8AE7jSFhD','2017-04-07 19:09:45','2017-04-07 19:09:45'),(6,1,'Dg9vwbvMge1gBIBeuKPptcj5w6mMX2y2','2017-04-07 19:40:04','2017-04-07 19:40:04'),(7,1,'H4xJ0Nqhji6gH7qxrrvt6VMUdueppsp0','2017-04-07 19:57:05','2017-04-07 19:57:05'),(8,1,'pTQmDeX2Ab4RDXiaP0hYVmhMHgJFpSqf','2017-04-07 22:41:10','2017-04-07 22:41:10'),(9,1,'GfflWZZ9wcy1bRH1lGcrLAa3CPAd5z8K','2017-04-07 22:47:10','2017-04-07 22:47:10'),(10,1,'oQuBwiyC3qUgDxMbfzoorKn6A4RGM0EG','2017-04-07 23:04:08','2017-04-07 23:04:08'),(11,1,'elw3O7HTjkoPWG6IiRQld7UFBSuIJIGg','2017-04-08 13:31:00','2017-04-08 13:31:00'),(13,1,'tj8jXnQfsxp5T55TgNSDuOBrl8NgX6Xz','2017-04-08 14:49:26','2017-04-08 14:49:26'),(14,1,'wSvdGQEJtBNhDXD6QipCVJlrFeJo8aSY','2017-04-08 15:58:52','2017-04-08 15:58:52'),(15,1,'Xo4TyTb89LuBJJLPO9ApVEMj2mQfo3Br','2017-04-09 04:44:26','2017-04-09 04:44:26'),(16,1,'htJfma1YxRmnBXOlkgHePJupHSxHO8Ff','2017-04-09 05:28:59','2017-04-09 05:28:59'),(17,1,'8Mpy40Arug9pZPqnuj4jgGVEMIkuzrW8','2017-04-10 06:12:16','2017-04-10 06:12:16'),(18,1,'jNBu7ZvS5M9IzI7EYzTRSeeJolEmyCA6','2017-04-10 16:03:24','2017-04-10 16:03:24'),(20,1,'GlFGRWfJFv1ZeeyLwhaXXcn1sxlHy2Tn','2017-04-11 06:35:43','2017-04-11 06:35:43'),(21,1,'jMEPAKKmTT3I6s7lxJEKEXzfC91BOTFi','2017-04-11 07:22:58','2017-04-11 07:22:58'),(22,1,'HS2Vm0au9WueFxW6flHrbOtmGEeIkz3E','2017-04-11 09:29:59','2017-04-11 09:29:59'),(23,1,'hKkoyYaEUL1FXlAe9FbWMj24CC4OvqRf','2017-04-11 10:05:21','2017-04-11 10:05:21'),(24,1,'USoP0nAkYe8xZwX6yR3yzFXDIbGPkgs3','2017-04-12 03:29:25','2017-04-12 03:29:25'),(25,1,'pPSYgnSPPnfC9wbBbQEtP194Eo7bjuVd','2017-04-12 08:56:48','2017-04-12 08:56:48'),(26,1,'0fMa0baAmVTP9QOm9avUkgisYcqvN2ey','2017-04-12 11:03:04','2017-04-12 11:03:04'),(27,1,'kbWuZRoto6BlptHEB70qXNjQ1L70EDpW','2017-04-13 07:39:56','2017-04-13 07:39:56'),(28,1,'r6zgSnYG7k6lHwzLf0vqUOOejoXO7i8I','2017-04-14 03:28:49','2017-04-14 03:28:49'),(29,1,'rqXqM5f2TyRUHPA1vhBenumiNRhd40nA','2017-04-14 12:04:16','2017-04-14 12:04:16'),(30,1,'VfSvjrBQomp6o2PCMM1EEhQ3ie2DWV3f','2017-04-16 07:31:53','2017-04-16 07:31:53'),(31,1,'cxx59JjEPBB3KX0lBabg1zBrk4wpQm07','2017-04-18 08:53:00','2017-04-18 08:53:00'),(32,1,'0gHqYp2GhR5P1QQ9ay2BYtGIzT2dvWRF','2017-04-19 02:46:00','2017-04-19 02:46:00'),(33,1,'Yr95wYMcRBG8mnd7ZDc18CCcodcLDY4q','2017-04-26 04:07:02','2017-04-26 04:07:02'),(34,1,'U9Dxs0JangDkv8ZgF3Xnh5BmE7jzSITI','2017-04-28 01:43:08','2017-04-28 01:43:08'),(35,1,'ZtnWr4TZhXkgJbi8NDgU1msgIDpJx1kX','2017-04-28 03:28:45','2017-04-28 03:28:45'),(36,1,'37fVxysziFhaxTEfOm4xZBYeNMMrhgN7','2017-04-29 04:41:48','2017-04-29 04:41:48'),(37,1,'vTwAJo692iYNvzibvPEUhobTvSujPa6z','2017-05-02 10:29:14','2017-05-02 10:29:14'),(38,1,'iPwupfxrzE22KnOPbWUggC7g2NAKtO9B','2017-05-02 11:11:40','2017-05-02 11:11:40'),(39,1,'qXhrsZu6SHTQs8szA56PU5Ia2lAsjub0','2017-05-03 00:42:38','2017-05-03 00:42:38');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,1,'2017-04-07 08:27:18','2017-04-07 08:27:18');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.export\":true,\"translation.translations.import\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true}','2017-04-07 08:26:59','2017-04-07 08:26:59'),(2,'user','User',NULL,'2017-04-07 08:26:59','2017-04-07 08:26:59');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting__setting_translations`
--

DROP TABLE IF EXISTS `setting__setting_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting__setting_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  KEY `setting__setting_translations_locale_index` (`locale`),
  CONSTRAINT `setting__setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `setting__settings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting__setting_translations`
--

LOCK TABLES `setting__setting_translations` WRITE;
/*!40000 ALTER TABLE `setting__setting_translations` DISABLE KEYS */;
INSERT INTO `setting__setting_translations` VALUES (1,3,'en','顶点财经官网',NULL),(2,4,'en','',NULL),(3,5,'en','',NULL),(4,3,'zh','顶点财经',NULL),(5,4,'zh','顶点财经',NULL),(6,5,'zh','顶点财经',NULL);
/*!40000 ALTER TABLE `setting__setting_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting__settings`
--

DROP TABLE IF EXISTS `setting__settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting__settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plainValue` text COLLATE utf8_unicode_ci,
  `isTranslatable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__settings_name_unique` (`name`),
  KEY `setting__settings_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting__settings`
--

LOCK TABLES `setting__settings` WRITE;
/*!40000 ALTER TABLE `setting__settings` DISABLE KEYS */;
INSERT INTO `setting__settings` VALUES (1,'core::template','Flatly',0,'2017-04-07 08:27:21','2017-04-07 08:27:21'),(2,'core::locales','[\"zh\"]',0,'2017-04-07 08:27:21','2017-04-07 19:11:24'),(3,'core::site-name',NULL,1,'2017-04-07 08:31:59','2017-04-07 08:31:59'),(4,'core::site-name-mini',NULL,1,'2017-04-07 08:31:59','2017-04-07 08:31:59'),(5,'core::site-description',NULL,1,'2017-04-07 08:31:59','2017-04-07 08:31:59'),(6,'core::analytics-script','',0,'2017-04-07 08:31:59','2017-04-07 08:31:59');
/*!40000 ALTER TABLE `setting__settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag__tag_translations`
--

DROP TABLE IF EXISTS `tag__tag_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag__tag_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  KEY `tag__tag_translations_locale_index` (`locale`),
  CONSTRAINT `tag__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag__tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag__tag_translations`
--

LOCK TABLES `tag__tag_translations` WRITE;
/*!40000 ALTER TABLE `tag__tag_translations` DISABLE KEYS */;
INSERT INTO `tag__tag_translations` VALUES (1,'cjtt','cjtt',1,'zh'),(2,'tjcj','tjcj',2,'zh'),(3,'hsgs','hsgs',3,'zh'),(4,'gsyhy','gsyhy',4,'zh'),(5,'index','index',5,'zh');
/*!40000 ALTER TABLE `tag__tag_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag__tagged`
--

DROP TABLE IF EXISTS `tag__tagged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag__tagged` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag__tagged`
--

LOCK TABLES `tag__tagged` WRITE;
/*!40000 ALTER TABLE `tag__tagged` DISABLE KEYS */;
INSERT INTO `tag__tagged` VALUES (2,'Modules\\Page\\Entities\\Page',10,2),(3,'Modules\\Page\\Entities\\Page',12,3),(4,'Modules\\Page\\Entities\\Page',14,4),(5,'Modules\\Page\\Entities\\Page',2,5),(6,'Modules\\Page\\Entities\\Page',16,2),(7,'Modules\\Page\\Entities\\Page',26,1);
/*!40000 ALTER TABLE `tag__tagged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag__tags`
--

DROP TABLE IF EXISTS `tag__tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag__tags`
--

LOCK TABLES `tag__tags` WRITE;
/*!40000 ALTER TABLE `tag__tags` DISABLE KEYS */;
INSERT INTO `tag__tags` VALUES (1,'asgardcms/page','2017-04-11 09:53:41','2017-04-11 09:53:41'),(2,'asgardcms/page','2017-04-11 10:16:40','2017-04-11 10:16:40'),(3,'asgardcms/page','2017-04-11 10:22:39','2017-04-11 10:22:39'),(4,'asgardcms/page','2017-04-11 10:25:03','2017-04-11 10:25:03'),(5,'asgardcms/page','2017-04-11 11:06:17','2017-04-11 11:06:17');
/*!40000 ALTER TABLE `tag__tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` VALUES (1,NULL,'global',NULL,'2017-04-14 12:03:27','2017-04-14 12:03:27'),(2,NULL,'ip','125.119.237.198','2017-04-14 12:03:27','2017-04-14 12:03:27'),(3,1,'user',NULL,'2017-04-14 12:03:27','2017-04-14 12:03:27'),(4,NULL,'global',NULL,'2017-04-14 12:03:35','2017-04-14 12:03:35'),(5,NULL,'ip','125.119.237.198','2017-04-14 12:03:35','2017-04-14 12:03:35'),(6,1,'user',NULL,'2017-04-14 12:03:35','2017-04-14 12:03:35'),(7,NULL,'global',NULL,'2017-04-14 12:03:38','2017-04-14 12:03:38'),(8,NULL,'ip','125.119.237.198','2017-04-14 12:03:38','2017-04-14 12:03:38'),(9,1,'user',NULL,'2017-04-14 12:03:38','2017-04-14 12:03:38'),(10,NULL,'global',NULL,'2017-04-18 08:51:47','2017-04-18 08:51:47'),(11,NULL,'ip','127.0.0.1','2017-04-18 08:51:47','2017-04-18 08:51:47'),(12,1,'user',NULL,'2017-04-18 08:51:47','2017-04-18 08:51:47'),(13,NULL,'global',NULL,'2017-04-18 08:51:59','2017-04-18 08:51:59'),(14,NULL,'ip','127.0.0.1','2017-04-18 08:51:59','2017-04-18 08:51:59'),(15,1,'user',NULL,'2017-04-18 08:52:00','2017-04-18 08:52:00');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translation__translation_translations`
--

DROP TABLE IF EXISTS `translation__translation_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translation__translation_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `translation_id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_trans_id_locale_unique` (`translation_id`,`locale`),
  KEY `translation__translation_translations_locale_index` (`locale`),
  CONSTRAINT `translation__translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translation__translations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translation__translation_translations`
--

LOCK TABLES `translation__translation_translations` WRITE;
/*!40000 ALTER TABLE `translation__translation_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translation__translation_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translation__translations`
--

DROP TABLE IF EXISTS `translation__translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translation__translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translation__translations_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translation__translations`
--

LOCK TABLES `translation__translations` WRITE;
/*!40000 ALTER TABLE `translation__translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translation__translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_tokens_access_token_unique` (`access_token`),
  KEY `user_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `user_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
INSERT INTO `user_tokens` VALUES (1,1,'508cc890-907a-4ebf-b10e-43c7dc8f93b7','2017-04-07 08:27:18','2017-04-07 08:27:18');
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kaleo1990@hotmail.com','$2y$10$1xgH0aDBQWiK0/pot3QJ1.0MUZg.UFhWLJmr/XJoWVp0fkGM85iTy',NULL,'2017-05-03 00:42:38','kaleo','admin','2017-04-07 08:27:18','2017-05-03 00:42:38');
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

-- Dump completed on 2017-05-15 19:28:01
