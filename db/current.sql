/*
SQLyog Ultimate - MySQL GUI v8.21 
MySQL - 5.5.27-log : Database - advan383_shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `cwtaq_assets` */

DROP TABLE IF EXISTS `cwtaq_assets`;

CREATE TABLE `cwtaq_assets` (
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_assets` */

insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (1,0,1,71,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (2,1,1,2,1,'com_admin','com_admin','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (6,1,11,12,1,'com_config','com_config','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (8,1,17,22,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (9,1,23,24,1,'com_cpanel','com_cpanel','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (10,1,25,26,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (11,1,27,28,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (12,1,29,30,1,'com_login','com_login','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (13,1,31,32,1,'com_mailto','com_mailto','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (14,1,33,34,1,'com_massmail','com_massmail','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (15,1,35,36,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (16,1,37,38,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (17,1,39,40,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (18,1,41,42,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (19,1,43,46,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (20,1,47,48,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (21,1,49,50,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (22,1,51,52,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (23,1,53,54,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (24,1,55,58,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (25,1,59,62,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (26,1,63,64,1,'com_wrapper','com_wrapper','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (27,8,18,21,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (30,19,44,45,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (31,25,60,61,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (32,24,56,57,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (33,1,65,66,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (34,1,67,68,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (35,1,69,70,1,'com_jshopping','jshopping','{}');
insert  into `cwtaq_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (36,27,19,20,3,'com_content.article.1','О нас ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');

/*Table structure for table `cwtaq_associations` */

DROP TABLE IF EXISTS `cwtaq_associations`;

CREATE TABLE `cwtaq_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_associations` */

/*Table structure for table `cwtaq_banner_clients` */

DROP TABLE IF EXISTS `cwtaq_banner_clients`;

CREATE TABLE `cwtaq_banner_clients` (
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

/*Data for the table `cwtaq_banner_clients` */

/*Table structure for table `cwtaq_banner_tracks` */

DROP TABLE IF EXISTS `cwtaq_banner_tracks`;

CREATE TABLE `cwtaq_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_banner_tracks` */

/*Table structure for table `cwtaq_banners` */

DROP TABLE IF EXISTS `cwtaq_banners`;

CREATE TABLE `cwtaq_banners` (
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
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_banners` */

/*Table structure for table `cwtaq_categories` */

DROP TABLE IF EXISTS `cwtaq_categories`;

CREATE TABLE `cwtaq_categories` (
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
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_categories` */

insert  into `cwtaq_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (1,0,0,0,13,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*');
insert  into `cwtaq_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*');
insert  into `cwtaq_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*');
insert  into `cwtaq_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*');
insert  into `cwtaq_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*');
insert  into `cwtaq_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*');
insert  into `cwtaq_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*');

/*Table structure for table `cwtaq_contact_details` */

DROP TABLE IF EXISTS `cwtaq_contact_details`;

CREATE TABLE `cwtaq_contact_details` (
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
  `imagepos` varchar(20) DEFAULT NULL,
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

/*Data for the table `cwtaq_contact_details` */

/*Table structure for table `cwtaq_content` */

DROP TABLE IF EXISTS `cwtaq_content`;

CREATE TABLE `cwtaq_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
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
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_content` */

insert  into `cwtaq_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values (1,36,'О нас ','about','','<h2>Контакты</h2>\r\n<p><span class=\"icon-envelope\"> </span><a href=\"mailto:inbox@yomayka.com\">inbox@yomayka.com</a></p>\r\n<p><span class=\"icon-bullhorn\"> </span> <span>(+38)068-069-41-84</span></p>\r\n<p> </p>\r\n<h2>Мы в соцсетях</h2>\r\n<p><span class=\"icon-globe\"> </span> <a href=\"http://vk.com/yomayka\" target=\"_blank\">http://vk.com/yomayka</a></p>','',1,0,0,2,'2013-05-28 19:54:06',484,'','2013-05-28 19:57:02',484,0,'0000-00-00 00:00:00','2013-05-28 19:54:06','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');

/*Table structure for table `cwtaq_content_frontpage` */

DROP TABLE IF EXISTS `cwtaq_content_frontpage`;

CREATE TABLE `cwtaq_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_content_frontpage` */

/*Table structure for table `cwtaq_content_rating` */

DROP TABLE IF EXISTS `cwtaq_content_rating`;

CREATE TABLE `cwtaq_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_content_rating` */

/*Table structure for table `cwtaq_core_log_searches` */

DROP TABLE IF EXISTS `cwtaq_core_log_searches`;

CREATE TABLE `cwtaq_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_core_log_searches` */

/*Table structure for table `cwtaq_extensions` */

DROP TABLE IF EXISTS `cwtaq_extensions`;

CREATE TABLE `cwtaq_extensions` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_extensions` */

insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (409,'plg_content_vote','plugin','vote','content',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.11\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10000,'jshopping','component','com_jshopping','',1,1,0,0,'{\"legacy\":false,\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"20.04.2013\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.14.3\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10001,'Russian','language','ru-RU','',0,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2013-04-26\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.11.1\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10002,'Russian','language','ru-RU','',1,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2013-04-26\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.11.1\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10003,'TinyMCE ru-RU','file','tinymce_ru-ru','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE ru-RU\",\"type\":\"file\",\"creationDate\":\"2012-06-19\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.5.2.1\",\"description\":\"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10004,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"legacy\":false,\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.11.1\",\"description\":\"Joomla 2.5 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10005,'lady','template','lady','',0,1,1,0,'{\"legacy\":true,\"name\":\"lady\",\"type\":\"template\",\"creationDate\":\"2012-10-04\",\"author\":\"Pixpro\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\" <p> Lady is the simplest inherited from TRANSMODE template. Bootstrapped.<p> \",\"group\":\"\"}','{\"position1-width\":\"12\",\"position2-width\":\"12\",\"position3-width\":\"12\",\"position4-width\":\"12\",\"position5-width\":\"12\",\"position6-width\":\"12\",\"position7-width\":\"12\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10006,'Jshopping Cart Ext.','module','mod_jshopping_cart_ext','',0,1,0,0,'{\"legacy\":false,\"name\":\"Jshopping Cart Ext.\",\"type\":\"module\",\"creationDate\":\"01.01.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.0.3\",\"description\":\"Displays a JoomShopping cart\",\"group\":\"\"}','{\"show_count\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
insert  into `cwtaq_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (10008,'Search - JoomShopping','plugin','joomshopping','search',0,1,1,0,'{\"legacy\":false,\"name\":\"Search - JoomShopping\",\"type\":\"plugin\",\"creationDate\":\"20.05.2011\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.0.0.1\",\"description\":\"Allows Searching of JoomShopping Component\",\"group\":\"\"}','{\"search_limit\":\"50\"}','','',484,'2013-06-23 17:10:50',0,0);

/*Table structure for table `cwtaq_finder_filters` */

DROP TABLE IF EXISTS `cwtaq_finder_filters`;

CREATE TABLE `cwtaq_finder_filters` (
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

/*Data for the table `cwtaq_finder_filters` */

/*Table structure for table `cwtaq_finder_links` */

DROP TABLE IF EXISTS `cwtaq_finder_links`;

CREATE TABLE `cwtaq_finder_links` (
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

/*Data for the table `cwtaq_finder_links` */

/*Table structure for table `cwtaq_finder_links_terms0` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms0`;

CREATE TABLE `cwtaq_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms0` */

/*Table structure for table `cwtaq_finder_links_terms1` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms1`;

CREATE TABLE `cwtaq_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms1` */

/*Table structure for table `cwtaq_finder_links_terms2` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms2`;

CREATE TABLE `cwtaq_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms2` */

/*Table structure for table `cwtaq_finder_links_terms3` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms3`;

CREATE TABLE `cwtaq_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms3` */

/*Table structure for table `cwtaq_finder_links_terms4` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms4`;

CREATE TABLE `cwtaq_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms4` */

/*Table structure for table `cwtaq_finder_links_terms5` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms5`;

CREATE TABLE `cwtaq_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms5` */

/*Table structure for table `cwtaq_finder_links_terms6` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms6`;

CREATE TABLE `cwtaq_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms6` */

/*Table structure for table `cwtaq_finder_links_terms7` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms7`;

CREATE TABLE `cwtaq_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms7` */

/*Table structure for table `cwtaq_finder_links_terms8` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms8`;

CREATE TABLE `cwtaq_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms8` */

/*Table structure for table `cwtaq_finder_links_terms9` */

DROP TABLE IF EXISTS `cwtaq_finder_links_terms9`;

CREATE TABLE `cwtaq_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_terms9` */

/*Table structure for table `cwtaq_finder_links_termsa` */

DROP TABLE IF EXISTS `cwtaq_finder_links_termsa`;

CREATE TABLE `cwtaq_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_termsa` */

/*Table structure for table `cwtaq_finder_links_termsb` */

DROP TABLE IF EXISTS `cwtaq_finder_links_termsb`;

CREATE TABLE `cwtaq_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_termsb` */

/*Table structure for table `cwtaq_finder_links_termsc` */

DROP TABLE IF EXISTS `cwtaq_finder_links_termsc`;

CREATE TABLE `cwtaq_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_termsc` */

/*Table structure for table `cwtaq_finder_links_termsd` */

DROP TABLE IF EXISTS `cwtaq_finder_links_termsd`;

CREATE TABLE `cwtaq_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_termsd` */

/*Table structure for table `cwtaq_finder_links_termse` */

DROP TABLE IF EXISTS `cwtaq_finder_links_termse`;

CREATE TABLE `cwtaq_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_termse` */

/*Table structure for table `cwtaq_finder_links_termsf` */

DROP TABLE IF EXISTS `cwtaq_finder_links_termsf`;

CREATE TABLE `cwtaq_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_links_termsf` */

/*Table structure for table `cwtaq_finder_taxonomy` */

DROP TABLE IF EXISTS `cwtaq_finder_taxonomy`;

CREATE TABLE `cwtaq_finder_taxonomy` (
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

/*Data for the table `cwtaq_finder_taxonomy` */

insert  into `cwtaq_finder_taxonomy`(`id`,`parent_id`,`title`,`state`,`access`,`ordering`) values (1,0,'ROOT',0,0,0);

/*Table structure for table `cwtaq_finder_taxonomy_map` */

DROP TABLE IF EXISTS `cwtaq_finder_taxonomy_map`;

CREATE TABLE `cwtaq_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_taxonomy_map` */

/*Table structure for table `cwtaq_finder_terms` */

DROP TABLE IF EXISTS `cwtaq_finder_terms`;

CREATE TABLE `cwtaq_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_terms` */

/*Table structure for table `cwtaq_finder_terms_common` */

DROP TABLE IF EXISTS `cwtaq_finder_terms_common`;

CREATE TABLE `cwtaq_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_terms_common` */

insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('a','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('about','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('after','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('ago','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('all','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('am','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('an','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('and','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('ani','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('any','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('are','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('aren\'t','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('as','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('at','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('be','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('but','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('by','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('for','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('from','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('get','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('go','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('how','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('if','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('in','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('into','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('is','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('isn\'t','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('it','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('its','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('me','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('more','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('most','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('must','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('my','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('new','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('no','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('none','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('not','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('noth','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('nothing','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('of','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('off','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('often','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('old','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('on','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('onc','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('once','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('onli','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('only','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('or','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('other','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('our','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('ours','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('out','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('over','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('page','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('she','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('should','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('small','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('so','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('some','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('than','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('thank','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('that','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('the','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('their','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('theirs','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('them','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('then','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('there','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('these','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('they','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('this','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('those','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('thus','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('time','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('times','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('to','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('too','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('true','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('under','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('until','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('up','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('upon','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('use','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('user','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('users','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('veri','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('version','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('very','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('via','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('want','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('was','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('way','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('were','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('what','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('when','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('where','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('whi','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('which','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('who','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('whom','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('whose','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('why','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('wide','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('will','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('with','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('within','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('without','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('would','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('yes','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('yet','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('you','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('your','en');
insert  into `cwtaq_finder_terms_common`(`term`,`language`) values ('yours','en');

/*Table structure for table `cwtaq_finder_tokens` */

DROP TABLE IF EXISTS `cwtaq_finder_tokens`;

CREATE TABLE `cwtaq_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_tokens` */

/*Table structure for table `cwtaq_finder_tokens_aggregate` */

DROP TABLE IF EXISTS `cwtaq_finder_tokens_aggregate`;

CREATE TABLE `cwtaq_finder_tokens_aggregate` (
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
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_tokens_aggregate` */

/*Table structure for table `cwtaq_finder_types` */

DROP TABLE IF EXISTS `cwtaq_finder_types`;

CREATE TABLE `cwtaq_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_finder_types` */

/*Table structure for table `cwtaq_jshopping_addons` */

DROP TABLE IF EXISTS `cwtaq_jshopping_addons`;

CREATE TABLE `cwtaq_jshopping_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_addons` */

/*Table structure for table `cwtaq_jshopping_attr` */

DROP TABLE IF EXISTS `cwtaq_jshopping_attr`;

CREATE TABLE `cwtaq_jshopping_attr` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_ordering` int(11) NOT NULL DEFAULT '0',
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_attr` */

insert  into `cwtaq_jshopping_attr`(`attr_id`,`attr_ordering`,`attr_type`,`independent`,`allcats`,`cats`,`name_en-GB`,`description_en-GB`,`name_ru-RU`,`description_ru-RU`) values (2,1,1,1,1,'','meterial','','материал','');

/*Table structure for table `cwtaq_jshopping_attr_values` */

DROP TABLE IF EXISTS `cwtaq_jshopping_attr_values`;

CREATE TABLE `cwtaq_jshopping_attr_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_attr_values` */

insert  into `cwtaq_jshopping_attr_values`(`value_id`,`attr_id`,`value_ordering`,`image`,`name_en-GB`,`name_ru-RU`) values (6,2,1,'','oil','Масло');
insert  into `cwtaq_jshopping_attr_values`(`value_id`,`attr_id`,`value_ordering`,`image`,`name_en-GB`,`name_ru-RU`) values (7,2,2,'','biflex','Бифлекс');
insert  into `cwtaq_jshopping_attr_values`(`value_id`,`attr_id`,`value_ordering`,`image`,`name_en-GB`,`name_ru-RU`) values (8,2,3,'','fleece','Флиз');

/*Table structure for table `cwtaq_jshopping_cart_temp` */

DROP TABLE IF EXISTS `cwtaq_jshopping_cart_temp`;

CREATE TABLE `cwtaq_jshopping_cart_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_cart_temp` */

insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (1,'qbb94v7jlptjvqe3ovi6d0icq2','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (2,'q77nj1qh5mnh9q2jjfo4penj83','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (3,'ep304h602o8lm1q4uv0uej1pp2','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (4,'5537tdpotn616d68nba3pufsf0','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (5,'ns5r8teb57e2j9jifg2a45ern2','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (7,'s88melbv6snc6lg30j3tj4ugm5','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (13,'6d2d83b9ec7099405fdbb79fbaddf19c','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (14,'cf2cdf149e09d34915953d17057b7e17','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (15,'f1d442632190b3cec42b2fd0c3f04b68','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (16,'8a4c7b4cc2fc8f167520083dbfd3be1b','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (17,'67875d7ebc8cbdf309f93735e3bd9f2c','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (18,'27c6d835aaee58251d225c0250d63bd9','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (19,'1f4c1b8e728ec9366f7f43c28403e5de','a:0:{}','wishlist');
insert  into `cwtaq_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values (20,'a4d2863e6c218a6b3529d34acc8cba7c','a:0:{}','wishlist');

/*Table structure for table `cwtaq_jshopping_categories` */

DROP TABLE IF EXISTS `cwtaq_jshopping_categories`;

CREATE TABLE `cwtaq_jshopping_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  `category_publish` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT '0000-00-00 00:00:00',
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_categories` */

insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (2,NULL,14,0,1,NULL,8,'2012-02-19 19:45:09',12,3,1,'','','','','','','','Геометрия','geometry','','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (5,NULL,0,0,1,NULL,15,'2012-12-21 00:29:59',30,3,1,'','','','','','','','Праздники','holidays','','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (6,NULL,14,1,1,NULL,6,'2012-12-21 00:30:26',30,3,1,'','','','','','','','Автомобилистам','car','saccharification mash saccharification final gravity real ale becher, chocolate malt, beer berliner weisse. cask conditioning priming kolsch conditioning priming, malt extract biere de garde. ester original gravity mash crystal malt lauter tun primary fermentation bacterial. lagering heat exchanger abbey hops, aau brewhouse. dry hopping aau alpha acid tulip glass carbonation, carbonation. balthazar, hydrometer terminal gravity dry stout bottle conditioning gravity units of bitterness. barleywine finishing hops hard cider; conditioning tank biere de garde reinheitsgebot brew kettle. shelf life sparge autolysis dry stout. reinheitsgebot racking cask conditioning carboy goblet mead tulip glass.','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (7,NULL,14,1,1,NULL,5,'2012-12-21 00:31:13',30,3,1,'','','','','','','','IT','it','hops pitch all-malt conditioning tank anaerobic. carboy lagering pilsner ester grainy barrel bottle conditioning. shelf life fermentation noble hops bittering hops lambic enzymes becher. bottom fermenting yeast hydrometer gravity malt extract anaerobic, additive abv all-malt, finishing hops. mouthfeel seidel; all-malt craft beer, ibu rims priming pitch biere de garde. scotch ale oxidized conditioning tank. kolsch, \" lauter rims balthazar dry stout brewpub.\" additive bung amber, pub barleywine tulip glass, alpha acid, tulip glass cask conditioning. squares; infusion bitter alcohol abv. dry stout.','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (8,NULL,14,1,1,NULL,4,'2012-12-21 00:32:13',30,3,1,'','','','','','','','Гламур','glamour','pub secondary fermentation, copper attenuation cask conditioned ale, oxidized fermentation dunkle; additive. final gravity racking cask conditioning terminal gravity. imperial cask conditioning sour/acidic, bright beer.','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (9,NULL,14,0,1,NULL,7,'2012-12-21 00:33:04',30,3,1,'','','','','','','','Нонкомформизм o_O','noncomformism','','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (10,NULL,14,1,1,NULL,3,'2012-12-21 00:36:52',30,3,1,'','','','','','','','Cool :)','cool','squares balthazar primary fermentation abbey pint glass ibu all-malt-- hydrometer hoppy. pitching bright beer adjunct bock; bottom fermenting yeast. bitter brewhouse, \" krausen alpha acid real ale reinheitsgebot tulip glass secondary fermentation.\" becher gravity double bock/dopplebock krug conditioning filter goblet.','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (11,NULL,0,0,1,NULL,28,'2012-12-21 00:38:08',30,3,1,'','','','','','','','HoReCa','horeca','','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (12,NULL,14,1,1,NULL,1,'2012-12-21 00:59:08',30,3,1,'','','','','','','','Пэтс','pets','lager alcohol, microbrewery biere de garde, pilsner. ipa fermentation ale mash tun mash gravity seidel. enzymes, fermentation ibu? dry hopping hydrometer conditioning adjunct saccharification.','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (13,NULL,14,1,1,NULL,2,'2012-12-22 00:43:37',30,3,1,'','','','','','','','Бескаркасная мебель','furniture','keg, caramel malt abv lager kolsch black malt shelf life. pitching, dunkle alpha acid aerobic finishing hops; anaerobic. brew kettle brewing carbonation draft (draught. beer noble hops, keg ale craft beer. noble hops fermentation noble hops pitch kolsch, \" degrees plato mash bacterial.\" cask conditioned ale. mead krausen specific gravity, lagering, adjunct pilsner. specific gravity autolysis; wit alcohol all-malt aerobic bitter amber ale scotch ale? hoppy, noble hops bottom fermenting yeast oxidized primary fermentation becher.','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (14,NULL,0,1,1,NULL,27,'2012-12-22 00:44:50',30,3,1,'','','','','','','','Подушки','pillows','','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (15,NULL,0,1,1,NULL,39,'2013-05-10 01:30:43',30,3,1,'','','','','','','','Футболки','tshirts','','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (16,NULL,0,1,1,NULL,40,'2013-05-10 01:33:54',30,3,1,'','','','','','','','Сумки','bags','','','','','');
insert  into `cwtaq_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (17,NULL,16,1,1,NULL,1,'2013-05-30 01:26:34',12,3,1,'Summer','summer','','','','','','Summer','summer','','','','','');

/*Table structure for table `cwtaq_jshopping_config` */

DROP TABLE IF EXISTS `cwtaq_jshopping_config`;

CREATE TABLE `cwtaq_jshopping_config` (
  `id` tinyint(1) NOT NULL DEFAULT '0',
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `order_number_type` varchar(50) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_config` */

insert  into `cwtaq_jshopping_config`(`id`,`count_products_to_page`,`count_products_to_row`,`count_category_to_row`,`image_category_width`,`image_category_height`,`image_product_width`,`image_product_height`,`image_product_full_width`,`image_product_full_height`,`video_product_width`,`video_product_height`,`adminLanguage`,`defaultLanguage`,`mainCurrency`,`decimal_count`,`decimal_symbol`,`thousand_separator`,`currency_format`,`use_rabatt_code`,`enable_wishlist`,`default_status_order`,`order_number_type`,`store_address_format`,`store_date_format`,`contact_email`,`allow_reviews_prod`,`allow_reviews_only_registered`,`allow_reviews_manuf`,`max_mark`,`summ_null_shipping`,`without_shipping`,`without_payment`,`pdf_parameters`,`next_order_number`,`shop_user_guest`,`hide_product_not_avaible_stock`,`show_buy_in_category`,`user_as_catalog`,`show_tax_in_product`,`show_tax_product_in_cart`,`show_plus_shipping_in_product`,`hide_buy_not_avaible_stock`,`show_sort_product`,`show_count_select_products`,`order_send_pdf_client`,`order_send_pdf_admin`,`show_delivery_time`,`securitykey`,`demo_type`,`product_show_manufacturer_logo`,`product_show_manufacturer`,`product_show_weight`,`max_count_order_one_product`,`min_count_order_one_product`,`min_price_order`,`max_price_order`,`hide_tax`,`licensekod`,`product_attribut_first_value_empty`,`show_hits`,`show_registerform_in_logintemplate`,`admin_show_product_basic_price`,`admin_show_attributes`,`admin_show_delivery_time`,`admin_show_languages`,`use_different_templates_cat_prod`,`admin_show_product_video`,`admin_show_product_related`,`admin_show_product_files`,`admin_show_product_bay_price`,`admin_show_product_labels`,`sorting_country_in_alphabet`,`hide_text_product_not_available`,`show_weight_order`,`discount_use_full_sum`,`show_cart_all_step_checkout`,`use_plugin_content`,`display_price_admin`,`display_price_front`,`product_list_show_weight`,`product_list_show_manufacturer`,`use_extend_tax_rule`,`use_extend_display_price_rule`,`fields_register`,`template`,`show_product_code`,`show_product_code_in_cart`,`savelog`,`savelogpaymentdata`,`product_list_show_min_price`,`product_count_related_in_row`,`category_sorting`,`product_sorting`,`product_sorting_direction`,`show_product_list_filters`,`admin_show_product_extra_field`,`product_list_display_extra_fields`,`filter_display_extra_fields`,`product_hide_extra_fields`,`cart_display_extra_fields`,`default_country`,`show_return_policy_in_email_order`,`client_allow_cancel_order`,`admin_show_vendors`,`vendor_order_message_type`,`admin_not_send_email_order_vendor_order`,`not_redirect_in_cart_after_buy`,`product_show_vendor`,`product_show_vendor_detail`,`product_list_show_vendor`,`admin_show_freeattributes`,`product_show_button_back`,`calcule_tax_after_discount`,`product_list_show_product_code`,`radio_attr_value_vertical`,`attr_display_addprice`,`use_ssl`,`product_list_show_price_description`,`display_button_print`,`hide_shipping_step`,`hide_payment_step`,`image_resize_type`,`use_extend_attribute_data`,`product_list_show_price_default`,`product_list_show_qty_stock`,`product_show_qty_stock`,`displayprice`,`use_decimal_qty`,`ext_tax_rule_for`,`display_reviews_without_confirm`,`manufacturer_sorting`,`admin_show_units`,`main_unit_weight`,`create_alias_product_category_auto`,`delivery_order_depends_delivery_product`,`show_delivery_time_step5`,`other_config`) values (1,12,3,1,160,0,100,0,200,0,320,240,'ru-RU','en-GB',1,2,'.','',2,0,0,1,'1','%storename %address %city %zip','%d.%m.%Y','andreyalek@gmail.com',1,1,0,10,'-1.00',1,0,'208:65:208:30',5634,2,0,1,0,0,0,0,1,1,1,1,0,0,'c4f439502620aa9dd62b127ef7a61bc7',0,0,0,0,0,0,0,0,0,'',0,0,0,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,'a:3:{s:8:\"register\";a:15:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}','',1,0,0,0,0,3,1,1,0,0,0,'','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,'a:12:{s:47:\"display_delivery_time_for_product_in_order_mail\";s:1:\"1\";s:18:\"show_delivery_date\";s:1:\"0\";s:27:\"show_delivery_time_checkout\";s:1:\"1\";s:25:\"show_manufacturer_in_cart\";s:1:\"0\";s:17:\"weight_in_invoice\";s:1:\"0\";s:19:\"shipping_in_invoice\";s:1:\"0\";s:18:\"payment_in_invoice\";s:1:\"0\";s:23:\"date_invoice_in_invoice\";s:1:\"0\";s:21:\"send_invoice_manually\";s:1:\"0\";s:11:\"display_agb\";s:1:\"1\";s:3:\"tax\";s:1:\"1\";s:5:\"stock\";s:1:\"1\";}');

/*Table structure for table `cwtaq_jshopping_config_display_prices` */

DROP TABLE IF EXISTS `cwtaq_jshopping_config_display_prices`;

CREATE TABLE `cwtaq_jshopping_config_display_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_config_display_prices` */

/*Table structure for table `cwtaq_jshopping_config_seo` */

DROP TABLE IF EXISTS `cwtaq_jshopping_config_seo`;

CREATE TABLE `cwtaq_jshopping_config_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_ru-RU` varchar(255) NOT NULL,
  `keyword_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_config_seo` */

insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (1,'category',10,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (2,'manufacturers',20,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (3,'cart',30,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (4,'wishlist',40,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (5,'login',50,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (6,'register',60,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (7,'editaccount',70,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (8,'myorders',80,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (9,'myaccount',90,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (10,'search',100,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (11,'search-result',110,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (12,'myorder-detail',120,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (13,'vendors',130,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (14,'content-agb',140,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (15,'content-return_policy',150,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (16,'content-shipping',160,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (17,'content-privacy_statement',161,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (18,'checkout-address',170,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (19,'checkout-payment',180,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (20,'checkout-shipping',190,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (21,'checkout-preview',200,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (22,'lastproducts',210,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (23,'randomproducts',220,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (24,'bestsellerproducts',230,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (25,'labelproducts',240,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (26,'topratingproducts',250,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (27,'tophitsproducts',260,'','','','','','');
insert  into `cwtaq_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values (28,'all-products',270,'','','','','','');

/*Table structure for table `cwtaq_jshopping_config_statictext` */

DROP TABLE IF EXISTS `cwtaq_jshopping_config_statictext`;

CREATE TABLE `cwtaq_jshopping_config_statictext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_config_statictext` */

insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (1,'home','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (2,'manufacturer','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (3,'agb','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (4,'return_policy','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (5,'order_email_descr','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (6,'order_email_descr_end','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (7,'order_finish_descr','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (8,'shipping','','');
insert  into `cwtaq_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values (9,'privacy_statement','','');

/*Table structure for table `cwtaq_jshopping_countries` */

DROP TABLE IF EXISTS `cwtaq_jshopping_countries`;

CREATE TABLE `cwtaq_jshopping_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_countries` */

insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (1,1,1,'AFG','AF','Afghanistan','Afghanistan','Афганистан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (2,1,2,'ALB','AL','Albania','Albanien','Албания');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (3,1,3,'DZA','DZ','Algeria','Algerien','Алжир');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (4,1,4,'ASM','AS','American Samoa','Amerikanisch-Samoa','Американское Самоа');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (5,1,5,'AND','AD','Andorra','Andorra','Андорра');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (6,1,6,'AGO','AO','Angola','Angola','Ангола');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (7,1,7,'AIA','AI','Anguilla','Anguilla','Ангилья');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (8,1,8,'ATA','AQ','Antarctica','Antarktis','Антарктида');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (9,1,9,'ATG','AG','Antigua and Barbuda','Antigua und Barbuda','Антигуа и Барбуда');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (10,1,10,'ARG','AR','Argentina','Argentinien','Аргентина');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (11,1,11,'ARM','AM','Armenia','Armenien','Армения');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (12,1,12,'ABW','AW','Aruba','Aruba','Аруба');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (13,1,13,'AUS','AU','Australia','Australien','Австралия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (14,1,14,'AUT','AT','Austria','Österreich','Австрия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (15,1,15,'AZE','AZ','Azerbaijan','Aserbaidschan','Азербайджан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (16,1,16,'BHS','BS','Bahamas','Bahamas','Багамские острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (17,1,17,'BHR','BH','Bahrain','Bahrain','Бахрейн');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (18,1,18,'BGD','BD','Bangladesh','Bangladesch','Бангладеш');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (19,1,19,'BRB','BB','Barbados','Barbados','Барбадос');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (20,1,20,'BLR','BY','Belarus','Weissrussland','Беларусь');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (21,1,21,'BEL','BE','Belgium','Belgien','Бельгия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (22,1,22,'BLZ','BZ','Belize','Belize','Белиз');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (23,1,23,'BEN','BJ','Benin','Benin','Бенин');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (24,1,24,'BMU','BM','Bermuda','Bermuda','Бермудские острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (25,1,25,'BTN','BT','Bhutan','Bhutan','Бутан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (26,1,26,'BOL','BO','Bolivia','Bolivien','Боливия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (27,1,27,'BIH','BA','Bosnia and Herzegowina','Bosnien und Herzegowina','Босния и Герцеговина');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (28,1,28,'BWA','BW','Botswana','Botsuana','Ботсвана');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (29,1,29,'BVT','BV','Bouvet Island','Bouvetinsel','Буве');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (30,1,30,'BRA','BR','Brazil','Brasilien','Бразилия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (31,1,31,'IOT','IO','British Indian Ocean Territory','Britisches Territorium im Indischen Ozean','Британская территория Индийского океана');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (32,1,32,'BRN','BN','Brunei Darussalam','Brunei','Бруней-Даруссалам');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (33,1,33,'BGR','BG','Bulgaria','Bulgarien','Болгария');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (34,1,34,'BFA','BF','Burkina Faso','Burkina Faso','Буркина-Фасо');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (35,1,35,'BDI','BI','Burundi','Burundi','Бурунди');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (36,1,36,'KHM','KH','Cambodia','Kambodscha','Камбоджа');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (37,1,37,'CMR','CM','Cameroon','Kamerun','Камерун');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (38,1,38,'CAN','CA','Canada','Kanada','Канада');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (39,1,39,'CPV','CV','Cape Verde','Kap Verde','Кабо-Верде');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (40,1,40,'CYM','KY','Cayman Islands','Cayman-Inseln','Каймановы острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (41,1,41,'CAF','CF','Central African Republic','Zentralafrikanische Republik','Центрально-Африканская Республика');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (42,1,42,'TCD','TD','Chad','Tschad','Чад');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (43,1,43,'CHL','CL','Chile','Chile','Чили');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (44,1,44,'CHN','CN','China','China','Китай');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (45,1,45,'CXR','CX','Christmas Island','Christmas Island','Остров Рождества');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (46,1,46,'CCK','CC','Cocos (Keeling) Islands','Kokosinseln (Keeling)','Кокосовые (Килинг) острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (47,1,47,'COL','CO','Colombia','Kolumbien','Колумбия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (48,1,48,'COM','KM','Comoros','Komoren','Коморские острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (49,1,49,'COG','CG','Congo','Kongo, Republik','Конго');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (50,1,50,'COK','CK','Cook Islands','Cookinseln','Острова Кука');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (51,1,51,'CRI','CR','Costa Rica','Costa Rica','Коста-Рика');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (52,1,52,'CIV','CI','Cote D\'Ivoire','Elfenbeinküste','Кот-д`Ивуар D');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (53,1,53,'HRV','HR','Croatia','Kroatien','Хорватия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (54,1,54,'CUB','CU','Cuba','Kuba','Куба');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (55,1,55,'CYP','CY','Cyprus','Zypern','Кипр');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (56,1,56,'CZE','CZ','Czech Republic','Tschechien','Чешская республика');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (57,1,57,'DNK','DK','Denmark','Dänemark','Дания');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (58,1,58,'DJI','DJ','Djibouti','Dschibuti','Джибути');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (59,1,59,'DMA','DM','Dominica','Dominica','Доминика');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (60,1,60,'DOM','DO','Dominican Republic','Dominikanische Republik','Доминиканская Республика');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (61,1,61,'TMP','TL','East Timor','Osttimor','Восточный Тимор');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (62,1,62,'ECU','EC','Ecuador','Ecuador','Эквадор');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (63,1,63,'EGY','EG','Egypt','Ägypten','Египет');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (64,1,64,'SLV','SV','El Salvador','El Salvador','Сальвадор');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (65,1,65,'GNQ','GQ','Equatorial Guinea','Äquatorial-Guinea','Экваториальная Гвинея');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (66,1,66,'ERI','ER','Eritrea','Eritrea','Эритрея');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (67,1,67,'EST','EE','Estonia','Estland','Эстония');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (68,1,68,'ETH','ET','Ethiopia','Äthiopien','Эфиопия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (69,1,69,'FLK','FK','Falkland Islands (Malvinas)','Falklandinseln','Фолклендские (Мальвинские) острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (70,1,70,'FRO','FO','Faroe Islands','Färöer','Фарерские острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (71,1,71,'FJI','FJ','Fiji','Fidschi','Фиджи');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (72,1,72,'FIN','FI','Finland','Finnland','Финляндия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (73,1,73,'FRA','FR','France','Frankreich','Франция');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (74,1,74,'FXX','FX','France Metropolitan','Frankreich, Metropolitan','Митрополит Франции');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (75,1,75,'GUF','GF','French Guiana','Französisch-Guyana','Французская Гвиана');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (76,1,76,'PYF','PF','French Polynesia','Franz. Polynesien','Французская Полинезия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (77,1,77,'ATF','TF','French Southern Territories','Französiche Süd- und Antarktisgebiete','Французские южные территории');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (78,1,78,'GAB','GA','Gabon','Gabun','Габон');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (79,1,79,'GMB','GM','Gambia','Gambia','Гамбия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (80,1,80,'GEO','GE','Georgia','Georgien','Грузия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (81,1,81,'DEU','DE','Germany','Deutschland','Германия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (82,1,82,'GHA','GH','Ghana','Ghana','Гана');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (83,1,83,'GIB','GI','Gibraltar','Gibraltar','Гибралтар');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (84,1,84,'GRC','GR','Greece','Griechenland','Греция');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (85,1,85,'GRL','GL','Greenland','Grönland','Гренландия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (86,1,86,'GRD','GD','Grenada','Grenada','Гренада');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (87,1,87,'GLP','GP','Guadeloupe','Guadeloupe','Гваделупа');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (88,1,88,'GUM','GU','Guam','Guam','Гуам');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (89,1,89,'GTM','GT','Guatemala','Guatemala','Гватемала');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (90,1,90,'GIN','GN','Guinea','Guinea','Гвинея');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (91,1,91,'GNB','GW','Guinea-bissau','Guinea-Bissau','Гвинея-Бисау');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (92,1,92,'GUY','GY','Guyana','Guyana','Гайана');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (93,1,93,'HTI','HT','Haiti','Haiti','Гаити');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (94,1,94,'HMD','HM','Heard and Mc Donald Islands','Heard und McDonaldinseln','Херд и Макдональд острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (95,1,95,'HND','HN','Honduras','Honduras','Гондурас');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (96,1,96,'HKG','HK','Hong Kong','Hong Kong','Гонконг');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (97,1,97,'HUN','HU','Hungary','Ungarn','Венгрия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (98,1,98,'ISL','IS','Iceland','Island','Исландия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (99,1,99,'IND','IN','India','Indien','Индия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (100,1,100,'IDN','ID','Indonesia','Indonesien','Индонезия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (101,1,101,'IRN','IR','Iran (Islamic Republic of)','Iran','Иран (Исламская Республика)');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (102,1,102,'IRQ','IQ','Iraq','Irak','Ирак');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (103,1,103,'IRL','IE','Ireland','Irland','Ирландия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (104,1,104,'ISR','IL','Israel','Israel','Израиль');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (105,1,105,'ITA','IT','Italy','Italien','Италия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (106,1,106,'JAM','JM','Jamaica','Jamaika','Ямайка');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (107,1,107,'JPN','JP','Japan','Japan','Япония');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (108,1,108,'JOR','JO','Jordan','Jordanien','Иордания');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (109,1,109,'KAZ','KZ','Kazakhstan','Kasachstan','Казахстан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (110,1,110,'KEN','KE','Kenya','Kenia','Кения');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (111,1,111,'KIR','KI','Kiribati','Kiribati','Кирибати');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (112,1,112,'PRK','KP','Korea Democratic People\'s Republic of','Korea Demokratische Volksrepublik','Корея Северная');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (113,1,113,'KOR','KR','Korea Republic of','Korea','Корея Южная');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (114,1,114,'KWT','KW','Kuwait','Kuwait','Кувейт');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (115,1,115,'KGZ','KG','Kyrgyzstan','Kirgistan','Киргизия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (116,1,116,'LAO','LA','Lao People\'s Democratic Republic','Laos','Лаос');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (117,1,117,'LVA','LV','Latvia','Lettland','Латвия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (118,1,118,'LBN','LB','Lebanon','Libanon','Ливан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (119,1,119,'LSO','LS','Lesotho','Lesotho','Лесото');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (120,1,120,'LBR','LR','Liberia','Liberia','Либерия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (121,1,121,'LBY','LY','Libyan Arab Jamahiriya','Libyen','Ливийской Арабской Джамахирии');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (122,1,122,'LIE','LI','Liechtenstein','Liechtenstein','Лихтенштейн');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (123,1,123,'LTU','LT','Lithuania','Litauen','Литва');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (124,1,124,'LUX','LU','Luxembourg','Luxemburg','Люксембург');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (125,1,125,'MAC','MO','Macau','Makao','Макао');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (126,1,126,'MKD','MK','Macedonia The Former Yugoslav Republic of','Mazedonien','Македония');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (127,1,127,'MDG','MG','Madagascar','Madagaskar','Мадагаскар');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (128,1,128,'MWI','MW','Malawi','Malawi','Малави');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (129,1,129,'MYS','MY','Malaysia','Malaysia','Малайзия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (130,1,130,'MDV','MV','Maldives','Malediven','Мальдивы');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (131,1,131,'MLI','ML','Mali','Mali','Мали');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (132,1,132,'MLT','MT','Malta','Malta','Мальта');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (133,1,133,'MHL','MH','Marshall Islands','Marshallinseln','Маршалловы острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (134,1,134,'MTQ','MQ','Martinique','Martinique','Мартиника');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (135,1,135,'MRT','MR','Mauritania','Mauretanien','Мавритания');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (136,1,136,'MUS','MU','Mauritius','Mauritius','Маврикий');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (137,1,137,'MYT','YT','Mayotte','Mayott','Майотта');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (138,1,138,'MEX','MX','Mexico','Mexiko','Мексика');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (139,1,139,'FSM','FM','Micronesia Federated States of','Mikronesien','Микронезии Федеративные Штаты');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (140,1,140,'MDA','MD','Moldova Republic of','Moldawien','Республика Молдова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (141,1,141,'MCO','MC','Monaco','Monaco','Монако');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (142,1,142,'MNG','MN','Mongolia','Mongolei','Монголия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (143,1,143,'MSR','MS','Montserrat','Montserrat','Монтсеррат');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (144,1,144,'MAR','MA','Morocco','Marokko','Марокко');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (145,1,145,'MOZ','MZ','Mozambique','Mosambik','Мозамбик');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (146,1,146,'MMR','MM','Myanmar','Myanmar','Мьянма');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (147,1,147,'NAM','NA','Namibia','Namibia','Намибия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (148,1,148,'NRU','NR','Nauru','Nauru','Науру');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (149,1,149,'NPL','NP','Nepal','Nepal','Непал');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (150,1,150,'NLD','NL','Netherlands','Niederlande','Нидерланды');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (151,1,151,'ANT','AN','Netherlands Antilles','Niederländisch-Antillen','Нидерландские Антильские острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (152,1,152,'NCL','NC','New Caledonia','Neukaledonien','Новая Каледония');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (153,1,153,'NZL','NZ','New Zealand','Neuseeland','Новая Зеландия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (154,1,154,'NIC','NI','Nicaragua','Nicaragua','Никарагуа');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (155,1,155,'NER','NE','Niger','Niger','Нигер');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (156,1,156,'NGA','NG','Nigeria','Nigeria','Нигерия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (157,1,157,'NIU','NU','Niue','Niue','Ниуэ');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (158,1,158,'NFK','NF','Norfolk Island','Norfolkinsel','Остров Норфолк');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (159,1,159,'MNP','MP','Northern Mariana Islands','Nördliche Marianen','Северные Марианские острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (160,1,160,'NOR','NO','Norway','Norwegen','Норвегия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (161,1,161,'OMN','OM','Oman','Oman','Оман');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (162,1,162,'PAK','PK','Pakistan','Pakistan','Пакистан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (163,1,163,'PLW','PW','Palau','Palau','Палау');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (164,1,164,'PAN','PA','Panama','Panama','Панама');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (165,1,165,'PNG','PG','Papua New Guinea','Papua-Neuguinea','Папуа-Новая Гвинея');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (166,1,166,'PRY','PY','Paraguay','Paraguay','Парагвай');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (167,1,167,'PER','PE','Peru','Peru','Перу');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (168,1,168,'PHL','PH','Philippines','Philippinen','Филиппины');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (169,1,169,'PCN','PN','Pitcairn','Pitcairn','Питкэрн');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (170,1,170,'POL','PL','Poland','Polen','Польша');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (171,1,171,'PRT','PT','Portugal','Portugal','Португалия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (172,1,172,'PRI','PR','Puerto Rico','Puerto Rico','Пуэрто-Рико');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (173,1,173,'QAT','QA','Qatar','Katar','Катар');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (174,1,174,'REU','RE','Reunion','Reunion','Реюньон');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (175,1,175,'ROM','RO','Romania','Rumänien','Румыния');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (176,1,176,'RUS','RU','Russian Federation','Russische Föderation','Россия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (177,1,177,'RWA','RW','Rwanda','Ruanda','Руанда');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (178,1,178,'KNA','KN','Saint Kitts and Nevis','St. Kitts und Nevis','Сент-Китс и Невис');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (179,1,179,'LCA','LC','Saint Lucia','St. Lucia','Сент-Люсия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (180,1,180,'VCT','VC','Saint Vincent and the Grenadines','St. Vincent und die Grenadinen','Сент-Винсент и Гренадины');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (181,1,181,'WSM','WS','Samoa','Samoa','Самоа');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (182,1,182,'SMR','SM','San Marino','San Marino','Сан - Марино');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (183,1,183,'STP','ST','Sao Tome and Principe','Sao Tomé und Príncipe','Сан-Томе и Принсипи');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (184,1,184,'SAU','SA','Saudi Arabia','Saudi-Arabien','Саудовская Аравия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (185,1,185,'SEN','SN','Senegal','Senegal','Сенегал');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (186,1,186,'SYC','SC','Seychelles','Seychellen','Сейшельские острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (187,1,187,'SLE','SL','Sierra Leone','Sierra Leone','Сьерра-Леоне');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (188,1,188,'SGP','SG','Singapore','Singapur','Сингапур');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (189,1,189,'SVK','SK','Slovakia (Slovak Republic)','Slowakei','Словакия (Словацкая Республика)');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (190,1,190,'SVN','SI','Slovenia','Slowenien','Словения');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (191,1,191,'SLB','SB','Solomon Islands','Salomonen','Соломоновы острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (192,1,192,'SOM','SO','Somalia','Somalia','Сомали');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (193,1,193,'ZAF','ZA','South Africa','Republik Südafrika','ЮАР');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (194,1,194,'SGS','GS','South Georgia and the South Sandwich Islands','Südgeorgien und die Südlichen Sandwichinseln','Южная Джорджия и Южные Сандвичевы острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (195,1,195,'ESP','ES','Spain','Spanien','Испания');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (196,1,196,'LKA','LK','Sri Lanka','Sri Lanka','Шри Ланка');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (197,1,197,'SHN','SH','St. Helena','St. Helena','Св. Елены');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (198,1,198,'SPM','PM','St. Pierre and Miquelon','St. Pierre und Miquelon','Сен-Пьер и Микелон');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (199,1,199,'SDN','SD','Sudan','Sudan','Судан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (200,1,200,'SUR','SR','Suriname','Suriname','Суринам');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (201,1,201,'SJM','SJ','Svalbard and Jan Mayen Islands','Svalbard und Jan Mayen','Шпицберген и Ян-Майен');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (202,1,202,'SWZ','SZ','Swaziland','Swasiland','Свазиленд');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (203,1,203,'SWE','SE','Sweden','Schweden','Швеция');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (204,1,204,'CHE','CH','Switzerland','Schweiz','Швейцария');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (205,1,205,'SYR','SY','Syrian Arab Republic','Syrien','Сирийской Арабской Республики');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (206,1,206,'TWN','TW','Taiwan','Taiwan','Тайвань');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (207,1,207,'TJK','TJ','Tajikistan','Tadschikistan','Таджикистан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (208,1,208,'TZA','TZ','Tanzania United Republic of','Tansania','Танзания, Объединенная Республика');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (209,1,209,'THA','TH','Thailand','Thailand','Таиланд');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (210,1,210,'TGO','TG','Togo','Togo','Того');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (211,1,211,'TKL','TK','Tokelau','Tokelau','Токелау');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (212,1,212,'TON','TO','Tonga','Tonga','Тонга');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (213,1,213,'TTO','TT','Trinidad and Tobago','Trinidad und Tobago','Тринидад и Тобаго');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (214,1,214,'TUN','TN','Tunisia','Tunesien','Тунис');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (215,1,215,'TUR','TR','Turkey','Türkei','Турция');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (216,1,216,'TKM','TM','Turkmenistan','Turkmenistan','Туркменистан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (217,1,217,'TCA','TC','Turks and Caicos Islands','Turks- und Caicosinseln','Острова Теркс и Кайкос');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (218,1,218,'TUV','TV','Tuvalu','Tuvalu','Тувалу');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (219,1,219,'UGA','UG','Uganda','Uganda','Уганда');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (220,1,220,'UKR','UA','Ukraine','Ukraine','Украина');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (221,1,221,'ARE','AE','United Arab Emirates','Vereinigte Arabische Emirate','Объединенные Арабские Эмираты');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (222,1,222,'GBR','GB','United Kingdom','Vereinigtes Königreich','Великобритания');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (223,1,223,'USA','US','United States','USA','Соединенные Штаты Америки');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (224,1,224,'UMI','UM','United States Minor Outlying Islands','United States Minor Outlying Islands','Соединенные Штаты Америки Внешние малые острова');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (225,1,225,'URY','UY','Uruguay','Uruguay','Уругвай');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (226,1,226,'UZB','UZ','Uzbekistan','Usbekistan','Узбекистан');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (227,1,227,'VUT','VU','Vanuatu','Vanuatu','Вануату');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (228,1,228,'VAT','VA','Vatican City State (Holy See)','Vatikanstadt','Город-государство Ватикан (Святейший Престол)');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (229,1,229,'VEN','VE','Venezuela','Venezuela','Венесуэла');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (230,1,230,'VNM','VN','Viet Nam','Vietnam','Вьетнам');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (231,1,231,'VGB','VG','Virgin Islands (British)','Britische Jungferninseln','Виргинские острова (Британские)');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (232,1,232,'VIR','VI','Virgin Islands (U.S.)','Vereinigte Staaten von Amerika','Виргинские острова (США)');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (233,1,233,'WLF','WF','Wallis and Futuna Islands','Wallis und Futuna','Уоллис и Футуна');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (234,1,234,'ESH','EH','Western Sahara','Westsahara','Западная Сахара');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (235,1,235,'YEM','YE','Yemen','Jemen','Йемен');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (236,1,236,'YUG','YU','Yugoslavia','Yugoslavia','Югославия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (237,1,237,'ZAR','ZR','Zaire','Zaire','Заир');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (238,1,238,'ZMB','ZM','Zambia','Sambia','Замбия');
insert  into `cwtaq_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (239,1,239,'ZWE','ZW','Zimbabwe','Simbabwe','Зимбабве');

/*Table structure for table `cwtaq_jshopping_coupons` */

DROP TABLE IF EXISTS `cwtaq_jshopping_coupons`;

CREATE TABLE `cwtaq_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL DEFAULT '',
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_coupons` */

/*Table structure for table `cwtaq_jshopping_currencies` */

DROP TABLE IF EXISTS `cwtaq_jshopping_currencies`;

CREATE TABLE `cwtaq_jshopping_currencies` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_currencies` */

insert  into `cwtaq_jshopping_currencies`(`currency_id`,`currency_name`,`currency_code`,`currency_code_iso`,`currency_code_num`,`currency_ordering`,`currency_value`,`currency_publish`) values (1,'Euro','EUR','EUR','978',1,'1.000000',1);

/*Table structure for table `cwtaq_jshopping_delivery_times` */

DROP TABLE IF EXISTS `cwtaq_jshopping_delivery_times`;

CREATE TABLE `cwtaq_jshopping_delivery_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_delivery_times` */

/*Table structure for table `cwtaq_jshopping_free_attr` */

DROP TABLE IF EXISTS `cwtaq_jshopping_free_attr`;

CREATE TABLE `cwtaq_jshopping_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_free_attr` */

/*Table structure for table `cwtaq_jshopping_import_export` */

DROP TABLE IF EXISTS `cwtaq_jshopping_import_export`;

CREATE TABLE `cwtaq_jshopping_import_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_import_export` */

insert  into `cwtaq_jshopping_import_export`(`id`,`name`,`alias`,`description`,`params`,`endstart`,`steptime`) values (1,'Simple Export','simpleexport','Simple Export in CSV iso-8859-1','filename=export',0,1);
insert  into `cwtaq_jshopping_import_export`(`id`,`name`,`alias`,`description`,`params`,`endstart`,`steptime`) values (2,'Simple Import','simpleimport','Simple Import in CSV iso-8859-1','',0,0);

/*Table structure for table `cwtaq_jshopping_languages` */

DROP TABLE IF EXISTS `cwtaq_jshopping_languages`;

CREATE TABLE `cwtaq_jshopping_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_languages` */

insert  into `cwtaq_jshopping_languages`(`id`,`language`,`name`,`publish`,`ordering`) values (1,'en-GB','English',1,0);
insert  into `cwtaq_jshopping_languages`(`id`,`language`,`name`,`publish`,`ordering`) values (2,'ru-RU','Russian',1,0);

/*Table structure for table `cwtaq_jshopping_manufacturers` */

DROP TABLE IF EXISTS `cwtaq_jshopping_manufacturers`;

CREATE TABLE `cwtaq_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_manufacturers` */

/*Table structure for table `cwtaq_jshopping_order_history` */

DROP TABLE IF EXISTS `cwtaq_jshopping_order_history`;

CREATE TABLE `cwtaq_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_order_history` */

/*Table structure for table `cwtaq_jshopping_order_item` */

DROP TABLE IF EXISTS `cwtaq_jshopping_order_item`;

CREATE TABLE `cwtaq_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(12,2) NOT NULL,
  `product_tax` decimal(12,2) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` float(8,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_order_item` */

/*Table structure for table `cwtaq_jshopping_order_status` */

DROP TABLE IF EXISTS `cwtaq_jshopping_order_status`;

CREATE TABLE `cwtaq_jshopping_order_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_order_status` */

insert  into `cwtaq_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (1,'P','Pending','Offen','Pending');
insert  into `cwtaq_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (2,'C','Confirmed','Bestätigt','Confirmed');
insert  into `cwtaq_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (3,'X','Cancelled','Abgebrochen','Cancelled');
insert  into `cwtaq_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (4,'R','Refunded','Gutschrift','Refunded');
insert  into `cwtaq_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (5,'S','Shipped','Gesendet','Shipped');
insert  into `cwtaq_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (6,'O','Paid','Bezahlt','Paid');
insert  into `cwtaq_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values (7,'F','Complete','Abgeschlossen','Complete');

/*Table structure for table `cwtaq_jshopping_orders` */

DROP TABLE IF EXISTS `cwtaq_jshopping_orders`;

CREATE TABLE `cwtaq_jshopping_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(12,2) NOT NULL,
  `order_subtotal` decimal(12,2) NOT NULL,
  `order_tax` decimal(12,2) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(12,2) NOT NULL,
  `order_payment` decimal(12,2) NOT NULL,
  `order_discount` decimal(12,2) NOT NULL,
  `shipping_tax` decimal(8,2) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(8,2) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_orders` */

/*Table structure for table `cwtaq_jshopping_payment_method` */

DROP TABLE IF EXISTS `cwtaq_jshopping_payment_method`;

CREATE TABLE `cwtaq_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_payment_method` */

insert  into `cwtaq_jshopping_payment_method`(`payment_id`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`name_ru-RU`,`description_ru-RU`) values (1,'bank','pm_bank',1,1,'',1,'4.00',0,1,'',0,'Cash on delivery','','Nachnahme','','Cash on delivery','');
insert  into `cwtaq_jshopping_payment_method`(`payment_id`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`name_ru-RU`,`description_ru-RU`) values (2,'PO','pm_purchase_order',1,2,'',1,'0.00',0,1,'',1,'Advance payment','','Vorauskasse','','Advance payment','');
insert  into `cwtaq_jshopping_payment_method`(`payment_id`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`name_ru-RU`,`description_ru-RU`) values (3,'paypal','pm_paypal',1,3,'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0',2,'0.00',0,1,'',0,'Paypal','','Paypal','','Paypal','');
insert  into `cwtaq_jshopping_payment_method`(`payment_id`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`name_ru-RU`,`description_ru-RU`) values (4,'debit','pm_debit',1,4,'',1,'0.00',0,1,'',0,'Debit','Please insert your bankdata.','Lastschrift','Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.','Debit','Please insert your bankdata.');
insert  into `cwtaq_jshopping_payment_method`(`payment_id`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`name_ru-RU`,`description_ru-RU`) values (5,'ST','pm_sofortueberweisung',0,5,'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n',2,'0.00',0,1,'',0,'Sofortueberweisung','','Sofortueberweisung','','Sofortueberweisung','');

/*Table structure for table `cwtaq_jshopping_product_labels` */

DROP TABLE IF EXISTS `cwtaq_jshopping_product_labels`;

CREATE TABLE `cwtaq_jshopping_product_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_product_labels` */

insert  into `cwtaq_jshopping_product_labels`(`id`,`name`,`image`) values (1,'New','new.png');
insert  into `cwtaq_jshopping_product_labels`(`id`,`name`,`image`) values (2,'Sale','sale.png');

/*Table structure for table `cwtaq_jshopping_products` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products`;

CREATE TABLE `cwtaq_jshopping_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(128) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(12,2) NOT NULL,
  `product_buy_price` decimal(12,2) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `product_thumb_image` varchar(255) NOT NULL,
  `product_name_image` varchar(255) NOT NULL,
  `product_full_image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products` */

insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (14,0,'',1,0,'','2012-12-21 22:10:42','2013-06-07 03:25:57',1,1,1,'default','','0.00','0.00','120.000000','120.00',0,'0.0000','thumb_7b3d662f3623a726092b4b364472fa3a.JPG','7b3d662f3623a726092b4b364472fa3a.JPG','full_7b3d662f3623a726092b4b364472fa3a.JPG',0,0,3,0.00,0,0,19,'0.0000',0,0,0,1,'','','','','','','','Скайп','skype','Saccharification mash saccharification final gravity real ale becher, chocolate malt, beer berliner weisse. cask conditioning priming kolsch conditioning priming, malt extract biere de garde. ester original gravity mash crystal malt lauter tun primary fermentation bacterial. lagering heat exchanger abbey hops, aau brewhouse.','<p>Что в клетке сидит мой пернатый друг на. Огрел кукушонка стихотворение написано в ледяную воду.. смотрели друг хомячок было. Сам не пожалел для друга ни последнего патрона ни последнего куска хлеба. Луч солнца и жену как перевозили революционеры свои листовки.в чемоданах. Объяснить, как очутился на сенатскую площадь поняли. Блаженно улыбался поняли: здесь была. Горницу вошел негр, румяный с двойной подошвой из-за. Послал русскому царю телеграмму заломов нес красное знамя, по моде женщина. Сенатскую площадь двор и жену. Полковник танцевал с изображением натюрморта. Был настоящим мужчиной и жену пока. Изергиль была маруся земле но. Бежала одевающаяся по моде женщина. Поводу чего все время вспоминал мать мог. Я бросился спать и огрел кукушонка обществе слышались не слышала. Ее на диване одной певчей птицы, кроме слова.</p>','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (15,0,'',1,0,'','2012-12-21 22:20:49','2013-01-12 16:53:33',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_da8126cef814f11dcf0d895d4e55f4fe.JPG','da8126cef814f11dcf0d895d4e55f4fe.JPG','full_da8126cef814f11dcf0d895d4e55f4fe.JPG',0,0,3,0.00,0,0,2,'0.0000',0,0,0,1,'','','','','','','','Мишень зеленая','target-green','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (16,0,'',1,0,'','2012-12-21 22:22:30','2013-05-10 02:14:42',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_0d7cc292ac745db9e5954e333b3383e7.JPG','0d7cc292ac745db9e5954e333b3383e7.JPG','full_0d7cc292ac745db9e5954e333b3383e7.JPG',0,0,3,0.00,0,0,5,'0.0000',0,0,0,1,'','','','','','','','Твиттер bird','flytweeterfly','Dry hopping aau alpha acid tulip glass carbonation, carbonation. balthazar, hydrometer terminal gravity dry stout bottle conditioning gravity units of bitterness. barleywine finishing hops hard cider;','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (17,0,'',1,0,'','2012-12-21 22:22:41','2013-05-10 02:14:58',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','full_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG',0,0,3,0.00,0,0,4,'0.0000',0,0,0,1,'','121221222241','','','','','','Твиттер','tweeter-literaly','Conditioning tank biere de garde reinheitsgebot brew kettle. shelf life sparge autolysis dry stout. reinheitsgebot racking cask conditioning carboy goblet mead tulip glass.','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (18,0,'',1,0,'','2012-12-21 22:28:06','2013-05-10 02:16:17',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_2720bd41cee7e773bb5ca34f97fdea98.JPG','2720bd41cee7e773bb5ca34f97fdea98.JPG','full_2720bd41cee7e773bb5ca34f97fdea98.JPG',0,0,3,0.00,0,0,3,'0.0000',0,0,0,1,'','','','','','','','Фейсбук','facebook','Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое.','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (19,0,'',1,0,'','2012-12-21 22:29:12','2013-05-10 02:16:35',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_16cc7d2801060e40ca4e955600b6cdc0.JPG','16cc7d2801060e40ca4e955600b6cdc0.JPG','full_16cc7d2801060e40ca4e955600b6cdc0.JPG',0,0,3,0.00,0,0,2,'0.0000',0,0,0,1,'','','','','','','','ВКонтакте','theb','Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой коричневый, выпуклый, разделенный дугообразными чешуйками живот, на верхушке которого еле держалось готовое вот-вот окончательно сползти одеяло.','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (20,0,'',1,0,'','2012-12-21 22:33:30','2013-01-12 16:48:30',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_5af27f67f65ec4cdee9026064e78ed68.JPG','5af27f67f65ec4cdee9026064e78ed68.JPG','full_5af27f67f65ec4cdee9026064e78ed68.JPG',0,0,3,0.00,0,0,33,'0.0000',0,0,0,1,'','','','','','','','Мишень желтая','autumn-target','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (21,0,'',1,0,'','2012-12-21 22:39:13','2012-12-21 22:39:13',1,1,1,'default','','0.00','0.00','60.000000','60.00',0,'0.0000','thumb_96b9352e4ec68fa2662018894d25eda6.JPG','96b9352e4ec68fa2662018894d25eda6.JPG','full_96b9352e4ec68fa2662018894d25eda6.JPG',0,0,3,0.00,0,0,33,'0.0000',0,0,0,1,'','','','','','','','Мягкое место','softplace','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (22,0,'',1,0,'','2012-12-21 22:41:23','2013-01-12 16:48:58',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_e30748901f3a4632dcaf9033a8183160.JPG','e30748901f3a4632dcaf9033a8183160.JPG','full_e30748901f3a4632dcaf9033a8183160.JPG',0,0,3,0.00,0,0,5,'0.0000',0,0,0,1,'','','','','','','','Мишень красная','redtarget','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (23,0,'',1,0,'','2012-12-21 22:44:43','2012-12-21 22:44:43',1,1,1,'default','','0.00','0.00','60.000000','60.00',0,'0.0000','thumb_e60b22e82bd554908654aa959c8482ad.JPG','e60b22e82bd554908654aa959c8482ad.JPG','full_e60b22e82bd554908654aa959c8482ad.JPG',0,0,3,0.00,0,0,1,'0.0000',0,0,0,1,'','','','','','','','Квадрат','square','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (24,0,'',1,0,'','2012-12-21 22:45:57','2012-12-21 22:45:57',1,1,1,'default','','0.00','0.00','60.000000','60.00',0,'0.0000','thumb_f271b6328b643ee25d4c4a9855f523ac.JPG','f271b6328b643ee25d4c4a9855f523ac.JPG','full_f271b6328b643ee25d4c4a9855f523ac.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Треугольник','triangle','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (25,0,'',1,0,'','2012-12-21 22:47:30','2012-12-21 22:47:30',1,1,1,'default','','0.00','0.00','60.000000','60.00',0,'0.0000','thumb_42f6f7f008a18a781a3f17cdaba0ee5f.JPG','42f6f7f008a18a781a3f17cdaba0ee5f.JPG','full_42f6f7f008a18a781a3f17cdaba0ee5f.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Круг','circle','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (26,0,'',1,0,'','2012-12-21 22:50:28','2012-12-21 22:50:28',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_01ee3e3f116388b98ecf50f88a35f6a2.JPG','01ee3e3f116388b98ecf50f88a35f6a2.JPG','full_01ee3e3f116388b98ecf50f88a35f6a2.JPG',0,0,3,0.00,0,0,3,'0.0000',0,0,0,1,'','','','','','','','Black\'n\'white','black-and-white','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (27,0,'',1,0,'','2012-12-21 22:52:13','2012-12-21 22:52:37',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_970e42a83da4bfb543ad7832eb7d6715.JPG','970e42a83da4bfb543ad7832eb7d6715.JPG','full_970e42a83da4bfb543ad7832eb7d6715.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Черно-красный','black-and-red','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (28,0,'',1,0,'','2012-12-21 22:53:55','2012-12-21 22:53:55',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_3b06c8ba315db9538c78e6e909ce7dfb.JPG','3b06c8ba315db9538c78e6e909ce7dfb.JPG','full_3b06c8ba315db9538c78e6e909ce7dfb.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Бело-черный','white-and-black','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (29,0,'',1,0,'','2012-12-21 22:55:23','2012-12-21 22:55:23',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_b95924b16825f0405d1e5cf504188eeb.JPG','b95924b16825f0405d1e5cf504188eeb.JPG','full_b95924b16825f0405d1e5cf504188eeb.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Красно-черный','red-and-black','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (30,0,'',1,0,'','2012-12-21 22:56:46','2012-12-21 22:56:46',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_19245a5e2812988b12399cdd9fd97440.JPG','19245a5e2812988b12399cdd9fd97440.JPG','full_19245a5e2812988b12399cdd9fd97440.JPG',0,0,3,0.00,0,0,1,'0.0000',0,0,0,1,'','','','','','','','Красно-белый','red-aand-white','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (31,0,'',1,0,'','2012-12-21 22:58:15','2012-12-21 22:58:15',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_e35c32c93a9c061f665f38a23ac339ab.JPG','e35c32c93a9c061f665f38a23ac339ab.JPG','full_e35c32c93a9c061f665f38a23ac339ab.JPG',0,0,3,0.00,0,0,4,'0.0000',0,0,0,1,'','','','','','','','Бело-красный','white-and-red','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (32,0,'',1,0,'','2012-12-21 23:00:24','2013-01-12 16:49:37',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_40b54a81904e18e0b915d707c8611e9a.JPG','40b54a81904e18e0b915d707c8611e9a.JPG','full_40b54a81904e18e0b915d707c8611e9a.JPG',0,0,3,0.00,0,0,11,'0.0000',0,0,0,1,'','','','','','','','Облако','cloud','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (33,0,'',1,0,'','2012-12-22 00:10:25','2012-12-22 00:10:25',1,1,1,'default','','0.00','0.00','60.000000','60.00',0,'0.0000','thumb_80b8a06eef4b3d90e5cf501946b15c31.JPG','80b8a06eef4b3d90e5cf501946b15c31.JPG','full_80b8a06eef4b3d90e5cf501946b15c31.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Спика','spica','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (34,0,'',1,0,'','2012-12-22 00:11:38','2013-05-10 02:17:15',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_2567a407fa2143fc141d183429921de0.JPG','2567a407fa2143fc141d183429921de0.JPG','full_2567a407fa2143fc141d183429921de0.JPG',0,0,3,0.00,0,0,13,'0.0000',0,0,0,1,'','','','','','','','Ctrl','ctrl','Его многочисленные, убого тонкие по сравнению с остальным телом ножки беспомощно копошились у него перед глазами.','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (35,0,'',1,0,'','2012-12-22 00:12:23','2013-05-10 02:17:27',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_4bbc43419a19a8d3151cf61e4a9b2094.JPG','4bbc43419a19a8d3151cf61e4a9b2094.JPG','full_4bbc43419a19a8d3151cf61e4a9b2094.JPG',0,0,3,0.00,0,0,11,'0.0000',0,0,0,1,'','','','','','','','Alt','alt','Его комната, настоящая, разве что слишком маленькая, но обычная комната, мирно покоилась в своих четырех хорошо знакомых стенах.','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (36,0,'',1,0,'','2012-12-22 00:13:15','2013-05-10 02:17:43',1,1,1,'default','','0.00','0.00','80.000000','80.00',0,'0.0000','thumb_480bff4608f1515b6dc012e06b798d49.JPG','480bff4608f1515b6dc012e06b798d49.JPG','full_480bff4608f1515b6dc012e06b798d49.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Del','del','Над столом, где были разложены распакованные образцы сукон – Замза был коммивояжером, – висел портрет, который он недавно вырезал из иллюстрированного журнала и вставил в красивую золоченую рамку.','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (37,0,'',1,0,'','2012-12-22 00:16:41','2013-05-10 02:17:55',1,1,1,'default','','0.00','0.00','200.000000','200.00',0,'0.0000','thumb_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','full_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG',0,0,3,0.00,0,0,0,'0.0000',0,0,0,1,'','','','','','','','Ctrl+Alt+Del','reboot','На портрете была изображена дама в меховой шляпе и боа, она сидела очень прямо и протягивала зрителю тяжелую меховую муфту, в которой целиком исчезала ее рука.','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (38,0,'',1,0,'','2012-12-22 00:39:05','2013-01-12 16:51:38',1,1,1,'default','','0.00','0.00','350.000000','350.00',0,'0.0000','thumb_1d8bda1e135e3d49c7540a5880b97351.JPG','1d8bda1e135e3d49c7540a5880b97351.JPG','full_1d8bda1e135e3d49c7540a5880b97351.JPG',0,0,3,0.00,0,0,9,'0.0000',0,0,0,1,'','','','','','','','Диван-лежанка для собаки','dog-couch','','','','','');
insert  into `cwtaq_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values (39,0,'',1,0,'','2012-12-22 00:56:39','2013-01-12 16:58:36',1,1,1,'default','','0.00','0.00','180.000000','180.00',0,'0.0000','thumb_493b5488e1a85ee455e10855bdf28f19.JPG','493b5488e1a85ee455e10855bdf28f19.JPG','full_493b5488e1a85ee455e10855bdf28f19.JPG',0,0,3,0.00,0,0,31,'0.0000',0,0,0,1,'','','','','','','','Пуфики с шариками','color-puf','','<p>Пуфик с шариками пенополистирола.</p>\r\n<p>Диаметр 50см</p>\r\n<p>Высота 90см</p>','','','');

/*Table structure for table `cwtaq_jshopping_products_attr` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_attr`;

CREATE TABLE `cwtaq_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `old_price` decimal(12,2) NOT NULL,
  `count` int(11) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  PRIMARY KEY (`product_attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_attr` */

/*Table structure for table `cwtaq_jshopping_products_attr2` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_attr2`;

CREATE TABLE `cwtaq_jshopping_products_attr2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_attr2` */

/*Table structure for table `cwtaq_jshopping_products_extra_field_groups` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_extra_field_groups`;

CREATE TABLE `cwtaq_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_extra_field_groups` */

/*Table structure for table `cwtaq_jshopping_products_extra_field_values` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_extra_field_values`;

CREATE TABLE `cwtaq_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_extra_field_values` */

/*Table structure for table `cwtaq_jshopping_products_extra_fields` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_extra_fields`;

CREATE TABLE `cwtaq_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_extra_fields` */

/*Table structure for table `cwtaq_jshopping_products_files` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_files`;

CREATE TABLE `cwtaq_jshopping_products_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_files` */

/*Table structure for table `cwtaq_jshopping_products_free_attr` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_free_attr`;

CREATE TABLE `cwtaq_jshopping_products_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_free_attr` */

/*Table structure for table `cwtaq_jshopping_products_images` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_images`;

CREATE TABLE `cwtaq_jshopping_products_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `image_thumb` varchar(255) NOT NULL DEFAULT '',
  `image_name` varchar(255) NOT NULL DEFAULT '',
  `image_full` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_images` */

insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (21,14,'thumb_7b3d662f3623a726092b4b364472fa3a.JPG','7b3d662f3623a726092b4b364472fa3a.JPG','full_7b3d662f3623a726092b4b364472fa3a.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (22,14,'thumb_be076a9cdd3f0ef33f3137519070c342.JPG','be076a9cdd3f0ef33f3137519070c342.JPG','full_be076a9cdd3f0ef33f3137519070c342.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (23,15,'thumb_da8126cef814f11dcf0d895d4e55f4fe.JPG','da8126cef814f11dcf0d895d4e55f4fe.JPG','full_da8126cef814f11dcf0d895d4e55f4fe.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (24,15,'thumb_d7245f59d2d405b969637ae31c369073.JPG','d7245f59d2d405b969637ae31c369073.JPG','full_d7245f59d2d405b969637ae31c369073.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (25,15,'thumb_61cc6e412c1b452fb22e143ed828adf2.JPG','61cc6e412c1b452fb22e143ed828adf2.JPG','full_61cc6e412c1b452fb22e143ed828adf2.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (26,16,'thumb_0d7cc292ac745db9e5954e333b3383e7.JPG','0d7cc292ac745db9e5954e333b3383e7.JPG','full_0d7cc292ac745db9e5954e333b3383e7.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (27,16,'thumb_fcbdb3e61c1f386239aa032b0c29959d.JPG','fcbdb3e61c1f386239aa032b0c29959d.JPG','full_fcbdb3e61c1f386239aa032b0c29959d.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (30,17,'thumb_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','full_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (31,17,'thumb_f0d797541feb36091001cf5cacb5beab.JPG','f0d797541feb36091001cf5cacb5beab.JPG','full_f0d797541feb36091001cf5cacb5beab.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (32,18,'thumb_2720bd41cee7e773bb5ca34f97fdea98.JPG','2720bd41cee7e773bb5ca34f97fdea98.JPG','full_2720bd41cee7e773bb5ca34f97fdea98.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (33,18,'thumb_9cc871e1c0c47e74cdffeef9ce5e67db.JPG','9cc871e1c0c47e74cdffeef9ce5e67db.JPG','full_9cc871e1c0c47e74cdffeef9ce5e67db.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (34,19,'thumb_16cc7d2801060e40ca4e955600b6cdc0.JPG','16cc7d2801060e40ca4e955600b6cdc0.JPG','full_16cc7d2801060e40ca4e955600b6cdc0.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (35,19,'thumb_7c12462fd5b2dbfa179398417f5ccfb2.JPG','7c12462fd5b2dbfa179398417f5ccfb2.JPG','full_7c12462fd5b2dbfa179398417f5ccfb2.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (36,20,'thumb_5af27f67f65ec4cdee9026064e78ed68.JPG','5af27f67f65ec4cdee9026064e78ed68.JPG','full_5af27f67f65ec4cdee9026064e78ed68.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (37,20,'thumb_46fb9e73ed2825cee5e42bddc3714ecf.JPG','46fb9e73ed2825cee5e42bddc3714ecf.JPG','full_46fb9e73ed2825cee5e42bddc3714ecf.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (38,20,'thumb_02553d7d721c79786959958979573f46.JPG','02553d7d721c79786959958979573f46.JPG','full_02553d7d721c79786959958979573f46.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (39,21,'thumb_96b9352e4ec68fa2662018894d25eda6.JPG','96b9352e4ec68fa2662018894d25eda6.JPG','full_96b9352e4ec68fa2662018894d25eda6.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (40,21,'thumb_8e62119278f9b185dd4d848f3d7f8e53.JPG','8e62119278f9b185dd4d848f3d7f8e53.JPG','full_8e62119278f9b185dd4d848f3d7f8e53.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (41,21,'thumb_d2643b83d39d20ae8fc3aee210546e04.JPG','d2643b83d39d20ae8fc3aee210546e04.JPG','full_d2643b83d39d20ae8fc3aee210546e04.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (42,22,'thumb_e30748901f3a4632dcaf9033a8183160.JPG','e30748901f3a4632dcaf9033a8183160.JPG','full_e30748901f3a4632dcaf9033a8183160.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (43,22,'thumb_3f4430552753dc15f52b2b3d64040371.JPG','3f4430552753dc15f52b2b3d64040371.JPG','full_3f4430552753dc15f52b2b3d64040371.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (44,23,'thumb_e60b22e82bd554908654aa959c8482ad.JPG','e60b22e82bd554908654aa959c8482ad.JPG','full_e60b22e82bd554908654aa959c8482ad.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (45,23,'thumb_5399ab40de5cdf2c263f8e56acc469d7.JPG','5399ab40de5cdf2c263f8e56acc469d7.JPG','full_5399ab40de5cdf2c263f8e56acc469d7.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (46,24,'thumb_f271b6328b643ee25d4c4a9855f523ac.JPG','f271b6328b643ee25d4c4a9855f523ac.JPG','full_f271b6328b643ee25d4c4a9855f523ac.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (47,24,'thumb_0eb888953434fbc430f7cd0c03b32a54.JPG','0eb888953434fbc430f7cd0c03b32a54.JPG','full_0eb888953434fbc430f7cd0c03b32a54.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (48,25,'thumb_42f6f7f008a18a781a3f17cdaba0ee5f.JPG','42f6f7f008a18a781a3f17cdaba0ee5f.JPG','full_42f6f7f008a18a781a3f17cdaba0ee5f.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (49,25,'thumb_70d04722a18969ac25e8d0d143425eef.JPG','70d04722a18969ac25e8d0d143425eef.JPG','full_70d04722a18969ac25e8d0d143425eef.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (50,26,'thumb_01ee3e3f116388b98ecf50f88a35f6a2.JPG','01ee3e3f116388b98ecf50f88a35f6a2.JPG','full_01ee3e3f116388b98ecf50f88a35f6a2.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (51,26,'thumb_83051a22d195b8e25716a79f9dffda73.JPG','83051a22d195b8e25716a79f9dffda73.JPG','full_83051a22d195b8e25716a79f9dffda73.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (52,27,'thumb_970e42a83da4bfb543ad7832eb7d6715.JPG','970e42a83da4bfb543ad7832eb7d6715.JPG','full_970e42a83da4bfb543ad7832eb7d6715.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (53,27,'thumb_f0dce7ef871870bd43f2bf3e17274748.JPG','f0dce7ef871870bd43f2bf3e17274748.JPG','full_f0dce7ef871870bd43f2bf3e17274748.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (54,28,'thumb_3b06c8ba315db9538c78e6e909ce7dfb.JPG','3b06c8ba315db9538c78e6e909ce7dfb.JPG','full_3b06c8ba315db9538c78e6e909ce7dfb.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (55,28,'thumb_e7b7e7b15c2fefe1547bcec94c05514b.JPG','e7b7e7b15c2fefe1547bcec94c05514b.JPG','full_e7b7e7b15c2fefe1547bcec94c05514b.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (56,28,'thumb_5a4e4b61fa8534a5ec253ea5dea57fd2.JPG','5a4e4b61fa8534a5ec253ea5dea57fd2.JPG','full_5a4e4b61fa8534a5ec253ea5dea57fd2.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (57,29,'thumb_b95924b16825f0405d1e5cf504188eeb.JPG','b95924b16825f0405d1e5cf504188eeb.JPG','full_b95924b16825f0405d1e5cf504188eeb.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (58,29,'thumb_5f1990dab64c2457985c2f1ce387668d.JPG','5f1990dab64c2457985c2f1ce387668d.JPG','full_5f1990dab64c2457985c2f1ce387668d.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (59,29,'thumb_b39b47061d6d4d1fa0ea16076d88c2b2.JPG','b39b47061d6d4d1fa0ea16076d88c2b2.JPG','full_b39b47061d6d4d1fa0ea16076d88c2b2.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (60,30,'thumb_19245a5e2812988b12399cdd9fd97440.JPG','19245a5e2812988b12399cdd9fd97440.JPG','full_19245a5e2812988b12399cdd9fd97440.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (61,30,'thumb_cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG','cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG','full_cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (62,30,'thumb_fb947da2d2d2a2f251c04ceeeb10f578.JPG','fb947da2d2d2a2f251c04ceeeb10f578.JPG','full_fb947da2d2d2a2f251c04ceeeb10f578.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (63,31,'thumb_e35c32c93a9c061f665f38a23ac339ab.JPG','e35c32c93a9c061f665f38a23ac339ab.JPG','full_e35c32c93a9c061f665f38a23ac339ab.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (64,31,'thumb_324b445f60492743cf0215273245935e.JPG','324b445f60492743cf0215273245935e.JPG','full_324b445f60492743cf0215273245935e.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (65,32,'thumb_40b54a81904e18e0b915d707c8611e9a.JPG','40b54a81904e18e0b915d707c8611e9a.JPG','full_40b54a81904e18e0b915d707c8611e9a.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (66,32,'thumb_6911248a1ed819526ec025c21165db5d.JPG','6911248a1ed819526ec025c21165db5d.JPG','full_6911248a1ed819526ec025c21165db5d.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (67,32,'thumb_e74016cdf7588e8d5c4eae62ebe7d266.JPG','e74016cdf7588e8d5c4eae62ebe7d266.JPG','full_e74016cdf7588e8d5c4eae62ebe7d266.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (68,33,'thumb_80b8a06eef4b3d90e5cf501946b15c31.JPG','80b8a06eef4b3d90e5cf501946b15c31.JPG','full_80b8a06eef4b3d90e5cf501946b15c31.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (69,33,'thumb_439d18356c66d69dfead4e2a5c709aee.JPG','439d18356c66d69dfead4e2a5c709aee.JPG','full_439d18356c66d69dfead4e2a5c709aee.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (70,34,'thumb_2567a407fa2143fc141d183429921de0.JPG','2567a407fa2143fc141d183429921de0.JPG','full_2567a407fa2143fc141d183429921de0.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (73,35,'thumb_4bbc43419a19a8d3151cf61e4a9b2094.JPG','4bbc43419a19a8d3151cf61e4a9b2094.JPG','full_4bbc43419a19a8d3151cf61e4a9b2094.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (74,35,'thumb_4a409348029a99c5eb381aae9b60a3ee.JPG','4a409348029a99c5eb381aae9b60a3ee.JPG','full_4a409348029a99c5eb381aae9b60a3ee.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (75,36,'thumb_480bff4608f1515b6dc012e06b798d49.JPG','480bff4608f1515b6dc012e06b798d49.JPG','full_480bff4608f1515b6dc012e06b798d49.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (76,37,'thumb_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','full_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (77,38,'thumb_1d8bda1e135e3d49c7540a5880b97351.JPG','1d8bda1e135e3d49c7540a5880b97351.JPG','full_1d8bda1e135e3d49c7540a5880b97351.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (78,38,'thumb_2c4ac35e463f5cc6dd87de0f2d2977c0.JPG','2c4ac35e463f5cc6dd87de0f2d2977c0.JPG','full_2c4ac35e463f5cc6dd87de0f2d2977c0.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (79,38,'thumb_4c92eeffda0a96a33c3f17168b01a30d.JPG','4c92eeffda0a96a33c3f17168b01a30d.JPG','full_4c92eeffda0a96a33c3f17168b01a30d.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (80,38,'thumb_88a41996418232dd7a28fefcdd1b950b.JPG','88a41996418232dd7a28fefcdd1b950b.JPG','full_88a41996418232dd7a28fefcdd1b950b.JPG','',4);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (81,39,'thumb_7c0ee62d18ff0430f923aa843e3b8ec6.JPG','7c0ee62d18ff0430f923aa843e3b8ec6.JPG','full_7c0ee62d18ff0430f923aa843e3b8ec6.JPG','',1);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (82,39,'thumb_d43f07a307b2575d85e922eee83d1339.JPG','d43f07a307b2575d85e922eee83d1339.JPG','full_d43f07a307b2575d85e922eee83d1339.JPG','',2);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (83,39,'thumb_f586c357295aa379e543fb8ff498a300.JPG','f586c357295aa379e543fb8ff498a300.JPG','full_f586c357295aa379e543fb8ff498a300.JPG','',3);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (84,39,'thumb_493b5488e1a85ee455e10855bdf28f19.JPG','493b5488e1a85ee455e10855bdf28f19.JPG','full_493b5488e1a85ee455e10855bdf28f19.JPG','',4);
insert  into `cwtaq_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values (85,39,'thumb_b9adeafde9792fab292035c68b5b53dc.JPG','b9adeafde9792fab292035c68b5b53dc.JPG','full_b9adeafde9792fab292035c68b5b53dc.JPG','',5);

/*Table structure for table `cwtaq_jshopping_products_prices` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_prices`;

CREATE TABLE `cwtaq_jshopping_products_prices` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_prices` */

/*Table structure for table `cwtaq_jshopping_products_relations` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_relations`;

CREATE TABLE `cwtaq_jshopping_products_relations` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_related_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_relations` */

/*Table structure for table `cwtaq_jshopping_products_reviews` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_reviews`;

CREATE TABLE `cwtaq_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_reviews` */

/*Table structure for table `cwtaq_jshopping_products_to_categories` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_to_categories`;

CREATE TABLE `cwtaq_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_to_categories` */

insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (14,7,1);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (15,10,1);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (16,7,2);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (17,7,3);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (18,7,4);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (19,7,5);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (20,10,2);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (21,10,3);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (22,10,4);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (23,2,1);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (24,2,2);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (25,2,3);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (26,8,1);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (27,8,2);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (28,8,3);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (29,8,4);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (30,8,5);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (31,8,6);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (32,10,5);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (33,6,1);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (34,7,6);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (35,7,7);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (36,7,8);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (37,7,9);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (38,12,1);
insert  into `cwtaq_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values (39,13,1);

/*Table structure for table `cwtaq_jshopping_products_videos` */

DROP TABLE IF EXISTS `cwtaq_jshopping_products_videos`;

CREATE TABLE `cwtaq_jshopping_products_videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `video_name` varchar(255) NOT NULL DEFAULT '',
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_products_videos` */

/*Table structure for table `cwtaq_jshopping_shipping_ext_calc` */

DROP TABLE IF EXISTS `cwtaq_jshopping_shipping_ext_calc`;

CREATE TABLE `cwtaq_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_shipping_ext_calc` */

insert  into `cwtaq_jshopping_shipping_ext_calc`(`id`,`name`,`alias`,`description`,`params`,`shipping_method`,`published`,`ordering`) values (1,'StandartWeight','sm_standart_weight','StandartWeight','','',1,1);

/*Table structure for table `cwtaq_jshopping_shipping_method` */

DROP TABLE IF EXISTS `cwtaq_jshopping_shipping_method`;

CREATE TABLE `cwtaq_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_shipping_method` */

insert  into `cwtaq_jshopping_shipping_method`(`shipping_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`published`,`payments`,`image`,`ordering`,`name_ru-RU`,`description_ru-RU`) values (1,'Standard','','Standardversand','',1,'','',1,'Standard','');
insert  into `cwtaq_jshopping_shipping_method`(`shipping_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`published`,`payments`,`image`,`ordering`,`name_ru-RU`,`description_ru-RU`) values (2,'Express','','Express','',1,'','',2,'Express','');

/*Table structure for table `cwtaq_jshopping_shipping_method_price` */

DROP TABLE IF EXISTS `cwtaq_jshopping_shipping_method_price`;

CREATE TABLE `cwtaq_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(12,2) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(12,2) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`sh_pr_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_shipping_method_price` */

insert  into `cwtaq_jshopping_shipping_method_price`(`sh_pr_method_id`,`shipping_method_id`,`shipping_tax_id`,`shipping_stand_price`,`package_tax_id`,`package_stand_price`,`delivery_times_id`,`params`) values (1,1,1,'10.00',1,'0.00',0,'');
insert  into `cwtaq_jshopping_shipping_method_price`(`sh_pr_method_id`,`shipping_method_id`,`shipping_tax_id`,`shipping_stand_price`,`package_tax_id`,`package_stand_price`,`delivery_times_id`,`params`) values (2,2,1,'25.00',1,'0.00',0,'');

/*Table structure for table `cwtaq_jshopping_shipping_method_price_countries` */

DROP TABLE IF EXISTS `cwtaq_jshopping_shipping_method_price_countries`;

CREATE TABLE `cwtaq_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_shipping_method_price_countries` */

insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (1,239,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (2,238,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (3,237,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (4,236,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (5,235,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (6,234,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (7,233,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (8,232,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (9,231,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (10,230,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (11,229,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (12,228,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (13,227,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (14,226,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (15,225,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (16,224,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (17,223,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (18,222,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (19,221,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (20,220,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (21,219,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (22,218,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (23,217,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (24,216,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (25,215,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (26,214,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (27,213,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (28,212,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (29,211,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (30,210,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (31,209,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (32,208,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (33,207,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (34,206,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (35,205,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (36,204,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (37,203,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (38,202,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (39,201,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (40,200,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (41,199,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (42,198,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (43,197,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (44,196,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (45,195,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (46,194,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (47,193,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (48,192,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (49,191,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (50,190,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (51,189,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (52,188,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (53,187,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (54,186,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (55,185,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (56,184,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (57,183,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (58,182,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (59,181,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (60,180,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (61,179,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (62,178,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (63,177,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (64,176,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (65,175,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (66,174,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (67,173,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (68,172,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (69,171,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (70,170,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (71,169,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (72,168,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (73,167,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (74,166,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (75,165,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (76,164,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (77,163,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (78,162,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (79,161,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (80,160,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (81,159,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (82,158,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (83,157,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (84,156,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (85,155,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (86,154,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (87,153,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (88,152,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (89,151,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (90,150,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (91,149,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (92,148,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (93,147,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (94,146,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (95,145,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (96,144,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (97,143,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (98,142,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (99,141,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (100,140,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (101,139,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (102,138,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (103,137,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (104,136,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (105,135,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (106,134,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (107,133,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (108,132,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (109,131,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (110,130,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (111,129,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (112,128,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (113,127,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (114,126,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (115,125,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (116,124,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (117,123,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (118,122,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (119,121,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (120,120,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (121,119,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (122,118,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (123,117,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (124,116,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (125,115,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (126,114,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (127,113,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (128,112,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (129,111,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (130,110,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (131,109,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (132,108,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (133,107,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (134,106,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (135,105,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (136,104,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (137,103,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (138,102,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (139,101,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (140,100,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (141,99,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (142,98,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (143,97,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (144,96,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (145,95,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (146,94,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (147,93,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (148,92,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (149,91,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (150,90,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (151,89,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (152,88,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (153,87,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (154,86,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (155,85,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (156,84,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (157,83,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (158,82,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (159,81,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (160,80,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (161,79,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (162,78,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (163,77,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (164,76,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (165,75,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (166,74,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (167,73,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (168,72,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (169,71,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (170,70,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (171,69,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (172,68,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (173,67,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (174,66,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (175,65,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (176,64,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (177,63,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (178,62,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (179,61,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (180,60,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (181,59,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (182,58,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (183,57,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (184,56,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (185,55,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (186,54,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (187,53,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (188,52,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (189,51,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (190,50,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (191,49,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (192,48,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (193,47,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (194,46,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (195,45,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (196,44,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (197,43,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (198,42,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (199,41,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (200,40,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (201,39,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (202,38,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (203,37,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (204,36,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (205,35,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (206,34,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (207,33,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (208,32,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (209,31,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (210,30,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (211,29,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (212,28,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (213,27,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (214,26,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (215,25,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (216,24,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (217,23,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (218,22,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (219,21,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (220,20,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (221,19,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (222,18,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (223,17,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (224,16,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (225,15,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (226,14,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (227,13,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (228,12,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (229,11,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (230,10,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (231,9,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (232,8,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (233,7,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (234,6,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (235,5,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (236,4,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (237,3,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (238,2,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (239,1,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (240,239,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (241,238,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (242,237,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (243,236,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (244,235,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (245,234,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (246,233,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (247,232,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (248,231,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (249,230,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (250,229,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (251,228,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (252,227,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (253,226,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (254,225,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (255,224,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (256,223,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (257,222,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (258,221,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (259,220,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (260,219,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (261,218,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (262,217,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (263,216,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (264,215,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (265,214,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (266,213,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (267,212,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (268,211,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (269,210,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (270,209,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (271,208,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (272,207,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (273,206,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (274,205,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (275,204,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (276,203,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (277,202,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (278,201,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (279,200,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (280,199,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (281,198,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (282,197,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (283,196,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (284,195,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (285,194,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (286,193,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (287,192,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (288,191,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (289,190,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (290,189,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (291,188,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (292,187,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (293,186,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (294,185,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (295,184,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (296,183,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (297,182,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (298,181,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (299,180,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (300,179,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (301,178,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (302,177,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (303,176,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (304,175,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (305,174,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (306,173,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (307,172,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (308,171,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (309,170,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (310,169,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (311,168,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (312,167,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (313,166,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (314,165,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (315,164,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (316,163,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (317,162,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (318,161,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (319,160,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (320,159,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (321,158,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (322,157,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (323,156,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (324,155,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (325,154,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (326,153,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (327,152,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (328,151,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (329,150,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (330,149,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (331,148,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (332,147,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (333,146,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (334,145,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (335,144,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (336,143,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (337,142,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (338,141,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (339,140,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (340,139,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (341,138,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (342,137,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (343,136,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (344,135,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (345,134,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (346,133,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (347,132,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (348,131,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (349,130,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (350,129,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (351,128,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (352,127,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (353,126,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (354,125,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (355,124,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (356,123,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (357,122,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (358,121,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (359,120,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (360,119,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (361,118,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (362,117,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (363,116,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (364,115,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (365,114,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (366,113,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (367,112,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (368,111,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (369,110,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (370,109,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (371,108,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (372,107,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (373,106,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (374,105,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (375,104,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (376,103,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (377,102,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (378,101,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (379,100,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (380,99,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (381,98,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (382,97,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (383,96,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (384,95,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (385,94,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (386,93,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (387,92,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (388,91,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (389,90,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (390,89,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (391,88,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (392,87,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (393,86,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (394,85,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (395,84,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (396,83,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (397,82,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (398,81,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (399,80,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (400,79,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (401,78,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (402,77,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (403,76,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (404,75,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (405,74,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (406,73,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (407,72,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (408,71,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (409,70,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (410,69,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (411,68,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (412,67,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (413,66,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (414,65,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (415,64,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (416,63,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (417,62,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (418,61,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (419,60,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (420,59,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (421,58,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (422,57,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (423,56,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (424,55,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (425,54,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (426,53,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (427,52,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (428,51,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (429,50,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (430,49,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (431,48,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (432,47,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (433,46,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (434,45,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (435,44,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (436,43,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (437,42,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (438,41,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (439,40,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (440,39,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (441,38,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (442,37,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (443,36,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (444,35,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (445,34,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (446,33,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (447,32,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (448,31,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (449,30,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (450,29,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (451,28,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (452,27,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (453,26,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (454,25,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (455,24,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (456,23,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (457,22,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (458,21,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (459,20,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (460,19,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (461,18,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (462,17,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (463,16,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (464,15,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (465,14,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (466,13,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (467,12,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (468,11,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (469,10,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (470,9,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (471,8,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (472,7,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (473,6,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (474,5,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (475,4,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (476,3,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (477,2,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (478,1,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (479,220,1);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (480,1,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (481,2,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (482,3,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (483,4,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (484,5,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (485,6,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (486,7,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (487,8,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (488,9,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (489,10,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (490,11,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (491,12,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (492,13,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (493,14,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (494,15,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (495,16,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (496,17,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (497,18,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (498,19,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (499,20,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (500,21,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (501,22,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (502,23,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (503,24,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (504,25,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (505,26,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (506,27,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (507,28,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (508,29,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (509,30,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (510,31,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (511,32,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (512,33,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (513,34,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (514,35,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (515,36,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (516,37,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (517,38,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (518,39,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (519,40,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (520,41,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (521,42,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (522,43,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (523,44,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (524,45,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (525,46,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (526,47,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (527,48,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (528,49,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (529,50,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (530,51,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (531,52,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (532,53,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (533,54,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (534,55,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (535,56,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (536,57,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (537,58,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (538,59,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (539,60,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (540,61,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (541,62,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (542,63,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (543,64,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (544,65,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (545,66,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (546,67,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (547,68,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (548,69,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (549,70,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (550,71,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (551,72,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (552,73,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (553,74,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (554,75,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (555,76,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (556,77,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (557,78,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (558,79,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (559,80,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (560,81,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (561,82,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (562,83,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (563,84,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (564,85,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (565,86,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (566,87,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (567,88,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (568,89,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (569,90,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (570,91,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (571,92,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (572,93,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (573,94,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (574,95,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (575,96,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (576,97,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (577,98,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (578,99,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (579,100,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (580,101,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (581,102,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (582,103,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (583,104,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (584,105,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (585,106,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (586,107,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (587,108,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (588,109,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (589,110,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (590,111,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (591,112,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (592,113,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (593,114,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (594,115,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (595,116,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (596,117,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (597,118,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (598,119,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (599,120,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (600,121,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (601,122,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (602,123,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (603,124,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (604,125,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (605,126,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (606,127,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (607,128,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (608,129,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (609,130,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (610,131,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (611,132,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (612,133,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (613,134,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (614,135,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (615,136,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (616,137,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (617,138,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (618,139,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (619,140,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (620,141,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (621,142,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (622,143,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (623,144,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (624,145,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (625,146,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (626,147,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (627,148,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (628,149,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (629,150,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (630,151,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (631,152,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (632,153,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (633,154,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (634,155,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (635,156,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (636,157,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (637,158,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (638,159,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (639,160,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (640,161,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (641,162,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (642,163,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (643,164,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (644,165,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (645,166,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (646,167,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (647,168,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (648,169,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (649,170,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (650,171,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (651,172,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (652,173,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (653,174,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (654,175,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (655,176,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (656,177,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (657,178,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (658,179,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (659,180,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (660,181,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (661,182,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (662,183,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (663,184,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (664,185,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (665,186,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (666,187,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (667,188,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (668,189,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (669,190,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (670,191,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (671,192,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (672,193,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (673,194,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (674,195,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (675,196,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (676,197,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (677,198,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (678,199,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (679,200,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (680,201,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (681,202,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (682,203,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (683,204,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (684,205,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (685,206,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (686,207,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (687,208,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (688,209,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (689,210,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (690,211,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (691,212,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (692,213,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (693,214,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (694,215,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (695,216,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (696,217,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (697,218,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (698,219,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (699,220,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (700,221,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (701,222,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (702,223,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (703,224,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (704,225,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (705,226,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (706,227,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (707,228,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (708,229,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (709,230,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (710,231,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (711,232,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (712,233,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (713,234,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (714,235,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (715,236,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (716,237,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (717,238,2);
insert  into `cwtaq_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values (718,239,2);

/*Table structure for table `cwtaq_jshopping_shipping_method_price_weight` */

DROP TABLE IF EXISTS `cwtaq_jshopping_shipping_method_price_weight`;

CREATE TABLE `cwtaq_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(12,2) NOT NULL,
  PRIMARY KEY (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_shipping_method_price_weight` */

insert  into `cwtaq_jshopping_shipping_method_price_weight`(`sh_pr_weight_id`,`sh_pr_method_id`,`shipping_price`,`shipping_weight_from`,`shipping_weight_to`,`shipping_package_price`) values (1,2,'2.00','0.0000','10.0000','0.00');

/*Table structure for table `cwtaq_jshopping_taxes` */

DROP TABLE IF EXISTS `cwtaq_jshopping_taxes`;

CREATE TABLE `cwtaq_jshopping_taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL DEFAULT '',
  `tax_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_taxes` */

insert  into `cwtaq_jshopping_taxes`(`tax_id`,`tax_name`,`tax_value`) values (1,'Normal','19.00');

/*Table structure for table `cwtaq_jshopping_taxes_ext` */

DROP TABLE IF EXISTS `cwtaq_jshopping_taxes_ext`;

CREATE TABLE `cwtaq_jshopping_taxes_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_taxes_ext` */

/*Table structure for table `cwtaq_jshopping_unit` */

DROP TABLE IF EXISTS `cwtaq_jshopping_unit`;

CREATE TABLE `cwtaq_jshopping_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_unit` */

insert  into `cwtaq_jshopping_unit`(`id`,`qty`,`name_de-DE`,`name_en-GB`,`name_ru-RU`) values (1,1,'Kg','Kg','Kg');
insert  into `cwtaq_jshopping_unit`(`id`,`qty`,`name_de-DE`,`name_en-GB`,`name_ru-RU`) values (2,1,'Liter','Liter','Liter');
insert  into `cwtaq_jshopping_unit`(`id`,`qty`,`name_de-DE`,`name_en-GB`,`name_ru-RU`) values (3,1,'St.','pcs.','pcs.');

/*Table structure for table `cwtaq_jshopping_usergroups` */

DROP TABLE IF EXISTS `cwtaq_jshopping_usergroups`;

CREATE TABLE `cwtaq_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_usergroups` */

insert  into `cwtaq_jshopping_usergroups`(`usergroup_id`,`usergroup_name`,`usergroup_discount`,`usergroup_description`,`usergroup_is_default`) values (1,'Default','0.00','Default',1);

/*Table structure for table `cwtaq_jshopping_users` */

DROP TABLE IF EXISTS `cwtaq_jshopping_users`;

CREATE TABLE `cwtaq_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `u_name` (`u_name`),
  KEY `usergroup_id` (`usergroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_users` */

insert  into `cwtaq_jshopping_users`(`user_id`,`usergroup_id`,`payment_id`,`shipping_id`,`u_name`,`title`,`f_name`,`l_name`,`m_name`,`firma_name`,`client_type`,`firma_code`,`tax_number`,`email`,`birthday`,`street`,`home`,`apartment`,`zip`,`city`,`state`,`country`,`phone`,`mobil_phone`,`fax`,`ext_field_1`,`ext_field_2`,`ext_field_3`,`delivery_adress`,`d_title`,`d_f_name`,`d_l_name`,`d_m_name`,`d_firma_name`,`d_email`,`d_birthday`,`d_street`,`d_home`,`d_apartment`,`d_zip`,`d_city`,`d_state`,`d_country`,`d_phone`,`d_mobil_phone`,`d_fax`,`d_ext_field_1`,`d_ext_field_2`,`d_ext_field_3`) values (42,1,1,1,'admin',1,'ertwertwtwewert','retwertwert','','ertwetr',0,'','','andreyalek@gmail.com','0000-00-00','gsdfgsdfgsdfg','','','45243523','ertwertwet','wertwertwertw',220,'234523523452','','','','','',0,0,'','','','','','0000-00-00','','','','','','',220,'','','','','','');
insert  into `cwtaq_jshopping_users`(`user_id`,`usergroup_id`,`payment_id`,`shipping_id`,`u_name`,`title`,`f_name`,`l_name`,`m_name`,`firma_name`,`client_type`,`firma_code`,`tax_number`,`email`,`birthday`,`street`,`home`,`apartment`,`zip`,`city`,`state`,`country`,`phone`,`mobil_phone`,`fax`,`ext_field_1`,`ext_field_2`,`ext_field_3`,`delivery_adress`,`d_title`,`d_f_name`,`d_l_name`,`d_m_name`,`d_firma_name`,`d_email`,`d_birthday`,`d_street`,`d_home`,`d_apartment`,`d_zip`,`d_city`,`d_state`,`d_country`,`d_phone`,`d_mobil_phone`,`d_fax`,`d_ext_field_1`,`d_ext_field_2`,`d_ext_field_3`) values (43,1,0,0,'andrey',0,'','','','',0,'','','august-ru@mail.ru','0000-00-00','','','','','','',NULL,'','','','','','',0,0,'','','','','','0000-00-00','','','','','','',0,'','','','','','');

/*Table structure for table `cwtaq_jshopping_vendors` */

DROP TABLE IF EXISTS `cwtaq_jshopping_vendors`;

CREATE TABLE `cwtaq_jshopping_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_jshopping_vendors` */

insert  into `cwtaq_jshopping_vendors`(`id`,`shop_name`,`company_name`,`url`,`logo`,`adress`,`city`,`zip`,`state`,`country`,`f_name`,`l_name`,`middlename`,`phone`,`fax`,`email`,`benef_bank_info`,`benef_bic`,`benef_conto`,`benef_payee`,`benef_iban`,`benef_swift`,`interm_name`,`interm_swift`,`identification_number`,`tax_number`,`additional_information`,`user_id`,`main`,`publish`) values (1,'Shop name','Company','','','Address','City','Postal Code ','State',81,'First name ','Last name','','00000000','00000000','email@email.com','test','test','test','test','test','test','test','test','','','Additional information',0,1,1);

/*Table structure for table `cwtaq_languages` */

DROP TABLE IF EXISTS `cwtaq_languages`;

CREATE TABLE `cwtaq_languages` (
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

/*Data for the table `cwtaq_languages` */

insert  into `cwtaq_languages`(`lang_id`,`lang_code`,`title`,`title_native`,`sef`,`image`,`description`,`metakey`,`metadesc`,`sitename`,`published`,`access`,`ordering`) values (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);

/*Table structure for table `cwtaq_menu` */

DROP TABLE IF EXISTS `cwtaq_menu`;

CREATE TABLE `cwtaq_menu` (
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
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_menu` */

insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,85,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',39,40,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',33,38,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',34,35,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',36,37,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',29,30,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',39,40,0,'*',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (101,'hidden','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',81,82,1,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (102,'main','JoomShopping','joomshopping','','joomshopping','index.php?option=com_jshopping','component',0,1,1,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_logo_s.png',0,'',41,58,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (103,'main','categories','categories','','joomshopping/categories','index.php?option=com_jshopping&controller=categories&catid=0','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_categories_s.png',0,'',42,43,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (104,'main','products','products','','joomshopping/products','index.php?option=com_jshopping&controller=products&category_id=0','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_products_s.png',0,'',44,45,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (105,'main','orders','orders','','joomshopping/orders','index.php?option=com_jshopping&controller=orders','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_orders_s.png',0,'',46,47,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (106,'main','clients','clients','','joomshopping/clients','index.php?option=com_jshopping&controller=users','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_users_s.png',0,'',48,49,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (107,'main','options','options','','joomshopping/options','index.php?option=com_jshopping&controller=other','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_options_s.png',0,'',50,51,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (108,'main','configuration','configuration','','joomshopping/configuration','index.php?option=com_jshopping&controller=config','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_configuration_s.png',0,'',52,53,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (109,'main','install-and-update','install-and-update','','joomshopping/install-and-update','index.php?option=com_jshopping&controller=update','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_update_s.png',0,'',54,55,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (110,'main','about-as','about-as','','joomshopping/about-as','index.php?option=com_jshopping&controller=info','component',0,102,2,10000,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_info_s.png',0,'',56,57,0,'',1);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (111,'mainmenu','Подушки','pillows','','pillows','index.php?option=com_jshopping&controller=category&task=view&category_id=14&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,1,1,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,72,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (112,'mainmenu','Футболки','tshirts','','tshirts','index.php?option=com_jshopping&controller=category&task=view&category_id=15&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,1,1,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',73,74,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (113,'mainmenu','Сумки','bags','','bags','index.php?option=com_jshopping&controller=category&task=view&category_id=16&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,1,1,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',75,78,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (114,'mainmenu','О нас ','about','','about','index.php?option=com_content&view=article&id=1','component',0,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',79,80,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (115,'mainmenu','Pets','pets','','pillows/pets','index.php?option=com_jshopping&controller=products&task=products&category_id=12&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,111,2,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',60,61,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (116,'mainmenu','IT','it','','pillows/it','index.php?option=com_jshopping&controller=products&task=products&category_id=7&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,111,2,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',62,63,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (117,'mainmenu','Cool :)','cool','','pillows/cool','index.php?option=com_jshopping&controller=products&task=products&category_id=10&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,111,2,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',64,65,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (118,'mainmenu','Гламур','glamour','','pillows/glamour','index.php?option=com_jshopping&controller=products&task=products&category_id=8&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,111,2,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',66,67,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (119,'mainmenu','Мебель','furniture','','pillows/furniture','index.php?option=com_jshopping&controller=products&task=products&category_id=13&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,111,2,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',68,69,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (120,'mainmenu','Авто','auto','','pillows/auto','index.php?option=com_jshopping&controller=products&task=products&category_id=6&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,111,2,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',70,71,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (121,'mainmenu','Summer','summer','','bags/summer','index.php?option=com_jshopping&controller=products&task=products&category_id=17&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,113,2,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',76,77,0,'*',0);
insert  into `cwtaq_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (122,'hidden','Корзина','cart','','cart','index.php?option=com_jshopping&controller=cart&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,1,1,10000,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',83,84,0,'*',0);

/*Table structure for table `cwtaq_menu_types` */

DROP TABLE IF EXISTS `cwtaq_menu_types`;

CREATE TABLE `cwtaq_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_menu_types` */

insert  into `cwtaq_menu_types`(`id`,`menutype`,`title`,`description`) values (1,'mainmenu','Main Menu','The main menu for the site');
insert  into `cwtaq_menu_types`(`id`,`menutype`,`title`,`description`) values (2,'hidden','Скрытое','');

/*Table structure for table `cwtaq_messages` */

DROP TABLE IF EXISTS `cwtaq_messages`;

CREATE TABLE `cwtaq_messages` (
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

/*Data for the table `cwtaq_messages` */

/*Table structure for table `cwtaq_messages_cfg` */

DROP TABLE IF EXISTS `cwtaq_messages_cfg`;

CREATE TABLE `cwtaq_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_messages_cfg` */

/*Table structure for table `cwtaq_modules` */

DROP TABLE IF EXISTS `cwtaq_modules`;

CREATE TABLE `cwtaq_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_modules` */

insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (1,'Меню главное (верх)','','',3,'apex-right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\" pull-right modrole-menu-main-top\",\"window_open\":\"\",\"layout\":\"lady:navbar\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (87,'Логотип','','<div><span class=\"logo\">YOmayka</span></div>',1,'apex-left',484,'2013-06-22 22:42:58','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (88,'Поиск','','',2,'apex-right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,0,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"lady:searchglass\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (89,'Меню второго уровня','','',1,'apex-bottom',484,'2013-06-10 21:35:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"2\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"lady:submenu\",\"moduleclass_sfx\":\" modrole-menu-main-sub\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (90,'Навигация','','',1,'breadcrumbs',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_breadcrumbs',1,0,'{\"showHere\":\"0\",\"showHome\":\"0\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\">\",\"layout\":\"lady:yomayka\",\"moduleclass_sfx\":\" modrole-breadcrumbs\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (91,'Навигация','','',1,'breadcrumbs',484,'2013-06-06 22:33:02','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,0,'{\"showHere\":\"0\",\"showHome\":\"0\",\"homeText\":\"\",\"showLast\":\"0\",\"separator\":\">\",\"layout\":\"lady:yomayka\",\"moduleclass_sfx\":\" modrole-breadcrumbs\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (92,'Контакты - футер','','<ul>\r\n  <li>\r\n    <a href=\"mailto:inbox@yomayka.com\">\r\n      <span class=\"icon-envelope\"></span><span>inbox@yomayka.com</span>\r\n    </a>\r\n  </li>\r\n</ul>',1,'footer-top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" modrole-contacts\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (93,'Соц сети - футер','','<ul>\r\n  <li>\r\n    <a href=\"vk.com/yomayka\">vk</a>\r\n  </li> \r\n</ul>  ',1,'footer-top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" modrole-socials\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (94,'Корзина','','<a class=\"icon-shopping-cart\" href=\"#\"></a>',1,'apex-right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" modrole-cart\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (95,'Jshopping Cart Ext.','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jshopping_cart_ext',1,1,'',0,'*');
insert  into `cwtaq_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (96,'Корзина','','',1,'apex-right',484,'2013-06-22 20:26:06','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_jshopping_cart_ext',1,0,'{\"show_count\":\"1\",\"moduleclass_sfx\":\" modrole-cart\"}',0,'*');

/*Table structure for table `cwtaq_modules_menu` */

DROP TABLE IF EXISTS `cwtaq_modules_menu`;

CREATE TABLE `cwtaq_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_modules_menu` */

insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (1,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (2,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (3,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (4,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (6,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (7,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (8,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (9,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (10,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (12,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (13,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (14,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (15,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (16,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (17,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (79,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (86,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (87,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (88,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (89,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (90,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (91,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (92,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (93,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (94,0);
insert  into `cwtaq_modules_menu`(`moduleid`,`menuid`) values (96,0);

/*Table structure for table `cwtaq_newsfeeds` */

DROP TABLE IF EXISTS `cwtaq_newsfeeds`;

CREATE TABLE `cwtaq_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_newsfeeds` */

/*Table structure for table `cwtaq_overrider` */

DROP TABLE IF EXISTS `cwtaq_overrider`;

CREATE TABLE `cwtaq_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_overrider` */

/*Table structure for table `cwtaq_redirect_links` */

DROP TABLE IF EXISTS `cwtaq_redirect_links`;

CREATE TABLE `cwtaq_redirect_links` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_redirect_links` */

insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (1,'http://localhost/yomayka/podushki','','http://localhost/yomayka/podushki','',2,0,'2013-05-28 20:09:32','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (2,'http://localhost/yomayka/pillows/pet','','','',1,0,'2013-05-30 06:26:48','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (3,'http://localhost/yomayka/yomana','','','',1,0,'2013-06-02 18:50:26','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (4,'http://localhost/yomayka/pillows/cool/autumn-target','','http://localhost/yomayka/pillows/cool','',3,0,'2013-06-06 23:26:08','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (5,'http://localhost/yomayka/pillows/it/products/products?category_id=7&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','','http://localhost/yomayka/pillows/it/ctrl','',1,0,'2013-06-06 23:56:42','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (6,'http://localhost/yomayka/pillows/cool/products/products?category_id=10&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','','http://localhost/yomayka/pillows/cool','',1,0,'2013-06-07 00:02:49','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (7,'http://localhost/yomayka/pillows/it/cart/view','','http://localhost/yomayka/pillows/it','',3,0,'2013-06-22 20:19:19','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (8,'http://localhost/yomayka//cart/view','','http://localhost/yomayka/pillows/it','',2,0,'2013-06-22 20:48:11','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (9,'http://localhost/yomayka/cart/view','','http://localhost/yomayka/pillows/it','',5,0,'2013-06-22 20:48:28','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (10,'http://localhost/yomayka/pillows/it/product/ajax_attrib_select_and_price/14?ajax=1&change_attr=0&qty=2','','http://localhost/yomayka/pillows/it/skype','',1,0,'2013-06-23 21:17:40','0000-00-00 00:00:00');
insert  into `cwtaq_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (11,'http://localhost/yomayka/pillows/it/skype','','http://localhost/yomayka/pillows/it','',1,0,'2013-06-23 21:35:06','0000-00-00 00:00:00');

/*Table structure for table `cwtaq_schemas` */

DROP TABLE IF EXISTS `cwtaq_schemas`;

CREATE TABLE `cwtaq_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_schemas` */

insert  into `cwtaq_schemas`(`extension_id`,`version_id`) values (700,'2.5.11');

/*Table structure for table `cwtaq_session` */

DROP TABLE IF EXISTS `cwtaq_session`;

CREATE TABLE `cwtaq_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_session` */

insert  into `cwtaq_session`(`session_id`,`client_id`,`guest`,`time`,`data`,`userid`,`username`,`usertype`) values ('383caeb492846632a53e6a1eff8c70a8',0,1,'1372023687','__default|a:16:{s:22:\"session.client.browser\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36\";s:15:\"session.counter\";i:45;s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:19:\"js_id_currency_orig\";s:1:\"1\";s:14:\"js_id_currency\";s:1:\"1\";s:19:\"js_history_sel_lang\";s:5:\"ru-RU\";s:15:\"js_prev_user_id\";i:0;s:22:\"jshop_checked_language\";a:2:{i:0;s:5:\"en-GB\";i:1;s:5:\"ru-RU\";}s:26:\"jshop_end_page_buy_product\";s:25:\"/yomayka/pillows/it/skype\";s:27:\"jshop_end_page_list_product\";s:19:\"/yomayka/pillows/it\";s:19:\"session.timer.start\";i:1372021530;s:18:\"session.timer.last\";i:1372023685;s:17:\"session.timer.now\";i:1372023686;s:18:\"product_back_value\";a:0:{}s:4:\"cart\";s:793:\"O:9:\"jshopCart\":10:{s:9:\"type_cart\";s:4:\"cart\";s:8:\"products\";a:1:{i:0;a:18:{s:8:\"quantity\";i:1;s:10:\"product_id\";i:14;s:11:\"category_id\";s:1:\"7\";s:3:\"tax\";s:5:\"19.00\";s:6:\"tax_id\";s:1:\"1\";s:12:\"product_name\";s:10:\"Скайп\";s:11:\"thumb_image\";s:42:\"thumb_7b3d662f3623a726092b4b364472fa3a.JPG\";s:17:\"delivery_times_id\";s:1:\"0\";s:3:\"ean\";s:0:\"\";s:10:\"attributes\";s:6:\"a:0:{}\";s:16:\"attributes_value\";a:0:{}s:12:\"extra_fields\";a:0:{}s:6:\"weight\";s:6:\"0.0000\";s:9:\"vendor_id\";s:1:\"1\";s:5:\"files\";s:6:\"a:0:{}\";s:14:\"freeattributes\";s:6:\"a:0:{}\";s:19:\"pid_check_qty_value\";s:4:\"P:14\";s:5:\"price\";d:120;}}s:13:\"count_product\";i:1;s:13:\"price_product\";d:120;s:4:\"summ\";i:0;s:9:\"rabatt_id\";i:0;s:12:\"rabatt_value\";i:0;s:11:\"rabatt_type\";i:0;s:11:\"rabatt_summ\";d:0;s:20:\"price_product_brutto\";d:120;}\";}',0,'','');

/*Table structure for table `cwtaq_template_styles` */

DROP TABLE IF EXISTS `cwtaq_template_styles`;

CREATE TABLE `cwtaq_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_template_styles` */

insert  into `cwtaq_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}');
insert  into `cwtaq_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (3,'atomic',0,'0','Atomic - Default','{}');
insert  into `cwtaq_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
insert  into `cwtaq_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
insert  into `cwtaq_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}');
insert  into `cwtaq_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (7,'lady',0,'1','lady - По умолчанию','{\"position1-width\":\"12\",\"position2-width\":\"12\",\"position3-width\":\"12\",\"position4-width\":\"12\",\"position5-width\":\"12\",\"position6-width\":\"12\",\"position7-width\":\"12\"}');

/*Table structure for table `cwtaq_update_categories` */

DROP TABLE IF EXISTS `cwtaq_update_categories`;

CREATE TABLE `cwtaq_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';

/*Data for the table `cwtaq_update_categories` */

/*Table structure for table `cwtaq_update_sites` */

DROP TABLE IF EXISTS `cwtaq_update_sites`;

CREATE TABLE `cwtaq_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

/*Data for the table `cwtaq_update_sites` */

insert  into `cwtaq_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`) values (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1371927532);
insert  into `cwtaq_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`) values (2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',0,1370294768);
insert  into `cwtaq_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`) values (3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1371927532);

/*Table structure for table `cwtaq_update_sites_extensions` */

DROP TABLE IF EXISTS `cwtaq_update_sites_extensions`;

CREATE TABLE `cwtaq_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

/*Data for the table `cwtaq_update_sites_extensions` */

insert  into `cwtaq_update_sites_extensions`(`update_site_id`,`extension_id`) values (1,700);
insert  into `cwtaq_update_sites_extensions`(`update_site_id`,`extension_id`) values (2,700);
insert  into `cwtaq_update_sites_extensions`(`update_site_id`,`extension_id`) values (3,600);
insert  into `cwtaq_update_sites_extensions`(`update_site_id`,`extension_id`) values (3,10004);

/*Table structure for table `cwtaq_updates` */

DROP TABLE IF EXISTS `cwtaq_updates`;

CREATE TABLE `cwtaq_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

/*Data for the table `cwtaq_updates` */

insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (1,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (2,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/id-ID_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (3,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/da-DK_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (4,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (5,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (6,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (7,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (8,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/fr-FR_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (9,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/it-IT_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (10,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/es-ES_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (11,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nl-NL_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (12,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/tr-TR_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (13,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/uk-UA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (14,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sk-SK_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (15,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (16,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/lv-LV_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (17,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (18,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (19,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nl-BE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (20,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/mk-MK_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (21,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ja-JP_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (22,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sr-YU_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (23,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ar-AA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (24,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/de-DE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (25,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.9.2','','http://update.joomla.org/language/details/nb-NO_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (26,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (27,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (28,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sr-RS_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (29,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (30,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (31,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/fa-IR_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (32,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (33,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/pl-PL_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (34,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (35,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (37,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (38,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/ca-ES_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (39,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (40,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/af-ZA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (41,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/zh-CN_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (42,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (43,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (44,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/fi-FI_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (45,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (46,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/zh-TW_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (47,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (48,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (49,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (50,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/hr-HR_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (51,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (52,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (53,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ta-IN_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (54,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (55,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/th-TH_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (56,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (57,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (58,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/ko-KR_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (59,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (60,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (61,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (62,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (63,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (64,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (65,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (66,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (67,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (68,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (69,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (70,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (71,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (72,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (73,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (74,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (75,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.11.2','','http://update.joomla.org/language/details/cs-CZ_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (76,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (77,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (78,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (79,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (80,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (81,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (82,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `cwtaq_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (83,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');

/*Table structure for table `cwtaq_user_notes` */

DROP TABLE IF EXISTS `cwtaq_user_notes`;

CREATE TABLE `cwtaq_user_notes` (
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

/*Data for the table `cwtaq_user_notes` */

/*Table structure for table `cwtaq_user_profiles` */

DROP TABLE IF EXISTS `cwtaq_user_profiles`;

CREATE TABLE `cwtaq_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

/*Data for the table `cwtaq_user_profiles` */

/*Table structure for table `cwtaq_user_usergroup_map` */

DROP TABLE IF EXISTS `cwtaq_user_usergroup_map`;

CREATE TABLE `cwtaq_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_user_usergroup_map` */

insert  into `cwtaq_user_usergroup_map`(`user_id`,`group_id`) values (484,8);

/*Table structure for table `cwtaq_usergroups` */

DROP TABLE IF EXISTS `cwtaq_usergroups`;

CREATE TABLE `cwtaq_usergroups` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_usergroups` */

insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (1,0,1,20,'Public');
insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (2,1,6,17,'Registered');
insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (3,2,7,14,'Author');
insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (4,3,8,11,'Editor');
insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (5,4,9,10,'Publisher');
insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (6,1,2,5,'Manager');
insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (7,6,3,4,'Administrator');
insert  into `cwtaq_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (8,1,18,19,'Super Users');

/*Table structure for table `cwtaq_users` */

DROP TABLE IF EXISTS `cwtaq_users`;

CREATE TABLE `cwtaq_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_users` */

insert  into `cwtaq_users`(`id`,`name`,`username`,`email`,`password`,`usertype`,`block`,`sendEmail`,`registerDate`,`lastvisitDate`,`activation`,`params`,`lastResetTime`,`resetCount`) values (484,'Super User','andrey','andreyalek@gmail.com','b2fa7060e9d39283b19cb1279fb8a214:wZrX588JdP8SPYu5q6GcmZCnYainnKYG','deprecated',0,1,'2013-05-28 19:12:35','2013-06-23 20:43:25','0','','0000-00-00 00:00:00',0);

/*Table structure for table `cwtaq_viewlevels` */

DROP TABLE IF EXISTS `cwtaq_viewlevels`;

CREATE TABLE `cwtaq_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `cwtaq_viewlevels` */

insert  into `cwtaq_viewlevels`(`id`,`title`,`ordering`,`rules`) values (1,'Public',0,'[1]');
insert  into `cwtaq_viewlevels`(`id`,`title`,`ordering`,`rules`) values (2,'Registered',1,'[6,2,8]');
insert  into `cwtaq_viewlevels`(`id`,`title`,`ordering`,`rules`) values (3,'Special',2,'[6,3,8]');

/*Table structure for table `cwtaq_weblinks` */

DROP TABLE IF EXISTS `cwtaq_weblinks`;

CREATE TABLE `cwtaq_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
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

/*Data for the table `cwtaq_weblinks` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
