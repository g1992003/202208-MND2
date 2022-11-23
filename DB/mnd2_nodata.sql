/*
Navicat MySQL Data Transfer

Source Server         : mnd2
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mnd2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-11-23 10:20:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_title` longtext DEFAULT NULL,
  `a_text` longtext DEFAULT NULL,
  `a_status` int(11) DEFAULT NULL,
  `a_order` int(11) DEFAULT NULL,
  `a_page` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_title` varchar(255) DEFAULT NULL,
  `d_text` longtext DEFAULT NULL,
  `d_status` int(11) DEFAULT NULL,
  `d_order` int(11) DEFAULT NULL,
  `dc_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_text` longtext DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for d_class
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class` (
  `dc_id` int(11) NOT NULL AUTO_INCREMENT,
  `dc_title` varchar(255) DEFAULT NULL,
  `dc_account` varchar(255) DEFAULT NULL,
  `dc_password` varchar(255) DEFAULT NULL,
  `dc_name` varchar(255) DEFAULT NULL,
  `dc_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`dc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_title` longtext DEFAULT NULL,
  `i_img` varchar(255) DEFAULT NULL,
  `i_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_title` longtext DEFAULT NULL,
  `l_page` int(11) DEFAULT NULL,
  `l_type` int(11) DEFAULT NULL,
  `l_url` longtext DEFAULT NULL,
  `l_text` longtext DEFAULT NULL,
  `l_status` int(11) DEFAULT NULL,
  `l_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `m_id` varchar(6) NOT NULL,
  `m_type` varchar(10) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `m_url` varchar(255) DEFAULT NULL,
  `m_icon_sidebar` varchar(255) DEFAULT NULL,
  `m_icon_index` varchar(255) DEFAULT NULL,
  `m_main_purview` varchar(10) DEFAULT NULL,
  `m_sub_purview` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_date` date DEFAULT NULL,
  `n_title` longtext DEFAULT NULL,
  `n_unit` varchar(255) DEFAULT NULL,
  `n_name` varchar(255) DEFAULT NULL,
  `n_file` varchar(255) DEFAULT NULL,
  `n_text` longtext DEFAULT NULL,
  `n_status` int(11) DEFAULT NULL,
  `n_page` int(11) DEFAULT NULL,
  `dc_id` int(11) DEFAULT NULL,
  `n_order` int(11) DEFAULT NULL,
  `n_tag` varchar(255) DEFAULT NULL,
  `n_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_date` datetime DEFAULT NULL,
  `r_text` varchar(255) DEFAULT NULL,
  `r_account` varchar(255) DEFAULT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2654 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_account` varchar(255) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `u_main_purview` varchar(10) DEFAULT NULL,
  `u_sub_purview` varchar(10) DEFAULT NULL,
  `u_check` varchar(10) DEFAULT NULL,
  `u_error` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
