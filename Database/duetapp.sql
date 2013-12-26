/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : duetapp

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-12-26 19:03:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `da_client`
-- ----------------------------
DROP TABLE IF EXISTS `da_client`;
CREATE TABLE `da_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `updateDate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_client
-- ----------------------------

-- ----------------------------
-- Table structure for `da_file`
-- ----------------------------
DROP TABLE IF EXISTS `da_file`;
CREATE TABLE `da_file` (
  `int` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `updateDate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_file
-- ----------------------------

-- ----------------------------
-- Table structure for `da_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `da_invoice`;
CREATE TABLE `da_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `item` varchar(250) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `subTotal` int(11) DEFAULT NULL,
  `invoiceStatus` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for `da_project`
-- ----------------------------
DROP TABLE IF EXISTS `da_project`;
CREATE TABLE `da_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `note` text,
  `createDate` bigint(20) DEFAULT NULL,
  `updateDate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_project
-- ----------------------------

-- ----------------------------
-- Table structure for `da_task`
-- ----------------------------
DROP TABLE IF EXISTS `da_task`;
CREATE TABLE `da_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `note` text,
  `assignTo` int(11) DEFAULT NULL,
  `dueDate` int(11) DEFAULT NULL,
  `weight` int(4) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `updateDate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_task
-- ----------------------------

-- ----------------------------
-- Table structure for `da_user`
-- ----------------------------
DROP TABLE IF EXISTS `da_user`;
CREATE TABLE `da_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) DEFAULT NULL,
  `userName` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `userType` int(4) DEFAULT NULL,
  `isActive` int(1) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `updateDate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_user
-- ----------------------------
