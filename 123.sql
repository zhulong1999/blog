/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.26 : Database - bk.web.com
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bk.web.com` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bk.web.com`;

/*Table structure for table `bk_article` */

DROP TABLE IF EXISTS `bk_article`;

CREATE TABLE `bk_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '文章标题',
  `type` int(11) DEFAULT NULL COMMENT '文章分类',
  `keywords` varchar(200) DEFAULT NULL COMMENT '文章关键词',
  `description` varchar(500) DEFAULT NULL COMMENT '文章描述',
  `picture` varchar(100) DEFAULT NULL COMMENT '文章首图',
  `content` text COMMENT '文章内容',
  `num` int(11) DEFAULT NULL COMMENT '文章点击数',
  `time` int(11) DEFAULT NULL COMMENT '文章写入时间',
  `pubname` varchar(20) DEFAULT NULL COMMENT '写入人',
  `pubid` int(11) DEFAULT NULL COMMENT '写入人id',
  `isdelete` int(11) DEFAULT '1' COMMENT '-1冻结0删除1正常',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `bk_article` */

insert  into `bk_article`(`aid`,`title`,`type`,`keywords`,`description`,`picture`,`content`,`num`,`time`,`pubname`,`pubid`,`isdelete`) values (1,'今天天气好',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,'上线',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(3,'伤心',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);

/*Table structure for table `bk_banner_link` */

DROP TABLE IF EXISTS `bk_banner_link`;

CREATE TABLE `bk_banner_link` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT '1' COMMENT '1banner 2link',
  `picture` varchar(200) DEFAULT NULL COMMENT 'banner',
  `link` varchar(100) DEFAULT NULL COMMENT 'link',
  `pubname` varchar(20) DEFAULT NULL,
  `pubid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='banner or link';

/*Data for the table `bk_banner_link` */

/*Table structure for table `bk_site` */

DROP TABLE IF EXISTS `bk_site`;

CREATE TABLE `bk_site` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '站点标题',
  `keywords` varchar(100) DEFAULT NULL COMMENT '站点关键词',
  `description` varchar(200) DEFAULT NULL COMMENT '站点描述',
  `logo` varchar(100) DEFAULT NULL COMMENT 'logo',
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wx` varchar(20) DEFAULT NULL,
  `record` varchar(50) DEFAULT NULL COMMENT '备案',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `bk_site` */

/*Table structure for table `bk_type` */

DROP TABLE IF EXISTS `bk_type`;

CREATE TABLE `bk_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '分类',
  `sortd` int(11) DEFAULT '1' COMMENT '排序',
  `time` int(11) DEFAULT NULL COMMENT '时间',
  `pubname` varchar(50) DEFAULT NULL COMMENT '写入人',
  `pubid` int(11) DEFAULT NULL COMMENT '写入人id',
  `isdelete` int(11) DEFAULT '1' COMMENT '-1冻结0删除1正常',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `bk_type` */

insert  into `bk_type`(`tid`,`title`,`sortd`,`time`,`pubname`,`pubid`,`isdelete`) values (1,'个人日记',1,NULL,'admin',1000,1),(2,'编程心得',1,NULL,NULL,NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
