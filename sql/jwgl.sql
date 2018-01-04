/*
 Navicat Premium Data Transfer

 Source Server         : 104.199.183.146_3306
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : 104.199.183.146:3306
 Source Schema         : jwgl

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 04/01/2018 19:35:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cour_id` int(10) NOT NULL AUTO_INCREMENT,
  `cour_name` varchar(20) NOT NULL,
  PRIMARY KEY (`cour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES (1, '语文');
INSERT INTO `course` VALUES (2, '数学');
INSERT INTO `course` VALUES (3, '英语');
INSERT INTO `course` VALUES (4, '物理');
COMMIT;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grd_id` int(10) NOT NULL AUTO_INCREMENT,
  `grd_stu_id` int(10) NOT NULL,
  `grd_cour_id` int(10) NOT NULL,
  `grades` int(3) NOT NULL,
  PRIMARY KEY (`grd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
BEGIN;
INSERT INTO `grade` VALUES (1, 1508030201, 1, 91);
INSERT INTO `grade` VALUES (2, 1508030202, 2, 85);
INSERT INTO `grade` VALUES (3, 1508030203, 3, 60);
INSERT INTO `grade` VALUES (4, 1508030204, 4, 65);
INSERT INTO `grade` VALUES (5, 1508030201, 2, 70);
INSERT INTO `grade` VALUES (6, 1508030201, 3, 99);
INSERT INTO `grade` VALUES (8, 1508030202, 1, 77);
INSERT INTO `grade` VALUES (9, 1508030203, 1, 79);
INSERT INTO `grade` VALUES (10, 1508030204, 1, 89);
INSERT INTO `grade` VALUES (11, 1508030201, 4, 100);
INSERT INTO `grade` VALUES (12, 123, 1, 111);
INSERT INTO `grade` VALUES (13, 123, 1, 11);
COMMIT;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `stu_id` int(10) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(20) NOT NULL,
  `stu_sex` varchar(2) NOT NULL,
  `stu_class` varchar(10) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1508030209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
BEGIN;
INSERT INTO `students` VALUES (123, '姜志鹏', '男', '软件一班', '321');
INSERT INTO `students` VALUES (1508030201, '小红', '女', '软件一班', '123');
INSERT INTO `students` VALUES (1508030202, '小花', '女', '软件二班', '123');
INSERT INTO `students` VALUES (1508030203, '小明', '女', '软件三班', '123');
INSERT INTO `students` VALUES (1508030204, '小志', '男', '软件四班', '123');
INSERT INTO `students` VALUES (1508030205, '小美', '女', '软件二班', '123');
INSERT INTO `students` VALUES (1508030206, '小聪', '男', '软件三班', '123');
INSERT INTO `students` VALUES (1508030208, '临潼', '男', '软件一班', '123');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'jzp', '123');
INSERT INTO `users` VALUES (2, '1', '123');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
