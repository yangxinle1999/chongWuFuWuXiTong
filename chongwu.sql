/*
Navicat MySQL Data Transfer

Source Server         : ssm
Source Server Version : 50540
Source Host           : localhost:3366
Source Database       : chongwu

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-03-06 17:27:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jiaoliu
-- ----------------------------
DROP TABLE IF EXISTS `jiaoliu`;
CREATE TABLE `jiaoliu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaoliu
-- ----------------------------
INSERT INTO `jiaoliu` VALUES ('1', 'yang', 'jiayouya', '2020-03-06 15:04:13');

-- ----------------------------
-- Table structure for money
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `fuwuleixing` varchar(255) DEFAULT NULL,
  `jiaoyijine` int(10) DEFAULT NULL,
  `yue` int(10) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `suogouchongwu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of money
-- ----------------------------
INSERT INTO `money` VALUES ('1', '杨新乐', null, null, '10000', '2020-03-06 16:01:37', null);
INSERT INTO `money` VALUES ('2', '杨新乐', null, '123', '9877', '2020-03-06 16:01:38', '猫');
INSERT INTO `money` VALUES ('3', '杨新乐', '普通洗浴(50)', '50', '9827', '2020-03-06 16:04:18', null);
INSERT INTO `money` VALUES ('4', '杨新乐', '马尔济斯 辫子&喇叭裤剪法(150)', '150', '9677', '2020-03-06 16:04:29', null);

-- ----------------------------
-- Table structure for petjiyang
-- ----------------------------
DROP TABLE IF EXISTS `petjiyang`;
CREATE TABLE `petjiyang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `petCateGory` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `petTrick` varchar(255) DEFAULT NULL,
  `petTime` varchar(255) DEFAULT NULL,
  `jiYangRenMing` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of petjiyang
-- ----------------------------
INSERT INTO `petjiyang` VALUES ('1', '小狗', '哈哈', '不爱吃肉爱喝水', '7', '杨新乐', '12345678');

-- ----------------------------
-- Table structure for petshouyang
-- ----------------------------
DROP TABLE IF EXISTS `petshouyang`;
CREATE TABLE `petshouyang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shouYangRenMing` varchar(255) DEFAULT NULL,
  `petCateGory` varchar(255) DEFAULT NULL,
  `petName` varchar(255) DEFAULT NULL,
  `petTrick` varchar(255) DEFAULT NULL,
  `petTime` varchar(255) DEFAULT NULL,
  `jiYangRenMing` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of petshouyang
-- ----------------------------
INSERT INTO `petshouyang` VALUES ('1', '杨新乐', '小狗', '哈哈', '不爱吃肉爱喝水', '7', '杨新乐', '12345678');

-- ----------------------------
-- Table structure for shoumaixinxi
-- ----------------------------
DROP TABLE IF EXISTS `shoumaixinxi`;
CREATE TABLE `shoumaixinxi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `chongWuAge` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `chongWuLeiBie` varchar(255) DEFAULT NULL,
  `dianjiliang` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoumaixinxi
-- ----------------------------
INSERT INTO `shoumaixinxi` VALUES ('3', '杨新乐', '10', '保定', '123', '1234567', 'http://localhost:8088/chongwuImage/e59546f396ff4575a77489759c8a5eda8.jpg', '猫', '3');

-- ----------------------------
-- Table structure for userdetail
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `pimage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('2', '111', 'yang', '123456', '1', '11', '11', 'http://localhost:8088/chongwuImage/48adcfc9570743b8bd8f8a34b77ae7534.jpg');
INSERT INTO `userdetail` VALUES ('3', '201722450739', '杨新乐', '123456', '男', '21', '大三', 'http://localhost:8088/chongwuImage/16ac702ca5c84677bb250fb43e399ce92.jpg');

-- ----------------------------
-- Table structure for wenjian
-- ----------------------------
DROP TABLE IF EXISTS `wenjian`;
CREATE TABLE `wenjian` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `wenjian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjian
-- ----------------------------
INSERT INTO `wenjian` VALUES ('4', '杨新乐', '0c5416e2773a41bba8a25df8d408ad291.txt');
INSERT INTO `wenjian` VALUES ('5', '杨新乐', '8d77a13b5cb54cf899eea98045bf125c2.txt');

-- ----------------------------
-- Table structure for xuyuanqiang
-- ----------------------------
DROP TABLE IF EXISTS `xuyuanqiang`;
CREATE TABLE `xuyuanqiang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuyuanqiang
-- ----------------------------
INSERT INTO `xuyuanqiang` VALUES ('2', 'yang', 'ssssss', 'qqq');
