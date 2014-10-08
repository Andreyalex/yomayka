/*
SQLyog Ultimate - MySQL GUI v8.21 
MySQL - 5.0.96-community : Database - advan383_dev
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `jos_assets` */

DROP TABLE IF EXISTS `jos_assets`;

CREATE TABLE `jos_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

/*Data for the table `jos_assets` */

insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('1','0','1','428','0','root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":[],\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('2','1','2','3','1','com_admin','com_admin','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('3','1','4','11','1','com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('4','1','12','13','1','com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('5','1','14','15','1','com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('6','1','16','17','1','com_config','com_config','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('7','1','18','87','1','com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('8','1','88','303','1','com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('9','1','304','305','1','com_cpanel','com_cpanel','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('10','1','306','307','1','com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('11','1','308','309','1','com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('12','1','310','311','1','com_login','com_login','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('13','1','312','313','1','com_mailto','com_mailto','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('14','1','314','315','1','com_massmail','com_massmail','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('15','1','316','317','1','com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1},\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('16','1','318','319','1','com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('17','1','37','38','1','com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('18','1','322','323','1','com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('19','1','324','331','1','com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('20','1','332','333','1','com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('21','1','334','335','1','com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('22','1','336','337','1','com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('23','1','338','339','1','com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('24','1','340','343','1','com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('25','1','344','361','1','com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1,\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('26','1','362','363','1','com_wrapper','com_wrapper','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('33','1','424','425','1','com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('34','8','105','110','2','com_content.category.9','Uncategorised','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('35','3','7','8','2','com_banners.category.10','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('36','7','23','24','2','com_contact.category.11','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('37','19','327','328','2','com_newsfeeds.category.12','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('38','25','351','352','2','com_weblinks.category.13','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('39','8','111','294','2','com_content.category.14','Sample Data-Articles','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('40','3','9','10','2','com_banners.category.15','Sample Data-Banners','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('41','7','25','86','2','com_contact.category.16','Sample Data-Contact','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('42','19','329','330','2','com_newsfeeds.category.17','Sample Data-Newsfeeds','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('43','25','353','360','2','com_weblinks.category.18','Sample Data-Weblinks','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('44','39','112','243','3','com_content.category.19','Joomla!','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('45','44','113','220','4','com_content.category.20','Extensions','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('46','45','114','129','5','com_content.category.21','Components','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('47','45','130','189','5','com_content.category.22','Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('48','45','190','201','5','com_content.category.23','Templates','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('49','45','202','203','5','com_content.category.24','Languages','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('50','45','204','219','5','com_content.category.25','Plugins','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('51','39','244','275','3','com_content.category.26','Park Site','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('52','51','245','250','4','com_content.category.27','Park Blog','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('53','51','251','272','4','com_content.category.28','Photo Gallery','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('54','39','276','289','3','com_content.category.29','Fruit Shop Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('55','54','277','282','4','com_content.category.30','Growers','{\"core.create\":{\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"10\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('56','43','354','355','3','com_weblinks.category.31','Park Links','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('57','43','356','359','3','com_weblinks.category.32','Joomla! Specific Links','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('58','57','357','358','4','com_weblinks.category.33','Other Resources','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('59','41','26','27','3','com_contact.category.34','Park Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('60','41','28','85','3','com_contact.category.35','Shop Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('61','60','29','30','4','com_contact.category.36','Staff','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('62','60','31','84','4','com_contact.category.37','Fruit Encyclopedia','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('63','62','32','33','5','com_contact.category.38','A','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('64','62','34','35','5','com_contact.category.39','B','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('65','62','36','37','5','com_contact.category.40','C','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('66','62','38','39','5','com_contact.category.41','D','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('67','62','40','41','5','com_contact.category.42','E','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('68','62','42','43','5','com_contact.category.43','F','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('69','62','44','45','5','com_contact.category.44','G','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('70','62','46','47','5','com_contact.category.45','H','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('71','62','48','49','5','com_contact.category.46','I','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('72','62','50','51','5','com_contact.category.47','J','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('73','62','52','53','5','com_contact.category.48','K','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('74','62','54','55','5','com_contact.category.49','L','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('75','62','56','57','5','com_contact.category.50','M','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('76','62','58','59','5','com_contact.category.51','N','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('77','62','60','61','5','com_contact.category.52','O','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('78','62','62','63','5','com_contact.category.53','P','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('79','62','64','65','5','com_contact.category.54','Q','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('80','62','66','67','5','com_contact.category.55','R','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('81','62','68','69','5','com_contact.category.56','S','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('82','62','70','71','5','com_contact.category.57','T','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('83','62','72','73','5','com_contact.category.58','U','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('84','62','74','75','5','com_contact.category.59','V','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('85','62','76','77','5','com_contact.category.60','W','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('86','62','78','79','5','com_contact.category.61','X','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('87','62','80','81','5','com_contact.category.62','Y','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('88','62','82','83','5','com_contact.category.63','Z','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('89','46','115','116','6','com_content.article.1','Administrator Components','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('90','93','132','133','7','com_content.article.2','Archive Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('91','93','134','135','7','com_content.article.3','Article Categories Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('92','93','136','137','7','com_content.article.4','Articles Category Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('93','47','131','146','6','com_content.category.64','Content Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('94','47','147','154','6','com_content.category.65','User Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('95','47','155','168','6','com_content.category.66','Display Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('96','47','169','180','6','com_content.category.67','Utility Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('97','48','191','192','6','com_content.category.68','Atomic','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('98','48','193','194','6','com_content.category.69','Beez 20','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('99','48','195','196','6','com_content.category.70','Beez5','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('100','48','197','198','6','com_content.category.71','Milky Way','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('101','50','205','206','6','com_content.article.5','Authentication','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('102','51','273','274','4','com_content.article.6','Australian Parks ','{\"core.delete\":[],\"core.edit\":{\"2\":1},\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('103','95','156','157','7','com_content.article.7','Banner Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('104','44','221','222','4','com_content.article.8','Beginners','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('105','46','117','118','6','com_content.article.9','Contact','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('106','46','119','120','6','com_content.article.10','Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('107','109','263','264','6','com_content.article.11','Cradle Mountain','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('108','53','252','261','5','com_content.category.72','Animals','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('109','53','262','271','5','com_content.category.73','Scenery','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('110','95','158','159','7','com_content.article.12','Custom HTML Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('111','54','283','284','4','com_content.article.13','Directions','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('112','50','207','208','6','com_content.article.14','Editors','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('113','50','209','210','6','com_content.article.15','Editors-xtd','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('114','95','160','161','7','com_content.article.16','Feed Display','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('115','52','246','247','5','com_content.article.17','First Blog Post','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('116','52','248','249','5','com_content.article.18','Second Blog Post','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('117','95','162','163','7','com_content.article.19','Footer Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('118','54','285','286','4','com_content.article.20','Fruit Shop','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('119','44','223','224','4','com_content.article.21','Getting Help','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('120','44','225','226','4','com_content.article.22','Getting Started','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('121','55','278','279','5','com_content.article.23','Happy Orange Orchard','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('122','44','227','228','4','com_content.article.24','Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('123','108','253','254','6','com_content.article.25','Koala','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('124','96','170','171','7','com_content.article.26','Language Switcher','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('125','93','138','139','7','com_content.article.27','Latest Articles Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('126','94','148','149','7','com_content.article.28','Login Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('127','166','184','185','7','com_content.article.29','Menu Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('128','93','140','141','7','com_content.article.30','Most Read Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('129','93','142','143','7','com_content.article.31','News Flash','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('130','44','229','230','4','com_content.article.32','Parameters','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('131','108','255','256','6','com_content.article.33','Phyllopteryx','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('132','109','265','266','6','com_content.article.34','Pinnacles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('133','44','231','232','4','com_content.article.35','Professionals','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('134','95','164','165','7','com_content.article.36','Random Image Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('135','93','144','145','7','com_content.article.37','Related Items Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('136','44','233','234','4','com_content.article.38','Sample Sites','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('137','46','121','122','6','com_content.article.39','Search','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('138','96','172','173','7','com_content.article.40','Search Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('139','50','211','212','6','com_content.article.41','Search ','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('140','39','290','291','3','com_content.article.42','Site Map','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('141','108','257','258','6','com_content.article.43','Spotted Quoll','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('142','96','174','175','7','com_content.article.44','Statistics Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('143','96','176','177','7','com_content.article.45','Syndicate Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('144','50','213','214','6','com_content.article.46','System','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('145','44','235','236','4','com_content.article.47','The Joomla! Community','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('146','44','237','238','4','com_content.article.48','The Joomla! Project','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('147','48','199','200','6','com_content.article.49','Typography','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('148','44','239','240','4','com_content.article.50','Upgraders','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('149','50','215','216','6','com_content.article.51','User','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('150','46','123','124','6','com_content.article.52','Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('151','44','241','242','4','com_content.article.53','Using Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('152','46','125','126','6','com_content.article.54','Weblinks','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('153','95','166','167','7','com_content.article.55','Weblinks Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('154','94','150','151','7','com_content.article.56','Who\'s Online','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('155','108','259','260','6','com_content.article.57','Wobbegone','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('156','55','280','281','5','com_content.article.58','Wonderful Watermelon','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('157','96','178','179','7','com_content.article.59','Wrapper Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('158','46','127','128','6','com_content.article.60','News Feeds','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('159','166','186','187','7','com_content.article.61','Breadcrumbs Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('160','50','217','218','6','com_content.article.62','Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('162','109','267','268','6','com_content.article.64','Blue Mountain Rain Forest','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('163','109','269','270','6','com_content.article.65','Ormiston Pound','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('165','94','152','153','7','com_content.article.66','Latest Users Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('166','47','183','188','6','com_content.category.75','Navigation Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('167','54','287','288','4','com_content.category.76','Recipes','{\"core.create\":{\"12\":1,\"10\":1},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"12\":1,\"10\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('168','34','106','107','3','com_content.article.67','What\'s New in 1.5?','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('169','24','341','342','2','com_users.notes.category.77','Uncategorised','');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('172','1','426','427','1','com_jshopping','jshopping','{}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('173','8','295','298','2','com_content.category.78','Статьи','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('174','34','108','109','3','com_content.article.71','О нас','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('175','173','296','297','3','com_content.article.72','Холлофайбер? Не, не слышал...','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('176','8','299','302','2','com_content.category.79','Активность','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
insert  into `jos_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values ('177','176','300','301','3','com_content.article.73','Начало','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');

/*Table structure for table `jos_associations` */

DROP TABLE IF EXISTS `jos_associations`;

CREATE TABLE `jos_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY  (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_associations` */

/*Table structure for table `jos_banner_clients` */

DROP TABLE IF EXISTS `jos_banner_clients`;

CREATE TABLE `jos_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `jos_banner_clients` */

insert  into `jos_banner_clients`(`id`,`name`,`contact`,`email`,`extrainfo`,`state`,`checked_out`,`checked_out_time`,`metakey`,`own_prefix`,`metakey_prefix`,`purchase_type`,`track_clicks`,`track_impressions`) values ('1','Joomla!','Administrator','email@email.com','','1','0','0000-00-00 00:00:00','','0','','-1','-1','-1');
insert  into `jos_banner_clients`(`id`,`name`,`contact`,`email`,`extrainfo`,`state`,`checked_out`,`checked_out_time`,`metakey`,`own_prefix`,`metakey_prefix`,`purchase_type`,`track_clicks`,`track_impressions`) values ('2','Shop','Example','example@example.com','','1','0','0000-00-00 00:00:00','','0','','-1','0','0');
insert  into `jos_banner_clients`(`id`,`name`,`contact`,`email`,`extrainfo`,`state`,`checked_out`,`checked_out_time`,`metakey`,`own_prefix`,`metakey_prefix`,`purchase_type`,`track_clicks`,`track_impressions`) values ('3','Bookstore','Bookstore Example','example@example.com','','1','0','0000-00-00 00:00:00','','0','','-1','0','0');

/*Table structure for table `jos_banner_tracks` */

DROP TABLE IF EXISTS `jos_banner_tracks`;

CREATE TABLE `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_banner_tracks` */

/*Table structure for table `jos_banners` */

DROP TABLE IF EXISTS `jos_banners`;

CREATE TABLE `jos_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `jos_banners` */

insert  into `jos_banners`(`id`,`cid`,`type`,`name`,`alias`,`imptotal`,`impmade`,`clicks`,`clickurl`,`state`,`catid`,`description`,`custombannercode`,`sticky`,`ordering`,`metakey`,`params`,`own_prefix`,`metakey_prefix`,`purchase_type`,`track_clicks`,`track_impressions`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`reset`,`created`,`language`) values ('2','3','0','Shop 1','shop-1','0','182','2','http://shop.joomla.org/amazoncom-bookstores.html','1','15','Get books about Joomla! at the Joomla! Book Shop.','','0','1','','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Books\"}','0','','-1','0','0','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB');
insert  into `jos_banners`(`id`,`cid`,`type`,`name`,`alias`,`imptotal`,`impmade`,`clicks`,`clickurl`,`state`,`catid`,`description`,`custombannercode`,`sticky`,`ordering`,`metakey`,`params`,`own_prefix`,`metakey_prefix`,`purchase_type`,`track_clicks`,`track_impressions`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`reset`,`created`,`language`) values ('3','2','0','Shop 2','shop-2','0','293','2','http://shop.joomla.org','1','15','T Shirts, caps and more from the Joomla! Shop.','','0','2','','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Shop\"}','0','','-1','0','0','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB');
insert  into `jos_banners`(`id`,`cid`,`type`,`name`,`alias`,`imptotal`,`impmade`,`clicks`,`clickurl`,`state`,`catid`,`description`,`custombannercode`,`sticky`,`ordering`,`metakey`,`params`,`own_prefix`,`metakey_prefix`,`purchase_type`,`track_clicks`,`track_impressions`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`reset`,`created`,`language`) values ('4','1','0','Support Joomla!','support-joomla','0','151','1','http://contribute.joomla.org','1','15','Your contributions of time, talent and money make Joomla possible.','','0','3','','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}','0','','-1','0','0','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','en-GB');

/*Table structure for table `jos_categories` */

DROP TABLE IF EXISTS `jos_categories`;

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

/*Data for the table `jos_categories` */

insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('1','0','0','0','139','0','','system','ROOT','root','','','1','0','0000-00-00 00:00:00','1','{}','','','','0','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('9','34','1','131','132','1','uncategorised','com_content','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('10','35','1','129','130','1','uncategorised','com_banners','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('11','36','1','125','126','1','uncategorised','com_contact','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('12','37','1','61','62','1','uncategorised','com_newsfeeds','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('13','38','1','57','58','1','uncategorised','com_weblinks','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('14','39','1','9','56','1','sample-data-articles','com_content','Sample Data-Articles','sample-data-articles','','','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('15','40','1','127','128','1','sample-data-banners','com_banners','Sample Data-Banners','sample-data-banners','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('16','41','1','63','124','1','sample-data-contact','com_contact','Sample Data-Contact','sample-data-contact','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('17','42','1','59','60','1','sample-data-newsfeeds','com_newsfeeds','Sample Data-Newsfeeds','sample-data-newsfeeds','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('18','43','1','1','8','1','sample-data-weblinks','com_weblinks','Sample Data-Weblinks','sample-data-weblinks','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('19','44','14','10','39','2','sample-data-articles/joomla','com_content','Joomla!','joomla','','','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('20','45','19','11','38','3','sample-data-articles/joomla/extensions','com_content','Extensions','extensions','','<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href=\"http://extensions.joomla.org\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 11:57:22','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('21','46','20','12','13','4','sample-data-articles/joomla/extensions/components','com_content','Components','components','','<p><img class=\"image-left\" src=\"administrator/templates/bluestork/images/header/icon-48-component.png\" border=\"0\" alt=\"Component Image\" />Components are larger extensions that produce the major content for your site. Each component has one or more \"views\" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 11:58:12','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('22','47','20','14','25','4','sample-data-articles/joomla/extensions/modules','com_content','Modules','modules','','<p><img class=\"image-left\" src=\"administrator/templates/bluestork/images/header/icon-48-module.png\" border=\"0\" alt=\"Media Image\" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 11:59:44','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('23','48','20','26','33','4','sample-data-articles/joomla/extensions/templates','com_content','Templates','templates','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-themes.png\" border=\"0\" alt=\"Media Image\" align=\"left\" />Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Template_Manager_Templates\">Help</a></p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:04:51','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('24','49','20','34','35','4','sample-data-articles/joomla/extensions/languages','com_content','Languages','languages','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-language.png\" border=\"0\" alt=\"Languages Image\" align=\"left\" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Language_Manager_Installed\">Help</a></p>\r\n<p><a href=\"http://community.joomla.org/translations.html\">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation. </p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href=\"http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6\">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href=\"http://extensions.joomla.org\"> Joomla! Extensions Directory</a>.</p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2012-01-17 16:18:40','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('25','50','20','36','37','4','sample-data-articles/joomla/extensions/plugins','com_content','Plugins','plugins','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-plugin.png\" border=\"0\" alt=\"Plugin Image\" align=\"left\" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Plugin_Manager_Edit\">Help</a></p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:11:56','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('26','51','14','40','49','2','sample-data-articles/park-site','com_content','Park Site','park-site','','','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','en-GB');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('27','52','26','41','42','3','sample-data-articles/park-site/park-blog','com_content','Park Blog','park-blog','','<p><span style=\"font-size: 12px;\">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add extensions for <a href=\"http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">comments</a>,<a href=\"http://extensions.joomla.org/extensions/social-web\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\"> interacting with social network sites</a>, <a href=\"http://extensions.joomla.org/extensions/content-sharing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">tagging</a>, and <a href=\"http://extensions.joomla.org/extensions/content-sharing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">keeping in contact with your readers</a>. You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"images\\/sampledata\\/parks\\/banner_cradle.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:15:40','0','en-GB');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('28','53','26','43','48','3','sample-data-articles/park-site/photo-gallery','com_content','Photo Gallery','photo-gallery','','<p><img src=\"images/sampledata/parks/banner_cradle.jpg\" border=\"0\" /></p>\r\n<p>These are my photos from parks I have visited (I didn\'t take them, they are all from <a href=\"http://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a \"readmore\" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','en-GB');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('29','54','14','50','55','2','sample-data-articles/fruit-shop-site','com_content','Fruit Shop Site','fruit-shop-site','','','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('30','55','29','51','52','3','sample-data-articles/fruit-shop-site/growers','com_content','Growers','growers','','<p>We search the whole countryside for the best fruit growers.</p>\r\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group.  </em></p>\r\n<p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p>\r\n<p><em>This illustrates the use of the Edit Own permission. </em></p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:17:40','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('31','56','18','2','3','2','sample-data-weblinks/park-links','com_weblinks','Park Links','park-links','','<p>Here are links to some of my favorite parks.</p>\r\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>','1','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"images\\/sampledata\\/parks\\/banner_cradle.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','en-GB');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('32','57','18','4','7','2','sample-data-weblinks/joomla-specific-links','com_weblinks','Joomla! Specific Links','joomla-specific-links','','<p>A selection of links that are all related to the Joomla Project.</p>','1','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:32:00','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('33','58','32','5','6','3','sample-data-weblinks/joomla-specific-links/other-resources','com_weblinks','Other Resources','other-resources','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('34','59','16','64','65','2','sample-data-contact/park-site','com_contact','Park Site','park-site','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','en-GB');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('35','60','16','66','123','2','sample-data-contact/shop-site','com_contact','Shop Site','shop-site','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('36','61','35','67','68','3','sample-data-contact/shop-site/staff','com_contact','Staff','staff','','<p>Please feel free to contact our staff at any time should you need assistance.</p>','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('37','62','35','69','122','3','sample-data-contact/shop-site/fruit-encyclopedia','com_contact','Fruit Encyclopedia','fruit-encyclopedia','','<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href=\"http://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>.</p><p><img src=\"images/sampledata/fruitshop/apple.jpg\" border=\"0\" alt=\"Apples\" title=\"Apples\" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('38','63','37','70','71','4','sample-data-contact/shop-site/fruit-encyclopedia/a','com_contact','A','a','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('39','64','37','72','73','4','sample-data-contact/shop-site/fruit-encyclopedia/b','com_contact','B','b','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('40','65','37','74','75','4','sample-data-contact/shop-site/fruit-encyclopedia/c','com_contact','C','c','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('41','66','37','76','77','4','sample-data-contact/shop-site/fruit-encyclopedia/d','com_contact','D','d','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('42','67','37','78','79','4','sample-data-contact/shop-site/fruit-encyclopedia/e','com_contact','E','e','','','0','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('43','68','37','80','81','4','sample-data-contact/shop-site/fruit-encyclopedia/f','com_contact','F','f','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('44','69','37','82','83','4','sample-data-contact/shop-site/fruit-encyclopedia/g','com_contact','G','g','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('45','70','37','84','85','4','sample-data-contact/shop-site/fruit-encyclopedia/h','com_contact','H','h','','','0','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('46','71','37','86','87','4','sample-data-contact/shop-site/fruit-encyclopedia/i','com_contact','I','i','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('47','72','37','88','89','4','sample-data-contact/shop-site/fruit-encyclopedia/j','com_contact','J','j','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('48','73','37','90','91','4','sample-data-contact/shop-site/fruit-encyclopedia/k','com_contact','K','k','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('49','74','37','92','93','4','sample-data-contact/shop-site/fruit-encyclopedia/l','com_contact','L','l','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('50','75','37','94','95','4','sample-data-contact/shop-site/fruit-encyclopedia/m','com_contact','M','m','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('51','76','37','96','97','4','sample-data-contact/shop-site/fruit-encyclopedia/n','com_contact','N','n','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('52','77','37','98','99','4','sample-data-contact/shop-site/fruit-encyclopedia/o','com_contact','O','o','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('53','78','37','100','101','4','sample-data-contact/shop-site/fruit-encyclopedia/p','com_contact','P','p','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('54','79','37','102','103','4','sample-data-contact/shop-site/fruit-encyclopedia/q','com_contact','Q','q','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('55','80','37','104','105','4','sample-data-contact/shop-site/fruit-encyclopedia/r','com_contact','R','r','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('56','81','37','106','107','4','sample-data-contact/shop-site/fruit-encyclopedia/s','com_contact','S','s','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('57','82','37','108','109','4','sample-data-contact/shop-site/fruit-encyclopedia/t','com_contact','T','t','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('58','83','37','110','111','4','sample-data-contact/shop-site/fruit-encyclopedia/u','com_contact','U','u','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('59','84','37','112','113','4','sample-data-contact/shop-site/fruit-encyclopedia/v','com_contact','V','v','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('60','85','37','114','115','4','sample-data-contact/shop-site/fruit-encyclopedia/w','com_contact','W','w','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('61','86','37','116','117','4','sample-data-contact/shop-site/fruit-encyclopedia/x','com_contact','X','x','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('62','87','37','118','119','4','sample-data-contact/shop-site/fruit-encyclopedia/y','com_contact','Y','y','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('63','88','37','120','121','4','sample-data-contact/shop-site/fruit-encyclopedia/z','com_contact','Z','z','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('64','93','22','15','16','5','sample-data-articles/joomla/extensions/modules/articles-modules','com_content','Content Modules','articles-modules','','<p>Content modules display article and other information from the content component.</p>','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('65','94','22','17','18','5','sample-data-articles/joomla/extensions/modules/user-modules','com_content','User Modules','user-modules','','<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:00:50','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('66','95','22','19','20','5','sample-data-articles/joomla/extensions/modules/display-modules','com_content','Display Modules','display-modules','','<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('67','96','22','21','22','5','sample-data-articles/joomla/extensions/modules/utility-modules','com_content','Utility Modules','utility-modules','','<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:01:34','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('68','97','23','31','32','5','sample-data-articles/joomla/extensions/templates/atomic','com_content','Atomic','atomic','','<p><img src=\"templates/atomic/template_thumbnail.png\" border=\"0\" alt=\"The Atomic Template\" style=\"border: 0; float: right;\" /></p>\r\n<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=285\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=316\">Typography</a></li>\r\n</ul>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:08:16','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('69','98','23','27','28','5','sample-data-articles/joomla/extensions/templates/beez-20','com_content','Beez 20','beez-20','','<p><img src=\"templates/beez_20/template_thumbnail.png\" border=\"0\" alt=\"Beez_20 thumbnail\" align=\"right\" style=\"float: right;\" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=424\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=423\">Typography</a></li>\r\n</ul>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('70','99','23','29','30','5','sample-data-articles/joomla/extensions/templates/beez-5','com_content','Beez 5','beez-5','','<p><img src=\"templates/beez5/template_thumbnail.png\" border=\"0\" alt=\"Beez5 Thumbnail\" align=\"right\" style=\"float: right;\" /></p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=458\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=457\">Typography</a></li>\r\n</ul>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:06:57','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('72','108','28','44','45','4','sample-data-articles/park-site/photo-gallery/animals','com_content','Animals','animals','','','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','en-GB');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('73','109','28','46','47','4','sample-data-articles/park-site/photo-gallery/scenery','com_content','Scenery','scenery','','','-2','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','en-GB');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('75','166','22','23','24','5','sample-data-articles/joomla/extensions/modules/navigation-modules','com_content','Navigation Modules','navigation-modules','','<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the \"This Site\" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('76','167','29','53','54','3','sample-data-articles/fruit-shop-site/recipes','com_content','Recipes','recipes','','<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users\' pages.</em><br /><br /></p>','-2','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','42','2011-12-27 12:18:25','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('77','169','1','133','134','1','uncategorised','com_users.notes','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2011-01-01 00:00:01','0','2011-01-01 00:00:01','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('78','173','1','135','136','1','articles','com_content','Статьи','articles','','','1','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2012-12-07 01:41:12','0','0000-00-00 00:00:00','0','*');
insert  into `jos_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values ('79','176','1','137','138','1','activity','com_content','Активность','activity','','','1','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','42','2012-12-21 21:13:21','0','0000-00-00 00:00:00','0','*');

/*Table structure for table `jos_contact_details` */

DROP TABLE IF EXISTS `jos_contact_details`;

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `jos_contact_details` */

insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('1','Contact Name Here','name','Position','Street Address','Suburb','State','Country','Zip Code','Telephone','Fax','<p>Information about or by the contact.</p>','images/powered_by.png','top','email@example.com','1','1','0','0000-00-00 00:00:00','1','{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Twitter\",\"linka\":\"http:\\/\\/twitter.com\\/joomla\",\"linkb_name\":\"YouTube\",\"linkb\":\"http:\\/\\/www.youtube.com\\/user\\/joomla\",\"linkc_name\":\"Facebook\",\"linkc\":\"http:\\/\\/www.facebook.com\\/joomla\",\"linkd_name\":\"FriendFeed\",\"linkd\":\"http:\\/\\/friendfeed.com\\/joomla\",\"linke_name\":\"Scribed\",\"linke\":\"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}','0','16','1','','','last','first','middle','en-GB','2011-01-01 00:00:01','0','','2011-12-27 12:23:32','42','','','{\"robots\":\"\",\"rights\":\"\"}','1','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('2','Webmaster','webmaster','','','','','','','','','','',NULL,'webmaster@example.com','0','1','0','0000-00-00 00:00:00','1','{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"\",\"redirect\":\"\"}','0','34','1','','','','','','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"rights\":\"\"}','1','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('3','Owner','owner','','','','','','','','','<p>I\'m the owner of this store.</p>','',NULL,'','0','1','0','0000-00-00 00:00:00','2','{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}','0','36','1','','','','','','*','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"rights\":\"\"}','1','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('4','Buyer','buyer','','','','','','','','','<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>','',NULL,'','0','1','0','0000-00-00 00:00:00','1','{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}','0','36','1','','','','','','*','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"rights\":\"\"}','1','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('5','Bananas','bananas','Scientific Name: Musa','Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg','','Type: Herbaceous','Large Producers: India, China, Brasil','','','','<p>Bananas are a great source of potassium.</p>\r\n<p> </p>','images/sampledata/fruitshop/bananas_2.jpg',NULL,'','0','1','0','0000-00-00 00:00:00','1','{\"show_contact_category\":\"show_with_link\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"1\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"1\",\"show_postcode\":\"\",\"show_country\":\"1\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Banana English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana\",\"linkb_name\":\"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e\",\"linkb\":\"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE\",\"linkc_name\":\"Wikipedia:Banana Portugu\\u00eas\",\"linkc\":\"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana\",\"linkd_name\":\"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"linkd\":\"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}','0','39','1','','','','','','*','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('6','Apples','apples','Scientific Name: Malus domestica','Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG','','Family: Rosaceae','Large: Producers: China, United States','','','','<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>','images/sampledata/fruitshop/apple.jpg',NULL,'','0','1','0','0000-00-00 00:00:00','1','{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Apples English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple\",\"linkb_name\":\"Wikipedia: Manzana Espa\\u00f1ol \",\"linkb\":\"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana\",\"linkc_name\":\"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587\",\"linkc\":\"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c\",\"linkd_name\":\"Wikipedia: Tofaa Kiswahili\",\"linkd\":\"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}','0','38','1','','','','','','*','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('7','Tamarind','tamarind','Scientific Name: Tamarindus indica','Image Credit: Franz Eugen Köhler, Köhler\'s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg','','Family: Fabaceae','Large Producers: India, United States','','','','<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p> </p>','images/sampledata/fruitshop/tamarind.jpg',NULL,'','0','1','0','0000-00-00 00:00:00','1','{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Tamarind English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind\",\"linkb_name\":\"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  \",\"linkb\":\"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 \",\"linkc_name\":\"Wikipedia: Tamarinier Fran\\u00e7ais\",\"linkc\":\"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier\",\"linkd_name\":\"Wikipedia:Tamaline lea faka-Tonga\",\"linkd\":\"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}','0','57','1','','','','','','*','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('8','Shop Address','shop-address','','','Our City','Our Province','Our Country','','555-555-5555','','<p>Here are directions for how to get to our shop.</p>','',NULL,'','0','1','0','0000-00-00 00:00:00','1','{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}','0','35','1','','','','','','*','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"rights\":\"\"}','1','','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `jos_content` */

DROP TABLE IF EXISTS `jos_content`;

CREATE TABLE `jos_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `title_alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

/*Data for the table `jos_content` */

insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('1','89','Administrator Components','administrator-components','','<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title=\"Media Manager\" alt=\"Media Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager\">Help</a></p>\r\n<hr title=\"Extensions Manager\" alt=\"Extensions Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install\">Help</a></p>\r\n<hr title=\"Menu Manager\" alt=\"Menu Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager\">Help</a></p>\r\n<hr title=\"Global Configuration\" alt=\"Global Configuration\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration\">Help</a></p>\r\n<hr title=\"Banners\" alt=\"Banners\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit\">Help</a></p>\r\n<hr title=\"Redirect\" class=\"system-pagebreak\" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager\">Help</a></p>','','-2','0','0','21','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:03:19','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','9','0','7','','','1','2','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('2','90','Archive Module','archive-module','','<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive\" title=\"Archive Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_archive,Archived Articles}</div>','','-2','0','0','64','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:18:05','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','5','0','5','modules, content','','1','5','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('3','91','Article Categories Module','article-categories-module','','<p>This module displays a list of categories from one parent category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories\" title=\"Categories Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_categories,Articles Categories}</div>\r\n<p> </p>','','-2','0','0','64','2011-01-01 00:00:01','42','','2011-09-17 22:13:31','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','5','0','6','modules, content','','1','6','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('4','92','Articles Category Module','articles-category-module','','<p>This module allows you to display the articles in a specific category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_category,Articles Category}</div>','','-2','0','0','64','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:18:26','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','8','0','7','','articles,content','1','10','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('5','101','Authentication','authentication','','<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Gmail <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li>\r\n<li>LDAP <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP\">Help</a></li>\r\n</ul>','','-2','0','0','25','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:04:13','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','3','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('6','102','Australian Parks ','australian-parks','','<p><img src=\"images/sampledata/parks/banner_cradle.jpg\" border=\"0\" alt=\"Cradle Park Banner\" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a \"brochure site,\"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p> </p>','','-2','0','0','26','2011-01-01 00:00:01','42','Parks Webmaster','2011-09-06 06:20:19','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}','2','0','1','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('7','103','Banner Module','banner-module','','<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners\">Help</a>.</p>\r\n<div class=\"sample-module\">{loadmodule banners,Banners}</div>','','-2','0','0','66','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:32:58','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','4','0','6','','','1','4','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('8','104','Beginners','beginners','','<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n','\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you\'re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners\' Areas of the <a href=\"http://docs.joomla.org/Beginners\">Joomla documentation</a> and <a href=\"http://forum.joomla.org\">support forums</a>.</p>\r\n<p>You\'ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href=\"http://community.joomla.org/showcase/\">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href=\"http://extensions.joomla.org/\">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can\'t find what you need? You may want to find a Joomla professional in the <a href=\"http://resources.joomla.org/\">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href=\"http://community.joomla.org/events.html\">Joomla! Day</a> or other event or joining a local <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Can\'t find one near you? Start one yourself.</p>','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:10:49','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','4','','','1','2','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','1','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('9','105','Contacts','contact','','<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts\">Help</a></p>','','-2','0','0','21','2011-01-01 00:00:01','42','Joomla!','2011-01-10 04:15:37','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}','2','0','2','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('10','106','Content','content','','<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager\">Help</a></p>','','-2','0','0','21','2011-01-01 00:00:01','42','','2011-01-10 04:28:12','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}','2','0','1','','','1','5','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('11','107','Cradle Mountain','cradle-mountain','','<p> </p>\r\n','\r\n<p> </p>','-2','0','0','73','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 04:42:36','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Cradle Mountain\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"Cradle Mountain\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','1','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('12','110','Custom HTML Module','custom-html-module','','<p>This module allows you to create your own HTML Module using a WYSIWYG editor. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML\" title=\"Custom HTML Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule custom,Custom HTML}</div>','','-2','0','0','66','2011-01-01 00:00:01','42','','2011-12-27 11:12:46','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','13','0','1','','','1','13','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('13','111','Directions','directions','','<p>Here\'s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>','','-2','0','0','29','2011-01-01 00:00:01','42','Fruit Shop Webmaster','2011-01-01 00:00:01','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','2','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('14','112','Editors','editors','','<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>CodeMirror <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror\">Help</a></li>\r\n<li>TinyMCE<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE\"> Help</a></li>\r\n<li>No Editor <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_None\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>','','-2','0','0','25','2011-01-01 00:00:01','42','Joomla!','2011-09-06 05:45:40','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','2','0','5','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('15','113','Editors-xtd','editors-xtd','','<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Editor Button: Image<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Image\"> Help</a></li>\r\n<li>Editor Button: Readmore <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Readmore\">Help</a></li>\r\n<li>Editor Button: Page Break <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak\">Help</a></li>\r\n<li>Editor Button: Article <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Article\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>','','-2','0','0','25','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:14:12','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','6','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('16','114','Feed Display','feed-display','','<p>This module allows the displaying of a syndicated feed. <a href=\"http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display\" title=\"Feed Display Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule feed,Feed Display}</div>','','-2','0','0','66','2011-01-01 00:00:01','42','','2011-09-17 22:22:08','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','3','0','2','','','1','3','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('17','115','First Blog Post','first-blog-post','','<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>','<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>','-2','0','0','27','2011-01-01 00:00:01','42','','2011-01-01 00:00:01','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','2','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('18','116','Second Blog Post','second-blog-post','','<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>','<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>','-2','0','0','27','2011-01-01 00:00:01','42','','2011-01-01 00:00:01','0','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','1','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('19','117','Footer Module','footer-module','','<p>This module shows the Joomla! copyright information. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer\" title=\"Footer Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule footer,Footer}</div>','','-2','0','0','66','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:22:47','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','4','0','3','','','1','4','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('20','118','Fruit Shop','fruit-shop','','<h2>Welcome to the Fruit Shop</h2>\r\n<p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p>\r\n<p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href=\"http://extensions.joomla.org\"><em> Joomla! Extensions Directory</em></a>.</p>\r\n<p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>','','-2','0','0','29','2011-01-01 00:00:01','42','Fruit Shop Webmaster','2011-12-27 11:17:59','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','1','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('21','119','Getting Help','getting-help','','<p><img class=\"image-left\" src=\"administrator/templates/hathor/images/header/icon-48-help_header.png\" border=\"0\" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href=\"http://forum.joomla.org\">Support Forums</a></li>\r\n<li><a href=\"http://docs.joomla.org\">Documentation</a></li>\r\n<li><a href=\"http://resources.joomla.org\">Professionals</a></li>\r\n<li><a href=\"http://shop.joomla.org/amazoncom-bookstores.html\">Books</a></li>\r\n</ul>','','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-01-10 15:32:54','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','10','0','8','','','1','17','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('22','120','Getting Started','getting-started','','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"This Site\" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the \"This Site\" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"submit article\" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\"http://docs.joomla.org\">Joomla! documentation site</a> and on the<a href=\"http://forum.joomla.org\"> Joomla! forums</a>.</p>','','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:21:44','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','9','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('23','121','Happy Orange Orchard','happy-orange-orchard','','<p>At our orchard we grow the world\'s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>','','-2','0','0','30','2011-01-01 00:00:01','42','Fruit Shop Webmaster','2011-01-01 00:00:01','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','2','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('24','122','Joomla!','joomla','','<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\r\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>','','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:22:23','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','2','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','1','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('25','123','Koala','koala','','<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n','\r\n<p> </p>','-2','0','0','72','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 05:15:00','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Koala  Thumbnail\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Koala Climbing Tree\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','9','0','2','','','1','2','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('26','124','Language Switcher','language-switcher','','<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher\" title=\"Language Switcher Module\">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled \"language switcher\" and visit the fruit shop or park sample sites. Then follow<a href=\"http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6\"> the instructions in this tutorial</a>.</p>','','-2','0','0','67','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:25:00','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','3','0','3','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('27','125','Latest Articles Module','latest-articles-module','','<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News\" title=\"Latest Articles\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_latest,Latest News}</div>','','-2','0','0','64','2011-01-01 00:00:01','42','','2011-12-27 11:25:41','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','9','0','1','modules, content','','1','15','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('28','126','Login Module','login-module','','<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login\" title=\"Login\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule login,login}</div>','','-2','0','0','65','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:20:35','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','4','0','2','','','1','5','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('29','127','Menu Module','menu-module','','<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule mod_menu,Menu Example}</div>','','-2','0','0','75','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:18:45','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','8','0','1','','','1','12','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('30','128','Most Read Content','most-read-content','','<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read\" title=\"Most Read Content\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_popular,Articles Most Read}</div>','','-2','0','0','64','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:26:41','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','6','0','2','modules, content','','1','10','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('31','129','News Flash','news-flash','','<p>Displays a set number of articles from a category based on date or random selection. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash\" title=\"News Flash Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_news,News Flash}</div>','','-2','0','0','64','2011-01-01 00:00:01','42','','2011-09-17 22:16:46','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','4','0','3','modules, content','','1','10','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('32','130','Options','options','','<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author\'s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p> </p>','','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2012-01-17 16:21:24','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','10','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('33','131','Phyllopteryx','phyllopteryx','','<p> </p>\r\n','\r\n<p> </p>','-2','0','0','72','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 04:57:58','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Phyllopteryx\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Phyllopteryx\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','3','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('34','132','Pinnacles','pinnacles','','<p> </p>\r\n','\r\n<p> </p>','-2','0','0','73','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 04:41:30','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Kings Canyon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Kings Canyon\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later.\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','3','0','4','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('35','133','Professionals','professionals','','<p>Joomla! 2.5 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n','\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above makes Joomla lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs  and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6\">Changes since 1.5</a></li>\r\n<li><a href=\"http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6\">Working with ACL</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JCategories\">Working with nested categories</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JForm\">Forms library</a></li>\r\n<li><a href=\"http://docs.joomla.org/Working_with_Mootools_1.3\">Working with Mootools 1.3</a></li>\r\n<li><a href=\"http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6\">Using new features of the override system</a></li>\r\n<li><a href=\"http://api.joomla.org\">Joomla! API</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JDatabaseQuery\">Using JDatabaseQuery</a></li>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6#Events\">New and updated events</a></li>\r\n<li><a href=\"http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6\">Xmlrpc</a></li>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6#Extension_management\">Installing and updating extensions</a></li>\r\n<li><a href=\"http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development\">Setting up your development environment</a></li>\r\n<li><a href=\"github.com/joomla\">The Joomla! Platform Repository</a> </li>\r\n</ul>','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:36:13','42','0','0000-00-00 00:00:00','2011-01-09 16:41:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','16','0','5','','','1','10','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','1','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('36','134','Random Image Module','random-image-module','','<p>This module displays a random image from your chosen image directory. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image\" title=\"Random Image Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule random_image,Random Image}</div>','','-2','0','0','66','2011-01-01 00:00:01','42','','2012-01-17 16:11:13','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','6','0','4','','','1','6','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('37','135','Related Items Module','related-items-module','','<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related\" title=\"Related Items Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule related_items,Articles Related Items}</div>','','-2','0','0','64','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:37:34','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','5','0','4','modules, content','','1','5','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('38','136','Sample Sites','sample-sites','','<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample \"sites within a site\" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href=\"index.php?Itemid=243\">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href=\"index.php/welcome.html\"></a><a href=\"index.php?Itemid=429\">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href=\"http://extensions.joomla.org\">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href=\"http://docs.joomla.org/How_do_you_modify_a_template%3F\">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site\'s focus.</p>','','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:39:07','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','11','','','1','5','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('39','137','Search','search-component','','<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search\">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>','','-2','0','0','21','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:41:48','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','3','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('40','138','Search Module','search-module','','<p>This module will display a search box. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search\" title=\"Search\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule search,Search}</div>','','-2','0','0','67','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:35:56','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','4','0','4','','','1','6','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('41','139','Search ','search-plugin','','<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p>\r\n<p>Default On:</p>\r\n<ul>\r\n<li>Content <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Content\">Help</a></li>\r\n<li>Contacts <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Contacts\">Help</a></li>\r\n<li>Weblinks <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Weblinks\">Help</a></li>\r\n<li>News Feeds <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds\">Help</a></li>\r\n<li>Categories <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Categories\">Help</a></li>\r\n</ul>','','-2','0','0','25','2011-01-01 00:00:01','42','Joomla!','2011-09-06 06:13:18','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','3','0','1','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('42','140','Site Map','site-map','','<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>','','-2','0','0','14','2011-01-01 00:00:01','42','Joomla!','2011-01-01 00:00:01','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','1','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('43','141','Spotted Quoll','spotted-quoll','','<p> </p>\r\n<p> </p>\r\n','\r\n<p> </p>','-2','0','0','72','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 05:02:58','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Spotted Quoll\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Spotted Quoll\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','4','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('44','142','Statistics Module','statistics','','<p>This module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p>\r\n<div class=\"sample-module\">{loadmodule mod_stats,Statistics}</div>','','-2','0','0','67','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:43:25','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','6','0','5','','','1','5','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('45','143','Syndicate Module','syndicate-module','','<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href=\"http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate\" title=\"Synicate Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadposition syndicate,Syndicate}</div>','','-2','0','0','67','2011-01-01 00:00:01','42','','2011-12-27 11:44:16','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','3','0','6','','','1','2','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('46','144','System','system','','<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a \"remember me\" box on the login module, and whether caching is enabled. New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Remember me <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Remember_Me\">Help</a></li>\r\n<li>SEF <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_SEF\">Help</a></li>\r\n<li>Debug <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Debug\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Cache <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Cache\">Help</a></li>\r\n<li>Log <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Log\">Help</a></li>\r\n<li>Redirect <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Redirect\">Help</a></li>\r\n</ul>','','-2','0','0','25','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:45:54','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','5','0','2','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('47','145','The Joomla! Community','the-joomla-community','','<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:47:56','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','3','0','3','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('48','146','The Joomla! Project','the-joomla-project','','<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>','','-2','0','0','19','2011-01-01 00:00:01','42','','2011-12-27 11:47:48','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','1','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('49','147','Typography','typography','','<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>','','-2','0','0','23','2011-01-01 00:00:01','42','Joomla!','2011-01-01 00:00:01','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','1','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('50','148','Upgraders','upgraders','','<p>If you are an experienced Joomla! 1.5 user, this Joomla site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla has strong continuity with Joomla! 1.7 while adding enhancements.</p>\r\n','\r\n<p>The new user manager will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href=\"http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6\"> how access control works</a> in on the <a href=\"http://docs.joomla.org\">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility. </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p> </p>','-2','0','0','19','2011-01-01 00:00:01','42','','2012-01-17 04:28:10','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','5','0','6','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','1','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('51','149','User','user-plugins','','<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Joomla.21\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<p>Two new plugins are available but are disabled by default.</p>\r\n<ul>\r\n<li>Contact Creator <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator\">Help</a><br />Creates a new linked contact record for each new user created.</li>\r\n<li>Profile <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Profile\">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li>\r\n</ul>','','-2','0','0','25','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:51:25','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','3','0','4','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('52','150','Users','users-component','','<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager\">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>','','-2','0','0','21','2011-01-01 00:00:01','42','Joomla!','2011-01-10 04:52:55','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}','2','0','5','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('53','151','Using Joomla!','using-joomla','','<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>','','-2','0','0','19','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:52:45','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','7','','','1','9','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('54','152','Weblinks','weblinks','','<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links\">Help</a></p>','','-2','0','0','21','2011-01-01 00:00:01','42','Joomla!','2011-01-10 04:20:10','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}','2','0','6','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('55','153','Weblinks Module','weblinks-module','','<p>This module displays the list of weblinks in a category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks\" title=\"Weblinks Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule weblinks,Weblinks}</div>','','-2','0','0','66','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:32:10','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','7','0','5','','','1','23','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('56','154','Who\'s Online','whos-online','','<p>The Who\'s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online\" title=\"Who\'s Online\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule whosonline,Who\'s Online}</div>','','-2','0','0','65','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:19:45','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','4','0','1','','','1','5','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('57','155','Wobbegone','wobbegone','','<p> </p>\r\n','\r\n<p> </p>','-2','0','0','72','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 05:01:59','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Wobbegon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Wobbegon\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','1','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('58','156','Wonderful Watermelon','wonderful-watermelon','','<p>Watermelon is a wonderful and healthy treat. We grow the world\'s sweetest watermelon. We have the largest watermelon patch in our country.</p>','','-2','0','0','30','2011-01-01 00:00:01','42','Fruit Shop Webmaster','2011-01-01 00:00:01','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','1','','','1','0','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('59','157','Wrapper Module','wrapper-module','','<p>This module shows an iFrame window to specified location. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper\" title=\"Wrapper Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule wrapper,Wrapper}</div>','','-2','0','0','67','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:35:00','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','8','0','1','','','1','15','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('60','158','News Feeds','news-feeds','','<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds\">Help</a></p>','','-2','0','0','21','2011-01-01 00:00:01','42','Joomla!','2011-12-27 11:27:31','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','3','0','4','','','1','2','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('61','159','Breadcrumbs Module','breadcrumbs-module','','<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs\" title=\"Breacrumbs Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule breadcrumbs,breadcrumbs}</div>','','-2','0','0','75','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:10:19','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}','5','0','2','','','1','9','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('62','160','Content','content-plugins','','<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Email Cloaking <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking\">Help</a></li>\r\n<li>Load Module <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules\">Help</a></li>\r\n<li>Page Break <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak\">Help</a></li>\r\n<li>Page Navigation<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation\"> Help</a></li>\r\n<li>Vote <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Vote\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Code Highlighter (GeSHi) <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Code_Highlighter_.28GeSHi.29\">Help</a></li>\r\n</ul>','','-2','0','0','25','2011-01-01 00:00:01','42','Joomla!','2011-09-06 06:11:50','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','2','0','7','','','1','1','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('64','162','Blue Mountain Rain Forest','blue-mountain-rain-forest','','<p> </p>\r\n','\r\n<p> </p>','-2','0','0','73','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 04:36:30','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Rain Forest Blue Mountains\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Rain Forest Blue Mountains\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','2','','','1','3','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('65','163','Ormiston Pound','ormiston-pound','','<p> </p>\r\n','\r\n<p> </p>','-2','0','0','73','2011-01-01 00:00:01','42','Parks Webmaster','2012-01-17 04:51:33','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Ormiston Pound\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Ormiston Pound\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','5','0','3','','','1','1','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('66','165','Latest Users Module','latest-users-module','','<p>This module displays the latest registered users. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule users_latest,Users Latest}</div>','','-2','0','0','65','2011-01-01 00:00:01','42','Joomla!','2011-09-17 22:21:05','42','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','4','0','3','','','1','6','','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('67','168','What\'s New in 1.5?','whats-new-in-15','','<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style=\"margin-bottom: 0in;\">In Joomla! 1.5, you\'\'ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>','','2','0','0','9','2011-01-01 00:00:01','42','Joomla! 1.5','2011-01-01 00:00:01','0','0','0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}','1','0','1','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('68','170','Captcha','captcha','','<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptcha® service but you may install other plugins connecting to different Captcha systems.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>ReCaptcha <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">help</a></li>\r\n</ul>\r\n<p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>','','-2','0','0','25','2012-01-17 03:20:45','42','Joomla!','2012-01-17 03:35:46','42','0','0000-00-00 00:00:00','2012-01-17 03:20:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','2','0','1','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('69','171','Quick Icons','quick-icons','','<p> The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Quick icon - Joomla! extensions updates notification <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">Help</a>.</li>\r\n<li>Quick icon - Joomla! update notification <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">Help</a></li>\r\n</ul>','','-2','0','0','25','2012-01-17 03:27:39','42','Joomla!','0000-00-00 00:00:00','0','0','0000-00-00 00:00:00','2012-01-17 03:27:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','1','0','0','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('70','170','Smart Search','smart-search','','<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help25:Extensions_Module_Manager_Smart_Search\">Help</a>.</p>\r\n<div class=\"sample-module\">{loadmodule finder,Smart Search}</div>','','-2','0','0','67','2012-01-17 03:42:36','42','','2012-01-17 16:15:48','42','0','0000-00-00 00:00:00','2012-01-17 03:42:36','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','10','0','0','','','1','13','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('71','174','О нас','about','','<h2>Контакты</h2>\r\n<p><span class=\"icon-envelope\"> </span><a href=\"mailto:inbox@yomayka.com\">inbox@yomayka.com</a></p>\r\n<p><span class=\"icon-bullhorn\"> </span> <span>(+38)096-087-30-26</span></p>\r\n<p> </p>\r\n<h2>Мы в соцсетях</h2>\r\n<p><span class=\"icon-globe\"> </span> <a href=\"http://vk.com/yomayka\" target=\"_blank\">http://vk.com/yomayka</a></p>','','1','0','0','9','2012-12-07 01:44:00','42','','2013-01-03 02:14:03','42','42','2013-01-03 02:14:03','2012-12-07 01:44:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','18','0','0','','','1','83','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('72','175','Холлофайбер? Не, не слышал...','holofiber','','<p>Холлофайбер – это нетканый материал, который обладает пустотелой структурой и изготавливается на современном оборудовании в соответствии с новой технологией. Название материала пошло из английского языка и в дословном переводе означает «пустотелое, полое волокно».</p>\r\n','\r\n<p> Пористая структура позволяет использовать этот материал в качестве звуко- и теплоизоляционного материала в различных отраслях промышленности. Он может использоваться для утепления верхней одежды, быть наполнителем для мягкой мебели и т.д. Наличие пор различных размеров наполняет волокно воздухом, что позволяет ему служить в качестве защитного слоя при звуко- и теплоизоляции, задерживать частички пыли, создавать упругие свойства и т.д. Еще его используют для создания воздушных фильтров. Его пористая многослойная структура придает материалу хорошую способность задерживать пыль. Для этого волокна должны располагаться не вертикально, а хаотично.</p>\r\n<p>Особенности этого материала позволяют использовать его в разных сферах:</p>\r\n<ol style=\"list-style-position: outside; list-style-image: initial;\"><ol style=\"list-style-position: outside; list-style-image: initial;\">\r\n<li>В строительстве пригодятся звуко-, тепло- и шумоизоляционные свойства для заполнения межстеновых пространств при возведении различных зданий и сооружений. А автомобилях холлофайбер может заменить пенополиуретан.</li>\r\n</ol></ol>\r\n<p> </p>\r\n<ol style=\"list-style-position: outside; list-style-image: initial;\"><ol style=\"list-style-position: outside; list-style-image: initial;\">\r\n<li>В легкой промышленности он служит отличным утепляющим слоем при пошиве верхней одежды, головных уборов и т.д. Он обеспечит теплоизоляционную прокладку. А еще позволит придать одежде форму, благодаря хорошей упругости и возможности возобновить первоначальную форму даже после многократных воздействий.</li>\r\n</ol></ol>\r\n<p> </p>\r\n<ol style=\"list-style-position: outside; list-style-image: initial;\"><ol style=\"list-style-position: outside; list-style-image: initial;\">\r\n<li>При изготовлении мягкой мебели этот материал послужит мягкой и жесткой основой для диванов, матрацев, кресел. Холлофайбер можно использовать при изготовлении спинок, подлокотников, сидений.</li>\r\n</ol></ol>\r\n<p> </p>\r\n<ol style=\"list-style-position: outside; list-style-image: initial;\">\r\n<li>В системах вентиляции и кондиционирования в качестве различных фильтров.</li>\r\n</ol>\r\n<p>Данный материал обладает массой преимуществ:</p>\r\n<ul style=\"list-style-position: outside; list-style-image: initial;\">\r\n<li>Высокая упругость и отличное умение держать форму.</li>\r\n<li>Эластичность и мягкость.</li>\r\n<li>Безопасность для окружающей среды.</li>\r\n<li>Гипоаллергенность.</li>\r\n<li>Воздухопроницаемость.</li>\r\n<li>Долговечность и устойчивость к многократным деформациям.</li>\r\n<li>Огнестойкость и антистатичность.</li>\r\n</ul>\r\n<p>По своим характеристикам холлофайбер напоминает хлопок или пух высокого качества, однако в эксплуатации он гораздо лучше этих натуральных аналогов. Волокна-пружинки, из которых состоит нетканое полотно, обеспечивают его устойчивость к истиранию, невесомую легкость, воздушность и удивительную мягкость. В отличие от своих природных конкурентов, холлофайбер не сбивается, во время его эксплуатации не образуются «текстильные комья», что очень важно для верхней одежды, одеял и мягкой мебели. Еще он позволяет придать мебели, постельным принадлежностям, одежде и головным уборам дополнительные дизайнерские свойства. Это великолепный наполнитель с практичными свойствами.</p>\r\n<p>Это синтетический материал, которому не страшны многократные стирки и деформации. Кроме того, холлофайбер производят в России и еще на стадии изготовления его дезинфицируют и стерилизуют на волоконном уровне. Он не пострадает и не изменит характеристик после обработки паром, сухим горячим воздухом и даже после кипячения.</p>\r\n<p>Натуральные материалы подвержены атаке микробов. В них весьма благоприятная среда для их размножения. Однако периодической термической обработки изделия из натуральных материалов поддавать нельзя, так как они безвозвратно потеряют своих свойства. Поэтому избавить изделия от вредоносных микроорганизмов практически нереально. Полезность такой естественности вызывает глубокие сомнения. Синтетические материалы являются вполне оправданной альтернативой натуральным.</p>\r\n<p>Холлофайбер отлично справится с проблемой экологической и гигиенической безопасности. Он безопасен даже для самых маленьких, поэтому его используют при производстве <a href=\"http://sleepenfield.ru/podushki_dla_sna_beremennyh/\">наших подушек для беременных</a> . Изделия из этого материала можно спокойно стирать при высоких температурах, любыми чистящими средствами. Этот материал не только безопасен во всех отношениях, но и экономичен.</p>','1','0','0','78','2012-12-21 02:37:14','42','','2012-12-21 21:40:53','42','42','2012-12-21 23:01:31','2012-12-21 02:37:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','0','','','1','14','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');
insert  into `jos_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values ('73','177','Начало','new-life','','<p>Ну вот мы и родились. Как всегда в спешке и суматохе. В день конца света... ) Мы не определились точно куда ползти и как правильно это делать но со временем и с Твоей помощью мы, думаю, научимся. Делая первые шажки, мы попробуем подарить Тебе немного хороших эмоций от нашей продукции. Так что пробуй и высказывай свои положительные и отрицательные эмоции и замечания. </p>\r\n<p>Сейчас основное направление - мягкие изделия. Какие угодно. Из чего угодно. Но фантазия как всегда не безгранична поэтому если у Тебя завалялась пара идеек то мы можем попробовать воплотить их. </p>\r\n<p> Следи за нами! Думаю будет интересно :)</p>\r\n<p> </p>','','1','0','0','79','2012-12-21 21:30:11','42','','2013-01-12 16:01:52','42','0','0000-00-00 00:00:00','2012-12-21 21:30:11','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','8','0','0','','','1','0','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');

/*Table structure for table `jos_content_frontpage` */

DROP TABLE IF EXISTS `jos_content_frontpage`;

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_content_frontpage` */

insert  into `jos_content_frontpage`(`content_id`,`ordering`) values ('8','2');
insert  into `jos_content_frontpage`(`content_id`,`ordering`) values ('35','4');
insert  into `jos_content_frontpage`(`content_id`,`ordering`) values ('24','1');
insert  into `jos_content_frontpage`(`content_id`,`ordering`) values ('50','3');

/*Table structure for table `jos_content_rating` */

DROP TABLE IF EXISTS `jos_content_rating`;

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_content_rating` */

/*Table structure for table `jos_core_log_searches` */

DROP TABLE IF EXISTS `jos_core_log_searches`;

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_core_log_searches` */

/*Table structure for table `jos_extensions` */

DROP TABLE IF EXISTS `jos_extensions`;

CREATE TABLE `jos_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10069 DEFAULT CHARSET=utf8;

/*Data for the table `jos_extensions` */

insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('1','com_mailto','component','com_mailto','','0','1','1','1','{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('2','com_wrapper','component','com_wrapper','','0','1','1','1','{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('3','com_admin','component','com_admin','','1','1','1','1','{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('4','com_banners','component','com_banners','','1','1','1','0','{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('5','com_cache','component','com_cache','','1','1','1','1','{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('6','com_categories','component','com_categories','','1','1','1','1','{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('7','com_checkin','component','com_checkin','','1','1','1','1','{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('8','com_contact','component','com_contact','','1','1','1','0','{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('9','com_cpanel','component','com_cpanel','','1','1','1','1','{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10','com_installer','component','com_installer','','1','1','1','1','{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('11','com_languages','component','com_languages','','1','1','1','1','{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"ru-RU\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('12','com_login','component','com_login','','1','1','1','1','{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('13','com_media','component','com_media','','1','1','0','1','{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('14','com_menus','component','com_menus','','1','1','1','1','{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('15','com_messages','component','com_messages','','1','1','1','1','{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('16','com_modules','component','com_modules','','1','1','1','1','{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('17','com_newsfeeds','component','com_newsfeeds','','1','1','1','0','{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('18','com_plugins','component','com_plugins','','1','1','1','1','{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('19','com_search','component','com_search','','1','1','1','1','{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('20','com_templates','component','com_templates','','1','1','1','1','{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('21','com_weblinks','component','com_weblinks','','1','1','1','0','{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('22','com_content','component','com_content','','1','1','0','1','{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"0\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"5\",\"num_columns\":\"1\",\"num_links\":\"5\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"-1\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('23','com_config','component','com_config','','1','1','0','1','{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('24','com_redirect','component','com_redirect','','1','1','0','1','{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('25','com_users','component','com_users','','1','1','0','1','{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('27','com_finder','component','com_finder','','1','1','0','0','{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('100','PHPMailer','library','phpmailer','','0','1','1','1','{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('101','SimplePie','library','simplepie','','0','1','1','1','{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('102','phputf8','library','phputf8','','0','1','1','1','{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('103','Joomla! Platform','library','joomla','','0','1','1','1','{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('200','mod_articles_archive','module','mod_articles_archive','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('201','mod_articles_latest','module','mod_articles_latest','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('202','mod_articles_popular','module','mod_articles_popular','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('203','mod_banners','module','mod_banners','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('204','mod_breadcrumbs','module','mod_breadcrumbs','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('205','mod_custom','module','mod_custom','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('206','mod_feed','module','mod_feed','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('207','mod_footer','module','mod_footer','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('208','mod_login','module','mod_login','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('209','mod_menu','module','mod_menu','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('210','mod_articles_news','module','mod_articles_news','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('211','mod_random_image','module','mod_random_image','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('212','mod_related_items','module','mod_related_items','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('213','mod_search','module','mod_search','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('214','mod_stats','module','mod_stats','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('215','mod_syndicate','module','mod_syndicate','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('216','mod_users_latest','module','mod_users_latest','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('217','mod_weblinks','module','mod_weblinks','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('218','mod_whosonline','module','mod_whosonline','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('219','mod_wrapper','module','mod_wrapper','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('220','mod_articles_category','module','mod_articles_category','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('221','mod_articles_categories','module','mod_articles_categories','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('222','mod_languages','module','mod_languages','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('223','mod_finder','module','mod_finder','','0','1','0','0','{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('300','mod_custom','module','mod_custom','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('301','mod_feed','module','mod_feed','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('302','mod_latest','module','mod_latest','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('303','mod_logged','module','mod_logged','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('304','mod_login','module','mod_login','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('305','mod_menu','module','mod_menu','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('307','mod_popular','module','mod_popular','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('308','mod_quickicon','module','mod_quickicon','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('309','mod_status','module','mod_status','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('310','mod_submenu','module','mod_submenu','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('311','mod_title','module','mod_title','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('312','mod_toolbar','module','mod_toolbar','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('313','mod_multilangstatus','module','mod_multilangstatus','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('314','mod_version','module','mod_version','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('400','plg_authentication_gmail','plugin','gmail','authentication','0','0','1','0','{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('401','plg_authentication_joomla','plugin','joomla','authentication','0','1','1','1','{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('402','plg_authentication_ldap','plugin','ldap','authentication','0','0','1','0','{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','','0','0000-00-00 00:00:00','3','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('404','plg_content_emailcloak','plugin','emailcloak','content','0','1','1','0','{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('405','plg_content_geshi','plugin','geshi','content','0','0','1','0','{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('406','plg_content_loadmodule','plugin','loadmodule','content','0','1','1','0','{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','','0','2011-09-18 15:22:50','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('407','plg_content_pagebreak','plugin','pagebreak','content','0','1','1','1','{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','','0','0000-00-00 00:00:00','4','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('408','plg_content_pagenavigation','plugin','pagenavigation','content','0','1','1','1','{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','','0','0000-00-00 00:00:00','5','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('409','plg_content_vote','plugin','vote','content','0','1','1','1','{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','6','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('410','plg_editors_codemirror','plugin','codemirror','editors','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('411','plg_editors_none','plugin','none','editors','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('412','plg_editors_tinymce','plugin','tinymce','editors','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2012\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','','0','0000-00-00 00:00:00','3','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('413','plg_editors-xtd_article','plugin','article','editors-xtd','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('414','plg_editors-xtd_image','plugin','image','editors-xtd','0','1','1','0','{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('415','plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd','0','1','1','0','{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','3','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('416','plg_editors-xtd_readmore','plugin','readmore','editors-xtd','0','1','1','0','{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','4','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('417','plg_search_categories','plugin','categories','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('418','plg_search_contacts','plugin','contacts','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('419','plg_search_content','plugin','content','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('420','plg_search_newsfeeds','plugin','newsfeeds','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('421','plg_search_weblinks','plugin','weblinks','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('422','plg_system_languagefilter','plugin','languagefilter','system','0','0','1','1','{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('423','plg_system_p3p','plugin','p3p','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','','0','0000-00-00 00:00:00','2','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('424','plg_system_cache','plugin','cache','system','0','0','1','1','{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','','0','0000-00-00 00:00:00','9','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('425','plg_system_debug','plugin','debug','system','0','1','1','0','{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','','0','0000-00-00 00:00:00','4','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('426','plg_system_log','plugin','log','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','5','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('427','plg_system_redirect','plugin','redirect','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','6','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('428','plg_system_remember','plugin','remember','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','7','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('429','plg_system_sef','plugin','sef','system','0','1','1','0','{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','8','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('430','plg_system_logout','plugin','logout','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','3','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('431','plg_user_contactcreator','plugin','contactcreator','user','0','0','1','1','{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('432','plg_user_joomla','plugin','joomla','user','0','1','1','0','{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','','0','0000-00-00 00:00:00','2','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('433','plg_user_profile','plugin','profile','user','0','0','1','1','{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('434','plg_extension_joomla','plugin','joomla','extension','0','1','1','1','{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('435','plg_content_joomla','plugin','joomla','content','0','1','1','0','{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('436','plg_system_languagecode','plugin','languagecode','system','0','0','1','0','{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','10','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('437','plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon','0','1','1','1','{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('438','plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon','0','1','1','1','{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('439','plg_captcha_recaptcha','plugin','recaptcha','captcha','0','1','1','0','{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('440','plg_system_highlight','plugin','highlight','system','0','1','1','0','{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','7','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('441','plg_content_finder','plugin','finder','content','0','0','1','0','{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('442','plg_finder_categories','plugin','categories','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('443','plg_finder_contacts','plugin','contacts','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('444','plg_finder_content','plugin','content','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','3','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('445','plg_finder_newsfeeds','plugin','newsfeeds','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','4','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('446','plg_finder_weblinks','plugin','weblinks','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','5','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('502','bluestork','template','bluestork','','1','1','1','0','{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('503','beez_20','template','beez_20','','0','1','1','0','{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('504','hathor','template','hathor','','1','1','1','0','{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10045','showplus','module','mod_showplus','','0','1','0','0','{\"legacy\":false,\"name\":\"showplus\",\"type\":\"module\",\"creationDate\":\"Feb 05, 2012\",\"author\":\"Levente Hunyadi\",\"copyright\":\"\\u00a9 2011 Levente Hunyadi. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/hunyadi.info.hu\\/projects\\/showplus\",\"version\":\"1.0.4.3\",\"description\":\"SHOWPLUS_DESCRIPTION\",\"group\":\"\"}','{\"folder\":\"images\\/sampledata\\/fruitshop\",\"width\":\"600\",\"height\":\"400\",\"alignment\":\"center\",\"orientation\":\"horizontal\",\"buttons\":\"1\",\"captions\":\"1\",\"target\":\"_self\",\"delay\":\"3000\",\"duration\":\"800\",\"transition\":\"fade\",\"transition_easing\":\"linear\",\"transition_pan\":\"100\",\"transition_zoom\":\"50\",\"margin\":\"\",\"border_style\":\"\",\"border_width\":\"\",\"border_color\":\"\",\"padding\":\"\",\"background_color\":\"\",\"thumb_width\":\"60\",\"thumb_height\":\"40\",\"links\":\"1\",\"thumb_cache\":\"1\",\"thumb_folder\":\"thumbs\",\"thumb_quality\":\"85\",\"labels\":\"labels\",\"labels_multilingual\":\"0\",\"sort_criterion\":\"labels-filename\",\"sort_order\":\"0\",\"library\":\"default\",\"moduleclass_sfx\":\"\",\"debug\":\"0\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('600','English (United Kingdom)','language','en-GB','','0','1','1','1','{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('601','English (United Kingdom)','language','en-GB','','1','1','1','1','{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('700','files_joomla','file','joomla','','0','1','1','1','{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('800','PKG_JOOMLA','package','pkg_joomla','','0','1','1','1','{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10047','jshopping','component','com_jshopping','','1','1','0','0','{\"legacy\":false,\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"18.02.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.5.0\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10041','Russian','language','ru-RU','','0','1','0','0','{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-11-14\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.8.4\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10042','Russian','language','ru-RU','','1','1','0','0','{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-11-14\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.8.4\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10043','ru-RU','package','pkg_ru-RU','','0','1','1','0','{\"legacy\":false,\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.8.4\",\"description\":\"Joomla 2.5 Russian Language Package\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10048','Jshopping Categories','module','mod_jshopping_categories','','0','1','0','0','{\"legacy\":false,\"name\":\"Jshopping Categories\",\"type\":\"module\",\"creationDate\":\"25.11.2011\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.0.1\",\"description\":\"Displays a categories in shop.\",\"group\":\"\"}','{\"show_image\":\"0\",\"sort\":\"id\",\"ordering\":\"asc\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('28','com_joomlaupdate','component','com_joomlaupdate','','1','1','0','1','{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10054','TinyMCE ru-RU','file','tinymce_ru-ru','','0','1','0','0','{\"legacy\":false,\"name\":\"TinyMCE ru-RU\",\"type\":\"file\",\"creationDate\":\"2012-06-19\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.5.2.1\",\"description\":\"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10055','mod_ariextmenu','module','mod_ariextmenu','','0','1','1','0','{\"legacy\":false,\"name\":\"ARI Ext Menu\",\"type\":\"module\",\"creationDate\":\"February 2012\",\"author\":\"ARI Soft\",\"copyright\":\"ARI Soft\",\"authorEmail\":\"info@ari-soft.com\",\"authorUrl\":\"www.ari-soft.com\",\"version\":\"2.0.19\",\"description\":\"ARI_EXT_MENU_MODULE\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10056','mod_artwijmomenu','module','mod_artwijmomenu','','0','1','1','0','{\"legacy\":true,\"name\":\"Art Wijmo Menu\",\"type\":\"module\",\"creationDate\":\"December 2010\",\"author\":\"Artetics\",\"copyright\":\"Artetics\",\"authorEmail\":\"info@artetics.com\",\"authorUrl\":\"www.artetics.com.com\",\"version\":\"1.7.0\",\"description\":\"Art Wijmo Menu is menu module with various options\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10057','mod_exmenu','module','mod_exmenu','','0','1','1','0','{\"legacy\":false,\"name\":\"Extended Menu\",\"type\":\"module\",\"creationDate\":\"February 2012\",\"author\":\"Daniel Ecer\",\"copyright\":\"(C) 2005-2011 Daniel Ecer\",\"authorEmail\":\"\",\"authorUrl\":\"de.siteof.de\",\"version\":\"1.1.0 (build 89)\",\"description\":\"\\n\\t\\n\\tThis Extended Menu module displays a menu in a flexible way.\\n\\tPlease visit <a href=\\\"http:\\/\\/de.siteof.de\\/extended-menu.html\\\">de.siteof.de<\\/a> for more details.<br \\/>\\n\\tTo use this module don\'t forget to publish it (and probably unpublish the default mainmenu module).<br \\/>\\n\\t<br \\/>\\n\\t(If you like this module please consider a <a href=\\\"http:\\/\\/de.siteof.de\\/donate.html\\\">donation<\\/a>.)\\n\\t\\n\\t\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10058','mod_menucss','module','mod_menucss','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_menucss\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10059','mod_roknavmenu','module','mod_roknavmenu','','0','1','1','0','{\"legacy\":false,\"name\":\"RokNavMenu\",\"type\":\"module\",\"creationDate\":\"February 3, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.9\",\"description\":\"RocketTheme Customizable Navigation Menu\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10060','mod_swmenufree','module','mod_swmenufree','','0','1','1','0','{\"legacy\":false,\"name\":\"swMenuFree\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Sean White\",\"copyright\":\"Copyright (C) 2010-2011 Sean White. All rights reserved.\",\"authorEmail\":\"sean@swmenupro.com\",\"authorUrl\":\"http:\\/\\/swmenupro.com\",\"version\":\"6.6\",\"description\":\"swMenuFree dynamic menu module for Joomla\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10061','rokextender','plugin','rokextender','system','0','1','1','0','{\"legacy\":false,\"name\":\"System - RokExtender\",\"type\":\"plugin\",\"creationDate\":\"February 24, 2011\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.0\",\"description\":\"System - Gantry\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10062','atomic','template','atomic','','0','1','1','0','false','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10063','beez5','template','beez5','','0','1','1','0','{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','-1');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10065','lady','template','lady','','0','1','1','0','{\"legacy\":true,\"name\":\"lady\",\"type\":\"template\",\"creationDate\":\"2012-10-04\",\"author\":\"Pixpro\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\" <p> Lady is the simplest inherited from TRANSMODE template. Bootstrapped.<p> \",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10066','mod_bee_menu','module','mod_bee_menu','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_bee_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','{\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"brandName\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10067','Jshopping Cart','module','mod_jshopping_cart','','0','1','0','0','{\"legacy\":false,\"name\":\"Jshopping Cart\",\"type\":\"module\",\"creationDate\":\"01.01.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.0.2\",\"description\":\"Displays a JoomShopping cart\",\"group\":\"\"}','[]','','','0','0000-00-00 00:00:00','0','0');
insert  into `jos_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values ('10068','mod_pagetitle','module','mod_pagetitle','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_pagetitle\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_PAGETITLE_XML_DESCRIPTION\",\"group\":\"\"}','{\"prepare_content\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','','0','0000-00-00 00:00:00','0','0');

/*Table structure for table `jos_finder_filters` */

DROP TABLE IF EXISTS `jos_finder_filters`;

CREATE TABLE `jos_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY  (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_filters` */

/*Table structure for table `jos_finder_links` */

DROP TABLE IF EXISTS `jos_finder_links`;

CREATE TABLE `jos_finder_links` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `indexdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `md5sum` varchar(32) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `state` int(5) default '1',
  `access` int(5) default '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL default '0',
  `sale_price` double unsigned NOT NULL default '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY  (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links` */

/*Table structure for table `jos_finder_links_terms0` */

DROP TABLE IF EXISTS `jos_finder_links_terms0`;

CREATE TABLE `jos_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms0` */

/*Table structure for table `jos_finder_links_terms1` */

DROP TABLE IF EXISTS `jos_finder_links_terms1`;

CREATE TABLE `jos_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms1` */

/*Table structure for table `jos_finder_links_terms2` */

DROP TABLE IF EXISTS `jos_finder_links_terms2`;

CREATE TABLE `jos_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms2` */

/*Table structure for table `jos_finder_links_terms3` */

DROP TABLE IF EXISTS `jos_finder_links_terms3`;

CREATE TABLE `jos_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms3` */

/*Table structure for table `jos_finder_links_terms4` */

DROP TABLE IF EXISTS `jos_finder_links_terms4`;

CREATE TABLE `jos_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms4` */

/*Table structure for table `jos_finder_links_terms5` */

DROP TABLE IF EXISTS `jos_finder_links_terms5`;

CREATE TABLE `jos_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms5` */

/*Table structure for table `jos_finder_links_terms6` */

DROP TABLE IF EXISTS `jos_finder_links_terms6`;

CREATE TABLE `jos_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms6` */

/*Table structure for table `jos_finder_links_terms7` */

DROP TABLE IF EXISTS `jos_finder_links_terms7`;

CREATE TABLE `jos_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms7` */

/*Table structure for table `jos_finder_links_terms8` */

DROP TABLE IF EXISTS `jos_finder_links_terms8`;

CREATE TABLE `jos_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms8` */

/*Table structure for table `jos_finder_links_terms9` */

DROP TABLE IF EXISTS `jos_finder_links_terms9`;

CREATE TABLE `jos_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_terms9` */

/*Table structure for table `jos_finder_links_termsa` */

DROP TABLE IF EXISTS `jos_finder_links_termsa`;

CREATE TABLE `jos_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_termsa` */

/*Table structure for table `jos_finder_links_termsb` */

DROP TABLE IF EXISTS `jos_finder_links_termsb`;

CREATE TABLE `jos_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_termsb` */

/*Table structure for table `jos_finder_links_termsc` */

DROP TABLE IF EXISTS `jos_finder_links_termsc`;

CREATE TABLE `jos_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_termsc` */

/*Table structure for table `jos_finder_links_termsd` */

DROP TABLE IF EXISTS `jos_finder_links_termsd`;

CREATE TABLE `jos_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_termsd` */

/*Table structure for table `jos_finder_links_termse` */

DROP TABLE IF EXISTS `jos_finder_links_termse`;

CREATE TABLE `jos_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_termse` */

/*Table structure for table `jos_finder_links_termsf` */

DROP TABLE IF EXISTS `jos_finder_links_termsf`;

CREATE TABLE `jos_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_links_termsf` */

/*Table structure for table `jos_finder_taxonomy` */

DROP TABLE IF EXISTS `jos_finder_taxonomy`;

CREATE TABLE `jos_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `access` tinyint(1) unsigned NOT NULL default '0',
  `ordering` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_taxonomy` */

insert  into `jos_finder_taxonomy`(`id`,`parent_id`,`title`,`state`,`access`,`ordering`) values ('1','0','ROOT','0','0','0');

/*Table structure for table `jos_finder_taxonomy_map` */

DROP TABLE IF EXISTS `jos_finder_taxonomy_map`;

CREATE TABLE `jos_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_taxonomy_map` */

/*Table structure for table `jos_finder_terms` */

DROP TABLE IF EXISTS `jos_finder_terms`;

CREATE TABLE `jos_finder_terms` (
  `term_id` int(10) unsigned NOT NULL auto_increment,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_terms` */

/*Table structure for table `jos_finder_terms_common` */

DROP TABLE IF EXISTS `jos_finder_terms_common`;

CREATE TABLE `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_terms_common` */

insert  into `jos_finder_terms_common`(`term`,`language`) values ('a','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('about','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('after','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('ago','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('all','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('am','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('an','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('and','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('ani','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('any','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('are','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('aren\'t','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('as','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('at','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('be','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('but','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('by','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('for','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('from','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('get','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('go','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('how','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('if','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('in','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('into','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('is','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('isn\'t','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('it','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('its','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('me','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('more','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('most','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('must','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('my','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('new','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('no','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('none','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('not','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('noth','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('nothing','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('of','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('off','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('often','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('old','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('on','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('onc','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('once','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('onli','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('only','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('or','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('other','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('our','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('ours','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('out','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('over','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('page','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('she','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('should','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('small','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('so','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('some','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('than','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('thank','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('that','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('the','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('their','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('theirs','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('them','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('then','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('there','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('these','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('they','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('this','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('those','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('thus','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('time','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('times','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('to','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('too','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('true','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('under','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('until','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('up','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('upon','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('use','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('user','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('users','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('veri','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('version','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('very','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('via','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('want','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('was','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('way','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('were','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('what','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('when','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('where','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('whi','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('which','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('who','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('whom','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('whose','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('why','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('wide','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('will','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('with','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('within','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('without','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('would','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('yes','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('yet','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('you','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('your','en');
insert  into `jos_finder_terms_common`(`term`,`language`) values ('yours','en');

/*Table structure for table `jos_finder_tokens` */

DROP TABLE IF EXISTS `jos_finder_tokens`;

CREATE TABLE `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '1',
  `context` tinyint(1) unsigned NOT NULL default '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_tokens` */

/*Table structure for table `jos_finder_tokens_aggregate` */

DROP TABLE IF EXISTS `jos_finder_tokens_aggregate`;

CREATE TABLE `jos_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL default '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_tokens_aggregate` */

/*Table structure for table `jos_finder_types` */

DROP TABLE IF EXISTS `jos_finder_types`;

CREATE TABLE `jos_finder_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_finder_types` */

/*Table structure for table `jos_jshopping_addons` */

DROP TABLE IF EXISTS `jos_jshopping_addons`;

CREATE TABLE `jos_jshopping_addons` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `version` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_addons` */

/*Table structure for table `jos_jshopping_attr` */

DROP TABLE IF EXISTS `jos_jshopping_attr`;

CREATE TABLE `jos_jshopping_attr` (
  `attr_id` int(11) NOT NULL auto_increment,
  `attr_ordering` int(11) NOT NULL default '0',
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_attr` */

insert  into `jos_jshopping_attr`(`attr_id`,`attr_ordering`,`attr_type`,`independent`,`name_en-GB`,`name_ru-RU`) values ('2','1','1','1','meterial','материал');

/*Table structure for table `jos_jshopping_attr_values` */

DROP TABLE IF EXISTS `jos_jshopping_attr_values`;

CREATE TABLE `jos_jshopping_attr_values` (
  `value_id` int(11) NOT NULL auto_increment,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL default '0',
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_attr_values` */

insert  into `jos_jshopping_attr_values`(`value_id`,`attr_id`,`value_ordering`,`image`,`name_en-GB`,`name_ru-RU`) values ('7','2','2','','biflex','Бифлекс');
insert  into `jos_jshopping_attr_values`(`value_id`,`attr_id`,`value_ordering`,`image`,`name_en-GB`,`name_ru-RU`) values ('6','2','1','','oil','Масло');
insert  into `jos_jshopping_attr_values`(`value_id`,`attr_id`,`value_ordering`,`image`,`name_en-GB`,`name_ru-RU`) values ('8','2','3','','fleece','Флиз');

/*Table structure for table `jos_jshopping_cart_temp` */

DROP TABLE IF EXISTS `jos_jshopping_cart_temp`;

CREATE TABLE `jos_jshopping_cart_temp` (
  `id` int(11) NOT NULL auto_increment,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_cart_temp` */

insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('1','qbb94v7jlptjvqe3ovi6d0icq2','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('2','q77nj1qh5mnh9q2jjfo4penj83','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('3','ep304h602o8lm1q4uv0uej1pp2','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('4','5537tdpotn616d68nba3pufsf0','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('5','ns5r8teb57e2j9jifg2a45ern2','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('7','s88melbv6snc6lg30j3tj4ugm5','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('13','6d2d83b9ec7099405fdbb79fbaddf19c','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('14','cf2cdf149e09d34915953d17057b7e17','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('15','f1d442632190b3cec42b2fd0c3f04b68','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('16','8a4c7b4cc2fc8f167520083dbfd3be1b','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('17','67875d7ebc8cbdf309f93735e3bd9f2c','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('18','27c6d835aaee58251d225c0250d63bd9','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('19','1f4c1b8e728ec9366f7f43c28403e5de','a:0:{}','wishlist');
insert  into `jos_jshopping_cart_temp`(`id`,`id_cookie`,`cart`,`type_cart`) values ('20','a4d2863e6c218a6b3529d34acc8cba7c','a:0:{}','wishlist');

/*Table structure for table `jos_jshopping_categories` */

DROP TABLE IF EXISTS `jos_jshopping_categories`;

CREATE TABLE `jos_jshopping_categories` (
  `category_id` int(11) NOT NULL auto_increment,
  `category_image` varchar(255) default NULL,
  `category_parent_id` int(11) NOT NULL default '0',
  `category_publish` tinyint(1) unsigned NOT NULL default '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL default '1',
  `category_template` varchar(64) default NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime default '0000-00-00 00:00:00',
  `products_page` int(8) NOT NULL default '12',
  `products_row` int(3) NOT NULL default '3',
  `access` int(3) NOT NULL default '1',
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
  PRIMARY KEY  (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_categories` */

insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('10',NULL,'0','1','1',NULL,'27','2012-12-21 00:36:52','30','3','1','','','','','','','','Cool :)','cool','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('2',NULL,'0','1','1',NULL,'32','2012-02-19 19:45:09','12','3','1','','','','','','','','Геометрия','geometry','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('5',NULL,'0','0','1',NULL,'14','2012-12-21 00:29:59','30','3','1','','','','','','','','Праздники','holidays','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('6',NULL,'0','1','1',NULL,'31','2012-12-21 00:30:26','30','3','1','','','','','','','','Автомобилистам','car','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('7',NULL,'0','1','1',NULL,'30','2012-12-21 00:31:13','30','3','1','','','','','','','','IT','it','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('8',NULL,'0','1','1',NULL,'29','2012-12-21 00:32:13','30','3','1','','','','','','','','Гламур','glamour','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('9',NULL,'0','0','1',NULL,'28','2012-12-21 00:33:04','30','3','1','','','','','','','','Нонкомформизм o_O','noncomformism','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('11',NULL,'0','0','1',NULL,'26','2012-12-21 00:38:08','30','3','1','','','','','','','','HoReCa','horeca','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('12',NULL,'0','1','1',NULL,'2','2012-12-21 00:59:08','30','3','1','','','','','','','','Пэтс','pets','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('13',NULL,'0','1','1',NULL,'24','2012-12-22 00:43:37','30','3','1','','','','','','','','Бескаркасная мебель','furniture','','','','','');
insert  into `jos_jshopping_categories`(`category_id`,`category_image`,`category_parent_id`,`category_publish`,`category_ordertype`,`category_template`,`ordering`,`category_add_date`,`products_page`,`products_row`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('14',NULL,'0','0','1',NULL,'25','2012-12-22 00:44:50','30','3','1','','','','','','','','Подушки','pillows','','','','','');

/*Table structure for table `jos_jshopping_config` */

DROP TABLE IF EXISTS `jos_jshopping_config`;

CREATE TABLE `jos_jshopping_config` (
  `id` tinyint(1) NOT NULL default '0',
  `count_products_to_page` int(4) NOT NULL default '0',
  `count_products_to_row` int(2) NOT NULL default '0',
  `count_category_to_row` int(2) NOT NULL default '0',
  `image_category_width` int(4) NOT NULL default '0',
  `image_category_height` int(4) NOT NULL default '0',
  `image_product_width` int(4) NOT NULL default '0',
  `image_product_height` int(4) NOT NULL default '0',
  `image_product_full_width` int(4) NOT NULL default '0',
  `image_product_full_height` int(4) NOT NULL default '0',
  `video_product_width` int(4) NOT NULL default '0',
  `video_product_height` int(4) NOT NULL default '0',
  `adminLanguage` varchar(8) NOT NULL default '',
  `defaultLanguage` varchar(8) NOT NULL default '',
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
  `next_order_number` int(11) NOT NULL default '1',
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
  `category_sorting` tinyint(1) NOT NULL default '1',
  `product_sorting` tinyint(1) NOT NULL default '1',
  `product_sorting_direction` tinyint(1) NOT NULL default '0',
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_config` */

insert  into `jos_jshopping_config`(`id`,`count_products_to_page`,`count_products_to_row`,`count_category_to_row`,`image_category_width`,`image_category_height`,`image_product_width`,`image_product_height`,`image_product_full_width`,`image_product_full_height`,`video_product_width`,`video_product_height`,`adminLanguage`,`defaultLanguage`,`mainCurrency`,`decimal_count`,`decimal_symbol`,`thousand_separator`,`currency_format`,`use_rabatt_code`,`enable_wishlist`,`default_status_order`,`order_number_type`,`store_address_format`,`store_date_format`,`contact_email`,`allow_reviews_prod`,`allow_reviews_only_registered`,`allow_reviews_manuf`,`max_mark`,`summ_null_shipping`,`without_shipping`,`without_payment`,`pdf_parameters`,`next_order_number`,`shop_user_guest`,`hide_product_not_avaible_stock`,`show_buy_in_category`,`user_as_catalog`,`show_tax_in_product`,`show_tax_product_in_cart`,`show_plus_shipping_in_product`,`hide_buy_not_avaible_stock`,`show_sort_product`,`show_count_select_products`,`order_send_pdf_client`,`order_send_pdf_admin`,`show_delivery_time`,`securitykey`,`demo_type`,`product_show_manufacturer_logo`,`product_show_manufacturer`,`product_show_weight`,`max_count_order_one_product`,`min_count_order_one_product`,`min_price_order`,`max_price_order`,`hide_tax`,`licensekod`,`product_attribut_first_value_empty`,`show_hits`,`show_registerform_in_logintemplate`,`admin_show_product_basic_price`,`admin_show_attributes`,`admin_show_delivery_time`,`admin_show_languages`,`use_different_templates_cat_prod`,`admin_show_product_video`,`admin_show_product_related`,`admin_show_product_files`,`admin_show_product_bay_price`,`admin_show_product_labels`,`sorting_country_in_alphabet`,`hide_text_product_not_available`,`show_weight_order`,`discount_use_full_sum`,`show_cart_all_step_checkout`,`use_plugin_content`,`display_price_admin`,`display_price_front`,`product_list_show_weight`,`product_list_show_manufacturer`,`use_extend_tax_rule`,`use_extend_display_price_rule`,`fields_register`,`template`,`show_product_code`,`show_product_code_in_cart`,`savelog`,`savelogpaymentdata`,`product_list_show_min_price`,`product_count_related_in_row`,`category_sorting`,`product_sorting`,`product_sorting_direction`,`show_product_list_filters`,`admin_show_product_extra_field`,`product_list_display_extra_fields`,`filter_display_extra_fields`,`product_hide_extra_fields`,`default_country`,`show_return_policy_in_email_order`,`client_allow_cancel_order`,`admin_show_vendors`,`vendor_order_message_type`,`admin_not_send_email_order_vendor_order`,`not_redirect_in_cart_after_buy`,`product_show_vendor`,`product_show_vendor_detail`,`product_list_show_vendor`,`admin_show_freeattributes`,`product_show_button_back`,`calcule_tax_after_discount`,`product_list_show_product_code`,`radio_attr_value_vertical`,`attr_display_addprice`,`use_ssl`,`product_list_show_price_description`,`display_button_print`,`hide_shipping_step`,`hide_payment_step`,`image_resize_type`,`use_extend_attribute_data`,`product_list_show_price_default`,`product_list_show_qty_stock`,`product_show_qty_stock`,`displayprice`,`use_decimal_qty`,`ext_tax_rule_for`,`display_reviews_without_confirm`,`manufacturer_sorting`,`admin_show_units`,`main_unit_weight`,`create_alias_product_category_auto`) values ('1','30','3','1','160','0','275','0','320','0','320','240','en-GB','ru-RU','1','2','.','','2','1','1','1','1','%storename %address %city %zip','%d.%m.%Y','andreyalek@gmail.com','0','0','0','10','-1.00','0','0','208:65:208:30','138','0','0','0','0','0','0','0','1','0','0','1','0','0','53ecaaae25675f751e1dd31c4e6178bf','0','0','0','0','0','0','0','0','1','','0','0','0','0','1','1','1','0','1','1','1','0','1','1','0','0','0','0','0','0','0','0','0','0','0','a:3:{s:8:\"register\";a:15:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}','','1','0','0','0','0','3','1','4','0','0','0','','','','220','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','1','0','1','0');

/*Table structure for table `jos_jshopping_config_display_prices` */

DROP TABLE IF EXISTS `jos_jshopping_config_display_prices`;

CREATE TABLE `jos_jshopping_config_display_prices` (
  `id` int(11) NOT NULL auto_increment,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_config_display_prices` */

/*Table structure for table `jos_jshopping_config_seo` */

DROP TABLE IF EXISTS `jos_jshopping_config_seo`;

CREATE TABLE `jos_jshopping_config_seo` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_ru-RU` varchar(255) NOT NULL,
  `keyword_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_config_seo` */

insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('1','category','10','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('2','manufacturers','20','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('3','cart','30','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('4','wishlist','40','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('5','login','50','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('6','register','60','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('7','editaccount','70','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('8','myorders','80','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('9','myaccount','90','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('10','search','100','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('11','search-result','110','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('12','myorder-detail','120','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('13','vendors','130','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('14','content-agb','140','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('15','content-return_policy','150','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('16','content-shipping','160','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('17','checkout-address','170','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('18','checkout-payment','180','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('19','checkout-shipping','190','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('20','checkout-preview','200','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('21','lastproducts','210','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('22','randomproducts','220','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('23','bestsellerproducts','230','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('24','labelproducts','240','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('25','topratingproducts','250','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('26','tophitsproducts','260','','','','','','');
insert  into `jos_jshopping_config_seo`(`id`,`alias`,`ordering`,`title_en-GB`,`keyword_en-GB`,`description_en-GB`,`title_ru-RU`,`keyword_ru-RU`,`description_ru-RU`) values ('27','all-products','270','','','','','','');

/*Table structure for table `jos_jshopping_config_statictext` */

DROP TABLE IF EXISTS `jos_jshopping_config_statictext`;

CREATE TABLE `jos_jshopping_config_statictext` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(64) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_ru-RU` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_config_statictext` */

insert  into `jos_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values ('1','home','','');
insert  into `jos_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values ('2','manufacturer','','');
insert  into `jos_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values ('3','agb','','');
insert  into `jos_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values ('4','return_policy','','');
insert  into `jos_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values ('5','order_email_descr','','');
insert  into `jos_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values ('6','order_finish_descr','','');
insert  into `jos_jshopping_config_statictext`(`id`,`alias`,`text_en-GB`,`text_ru-RU`) values ('7','shipping','','');

/*Table structure for table `jos_jshopping_countries` */

DROP TABLE IF EXISTS `jos_jshopping_countries`;

CREATE TABLE `jos_jshopping_countries` (
  `country_id` int(11) NOT NULL auto_increment,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_countries` */

insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('1','0','1','AFG','AF','Afghanistan','Afghanistan','Afghanistan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('2','0','2','ALB','AL','Albania','Albanien','Albania');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('3','0','3','DZA','DZ','Algeria','Algerien','Algeria');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('4','0','4','ASM','AS','American Samoa','Amerikanisch-Samoa','American Samoa');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('5','0','5','AND','AD','Andorra','Andorra','Andorra');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('6','0','6','AGO','AO','Angola','Angola','Angola');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('7','0','7','AIA','AI','Anguilla','Anguilla','Anguilla');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('8','0','8','ATA','AQ','Antarctica','Antarktis','Antarctica');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('9','0','9','ATG','AG','Antigua and Barbuda','Antigua und Barbuda','Antigua and Barbuda');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('10','0','10','ARG','AR','Argentina','Argentinien','Argentina');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('11','0','11','ARM','AM','Armenia','Armenien','Armenia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('12','0','12','ABW','AW','Aruba','Aruba','Aruba');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('13','0','13','AUS','AU','Australia','Australien','Australia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('14','0','14','AUT','AT','Austria','Österreich','Austria');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('15','0','15','AZE','AZ','Azerbaijan','Aserbaidschan','Azerbaijan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('16','0','16','BHS','BS','Bahamas','Bahamas','Bahamas');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('17','0','17','BHR','BH','Bahrain','Bahrain','Bahrain');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('18','0','18','BGD','BD','Bangladesh','Bangladesch','Bangladesh');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('19','0','19','BRB','BB','Barbados','Barbados','Barbados');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('20','0','20','BLR','BY','Belarus','Weissrussland','Belarus');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('21','0','21','BEL','BE','Belgium','Belgien','Belgium');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('22','0','22','BLZ','BZ','Belize','Belize','Belize');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('23','0','23','BEN','BJ','Benin','Benin','Benin');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('24','0','24','BMU','BM','Bermuda','Bermuda','Bermuda');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('25','0','25','BTN','BT','Bhutan','Bhutan','Bhutan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('26','0','26','BOL','BO','Bolivia','Bolivien','Bolivia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('27','0','27','BIH','BA','Bosnia and Herzegowina','Bosnien und Herzegowina','Bosnia and Herzegowina');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('28','0','28','BWA','BW','Botswana','Botsuana','Botswana');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('29','0','29','BVT','BV','Bouvet Island','Bouvetinsel','Bouvet Island');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('30','0','30','BRA','BR','Brazil','Brasilien','Brazil');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('31','0','31','IOT','IO','British Indian Ocean Territory','Britisches Territorium im Indischen Ozean','British Indian Ocean Territory');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('32','0','32','BRN','BN','Brunei Darussalam','Brunei','Brunei Darussalam');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('33','0','33','BGR','BG','Bulgaria','Bulgarien','Bulgaria');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('34','0','34','BFA','BF','Burkina Faso','Burkina Faso','Burkina Faso');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('35','0','35','BDI','BI','Burundi','Burundi','Burundi');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('36','0','36','KHM','KH','Cambodia','Kambodscha','Cambodia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('37','0','37','CMR','CM','Cameroon','Kamerun','Cameroon');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('38','0','38','CAN','CA','Canada','Kanada','Canada');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('39','0','39','CPV','CV','Cape Verde','Kap Verde','Cape Verde');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('40','0','40','CYM','KY','Cayman Islands','Cayman-Inseln','Cayman Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('41','0','41','CAF','CF','Central African Republic','Zentralafrikanische Republik','Central African Republic');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('42','0','42','TCD','TD','Chad','Tschad','Chad');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('43','0','43','CHL','CL','Chile','Chile','Chile');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('44','0','44','CHN','CN','China','China','China');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('45','0','45','CXR','CX','Christmas Island','Christmas Island','Christmas Island');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('46','0','46','CCK','CC','Cocos (Keeling) Islands','Kokosinseln (Keeling)','Cocos (Keeling) Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('47','0','47','COL','CO','Colombia','Kolumbien','Colombia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('48','0','48','COM','KM','Comoros','Komoren','Comoros');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('49','0','49','COG','CG','Congo','Kongo, Republik','Congo');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('50','0','50','COK','CK','Cook Islands','Cookinseln','Cook Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('51','0','51','CRI','CR','Costa Rica','Costa Rica','Costa Rica');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('52','0','52','CIV','CI','Cote D\'Ivoire','Elfenbeinküste','Cote D\'Ivoire');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('53','0','53','HRV','HR','Croatia','Kroatien','Croatia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('54','0','54','CUB','CU','Cuba','Kuba','Cuba');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('55','0','55','CYP','CY','Cyprus','Zypern','Cyprus');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('56','0','56','CZE','CZ','Czech Republic','Tschechien','Czech Republic');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('57','0','57','DNK','DK','Denmark','Dänemark','Denmark');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('58','0','58','DJI','DJ','Djibouti','Dschibuti','Djibouti');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('59','0','59','DMA','DM','Dominica','Dominica','Dominica');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('60','0','60','DOM','DO','Dominican Republic','Dominikanische Republik','Dominican Republic');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('61','0','61','TMP','TL','East Timor','Osttimor','East Timor');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('62','0','62','ECU','EC','Ecuador','Ecuador','Ecuador');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('63','0','63','EGY','EG','Egypt','Ägypten','Egypt');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('64','0','64','SLV','SV','El Salvador','El Salvador','El Salvador');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('65','0','65','GNQ','GQ','Equatorial Guinea','Äquatorial-Guinea','Equatorial Guinea');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('66','0','66','ERI','ER','Eritrea','Eritrea','Eritrea');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('67','0','67','EST','EE','Estonia','Estland','Estonia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('68','0','68','ETH','ET','Ethiopia','Äthiopien','Ethiopia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('69','0','69','FLK','FK','Falkland Islands (Malvinas)','Falklandinseln','Falkland Islands (Malvinas)');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('70','0','70','FRO','FO','Faroe Islands','Färöer','Faroe Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('71','0','71','FJI','FJ','Fiji','Fidschi','Fiji');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('72','0','72','FIN','FI','Finland','Finnland','Finland');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('73','0','73','FRA','FR','France','Frankreich','France');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('74','0','74','FXX','FX','France Metropolitan','Frankreich, Metropolitan','France Metropolitan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('75','0','75','GUF','GF','French Guiana','Französisch-Guyana','French Guiana');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('76','0','76','PYF','PF','French Polynesia','Franz. Polynesien','French Polynesia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('77','0','77','ATF','TF','French Southern Territories','Französiche Süd- und Antarktisgebiete','French Southern Territories');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('78','0','78','GAB','GA','Gabon','Gabun','Gabon');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('79','0','79','GMB','GM','Gambia','Gambia','Gambia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('80','0','80','GEO','GE','Georgia','Georgien','Georgia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('81','0','81','DEU','DE','Germany','Deutschland','Germany');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('82','0','82','GHA','GH','Ghana','Ghana','Ghana');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('83','0','83','GIB','GI','Gibraltar','Gibraltar','Gibraltar');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('84','0','84','GRC','GR','Greece','Griechenland','Greece');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('85','0','85','GRL','GL','Greenland','Grönland','Greenland');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('86','0','86','GRD','GD','Grenada','Grenada','Grenada');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('87','0','87','GLP','GP','Guadeloupe','Guadeloupe','Guadeloupe');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('88','0','88','GUM','GU','Guam','Guam','Guam');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('89','0','89','GTM','GT','Guatemala','Guatemala','Guatemala');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('90','0','90','GIN','GN','Guinea','Guinea','Guinea');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('91','0','91','GNB','GW','Guinea-bissau','Guinea-Bissau','Guinea-bissau');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('92','0','92','GUY','GY','Guyana','Guyana','Guyana');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('93','0','93','HTI','HT','Haiti','Haiti','Haiti');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('94','0','94','HMD','HM','Heard and Mc Donald Islands','Heard und McDonaldinseln','Heard and Mc Donald Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('95','0','95','HND','HN','Honduras','Honduras','Honduras');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('96','0','96','HKG','HK','Hong Kong','Hong Kong','Hong Kong');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('97','0','97','HUN','HU','Hungary','Ungarn','Hungary');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('98','0','98','ISL','IS','Iceland','Island','Iceland');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('99','0','99','IND','IN','India','Indien','India');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('100','0','100','IDN','ID','Indonesia','Indonesien','Indonesia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('101','0','101','IRN','IR','Iran (Islamic Republic of)','Iran','Iran (Islamic Republic of)');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('102','0','102','IRQ','IQ','Iraq','Irak','Iraq');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('103','0','103','IRL','IE','Ireland','Irland','Ireland');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('104','0','104','ISR','IL','Israel','Israel','Israel');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('105','0','105','ITA','IT','Italy','Italien','Italy');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('106','0','106','JAM','JM','Jamaica','Jamaika','Jamaica');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('107','0','107','JPN','JP','Japan','Japan','Japan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('108','0','108','JOR','JO','Jordan','Jordanien','Jordan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('109','0','109','KAZ','KZ','Kazakhstan','Kasachstan','Kazakhstan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('110','0','110','KEN','KE','Kenya','Kenia','Kenya');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('111','0','111','KIR','KI','Kiribati','Kiribati','Kiribati');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('112','0','112','PRK','KP','Korea Democratic People\'s Republic of','Korea Demokratische Volksrepublik','Korea Democratic People\'s Republic of');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('113','0','113','KOR','KR','Korea Republic of','Korea','Korea Republic of');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('114','0','114','KWT','KW','Kuwait','Kuwait','Kuwait');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('115','0','115','KGZ','KG','Kyrgyzstan','Kirgistan','Kyrgyzstan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('116','0','116','LAO','LA','Lao People\'s Democratic Republic','Laos','Lao People\'s Democratic Republic');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('117','0','117','LVA','LV','Latvia','Lettland','Latvia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('118','0','118','LBN','LB','Lebanon','Libanon','Lebanon');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('119','0','119','LSO','LS','Lesotho','Lesotho','Lesotho');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('120','0','120','LBR','LR','Liberia','Liberia','Liberia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('121','0','121','LBY','LY','Libyan Arab Jamahiriya','Libyen','Libyan Arab Jamahiriya');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('122','0','122','LIE','LI','Liechtenstein','Liechtenstein','Liechtenstein');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('123','0','123','LTU','LT','Lithuania','Litauen','Lithuania');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('124','0','124','LUX','LU','Luxembourg','Luxemburg','Luxembourg');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('125','0','125','MAC','MO','Macau','Makao','Macau');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('126','0','126','MKD','MK','Macedonia The Former Yugoslav Republic of','Mazedonien','Macedonia The Former Yugoslav Republic of');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('127','0','127','MDG','MG','Madagascar','Madagaskar','Madagascar');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('128','0','128','MWI','MW','Malawi','Malawi','Malawi');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('129','0','129','MYS','MY','Malaysia','Malaysia','Malaysia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('130','0','130','MDV','MV','Maldives','Malediven','Maldives');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('131','0','131','MLI','ML','Mali','Mali','Mali');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('132','0','132','MLT','MT','Malta','Malta','Malta');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('133','0','133','MHL','MH','Marshall Islands','Marshallinseln','Marshall Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('134','0','134','MTQ','MQ','Martinique','Martinique','Martinique');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('135','0','135','MRT','MR','Mauritania','Mauretanien','Mauritania');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('136','0','136','MUS','MU','Mauritius','Mauritius','Mauritius');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('137','0','137','MYT','YT','Mayotte','Mayott','Mayotte');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('138','0','138','MEX','MX','Mexico','Mexiko','Mexico');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('139','0','139','FSM','FM','Micronesia Federated States of','Mikronesien','Micronesia Federated States of');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('140','0','140','MDA','MD','Moldova Republic of','Moldawien','Moldova Republic of');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('141','0','141','MCO','MC','Monaco','Monaco','Monaco');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('142','0','142','MNG','MN','Mongolia','Mongolei','Mongolia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('143','0','143','MSR','MS','Montserrat','Montserrat','Montserrat');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('144','0','144','MAR','MA','Morocco','Marokko','Morocco');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('145','0','145','MOZ','MZ','Mozambique','Mosambik','Mozambique');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('146','0','146','MMR','MM','Myanmar','Myanmar','Myanmar');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('147','0','147','NAM','NA','Namibia','Namibia','Namibia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('148','0','148','NRU','NR','Nauru','Nauru','Nauru');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('149','0','149','NPL','NP','Nepal','Nepal','Nepal');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('150','0','150','NLD','NL','Netherlands','Niederlande','Netherlands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('151','0','151','ANT','AN','Netherlands Antilles','Niederländisch-Antillen','Netherlands Antilles');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('152','0','152','NCL','NC','New Caledonia','Neukaledonien','New Caledonia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('153','0','153','NZL','NZ','New Zealand','Neuseeland','New Zealand');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('154','0','154','NIC','NI','Nicaragua','Nicaragua','Nicaragua');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('155','0','155','NER','NE','Niger','Niger','Niger');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('156','0','156','NGA','NG','Nigeria','Nigeria','Nigeria');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('157','0','157','NIU','NU','Niue','Niue','Niue');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('158','0','158','NFK','NF','Norfolk Island','Norfolkinsel','Norfolk Island');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('159','0','159','MNP','MP','Northern Mariana Islands','Nördliche Marianen','Northern Mariana Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('160','0','160','NOR','NO','Norway','Norwegen','Norway');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('161','0','161','OMN','OM','Oman','Oman','Oman');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('162','0','162','PAK','PK','Pakistan','Pakistan','Pakistan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('163','0','163','PLW','PW','Palau','Palau','Palau');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('164','0','164','PAN','PA','Panama','Panama','Panama');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('165','0','165','PNG','PG','Papua New Guinea','Papua-Neuguinea','Papua New Guinea');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('166','0','166','PRY','PY','Paraguay','Paraguay','Paraguay');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('167','0','167','PER','PE','Peru','Peru','Peru');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('168','0','168','PHL','PH','Philippines','Philippinen','Philippines');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('169','0','169','PCN','PN','Pitcairn','Pitcairn','Pitcairn');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('170','0','170','POL','PL','Poland','Polen','Poland');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('171','0','171','PRT','PT','Portugal','Portugal','Portugal');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('172','0','172','PRI','PR','Puerto Rico','Puerto Rico','Puerto Rico');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('173','0','173','QAT','QA','Qatar','Katar','Qatar');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('174','0','174','REU','RE','Reunion','Reunion','Reunion');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('175','0','175','ROM','RO','Romania','Rumänien','Romania');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('176','0','176','RUS','RU','Russian Federation','Russische Föderation','Russian Federation');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('177','0','177','RWA','RW','Rwanda','Ruanda','Rwanda');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('178','0','178','KNA','KN','Saint Kitts and Nevis','St. Kitts und Nevis','Saint Kitts and Nevis');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('179','0','179','LCA','LC','Saint Lucia','St. Lucia','Saint Lucia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('180','0','180','VCT','VC','Saint Vincent and the Grenadines','St. Vincent und die Grenadinen','Saint Vincent and the Grenadines');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('181','0','181','WSM','WS','Samoa','Samoa','Samoa');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('182','0','182','SMR','SM','San Marino','San Marino','San Marino');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('183','0','183','STP','ST','Sao Tome and Principe','Sao Tomé und Príncipe','Sao Tome and Principe');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('184','0','184','SAU','SA','Saudi Arabia','Saudi-Arabien','Saudi Arabia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('185','0','185','SEN','SN','Senegal','Senegal','Senegal');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('186','0','186','SYC','SC','Seychelles','Seychellen','Seychelles');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('187','0','187','SLE','SL','Sierra Leone','Sierra Leone','Sierra Leone');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('188','0','188','SGP','SG','Singapore','Singapur','Singapore');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('189','0','189','SVK','SK','Slovakia (Slovak Republic)','Slowakei','Slovakia (Slovak Republic)');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('190','0','190','SVN','SI','Slovenia','Slowenien','Slovenia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('191','0','191','SLB','SB','Solomon Islands','Salomonen','Solomon Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('192','0','192','SOM','SO','Somalia','Somalia','Somalia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('193','0','193','ZAF','ZA','South Africa','Republik Südafrika','South Africa');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('194','0','194','SGS','GS','South Georgia and the South Sandwich Islands','Südgeorgien und die Südlichen Sandwichinseln','South Georgia and the South Sandwich Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('195','0','195','ESP','ES','Spain','Spanien','Spain');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('196','0','196','LKA','LK','Sri Lanka','Sri Lanka','Sri Lanka');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('197','0','197','SHN','SH','St. Helena','St. Helena','St. Helena');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('198','0','198','SPM','PM','St. Pierre and Miquelon','St. Pierre und Miquelon','St. Pierre and Miquelon');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('199','0','199','SDN','SD','Sudan','Sudan','Sudan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('200','0','200','SUR','SR','Suriname','Suriname','Suriname');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('201','0','201','SJM','SJ','Svalbard and Jan Mayen Islands','Svalbard und Jan Mayen','Svalbard and Jan Mayen Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('202','0','202','SWZ','SZ','Swaziland','Swasiland','Swaziland');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('203','0','203','SWE','SE','Sweden','Schweden','Sweden');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('204','0','204','CHE','CH','Switzerland','Schweiz','Switzerland');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('205','0','205','SYR','SY','Syrian Arab Republic','Syrien','Syrian Arab Republic');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('206','0','206','TWN','TW','Taiwan','Taiwan','Taiwan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('207','0','207','TJK','TJ','Tajikistan','Tadschikistan','Tajikistan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('208','0','208','TZA','TZ','Tanzania United Republic of','Tansania','Tanzania United Republic of');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('209','0','209','THA','TH','Thailand','Thailand','Thailand');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('210','0','210','TGO','TG','Togo','Togo','Togo');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('211','0','211','TKL','TK','Tokelau','Tokelau','Tokelau');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('212','0','212','TON','TO','Tonga','Tonga','Tonga');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('213','0','213','TTO','TT','Trinidad and Tobago','Trinidad und Tobago','Trinidad and Tobago');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('214','0','214','TUN','TN','Tunisia','Tunesien','Tunisia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('215','0','215','TUR','TR','Turkey','Türkei','Turkey');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('216','0','216','TKM','TM','Turkmenistan','Turkmenistan','Turkmenistan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('217','0','217','TCA','TC','Turks and Caicos Islands','Turks- und Caicosinseln','Turks and Caicos Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('218','0','218','TUV','TV','Tuvalu','Tuvalu','Tuvalu');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('219','0','219','UGA','UG','Uganda','Uganda','Uganda');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('220','1','220','UKR','UA','Ukraine','Ukraine','Ukraine');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('221','0','221','ARE','AE','United Arab Emirates','Vereinigte Arabische Emirate','United Arab Emirates');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('222','0','222','GBR','GB','United Kingdom','Vereinigtes Königreich','United Kingdom');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('223','0','223','USA','US','United States','USA','United States');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('224','0','224','UMI','UM','United States Minor Outlying Islands','United States Minor Outlying Islands','United States Minor Outlying Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('225','0','225','URY','UY','Uruguay','Uruguay','Uruguay');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('226','0','226','UZB','UZ','Uzbekistan','Usbekistan','Uzbekistan');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('227','0','227','VUT','VU','Vanuatu','Vanuatu','Vanuatu');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('228','0','228','VAT','VA','Vatican City State (Holy See)','Vatikanstadt','Vatican City State (Holy See)');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('229','0','229','VEN','VE','Venezuela','Venezuela','Venezuela');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('230','0','230','VNM','VN','Viet Nam','Vietnam','Viet Nam');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('231','0','231','VGB','VG','Virgin Islands (British)','Britische Jungferninseln','Virgin Islands (British)');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('232','0','232','VIR','VI','Virgin Islands (U.S.)','Vereinigte Staaten von Amerika','Virgin Islands (U.S.)');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('233','0','233','WLF','WF','Wallis and Futuna Islands','Wallis und Futuna','Wallis and Futuna Islands');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('234','0','234','ESH','EH','Western Sahara','Westsahara','Western Sahara');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('235','0','235','YEM','YE','Yemen','Jemen','Yemen');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('236','0','236','YUG','YU','Yugoslavia','Yugoslavia','Yugoslavia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('237','0','237','ZAR','ZR','Zaire','Zaire','Zaire');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('238','0','238','ZMB','ZM','Zambia','Sambia','Zambia');
insert  into `jos_jshopping_countries`(`country_id`,`country_publish`,`ordering`,`country_code`,`country_code_2`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('239','0','239','ZWE','ZW','Zimbabwe','Simbabwe','Zimbabwe');

/*Table structure for table `jos_jshopping_coupons` */

DROP TABLE IF EXISTS `jos_jshopping_coupons`;

CREATE TABLE `jos_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_type` tinyint(4) NOT NULL default '0' COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL default '',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL default '0000-00-00',
  `coupon_expire_date` date NOT NULL default '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_coupons` */

/*Table structure for table `jos_jshopping_currencies` */

DROP TABLE IF EXISTS `jos_jshopping_currencies`;

CREATE TABLE `jos_jshopping_currencies` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) NOT NULL default '',
  `currency_code` varchar(20) NOT NULL default '',
  `currency_code_iso` varchar(3) NOT NULL default '',
  `currency_ordering` int(11) NOT NULL default '0',
  `currency_value` decimal(14,6) NOT NULL default '0.000000',
  `currency_publish` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_currencies` */

insert  into `jos_jshopping_currencies`(`currency_id`,`currency_name`,`currency_code`,`currency_code_iso`,`currency_ordering`,`currency_value`,`currency_publish`) values ('1','грн','UAH','UAH','2','1.000000','1');

/*Table structure for table `jos_jshopping_delivery_times` */

DROP TABLE IF EXISTS `jos_jshopping_delivery_times`;

CREATE TABLE `jos_jshopping_delivery_times` (
  `id` int(11) NOT NULL auto_increment,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_delivery_times` */

/*Table structure for table `jos_jshopping_free_attr` */

DROP TABLE IF EXISTS `jos_jshopping_free_attr`;

CREATE TABLE `jos_jshopping_free_attr` (
  `id` int(11) NOT NULL auto_increment,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_free_attr` */

/*Table structure for table `jos_jshopping_import_export` */

DROP TABLE IF EXISTS `jos_jshopping_import_export`;

CREATE TABLE `jos_jshopping_import_export` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_import_export` */

insert  into `jos_jshopping_import_export`(`id`,`name`,`alias`,`description`,`params`,`endstart`,`steptime`) values ('1','Simple Export','simpleexport','Simple Export in CSV iso-8859-1','filename=export','0','1');
insert  into `jos_jshopping_import_export`(`id`,`name`,`alias`,`description`,`params`,`endstart`,`steptime`) values ('2','Simple Import','simpleimport','Simple Import in CSV iso-8859-1','','0','0');

/*Table structure for table `jos_jshopping_languages` */

DROP TABLE IF EXISTS `jos_jshopping_languages`;

CREATE TABLE `jos_jshopping_languages` (
  `id` int(11) NOT NULL auto_increment,
  `language` varchar(32) default NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_languages` */

insert  into `jos_jshopping_languages`(`id`,`language`,`name`,`publish`,`ordering`) values ('1','en-GB','English','1','0');
insert  into `jos_jshopping_languages`(`id`,`language`,`name`,`publish`,`ordering`) values ('2','ru-RU','Russian','1','0');

/*Table structure for table `jos_jshopping_manufacturers` */

DROP TABLE IF EXISTS `jos_jshopping_manufacturers`;

CREATE TABLE `jos_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
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
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_manufacturers` */

/*Table structure for table `jos_jshopping_order_history` */

DROP TABLE IF EXISTS `jos_jshopping_order_history`;

CREATE TABLE `jos_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `order_status_id` tinyint(1) NOT NULL default '0',
  `status_date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notify` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_order_history` */

/*Table structure for table `jos_jshopping_order_item` */

DROP TABLE IF EXISTS `jos_jshopping_order_item`;

CREATE TABLE `jos_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `product_ean` varchar(50) NOT NULL default '',
  `product_name` varchar(100) NOT NULL default '',
  `product_quantity` decimal(12,2) NOT NULL default '0.00',
  `product_item_price` decimal(12,2) NOT NULL,
  `product_tax` decimal(12,2) NOT NULL default '0.00',
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `files` text NOT NULL,
  `weight` float(8,4) NOT NULL default '0.0000',
  `thumb_image` varchar(255) NOT NULL default '',
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY  (`order_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_order_item` */

/*Table structure for table `jos_jshopping_order_status` */

DROP TABLE IF EXISTS `jos_jshopping_order_status`;

CREATE TABLE `jos_jshopping_order_status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_code` char(1) NOT NULL default '',
  `name_en-GB` varchar(100) NOT NULL default '',
  `name_de-DE` varchar(100) NOT NULL default '',
  `name_ru-RU` varchar(100) NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_order_status` */

insert  into `jos_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('1','P','Pending','Offen','Pending');
insert  into `jos_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('2','C','Confirmed','Bestätigt','Confirmed');
insert  into `jos_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('3','X','Cancelled','Abgebrochen','Cancelled');
insert  into `jos_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('4','R','Refunded','Gutschrift','Refunded');
insert  into `jos_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('5','S','Shipped','Gesendet','Shipped');
insert  into `jos_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('6','O','Paid','Bezahlt','Paid');
insert  into `jos_jshopping_order_status`(`status_id`,`status_code`,`name_en-GB`,`name_de-DE`,`name_ru-RU`) values ('7','F','Complete','Abgeschlossen','Complete');

/*Table structure for table `jos_jshopping_orders` */

DROP TABLE IF EXISTS `jos_jshopping_orders`;

CREATE TABLE `jos_jshopping_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `order_number` varchar(50) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_total` decimal(12,2) NOT NULL default '0.00',
  `order_subtotal` decimal(12,2) NOT NULL default '0.00',
  `order_tax` decimal(12,2) NOT NULL default '0.00',
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(12,2) NOT NULL default '0.00',
  `order_payment` decimal(12,2) NOT NULL default '0.00',
  `order_discount` decimal(12,2) NOT NULL default '0.00',
  `currency_code` varchar(20) NOT NULL default '',
  `currency_code_iso` varchar(3) NOT NULL default '',
  `currency_exchange` decimal(14,6) NOT NULL default '0.000000',
  `order_status` varchar(1) NOT NULL default '',
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `order_m_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL default '0',
  `payment_method_id` int(11) NOT NULL default '0',
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `ip_address` varchar(15) NOT NULL default '',
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL default '0',
  `f_name` varchar(255) NOT NULL default '',
  `l_name` varchar(255) NOT NULL default '',
  `firma_name` varchar(255) NOT NULL default '',
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL default '',
  `street` varchar(100) NOT NULL default '',
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL default '',
  `city` varchar(100) NOT NULL default '',
  `state` varchar(100) NOT NULL default '',
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL default '',
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL default '',
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL default '0',
  `d_f_name` varchar(255) NOT NULL default '',
  `d_l_name` varchar(255) NOT NULL default '',
  `d_firma_name` varchar(255) NOT NULL default '',
  `d_email` varchar(255) NOT NULL default '',
  `d_street` varchar(100) NOT NULL default '',
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL default '',
  `d_city` varchar(100) NOT NULL default '',
  `d_state` varchar(100) NOT NULL default '',
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL default '',
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL default '',
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL default '',
  `file_hash` varchar(64) NOT NULL default '',
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_orders` */

/*Table structure for table `jos_jshopping_payment_method` */

DROP TABLE IF EXISTS `jos_jshopping_payment_method`;

CREATE TABLE `jos_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL auto_increment,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
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
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY  (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_payment_method` */

insert  into `jos_jshopping_payment_method`(`payment_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_ru-RU`,`description_ru-RU`) values ('1','Cash on delivery','','Nachnahme','','bank','pm_bank','1','1','','1','0.00','1','1','','0','Наличными при доставке','');
insert  into `jos_jshopping_payment_method`(`payment_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_ru-RU`,`description_ru-RU`) values ('2','Advance payment','','Vorauskasse','','PO','pm_purchase_order','0','2','','1','0.00','0','1','','1','Advance payment','');
insert  into `jos_jshopping_payment_method`(`payment_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_ru-RU`,`description_ru-RU`) values ('3','Paypal','','Paypal','','paypal','pm_paypal','0','3','testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0','2','0.00','0','1','','0','Paypal','');
insert  into `jos_jshopping_payment_method`(`payment_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_ru-RU`,`description_ru-RU`) values ('4','Debit','Please insert your bankdata.','Lastschrift','Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.','debit','pm_debit','0','4','','1','0.00','0','1','','0','Debit','Please insert your bankdata.');
insert  into `jos_jshopping_payment_method`(`payment_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`payment_code`,`payment_class`,`payment_publish`,`payment_ordering`,`payment_params`,`payment_type`,`price`,`price_type`,`tax_id`,`image`,`show_descr_in_email`,`name_ru-RU`,`description_ru-RU`) values ('5','Sofortueberweisung','','Sofortueberweisung','','ST','pm_sofortueberweisung','0','5','user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n','2','0.00','0','1','','0','Sofortueberweisung','');

/*Table structure for table `jos_jshopping_product_labels` */

DROP TABLE IF EXISTS `jos_jshopping_product_labels`;

CREATE TABLE `jos_jshopping_product_labels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_product_labels` */

insert  into `jos_jshopping_product_labels`(`id`,`name`,`image`) values ('1','New','new.png');
insert  into `jos_jshopping_product_labels`(`id`,`name`,`image`) values ('2','Sale','sale.png');

/*Table structure for table `jos_jshopping_products` */

DROP TABLE IF EXISTS `jos_jshopping_products`;

CREATE TABLE `jos_jshopping_products` (
  `product_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(128) NOT NULL,
  `product_date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL default '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL default '0',
  `product_tax_id` tinyint(3) NOT NULL default '0',
  `currency_id` int(4) NOT NULL default '0',
  `product_template` varchar(64) NOT NULL default 'default',
  `product_url` varchar(255) NOT NULL default '',
  `product_old_price` decimal(12,2) NOT NULL default '0.00',
  `product_buy_price` decimal(12,2) NOT NULL default '0.00',
  `product_price` decimal(18,6) NOT NULL default '0.000000',
  `min_price` decimal(12,2) NOT NULL default '0.00',
  `different_prices` tinyint(1) NOT NULL default '0',
  `product_weight` decimal(14,4) NOT NULL default '0.0000',
  `product_thumb_image` varchar(255) NOT NULL,
  `product_name_image` varchar(255) NOT NULL,
  `product_full_image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL default '0',
  `product_is_add_price` tinyint(1) NOT NULL default '0',
  `add_price_unit_id` int(3) NOT NULL default '0',
  `average_rating` float(4,2) NOT NULL default '0.00',
  `reviews_count` int(11) NOT NULL default '0',
  `delivery_times_id` int(4) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0',
  `weight_volume_units` decimal(14,4) NOT NULL default '0.0000',
  `basic_price_unit_id` int(3) NOT NULL default '0',
  `label_id` int(11) NOT NULL default '0',
  `vendor_id` int(11) NOT NULL default '0',
  `access` int(3) NOT NULL default '1',
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
  PRIMARY KEY  (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products` */

insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('21','0','','1','0','','2012-12-21 22:39:13','2012-12-21 22:39:13','1','1','1','default','','0.00','0.00','60.000000','60.00','0','0.0000','thumb_96b9352e4ec68fa2662018894d25eda6.JPG','96b9352e4ec68fa2662018894d25eda6.JPG','full_96b9352e4ec68fa2662018894d25eda6.JPG','0','0','3','0.00','0','0','1','0.0000','0','0','0','1','','','','','','','','Мягкое место','softplace','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('22','0','','1','0','','2012-12-21 22:41:23','2013-01-12 16:48:58','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_e30748901f3a4632dcaf9033a8183160.JPG','e30748901f3a4632dcaf9033a8183160.JPG','full_e30748901f3a4632dcaf9033a8183160.JPG','0','0','3','0.00','0','0','3','0.0000','0','0','0','1','','','','','','','','Мишень красная','redtarget','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('23','0','','1','0','','2012-12-21 22:44:43','2012-12-21 22:44:43','1','1','1','default','','0.00','0.00','60.000000','60.00','0','0.0000','thumb_e60b22e82bd554908654aa959c8482ad.JPG','e60b22e82bd554908654aa959c8482ad.JPG','full_e60b22e82bd554908654aa959c8482ad.JPG','0','0','3','0.00','0','0','1','0.0000','0','0','0','1','','','','','','','','Квадрат','square','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('24','0','','1','0','','2012-12-21 22:45:57','2012-12-21 22:45:57','1','1','1','default','','0.00','0.00','60.000000','60.00','0','0.0000','thumb_f271b6328b643ee25d4c4a9855f523ac.JPG','f271b6328b643ee25d4c4a9855f523ac.JPG','full_f271b6328b643ee25d4c4a9855f523ac.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Треугольник','triangle','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('25','0','','1','0','','2012-12-21 22:47:30','2012-12-21 22:47:30','1','1','1','default','','0.00','0.00','60.000000','60.00','0','0.0000','thumb_42f6f7f008a18a781a3f17cdaba0ee5f.JPG','42f6f7f008a18a781a3f17cdaba0ee5f.JPG','full_42f6f7f008a18a781a3f17cdaba0ee5f.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Круг','circle','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('26','0','','1','0','','2012-12-21 22:50:28','2012-12-21 22:50:28','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_01ee3e3f116388b98ecf50f88a35f6a2.JPG','01ee3e3f116388b98ecf50f88a35f6a2.JPG','full_01ee3e3f116388b98ecf50f88a35f6a2.JPG','0','0','3','0.00','0','0','1','0.0000','0','0','0','1','','','','','','','','Black\'n\'white','black-and-white','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('27','0','','1','0','','2012-12-21 22:52:13','2012-12-21 22:52:37','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_970e42a83da4bfb543ad7832eb7d6715.JPG','970e42a83da4bfb543ad7832eb7d6715.JPG','full_970e42a83da4bfb543ad7832eb7d6715.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Черно-красный','black-and-red','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('28','0','','1','0','','2012-12-21 22:53:55','2012-12-21 22:53:55','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_3b06c8ba315db9538c78e6e909ce7dfb.JPG','3b06c8ba315db9538c78e6e909ce7dfb.JPG','full_3b06c8ba315db9538c78e6e909ce7dfb.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Бело-черный','white-and-black','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('29','0','','1','0','','2012-12-21 22:55:23','2012-12-21 22:55:23','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_b95924b16825f0405d1e5cf504188eeb.JPG','b95924b16825f0405d1e5cf504188eeb.JPG','full_b95924b16825f0405d1e5cf504188eeb.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Красно-черный','red-and-black','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('30','0','','1','0','','2012-12-21 22:56:46','2012-12-21 22:56:46','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_19245a5e2812988b12399cdd9fd97440.JPG','19245a5e2812988b12399cdd9fd97440.JPG','full_19245a5e2812988b12399cdd9fd97440.JPG','0','0','3','0.00','0','0','1','0.0000','0','0','0','1','','','','','','','','Красно-белый','red-aand-white','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('20','0','','1','0','','2012-12-21 22:33:30','2013-01-12 16:48:30','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_5af27f67f65ec4cdee9026064e78ed68.JPG','5af27f67f65ec4cdee9026064e78ed68.JPG','full_5af27f67f65ec4cdee9026064e78ed68.JPG','0','0','3','0.00','0','0','2','0.0000','0','0','0','1','','','','','','','','Мишень желтая','autumn-target','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('19','0','','1','0','','2012-12-21 22:29:12','2013-01-12 14:56:18','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_16cc7d2801060e40ca4e955600b6cdc0.JPG','16cc7d2801060e40ca4e955600b6cdc0.JPG','full_16cc7d2801060e40ca4e955600b6cdc0.JPG','0','0','3','0.00','0','0','2','0.0000','0','0','0','1','','','','','','','','ВКонтакте','theb','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('14','0','','1','0','','2012-12-21 22:10:42','2012-12-21 22:18:54','1','1','1','default','','0.00','0.00','120.000000','120.00','0','0.0000','thumb_7b3d662f3623a726092b4b364472fa3a.JPG','7b3d662f3623a726092b4b364472fa3a.JPG','full_7b3d662f3623a726092b4b364472fa3a.JPG','0','0','3','0.00','0','0','8','0.0000','0','0','0','1','','','','','','','','Скайп','skype','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('15','0','','1','0','','2012-12-21 22:20:49','2013-01-12 16:53:33','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_da8126cef814f11dcf0d895d4e55f4fe.JPG','da8126cef814f11dcf0d895d4e55f4fe.JPG','full_da8126cef814f11dcf0d895d4e55f4fe.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Мишень зеленая','target-green','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('16','0','','1','0','','2012-12-21 22:22:30','2013-01-12 16:47:57','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_0d7cc292ac745db9e5954e333b3383e7.JPG','0d7cc292ac745db9e5954e333b3383e7.JPG','full_0d7cc292ac745db9e5954e333b3383e7.JPG','0','0','3','0.00','0','0','1','0.0000','0','0','0','1','','','','','','','','Твиттер bird','flytweeterfly','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('17','0','','1','0','','2012-12-21 22:22:41','2013-01-12 16:48:07','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','full_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','0','0','3','0.00','0','0','4','0.0000','0','0','0','1','','121221222241','','','','','','Твиттер','tweeter-literaly','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('18','0','','1','0','','2012-12-21 22:28:06','2012-12-21 22:28:06','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_2720bd41cee7e773bb5ca34f97fdea98.JPG','2720bd41cee7e773bb5ca34f97fdea98.JPG','full_2720bd41cee7e773bb5ca34f97fdea98.JPG','0','0','3','0.00','0','0','3','0.0000','0','0','0','1','','','','','','','','Фейсбук','facebook','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('31','0','','1','0','','2012-12-21 22:58:15','2012-12-21 22:58:15','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_e35c32c93a9c061f665f38a23ac339ab.JPG','e35c32c93a9c061f665f38a23ac339ab.JPG','full_e35c32c93a9c061f665f38a23ac339ab.JPG','0','0','3','0.00','0','0','2','0.0000','0','0','0','1','','','','','','','','Бело-красный','white-and-red','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('32','0','','1','0','','2012-12-21 23:00:24','2013-01-12 16:49:37','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_40b54a81904e18e0b915d707c8611e9a.JPG','40b54a81904e18e0b915d707c8611e9a.JPG','full_40b54a81904e18e0b915d707c8611e9a.JPG','0','0','3','0.00','0','0','6','0.0000','0','0','0','1','','','','','','','','Облако','cloud','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('33','0','','1','0','','2012-12-22 00:10:25','2012-12-22 00:10:25','1','1','1','default','','0.00','0.00','60.000000','60.00','0','0.0000','thumb_80b8a06eef4b3d90e5cf501946b15c31.JPG','80b8a06eef4b3d90e5cf501946b15c31.JPG','full_80b8a06eef4b3d90e5cf501946b15c31.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Спика','spica','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('34','0','','1','0','','2012-12-22 00:11:38','2012-12-22 00:11:38','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_2567a407fa2143fc141d183429921de0.JPG','2567a407fa2143fc141d183429921de0.JPG','full_2567a407fa2143fc141d183429921de0.JPG','0','0','3','0.00','0','0','2','0.0000','0','0','0','1','','','','','','','','Ctrl','ctrl','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('35','0','','1','0','','2012-12-22 00:12:23','2012-12-22 00:12:23','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_4bbc43419a19a8d3151cf61e4a9b2094.JPG','4bbc43419a19a8d3151cf61e4a9b2094.JPG','full_4bbc43419a19a8d3151cf61e4a9b2094.JPG','0','0','3','0.00','0','0','6','0.0000','0','0','0','1','','','','','','','','Alt','alt','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('36','0','','1','0','','2012-12-22 00:13:15','2012-12-22 00:13:15','1','1','1','default','','0.00','0.00','80.000000','80.00','0','0.0000','thumb_480bff4608f1515b6dc012e06b798d49.JPG','480bff4608f1515b6dc012e06b798d49.JPG','full_480bff4608f1515b6dc012e06b798d49.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Del','del','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('37','0','','1','0','','2012-12-22 00:16:41','2013-01-12 16:50:05','1','1','1','default','','0.00','0.00','200.000000','200.00','0','0.0000','thumb_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','full_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','0','0','3','0.00','0','0','0','0.0000','0','0','0','1','','','','','','','','Ctrl+Alt+Del','reboot','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('38','0','','1','0','','2012-12-22 00:39:05','2013-01-12 16:51:38','1','1','1','default','','0.00','0.00','350.000000','350.00','0','0.0000','thumb_1d8bda1e135e3d49c7540a5880b97351.JPG','1d8bda1e135e3d49c7540a5880b97351.JPG','full_1d8bda1e135e3d49c7540a5880b97351.JPG','0','0','3','0.00','0','0','9','0.0000','0','0','0','1','','','','','','','','Диван-лежанка для собаки','dog-couch','','','','','');
insert  into `jos_jshopping_products`(`product_id`,`parent_id`,`product_ean`,`product_quantity`,`unlimited`,`product_availability`,`product_date_added`,`date_modify`,`product_publish`,`product_tax_id`,`currency_id`,`product_template`,`product_url`,`product_old_price`,`product_buy_price`,`product_price`,`min_price`,`different_prices`,`product_weight`,`product_thumb_image`,`product_name_image`,`product_full_image`,`product_manufacturer_id`,`product_is_add_price`,`add_price_unit_id`,`average_rating`,`reviews_count`,`delivery_times_id`,`hits`,`weight_volume_units`,`basic_price_unit_id`,`label_id`,`vendor_id`,`access`,`name_en-GB`,`alias_en-GB`,`short_description_en-GB`,`description_en-GB`,`meta_title_en-GB`,`meta_description_en-GB`,`meta_keyword_en-GB`,`name_ru-RU`,`alias_ru-RU`,`short_description_ru-RU`,`description_ru-RU`,`meta_title_ru-RU`,`meta_description_ru-RU`,`meta_keyword_ru-RU`) values ('39','0','','1','0','','2012-12-22 00:56:39','2013-01-12 16:58:36','1','1','1','default','','0.00','0.00','180.000000','180.00','0','0.0000','thumb_493b5488e1a85ee455e10855bdf28f19.JPG','493b5488e1a85ee455e10855bdf28f19.JPG','full_493b5488e1a85ee455e10855bdf28f19.JPG','0','0','3','0.00','0','0','6','0.0000','0','0','0','1','','','','','','','','Пуфики с шариками','color-puf','','<p>Пуфик с шариками пенополистирола.</p>\r\n<p>Диаметр 50см</p>\r\n<p>Высота 90см</p>','','','');

/*Table structure for table `jos_jshopping_products_attr` */

DROP TABLE IF EXISTS `jos_jshopping_products_attr`;

CREATE TABLE `jos_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `old_price` decimal(12,2) NOT NULL,
  `count` int(11) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(12,2) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  `attr_2` int(11) NOT NULL,
  PRIMARY KEY  (`product_attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_attr` */

/*Table structure for table `jos_jshopping_products_attr2` */

DROP TABLE IF EXISTS `jos_jshopping_products_attr2`;

CREATE TABLE `jos_jshopping_products_attr2` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_attr2` */

/*Table structure for table `jos_jshopping_products_extra_field_groups` */

DROP TABLE IF EXISTS `jos_jshopping_products_extra_field_groups`;

CREATE TABLE `jos_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL auto_increment,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_extra_field_groups` */

/*Table structure for table `jos_jshopping_products_extra_field_values` */

DROP TABLE IF EXISTS `jos_jshopping_products_extra_field_values`;

CREATE TABLE `jos_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL auto_increment,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_extra_field_values` */

/*Table structure for table `jos_jshopping_products_extra_fields` */

DROP TABLE IF EXISTS `jos_jshopping_products_extra_fields`;

CREATE TABLE `jos_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL auto_increment,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_extra_fields` */

/*Table structure for table `jos_jshopping_products_files` */

DROP TABLE IF EXISTS `jos_jshopping_products_files`;

CREATE TABLE `jos_jshopping_products_files` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_files` */

/*Table structure for table `jos_jshopping_products_free_attr` */

DROP TABLE IF EXISTS `jos_jshopping_products_free_attr`;

CREATE TABLE `jos_jshopping_products_free_attr` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_free_attr` */

/*Table structure for table `jos_jshopping_products_images` */

DROP TABLE IF EXISTS `jos_jshopping_products_images`;

CREATE TABLE `jos_jshopping_products_images` (
  `image_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `image_thumb` varchar(255) NOT NULL default '',
  `image_name` varchar(255) NOT NULL default '',
  `image_full` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY  (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_images` */

insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('31','17','thumb_f0d797541feb36091001cf5cacb5beab.JPG','f0d797541feb36091001cf5cacb5beab.JPG','full_f0d797541feb36091001cf5cacb5beab.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('30','17','thumb_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','full_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('24','15','thumb_d7245f59d2d405b969637ae31c369073.JPG','d7245f59d2d405b969637ae31c369073.JPG','full_d7245f59d2d405b969637ae31c369073.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('25','15','thumb_61cc6e412c1b452fb22e143ed828adf2.JPG','61cc6e412c1b452fb22e143ed828adf2.JPG','full_61cc6e412c1b452fb22e143ed828adf2.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('26','16','thumb_0d7cc292ac745db9e5954e333b3383e7.JPG','0d7cc292ac745db9e5954e333b3383e7.JPG','full_0d7cc292ac745db9e5954e333b3383e7.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('27','16','thumb_fcbdb3e61c1f386239aa032b0c29959d.JPG','fcbdb3e61c1f386239aa032b0c29959d.JPG','full_fcbdb3e61c1f386239aa032b0c29959d.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('21','14','thumb_7b3d662f3623a726092b4b364472fa3a.JPG','7b3d662f3623a726092b4b364472fa3a.JPG','full_7b3d662f3623a726092b4b364472fa3a.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('22','14','thumb_be076a9cdd3f0ef33f3137519070c342.JPG','be076a9cdd3f0ef33f3137519070c342.JPG','full_be076a9cdd3f0ef33f3137519070c342.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('23','15','thumb_da8126cef814f11dcf0d895d4e55f4fe.JPG','da8126cef814f11dcf0d895d4e55f4fe.JPG','full_da8126cef814f11dcf0d895d4e55f4fe.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('32','18','thumb_2720bd41cee7e773bb5ca34f97fdea98.JPG','2720bd41cee7e773bb5ca34f97fdea98.JPG','full_2720bd41cee7e773bb5ca34f97fdea98.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('33','18','thumb_9cc871e1c0c47e74cdffeef9ce5e67db.JPG','9cc871e1c0c47e74cdffeef9ce5e67db.JPG','full_9cc871e1c0c47e74cdffeef9ce5e67db.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('34','19','thumb_16cc7d2801060e40ca4e955600b6cdc0.JPG','16cc7d2801060e40ca4e955600b6cdc0.JPG','full_16cc7d2801060e40ca4e955600b6cdc0.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('35','19','thumb_7c12462fd5b2dbfa179398417f5ccfb2.JPG','7c12462fd5b2dbfa179398417f5ccfb2.JPG','full_7c12462fd5b2dbfa179398417f5ccfb2.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('36','20','thumb_5af27f67f65ec4cdee9026064e78ed68.JPG','5af27f67f65ec4cdee9026064e78ed68.JPG','full_5af27f67f65ec4cdee9026064e78ed68.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('37','20','thumb_46fb9e73ed2825cee5e42bddc3714ecf.JPG','46fb9e73ed2825cee5e42bddc3714ecf.JPG','full_46fb9e73ed2825cee5e42bddc3714ecf.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('38','20','thumb_02553d7d721c79786959958979573f46.JPG','02553d7d721c79786959958979573f46.JPG','full_02553d7d721c79786959958979573f46.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('39','21','thumb_96b9352e4ec68fa2662018894d25eda6.JPG','96b9352e4ec68fa2662018894d25eda6.JPG','full_96b9352e4ec68fa2662018894d25eda6.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('40','21','thumb_8e62119278f9b185dd4d848f3d7f8e53.JPG','8e62119278f9b185dd4d848f3d7f8e53.JPG','full_8e62119278f9b185dd4d848f3d7f8e53.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('41','21','thumb_d2643b83d39d20ae8fc3aee210546e04.JPG','d2643b83d39d20ae8fc3aee210546e04.JPG','full_d2643b83d39d20ae8fc3aee210546e04.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('42','22','thumb_e30748901f3a4632dcaf9033a8183160.JPG','e30748901f3a4632dcaf9033a8183160.JPG','full_e30748901f3a4632dcaf9033a8183160.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('43','22','thumb_3f4430552753dc15f52b2b3d64040371.JPG','3f4430552753dc15f52b2b3d64040371.JPG','full_3f4430552753dc15f52b2b3d64040371.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('44','23','thumb_e60b22e82bd554908654aa959c8482ad.JPG','e60b22e82bd554908654aa959c8482ad.JPG','full_e60b22e82bd554908654aa959c8482ad.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('45','23','thumb_5399ab40de5cdf2c263f8e56acc469d7.JPG','5399ab40de5cdf2c263f8e56acc469d7.JPG','full_5399ab40de5cdf2c263f8e56acc469d7.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('46','24','thumb_f271b6328b643ee25d4c4a9855f523ac.JPG','f271b6328b643ee25d4c4a9855f523ac.JPG','full_f271b6328b643ee25d4c4a9855f523ac.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('47','24','thumb_0eb888953434fbc430f7cd0c03b32a54.JPG','0eb888953434fbc430f7cd0c03b32a54.JPG','full_0eb888953434fbc430f7cd0c03b32a54.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('48','25','thumb_42f6f7f008a18a781a3f17cdaba0ee5f.JPG','42f6f7f008a18a781a3f17cdaba0ee5f.JPG','full_42f6f7f008a18a781a3f17cdaba0ee5f.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('49','25','thumb_70d04722a18969ac25e8d0d143425eef.JPG','70d04722a18969ac25e8d0d143425eef.JPG','full_70d04722a18969ac25e8d0d143425eef.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('50','26','thumb_01ee3e3f116388b98ecf50f88a35f6a2.JPG','01ee3e3f116388b98ecf50f88a35f6a2.JPG','full_01ee3e3f116388b98ecf50f88a35f6a2.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('51','26','thumb_83051a22d195b8e25716a79f9dffda73.JPG','83051a22d195b8e25716a79f9dffda73.JPG','full_83051a22d195b8e25716a79f9dffda73.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('52','27','thumb_970e42a83da4bfb543ad7832eb7d6715.JPG','970e42a83da4bfb543ad7832eb7d6715.JPG','full_970e42a83da4bfb543ad7832eb7d6715.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('53','27','thumb_f0dce7ef871870bd43f2bf3e17274748.JPG','f0dce7ef871870bd43f2bf3e17274748.JPG','full_f0dce7ef871870bd43f2bf3e17274748.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('54','28','thumb_3b06c8ba315db9538c78e6e909ce7dfb.JPG','3b06c8ba315db9538c78e6e909ce7dfb.JPG','full_3b06c8ba315db9538c78e6e909ce7dfb.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('55','28','thumb_e7b7e7b15c2fefe1547bcec94c05514b.JPG','e7b7e7b15c2fefe1547bcec94c05514b.JPG','full_e7b7e7b15c2fefe1547bcec94c05514b.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('56','28','thumb_5a4e4b61fa8534a5ec253ea5dea57fd2.JPG','5a4e4b61fa8534a5ec253ea5dea57fd2.JPG','full_5a4e4b61fa8534a5ec253ea5dea57fd2.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('57','29','thumb_b95924b16825f0405d1e5cf504188eeb.JPG','b95924b16825f0405d1e5cf504188eeb.JPG','full_b95924b16825f0405d1e5cf504188eeb.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('58','29','thumb_5f1990dab64c2457985c2f1ce387668d.JPG','5f1990dab64c2457985c2f1ce387668d.JPG','full_5f1990dab64c2457985c2f1ce387668d.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('59','29','thumb_b39b47061d6d4d1fa0ea16076d88c2b2.JPG','b39b47061d6d4d1fa0ea16076d88c2b2.JPG','full_b39b47061d6d4d1fa0ea16076d88c2b2.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('60','30','thumb_19245a5e2812988b12399cdd9fd97440.JPG','19245a5e2812988b12399cdd9fd97440.JPG','full_19245a5e2812988b12399cdd9fd97440.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('61','30','thumb_cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG','cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG','full_cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('62','30','thumb_fb947da2d2d2a2f251c04ceeeb10f578.JPG','fb947da2d2d2a2f251c04ceeeb10f578.JPG','full_fb947da2d2d2a2f251c04ceeeb10f578.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('63','31','thumb_e35c32c93a9c061f665f38a23ac339ab.JPG','e35c32c93a9c061f665f38a23ac339ab.JPG','full_e35c32c93a9c061f665f38a23ac339ab.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('64','31','thumb_324b445f60492743cf0215273245935e.JPG','324b445f60492743cf0215273245935e.JPG','full_324b445f60492743cf0215273245935e.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('65','32','thumb_40b54a81904e18e0b915d707c8611e9a.JPG','40b54a81904e18e0b915d707c8611e9a.JPG','full_40b54a81904e18e0b915d707c8611e9a.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('66','32','thumb_6911248a1ed819526ec025c21165db5d.JPG','6911248a1ed819526ec025c21165db5d.JPG','full_6911248a1ed819526ec025c21165db5d.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('67','32','thumb_e74016cdf7588e8d5c4eae62ebe7d266.JPG','e74016cdf7588e8d5c4eae62ebe7d266.JPG','full_e74016cdf7588e8d5c4eae62ebe7d266.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('68','33','thumb_80b8a06eef4b3d90e5cf501946b15c31.JPG','80b8a06eef4b3d90e5cf501946b15c31.JPG','full_80b8a06eef4b3d90e5cf501946b15c31.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('69','33','thumb_439d18356c66d69dfead4e2a5c709aee.JPG','439d18356c66d69dfead4e2a5c709aee.JPG','full_439d18356c66d69dfead4e2a5c709aee.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('70','34','thumb_2567a407fa2143fc141d183429921de0.JPG','2567a407fa2143fc141d183429921de0.JPG','full_2567a407fa2143fc141d183429921de0.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('76','37','thumb_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','full_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('77','38','thumb_1d8bda1e135e3d49c7540a5880b97351.JPG','1d8bda1e135e3d49c7540a5880b97351.JPG','full_1d8bda1e135e3d49c7540a5880b97351.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('73','35','thumb_4bbc43419a19a8d3151cf61e4a9b2094.JPG','4bbc43419a19a8d3151cf61e4a9b2094.JPG','full_4bbc43419a19a8d3151cf61e4a9b2094.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('74','35','thumb_4a409348029a99c5eb381aae9b60a3ee.JPG','4a409348029a99c5eb381aae9b60a3ee.JPG','full_4a409348029a99c5eb381aae9b60a3ee.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('75','36','thumb_480bff4608f1515b6dc012e06b798d49.JPG','480bff4608f1515b6dc012e06b798d49.JPG','full_480bff4608f1515b6dc012e06b798d49.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('78','38','thumb_2c4ac35e463f5cc6dd87de0f2d2977c0.JPG','2c4ac35e463f5cc6dd87de0f2d2977c0.JPG','full_2c4ac35e463f5cc6dd87de0f2d2977c0.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('79','38','thumb_4c92eeffda0a96a33c3f17168b01a30d.JPG','4c92eeffda0a96a33c3f17168b01a30d.JPG','full_4c92eeffda0a96a33c3f17168b01a30d.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('80','38','thumb_88a41996418232dd7a28fefcdd1b950b.JPG','88a41996418232dd7a28fefcdd1b950b.JPG','full_88a41996418232dd7a28fefcdd1b950b.JPG','','4');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('81','39','thumb_7c0ee62d18ff0430f923aa843e3b8ec6.JPG','7c0ee62d18ff0430f923aa843e3b8ec6.JPG','full_7c0ee62d18ff0430f923aa843e3b8ec6.JPG','','1');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('82','39','thumb_d43f07a307b2575d85e922eee83d1339.JPG','d43f07a307b2575d85e922eee83d1339.JPG','full_d43f07a307b2575d85e922eee83d1339.JPG','','2');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('83','39','thumb_f586c357295aa379e543fb8ff498a300.JPG','f586c357295aa379e543fb8ff498a300.JPG','full_f586c357295aa379e543fb8ff498a300.JPG','','3');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('84','39','thumb_493b5488e1a85ee455e10855bdf28f19.JPG','493b5488e1a85ee455e10855bdf28f19.JPG','full_493b5488e1a85ee455e10855bdf28f19.JPG','','4');
insert  into `jos_jshopping_products_images`(`image_id`,`product_id`,`image_thumb`,`image_name`,`image_full`,`name`,`ordering`) values ('85','39','thumb_b9adeafde9792fab292035c68b5b53dc.JPG','b9adeafde9792fab292035c68b5b53dc.JPG','full_b9adeafde9792fab292035c68b5b53dc.JPG','','5');

/*Table structure for table `jos_jshopping_products_prices` */

DROP TABLE IF EXISTS `jos_jshopping_products_prices`;

CREATE TABLE `jos_jshopping_products_prices` (
  `price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY  (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_prices` */

/*Table structure for table `jos_jshopping_products_relations` */

DROP TABLE IF EXISTS `jos_jshopping_products_relations`;

CREATE TABLE `jos_jshopping_products_relations` (
  `product_id` int(11) NOT NULL default '0',
  `product_related_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_relations` */

/*Table structure for table `jos_jshopping_products_reviews` */

DROP TABLE IF EXISTS `jos_jshopping_products_reviews`;

CREATE TABLE `jos_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY  (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_reviews` */

/*Table structure for table `jos_jshopping_products_to_categories` */

DROP TABLE IF EXISTS `jos_jshopping_products_to_categories`;

CREATE TABLE `jos_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `product_ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_to_categories` */

insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('29','8','4');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('28','8','3');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('27','8','2');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('26','8','1');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('25','2','3');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('24','2','2');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('14','7','1');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('15','10','1');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('16','7','2');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('17','7','3');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('19','7','5');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('18','7','4');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('21','10','3');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('20','10','2');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('23','2','1');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('22','10','4');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('30','8','5');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('31','8','6');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('32','10','5');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('33','6','1');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('34','7','6');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('35','7','7');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('36','7','8');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('37','7','9');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('38','12','1');
insert  into `jos_jshopping_products_to_categories`(`product_id`,`category_id`,`product_ordering`) values ('39','13','1');

/*Table structure for table `jos_jshopping_products_videos` */

DROP TABLE IF EXISTS `jos_jshopping_products_videos`;

CREATE TABLE `jos_jshopping_products_videos` (
  `video_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `video_name` varchar(255) NOT NULL default '',
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY  (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_products_videos` */

/*Table structure for table `jos_jshopping_shipping_ext_calc` */

DROP TABLE IF EXISTS `jos_jshopping_shipping_ext_calc`;

CREATE TABLE `jos_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_shipping_ext_calc` */

insert  into `jos_jshopping_shipping_ext_calc`(`id`,`name`,`alias`,`description`,`params`,`shipping_method`,`published`,`ordering`) values ('1','StandartWeight','sm_standart_weight','StandartWeight','','','1','1');

/*Table structure for table `jos_jshopping_shipping_method` */

DROP TABLE IF EXISTS `jos_jshopping_shipping_method`;

CREATE TABLE `jos_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL auto_increment,
  `name_en-GB` varchar(100) NOT NULL default '',
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL default '',
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `payments` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL default '0',
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY  (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_shipping_method` */

insert  into `jos_jshopping_shipping_method`(`shipping_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`published`,`payments`,`image`,`ordering`,`name_ru-RU`,`description_ru-RU`) values ('1','Сourier','','Standardversand','','1','','','1','Курьер','');
insert  into `jos_jshopping_shipping_method`(`shipping_id`,`name_en-GB`,`description_en-GB`,`name_de-DE`,`description_de-DE`,`published`,`payments`,`image`,`ordering`,`name_ru-RU`,`description_ru-RU`) values ('2','Novaya Pochta','','Express','','1','','','2','Новая почта','');

/*Table structure for table `jos_jshopping_shipping_method_price` */

DROP TABLE IF EXISTS `jos_jshopping_shipping_method_price`;

CREATE TABLE `jos_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL auto_increment,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL default '0',
  `shipping_stand_price` decimal(12,2) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_shipping_method_price` */

insert  into `jos_jshopping_shipping_method_price`(`sh_pr_method_id`,`shipping_method_id`,`shipping_tax_id`,`shipping_stand_price`,`params`) values ('1','1','1','0.00','N;');
insert  into `jos_jshopping_shipping_method_price`(`sh_pr_method_id`,`shipping_method_id`,`shipping_tax_id`,`shipping_stand_price`,`params`) values ('2','2','1','0.00','N;');

/*Table structure for table `jos_jshopping_shipping_method_price_countries` */

DROP TABLE IF EXISTS `jos_jshopping_shipping_method_price_countries`;

CREATE TABLE `jos_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY  (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=719 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_shipping_method_price_countries` */

insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('479','220','1');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('718','239','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('717','238','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('716','237','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('715','236','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('714','235','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('713','234','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('712','233','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('711','232','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('710','231','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('709','230','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('708','229','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('707','228','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('706','227','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('705','226','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('704','225','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('703','224','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('702','223','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('701','222','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('700','221','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('699','220','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('698','219','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('697','218','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('696','217','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('695','216','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('694','215','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('693','214','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('692','213','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('691','212','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('690','211','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('689','210','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('688','209','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('687','208','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('686','207','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('685','206','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('684','205','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('683','204','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('682','203','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('681','202','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('680','201','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('679','200','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('678','199','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('677','198','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('676','197','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('675','196','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('674','195','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('673','194','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('672','193','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('671','192','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('670','191','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('669','190','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('668','189','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('667','188','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('666','187','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('665','186','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('664','185','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('663','184','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('662','183','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('661','182','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('660','181','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('659','180','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('658','179','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('657','178','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('656','177','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('655','176','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('654','175','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('653','174','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('652','173','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('651','172','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('650','171','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('649','170','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('648','169','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('647','168','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('646','167','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('645','166','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('644','165','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('643','164','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('642','163','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('641','162','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('640','161','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('639','160','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('638','159','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('637','158','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('636','157','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('635','156','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('634','155','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('633','154','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('632','153','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('631','152','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('630','151','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('629','150','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('628','149','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('627','148','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('626','147','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('625','146','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('624','145','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('623','144','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('622','143','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('621','142','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('620','141','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('619','140','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('618','139','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('617','138','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('616','137','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('615','136','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('614','135','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('613','134','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('612','133','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('611','132','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('610','131','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('609','130','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('608','129','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('607','128','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('606','127','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('605','126','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('604','125','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('603','124','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('602','123','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('601','122','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('600','121','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('599','120','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('598','119','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('597','118','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('596','117','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('595','116','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('594','115','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('593','114','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('592','113','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('591','112','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('590','111','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('589','110','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('588','109','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('587','108','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('586','107','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('585','106','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('584','105','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('583','104','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('582','103','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('581','102','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('580','101','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('579','100','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('578','99','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('577','98','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('576','97','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('575','96','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('574','95','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('573','94','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('572','93','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('571','92','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('570','91','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('569','90','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('568','89','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('567','88','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('566','87','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('565','86','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('564','85','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('563','84','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('562','83','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('561','82','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('560','81','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('559','80','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('558','79','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('557','78','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('556','77','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('555','76','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('554','75','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('553','74','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('552','73','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('551','72','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('550','71','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('549','70','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('548','69','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('547','68','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('546','67','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('545','66','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('544','65','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('543','64','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('542','63','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('541','62','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('540','61','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('539','60','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('538','59','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('537','58','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('536','57','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('535','56','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('534','55','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('533','54','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('532','53','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('531','52','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('530','51','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('529','50','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('528','49','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('527','48','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('526','47','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('525','46','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('524','45','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('523','44','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('522','43','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('521','42','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('520','41','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('519','40','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('518','39','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('517','38','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('516','37','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('515','36','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('514','35','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('513','34','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('512','33','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('511','32','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('510','31','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('509','30','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('508','29','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('507','28','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('506','27','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('505','26','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('504','25','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('503','24','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('502','23','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('501','22','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('500','21','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('499','20','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('498','19','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('497','18','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('496','17','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('495','16','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('494','15','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('493','14','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('492','13','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('491','12','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('490','11','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('489','10','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('488','9','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('487','8','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('486','7','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('485','6','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('484','5','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('483','4','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('482','3','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('481','2','2');
insert  into `jos_jshopping_shipping_method_price_countries`(`sh_method_country_id`,`country_id`,`sh_pr_method_id`) values ('480','1','2');

/*Table structure for table `jos_jshopping_shipping_method_price_weight` */

DROP TABLE IF EXISTS `jos_jshopping_shipping_method_price_weight`;

CREATE TABLE `jos_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL auto_increment,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_shipping_method_price_weight` */

insert  into `jos_jshopping_shipping_method_price_weight`(`sh_pr_weight_id`,`sh_pr_method_id`,`shipping_price`,`shipping_weight_from`,`shipping_weight_to`,`shipping_package_price`) values ('1','2','2.00','0.0000','10.0000','0.00');

/*Table structure for table `jos_jshopping_taxes` */

DROP TABLE IF EXISTS `jos_jshopping_taxes`;

CREATE TABLE `jos_jshopping_taxes` (
  `tax_id` int(11) NOT NULL auto_increment,
  `tax_name` varchar(50) NOT NULL default '',
  `tax_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`tax_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_taxes` */

insert  into `jos_jshopping_taxes`(`tax_id`,`tax_name`,`tax_value`) values ('1','Normal','19.00');

/*Table structure for table `jos_jshopping_taxes_ext` */

DROP TABLE IF EXISTS `jos_jshopping_taxes_ext`;

CREATE TABLE `jos_jshopping_taxes_ext` (
  `id` int(11) NOT NULL auto_increment,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_taxes_ext` */

/*Table structure for table `jos_jshopping_unit` */

DROP TABLE IF EXISTS `jos_jshopping_unit`;

CREATE TABLE `jos_jshopping_unit` (
  `id` int(11) NOT NULL auto_increment,
  `qty` int(11) NOT NULL default '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_unit` */

insert  into `jos_jshopping_unit`(`id`,`qty`,`name_de-DE`,`name_en-GB`,`name_ru-RU`) values ('1','1','Kg','Kg','Kg');
insert  into `jos_jshopping_unit`(`id`,`qty`,`name_de-DE`,`name_en-GB`,`name_ru-RU`) values ('2','1','Liter','Liter','Liter');
insert  into `jos_jshopping_unit`(`id`,`qty`,`name_de-DE`,`name_en-GB`,`name_ru-RU`) values ('3','1','St.','pcs.','pcs.');

/*Table structure for table `jos_jshopping_usergroups` */

DROP TABLE IF EXISTS `jos_jshopping_usergroups`;

CREATE TABLE `jos_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL auto_increment,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY  (`usergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_usergroups` */

insert  into `jos_jshopping_usergroups`(`usergroup_id`,`usergroup_name`,`usergroup_discount`,`usergroup_description`,`usergroup_is_default`) values ('1','Default','0.00','Default','1');

/*Table structure for table `jos_jshopping_users` */

DROP TABLE IF EXISTS `jos_jshopping_users`;

CREATE TABLE `jos_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) default NULL,
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
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
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
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_users` */

insert  into `jos_jshopping_users`(`user_id`,`usergroup_id`,`payment_id`,`shipping_id`,`u_name`,`title`,`f_name`,`l_name`,`firma_name`,`client_type`,`firma_code`,`tax_number`,`email`,`street`,`home`,`apartment`,`zip`,`city`,`state`,`country`,`phone`,`mobil_phone`,`fax`,`ext_field_1`,`ext_field_2`,`ext_field_3`,`delivery_adress`,`d_title`,`d_f_name`,`d_l_name`,`d_firma_name`,`d_email`,`d_street`,`d_home`,`d_apartment`,`d_zip`,`d_city`,`d_state`,`d_country`,`d_phone`,`d_mobil_phone`,`d_fax`,`d_ext_field_1`,`d_ext_field_2`,`d_ext_field_3`) values ('42','1','1','1','admin','1','ertwertwtwewert','retwertwert','ertwetr','0','','','andreyalek@gmail.com','gsdfgsdfgsdfg','','','45243523','ertwertwet','wertwertwertw','220','234523523452','','','','','','0','0','','','','','','','','','','','220','','','','','','');
insert  into `jos_jshopping_users`(`user_id`,`usergroup_id`,`payment_id`,`shipping_id`,`u_name`,`title`,`f_name`,`l_name`,`firma_name`,`client_type`,`firma_code`,`tax_number`,`email`,`street`,`home`,`apartment`,`zip`,`city`,`state`,`country`,`phone`,`mobil_phone`,`fax`,`ext_field_1`,`ext_field_2`,`ext_field_3`,`delivery_adress`,`d_title`,`d_f_name`,`d_l_name`,`d_firma_name`,`d_email`,`d_street`,`d_home`,`d_apartment`,`d_zip`,`d_city`,`d_state`,`d_country`,`d_phone`,`d_mobil_phone`,`d_fax`,`d_ext_field_1`,`d_ext_field_2`,`d_ext_field_3`) values ('43','1','0','0','andrey','0','','','','0','','','august-ru@mail.ru','','','','','','',NULL,'','','','','','','0','0','','','','','','','','','','','0','','','','','','');

/*Table structure for table `jos_jshopping_vendors` */

DROP TABLE IF EXISTS `jos_jshopping_vendors`;

CREATE TABLE `jos_jshopping_vendors` (
  `id` int(11) NOT NULL auto_increment,
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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_jshopping_vendors` */

insert  into `jos_jshopping_vendors`(`id`,`shop_name`,`company_name`,`url`,`logo`,`adress`,`city`,`zip`,`state`,`country`,`f_name`,`l_name`,`middlename`,`phone`,`fax`,`email`,`benef_bank_info`,`benef_bic`,`benef_conto`,`benef_payee`,`benef_iban`,`benef_swift`,`interm_name`,`interm_swift`,`identification_number`,`tax_number`,`additional_information`,`user_id`,`main`,`publish`) values ('1','Shop name','Company','','','Address','City','Postal Code ','State','81','First name ','Last name','','00000000','00000000','email@email.com','test','test','test','test','test','test','test','test','','','Additional information','0','1','1');

/*Table structure for table `jos_languages` */

DROP TABLE IF EXISTS `jos_languages`;

CREATE TABLE `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL default '',
  `published` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jos_languages` */

insert  into `jos_languages`(`lang_id`,`lang_code`,`title`,`title_native`,`sef`,`image`,`description`,`metakey`,`metadesc`,`sitename`,`published`,`access`,`ordering`) values ('1','en-GB','English (UK)','English (UK)','en','en','','','','','1','0','1');

/*Table structure for table `jos_menu` */

DROP TABLE IF EXISTS `jos_menu`;

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL default '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=493 DEFAULT CHARSET=utf8;

/*Data for the table `jos_menu` */

insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('1','','Menu_Item_Root','root','','','','','1','0','0','0','0','0','0000-00-00 00:00:00','0','0','','0','','0','93','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('2','menu','com_banners','Banners','','Banners','index.php?option=com_banners','component','0','1','1','4','0','0','0000-00-00 00:00:00','0','0','class:banners','0','','15','24','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('3','menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component','0','2','2','4','0','0','0000-00-00 00:00:00','0','0','class:banners','0','','16','17','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('4','menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component','0','2','2','6','0','0','0000-00-00 00:00:00','0','0','class:banners-cat','0','','18','19','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('5','menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component','0','2','2','4','0','0','0000-00-00 00:00:00','0','0','class:banners-clients','0','','20','21','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('6','menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component','0','2','2','4','0','0','0000-00-00 00:00:00','0','0','class:banners-tracks','0','','22','23','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('7','menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component','0','1','1','8','0','0','0000-00-00 00:00:00','0','0','class:contact','0','','25','30','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('8','menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component','0','7','2','8','0','0','0000-00-00 00:00:00','0','0','class:contact','0','','26','27','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('9','menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component','0','7','2','6','0','0','0000-00-00 00:00:00','0','0','class:contact-cat','0','','28','29','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('10','menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component','0','1','1','15','0','0','0000-00-00 00:00:00','0','0','class:messages','0','','31','36','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('11','menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component','0','10','2','15','0','0','0000-00-00 00:00:00','0','0','class:messages-add','0','','32','33','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('12','menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component','0','10','2','15','0','0','0000-00-00 00:00:00','0','0','class:messages-read','0','','34','35','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('13','menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component','0','1','1','17','0','0','0000-00-00 00:00:00','0','0','class:newsfeeds','0','','37','42','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('14','menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component','0','13','2','17','0','0','0000-00-00 00:00:00','0','0','class:newsfeeds','0','','38','39','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('15','menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component','0','13','2','6','0','0','0000-00-00 00:00:00','0','0','class:newsfeeds-cat','0','','40','41','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('16','menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component','0','1','1','24','0','0','0000-00-00 00:00:00','0','0','class:redirect','0','','55','56','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('17','menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component','0','1','1','19','0','0','0000-00-00 00:00:00','0','0','class:search','0','','47','48','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('18','menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component','0','1','1','21','0','0','0000-00-00 00:00:00','0','0','class:weblinks','0','','49','54','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('19','menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component','0','18','2','21','0','0','0000-00-00 00:00:00','0','0','class:weblinks','0','','50','51','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('20','menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component','0','18','2','6','0','0','0000-00-00 00:00:00','0','0','class:weblinks-cat','0','','52','53','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('21','menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component','0','1','1','27','0','0','0000-00-00 00:00:00','0','0','class:finder','0','','43','44','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('233','menutop','Войти','login','','login','index.php?option=com_users&view=login','component','-2','1','1','25','0','0','0000-00-00 00:00:00','0','1','','117','{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','5','6','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('238','menutop','Sample Sites','sample-sites','','sample-sites','index.php?option=com_content&view=article&id=38','component','-2','1','1','22','0','0','0000-00-00 00:00:00','0','1','','0','{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}','57','62','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('290','menutop','Articles','articles','','site-map/articles','index.php?option=com_content&view=categories&id=0','component','-2','294','2','22','0','0','0000-00-00 00:00:00','0','1','','117','{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"category_layout\":\"\",\"show_headings\":\"\",\"show_date\":\"\",\"date_format\":\"\",\"filter_field\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','8','9','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('294','menutop','Site Map','site-map','','site-map','index.php?option=com_content&view=article&id=42','component','-2','1','1','22','0','0','0000-00-00 00:00:00','0','1','','117','{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}','7','14','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('435','menutop','Home','homepage','','homepage','index.php?option=com_jshopping&controller=products&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component','-2','1','1','10047','0','0','0000-00-00 00:00:00','0','1','','117','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','3','4','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('438','menutop','Weblinks','weblinks','','site-map/weblinks','index.php?option=com_weblinks&view=categories&id=0','component','-2','294','2','21','0','0','0000-00-00 00:00:00','0','1','','117','{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"orderby_pri\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','10','11','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('439','menutop','Contacts','contacts','','site-map/contacts','index.php?option=com_contact&view=categories&id=0','component','-2','294','2','8','0','0','0000-00-00 00:00:00','0','1','','117','{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','12','13','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('445','menutop','Parks','parks','','sample-sites/parks','index.php?Itemid=','alias','-2','238','2','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"243\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}','58','59','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('446','menutop','Shop','shop','','sample-sites/shop','index.php?Itemid=','alias','-2','238','2','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"429\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}','60','61','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('448','menutop','Site Administrator','site-administrator','','site-administrator','administrator','url','-2','1','1','0','0','0','0000-00-00 00:00:00','1','1','','117','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}','63','64','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('455','menutop','Example Pages','example-pages','','example-pages','index.php?Itemid=','alias','-2','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"268\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}','65','66','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('479','main','JoomShopping','joomshopping','','joomshopping','index.php?option=com_jshopping','component','0','1','1','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_logo_s.png','0','','67','84','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('480','main','categories','categories','','joomshopping/categories','index.php?option=com_jshopping&controller=categories&catid=0','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_categories_s.png','0','','68','69','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('481','main','products','products','','joomshopping/products','index.php?option=com_jshopping&controller=products&category_id=0','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_products_s.png','0','','70','71','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('482','main','orders','orders','','joomshopping/orders','index.php?option=com_jshopping&controller=orders','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_orders_s.png','0','','72','73','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('483','main','clients','clients','','joomshopping/clients','index.php?option=com_jshopping&controller=users','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_users_s.png','0','','74','75','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('484','main','options','options','','joomshopping/options','index.php?option=com_jshopping&controller=other','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_options_s.png','0','','76','77','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('485','main','configuration','configuration','','joomshopping/configuration','index.php?option=com_jshopping&controller=config','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_configuration_s.png','0','','78','79','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('486','main','install-and-update','install-and-update','','joomshopping/install-and-update','index.php?option=com_jshopping&controller=update','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_update_s.png','0','','80','81','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('487','main','about-as','about-as','','joomshopping/about-as','index.php?option=com_jshopping&controller=info','component','0','479','2','10047','0','0','0000-00-00 00:00:00','0','1','components/com_jshopping/images/jshop_info_s.png','0','','82','83','0','','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('22','menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component','0','1','1','28','0','0','0000-00-00 00:00:00','0','0','class:joomlaupdate','0','','45','46','0','*','1');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('488','menutop','Подушки','pillows','','pillows','index.php?option=com_jshopping&controller=products&task=&category_id=7&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component','1','1','1','10047','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','1','2','1','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('489','menutop','Статьи','articles','','articles','index.php?option=com_content&view=category&layout=blog&id=78','component','1','1','1','22','0','0','0000-00-00 00:00:00','0','1','','0','{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"-1\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','85','86','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('490','menutop','Контакты','contacts','','contacts','index.php?option=com_content&view=article&id=71','component','1','1','1','22','0','0','0000-00-00 00:00:00','0','1','','0','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','91','92','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('491','hidden','Корзина','cart2','','cart2','index.php?option=com_jshopping&controller=cart&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component','1','1','1','10047','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','87','88','0','*','0');
insert  into `jos_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values ('492','menutop','Новости','news','','news','index.php?option=com_content&view=category&layout=blog&id=79','component','1','1','1','22','0','0','0000-00-00 00:00:00','0','1','','0','{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"1\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','89','90','0','*','0');

/*Table structure for table `jos_menu_types` */

DROP TABLE IF EXISTS `jos_menu_types`;

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `jos_menu_types` */

insert  into `jos_menu_types`(`id`,`menutype`,`title`,`description`) values ('6','menutop','Main Menu','Simple Home Menu');
insert  into `jos_menu_types`(`id`,`menutype`,`title`,`description`) values ('9','hidden','Скрытое','');

/*Table structure for table `jos_messages` */

DROP TABLE IF EXISTS `jos_messages`;

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_messages` */

/*Table structure for table `jos_messages_cfg` */

DROP TABLE IF EXISTS `jos_messages_cfg`;

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_messages_cfg` */

/*Table structure for table `jos_modules` */

DROP TABLE IF EXISTS `jos_modules`;

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) NOT NULL default '',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

/*Data for the table `jos_modules` */

insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('1','Main Menu','','','1','precontent','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_menu','1','1','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('2','Login','','','1','login','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_login','1','1','','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('3','Popular Articles','','','3','cpanel','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_popular','3','1','{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('4','Recently Added Articles','','','4','cpanel','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_latest','3','1','{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('8','Toolbar','','','1','toolbar','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_toolbar','3','1','','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('9','Quick Icons','','','1','icon','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_quickicon','3','1','','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('10','Logged-in Users','','','2','cpanel','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_logged','3','1','{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('12','Admin Menu','','','1','menu','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','3','1','{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('13','Admin Submenu','','','1','submenu','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_submenu','3','1','','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('14','User Status','','','2','status','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_status','3','1','','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('15','Title','','','1','title','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_title','3','1','','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('16','Вход / Профиль','','','3','apex-top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_login','1','0','{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"lady:horizontal\",\"moduleclass_sfx\":\"pull-right hidden-phone\",\"cache\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('17','Breadcrumbs','','','1','breadcrumbs_top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_breadcrumbs','1','0','{\"showHere\":\"0\",\"showHome\":\"1\",\"homeText\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"showLast\":\"1\",\"separator\":\"|\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('79','Multilanguage status','','','1','status','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0','mod_multilangstatus','3','1','{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('86','Joomla Version','','','1','footer','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_version','3','1','{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','1','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('18','Book Store','','','1','position-10','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_banners','1','0','{\"target\":\"1\",\"count\":\"1\",\"cid\":\"3\",\"catid\":[\"\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Books!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('94','Категории','','','1','left','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_jshopping_categories','1','1','{\"show_image\":\"0\",\"sort\":\"name\",\"ordering\":\"asc\",\"moduleclass_sfx\":\" hidden-phone\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('68','About Parks','','<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>','2','position-4','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','1','{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('25','Site Map','','','1','sitemapload','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','1','0','{\"menutype\":\"menutop\",\"startLevel\":\"2\",\"endLevel\":\"3\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"sitemap\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('26','This Site','','','5','position-7','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_menu','1','1','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('27','Archived Articles','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_articles_archive','1','1','{\"count\":\"10\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('28','Latest News','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_articles_latest','1','1','{\"catid\":[\"19\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('29','Articles Most Read','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_articles_popular','1','1','{\"catid\":[\"26\",\"29\"],\"count\":\"5\",\"show_front\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('30','Feed Display','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_feed','1','1','{\"rssurl\":\"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('31','News Flash','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_articles_news','1','1','{\"catid\":[\"19\"],\"image\":\"0\",\"item_title\":\"0\",\"link_titles\":\"\",\"item_heading\":\"h4\",\"showLastSeparator\":\"1\",\"readmore\":\"1\",\"count\":\"1\",\"ordering\":\"a.publish_up\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('33','Random Image','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_random_image','1','1','{\"type\":\"jpg\",\"folder\":\"images\\/sampledata\\/parks\\/animals\",\"link\":\"\",\"width\":\"180\",\"height\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('34','Articles Related Items','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_related_items','1','1','{\"showDate\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('35','Search','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_search','1','1','{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('36','Statistics','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_stats','1','1','{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"1\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('37','Syndicate Feeds','','','1','syndicateload','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_syndicate','1','1','{\"text\":\"Feed Entries\",\"format\":\"rss\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('38','Users Latest','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_users_latest','1','1','{\"shownumber\":\"5\",\"linknames\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('39','Who\'s Online','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_whosonline','1','1','{\"showmode\":\"2\",\"linknames\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('40','Wrapper','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_wrapper','1','1','{\"url\":\"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI\",\"add\":\"1\",\"scrolling\":\"auto\",\"width\":\"640\",\"height\":\"390\",\"height_auto\":\"1\",\"target\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('41','Footer','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_footer','1','1','{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('44','Login','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_login','1','1','{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"280\",\"logout\":\"280\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('45','Menu Example','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_menu','1','1','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('47','Latest Park Blogs','','','6','position-7','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_articles_latest','1','1','{\"count\":\"5\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"show_front\":\"1\",\"catid\":\"35\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','0','en-GB');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('48','Custom HTML','','<p>This is a custom html module. That means you can enter whatever content you want.</p>','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','1','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('49','Weblinks','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_weblinks','1','1','{\"catid\":\"32\",\"count\":\"5\",\"ordering\":\"title\",\"direction\":\"asc\",\"target\":\"3\",\"description\":\"0\",\"hits\":\"0\",\"count_clicks\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('52','Breadcrumbs','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_breadcrumbs','1','1','{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('61','Articles Categories','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_articles_categories','1','1','{\"parent\":\"29\",\"show_description\":\"0\",\"show_children\":\"0\",\"count\":\"0\",\"maxlevel\":\"0\",\"layout\":\"_:default\",\"item_heading\":\"4\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('56','Banners','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_banners','1','1','{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"random\",\"header_text\":\"\",\"footer_text\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('92','Слайдшоу','','','1','header-bottom','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_showplus','1','1','{\"folder\":\"images\\/sampledata\\/fruitshop\",\"width\":\"1050\",\"height\":\"100\",\"alignment\":\"center\",\"orientation\":\"horizontal\",\"buttons\":\"1\",\"captions\":\"1\",\"defcaption\":\"\",\"deflink\":\"\",\"target\":\"_blank\",\"delay\":\"3000\",\"duration\":\"800\",\"transition\":\"kenburns\",\"transition_easing\":\"back\",\"transition_pan\":\"100\",\"transition_zoom\":\"50\",\"margin\":\"\",\"border_style\":\"\",\"border_width\":\"\",\"border_color\":\"\",\"padding\":\"\",\"background_color\":\"\",\"thumb_width\":\"60\",\"thumb_height\":\"40\",\"links\":\"1\",\"thumb_cache\":\"1\",\"thumb_folder\":\"thumbs\",\"thumb_quality\":\"85\",\"labels\":\"labels\",\"labels_multilingual\":\"0\",\"labels_captions\":\"\",\"sort_criterion\":\"labels-filename\",\"sort_order\":\"0\",\"library\":\"default\",\"moduleclass_sfx\":\"\",\"debug\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('58','Special!','','<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>','1','position-12','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','4','1','{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('62','Language Switcher','','','3','position-4','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_languages','1','1','{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('63','Search','','','1','position-0','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_search','1','1','{\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"set_itemid\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('64','Language Switcher','','','1','languageswitcherload','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_languages','1','1','{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('65','About Fruit Shop','','<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>','1','position-4','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','1','{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('69','Articles Category','','','1','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_articles_category','1','1','{\"mode\":\"normal\",\"show_on_article_page\":\"1\",\"show_front\":\"show\",\"count\":\"0\",\"category_filtering_type\":\"1\",\"catid\":[\"72\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"item_heading\":\"4\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"100\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('70','Search (Atomic Template)','','','1','atomic-search','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_search','1','0','{\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"set_itemid\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('93','Jshopping Categories','','','1','left_bar','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_jshopping_categories','1','0','{\"show_image\":\"0\",\"sort\":\"id\",\"ordering\":\"asc\",\"moduleclass_sfx\":\"\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('72','Top Quote (Atomic Template)','','<hr />\r\n<h2 class=\"alt\">Powerful Content Management and a Simple Extensible Framework.</h2>\r\n<hr />','1','atomic-topquote','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','0','{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('73','Bottom Left Column (Atomic Template)','','<h6>This is a nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>','1','atomic-bottomleft','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','0','{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('74','Bottom Middle Column (Atomic Template)','','<h6>This is another nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>','1','atomic-bottommiddle','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','0','{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('75','Sidebar (Atomic Template)','','<h3>A <span class=\"alt\">Simple</span> Sidebar</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class=\"quiet\">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class=\"incr\">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class=\"incr\">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>','1','atomic-sidebar','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','0','{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('76','Login (Atomic Template)','','','2','atomic-sidebar','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_login','1','0','{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('77','Shop','','','1','position-11','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_banners','1','0','{\"target\":\"1\",\"count\":\"1\",\"cid\":\"2\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Shop!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('78','Contribute','','','1','position-9','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_banners','1','0','{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Contribute! \",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('84','Smart Search Module','','','2','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_finder','1','1','{\"searchfilter\":\"\",\"show_autosuggest\":\"1\",\"show_advanced\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"field_size\":20,\"alt_label\":\"\",\"show_label\":\"0\",\"label_pos\":\"top\",\"show_button\":\"0\",\"button_pos\":\"right\",\"opensearch\":\"1\",\"opensearch_title\":\"\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('111','Футер','','<p><span class=\"icon-envelope\"> </span><a href=\"mailto:inbox@yomayka.com\">inbox@yomayka.com</a></p>\r\n<p><span class=\"icon-bullhorn\"> </span> <span>(+38)096-087-30-26</span> <span class=\"icon-user\"> </span> <span>Анна</span></p>\r\n<p><span><img src=\"images/vkontakte.png\" border=\"0\" width=\"32\" height=\"32\" style=\"border: 0; float: left;\" /></span></p>','1','footer_right','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','0','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('112','Меню главное (футер)','','','1','footer_middle','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','1','0','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"lady:ul\",\"moduleclass_sfx\":\" span9\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('113','Меню главное (футер) (копия)','','','1','footer_left','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_menu','1','0','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"lady:collapsed-list\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('114','Контакты (футер)','','<p><a href=\"mailto:inbox@yomayka.com\">inbox@yomayka.com</a></p>\r\n<p><a href=\"http://vk.com/yomayka\" target=\"_blank\"><img src=\"images/vkontakte.png\" border=\"0\" width=\"16\" height=\"16\" style=\"border: 0; float: right; margin: 0px;\" /></a></p>','2','footer_middle','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','0','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"pull-right\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('100','Menu top fixed','','','1','apex-fixed-middle','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_menu','1','0','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-dropdown\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('101','Меню главное (верх)','','','1','apex-middle','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_bee_menu','1','0','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"10\",\"showAllChildren\":\"1\",\"brandName\":\"\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:collapsed-list\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('102','Логотип','','<div style=\"float: left;\"><img src=\"images/logo.png\" border=\"0\" height=\"50px\" /></div>','1','apex-top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','0','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"pull-left mod-logo\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('103','Корзина (иконка вверху)','','','5','apex-top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_jshopping_cart','1','0','{\"moduleclass_sfx\":\" pull-right\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('104','Заголовок страницы (возле меню)','','','1','apex-middle','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_pagetitle','1','0','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"pull-right visible-desktop\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('105','Меню главное (верх)','','','1','apex-middle','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','1','0','{\"menutype\":\"menutop\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"lady:collapsed-list\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('106','Категории (для телефона)','','','1','left','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_jshopping_categories','1','0','{\"show_image\":\"0\",\"sort\":\"name\",\"ordering\":\"asc\",\"moduleclass_sfx\":\" visible-phone\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('107','Вход(мобильный, кнопка)','','<p><a class=\"btn btn-primary\" href=\"../component/users/?view=login\">Войти</a></p>','1','apex-top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_custom','1','1','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('108','Вход / Профиль (мобильный)','','','3','apex-top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_login','1','0','{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"lady:buttonlink\",\"moduleclass_sfx\":\"pull-right visible-phone\",\"cache\":\"0\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('109','Соц сети','','<div><a href=\"http://vk.com/yomayka\" target=\"_blank\"><img src=\"images/vkontakte.png\" border=\"0\" /><span>vk.com/yomayka</span></a></div>','2','apex-top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','0','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"pull-left social\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*');
insert  into `jos_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values ('110','Категории (для телефона) (копия)','','','1','left','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','-2','mod_jshopping_categories','1','0','{\"show_image\":\"0\",\"sort\":\"name\",\"ordering\":\"asc\",\"moduleclass_sfx\":\" visible-phone\"}','0','*');

/*Table structure for table `jos_modules_menu` */

DROP TABLE IF EXISTS `jos_modules_menu`;

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_modules_menu` */

insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('1','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('2','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('3','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('4','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('6','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('7','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('8','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('9','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('10','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('12','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('13','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('14','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('15','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('16','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('17','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('18','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-463');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-462');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-433');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-432');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-431');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-430');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-429');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-427');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-400');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-399');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-296');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-244');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-243');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-242');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('19','-234');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('20','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','231');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','234');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','238');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','242');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','243');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','244');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','296');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','399');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('22','400');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-463');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-462');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-433');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-432');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-431');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-430');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-429');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-427');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-400');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-399');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-296');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-244');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-243');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-242');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-238');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('23','-234');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('25','294');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-463');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-462');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-433');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-432');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-431');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-430');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-429');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-427');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-400');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-399');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-296');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-244');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-243');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-242');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-238');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('26','-234');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('27','325');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('28','310');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('29','302');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('30','410');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('31','309');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('32','309');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('33','307');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('34','326');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('35','306');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('36','304');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('37','311');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('38','300');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('39','301');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('40','313');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('41','324');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('44','312');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('45','303');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','231');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','234');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','242');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','243');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','244');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','296');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','399');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('47','400');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('48','418');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('49','417');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('52','416');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('56','305');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','238');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','427');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','429');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','430');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','431');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','432');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','433');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','462');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('57','463');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','427');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','429');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','430');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','431');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','432');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','433');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','462');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('58','463');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('61','443');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','231');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','234');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','242');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','243');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','244');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','296');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','399');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('62','400');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('63','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('64','447');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','427');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','429');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','430');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','431');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','432');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','433');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','462');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('65','463');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('68','243');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('69','459');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('70','285');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('70','316');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('71','285');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('71','316');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('72','285');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('72','316');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('73','285');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('73','316');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('74','285');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('74','316');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('75','285');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('75','316');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('76','285');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('76','316');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('77','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('78','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('79','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('84','467');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('86','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('92','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('93','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('94','488');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('100','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('101','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('102','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('103','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('104','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('105','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('106','488');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('107','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('108','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('109','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('110','488');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('111','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('112','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('113','0');
insert  into `jos_modules_menu`(`moduleid`,`menuid`) values ('114','0');

/*Table structure for table `jos_newsfeeds` */

DROP TABLE IF EXISTS `jos_newsfeeds`;

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `jos_newsfeeds` */

insert  into `jos_newsfeeds`(`catid`,`id`,`name`,`alias`,`link`,`filename`,`published`,`numarticles`,`cache_time`,`checked_out`,`checked_out_time`,`ordering`,`rtl`,`access`,`language`,`params`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`xreference`,`publish_up`,`publish_down`) values ('17','1','Joomla! Announcements','joomla-announcements','http://www.joomla.org/announcements.feed?type=rss',NULL,'1','5','3600','0','0000-00-00 00:00:00','1','1','1','en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01','0','','2011-12-27 12:25:05','42','','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_newsfeeds`(`catid`,`id`,`name`,`alias`,`link`,`filename`,`published`,`numarticles`,`cache_time`,`checked_out`,`checked_out_time`,`ordering`,`rtl`,`access`,`language`,`params`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`xreference`,`publish_up`,`publish_down`) values ('17','2','New Joomla! Extensions','new-joomla-extensions','http://feeds.joomla.org/JoomlaExtensions',NULL,'1','5','3600','0','0000-00-00 00:00:00','4','1','1','en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01','0','','2011-12-27 12:25:36','42','','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_newsfeeds`(`catid`,`id`,`name`,`alias`,`link`,`filename`,`published`,`numarticles`,`cache_time`,`checked_out`,`checked_out_time`,`ordering`,`rtl`,`access`,`language`,`params`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`xreference`,`publish_up`,`publish_down`) values ('17','3','Joomla! Security News','joomla-security-news','http://feeds.joomla.org/JoomlaSecurityNews',NULL,'1','5','3600','0','0000-00-00 00:00:00','2','1','1','en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01','0','','2011-12-27 12:24:55','42','','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_newsfeeds`(`catid`,`id`,`name`,`alias`,`link`,`filename`,`published`,`numarticles`,`cache_time`,`checked_out`,`checked_out_time`,`ordering`,`rtl`,`access`,`language`,`params`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`xreference`,`publish_up`,`publish_down`) values ('17','4','Joomla! Connect','joomla-connect','http://feeds.joomla.org/JoomlaConnect',NULL,'1','5','3600','0','0000-00-00 00:00:00','3','1','1','en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01','0','','2011-12-27 12:25:10','42','','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `jos_overrider` */

DROP TABLE IF EXISTS `jos_overrider`;

CREATE TABLE `jos_overrider` (
  `id` int(10) NOT NULL auto_increment COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_overrider` */

/*Table structure for table `jos_redirect_links` */

DROP TABLE IF EXISTS `jos_redirect_links`;

CREATE TABLE `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `jos_redirect_links` */

insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('1','http://joomlashop.woo/var/www/joomlashop.woo/templates/zt_oreo17/css/css3.php?url=/var/www/joomlashop.woo/templates/zt_oreo17/css/','','http://joomlashop.woo/','','0','0','2012-02-12 15:33:51','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('2','http://joomlashop.woo/site-map','','http://joomlashop.woo/site-map/weblinks','','0','0','2012-02-21 19:58:47','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('3','http://localhost/yomayka/component/jshopping/category/view/blank.gif','','http://localhost/yomayka/component/jshopping/category/view/1?Itemid=435','','23','0','2012-11-03 19:36:00','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('4','http://localhost/yomayka/component/jshopping/product/view/1/blank.gif','','http://localhost/yomayka/component/jshopping/product/view/1/1?Itemid=435','','3','0','2012-11-03 21:08:21','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('5','http://localhost/yomayka/component/jshopping/blank.gif','','http://localhost/yomayka/component/jshopping/kids?Itemid=435','','13','0','2012-11-04 21:44:42','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('6','http://localhost/yomayka/ADMINISTRATORT','','','','1','0','2012-12-07 00:14:10','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('7','http://localhost/yomayka/login','','http://localhost/yomayka/pillows','','2','0','2012-12-07 01:44:05','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('8','http://localhost/yomayka/articles','','http://localhost/yomayka/pillows','','1','0','2012-12-07 01:44:49','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('9','http://localhost/yomayka/cart/view','','http://localhost/yomayka/cart/view','','3','0','2012-12-07 02:07:57','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('10','http://localhost/yomayka/product/view/4/index.php','','http://localhost/yomayka/product/view/4/1','','1','0','2012-12-09 21:18:10','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('11','http://yomayka.com/shop/product/view/1/index.php','','http://yomayka.com/shop/product/view/1/2','','3','0','2012-12-16 11:24:58','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('12','http://yomayka.com/shop/component/jshopping/index.php','','http://yomayka.com/shop/component/jshopping/pets?Itemid=0','','1','0','2012-12-21 00:01:02','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('13','http://yomayka.com/shop/aktivnost','','http://yomayka.com/shop/aktivnost','','1','0','2012-12-21 21:30:53','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('14','http://yomayka.com/shop/vk.com/yomayka','','http://yomayka.com/shop/contacts','','1','0','2012-12-21 21:56:55','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('15','http://yomayka.com/ADMINISTRATOR','','','','1','0','2012-12-24 19:34:03','0000-00-00 00:00:00');
insert  into `jos_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values ('16','http://localhost/yomayka/component','','','','1','0','2012-12-24 23:53:42','0000-00-00 00:00:00');

/*Table structure for table `jos_schemas` */

DROP TABLE IF EXISTS `jos_schemas`;

CREATE TABLE `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_schemas` */

insert  into `jos_schemas`(`extension_id`,`version_id`) values ('700','2.5.8');

/*Table structure for table `jos_session` */

DROP TABLE IF EXISTS `jos_session`;

CREATE TABLE `jos_session` (
  `session_id` varchar(200) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` mediumtext,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_session` */

insert  into `jos_session`(`session_id`,`client_id`,`guest`,`time`,`data`,`userid`,`username`,`usertype`) values ('b15b0f9a2cbf406d956baca1309ba3c3','0','1','1371193060','__default|a:16:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1371193041;s:18:\"session.timer.last\";i:1371193041;s:17:\"session.timer.now\";i:1371193058;s:22:\"session.client.browser\";s:102:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:19:\"js_id_currency_orig\";s:1:\"1\";s:14:\"js_id_currency\";s:1:\"1\";s:19:\"js_history_sel_lang\";s:5:\"ru-RU\";s:15:\"js_prev_user_id\";i:0;s:22:\"jshop_checked_language\";a:2:{i:0;s:5:\"en-GB\";i:1;s:5:\"ru-RU\";}s:27:\"shop_main_page_itemid_ru-RU\";i:0;s:13:\"session.token\";s:32:\"16338aad920dc71a32dc8290cc6edce4\";s:26:\"jshop_end_page_buy_product\";s:38:\"/component/jshopping/geometry?Itemid=0\";s:27:\"jshop_end_page_list_product\";s:38:\"/component/jshopping/geometry?Itemid=0\";}','0','','');

/*Table structure for table `jos_template_styles` */

DROP TABLE IF EXISTS `jos_template_styles`;

CREATE TABLE `jos_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

/*Data for the table `jos_template_styles` */

insert  into `jos_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values ('2','bluestork','1','1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}');
insert  into `jos_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values ('4','beez_20','0','0','Beez2 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"YOmayka\",\"sitedescription\":\"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0442\\u043e\\u0433\\u043e \\u0447\\u0442\\u043e \\u0442\\u044b \\u0442\\u0430\\u043a \\u0434\\u0430\\u0432\\u043d\\u043e \\u0438\\u0441\\u043a\\u0430\\u043b\",\"navposition\":\"left\",\"templatecolor\":\"personal\"}');
insert  into `jos_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values ('5','hathor','1','0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
insert  into `jos_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values ('116','bootstrap','0','0','migur - По умолчанию','{}');
insert  into `jos_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values ('117','lady','0','1','lady - По умолчанию','{}');

/*Table structure for table `jos_update_categories` */

DROP TABLE IF EXISTS `jos_update_categories`;

CREATE TABLE `jos_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories';

/*Data for the table `jos_update_categories` */

/*Table structure for table `jos_update_sites` */

DROP TABLE IF EXISTS `jos_update_sites`;

CREATE TABLE `jos_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  `last_check_timestamp` bigint(20) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

/*Data for the table `jos_update_sites` */

insert  into `jos_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`) values ('1','Joomla Core','collection','http://update.joomla.org/core/list.xml','1','1361992809');
insert  into `jos_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`) values ('2','Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml','1','1361992809');
insert  into `jos_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`) values ('3','Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml','1','1361992809');

/*Table structure for table `jos_update_sites_extensions` */

DROP TABLE IF EXISTS `jos_update_sites_extensions`;

CREATE TABLE `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

/*Data for the table `jos_update_sites_extensions` */

insert  into `jos_update_sites_extensions`(`update_site_id`,`extension_id`) values ('1','700');
insert  into `jos_update_sites_extensions`(`update_site_id`,`extension_id`) values ('2','700');
insert  into `jos_update_sites_extensions`(`update_site_id`,`extension_id`) values ('3','600');

/*Table structure for table `jos_updates` */

DROP TABLE IF EXISTS `jos_updates`;

CREATE TABLE `jos_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

/*Data for the table `jos_updates` */

insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('1','3','0','0','Armenian','','pkg_hy-AM','package','','0','2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('2','3','0','0','Danish','','pkg_da-DK','package','','0','2.5.8.1','','http://update.joomla.org/language/details/da-DK_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('3','3','0','0','Khmer','','pkg_km-KH','package','','0','2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('4','3','0','0','Swedish','','pkg_sv-SE','package','','0','2.5.8.1','','http://update.joomla.org/language/details/sv-SE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('5','3','0','0','Hungarian','','pkg_hu-HU','package','','0','2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('6','3','0','0','Bulgarian','','pkg_bg-BG','package','','0','2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('7','3','0','0','French','','pkg_fr-FR','package','','0','2.5.8.1','','http://update.joomla.org/language/details/fr-FR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('8','3','0','0','Italian','','pkg_it-IT','package','','0','2.5.8.2','','http://update.joomla.org/language/details/it-IT_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('9','3','0','0','Spanish','','pkg_es-ES','package','','0','2.5.8.1','','http://update.joomla.org/language/details/es-ES_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('10','3','0','0','Dutch','','pkg_nl-NL','package','','0','2.5.8.1','','http://update.joomla.org/language/details/nl-NL_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('11','3','0','0','Turkish','','pkg_tr-TR','package','','0','2.5.7.2','','http://update.joomla.org/language/details/tr-TR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('12','3','0','0','Ukrainian','','pkg_uk-UA','package','','0','2.5.7.2','','http://update.joomla.org/language/details/uk-UA_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('13','3','0','0','Indonesian','','pkg_id-ID','package','','0','2.5.8.1','','http://update.joomla.org/language/details/id-ID_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('14','3','0','0','Slovak','','pkg_sk-SK','package','','0','2.5.8.1','','http://update.joomla.org/language/details/sk-SK_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('15','3','0','0','Belarusian','','pkg_be-BY','package','','0','2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('16','3','0','0','Latvian','','pkg_lv-LV','package','','0','2.5.8.1','','http://update.joomla.org/language/details/lv-LV_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('17','3','0','0','Estonian','','pkg_et-EE','package','','0','2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('18','3','0','0','Romanian','','pkg_ro-RO','package','','0','2.5.5.3','','http://update.joomla.org/language/details/ro-RO_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('19','3','0','0','Flemish','','pkg_nl-BE','package','','0','2.5.8.1','','http://update.joomla.org/language/details/nl-BE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('20','3','0','0','Macedonian','','pkg_mk-MK','package','','0','2.5.7.1','','http://update.joomla.org/language/details/mk-MK_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('21','3','0','0','Japanese','','pkg_ja-JP','package','','0','2.5.8.1','','http://update.joomla.org/language/details/ja-JP_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('22','3','0','0','Serbian Latin','','pkg_sr-YU','package','','0','2.5.7.1','','http://update.joomla.org/language/details/sr-YU_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('23','3','0','0','Arabic Unitag','','pkg_ar-AA','package','','0','2.5.8.1','','http://update.joomla.org/language/details/ar-AA_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('24','3','0','0','German','','pkg_de-DE','package','','0','2.5.8.2','','http://update.joomla.org/language/details/de-DE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('25','3','0','0','Norwegian Bokmal','','pkg_nb-NO','package','','0','2.5.8.1','','http://update.joomla.org/language/details/nb-NO_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('26','3','0','0','English AU','','pkg_en-AU','package','','0','2.5.8.1','','http://update.joomla.org/language/details/en-AU_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('27','3','0','0','English US','','pkg_en-US','package','','0','2.5.8.1','','http://update.joomla.org/language/details/en-US_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('28','3','0','0','Serbian Cyrillic','','pkg_sr-RS','package','','0','2.5.7.1','','http://update.joomla.org/language/details/sr-RS_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('29','3','0','0','Lithuanian','','pkg_lt-LT','package','','0','2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('30','3','0','0','Albanian','','pkg_sq-AL','package','','0','2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('31','3','0','0','Persian','','pkg_fa-IR','package','','0','2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('32','3','0','0','Galician','','pkg_gl-ES','package','','0','2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('33','3','0','0','Polish','','pkg_pl-PL','package','','0','2.5.8.1','','http://update.joomla.org/language/details/pl-PL_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('34','3','0','0','Syriac','','pkg_sy-IQ','package','','0','2.5.8.1','','http://update.joomla.org/language/details/sy-IQ_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('35','3','0','0','Portuguese','','pkg_pt-PT','package','','0','2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('36','3','0','0','Hebrew','','pkg_he-IL','package','','0','2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('37','3','0','0','Catalan','','pkg_ca-ES','package','','0','2.5.8.1','','http://update.joomla.org/language/details/ca-ES_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('38','3','0','0','Laotian','','pkg_lo-LA','package','','0','2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('39','3','0','0','Afrikaans','','pkg_af-ZA','package','','0','2.5.6.2','','http://update.joomla.org/language/details/af-ZA_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('40','3','0','0','Chinese Simplified','','pkg_zh-CN','package','','0','2.5.7.1','','http://update.joomla.org/language/details/zh-CN_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('41','3','0','0','Greek','','pkg_el-GR','package','','0','2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('42','3','0','0','Esperanto','','pkg_eo-XX','package','','0','2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('43','3','0','0','Finnish','','pkg_fi-FI','package','','0','2.5.8.2','','http://update.joomla.org/language/details/fi-FI_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('44','3','0','0','Portuguese Brazil','','pkg_pt-BR','package','','0','2.5.8.1','','http://update.joomla.org/language/details/pt-BR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('45','3','0','0','Chinese Traditional','','pkg_zh-TW','package','','0','2.5.7.2','','http://update.joomla.org/language/details/zh-TW_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('46','3','0','0','Vietnamese','','pkg_vi-VN','package','','0','2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('47','3','0','0','Kurdish Sorani','','pkg_ckb-IQ','package','','0','2.5.8.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('48','3','0','0','Bosnian','','pkg_bs-BA','package','','0','2.5.8.1','','http://update.joomla.org/language/details/bs-BA_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('49','3','0','0','Croatian','','pkg_hr-HR','package','','0','2.5.8.1','','http://update.joomla.org/language/details/hr-HR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('50','3','0','0','Azeri','','pkg_az-AZ','package','','0','2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('51','3','0','0','Norwegian Nynorsk','','pkg_nn-NO','package','','0','2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('52','3','0','0','Tamil India','','pkg_ta-IN','package','','0','2.5.8.1','','http://update.joomla.org/language/details/ta-IN_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('53','3','0','0','Scottish Gaelic','','pkg_gd-GB','package','','0','2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('54','3','0','0','Thai','','pkg_th-TH','package','','0','2.5.8.1','','http://update.joomla.org/language/details/th-TH_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('55','3','0','0','Basque','','pkg_eu-ES','package','','0','1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('56','3','0','0','Uyghur','','pkg_ug-CN','package','','0','2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('57','3','0','0','Korean','','pkg_ko-KR','package','','0','2.5.7.2','','http://update.joomla.org/language/details/ko-KR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('58','3','0','0','Hindi','','pkg_hi-IN','package','','0','2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('59','3','0','0','Welsh','','pkg_cy-GB','package','','0','2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('60','3','0','0','Swahili','','pkg_sw-KE','package','','0','2.5.8.3','','http://update.joomla.org/language/details/sw-KE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('61','1','700','0','Joomla','','joomla','file','','0','2.5.9','','http://update.joomla.org/core/extension.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('62','3','0','0','Danish','','pkg_da-DK','package','','0','2.5.9.2','','http://update.joomla.org/language/details/da-DK_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('63','3','0','0','Swedish','','pkg_sv-SE','package','','0','2.5.9.1','','http://update.joomla.org/language/details/sv-SE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('64','3','0','0','French','','pkg_fr-FR','package','','0','2.5.9.1','','http://update.joomla.org/language/details/fr-FR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('65','3','0','0','Italian','','pkg_it-IT','package','','0','2.5.9.1','','http://update.joomla.org/language/details/it-IT_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('66','3','0','0','Spanish','','pkg_es-ES','package','','0','2.5.9.1','','http://update.joomla.org/language/details/es-ES_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('67','3','0','0','Dutch','','pkg_nl-NL','package','','0','2.5.9.1','','http://update.joomla.org/language/details/nl-NL_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('68','3','0','0','Flemish','','pkg_nl-BE','package','','0','2.5.9.1','','http://update.joomla.org/language/details/nl-BE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('69','3','0','0','Japanese','','pkg_ja-JP','package','','0','2.5.9.1','','http://update.joomla.org/language/details/ja-JP_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('70','3','0','0','Arabic Unitag','','pkg_ar-AA','package','','0','2.5.9.1','','http://update.joomla.org/language/details/ar-AA_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('71','3','0','0','German','','pkg_de-DE','package','','0','2.5.9.1','','http://update.joomla.org/language/details/de-DE_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('72','3','0','0','Norwegian Bokmal','','pkg_nb-NO','package','','0','2.5.9.1','','http://update.joomla.org/language/details/nb-NO_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('73','3','0','0','English AU','','pkg_en-AU','package','','0','2.5.9.1','','http://update.joomla.org/language/details/en-AU_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('74','3','0','0','English US','','pkg_en-US','package','','0','2.5.9.1','','http://update.joomla.org/language/details/en-US_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('75','3','0','0','Persian','','pkg_fa-IR','package','','0','2.5.9.1','','http://update.joomla.org/language/details/fa-IR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('76','3','0','0','Polish','','pkg_pl-PL','package','','0','2.5.9.1','','http://update.joomla.org/language/details/pl-PL_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('77','3','0','0','Afrikaans','','pkg_af-ZA','package','','0','2.5.9.1','','http://update.joomla.org/language/details/af-ZA_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('78','3','0','0','Finnish','','pkg_fi-FI','package','','0','2.5.9.1','','http://update.joomla.org/language/details/fi-FI_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('79','3','0','0','Portuguese Brazil','','pkg_pt-BR','package','','0','2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('80','3','0','0','Kurdish Sorani','','pkg_ckb-IQ','package','','0','2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('81','3','0','0','Croatian','','pkg_hr-HR','package','','0','2.5.9.1','','http://update.joomla.org/language/details/hr-HR_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('82','3','0','0','Tamil India','','pkg_ta-IN','package','','0','2.5.9.1','','http://update.joomla.org/language/details/ta-IN_details.xml','');
insert  into `jos_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values ('83','3','0','0','Swahili','','pkg_sw-KE','package','','0','2.5.9.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');

/*Table structure for table `jos_user_notes` */

DROP TABLE IF EXISTS `jos_user_notes`;

CREATE TABLE `jos_user_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_user_notes` */

/*Table structure for table `jos_user_profiles` */

DROP TABLE IF EXISTS `jos_user_profiles`;

CREATE TABLE `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

/*Data for the table `jos_user_profiles` */

/*Table structure for table `jos_user_usergroup_map` */

DROP TABLE IF EXISTS `jos_user_usergroup_map`;

CREATE TABLE `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jos_user_usergroup_map` */

insert  into `jos_user_usergroup_map`(`user_id`,`group_id`) values ('42','8');
insert  into `jos_user_usergroup_map`(`user_id`,`group_id`) values ('43','2');
insert  into `jos_user_usergroup_map`(`user_id`,`group_id`) values ('44','2');

/*Table structure for table `jos_usergroups` */

DROP TABLE IF EXISTS `jos_usergroups`;

CREATE TABLE `jos_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` USING BTREE (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `jos_usergroups` */

insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('1','0','1','20','Public');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('2','1','6','17','Registered');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('3','2','7','14','Author');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('4','3','8','11','Editor');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('5','4','9','10','Publisher');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('6','1','2','5','Manager');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('7','6','3','4','Administrator');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('8','1','18','19','Super Users');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('12','2','15','16','Customer Group (Example)');
insert  into `jos_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values ('10','3','12','13','Shop Suppliers (Example)');

/*Table structure for table `jos_users` */

DROP TABLE IF EXISTS `jos_users`;

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL default '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Data for the table `jos_users` */

insert  into `jos_users`(`id`,`name`,`username`,`email`,`password`,`usertype`,`block`,`sendEmail`,`registerDate`,`lastvisitDate`,`activation`,`params`,`lastResetTime`,`resetCount`) values ('42','Super User','admin','andreyalek@gmail.com','0c81a8100dd4a09b15f5cecdd6b25c9d:cJBSdhSZe0uMFyHKMKw8V0OQTchGDGJi','deprecated','0','1','2012-02-04 19:21:37','2013-02-27 19:20:06','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00','0');
insert  into `jos_users`(`id`,`name`,`username`,`email`,`password`,`usertype`,`block`,`sendEmail`,`registerDate`,`lastvisitDate`,`activation`,`params`,`lastResetTime`,`resetCount`) values ('43','Andrey','andrey','august-ru@mail.ru','e6a6a30126aa1e4de302815cc21193a0:0PaVzuGFEOTwUbFGUuw9dISRSqR2RQjE','','0','0','2012-12-20 22:52:40','2012-12-21 23:34:20','','{}','0000-00-00 00:00:00','0');
insert  into `jos_users`(`id`,`name`,`username`,`email`,`password`,`usertype`,`block`,`sendEmail`,`registerDate`,`lastvisitDate`,`activation`,`params`,`lastResetTime`,`resetCount`) values ('44','manager','manager','feiry@ukr.net','0990e5a224d4440587bb39d49fb3a05c:sTb7AdYeA6DubKNRapXgZsR99cKGb0WU','','0','0','2013-01-08 22:28:53','0000-00-00 00:00:00','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00','0');

/*Table structure for table `jos_viewlevels` */

DROP TABLE IF EXISTS `jos_viewlevels`;

CREATE TABLE `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `jos_viewlevels` */

insert  into `jos_viewlevels`(`id`,`title`,`ordering`,`rules`) values ('1','Public','0','[1]');
insert  into `jos_viewlevels`(`id`,`title`,`ordering`,`rules`) values ('2','Registered','1','[6,2,8]');
insert  into `jos_viewlevels`(`id`,`title`,`ordering`,`rules`) values ('3','Special','2','[6,3,8]');
insert  into `jos_viewlevels`(`id`,`title`,`ordering`,`rules`) values ('4','Customer Access Level (Example)','3','[6,3,12]');

/*Table structure for table `jos_weblinks` */

DROP TABLE IF EXISTS `jos_weblinks`;

CREATE TABLE `jos_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `jos_weblinks` */

insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('1','32','0','Joomla!','joomla','http://www.joomla.org','<p>Home of Joomla!</p>','0000-00-00 00:00:00','3','1','0','0000-00-00 00:00:00','1','0','1','1','{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('2','33','0','php.net','php','http://www.php.net','<p>The language that Joomla! is developed in</p>','0000-00-00 00:00:00','6','1','0','0000-00-00 00:00:00','1','0','1','1','{\"target\":\"\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('3','33','0','MySQL','mysql','http://www.mysql.com','<p>The most commonly used database for Joomla!.</p>','0000-00-00 00:00:00','1','1','0','0000-00-00 00:00:00','2','0','1','1','{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2012-01-17 16:19:43','42','','','{\"robots\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('4','32','0','OpenSourceMatters','opensourcematters','http://www.opensourcematters.org','<p>Home of OSM</p>','0000-00-00 00:00:00','11','1','0','0000-00-00 00:00:00','3','0','1','1','{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('5','32','0','Joomla! - Forums','joomla-forums','http://forum.joomla.org','<p>Joomla! Forums</p>','0000-00-00 00:00:00','4','1','0','0000-00-00 00:00:00','2','0','1','1','{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('6','33','0','Ohloh Tracking of Joomla!','ohloh-tracking-of-joomla','http://www.ohloh.net/projects/20','<p>Objective reports from Ohloh about Joomla\'s development activity. Joomla! has some star developers with serious kudos.</p>','0000-00-00 00:00:00','1','1','0','0000-00-00 00:00:00','3','0','1','1','{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('7','31','0','Baw Baw National Park','baw-baw-national-park','http://www.parkweb.vic.gov.au/1park_display.cfm?park=44','<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>','0000-00-00 00:00:00','0','1','0','0000-00-00 00:00:00','1','0','1','1','{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('8','31','0','Kakadu','kakadu','http://www.environment.gov.au/parks/kakadu/index.html','<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>','0000-00-00 00:00:00','0','1','0','0000-00-00 00:00:00','2','0','1','1','{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
insert  into `jos_weblinks`(`id`,`catid`,`sid`,`title`,`alias`,`url`,`description`,`date`,`hits`,`state`,`checked_out`,`checked_out_time`,`ordering`,`archived`,`approved`,`access`,`params`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values ('9','31','0','Pulu Keeling','pulu-keeling','http://www.environment.gov.au/parks/cocos/index.html','<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia\'s smallest national park.</p>','0000-00-00 00:00:00','0','1','0','0000-00-00 00:00:00','3','0','1','1','{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01','0','','2011-01-01 00:00:01','42','','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}','0','','2010-07-10 23:44:03','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
