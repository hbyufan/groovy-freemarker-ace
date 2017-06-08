/*
Navicat MySQL Data Transfer

Source Server         : 192.168.100.200
Source Server Version : 50552
Source Host           : 192.168.100.200:3306
Source Database       : ace_admin

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-06-09 00:25:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `depth` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `created_time` tinyblob,
  `creator` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `modified_time` tinyblob,
  `modifier` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hxcckr83u5xvakeq20h383m64` (`parent_id`),
  CONSTRAINT `FK_hxcckr83u5xvakeq20h383m64` FOREIGN KEY (`parent_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'ALL', '0', 'ALL', 'ALL', '1,', '0', '', '1', null, '1', null, null, '0', null, null, '0', null);
INSERT INTO `permission` VALUES ('10', 'report', '1', '客户信息报表', '报表管理', '10,', '0', null, '1', null, '0', null, null, '0', null, null, '60', 'fa-file-photo-o');
INSERT INTO `permission` VALUES ('11', 'data', '1', '数据管理', '数据管理', '11,', '0', null, '1', null, '0', null, null, '0', null, null, '80', 'fa-save');
INSERT INTO `permission` VALUES ('12', 'data-import', '2', '客户数据导入', '客户导入', '11,12,', '0', null, '1', '11', '0', null, null, '0', null, null, '80', null);
INSERT INTO `permission` VALUES ('13', 'report_performance', '2', '业绩报表', '业绩报表', '10,13,', '0', null, '1', '10', '0', null, null, '0', null, null, '20', null);
INSERT INTO `permission` VALUES ('14', 'report_new_pol', '2', '客户新单加保', '新单加保', '10,14', '0', null, '1', '10', '0', null, null, '0', null, null, '30', null);
INSERT INTO `permission` VALUES ('15', 'customer_360', '2', '360度客户视图', '360°视图', '8,15,', '0', 'customer/profile.html', '1', '8', '0', null, null, '0', null, null, '0', null);
INSERT INTO `permission` VALUES ('16', 'customer_groups', '2', '客户分群', '客户分群', '8,16,', '0', null, '1', '8', '0', null, null, '0', null, null, '100', null);
INSERT INTO `permission` VALUES ('2', 'dashboard', '1', '概览', '概览', '2,', '0', 'index.html', '0', null, '0', null, null, '0', null, null, '30', 'fa-tachometer');
INSERT INTO `permission` VALUES ('3', 'system', '1', '系统设置', '系统设置', '3,', '0', null, '0', null, '0', null, null, '0', null, null, '200', 'fa-cogs');
INSERT INTO `permission` VALUES ('4', 'menu', '2', '菜单管理', '菜单管理', '3,4,', '0', 'system/menu.html', '1', '3', '0', null, null, '0', null, null, '30', 'glyphicon-list');
INSERT INTO `permission` VALUES ('5', 'customer_analysis', '1', '客户分析', '客户分析', '5,', '0', null, '1', null, '0', null, null, '1', null, null, '40', 'fa-users');
INSERT INTO `permission` VALUES ('6', 'customer_behavior', '2', '客户行为分析', '客户行为', '10,6,', '0', null, '1', '10', '0', null, null, '0', null, null, '30', null);
INSERT INTO `permission` VALUES ('7', 'customer_composition', '2', '客户构成分析', '客户构成', '10,7,', '0', 'report/composition.html', '1', '10', '0', null, null, '0', null, null, '40', null);
INSERT INTO `permission` VALUES ('8', 'customer_information', '1', '客户信息查询', '客户信息', '8,', '0', null, '1', null, '0', null, null, '0', null, null, '50', 'fa-user');
INSERT INTO `permission` VALUES ('9', 'customer_tags', '2', '客户分群标签管理', '标签管理', '8,9,', '0', null, '1', '8', '0', null, null, '0', null, null, '0', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `created_time` tinyblob,
  `creator` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `modified_time` tinyblob,
  `modifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROOT', 'ROOT', 'ROOT', '0', '0', null, null, '0', null, null);

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions` (
  `role_id` varchar(255) NOT NULL,
  `permission_id` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  UNIQUE KEY `UK_qfkbccnh2c5o4tc7akq5x11wv` (`permission_id`),
  CONSTRAINT `FK_d4atqq8ege1sij0316vh2mxfu` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_qfkbccnh2c5o4tc7akq5x11wv` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
INSERT INTO `role_permissions` VALUES ('1', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `created_time` tinyblob,
  `creator` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `modified_time` tinyblob,
  `modifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'rocky', '123.com', 'Rocky', '0', '0', null, null, '0', null, null);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  UNIQUE KEY `UK_5q4rc4fh1on6567qk69uesvyf` (`role_id`),
  CONSTRAINT `FK_5q4rc4fh1on6567qk69uesvyf` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_g1uebn6mqk9qiaw45vnacmyo2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('1', '1');
