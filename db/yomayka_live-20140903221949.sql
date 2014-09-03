-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yomayka_live
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `yodev_assets`
--

DROP TABLE IF EXISTS `yodev_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_assets`
--

LOCK TABLES `yodev_assets` WRITE;
/*!40000 ALTER TABLE `yodev_assets` DISABLE KEYS */;
INSERT INTO `yodev_assets` VALUES (1,0,0,101,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,20,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,21,22,1,'com_cpanel','com_cpanel','{}'),(10,1,23,24,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,25,26,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,27,28,1,'com_login','com_login','{}'),(13,1,29,30,1,'com_mailto','com_mailto','{}'),(14,1,31,32,1,'com_massmail','com_massmail','{}'),(15,1,33,34,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,35,36,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,39,40,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,41,44,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,45,46,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,47,48,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,49,50,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,51,52,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,53,56,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,57,60,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,61,62,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,42,43,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,58,59,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,54,55,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,63,64,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,65,66,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,67,68,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(37,1,69,94,1,'com_yoshop','com_yoshop','{}'),(38,37,70,73,2,'com_yoshop.category.8','Женская одежда',''),(39,37,74,77,2,'com_yoshop.category.9','Мужская одежда',''),(40,37,78,91,2,'com_yoshop.category.10','Handmade',''),(41,38,71,72,3,'com_yoshop.category.11','Шапки',''),(42,39,75,76,3,'com_yoshop.category.12','Шапки',''),(43,40,79,80,3,'com_yoshop.category.13','Украшения',''),(44,40,81,82,3,'com_yoshop.category.14','Для дома',''),(45,40,83,84,3,'com_yoshop.category.15','Pets',''),(46,40,85,86,3,'com_yoshop.category.16','Стиль',''),(47,40,87,88,3,'com_yoshop.category.17','Сувениры',''),(48,40,89,90,3,'com_yoshop.category.18','Аксессуары',''),(49,37,92,93,2,'com_yoshop.category.19','Аксессуары',''),(50,1,95,96,1,'com_contenthistory','com_contenthistory','{}'),(51,1,97,98,1,'com_ajax','com_ajax','{}'),(52,1,99,100,1,'com_postinstall','com_postinstall','{}');
/*!40000 ALTER TABLE `yodev_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_associations`
--

DROP TABLE IF EXISTS `yodev_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_associations`
--

LOCK TABLES `yodev_associations` WRITE;
/*!40000 ALTER TABLE `yodev_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_banner_clients`
--

DROP TABLE IF EXISTS `yodev_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_banner_clients`
--

LOCK TABLES `yodev_banner_clients` WRITE;
/*!40000 ALTER TABLE `yodev_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_banner_tracks`
--

DROP TABLE IF EXISTS `yodev_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_banner_tracks`
--

LOCK TABLES `yodev_banner_tracks` WRITE;
/*!40000 ALTER TABLE `yodev_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_banners`
--

DROP TABLE IF EXISTS `yodev_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_banners`
--

LOCK TABLES `yodev_banners` WRITE;
/*!40000 ALTER TABLE `yodev_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_categories`
--

DROP TABLE IF EXISTS `yodev_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_categories`
--

LOCK TABLES `yodev_categories` WRITE;
/*!40000 ALTER TABLE `yodev_categories` DISABLE KEYS */;
INSERT INTO `yodev_categories` VALUES (1,0,0,0,37,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/yelow.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',477,'2014-09-03 17:56:17',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,38,1,13,16,1,'women','com_yoshop','Женская одежда','women','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-12 19:52:17',0,'0000-00-00 00:00:00',0,'*',1),(9,39,1,17,20,1,'men','com_yoshop','Мужская одежда','men','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-12 19:52:32',0,'0000-00-00 00:00:00',0,'*',1),(10,40,1,21,34,1,'handmade','com_yoshop','Handmade','handmade','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-12 19:52:48',0,'0000-00-00 00:00:00',0,'*',1),(11,41,8,14,15,2,'women/hats','com_yoshop','Шапки','hats','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-12 19:53:01',0,'0000-00-00 00:00:00',0,'*',1),(12,42,9,18,19,2,'men/hats','com_yoshop','Шапки','hats','','',1,477,'2013-10-16 19:59:06',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-12 19:53:12',0,'0000-00-00 00:00:00',0,'*',1),(13,43,10,22,23,2,'handmade/jewelry','com_yoshop','Украшения','jewelry','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-16 19:48:44',0,'0000-00-00 00:00:00',0,'*',1),(14,44,10,24,25,2,'handmade/home','com_yoshop','Для дома','home','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-16 19:49:05',0,'0000-00-00 00:00:00',0,'*',1),(15,45,10,26,27,2,'handmade/pets','com_yoshop','Pets','pets','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-16 19:49:14',0,'0000-00-00 00:00:00',0,'*',1),(16,46,10,28,29,2,'handmade/style','com_yoshop','Стиль','style','','',1,477,'2013-10-16 20:01:20',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-16 19:49:28',0,'0000-00-00 00:00:00',0,'*',1),(17,47,10,30,31,2,'handmade/souvenirs','com_yoshop','Сувениры','souvenirs','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-16 19:49:45',0,'0000-00-00 00:00:00',0,'*',1),(18,48,10,32,33,2,'handmade/accesories','com_yoshop','Аксессуары','accesories','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-16 19:50:01',0,'0000-00-00 00:00:00',0,'*',1),(19,49,1,35,36,1,'accesories','com_yoshop','Аксессуары','accesories','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',477,'2013-10-16 19:50:23',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `yodev_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_contact_details`
--

DROP TABLE IF EXISTS `yodev_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_contact_details`
--

LOCK TABLES `yodev_contact_details` WRITE;
/*!40000 ALTER TABLE `yodev_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_content`
--

DROP TABLE IF EXISTS `yodev_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_content`
--

LOCK TABLES `yodev_content` WRITE;
/*!40000 ALTER TABLE `yodev_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_content_frontpage`
--

DROP TABLE IF EXISTS `yodev_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_content_frontpage`
--

LOCK TABLES `yodev_content_frontpage` WRITE;
/*!40000 ALTER TABLE `yodev_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_content_rating`
--

DROP TABLE IF EXISTS `yodev_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_content_rating`
--

LOCK TABLES `yodev_content_rating` WRITE;
/*!40000 ALTER TABLE `yodev_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_content_types`
--

DROP TABLE IF EXISTS `yodev_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_content_types`
--

LOCK TABLES `yodev_content_types` WRITE;
/*!40000 ALTER TABLE `yodev_content_types` DISABLE KEYS */;
INSERT INTO `yodev_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\": {\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"url\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `yodev_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_contentitem_tag_map`
--

DROP TABLE IF EXISTS `yodev_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_contentitem_tag_map`
--

LOCK TABLES `yodev_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `yodev_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_core_log_searches`
--

DROP TABLE IF EXISTS `yodev_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_core_log_searches`
--

LOCK TABLES `yodev_core_log_searches` WRITE;
/*!40000 ALTER TABLE `yodev_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_extensions`
--

DROP TABLE IF EXISTS `yodev_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10019 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_extensions`
--

LOCK TABLES `yodev_extensions` WRITE;
/*!40000 ALTER TABLE `yodev_extensions` DISABLE KEYS */;
INSERT INTO `yodev_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"f5448565479fb7d36e0c292be91ad65b\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,0,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,0,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,0,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,0,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,0,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"Se[ptember 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,0,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Russian','language','ru-RU','',0,1,0,0,'{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2014-07-28\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.3.3.1\",\"description\":\"Russian language pack (site) for Joomla! 3.3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'Russian','language','ru-RU','',1,1,0,0,'{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2014-07-28\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.3.3.1\",\"description\":\"Russian language pack (administrator) for Joomla! 3.3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'TinyMCE ru-RU','file','tinymce_ru-ru','',0,1,0,0,'{\"name\":\"TinyMCE ru-RU\",\"type\":\"file\",\"creationDate\":\"2012-10-01\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.5.2.1\",\"description\":\"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 3.0\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10003,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.3.3.1\",\"description\":\"Joomla 3.3 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'Lady','template','lady','',0,1,1,0,'{\"name\":\"Lady\",\"type\":\"template\",\"creationDate\":\"2013-10-12\",\"author\":\"Andreyalek\",\"copyright\":\"\",\"authorEmail\":\"andreyalek@gmail.com\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'com_yoshop','component','com_yoshop','',1,1,0,0,'{\"name\":\"com_yoshop\",\"type\":\"component\",\"creationDate\":\"2013-10-12\",\"author\":\"Andreyalek\",\"copyright\":\"\\u00a9 2013. \\u0412\\u0441\\u0435 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d\\u044b.\",\"authorEmail\":\"andreyalek@gmail.com\",\"authorUrl\":\"http:\\/\\/\",\"version\":\"0.5\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'mod_yoshop_cart','module','mod_yoshop_cart','',0,1,1,0,'{\"name\":\"mod_yoshop_cart\",\"type\":\"module\",\"creationDate\":\"October 2013\",\"author\":\"Andreyalek\",\"copyright\":\"\",\"authorEmail\":\"andreyalek@gmail.com\",\"authorUrl\":\"\",\"version\":\"0.5\",\"description\":\"MOD_YOSHOP_CART_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10010,'plg_search_yoshop','plugin','yoshop','search',0,1,1,0,'{\"name\":\"plg_search_yoshop\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_YOSHOP_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"0\",\"search_archived\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10012,'mod_yoshop_featured','module','mod_yoshop_featured','',0,1,1,0,'{\"name\":\"mod_yoshop_featured\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10017,'mod_random_text','module','mod_random_text','',0,1,1,0,'{\"name\":\"mod_random_text\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_TEXT_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10018,'mod_yoshop_catmenu','module','mod_yoshop_catmenu','',0,1,1,0,'{\"name\":\"mod_yoshop_cart\",\"type\":\"module\",\"creationDate\":\"October 2013\",\"author\":\"Andreyalek\",\"copyright\":\"\",\"authorEmail\":\"andreyalek@gmail.com\",\"authorUrl\":\"\",\"version\":\"0.5\",\"description\":\"MOD_YOSHOP_CART_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,-1);
/*!40000 ALTER TABLE `yodev_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_filters`
--

DROP TABLE IF EXISTS `yodev_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_filters`
--

LOCK TABLES `yodev_finder_filters` WRITE;
/*!40000 ALTER TABLE `yodev_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links`
--

DROP TABLE IF EXISTS `yodev_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links`
--

LOCK TABLES `yodev_finder_links` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms0`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms0`
--

LOCK TABLES `yodev_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms1`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms1`
--

LOCK TABLES `yodev_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms2`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms2`
--

LOCK TABLES `yodev_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms3`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms3`
--

LOCK TABLES `yodev_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms4`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms4`
--

LOCK TABLES `yodev_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms5`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms5`
--

LOCK TABLES `yodev_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms6`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms6`
--

LOCK TABLES `yodev_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms7`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms7`
--

LOCK TABLES `yodev_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms8`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms8`
--

LOCK TABLES `yodev_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_terms9`
--

DROP TABLE IF EXISTS `yodev_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_terms9`
--

LOCK TABLES `yodev_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_termsa`
--

DROP TABLE IF EXISTS `yodev_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_termsa`
--

LOCK TABLES `yodev_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_termsb`
--

DROP TABLE IF EXISTS `yodev_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_termsb`
--

LOCK TABLES `yodev_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_termsc`
--

DROP TABLE IF EXISTS `yodev_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_termsc`
--

LOCK TABLES `yodev_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_termsd`
--

DROP TABLE IF EXISTS `yodev_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_termsd`
--

LOCK TABLES `yodev_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_termse`
--

DROP TABLE IF EXISTS `yodev_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_termse`
--

LOCK TABLES `yodev_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_links_termsf`
--

DROP TABLE IF EXISTS `yodev_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_links_termsf`
--

LOCK TABLES `yodev_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `yodev_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_taxonomy`
--

DROP TABLE IF EXISTS `yodev_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_taxonomy`
--

LOCK TABLES `yodev_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `yodev_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `yodev_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `yodev_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `yodev_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_taxonomy_map`
--

LOCK TABLES `yodev_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `yodev_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_terms`
--

DROP TABLE IF EXISTS `yodev_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_terms`
--

LOCK TABLES `yodev_finder_terms` WRITE;
/*!40000 ALTER TABLE `yodev_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_terms_common`
--

DROP TABLE IF EXISTS `yodev_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_terms_common`
--

LOCK TABLES `yodev_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `yodev_finder_terms_common` DISABLE KEYS */;
INSERT INTO `yodev_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `yodev_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_tokens`
--

DROP TABLE IF EXISTS `yodev_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_tokens`
--

LOCK TABLES `yodev_finder_tokens` WRITE;
/*!40000 ALTER TABLE `yodev_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `yodev_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_tokens_aggregate`
--

LOCK TABLES `yodev_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `yodev_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_finder_types`
--

DROP TABLE IF EXISTS `yodev_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_finder_types`
--

LOCK TABLES `yodev_finder_types` WRITE;
/*!40000 ALTER TABLE `yodev_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_languages`
--

DROP TABLE IF EXISTS `yodev_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_languages`
--

LOCK TABLES `yodev_languages` WRITE;
/*!40000 ALTER TABLE `yodev_languages` DISABLE KEYS */;
INSERT INTO `yodev_languages` VALUES (1,'ru-RU','Russian','Русский','ru','ru','','','','',1,5,1);
/*!40000 ALTER TABLE `yodev_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_menu`
--

DROP TABLE IF EXISTS `yodev_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_menu`
--

LOCK TABLES `yodev_menu` WRITE;
/*!40000 ALTER TABLE `yodev_menu` DISABLE KEYS */;
INSERT INTO `yodev_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,91,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',33,38,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',34,35,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',36,37,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',39,40,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',43,44,0,'',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"multi_column_order\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',45,46,1,'*',0),(106,'main','COM_YOSHOP_TITLE_PRODUCTS','com-yoshop-title-products','','com-yoshop/com-yoshop-title-products','index.php?option=com_yoshop&view=products','component',0,105,2,0,0,'0000-00-00 00:00:00',0,1,'components/com_yoshop/assets/images/s_products.png',0,'',48,49,0,'',1),(107,'main','COM_YOSHOP_TITLE_CATEGORIES','com-yoshop-title-categories','','com-yoshop/com-yoshop-title-categories','index.php?option=com_yoshop&view=categories','component',0,105,2,0,0,'0000-00-00 00:00:00',0,1,'components/com_yoshop/assets/images/s_categories.png',0,'',50,51,0,'',1),(108,'main','COM_YOSHOP','com-yoshop','','com-yoshop','index.php?option=com_yoshop','component',0,1,1,10007,0,'0000-00-00 00:00:00',0,1,'components/com_yoshop/assets/images/s_com_yoshop.png',0,'',53,58,0,'',1),(109,'main','COM_YOSHOP_TITLE_PRODUCTS','com-yoshop-title-products','','com-yoshop/com-yoshop-title-products','index.php?option=com_yoshop&view=products','component',0,108,2,10007,0,'0000-00-00 00:00:00',0,1,'components/com_yoshop/assets/images/s_products.png',0,'',54,55,0,'',1),(110,'main','COM_YOSHOP_TITLE_CATEGORIES','com-yoshop-title-categories','','com-yoshop/com-yoshop-title-categories','index.php?option=com_yoshop&view=categories','component',0,108,2,10007,0,'0000-00-00 00:00:00',0,1,'components/com_yoshop/assets/images/s_categories.png',0,'',56,57,0,'',1),(111,'top','Женская одежда','women','','women','index.php?option=com_yoshop&view=category&id=8','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"8\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,62,0,'*',0),(112,'top','Шапки','hats','','women/hats','index.php?option=com_yoshop&view=category&id=11','component',1,111,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"11\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',60,61,0,'*',0),(113,'top','Мужская одежда','men','','men','index.php?option=com_yoshop&view=category&id=9','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"9\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,66,0,'*',0),(114,'top','Шапки','hats','','men/hats','index.php?option=com_yoshop&view=category&id=12','component',1,113,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"12\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',64,65,0,'*',0),(115,'top','Handmade','handmade','','handmade','index.php?option=com_yoshop&view=category&id=10','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"10\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,80,0,'*',0),(116,'top','Украшения','jewelry','','handmade/jewelry','index.php?option=com_yoshop&view=category&id=13','component',1,115,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"13\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',68,69,0,'*',0),(117,'top','Для дома','home','','handmade/home','index.php?option=com_yoshop&view=category&id=14','component',1,115,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"14\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',70,71,0,'*',0),(118,'top','Pets','pets','','handmade/pets','index.php?option=com_yoshop&view=category&id=15','component',1,115,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"15\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',72,73,0,'*',0),(119,'top','Стиль','style','','handmade/style','index.php?option=com_yoshop&view=category&id=16','component',1,115,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"16\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',74,75,0,'*',0),(120,'top','Сувениры','souvenirs','','handmade/souvenirs','index.php?option=com_yoshop&view=category&id=17','component',1,115,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"17\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',76,77,0,'*',0),(121,'top','Аксессуары','accesories','','handmade/accesories','index.php?option=com_yoshop&view=category&id=18','component',1,115,2,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"category\":\"18\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',78,79,0,'*',0),(122,'top','Аксессуары','accesories','','accesories','index.php?option=com_yoshop&view=category&id=19','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',81,82,0,'*',0),(123,'mainmenu','ewrt we','ert-wer','','ert-wer','index.php?option=com_yoshop&view=category&id=8','component',-2,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',83,84,0,'*',0),(124,'mainmenu','Корзина','cart','','cart','index.php?option=com_yoshop&view=cart','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',85,86,0,'*',0),(125,'mainmenu','Поиск','search','','search','index.php?option=com_yoshop&view=search&id=','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),(126,'top','rutyueyrtui','rutyueyrtui','','rutyueyrtui','index.php?option=com_yoshop&view=category&id=16','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',89,90,0,'*',0),(127,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',45,46,0,'*',1);
/*!40000 ALTER TABLE `yodev_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_menu_types`
--

DROP TABLE IF EXISTS `yodev_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_menu_types`
--

LOCK TABLES `yodev_menu_types` WRITE;
/*!40000 ALTER TABLE `yodev_menu_types` DISABLE KEYS */;
INSERT INTO `yodev_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'top','Верхнее','');
/*!40000 ALTER TABLE `yodev_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_messages`
--

DROP TABLE IF EXISTS `yodev_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_messages`
--

LOCK TABLES `yodev_messages` WRITE;
/*!40000 ALTER TABLE `yodev_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_messages_cfg`
--

DROP TABLE IF EXISTS `yodev_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_messages_cfg`
--

LOCK TABLES `yodev_messages_cfg` WRITE;
/*!40000 ALTER TABLE `yodev_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_modules`
--

DROP TABLE IF EXISTS `yodev_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_modules`
--

LOCK TABLES `yodev_modules` WRITE;
/*!40000 ALTER TABLE `yodev_modules` DISABLE KEYS */;
INSERT INTO `yodev_modules` VALUES (1,0,'Меню (верхний уровень)','','',3,'apex-right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"top\",\"base\":\"101\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"lady:navbar\",\"moduleclass_sfx\":\"role-menu-top visible-desktop\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,0,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,0,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,0,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,0,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,0,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,0,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,0,'Логотип','','<p><a href=\"http://dev.joomla.yomayka.com/\">yomayka</a></p>',1,'apex-left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" modrole-logo\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,0,'Поиск','','',2,'apex-right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,0,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"lady:searchglass\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,0,'Корзина','','',2,'apex-right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_yoshop_cart',1,0,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"modrole-cart\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,0,'Меню (второй уровень)','','',1,'apex-bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"top\",\"base\":\"101\",\"startLevel\":\"1\",\"endLevel\":\"2\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"lady:yosubmenu\",\"moduleclass_sfx\":\"role-menu-top-sub\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,0,'Меню (мобильные)','','',3,'apex-right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"top\",\"base\":\"101\",\"startLevel\":\"1\",\"endLevel\":\"2\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"lady:navbar\",\"moduleclass_sfx\":\"role-menu-top-mobile\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,0,'Слайдшоу на главной','','',0,'homepage-top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_yoshop_featured',1,0,'{\"ids\":\"17,18,19,20,21,22,23,24\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,0,'Случайная цитата','','',1,'homepage-center',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_random_text',1,0,'{\"content\":\"\\u041c\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u0438\\u0442, \\u0441\\u0442\\u0438\\u043b\\u044c \\u043e\\u0441\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f. -- \\u041a\\u043e\\u043a\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c\\r\\n\\u041b\\u044e\\u0434\\u0438 \\u0443\\u0432\\u043b\\u0435\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0435 \\u043c\\u043e\\u0434\\u043e\\u0439, \\u0430 \\u0442\\u0435\\u043c\\u0438 \\u043d\\u0435\\u043c\\u043d\\u043e\\u0433\\u0438\\u043c\\u0438, \\u043a\\u0442\\u043e \\u0435\\u0435 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0435\\u0442. -- \\u041a\\u043e\\u043a\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c\\r\\n\\u041d\\u0438\\u0447\\u0442\\u043e \\u0442\\u0430\\u043a \\u043d\\u0435 \\u0441\\u0442\\u0430\\u0440\\u0438\\u0442 \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u0443, \\u043a\\u0430\\u043a \\u0441\\u043b\\u0438\\u0448\\u043a\\u043e\\u043c \\u0431\\u043e\\u0433\\u0430\\u0442\\u044b\\u0439 \\u043a\\u043e\\u0441\\u0442\\u044e\\u043c. -- \\u041a\\u043e\\u043a\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c\\r\\n\\u041c\\u043e\\u0434\\u0430, \\u043a\\u0430\\u043a \\u0438 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u0430, - \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441 \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0439. -- \\u041a\\u043e\\u043a\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c\\r\\n\\u042d\\u0432\\u043e\\u043b\\u044e\\u0446\\u0438\\u044f \\u0434\\u043b\\u0438\\u043d\\u044b \\u044e\\u0431\\u043a\\u0438 - \\u043e\\u0442 \\u043a\\u0430\\u0441\\u0430\\u043d\\u0438\\u044f \\u043f\\u043e\\u043b\\u0430 \\u0434\\u043e \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u0442\\u0440\\u043e\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438. -- \\u041f\\u0430\\u0432\\u0435\\u043b \\u0428\\u0430\\u0440\\u043f\\u043f\\r\\n\\u041c\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u043d\\u0435 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442.\\u0415\\u0435 \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442 \\u0434\\u043b\\u044f \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0441\\u043e\\u0442\\u0435\\u043d \\u043b\\u044e\\u0434\\u0435\\u0439. -- \\u041a\\u043e\\u043a\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c\\r\\n\\u041c\\u043e\\u0434\\u0430 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438 \\u0441\\u043b\\u0430\\u0431\\u044b\\u0445 \\u043c\\u0435\\u0441\\u0442 \\u0432 \\u0445\\u043e\\u0440\\u043e\\u0448\\u0435\\u043c \\u0432\\u043a\\u0443\\u0441\\u0435. -- \\u0412\\u0438\\u0442\\u0430 \\u041b\\u043e\\u0433\\u0432\\u0438\\u043d\\u0435\\u043d\\u043a\\u043e \\r\\n\\u0427\\u0442\\u043e \\u0432\\u043d\\u0430\\u0447\\u0430\\u043b\\u0435 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0441\\u044f \\u0434\\u0438\\u043a\\u043e \\u2013 \\u0432\\u0441\\u043a\\u043e\\u0440\\u0435 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u0442\\u0441\\u044f \\u043c\\u043e\\u0434\\u043e\\u0439. -- \\u041d\\u0435\\u0439\\u0430\\u0445\\r\\n\\u041c\\u043e\\u0434\\u0443 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c. \\u0421\\u0442\\u0438\\u043b\\u044c \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e \\u0438\\u043c\\u0435\\u0442\\u044c. -- \\u042d\\u0434\\u043d\\u0430 \\u0412\\u0443\\u043b\\u043c\\u0435\\u043d\\r\\n\\u0415\\u0441\\u043b\\u0438 \\u0442\\u0443\\u043f\\u043e \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u043e\\u0434\\u0435, \\u0441\\u0442\\u0430\\u043d\\u0435\\u0448\\u044c \\u0442\\u0443\\u043f\\u044b\\u043c \\u0438 \\u043c\\u043e\\u0434\\u043d\\u044b\\u043c. -- \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b \\u041c\\u0430\\u043c\\u0447\\u0438\\u0447 \\r\\n\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u043b\\u044e\\u0434\\u0435\\u0439 \\u0436\\u0438\\u0432\\u0435\\u0442 \\u043c\\u043e\\u0434\\u043e\\u0439, \\u0430 \\u043d\\u0435 \\u0440\\u0430\\u0437\\u0443\\u043c\\u043e\\u043c. -- \\u0413. \\u041b\\u0438\\u0445\\u0442\\u0435\\u043d\\u0431\\u0435\\u0440\\u0433\\r\\n\\u0415\\u0441\\u0442\\u044c \\u043b\\u044e\\u0434\\u0438, \\u0434\\u0430\\u0436\\u0435 \\u043c\\u044b\\u0441\\u043b\\u0438 \\u0441\\u0432\\u043e\\u0438 \\u043e\\u0431\\u043b\\u0430\\u0447\\u0430\\u044e\\u0449\\u0438\\u0435 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c \\u043c\\u043e\\u0434\\u044b. -- \\u0411. \\u0410\\u0432\\u0435\\u0440\\u0431\\u0430\\u0445 \\r\\n\\u0413\\u043b\\u0443\\u043f\\u0435\\u0446 \\u0442\\u043e\\u0442, \\u043a\\u0442\\u043e \\u0432 \\u043c\\u043e\\u0434\\u0435 \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043c\\u043e\\u0434\\u0443. -- \\u041e\\u043d\\u043e\\u0440\\u0435 \\u0434\\u0435 \\u0411\\u0430\\u043b\\u044c\\u0437\\u0430\\u043a \\r\\n\\u0412\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0435 \\u043f\\u043e\\u043d\\u0430\\u0447\\u0430\\u043b\\u0443 \\u043a\\u0430\\u0436\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u044b\\u043c. -- \\u0410 \\u0432\\u0441\\u0435-\\u0442\\u0430\\u043a\\u0438 \\u043f\\u043e\\u0442\\u043e\\u043c \\u043c\\u044b \\u044d\\u0442\\u043e \\u043d\\u0430 \\u0441\\u0435\\u0431\\u044f \\u043d\\u0430\\u0434\\u0435\\u0432\\u0430\\u0435\\u043c. \\u042f\\u043d\\u0438\\u043d\\u0430 \\u0418\\u043f\\u043e\\u0445\\u043e\\u0440\\u0441\\u043a\\u0430\\u044f \\r\\n\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0440\\u0430\\u0436\\u0430\\u044f\\u0441\\u044c, \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u0439\\u0442\\u0435 \\u0432\\u044b\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f! -- \\u0413\\u0435\\u043d\\u043d\\u0430\\u0434\\u0438\\u0439 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0438\\u043d\\r\\n\\u041c\\u043e\\u0434\\u0430 \\u0438\\u0437\\u043d\\u0430\\u0448\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b, \\u0447\\u0435\\u043c \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a. -- \\u0423\\u0438\\u043b\\u044c\\u044f\\u043c \\u0428\\u0435\\u043a\\u0441\\u043f\\u0438\\u0440\\r\\n\\u041a\\u043e\\u0433\\u0434\\u0430 \\u0440\\u044f\\u0434\\u043e\\u043c \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u0443 \\u043f\\u044f\\u0442\\u0438 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a \\u0442\\u0430\\u043a\\u0438\\u0435 \\u0436\\u0435 \\u0441\\u0430\\u043f\\u043e\\u0433\\u0438 - \\u044d\\u0442\\u043e \\u043d\\u0435 \\u043c\\u043e\\u0434\\u0430. \\u042d\\u0442\\u043e - \\u0430\\u0440\\u043c\\u0438\\u044f. -- NN \\r\\n\\u041f\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u0438\\u0435 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430. -- \\u041a\\u043e\\u043d\\u0441\\u0442\\u0430\\u043d\\u0442\\u0438\\u043d \\u041c\\u0430\\u0434\\u0435\\u0439 \\r\\n\\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u043d\\u0435 \\u043f\\u043e\\u0441\\u043f\\u0435\\u0432\\u0430\\u0435\\u0442\\u0435 \\u0437\\u0430 \\u043c\\u043e\\u0434\\u043e\\u0439, \\u043f\\u043e\\u0434\\u043e\\u0436\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0435\\u0442, \\u0438 \\u043e\\u043d\\u0430 \\u0441\\u0430\\u043c\\u0430 \\u0434\\u043e\\u0433\\u043e\\u043d\\u0438\\u0442 \\u0432\\u0430\\u0441. -- \\u0411\\u043e\\u0440\\u0438\\u0441 \\u0422\\u0440\\u0443\\u0448\\u043a\\u0438\\u043d \\r\\n\\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u0430\\u044f \\u043c\\u043e\\u0434\\u0430 \\u043e\\u0442\\u0440\\u0438\\u0446\\u0430\\u0435\\u0442 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0443\\u044e \\u043f\\u0440\\u0438\\u043d\\u0430\\u0434\\u043b\\u0435\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0435\\u0451 \\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044f. -- \\u0415\\u0432\\u0433\\u0435\\u043d\\u0438\\u0439 \\u0425\\u0430\\u043d\\u043a\\u0438\\u043d \\r\\n\\u0412\\u0441\\u0451 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0438\\u0437 \\u043c\\u043e\\u0434\\u044b, \\u043a\\u0440\\u043e\\u043c\\u0435 \\u043d\\u0435\\u0451 \\u0441\\u0430\\u043c\\u043e\\u0439. -- \\u041b\\u0435\\u043e\\u043d\\u0438\\u0434 \\u0421\\u0443\\u0445\\u043e\\u0440\\u0443\\u043a\\u043e\\u0432 \\r\\n\\u0421\\u0430\\u043c\\u0430\\u044f \\u0443\\u0434\\u043e\\u0431\\u043d\\u0430\\u044f \\u044e\\u0431\\u043a\\u0430 \\u044d\\u0442\\u043e \\u0431\\u0440\\u044e\\u043a\\u0438. -- \\u0411\\u0440\\u044e\\u043d\\r\\n\\u041c\\u043e\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442, \\u0435\\u0441\\u043b\\u0438 \\u043d\\u0435\\u0442 \\u0441\\u0442\\u0438\\u043b\\u044f - \\u043d\\u043e \\u0441\\u0442\\u0438\\u043b\\u044c \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442, \\u0435\\u0441\\u043b\\u0438 \\u043d\\u0435\\u0442 \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u044b. -- \\u0411\\u0440\\u044e\\u043d \\r\\n\\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u044f \\u0436\\u0430\\u043b\\u0435\\u044e \\u043b\\u0438\\u0448\\u044c \\u043e\\u0431 \\u043e\\u0434\\u043d\\u043e\\u043c \\u2014 \\u0447\\u0442\\u043e \\u0434\\u0436\\u0438\\u043d\\u0441\\u044b \\u043f\\u0440\\u0438\\u0434\\u0443\\u043c\\u0430\\u043b \\u043d\\u0435 \\u044f. -- \\u0418\\u0432 \\u0421\\u0435\\u043d \\u041b\\u043e\\u0440\\u0430\\u043d\\r\\n\\u041c\\u043e\\u0434\\u0430 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430\\u0441\\u044c \\u0441 \\u0444\\u0438\\u0433\\u043e\\u0432\\u043e\\u0433\\u043e \\u043b\\u0438\\u0441\\u0442\\u0430, \\u0438 \\u0441\\u0443\\u0434\\u044f \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443, \\u0438 \\u0437\\u0430\\u043a\\u043e\\u043d\\u0447\\u0438\\u0442\\u0441\\u044f \\u0442\\u0435\\u043c \\u0436\\u0435. -- \\u0427\\u0435\\u0440\\u043d\\u043e\\u0432 \\u0412.\\u0410. \\r\\n\\u041c\\u043e\\u0434\\u0430 \\u043d\\u0430 \\u043e\\u0440\\u0438\\u0433\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0434\\u0435\\u043b\\u0430\\u043b\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u0445\\u043e\\u0436\\u0438\\u043c\\u0438. -- \\u0421\\u0442\\u0435\\u043f\\u0430\\u043d \\u0411\\u0430\\u043b\\u0430\\u043a\\u0438\\u043d \\r\\n\\u0418\\u0437-\\u043f\\u043e\\u0434 \\u043c\\u0438\\u043d\\u0438-\\u044e\\u0431\\u043a\\u0438 \\u043d\\u0435\\u043b\\u0435\\u043f\\u043e \\u0442\\u043e\\u0440\\u0447\\u0430\\u043b\\u0438 \\u043c\\u0438\\u043d\\u0438-\\u043d\\u043e\\u0433\\u0438. -- \\u0418\\u0433\\u043e\\u0440\\u044c \\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\r\\n\\u041e\\u0434\\u0435\\u0436\\u0434\\u0430 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043d\\u0430\\u044f: \\u0434\\u043e\\u043f\\u043e\\u0442\\u043e\\u043f\\u043d\\u0430\\u044f \\u0438 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u0442\\u043e\\u043f\\u0430. -- \\u0413\\u0430\\u0440\\u0440\\u0438 \\u0421\\u0438\\u043c\\u0430\\u043d\\u043e\\u0432\\u0438\\u0447 \\r\\n\\u0415\\u0441\\u043b\\u0438 \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u0430 \\u0431\\u0435\\u0440\\u0451\\u0442 \\u043c\\u043e\\u0434\\u0443 \\u0437\\u0430 \\u0433\\u043e\\u0440\\u043b\\u043e, \\u043a\\u0440\\u0438\\u043a \\u043c\\u043e\\u0434\\u044b \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432 \\u043f\\u0438\\u0441\\u043a. -- \\u0412\\u0430\\u043b\\u0435\\u043d\\u0442\\u0438\\u043d \\u0414\\u043e\\u043c\\u0438\\u043b\\u044c\\r\\n\\u0411\\u0443\\u0442\\u0438\\u043a - \\u044d\\u0442\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0434\\u043b\\u044f \\u0442\\u0435\\u0445, \\u043a\\u043e\\u043c\\u0443 \\u043d\\u0435 \\u0436\\u0430\\u043b\\u043a\\u043e \\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u044c \\u0441\\u0432\\u043e\\u0438 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430 \\u0432\\u0441\\u044f\\u043a\\u0443\\u044e \\u0445\\u0440\\u0435\\u043d\\u044c \\u0441 (\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u043c\\u0438) \\u043b\\u043e\\u0433\\u043e\\u0442\\u0438\\u043f\\u0430\\u043c\\u0438. -- \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440 \\u0411\\u043e\\u0440\\u0438\\u0441\\u043e\\u0432\\r\\n\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u2013 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u0432\\u0430\\u0441, \\u0430 \\u043d\\u0435 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0430 \\u0432\\u0430\\u0441. -- \\u0414\\u0430\\u0440\\u0438\\u0439\\r\\n\\u041e\\u0434\\u043d\\u0438 \\u0441\\u043b\\u0435\\u0434\\u044f\\u0442 \\u0437\\u0430 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u2014 \\u0437\\u0430 \\u043c\\u043e\\u0434\\u043e\\u0439. -- \\u0412. \\u0421\\u0443\\u043c\\u0431\\u0430\\u0442\\u043e\\u0432\\r\\n\\u041c\\u043e\\u0434\\u043d\\u043e - \\u043d\\u0435 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u043e\\u0441\\u044f\\u0442 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435, \\u0430 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u043e\\u0441\\u0438\\u0448\\u044c \\u0442\\u044b \\u0441\\u0430\\u043c. -- NN\\r\\n\\u041c\\u043e\\u0434\\u0430 \\u043d\\u0430 \\u0431\\u0435\\u0437\\u043c\\u043e\\u0434\\u0438\\u0435. -- \\u0418\\u0448\\u0445\\u0430\\u043d \\u0413\\u0435\\u0432\\u043e\\u0440\\u0433\\u044f\\u043d \\r\\n\\u041c\\u043e\\u0434\\u0430 \\u043f\\u043e\\u043f\\u0430\\u0445\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043e\\u0432\\u0435\\u0447\\u044c\\u0438\\u043c \\u0441\\u0442\\u0430\\u0434\\u043e\\u043c. -- \\u0418\\u0448\\u0445\\u0430\\u043d \\u0413\\u0435\\u0432\\u043e\\u0440\\u0433\\u044f\\u043d\\r\\n\\u041c\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u0438\\u0442 - \\u0441\\u0442\\u0438\\u043b\\u044c \\u043e\\u0441\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f. -- \\u0418\\u0432 \\u0421\\u0435\\u043d-\\u041b\\u043e\\u0440\\u0430\\u043d\\r\\n\\u0414\\u0435\\u0432\\u0443\\u0448\\u043a\\u0430 \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043e\\u0434\\u0435\\u0432\\u0430\\u043b\\u0430\\u0441\\u044c \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0438 \\u043a\\u0432\\u0430\\u0437\\u0438\\u043c\\u043e\\u0434\\u043d\\u043e. -- \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440 \\u041f\\u043b\\u0435\\u0442\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439\\r\\n\\u041d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0441\\u044c \\u043d\\u0430 \\u043f\\u0438\\u043a\\u0435 \\u043c\\u043e\\u0434\\u044b, \\u043c\\u043e\\u0436\\u043d\\u043e \\u0431\\u043e\\u043b\\u044c\\u043d\\u043e \\u0443\\u043a\\u043e\\u043b\\u043e\\u0442\\u044c \\u0441\\u0432\\u043e\\u044e \\u0437\\u0430\\u0434\\u043d\\u0438\\u0446\\u0443. -- \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440 \\u0411\\u0438\\u0440\\u0430\\u0448\\u0435\\u0432\\u0438\\u0447 \\r\\n\\u041c\\u043e\\u0434\\u0430 \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0438 \\u0443\\u0445\\u043e\\u0434\\u0438\\u0442, \\u0430 \\u0444\\u0438\\u0433\\u043e\\u0432\\u044b\\u0435 \\u043b\\u0438\\u0441\\u0442\\u043a\\u0438 \\u043e\\u0441\\u0442\\u0430\\u044e\\u0442\\u0441\\u044f\\u2026 -- \\u0412\\u0430\\u043b\\u0435\\u043d\\u0442\\u0438\\u043d \\u0414\\u043e\\u043c\\u0438\\u043b\\u044c \\r\\n\\u041c\\u043e\\u0434\\u0430 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0438\\u0437 \\u043c\\u043e\\u0434\\u044b, \\u0430 \\u0441\\u0442\\u0438\\u043b\\u044c \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430! -- \\u041a\\u043e\\u043a\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c\\r\\n\\u041c\\u043e\\u0436\\u043d\\u043e \\u0431\\u044b\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0434\\u0435\\u0442\\u043e\\u0439, \\u043d\\u043e \\u043d\\u0435\\u043b\\u044c\\u0437\\u044f \\u0431\\u044b\\u0442\\u044c \\u0441\\u043b\\u0438\\u0448\\u043a\\u043e\\u043c \\u044d\\u043b\\u0435\\u0433\\u0430\\u043d\\u0442\\u043d\\u043e \\u0439. -- \\u041a\\u043e\\u043a\\u043e \\u0434\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c\\r\\n\\u041c\\u043e\\u0434\\u0443 \\u043d\\u0430\\u043b\\u044c\\u0437\\u044f \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u0442\\u044c \\u043c\\u043e\\u0434\\u043e\\u0439, \\u0435\\u0441\\u043b\\u0438 \\u0435\\u0435 \\u043d\\u0435 \\u043d\\u043e\\u0441\\u044f\\u0442 \\u043d\\u0430 \\u0443\\u043b\\u0438\\u0446\\u0435. -- \\u041a\\u043e\\u043a\\u043e \\u0428\\u0430\\u043d\\u0435\\u043b\\u044c \\r\\n\\u0427\\u0443\\u0436\\u043e\\u0435 \\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u043e \\u0444\\u0430\\u043d\\u0442\\u0430\\u0437\\u0438\\u0438 \\u043c\\u043d\\u043e\\u0433\\u0438\\u043c \\u0437\\u0430\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u043e \\u0432\\u043a\\u0443\\u0441\\u0430. -- \\u0425\\u043e\\u043c\\u0443\\u0446\\u0438\\u0439 \\r\\n\\u041c\\u043e\\u0434\\u0430 - \\u0443\\u0431\\u0435\\u0436\\u0438\\u0449\\u0435 \\u0443\\u0440\\u043e\\u0434\\u0430. -- \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440 \\u041a\\u043d\\u044b\\u0440\\u044c \\r\\n\\u0421\\u0430\\u043c\\u0430\\u044f \\u043b\\u0443\\u0447\\u0448\\u0430\\u044f \\u043e\\u0434\\u0435\\u0436\\u0434\\u0430 \\u0434\\u043b\\u044f \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u044b \\u2014 \\u044d\\u0442\\u043e \\u043e\\u0431\\u044a\\u044f\\u0442\\u0438\\u044f \\u043b\\u044e\\u0431\\u044f\\u0449\\u0435\\u0433\\u043e \\u0435\\u0435 \\u043c\\u0443\\u0436\\u0447\\u0438\\u043d\\u044b. \\u041d\\u043e \\u0434\\u043b\\u044f \\u0442\\u0435\\u0445, \\u043a\\u0442\\u043e \\u043b\\u0438\\u0448\\u0435\\u043d \\u0442\\u0430\\u043a\\u043e\\u0433\\u043e \\u0441\\u0447\\u0430\\u0441\\u0442\\u044c\\u044f, \\u0435\\u0441\\u0442\\u044c \\u044f. -- \\u0418\\u0432 \\u0421\\u0435\\u043d \\u041b\\u043e\\u0440\\u0430\\u043d\\r\\n\\u0413\\u0430\\u0440\\u0434\\u0435\\u0440\\u043e\\u0431 \\u044d\\u0442\\u043e \\u043e\\u0431\\u0440\\u0430\\u0437 \\u0436\\u0438\\u0437\\u043d\\u0438. -- \\u0418\\u0432 \\u0421\\u0435\\u043d \\u041b\\u043e\\u0440\\u0430\\u043d\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `yodev_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_modules_menu`
--

DROP TABLE IF EXISTS `yodev_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_modules_menu`
--

LOCK TABLES `yodev_modules_menu` WRITE;
/*!40000 ALTER TABLE `yodev_modules_menu` DISABLE KEYS */;
INSERT INTO `yodev_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0);
/*!40000 ALTER TABLE `yodev_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_newsfeeds`
--

DROP TABLE IF EXISTS `yodev_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_newsfeeds`
--

LOCK TABLES `yodev_newsfeeds` WRITE;
/*!40000 ALTER TABLE `yodev_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_overrider`
--

DROP TABLE IF EXISTS `yodev_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_overrider`
--

LOCK TABLES `yodev_overrider` WRITE;
/*!40000 ALTER TABLE `yodev_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_postinstall_messages`
--

DROP TABLE IF EXISTS `yodev_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_postinstall_messages`
--

LOCK TABLES `yodev_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `yodev_postinstall_messages` DISABLE KEYS */;
INSERT INTO `yodev_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
/*!40000 ALTER TABLE `yodev_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_redirect_links`
--

DROP TABLE IF EXISTS `yodev_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_redirect_links`
--

LOCK TABLES `yodev_redirect_links` WRITE;
/*!40000 ALTER TABLE `yodev_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_schemas`
--

DROP TABLE IF EXISTS `yodev_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_schemas`
--

LOCK TABLES `yodev_schemas` WRITE;
/*!40000 ALTER TABLE `yodev_schemas` DISABLE KEYS */;
INSERT INTO `yodev_schemas` VALUES (700,'3.3.0-2014-04-02');
/*!40000 ALTER TABLE `yodev_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_session`
--

DROP TABLE IF EXISTS `yodev_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_session`
--

LOCK TABLES `yodev_session` WRITE;
/*!40000 ALTER TABLE `yodev_session` DISABLE KEYS */;
INSERT INTO `yodev_session` VALUES ('jglahlgr26p3qv3hhtcsu50v72',1,0,'1409778164','__default|a:8:{s:15:\"session.counter\";i:14;s:19:\"session.timer.start\";i:1409777551;s:18:\"session.timer.last\";i:1409778163;s:17:\"session.timer.now\";i:1409778164;s:22:\"session.client.browser\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":3:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}s:16:\"com_joomlaupdate\";O:8:\"stdClass\":3:{s:4:\"file\";N;s:8:\"password\";s:32:\"eYGq9ArACDmThbtrBDIO8aMdn8ihP7aM\";s:8:\"filesize\";i:8241082;}}}s:4:\"user\";O:5:\"JUser\":27:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"477\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:6:\"andrey\";s:5:\"email\";s:17:\"admin@yomayka.com\";s:8:\"password\";s:34:\"$P$DqapdG0vF5YHOC0muR2467bDOcEzcu.\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-10-12 15:53:07\";s:13:\"lastvisitDate\";s:19:\"2014-09-03 17:54:57\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"66138520c146bfe7f751cbb3877a4910\";}',477,'andrey'),('uai3odf8lkn1ilnm1o631acnf5',0,1,'1409777557','__default|a:7:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1409777547;s:18:\"session.timer.last\";i:1409777547;s:17:\"session.timer.now\";i:1409777557;s:22:\"session.client.browser\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":24:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
/*!40000 ALTER TABLE `yodev_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_tags`
--

DROP TABLE IF EXISTS `yodev_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_tags`
--

LOCK TABLES `yodev_tags` WRITE;
/*!40000 ALTER TABLE `yodev_tags` DISABLE KEYS */;
INSERT INTO `yodev_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `yodev_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_template_styles`
--

DROP TABLE IF EXISTS `yodev_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_template_styles`
--

LOCK TABLES `yodev_template_styles` WRITE;
/*!40000 ALTER TABLE `yodev_template_styles` DISABLE KEYS */;
INSERT INTO `yodev_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(9,'lady',0,'1','Lady - По умолчанию','{}');
/*!40000 ALTER TABLE `yodev_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_ucm_base`
--

DROP TABLE IF EXISTS `yodev_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_ucm_base`
--

LOCK TABLES `yodev_ucm_base` WRITE;
/*!40000 ALTER TABLE `yodev_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_ucm_content`
--

DROP TABLE IF EXISTS `yodev_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_ucm_content`
--

LOCK TABLES `yodev_ucm_content` WRITE;
/*!40000 ALTER TABLE `yodev_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_ucm_history`
--

DROP TABLE IF EXISTS `yodev_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_ucm_history`
--

LOCK TABLES `yodev_ucm_history` WRITE;
/*!40000 ALTER TABLE `yodev_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_update_sites`
--

DROP TABLE IF EXISTS `yodev_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_update_sites`
--

LOCK TABLES `yodev_update_sites` WRITE;
/*!40000 ALTER TABLE `yodev_update_sites` DISABLE KEYS */;
INSERT INTO `yodev_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1409778164,''),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1409778092,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1409778092,'');
/*!40000 ALTER TABLE `yodev_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_update_sites_extensions`
--

DROP TABLE IF EXISTS `yodev_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_update_sites_extensions`
--

LOCK TABLES `yodev_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `yodev_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `yodev_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10003);
/*!40000 ALTER TABLE `yodev_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_updates`
--

DROP TABLE IF EXISTS `yodev_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_updates`
--

LOCK TABLES `yodev_updates` WRITE;
/*!40000 ALTER TABLE `yodev_updates` DISABLE KEYS */;
INSERT INTO `yodev_updates` VALUES (2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,3,0,'French','','pkg_fr-FR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/fr-FR_details.xml','',''),(7,3,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','http://update.joomla.org/language/details3/gl-ES_details.xml','',''),(8,3,0,'German','','pkg_de-DE','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/de-DE_details.xml','',''),(9,3,0,'Greek','','pkg_el-GR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/el-GR_details.xml','',''),(10,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','',''),(11,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','',''),(12,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-AU_details.xml','',''),(13,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-US_details.xml','',''),(14,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','',''),(15,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/af-ZA_details.xml','',''),(16,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','',''),(17,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','',''),(18,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','',''),(19,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(20,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','',''),(21,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.1.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(22,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(23,3,0,'Danish','','pkg_da-DK','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(24,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(25,3,0,'Estonian','','pkg_et-EE','package','',0,'3.3.1.2','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(26,3,0,'Italian','','pkg_it-IT','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/it-IT_details.xml','',''),(27,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(28,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(29,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(30,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(31,3,0,'Persian','','pkg_fa-IR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/fa-IR_details.xml','',''),(32,3,0,'Polish','','pkg_pl-PL','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(33,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/pt-PT_details.xml','',''),(34,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sk-SK_details.xml','',''),(35,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.3.3.3','','http://update.joomla.org/language/details3/sv-SE_details.xml','',''),(36,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(37,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','',''),(38,3,0,'Thai','','pkg_th-TH','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/th-TH_details.xml','',''),(39,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/tr-TR_details.xml','',''),(40,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.3.3.15','','http://update.joomla.org/language/details3/uk-UA_details.xml','',''),(41,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','',''),(42,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','',''),(43,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.0.2.1','','http://update.joomla.org/language/details3/pt-BR_details.xml','',''),(44,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(45,3,0,'Spanish','','pkg_es-ES','package','',0,'3.3.1.3','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(46,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(47,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(48,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','',''),(49,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','http://update.joomla.org/language/details3/id-ID_details.xml','',''),(50,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','',''),(51,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','',''),(52,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','',''),(53,3,0,'EnglishCA','','pkg_en-CA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/en-CA_details.xml','',''),(54,3,0,'FrenchCA','','pkg_fr-CA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/fr-CA_details.xml','',''),(55,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/cy-GB_details.xml','',''),(56,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/si-LK_details.xml','','');
/*!40000 ALTER TABLE `yodev_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_user_keys`
--

DROP TABLE IF EXISTS `yodev_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_user_keys`
--

LOCK TABLES `yodev_user_keys` WRITE;
/*!40000 ALTER TABLE `yodev_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_user_notes`
--

DROP TABLE IF EXISTS `yodev_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_user_notes`
--

LOCK TABLES `yodev_user_notes` WRITE;
/*!40000 ALTER TABLE `yodev_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_user_profiles`
--

DROP TABLE IF EXISTS `yodev_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_user_profiles`
--

LOCK TABLES `yodev_user_profiles` WRITE;
/*!40000 ALTER TABLE `yodev_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_user_usergroup_map`
--

DROP TABLE IF EXISTS `yodev_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_user_usergroup_map`
--

LOCK TABLES `yodev_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `yodev_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `yodev_user_usergroup_map` VALUES (477,8);
/*!40000 ALTER TABLE `yodev_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_usergroups`
--

DROP TABLE IF EXISTS `yodev_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_usergroups`
--

LOCK TABLES `yodev_usergroups` WRITE;
/*!40000 ALTER TABLE `yodev_usergroups` DISABLE KEYS */;
INSERT INTO `yodev_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `yodev_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_users`
--

DROP TABLE IF EXISTS `yodev_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_users`
--

LOCK TABLES `yodev_users` WRITE;
/*!40000 ALTER TABLE `yodev_users` DISABLE KEYS */;
INSERT INTO `yodev_users` VALUES (477,'Super User','andrey','admin@yomayka.com','$P$DqapdG0vF5YHOC0muR2467bDOcEzcu.',0,1,'2013-10-12 15:53:07','2014-09-03 21:01:29','0','{}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `yodev_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_viewlevels`
--

DROP TABLE IF EXISTS `yodev_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_viewlevels`
--

LOCK TABLES `yodev_viewlevels` WRITE;
/*!40000 ALTER TABLE `yodev_viewlevels` DISABLE KEYS */;
INSERT INTO `yodev_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(5,'Guest',0,'[9]');
/*!40000 ALTER TABLE `yodev_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_weblinks`
--

DROP TABLE IF EXISTS `yodev_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_weblinks`
--

LOCK TABLES `yodev_weblinks` WRITE;
/*!40000 ALTER TABLE `yodev_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `yodev_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_yoshop_media`
--

DROP TABLE IF EXISTS `yodev_yoshop_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_yoshop_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(512) CHARACTER SET latin1 DEFAULT NULL,
  `path_prev` varchar(512) CHARACTER SET latin1 DEFAULT NULL,
  `path_large` varchar(512) CHARACTER SET latin1 DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL,
  `is_title` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_yoshop_media`
--

LOCK TABLES `yodev_yoshop_media` WRITE;
/*!40000 ALTER TABLE `yodev_yoshop_media` DISABLE KEYS */;
INSERT INTO `yodev_yoshop_media` VALUES (93,'7-9606-P9265732.JPG','7-9606-P9265732_100x88.JPG','7-9606-P9265732_1000x879.JPG',1,0,7,0),(94,'7-7110-P9265732.jpg','7-7110-P9265732_100x88.jpg','7-7110-P9265732_1000x878.jpg',1,0,7,0),(95,'7-5250-P9265733.JPG','7-5250-P9265733_100x99.JPG','7-5250-P9265733_1000x987.JPG',1,0,7,0),(96,'7-3307-P9265733.jpg','7-3307-P9265733_100x99.jpg','7-3307-P9265733_1000x987.jpg',1,0,7,0),(97,'7-7061-P9265734.JPG','7-7061-P9265734_75x100.JPG','7-7061-P9265734_750x1000.JPG',1,0,7,0),(98,'7-6466-P9265735.JPG','7-6466-P9265735_75x100.JPG','7-6466-P9265735_750x1000.JPG',1,0,7,0),(99,'8-1459-P9265740.JPG','8-1459-P9265740_75x100.JPG','8-1459-P9265740_750x1000.JPG',1,0,8,0),(100,'8-4312-P9265740.jpg','8-4312-P9265740_75x100.jpg','8-4312-P9265740_750x1000.jpg',1,0,8,0),(101,'8-1601-P9265741.JPG','8-1601-P9265741_100x75.JPG','8-1601-P9265741_1000x750.JPG',1,0,8,1),(102,'8-1528-P9265742.JPG','8-1528-P9265742_96x100.JPG','8-1528-P9265742_963x1000.JPG',1,0,8,0),(103,'8-1826-P9265742.jpg','8-1826-P9265742_96x100.jpg','8-1826-P9265742_963x1000.jpg',1,0,8,0),(110,'12-7719-43608650_w640_h640_img2989.jpg','12-7719-43608650_w640_h640_img2989_100x75.jpg','12-7719-43608650_w640_h640_img2989_1000x750.jpg',1,0,12,1),(111,'13-5634-43687678_w640_h640_img3038.jpg','13-5634-43687678_w640_h640_img3038_87x100.jpg','13-5634-43687678_w640_h640_img3038_871x1000.jpg',1,0,13,1),(112,'14-2225-43689103_w640_h640_img3054.jpg','14-2225-43689103_w640_h640_img3054_87x100.jpg','14-2225-43689103_w640_h640_img3054_873x1000.jpg',1,0,14,1),(113,'15-8880-43689103_w640_h640_img3054.jpg','15-8880-43689103_w640_h640_img3054_87x100.jpg','15-8880-43689103_w640_h640_img3054_873x1000.jpg',1,0,15,0),(114,'16-2195-P9265745.JPG','16-2195-P9265745_100x96.JPG','16-2195-P9265745_1000x958.JPG',1,0,16,1),(115,'16-3320-P9265745.jpg','16-3320-P9265745_100x96.jpg','16-3320-P9265745_1000x957.jpg',1,0,16,0),(116,'17-9312-P9265743.JPG','17-9312-P9265743_99x100.JPG','17-9312-P9265743_991x1000.JPG',1,0,17,1),(117,'17-9893-P9265743.jpg','17-9893-P9265743_99x100.jpg','17-9893-P9265743_991x1000.jpg',1,0,17,0),(118,'18-6942-P9265744.JPG','18-6942-P9265744_100x97.JPG','18-6942-P9265744_1000x972.JPG',1,0,18,1),(119,'19-1415-P9265746.JPG','19-1415-P9265746_100x89.JPG','19-1415-P9265746_1000x894.JPG',1,0,19,1),(120,'19-5057-P9265746.jpg','19-5057-P9265746_100x89.jpg','19-5057-P9265746_1000x894.jpg',1,0,19,0),(121,'35-5111-NIX kayaks route 2013.jpg','35-5111-NIX kayaks route 2013_300x150.jpg','35-5111-NIX kayaks route 2013_1000x499.jpg',1,0,35,0),(122,'35-8462-NIX kayaks route 2013.jpg','35-8462-NIX kayaks route 2013_300x150.jpg','35-8462-NIX kayaks route 2013_1000x499.jpg',1,0,35,0),(123,'35-9148-NIX kayaks route 2013.jpg','35-9148-NIX kayaks route 2013_300x150.jpg','35-9148-NIX kayaks route 2013_1000x499.jpg',1,0,35,0),(124,'35-8304458653.tmp','35-8304458653_300x200.tmp','35-8304458653_1000x667.tmp',1,0,35,1),(125,'7-7148665667.tmp','7-7148665667_300x400.tmp','7-7148665667_1000x1333.tmp',1,0,7,0),(126,'7-4595722128.tmp','7-4595722128_300x225.tmp','7-4595722128_1000x750.tmp',1,0,7,0),(127,'7-7854669367.tmp','7-7854669367_300x275.tmp','7-7854669367_1000x916.tmp',1,0,7,0),(128,'7-6550592480.tmp','7-6550592480_300x225.tmp','7-6550592480_1000x750.tmp',1,0,7,0),(129,'7-3831730601.tmp','7-3831730601_300x181.tmp','7-3831730601_1000x602.tmp',1,0,7,0),(130,'7-2409361141.tmp','7-2409361141_300x209.tmp','7-2409361141_1000x696.tmp',1,0,7,1),(131,'37-3318458361.tmp','37-3318458361_300x225.tmp','37-3318458361_1000x750.tmp',1,0,37,0),(136,'40-4043850849.tmp','40-4043850849_300x225.tmp','40-4043850849_1000x750.tmp',1,0,40,1),(137,'40-8964373835.tmp','40-8964373835_300x225.tmp','40-8964373835_1000x750.tmp',1,0,40,0),(138,'40-9273511115.tmp','40-9273511115_300x225.tmp','40-9273511115_1000x750.tmp',1,0,40,0),(139,'40-4004493848.tmp','40-4004493848_300x225.tmp','40-4004493848_1000x750.tmp',1,0,40,0),(140,'40-9693439924.tmp','40-9693439924_300x225.tmp','40-9693439924_1000x750.tmp',1,0,40,0),(141,'40-7546471980.tmp','40-7546471980_300x225.tmp','40-7546471980_1000x750.tmp',1,0,40,0),(142,'40-1347352209.tmp','40-1347352209_300x225.tmp','40-1347352209_1000x750.tmp',1,0,40,0),(143,'40-2402658293.tmp','40-2402658293_300x225.tmp','40-2402658293_1000x750.tmp',1,0,40,0);
/*!40000 ALTER TABLE `yodev_yoshop_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_yoshop_order`
--

DROP TABLE IF EXISTS `yodev_yoshop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_yoshop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `created_date` datetime NOT NULL,
  `status` smallint(6) NOT NULL,
  `last_event_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_yoshop_order`
--

LOCK TABLES `yodev_yoshop_order` WRITE;
/*!40000 ALTER TABLE `yodev_yoshop_order` DISABLE KEYS */;
INSERT INTO `yodev_yoshop_order` VALUES (10,NULL,'123123123','qweqw@wer.com','13123123',NULL,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00'),(11,NULL,'12313r','123@123.com','123','123123123123123123','0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(12,NULL,'12313r','123@123.com','123','123123123123123123','2013-11-19 22:30:46',0,'0000-00-00 00:00:00'),(13,NULL,'12313r','123@123.com','123','123123123123123123','2013-11-19 22:33:29',0,'0000-00-00 00:00:00'),(14,NULL,'12313r','','123','123123123123123123','2013-11-19 22:45:02',0,'0000-00-00 00:00:00'),(15,NULL,'12312341c4','','2341431241','','2013-11-19 22:52:21',1,'0000-00-00 00:00:00'),(16,NULL,'12312341c4','','2341431241','','2013-11-19 22:53:24',0,'0000-00-00 00:00:00'),(17,NULL,'er t23tv23v','','523452525','','2013-11-19 22:53:43',0,'0000-00-00 00:00:00'),(18,NULL,'1234123 41','','2341243143','','2013-11-19 23:01:04',0,'0000-00-00 00:00:00'),(19,NULL,'1234141234 1','','123411341','','2013-11-19 23:05:54',0,'0000-00-00 00:00:00'),(20,NULL,'123123123','','1234141','','2013-11-19 23:08:14',0,'0000-00-00 00:00:00'),(21,NULL,'ewrtw etwetwe','','we werwer','','2013-11-19 23:10:43',0,'0000-00-00 00:00:00'),(22,NULL,'wer wvert','','ert wertwert','','2013-11-19 23:11:05',0,'0000-00-00 00:00:00'),(23,NULL,'erwer w','','wer qwerq','','2013-11-19 23:13:05',0,'0000-00-00 00:00:00'),(24,NULL,'13241234134','','1234124134','','2013-11-19 23:21:01',0,'0000-00-00 00:00:00'),(25,NULL,'wrtwertvwetvwe','','1241234','','2013-11-19 23:35:08',0,'0000-00-00 00:00:00'),(26,NULL,'??????','andrealek@gmail.com','1234567879','test desc','2013-11-19 23:36:42',0,'0000-00-00 00:00:00'),(27,NULL,'r wert er twert ','','123123123','','2013-11-19 23:43:59',0,'0000-00-00 00:00:00'),(28,NULL,'qweqweqwe','qwe@qwe.com','123123123','qweasdasdf asdf asf','2013-11-20 23:45:21',0,'0000-00-00 00:00:00'),(29,NULL,'qweqweqwe','qwe@qwe.com','123123123','qweasdasdf asdf asf','2013-11-20 23:47:00',0,'0000-00-00 00:00:00'),(30,NULL,'qweqweqwe','qwe@qwe.com','123123123','qweasdasdf asdf asf','2013-11-20 23:48:55',0,'0000-00-00 00:00:00'),(31,NULL,'qweqweqwe','qwe@qwe.com','123123123','qweasdasdf asdf asf','2013-11-20 23:54:08',0,'0000-00-00 00:00:00'),(32,NULL,'ewrt vwqertwertc','wqre@wqre.com','4123412412','ert wertwetr we','2013-11-20 23:56:05',0,'0000-00-00 00:00:00'),(33,NULL,'ewrt vwqertwertc','wqre@wqre.com','4123412412','ert wertwetr we','2013-11-20 23:56:19',0,'0000-00-00 00:00:00'),(34,NULL,'ewrt vwqertwertc','wqre@wqre.com','4123412412','ert wertwetr we','2013-11-21 00:06:55',0,'0000-00-00 00:00:00'),(35,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:08:31',0,'0000-00-00 00:00:00'),(36,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:10:40',0,'0000-00-00 00:00:00'),(37,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:13:01',0,'0000-00-00 00:00:00'),(38,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:20:00',0,'0000-00-00 00:00:00'),(39,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:21:15',0,'0000-00-00 00:00:00'),(40,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:44:24',0,'0000-00-00 00:00:00'),(41,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:44:34',0,'0000-00-00 00:00:00'),(42,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:46:52',0,'0000-00-00 00:00:00'),(43,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:47:55',0,'0000-00-00 00:00:00'),(44,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:49:47',0,'0000-00-00 00:00:00'),(45,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:50:56',0,'0000-00-00 00:00:00'),(46,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:53:20',0,'0000-00-00 00:00:00'),(47,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:55:35',0,'0000-00-00 00:00:00'),(48,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:56:17',0,'0000-00-00 00:00:00'),(49,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:57:46',0,'0000-00-00 00:00:00'),(50,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:59:12',0,'0000-00-00 00:00:00'),(51,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 00:59:45',0,'0000-00-00 00:00:00'),(52,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:01:42',0,'0000-00-00 00:00:00'),(53,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:03:50',0,'0000-00-00 00:00:00'),(54,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:07:31',0,'0000-00-00 00:00:00'),(55,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:09:16',0,'0000-00-00 00:00:00'),(56,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:15:53',0,'0000-00-00 00:00:00'),(57,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:16:07',0,'0000-00-00 00:00:00'),(58,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:16:37',0,'0000-00-00 00:00:00'),(59,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:17:01',0,'0000-00-00 00:00:00'),(60,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:29:36',0,'0000-00-00 00:00:00'),(61,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:29:59',0,'0000-00-00 00:00:00'),(62,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:30:43',0,'0000-00-00 00:00:00'),(63,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:31:55',0,'0000-00-00 00:00:00'),(64,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:37:41',0,'0000-00-00 00:00:00'),(65,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:40:08',0,'0000-00-00 00:00:00'),(66,NULL,'wer qwer qwer ','qwe@qe.com','1134523456236','dfdfg sdfg sdg s','2013-11-21 01:40:41',0,'0000-00-00 00:00:00'),(67,NULL,'werqwerqewr','qwe@we.com','3465623785623','eruoitwe ueoir uer ','2013-11-22 07:09:21',0,'0000-00-00 00:00:00'),(68,NULL,'werqwerqewr','andreyalek@gmail.com','3465623785623','eruoitwe ueoir uer ','2013-11-22 07:10:05',0,'0000-00-00 00:00:00'),(69,NULL,'werqwerqewr','andreyalek@gmail.com','3465623785623','eruoitwe ueoir uer ','2013-11-22 07:13:15',0,'0000-00-00 00:00:00'),(70,NULL,'werqwerqewr','andreyalek@gmail.com','3465623785623','eruoitwe ueoir uer ','2013-11-22 07:13:21',0,'0000-00-00 00:00:00'),(71,NULL,'werqwerqewr','andreyalek@gmail.com','3465623785623','eruoitwe ueoir uer ','2013-11-22 07:13:39',0,'0000-00-00 00:00:00'),(72,NULL,'werqwerqewr','andreyalek@gmail.com','3465623785623','eruoitwe ueoir uer ','2013-11-22 07:13:58',0,'0000-00-00 00:00:00'),(73,NULL,'rtqwervqw qw tqwrt','andreyalek@gmail.com','123123123',' rodfs gufdug fd gosuog','2013-11-23 18:42:24',0,'0000-00-00 00:00:00'),(74,NULL,'qwr wer','andreyalek@gmail.com','34234523532','gidofjgd fgsd gfjsog sd','2013-11-23 18:46:32',0,'0000-00-00 00:00:00'),(75,NULL,'wet wert wert e','andreyalek@gmail.com','458967394869','e ritoer toieuto isutho','2013-11-23 18:48:10',0,'0000-00-00 00:00:00'),(76,NULL,'wert rh erth ','andreyalek@gmail.com','46592659265',' eroi  eroit wuert uweu to','2013-11-23 18:49:51',0,'0000-00-00 00:00:00'),(77,NULL,'wert rh erth ','andreyalek@gmail.com','46592659265',' eroi  eroit wuert uweu to','2013-11-23 18:53:18',0,'0000-00-00 00:00:00'),(78,NULL,'wert rh erth ','andreyalek@gmail.com','46592659265',' eroi  eroit wuert uweu to','2013-11-23 18:53:52',0,'0000-00-00 00:00:00'),(79,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 18:57:15',0,'0000-00-00 00:00:00'),(80,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 18:59:43',0,'0000-00-00 00:00:00'),(81,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:01:35',0,'0000-00-00 00:00:00'),(82,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:02:24',0,'0000-00-00 00:00:00'),(83,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:13:41',0,'0000-00-00 00:00:00'),(84,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:23:52',0,'0000-00-00 00:00:00'),(85,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:25:47',0,'0000-00-00 00:00:00'),(86,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:26:01',0,'0000-00-00 00:00:00'),(87,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:26:11',0,'0000-00-00 00:00:00'),(88,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 19:32:28',0,'0000-00-00 00:00:00'),(89,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 20:32:18',0,'0000-00-00 00:00:00'),(90,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 20:37:58',0,'0000-00-00 00:00:00'),(91,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 21:05:26',0,'0000-00-00 00:00:00'),(92,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 21:07:37',0,'0000-00-00 00:00:00'),(93,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 22:01:36',0,'0000-00-00 00:00:00'),(94,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 22:07:01',0,'0000-00-00 00:00:00'),(95,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-23 22:13:26',0,'0000-00-00 00:00:00'),(96,NULL,'Andrey','','123123132','ert iertiouseoir tusuyois','2013-11-24 01:00:28',0,'0000-00-00 00:00:00'),(97,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-24 01:00:54',0,'0000-00-00 00:00:00'),(98,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-24 01:01:03',0,'0000-00-00 00:00:00'),(99,NULL,'Andrey','andreyalek@gmail.com','123123132','ert iertiouseoir tusuyois','2013-11-24 01:03:35',0,'0000-00-00 00:00:00'),(100,NULL,'Ololo','andreyalek@gmail.com','123123123','qweqweqwe','2013-12-08 17:11:55',0,'0000-00-00 00:00:00'),(101,NULL,'Ololo','andreyalek@gmail.com','123123123','qweqweqwe','2013-12-08 17:12:07',0,'0000-00-00 00:00:00'),(110,NULL,'Ololo','and@rktpowerkt.com','123123123','erwqe er weg','2013-12-08 17:46:28',0,'0000-00-00 00:00:00'),(112,NULL,'Ololo','and@rktpowerkt.com','123123123','erwqe er weg','2013-12-08 17:51:26',0,'0000-00-00 00:00:00'),(113,NULL,'Ololo','and@rktpowerkt.com','123123123','erwqe er weg','2013-12-08 17:54:23',0,'0000-00-00 00:00:00'),(114,NULL,'Ololo','and@rktpowerkt.com','123123123','erwqe er weg','2013-12-08 17:55:46',0,'0000-00-00 00:00:00'),(115,NULL,'Ololo','and@rktpowerkt.com','123123123','erwqe er weg','2013-12-08 17:56:07',0,'0000-00-00 00:00:00'),(116,NULL,'Ololo','and@rktpowerkt.com','123123123','erwqe er weg','2013-12-08 17:57:59',0,'0000-00-00 00:00:00'),(118,NULL,'wertwet wert w','ertw@erter.com','623548273','','2013-12-08 18:01:20',0,'0000-00-00 00:00:00'),(119,NULL,'routwerot','qweqwe@qwe.com','34513248152','','2013-12-08 18:02:27',0,'0000-00-00 00:00:00'),(120,NULL,'ewrwq erw','qweq@wqer.com','345864586','','2013-12-08 18:13:50',1,'2013-12-08 18:13:50'),(121,NULL,'ololo','andreyalek@gmail.com','123123123','ert weirtiweriuweyt yweiut','2013-12-17 22:41:10',1,'2013-12-17 22:41:10'),(122,NULL,'?????????a','andreyalek@gmail.com','34592734572398','er werhgwierghwehg','2013-12-17 23:23:03',1,'2013-12-17 23:23:03'),(123,NULL,'?????????a','andreyalek@gmail.com','34592734572398','er werhgwierghwehg','2013-12-17 23:27:34',1,'2013-12-17 23:27:34'),(124,NULL,'?????????a','andreyalek@gmail.com','34592734572398','er werhgwierghwehg','2013-12-17 23:36:36',1,'2013-12-17 23:36:36'),(125,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-17 23:41:09',1,'2013-12-17 23:41:09'),(126,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-17 23:44:02',1,'2013-12-17 23:44:02'),(127,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-17 23:49:49',1,'2013-12-17 23:49:49'),(128,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-17 23:52:03',1,'2013-12-17 23:52:03'),(129,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-17 23:52:27',1,'2013-12-17 23:52:27'),(130,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-18 00:02:20',1,'2013-12-18 00:02:20'),(131,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-18 00:04:53',1,'2013-12-18 00:04:53'),(132,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-18 00:08:17',1,'2013-12-18 00:08:17'),(133,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-18 00:09:18',2,'2013-12-18 00:09:18'),(134,NULL,'ertwert wet','andreyalek@gmail.com','345824562835','3 42gwergweg','2013-12-18 00:11:05',1,'2013-12-18 00:11:05');
/*!40000 ALTER TABLE `yodev_yoshop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_yoshop_order_product`
--

DROP TABLE IF EXISTS `yodev_yoshop_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_yoshop_order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price_base` int(10) unsigned NOT NULL,
  `count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_yoshop_order_product`
--

LOCK TABLES `yodev_yoshop_order_product` WRITE;
/*!40000 ALTER TABLE `yodev_yoshop_order_product` DISABLE KEYS */;
INSERT INTO `yodev_yoshop_order_product` VALUES (3,10,NULL,'orderproduct','',0,0),(4,10,NULL,'orderproduct','',0,0),(5,11,NULL,'orderproduct','',0,0),(6,11,NULL,'orderproduct','',0,0),(7,12,NULL,'','',100,0),(8,12,NULL,'orderproduct','',0,0),(9,13,NULL,'','',0,0),(10,13,NULL,'','',0,0),(11,14,NULL,'','',0,0),(12,14,NULL,'','',0,0),(13,15,NULL,'','',0,0),(14,15,NULL,'','',0,0),(15,16,NULL,'','',0,0),(16,16,NULL,'','',0,0),(17,17,NULL,'','',0,0),(18,17,NULL,'','',0,0),(19,18,NULL,'','',0,0),(20,18,NULL,'','',0,0),(21,19,NULL,'','',0,0),(22,19,NULL,'','',0,0),(23,20,NULL,'','',0,0),(24,20,NULL,'','',0,0),(25,21,NULL,'','',0,0),(26,21,NULL,'','',0,0),(27,22,NULL,'','',0,0),(28,22,NULL,'','',0,0),(29,23,NULL,'','',0,0),(30,23,NULL,'','',0,0),(31,24,NULL,'','',0,0),(32,24,NULL,'','',0,0),(33,25,NULL,'','',0,0),(34,25,NULL,'','',0,0),(35,26,NULL,'','',0,0),(36,26,NULL,'','',0,0),(37,26,NULL,'','',0,0),(38,26,NULL,'','',0,0),(39,26,NULL,'','',0,0),(40,26,NULL,'','',0,0),(41,26,NULL,'','',0,0),(42,26,NULL,'','',0,0),(43,27,NULL,'','',0,0),(44,27,NULL,'','',0,0),(45,27,NULL,'','',0,0),(46,27,NULL,'','',0,0),(47,27,NULL,'','',0,0),(48,27,NULL,'','',0,0),(49,27,NULL,'','',0,0),(50,27,NULL,'','',0,0),(51,27,NULL,'','',0,0),(52,27,NULL,'','',0,0),(53,28,NULL,'','',0,0),(54,29,NULL,'','',0,0),(55,30,NULL,'','',0,0),(56,31,NULL,'','',0,0),(57,32,NULL,'','',0,0),(58,33,NULL,'','',0,0),(59,34,NULL,'','',0,0),(60,35,NULL,'','',0,0),(61,35,NULL,'','',0,0),(62,36,NULL,'','',0,0),(63,36,NULL,'','',0,0),(64,37,NULL,'','',0,0),(65,37,NULL,'','',0,0),(66,38,NULL,'','',0,0),(67,38,NULL,'','',0,0),(68,39,NULL,'','',0,0),(69,39,NULL,'','',0,0),(70,40,NULL,'','',0,0),(71,40,NULL,'','',0,0),(72,41,NULL,'','',0,0),(73,41,NULL,'','',0,0),(74,42,NULL,'','',0,0),(75,42,NULL,'','',0,0),(76,43,NULL,'','',0,0),(77,43,NULL,'','',0,0),(78,44,NULL,'','',0,0),(79,44,NULL,'','',0,0),(80,45,NULL,'','',0,0),(81,45,NULL,'','',0,0),(82,46,NULL,'','',0,0),(83,46,NULL,'','',0,0),(84,47,NULL,'','',0,0),(85,47,NULL,'','',0,0),(86,48,NULL,'','',0,0),(87,48,NULL,'','',0,0),(88,49,NULL,'','',0,0),(89,49,NULL,'','',0,0),(90,50,NULL,'','',0,0),(91,50,NULL,'','',0,0),(92,51,NULL,'','',0,0),(93,51,NULL,'','',0,0),(94,52,NULL,'','',0,0),(95,52,NULL,'','',0,0),(96,53,NULL,'','',0,0),(97,53,NULL,'','',0,0),(98,54,NULL,'','',0,0),(99,54,NULL,'','',0,0),(100,55,NULL,'','',0,0),(101,55,NULL,'','',0,0),(102,56,NULL,'','',0,0),(103,56,NULL,'','',0,0),(104,57,NULL,'','',0,0),(105,57,NULL,'','',0,0),(106,58,NULL,'','',0,0),(107,58,NULL,'','',0,0),(108,59,NULL,'','',0,0),(109,59,NULL,'','',0,0),(110,60,NULL,'','',0,0),(111,60,NULL,'','',0,0),(112,61,NULL,'','',0,0),(113,61,NULL,'','',0,0),(114,62,NULL,'','',0,0),(115,62,NULL,'','',0,0),(116,63,NULL,'','',0,0),(117,63,NULL,'','',0,0),(118,64,NULL,'','',0,0),(119,64,NULL,'','',0,0),(120,65,NULL,'','',0,0),(121,65,NULL,'','',0,0),(122,66,NULL,'','',0,0),(123,66,NULL,'','',0,0),(124,67,NULL,'','',0,0),(125,67,NULL,'','',0,0),(126,67,NULL,'','',0,0),(127,68,NULL,'','',0,0),(128,68,NULL,'','',0,0),(129,68,NULL,'','',0,0),(130,69,NULL,'','',0,0),(131,69,NULL,'','',0,0),(132,69,NULL,'','',0,0),(133,70,NULL,'','',0,0),(134,70,NULL,'','',0,0),(135,70,NULL,'','',0,0),(136,71,NULL,'','',0,0),(137,71,NULL,'','',0,0),(138,71,NULL,'','',0,0),(139,72,NULL,'','',0,0),(140,72,NULL,'','',0,0),(141,72,NULL,'','',0,0),(142,73,NULL,'','',0,0),(143,73,NULL,'','',0,0),(144,73,NULL,'','',0,0),(145,73,NULL,'','',0,0),(146,74,NULL,'','',0,0),(147,74,NULL,'','',0,0),(148,74,NULL,'','',0,0),(149,74,NULL,'','',0,0),(150,75,NULL,'','',0,0),(151,75,NULL,'','',0,0),(152,75,NULL,'','',0,0),(153,75,NULL,'','',0,0),(154,76,NULL,'','',0,0),(155,76,NULL,'','',0,0),(156,76,NULL,'','',0,0),(157,76,NULL,'','',0,0),(158,77,NULL,'','',0,0),(159,77,NULL,'','',0,0),(160,77,NULL,'','',0,0),(161,77,NULL,'','',0,0),(162,78,NULL,'','',0,0),(163,78,NULL,'','',0,0),(164,78,NULL,'','',0,0),(165,78,NULL,'','',0,0),(166,79,NULL,'','',0,0),(167,79,NULL,'','',0,0),(168,79,NULL,'','',0,0),(169,79,NULL,'','',0,0),(170,80,NULL,'','',0,0),(171,80,NULL,'','',0,0),(172,80,NULL,'','',0,0),(173,80,NULL,'','',0,0),(174,81,NULL,'','',0,0),(175,81,NULL,'','',0,0),(176,81,NULL,'','',0,0),(177,81,NULL,'','',0,0),(178,82,NULL,'','',0,0),(179,82,NULL,'','',0,0),(180,82,NULL,'','',0,0),(181,82,NULL,'','',0,0),(182,83,NULL,'','',0,0),(183,83,NULL,'','',0,0),(184,83,NULL,'','',0,0),(185,83,NULL,'','',0,0),(186,84,NULL,'','',0,0),(187,84,NULL,'','',0,0),(188,84,NULL,'','',0,0),(189,84,NULL,'','',0,0),(190,85,NULL,'','',0,0),(191,85,NULL,'','',0,0),(192,85,NULL,'','',0,0),(193,85,NULL,'','',0,0),(194,86,NULL,'','',0,0),(195,86,NULL,'','',0,0),(196,86,NULL,'','',0,0),(197,86,NULL,'','',0,0),(198,87,NULL,'','',0,0),(199,87,NULL,'','',0,0),(200,87,NULL,'','',0,0),(201,87,NULL,'','',0,0),(202,88,NULL,'','',0,0),(203,88,NULL,'','',0,0),(204,88,NULL,'','',0,0),(205,88,NULL,'','',0,0),(206,89,NULL,'','',0,0),(207,89,NULL,'','',0,0),(208,89,NULL,'','',0,0),(209,89,NULL,'','',0,0),(210,90,NULL,'','',0,0),(211,90,NULL,'','',0,0),(212,90,NULL,'','',0,0),(213,90,NULL,'','',0,0),(214,91,NULL,'','',0,0),(215,91,NULL,'','',0,0),(216,91,NULL,'','',0,0),(217,91,NULL,'','',0,0),(218,92,NULL,'','',0,0),(219,92,NULL,'','',0,0),(220,92,NULL,'','',0,0),(221,92,NULL,'','',0,0),(222,93,NULL,'','',0,0),(223,93,NULL,'','',0,0),(224,93,NULL,'','',0,0),(225,93,NULL,'','',0,0),(226,94,NULL,'','',0,0),(227,94,NULL,'','',0,0),(228,94,NULL,'','',0,0),(229,94,NULL,'','',0,0),(230,95,NULL,'','',0,0),(231,95,NULL,'','',0,0),(232,95,NULL,'','',0,0),(233,95,NULL,'','',0,0),(234,96,NULL,'','',0,0),(235,96,NULL,'','',0,0),(236,96,NULL,'','',0,0),(237,96,NULL,'','',0,0),(238,97,NULL,'','',0,0),(239,97,NULL,'','',0,0),(240,97,NULL,'','',0,0),(241,97,NULL,'','',0,0),(242,98,NULL,'','',0,0),(243,98,NULL,'','',0,0),(244,98,NULL,'','',0,0),(245,98,NULL,'','',0,0),(246,99,NULL,'','',0,0),(247,99,NULL,'','',0,0),(248,99,NULL,'','',0,0),(249,99,NULL,'','',0,0),(250,NULL,NULL,'','',100,0),(251,113,7,'','',100,0),(252,114,7,'','',100,0),(253,115,7,'','',100,0),(254,116,7,'','',100,0),(255,118,7,'','',100,1),(256,119,7,'','',100,1),(257,119,8,'','',90,1),(258,119,12,'','',85,1),(259,120,8,'','',90,1),(260,121,8,'','',90,1),(261,122,7,'Скайп','',100,1),(262,123,7,'Скайп','',100,1),(263,124,7,'Скайп','',100,1),(264,125,7,'Скайп','',100,1),(265,126,7,'Скайп','',100,1),(266,127,7,'Скайп','',100,1),(267,128,7,'Скайп','',100,1),(268,129,7,'Скайп','',100,1),(269,130,7,'Скайп','',100,1),(270,131,7,'Скайп','',100,1),(271,132,7,'Скайп','',100,1),(272,133,7,'Скайп','',100,1),(273,134,7,'Скайп','',100,1);
/*!40000 ALTER TABLE `yodev_yoshop_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yodev_yoshop_product`
--

DROP TABLE IF EXISTS `yodev_yoshop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yodev_yoshop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price_base` int(10) unsigned NOT NULL,
  `count` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yodev_yoshop_product`
--

LOCK TABLES `yodev_yoshop_product` WRITE;
/*!40000 ALTER TABLE `yodev_yoshop_product` DISABLE KEYS */;
INSERT INTO `yodev_yoshop_product` VALUES (7,3,0,0,'Скайп','',100,0,11),(8,4,0,0,'','',90,0,11),(12,8,0,0,'','',85,0,11),(13,9,0,0,'','',60,0,11),(14,10,0,0,'','',100,0,11),(15,11,-2,0,'','',599,0,11),(16,12,0,0,'','',40,0,11),(17,13,0,0,'','',150,0,11),(18,14,0,0,'','',170,0,11),(19,15,0,0,'Шапочка в полоску','Прикольная молодежная шпка коричнево-черная. Зимняя. Подкладка - флис.',80,0,11),(20,16,-5,0,'','',0,0,NULL),(22,17,-5,0,'','',0,0,NULL),(23,18,-5,0,'','',0,0,NULL),(24,19,-5,0,'','',0,0,NULL),(25,20,-5,0,'','',0,0,NULL),(26,21,-2,0,'','',0,0,NULL),(27,22,-2,477,'','',0,0,NULL),(28,23,-5,477,'','',0,0,NULL),(29,24,-5,477,'','',0,0,NULL),(30,25,-5,477,'','',0,0,NULL),(31,26,-5,477,'','',0,0,NULL),(32,27,-5,477,'','',0,0,NULL),(33,28,-5,477,'','',0,0,NULL),(34,29,-5,477,'','',0,0,NULL),(35,30,0,477,'','',0,0,19),(36,31,-5,477,'','',0,0,NULL),(37,32,-5,477,'','',0,0,NULL),(38,33,-5,477,'','',0,0,NULL),(39,34,-5,477,'','',0,0,NULL),(40,35,0,477,'Футболка-подушка','',80,0,14);
/*!40000 ALTER TABLE `yodev_yoshop_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-03 22:19:49
