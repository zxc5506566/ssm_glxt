/*
SQLyog Ultimate v8.32 
MySQL - 5.1.71-community : Database - sh2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sh2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sh2`;

/*Table structure for table `monster` */

DROP TABLE IF EXISTS `monster`;

CREATE TABLE `monster` (
  `MONSTER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MONSTERNAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `ENTRYDAY` date DEFAULT NULL,
  `SCHOOL_FK` int(11) DEFAULT NULL,
  PRIMARY KEY (`MONSTER_ID`),
  KEY `FK_nx1rx4x2sw2tp9tw16ym5ho35` (`SCHOOL_FK`),
  CONSTRAINT `FK_nx1rx4x2sw2tp9tw16ym5ho35` FOREIGN KEY (`SCHOOL_FK`) REFERENCES `school` (`SCHOOL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `monster` */

insert  into `monster`(`MONSTER_ID`,`MONSTERNAME`,`EMAIL`,`BIRTHDAY`,`ENTRYDAY`,`SCHOOL_FK`) values (1,'牛肉馍','niu@sohu.com','2010-11-18','2015-12-12',2),(2,'wang333','xz@sohu.com','2008-11-23','2012-12-12',1),(10,'小飞','22222@163.com','2019-04-03','2019-04-05',3),(17,'雷神','22222@163.com','1998-12-04','1999-09-06',2),(18,'巫女','22222@163.com','1998-12-06','1999-09-06',3);

/*Table structure for table `school` */

DROP TABLE IF EXISTS `school`;

CREATE TABLE `school` (
  `SCHOOL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SCHOOL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `school` */

insert  into `school`(`SCHOOL_ID`,`NAME`,`ADDRESS`) values (1,'全真派','天上的'),(2,'古墓派','地下的'),(3,'桃花岛派','人间的');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`USER_ID`,`USERNAME`,`PASSWORD`) values (1,'wangsan','123456'),(5,'zhangwuji','123456'),(6,'zhangxuelian','456789'),(7,'student','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
