/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.5.53 : Database - jwgl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jwgl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jwgl`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cour_id` int(10) NOT NULL AUTO_INCREMENT,
  `cour_name` varchar(20) NOT NULL,
  PRIMARY KEY (`cour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`cour_id`,`cour_name`) values (1,'语文'),(2,'数学'),(3,'英语'),(4,'物理');

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `grd_id` int(10) NOT NULL AUTO_INCREMENT,
  `grd_stu_id` int(10) NOT NULL,
  `grd_cour_id` int(10) NOT NULL,
  `grades` int(3) NOT NULL,
  PRIMARY KEY (`grd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

insert  into `grade`(`grd_id`,`grd_stu_id`,`grd_cour_id`,`grades`) values (1,1508030201,1,91),(2,1508030202,2,85),(3,1508030203,3,60),(4,1508030204,4,65),(5,1508030201,2,70),(6,1508030201,3,99),(8,1508030202,1,77),(9,1508030203,1,79),(10,1508030204,1,89);

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `stu_id` int(10) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(20) NOT NULL,
  `stu_sex` varchar(2) NOT NULL,
  `stu_class` varchar(10) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1508030207 DEFAULT CHARSET=utf8;

/*Data for the table `students` */

insert  into `students`(`stu_id`,`stu_name`,`stu_sex`,`stu_class`) values (1508030201,'小红','女','软件一班'),(1508030202,'小花','女','软件二班'),(1508030203,'小明','女','软件三班'),(1508030204,'小志','男','软件四班'),(1508030205,'小美','女','软件二班'),(1508030206,'小聪','男','软件三班');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`user_name`,`password`) values (1,'张三','123456'),(2,'1','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
