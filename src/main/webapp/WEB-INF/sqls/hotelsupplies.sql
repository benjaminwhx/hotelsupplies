/*
 Navicat Premium Data Transfer

 Source Server         : local_conn
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : localhost
 Source Database       : hotelsupplies

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : utf-8

 Date: 06/15/2016 11:58:05 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `advice`
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `advice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `collections`
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `collection_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `shortdescription` varchar(255) NOT NULL,
  `fulldescription` text NOT NULL,
  `originprice` double DEFAULT NULL,
  `presentprice` double NOT NULL,
  `factoryprice` double NOT NULL,
  `placeoforigin` varchar(32) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '999',
  `imagepath` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `productcount`
-- ----------------------------
DROP TABLE IF EXISTS `productcount`;
CREATE TABLE `productcount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_count` int(11) NOT NULL DEFAULT '0',
  `favourite_count` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `gender` int(11) NOT NULL,
  `truename` varchar(64) DEFAULT NULL,
  `qq` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
