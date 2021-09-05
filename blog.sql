/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2021-06-25 09:55:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_table
-- ----------------------------
DROP TABLE IF EXISTS `about_table`;
CREATE TABLE `about_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `pic_src` varchar(300) NOT NULL,
  `href` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_table
-- ----------------------------
INSERT INTO `about_table` VALUES ('1', 'About Us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.', 'web/images/pic1.jpg', 'single-page.html');

-- ----------------------------
-- Table structure for banner_table
-- ----------------------------
DROP TABLE IF EXISTS `banner_table`;
CREATE TABLE `banner_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `href` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner_table
-- ----------------------------
INSERT INTO `banner_table` VALUES ('1', 'education portal', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'single-page.html');
INSERT INTO `banner_table` VALUES ('2', 'online educations', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'single-page.html');
INSERT INTO `banner_table` VALUES ('3', 'education portal', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'single-page.html');
INSERT INTO `banner_table` VALUES ('4', 'online educations', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'single-page.html');

-- ----------------------------
-- Table structure for blog_table
-- ----------------------------
DROP TABLE IF EXISTS `blog_table`;
CREATE TABLE `blog_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pic_src` varchar(300) NOT NULL,
  `pic_big_src` varchar(300) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(32) NOT NULL,
  `n_view` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_table
-- ----------------------------
INSERT INTO `blog_table` VALUES ('1', 'Lorem Ipsum is simply dummy text of the printingy', 'web/images/blog_pic1.jpg', 'web/images/det_pic.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.', '2013-06-03 10:41:01', 'Admin', '124');
INSERT INTO `blog_table` VALUES ('2', 'A Long Established Fact That A Reader Will Be Distracted', 'web/images/blog_pic2.jpg', 'web/images/det_pic.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.', '2013-06-03 10:42:23', 'Admin', '124');

-- ----------------------------
-- Table structure for contact_table
-- ----------------------------
DROP TABLE IF EXISTS `contact_table`;
CREATE TABLE `contact_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `weibo` varchar(40) NOT NULL,
  `wechat` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_table
-- ----------------------------
INSERT INTO `contact_table` VALUES ('1', '500 Lorem Ipsum Dolor Sit,\r\n\r\n22-56-2-9 Sit Amet, Lorem,\r\n\r\nUSA', '(00) 222 666 444', ' (000) 000 00 00 0', 'info(at)mycompany.com', 'myfamily,mypride', 'zyt_1219');

-- ----------------------------
-- Table structure for intro_table
-- ----------------------------
DROP TABLE IF EXISTS `intro_table`;
CREATE TABLE `intro_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(200) NOT NULL,
  `href` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intro_table
-- ----------------------------
INSERT INTO `intro_table` VALUES ('1', 'Sed Porta Dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text 1500s.', 'single-page.html');
INSERT INTO `intro_table` VALUES ('2', 'Lorem Ipsum is', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'single-page.html');
INSERT INTO `intro_table` VALUES ('3', 'Sed Porta Dolor', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32  by H. Rackham.', 'single-page.html');
INSERT INTO `intro_table` VALUES ('4', 'Contrary  belief', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.', 'single-page.html');

-- ----------------------------
-- Table structure for msg_table
-- ----------------------------
DROP TABLE IF EXISTS `msg_table`;
CREATE TABLE `msg_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_table
-- ----------------------------
INSERT INTO `msg_table` VALUES ('1', 'Betty', '1477907933@qq.com', '13000000000', '');

-- ----------------------------
-- Table structure for pingjia_table
-- ----------------------------
DROP TABLE IF EXISTS `pingjia_table`;
CREATE TABLE `pingjia_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(200) NOT NULL,
  `src` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pingjia_table
-- ----------------------------
INSERT INTO `pingjia_table` VALUES ('1', 'vehicula diam', 'Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.', 'web/images/c1.jpg');
INSERT INTO `pingjia_table` VALUES ('2', 'Morbi nunc', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,', 'web/images/c2.jpg');
INSERT INTO `pingjia_table` VALUES ('3', 'Lorem ipsum', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled  pleasure of the moment,', 'web/images/c3.jpg');
INSERT INTO `pingjia_table` VALUES ('4', 'Sed faucibus', 'Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.', 'web/images/c4.jpg');
INSERT INTO `pingjia_table` VALUES ('5', 'Morbi nunc', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,', 'web/images/c2.jpg');
INSERT INTO `pingjia_table` VALUES ('6', 'Lorem ipsum', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled  pleasure of the moment,', 'web/images/c3.jpg');
INSERT INTO `pingjia_table` VALUES ('7', 'Sed faucibus', 'Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.', 'web/images/c4.jpg');
INSERT INTO `pingjia_table` VALUES ('8', 'vehicula diam', 'Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.', 'web/images/c1.jpg');
INSERT INTO `pingjia_table` VALUES ('9', 'Morbi nunc', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,', 'web/images/c2.jpg');
INSERT INTO `pingjia_table` VALUES ('10', 'Lorem ipsum', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled  pleasure of the moment,', 'web/images/c3.jpg');
INSERT INTO `pingjia_table` VALUES ('11', 'vehicula diam', 'Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.', 'web/images/c1.jpg');
INSERT INTO `pingjia_table` VALUES ('12', 'Sed faucibus', 'Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.', 'web/images/c4.jpg');

-- ----------------------------
-- Table structure for tech_table
-- ----------------------------
DROP TABLE IF EXISTS `tech_table`;
CREATE TABLE `tech_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `ico_src` varchar(300) NOT NULL,
  `big_pic_src` varchar(300) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tech_table
-- ----------------------------
INSERT INTO `tech_table` VALUES ('1', ' There Are Many Variations Of Passages Of Lorem Ipsum Available?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'fa fa-files-o', 'web/images/det_pic.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.');
INSERT INTO `tech_table` VALUES ('2', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'fa fa-laptop', 'web/images/det_pic.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.');
INSERT INTO `tech_table` VALUES ('3', 'Sed Ut Perspiciatis Unde Omnis Iste Natus Error Sit Voluptatem Accusantium?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'fa fa-cog', 'web/images/det_pic.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.');
INSERT INTO `tech_table` VALUES ('4', ' There Are Many Variations Of Passages Of Lorem Ipsum Available?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'fa fa-files-o', 'web/images/det_pic.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.');
