/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50546
Source Host           : 127.0.0.1:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2009-08-21 16:42:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('2', 'admin', '123');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('11', '文化用品');
INSERT INTO `category` VALUES ('13', '文学馆');
INSERT INTO `category` VALUES ('14', '童趣馆');
INSERT INTO `category` VALUES ('15', '教育馆');
INSERT INTO `category` VALUES ('16', '人文生活馆');
INSERT INTO `category` VALUES ('18', '经管馆');
INSERT INTO `category` VALUES ('19', '科技馆');
INSERT INTO `category` VALUES ('20', '艺术馆');
INSERT INTO `category` VALUES ('21', '杂志周刊馆');

-- ----------------------------
-- Table structure for categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF21DB1FD15` (`cid`),
  CONSTRAINT `FK936FCAF21DB1FD15` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('78', '动漫', '13');
INSERT INTO `categorysecond` VALUES ('79', '传记', '13');
INSERT INTO `categorysecond` VALUES ('80', '青春', '13');
INSERT INTO `categorysecond` VALUES ('81', '文学', '13');
INSERT INTO `categorysecond` VALUES ('82', '小说', '13');
INSERT INTO `categorysecond` VALUES ('83', '画具画材', '11');
INSERT INTO `categorysecond` VALUES ('84', '文体棋牌', '11');
INSERT INTO `categorysecond` VALUES ('85', '教育用具', '11');
INSERT INTO `categorysecond` VALUES ('86', '文房四宝', '11');
INSERT INTO `categorysecond` VALUES ('87', '启蒙', '14');
INSERT INTO `categorysecond` VALUES ('88', '科普', '14');
INSERT INTO `categorysecond` VALUES ('89', '儿童漫画', '14');
INSERT INTO `categorysecond` VALUES ('91', '中小学教辅', '15');
INSERT INTO `categorysecond` VALUES ('92', '大中专教材', '15');
INSERT INTO `categorysecond` VALUES ('93', '考试', '15');
INSERT INTO `categorysecond` VALUES ('94', '外语', '15');
INSERT INTO `categorysecond` VALUES ('95', '词典', '15');
INSERT INTO `categorysecond` VALUES ('96', '历史', '16');
INSERT INTO `categorysecond` VALUES ('97', '心理', '16');
INSERT INTO `categorysecond` VALUES ('98', '国学', '16');
INSERT INTO `categorysecond` VALUES ('99', '文化宗教', '16');
INSERT INTO `categorysecond` VALUES ('100', '政治法律', '16');
INSERT INTO `categorysecond` VALUES ('101', '运动保健', '16');
INSERT INTO `categorysecond` VALUES ('102', '家庭家居', '16');
INSERT INTO `categorysecond` VALUES ('103', '地图旅游', '16');
INSERT INTO `categorysecond` VALUES ('104', '经济金融', '18');
INSERT INTO `categorysecond` VALUES ('105', '投资理财', '18');
INSERT INTO `categorysecond` VALUES ('106', '电子商务', '18');
INSERT INTO `categorysecond` VALUES ('107', '工业', '19');
INSERT INTO `categorysecond` VALUES ('108', '建筑', '19');
INSERT INTO `categorysecond` VALUES ('109', '医疗', '19');
INSERT INTO `categorysecond` VALUES ('110', '电子', '19');
INSERT INTO `categorysecond` VALUES ('111', '自然农业科学', '19');
INSERT INTO `categorysecond` VALUES ('112', '计算机', '19');
INSERT INTO `categorysecond` VALUES ('113', '绘画', '20');
INSERT INTO `categorysecond` VALUES ('114', '摄影', '20');
INSERT INTO `categorysecond` VALUES ('115', '书法', '20');
INSERT INTO `categorysecond` VALUES ('116', '设计', '20');
INSERT INTO `categorysecond` VALUES ('117', '音乐', '20');
INSERT INTO `categorysecond` VALUES ('118', '时尚美妆', '21');
INSERT INTO `categorysecond` VALUES ('119', '文学文摘', '21');
INSERT INTO `categorysecond` VALUES ('120', '地理旅游', '21');
INSERT INTO `categorysecond` VALUES ('121', '艺术摄影', '21');
INSERT INTO `categorysecond` VALUES ('122', '日常与八卦', '21');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FKE8B2AB6166C01961` (`oid`),
  KEY `FKE8B2AB6171DB7AE4` (`pid`),
  KEY `FKE8B2AB6140ACF87A` (`oid`),
  CONSTRAINT `FKE8B2AB6140ACF87A` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`),
  CONSTRAINT `FKE8B2AB6171DB7AE4` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('2', '1', '198', '73', '2000');
INSERT INTO `orderitem` VALUES ('3', '1', '172', '2', '2000');
INSERT INTO `orderitem` VALUES ('4', '1', '358', '51', '3000');
INSERT INTO `orderitem` VALUES ('5', '1', '590', '7', '4000');
INSERT INTO `orderitem` VALUES ('6', '1', '172', '2', '5000');
INSERT INTO `orderitem` VALUES ('7', '1', '228', '1', '5000');
INSERT INTO `orderitem` VALUES ('8', '1', '119', '5', '5000');
INSERT INTO `orderitem` VALUES ('9', '1', '125', '75', '6000');
INSERT INTO `orderitem` VALUES ('10', '1', '83', '72', '7000');
INSERT INTO `orderitem` VALUES ('11', '1', '358', '51', '8000');
INSERT INTO `orderitem` VALUES ('12', '1', '83', '68', '9000');
INSERT INTO `orderitem` VALUES ('13', '1', '83', '66', '9001');
INSERT INTO `orderitem` VALUES ('14', '1', '172', '2', '9001');
INSERT INTO `orderitem` VALUES ('15', '1', '228', '1', '9002');
INSERT INTO `orderitem` VALUES ('16', '1', '5099', '79', '9003');
INSERT INTO `orderitem` VALUES ('17', '1', '172', '2', '9004');
INSERT INTO `orderitem` VALUES ('18', '1', '80', '2', '9005');
INSERT INTO `orderitem` VALUES ('19', '1', '80', '2', '9006');
INSERT INTO `orderitem` VALUES ('20', '1', '119', '3', '9007');
INSERT INTO `orderitem` VALUES ('21', '1', '80', '2', '9008');
INSERT INTO `orderitem` VALUES ('22', '2', '160', '2', '9009');
INSERT INTO `orderitem` VALUES ('23', '1', '119', '4', '9010');
INSERT INTO `orderitem` VALUES ('24', '1', '80', '2', '9011');
INSERT INTO `orderitem` VALUES ('25', '1', '80', '2', '9013');
INSERT INTO `orderitem` VALUES ('26', '1', '80', '2', '9015');
INSERT INTO `orderitem` VALUES ('27', '1', '90', '8', '9016');
INSERT INTO `orderitem` VALUES ('28', '1', '59', '7', '9017');
INSERT INTO `orderitem` VALUES ('29', '1', '119', '3', '9018');
INSERT INTO `orderitem` VALUES ('30', '1', '119', '3', '9019');
INSERT INTO `orderitem` VALUES ('31', '1', '80', '2', '9020');
INSERT INTO `orderitem` VALUES ('32', '1', '119', '4', '9021');
INSERT INTO `orderitem` VALUES ('33', '1', '119', '3', '9022');
INSERT INTO `orderitem` VALUES ('34', '1', '119', '6', '9023');
INSERT INTO `orderitem` VALUES ('35', '1', '59', '7', '9024');
INSERT INTO `orderitem` VALUES ('36', '1', '59', '7', '9026');
INSERT INTO `orderitem` VALUES ('37', '1', '108', '9', '9027');
INSERT INTO `orderitem` VALUES ('38', '1', '119', '6', '9029');
INSERT INTO `orderitem` VALUES ('39', '1', '80', '2', '9030');
INSERT INTO `orderitem` VALUES ('40', '1', '119', '6', '9031');
INSERT INTO `orderitem` VALUES ('41', '1', '119', '6', '9032');
INSERT INTO `orderitem` VALUES ('42', '1', '119', '6', '9033');
INSERT INTO `orderitem` VALUES ('43', '1', '80', '2', '9034');
INSERT INTO `orderitem` VALUES ('44', '1', '90', '8', '9035');
INSERT INTO `orderitem` VALUES ('45', '1', '119', '3', '9036');
INSERT INTO `orderitem` VALUES ('46', '1', '119', '3', '9037');
INSERT INTO `orderitem` VALUES ('47', '1', '999', '76', '9038');
INSERT INTO `orderitem` VALUES ('48', '1', '34', '89', '9039');
INSERT INTO `orderitem` VALUES ('49', '1', '127', '18', '9040');
INSERT INTO `orderitem` VALUES ('50', '1', '120', '51', '9041');
INSERT INTO `orderitem` VALUES ('51', '1', '120', '51', '9042');
INSERT INTO `orderitem` VALUES ('52', '1', '11', '14', '9042');
INSERT INTO `orderitem` VALUES ('53', '1', '120', '51', '9043');
INSERT INTO `orderitem` VALUES ('54', '1', '120', '51', '9044');
INSERT INTO `orderitem` VALUES ('55', '1', '25', '11', '9045');
INSERT INTO `orderitem` VALUES ('56', '1', '111', '16', '9046');
INSERT INTO `orderitem` VALUES ('57', '1', '35', '21', '9046');
INSERT INTO `orderitem` VALUES ('58', '1', '111', '16', '9047');
INSERT INTO `orderitem` VALUES ('59', '1', '11', '14', '9048');
INSERT INTO `orderitem` VALUES ('60', '1', '120', '51', '9049');
INSERT INTO `orderitem` VALUES ('61', '1', '12', '90', '9049');
INSERT INTO `orderitem` VALUES ('62', '1', '111', '16', '9050');
INSERT INTO `orderitem` VALUES ('63', '1', '11', '14', '9051');
INSERT INTO `orderitem` VALUES ('64', '1', '111', '16', '9052');
INSERT INTO `orderitem` VALUES ('65', '1', '34', '13', '9053');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `payway` varchar(255) DEFAULT NULL,
  `sendway` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5AA3D9C7` (`uid`),
  CONSTRAINT `FKC3DF62E5AA3D9C7` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9054 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2000', '370', '2015-02-11 10:04:23', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('3000', '358', '2015-02-11 10:46:41', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('4000', '590', '2015-02-11 10:46:47', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('5000', '519', '2015-02-11 10:47:01', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('6000', '125', '2015-02-11 10:47:07', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('7000', '83', '2015-02-11 10:47:15', '1', '111', '15726607618', '北京', '7', null, null);
INSERT INTO `orders` VALUES ('8000', '358', '2015-02-11 11:17:22', '3', '11', '15726607618', '北京', '7', null, null);
INSERT INTO `orders` VALUES ('9000', '83', '2015-02-11 11:23:26', '2', '11', '15726607618', '北京', '7', null, null);
INSERT INTO `orders` VALUES ('9001', '255', '2015-02-23 21:31:19', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('9002', '228', '2015-02-27 09:07:55', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('9003', '5099', '2015-02-27 15:35:53', '4', '的D ', '15726607618', '北京', '7', null, null);
INSERT INTO `orders` VALUES ('9004', '172', '2017-05-04 11:03:29', '1', '张三', '18726607618', '北京', '8', null, null);
INSERT INTO `orders` VALUES ('9005', '80', '2017-05-04 12:06:47', '1', '张三', '18726607618', '北', '8', null, null);
INSERT INTO `orders` VALUES ('9006', '80', '2017-05-04 13:23:49', '1', null, null, null, '11', null, null);
INSERT INTO `orders` VALUES ('9007', '119', '2017-05-04 13:28:40', '1', null, null, null, '12', null, null);
INSERT INTO `orders` VALUES ('9008', '80', '2017-05-04 16:52:37', '1', '张三', '18726607618', '北', '8', null, null);
INSERT INTO `orders` VALUES ('9009', '160', '2017-05-04 16:56:04', '1', '张三', '18726607618', '北京市西三旗中腾建华3楼', '8', null, null);
INSERT INTO `orders` VALUES ('9010', '119', '2017-05-05 01:47:52', '1', 'dada', '23', 'q', '13', null, null);
INSERT INTO `orders` VALUES ('9011', '80', '2017-05-05 11:01:31', '1', null, null, null, '13', null, null);
INSERT INTO `orders` VALUES ('9012', '0', '2017-05-05 11:11:02', '1', null, null, null, '13', null, null);
INSERT INTO `orders` VALUES ('9013', '80', '2017-05-05 11:28:50', '1', null, null, null, '13', null, null);
INSERT INTO `orders` VALUES ('9014', '0', '2017-05-05 11:30:29', '1', null, null, null, '13', null, null);
INSERT INTO `orders` VALUES ('9015', '80', '2017-05-05 11:30:46', '1', null, null, null, '13', null, null);
INSERT INTO `orders` VALUES ('9016', '90', '2017-05-05 11:49:08', '1', '爸爸', '13712345', '广航', '13', null, null);
INSERT INTO `orders` VALUES ('9017', '59', '2017-05-05 11:53:14', '1', '爸爸', '11111', '广航', '13', null, null);
INSERT INTO `orders` VALUES ('9018', '119', '2017-05-05 12:06:58', '1', 'dada', '23', 'q', '13', null, null);
INSERT INTO `orders` VALUES ('9019', '119', '2017-05-05 14:17:45', '1', '12', '', '12', '16', null, null);
INSERT INTO `orders` VALUES ('9020', '80', '2017-05-05 14:25:51', '1', null, null, null, '13', null, null);
INSERT INTO `orders` VALUES ('9021', '119', '2017-05-05 14:27:19', '1', null, null, null, '13', null, null);
INSERT INTO `orders` VALUES ('9022', '119', '2017-05-05 15:10:53', '1', null, null, null, '15', null, null);
INSERT INTO `orders` VALUES ('9023', '119', '2017-05-05 15:33:55', '1', 'dada', '23', 'q', '13', null, null);
INSERT INTO `orders` VALUES ('9024', '59', '2017-05-05 15:40:55', '1', null, null, null, '15', null, null);
INSERT INTO `orders` VALUES ('9025', '0', '2017-05-05 15:40:57', '1', null, null, null, '15', null, null);
INSERT INTO `orders` VALUES ('9026', '59', '2017-05-05 15:41:18', '1', '12', '', '12', '15', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9027', '108', '2017-05-05 16:10:35', '1', '12', '', '12', '15', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9028', '0', '2017-05-05 16:10:49', '1', '12', '', '12', '15', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9029', '119', '2017-05-05 16:12:25', '2', '12', '', '12', '15', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9030', '80', '2017-05-05 16:20:49', '3', '12', '', '12', '15', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9031', '119', '2017-05-05 16:33:55', '2', '12', '', '12', '15', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9032', '119', '2017-05-05 17:07:02', '1', null, null, null, '15', null, null);
INSERT INTO `orders` VALUES ('9033', '119', '2017-05-05 17:19:42', '3', '1', '', '1', '17', '微信', '百世汇通');
INSERT INTO `orders` VALUES ('9034', '80', '2017-05-10 07:46:30', '1', null, null, null, '7', null, null);
INSERT INTO `orders` VALUES ('9035', '90', '2017-05-10 09:50:22', '1', null, null, null, '9', null, null);
INSERT INTO `orders` VALUES ('9036', '119', '2017-05-10 11:41:04', '1', null, null, null, '9', null, null);
INSERT INTO `orders` VALUES ('9037', '119', '2017-05-10 11:46:48', '1', null, null, null, '9', null, null);
INSERT INTO `orders` VALUES ('9038', '999', '2017-05-10 13:26:51', '2', '老三1', '131111111', '广州航海学院', '9', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9039', '34', '2009-08-20 14:23:48', '4', '小霸', '12345', '广州航海学院', '19', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9040', '127', '2009-08-20 02:04:00', '3', '小霸', '1371111111', '广州航海学院', '19', '微信', '顺丰');
INSERT INTO `orders` VALUES ('9041', '120', '2009-08-20 07:21:25', '2', '詹', '234', '123', '20', '支付宝', '申通');
INSERT INTO `orders` VALUES ('9042', '131', '2009-08-20 07:23:31', '2', '詹', '234', '123', '20', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9043', '120', '2009-08-20 07:23:51', '1', null, null, null, '20', null, null);
INSERT INTO `orders` VALUES ('9044', '120', '2009-08-20 07:50:52', '2', '詹', '234', '123', '20', '微信', '圆通');
INSERT INTO `orders` VALUES ('9045', '25', '2009-08-20 08:17:57', '1', null, null, null, '20', null, null);
INSERT INTO `orders` VALUES ('9046', '146', '2009-08-20 15:20:50', '2', '老三', '131111111', '广州航海学院', '9', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9047', '111', '2009-08-20 15:22:02', '2', '老三', '131111111', '广州航海学院', '9', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9048', '11', '2009-08-20 16:54:31', '1', null, null, null, '9', null, null);
INSERT INTO `orders` VALUES ('9049', '132', '2009-08-21 01:58:53', '2', '老三', '131111111', '广州航海学院', '9', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9050', '111', '2009-08-21 05:59:50', '2', '许大狼1', '1371111111', '广州航海学院', '23', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9051', '11', '2009-08-21 06:16:36', '2', '许大狼', '1371111111', '广州航海学院', '23', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9052', '111', '2009-08-21 06:18:05', '2', '老三1', '131111111', '广州航海学院', '9', '支付宝', '顺丰');
INSERT INTO `orders` VALUES ('9053', '34', '2009-08-21 06:18:41', '2', '许大狼', '1371111111', '广州航海学院', '23', '支付宝', '顺丰');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  `evaluate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Java从入门到精通', '60', '45', 'products/cs10001.jpg', '《Java从入门到精通（第3版）》从初学者角度出发，通过通俗易懂的语言、丰富多彩的实例，详细介绍了使用Java语言进行程序开发需要掌握的知识。', '1', '2017-05-10 12:29:24', '112', null);
INSERT INTO `product` VALUES ('2', 'Head First Java', '90', '70', 'products/cs10002.jpg', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。', '1', '2009-08-20 13:33:34', '112', null);
INSERT INTO `product` VALUES ('3', '管理学', '70', '60', 'products/cs10003.jpg', '管理应该回归它的本源，且不要为自己的愚昧寻找所谓的“盲人摸象”的开脱。', '1', '2017-05-10 09:20:37', '105', null);
INSERT INTO `product` VALUES ('4', '白夜行', '74', '33', 'products/cs10004.jpg', '东野圭吾，我的天空里没有太阳，总是黑夜。但并不暗，因为有东西代替了太阳。', '1', '2017-05-10 09:19:36', '82', null);
INSERT INTO `product` VALUES ('5', '福尔摩斯探案全集', '250', '120', 'products/cs10005.jpg', '《福尔摩斯探案全集》共有4部长篇、56个短篇；部长篇《血字的研究》完成于1886年，时年27岁，隔年与其他作品合集出版于《比顿圣诞年刊》，受到读者欢迎。', '1', '2017-05-10 09:19:41', '82', null);
INSERT INTO `product` VALUES ('6', '抗日战争', '119', '90', 'products/cs10006.jpg', '这一系列作品所具备的坚实宏大的结构、国际的视角、对现实的关照以及详尽的资料，使他拥有了数百万忠实的读者，而万众期待的《抗日战争》将于2015年6月由人民文学出版社出版，至此中国战争系列作品将完满收官。', '1', '2017-05-10 14:39:03', '96', null);
INSERT INTO `product` VALUES ('7', '刘墉给孩子的成长书', '55', '35', 'products/cs10007.jpg', '“刘墉给孩子的成长书” 是华人世界首席励志大师刘墉先生为8—14岁孩子量身定制。本系列从刘墉先生作品中分主题精选适合孩子阅读的篇目，涵盖了增强自信、形成主见、面对挫折、独立生活、个性发展等多方面内容，帮孩子解决成长过程中可能遇到的多方面问题。', '1', '2017-05-10 09:19:52', '87', null);
INSERT INTO `product` VALUES ('8', '故宫的隐秘角落', '77', '66', 'products/cs10008.jpg', '《故宫的隐秘角落》独辟蹊径地以“隐秘角落”去探寻故宫及历史，而不是刻板讲解故宫历史遗产，让我们去领会一个真正意义上的故宫，去感受在鲜活历史场景中的人物命运、家国春秋。', '1', '2017-05-10 09:20:02', '96', null);
INSERT INTO `product` VALUES ('9', '斯坦福极简经济学', '88', '70', 'products/cs10009.jpg', '从36个经济学关键名词入手，每篇约3000字，用生活实例引入主要原理，解释、分析经济现象，概念清晰，没有经济基础，也能轻松理解。简约不简单，帮助我们认识复杂的世界，在经济社会中，成为一个更聪明、更成熟的参与者。', '1', '2017-05-10 09:20:27', '104', null);
INSERT INTO `product` VALUES ('11', '秒速5厘米', '35', '25', 'products/cs20017.jpg', '加纳新太 著；冷婷 译\r\n《秒速5厘米》是以一个少年为主轴，渐次展开的三个连续短篇《樱花抄》《宇航员》《秒速5厘米》三个短篇合在一起，组成了完整的《秒速5厘米》。这是一个静静地、缓缓地沁入心田的故事，描绘了爱恋之情的不变和变迁，以及灵魂的彷徨。世界那么美好，青春那么绚丽，故事里的主人公却只愿和自己说话。', '0', '2017-05-10 14:56:16', '78', null);
INSERT INTO `product` VALUES ('13', '你今天真好看', '45', '34', 'products/cs40005.jpg', '[美] 莉兹·克里莫 著\r\n《你今天真好看》是一本清新暖萌的漫画集，收录了莉兹·克里莫150多张逗趣漫画。书中集结了所有你能想到的各种萌物，恐龙、棕熊、兔子、企鹅，甚至还有伞蜥、獾、土拨鼠、狐獴……在诙谐的对话中，它们展现出一种与生俱来的幽默感和令人艳羡的生活情趣。', '0', '2017-05-10 15:34:50', '78', null);
INSERT INTO `product` VALUES ('14', '公主怎么挖鼻屎', '35', '11', 'products/cs20015.jpg', '李卓颖 著\r\n信谊世界精选图画书·公主是怎么挖鼻屎的？她会把鼻屎吃进肚子里，抹在墙上，还是弹得远远的，让别人都发现不了？小动物们好奇极了，它们猜来猜去都猜不出来。最后，它们穿过树林，来到宫殿，偷偷爬上公主的窗台一瞧，结果……你能猜到结局吗？猜猜看，公主怎么挖鼻屎呢？\r\n这是一本让人忍俊不禁的图画书，幽默顽皮，让孩子哈哈大笑。同时又可以在不知不觉中，让孩子习得一个好的卫生习惯。', '1', '2009-08-20 13:44:54', '78', null);
INSERT INTO `product` VALUES ('15', '向死而生：我修的死亡学分', '35', '32', 'products/cs40004.jpg', '李开复 著\r\n李开复曾任职苹果公司，创建微软中国研究院，之后转战Google，2009年离职创办创新工场，这些不同的角色让他的人生富有传奇色彩，但命运总在不经意间转折。一场疾病让他对生命有了新的理解和体悟。\r\n　　《向死而生：我修的死亡学分》是李开复对过去一年的动情回顾，情真意切，字字珠玑。真实地再现了作者在病中的所思所想，让读者看到了他重生之后日渐成熟的人格魅力与价值观。不忘初心，心怀感恩，随缘随喜，这是当身边人问及他抗癌心路历程时，他给出的答案。', '0', '2017-05-10 15:35:57', '79', null);
INSERT INTO `product` VALUES ('16', '马可雷诺阿48色彩铅72色马克油性水溶彩色铅笔', '220', '111', 'products/cs20009.jpg', '马可雷诺阿48色彩铅72色马克油性水溶彩色铅笔上色容易，不掉色，颜色鲜艳，有一股淡淡的清香', '1', '2009-08-20 01:58:13', '83', null);
INSERT INTO `product` VALUES ('17', '活着', '35', '26', 'products/cs40006.jpg', '余华 著\r\n　《活着（新版）》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。', '0', '2017-05-10 15:37:21', '81', null);
INSERT INTO `product` VALUES ('18', '十宗罪系列 新版（套装共6册）', '256', '127', 'products/cs20013.jpg', '蜘蛛 著\r\n绝对震撼的角色安排：四个超级警察，各怀绝技，从全国警察队伍中挑选而出，对各地发生的特大罪案进行侦破。\r\n　　极度扭曲的罪案案犯：强奸杀人犯、毁容者、恋物癖者、异装癖、非主流少年、碎尸凶手、流浪汉、卖肾的人、变态杀手、色狼、乞丐、精神病患者、一天到晚跪在街头的人……\r\n　　诡异绝顶的十大凶案：地窖囚奴、雨夜幽灵、人皮草人、色狼传说、精神病院、肢体雪人……哪个更恐怖，哪个更震撼？\r\n', '1', '2009-08-20 14:22:10', '82', null);
INSERT INTO `product` VALUES ('19', '星星上的人', '35', '25', 'products/cs40007.jpg', '[美] 卡罗琳·帕克丝特 著\r\n你有没有，读懂星星上的人。孤独、纤细、渴望温暖的人……\r\n哈蒙德一家住在华盛顿特区，一切似乎都很美满，直到大女儿蒂莉的言行明显变得异常。虽然蒂莉缺乏社交能力，却是个令人惊奇的天才。为了拯救孩子，哈蒙德一家参加了非常著名的“和谐夏令营”，这里的家庭各有各的痛苦和纠结。然而，没有想到的是，这次抛弃一切的旅行比蒂莉的疾病更加凶险。而危机到来之后的命运，到底要靠什么来拯救？这个以“和谐”命名的夏令营，究竟还隐藏了多少不为人知的秘密？', '0', '2017-05-10 15:34:30', '82', null);
INSERT INTO `product` VALUES ('20', '遇见野兔的那一年', '45', '25', 'products/cs40008.jpg', '[芬] 阿托.帕西林纳（Arto Paasilinna） 著 著，《遇见野兔的那一年》是一个关于追求自由、逃离都市、中年危机下迎来生命转折的故事。主人公是个33岁诸事不满、愤世嫉俗的记者，偶然撞到一只野兔后，他决定逃离自己的工作和婚姻，带着野兔私奔去了芬兰荒野，开始一系列精彩的冒险。他们在荒野生活里，历经森林大火、枪战、宿醉、意外之财、欺凌与复仇，甚至跟一头黑熊结怨展开一场跨越国境的追逃，还把自己送进了监狱……后来呢？你只要相信，向往自由的心是永远不会被束缚住的。', '0', '2017-05-10 15:33:58', '82', null);
INSERT INTO `product` VALUES ('21', '东野圭吾：拉普拉斯的魔女 [Laplace\'s Witch]', '50', '35', 'products/cs40009.jpg', '[日] 东野圭吾 著；王蕴洁 译\r\n东野圭吾的人性实验室，《解忧杂货店》之后，回归推理之作。 角川书店70周年、东野圭吾作家生涯30周年纪念作品。 东野圭吾：“我想摧毁自己以前写的小说，于是，这部作品就此诞生。”', '1', '2017-05-10 15:33:45', '82', null);
INSERT INTO `product` VALUES ('51', '俄罗斯白夜Sonnet学生级固体水彩颜料24色', '268', '120', 'products/cs20010.jpg', '俄罗斯白夜Sonnet学生级固体水彩颜料24色16色全块套装 纸盒装 24色 单选单盒颜料,特 点：来自俄罗斯质地超细緻的学生级块状水彩\r\n\r\n●研磨浓度顏料、拥有的渲染色彩\r\n●耐光性强，\r\n●用合成原料代替天然原料，降低了成本，适合学生使用\r\n●全尺寸色块，为普通固体尺寸的2倍，。', '1', '2009-08-20 01:58:32', '83', null);
INSERT INTO `product` VALUES ('52', '获多福水彩纸300g', '120', '40', 'products/cs20012.jpg', '获多福水彩纸300g 纯棉手工 中粗纹理 细纹 8k 16k水彩画纸 细纹8k,上几遍色都不起毛，也不会皱，显色好，干了后几乎不变色。', '0', '2009-08-20 01:57:20', '86', null);
INSERT INTO `product` VALUES ('53', '毛泽东研究译丛·毛泽东传', '99', '78', 'products/cs40012.jpg', '[美] 罗斯·特里尔 著；何宇光，刘加英 译\r\n　美国著名学者兼记者、作家罗斯特里尔的名著《毛泽东传》，自登陆中国以来，已经累积销量近两百万册。2010年8月，中国人民大学出版社又隆重推出该书的名著珍藏版，以飨读者。美国著名学者兼记者、作家罗斯特里尔的名著《毛泽东传》，自登陆中国以来，已经累积销量近两百万册。2010年8月，中国人民大学出版社又隆重推出该书的名著珍藏版，以飨读者。', '0', '2017-05-10 15:35:44', '79', null);
INSERT INTO `product` VALUES ('54', '三生三世枕上书', '46', '0.1', 'products/cs40011.jpg', '唐七公子 著\r\n　《三生三世枕上书》\r\n　　如果执著终归于徒然，谁会将此生用尽，只为守候一段触摸不得的缘恋？\r\n　　如果两千多年的执念，就此放下、隔断，是否会有眼泪倾洒，以为祭奠？\r\n　　纵然贵为神尊，东华也会羽化而湮灭。\r\n　　虽是青丘女君，凤九亦会消逝在时光悠然间。\r\n　　只是不知，当风云淡去，当仍在无羁岁月间穿行，当偶有擦肩。东华还能记起凤九吗，还能否记起她就是那只曾守在自己身边的红狐？记起自己曾经救过一只九尾红狐？', '0', '2017-05-10 15:35:34', '80', null);
INSERT INTO `product` VALUES ('55', '皮囊', '45', '23', 'products/cs20001.jpg', '蔡崇达 著\r\n《皮囊》是一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。。\r\n　　作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个福建渔业小镇上的风土人情和时代变迁，在这些温情而又残酷的故事中一一体现。用《皮囊》这个具有指向本质意味的书名，来表达作者对父母、家乡的缅怀，对朋友命运的关切，同时也回答那些我们始终要回答的问题。\r\n', '0', '2009-08-20 01:48:52', '81', null);
INSERT INTO `product` VALUES ('56', '愿有人陪你颠沛流离', '45', '35', 'products/cs40002.jpg', '卢思浩 著\r\n见了太多糟糕的事情，反倒觉得一切都会好的。\r\n　　有了太多糟糕的情绪，反倒知道怎么应对这些。\r\n　　能接吻就不要说话，能拥抱就不要吵架，能行动就不要发呆，能团聚就不要推辞。好的东西不要珍藏，今天能做的事不要等到明天。从现在起，答应自己的事就尽力去做到，答应自己要去的地方就尽力去抵达。这个世界太危险，时间就该浪费在美好的事物上。', '0', '2017-05-10 18:46:40', '80', null);
INSERT INTO `product` VALUES ('57', '念速成围棋初级篇', '55', '45', 'products/cs20008.jpg', '21世纪新概念速成围棋初级篇-上中下（3册）赠学习卡黄焰金成来新概念速成围棋 初级入门围棋\r\n教材生动有趣，老师和学生在教与学当中都很快乐。非常适合作为儿童围棋的教育的教材书系列。', '0', '2009-08-20 01:57:55', '84', null);
INSERT INTO `product` VALUES ('66', '恶意', '35', '29', 'products/cs40001.jpg', '东野圭吾著的《恶意》讲述的是：畅销作家在出 国前一晚被杀，警方很快锁定了凶手。此人供认自己 是一时冲动犯下了罪行。案子到此已经可以了结。可 办案的加贺警官并不这么认为，因为他找不到凶手作 案的动机，凶手也一直对动机避而不谈。加贺不愿草 草结案，大量走访。渐渐显露的真相让他感到冰冷的 寒意—— 你心里藏着对他的恶意，这仇恨深不见底，深得 连你自己都无法解释。正是它导致了这起案件。', '0', '2017-05-10 15:37:06', '82', null);
INSERT INTO `product` VALUES ('67', '从你的全世界路过', '35', '22', 'products/cs40003.jpg', '张嘉佳 著\r\n《从你的全世界路过：让所有人心动的故事》是新媒体时代的写故事高手张嘉佳的短篇小说集。读过睡前故事的人会知道，这是一本精彩纷呈的书。书中讲述了发生在我们身边的爱情故事，故事里的人物嘴贱心善，真实得就像身边的哥儿们和闺密，在深夜和你掏心掏肺地讲述，讲述他走过的千山万水，经历过的爱恨情仇。那么多的故事，情节曲折，细节动人，有温暖的，有明亮的，有落单的，有疯狂的，有无聊的，有胡说八道的；有念念不忘的美好，有爱而不得的疼痛，有生离死别的遗憾，有一再错过的宿命，也有喧嚣之后的回归和温暖。', '0', '2017-05-10 15:35:23', '80', null);
INSERT INTO `product` VALUES ('68', '韩国hhwahong华虹圆头水彩画笔', '198', '83', 'products/cs20011.jpg', '进口 韩国hhwahong华虹圆头水彩画笔/771/尖头/平头马鬃毛 水粉笔 6支套装 (圆头),很好的实用笔.', '0', '2009-08-20 01:59:25', '83', null);
INSERT INTO `product` VALUES ('69', '浮生六记', '34', '20', 'products/cs40010.jpg', '沈复 著；张佳玮 译\r\n《浮生六记》是清代文人沈复写作的自传散文。因其以真言述真情，从不刻意造作，得以浑然天成，独树一帜，达\"乐而不淫，哀而不伤\"之境界，深为后世文人所推崇，流传至今，已成经典。', '0', '2017-05-10 15:35:00', '81', null);
INSERT INTO `product` VALUES ('70', '月亮忘记了与森林唱游', '55', '35', 'products/cs20016.jpg', '幾米 著\r\n《听几米唱歌》和《森林唱游》是后来几米笔下许多“固定班底”的孕育之地，他在这两本书中画了许多动物，毛毛兔、猫咪、大象……还有出场次数较多的小猪。藉着森林里小动物的唱游嬉戏，传达他的都市生活感想。我们可以从这里回溯几米这些可爱的角色最初登场的样子，看看它们在森林里玩什么游戏，如何启发了几米日后创作的丰沛能量。你看太阳出来了……', '1', '2009-08-20 13:33:56', '78', null);
INSERT INTO `product` VALUES ('71', '就喜欢你看不惯我又干不掉我的样子', '45', '31', 'products/cs20014.jpg', '白茶 著、\r\n《就喜欢你看不惯我又干不掉我的样子》是在微博上被数百万次转发的名猫“吾皇”的故事。在书中，少年讲述了与吾皇相遇的故事，和一家三口在家中的日常。在书中，不仅有白茶老爹乱入，隔壁老王躺枪，还有编辑对少年的超长篇采访记。惊喜不容错过。', '0', '2017-05-10 14:56:38', '78', null);
INSERT INTO `product` VALUES ('72', '湖羊文房四宝毛笔套装', '55', '83', 'products/cs20004.jpg', '湖羊文房四宝毛笔套装字帖万次书法水写布善琏湖笔墨纸砚台狼毫 升级款\r\n中国十大名笔单位，弘扬湖笔文化展现笔道乾坤', '0', '2009-08-20 01:57:34', '86', null);
INSERT INTO `product` VALUES ('73', '毛笔挂笔架带6支毛笔套装', '999', '99', 'products/cs20002.jpg', '名动河山 毛笔挂笔架带6支毛笔套装（狼毫羊毫兼毫毛笔手提对联斗笔）文房四宝书法绘画工具 鸡翅木 墨海双龙笔架套装\r\n笔架套装买一送五：水写布+毛边纸+毛毡+字帖卡+手提袋', '0', '2009-08-20 01:59:54', '86', null);
INSERT INTO `product` VALUES ('74', '纸镇', '125', '35', 'products/cs20005.jpg', '黑木纸镇，无敌香，好用。', '0', '2009-08-20 01:57:49', '86', null);
INSERT INTO `product` VALUES ('75', '地球仪', '65', '45', 'products/cs20006.jpg', '博目地球仪：20cm新课标学生专用地球仪（高清大字版）11-20-27\r\n注记清晰，无线设计，环保灯源，赠送电池', '0', '2009-08-20 02:00:57', '85', null);
INSERT INTO `product` VALUES ('76', '初中物理实验箱', '999', '222', 'products/cs20007.jpg', '2016新款初中物理实验箱 热 力 光 声 电 磁 学 物理实验仪器器材箱 全套 火爆促销', '0', '2009-08-20 01:57:41', '85', null);
INSERT INTO `product` VALUES ('79', '水写布(单张)', '22', '8.7', 'products/cs20003.jpg', '名动河山 文房四宝书法绘画工具 配套 水写布单张-水可清洗', '0', '2009-08-20 02:00:21', '86', null);
INSERT INTO `product` VALUES ('80', '和我一起玩', '66', '55', 'products/cs30017.jpg', '[瑞典] 阿妮卡·托雷 著；[瑞典] 玛利亚·尼尔松·托雷 绘；赵清 译\r\n“玩，是孩子生活的需要。”\r\n　　对于0-3岁的幼儿来说，发现生活中的趣味游戏，对他们的成长有非常重要的意义。通过日常的生活游戏，孩子可以在轻松的氛围中认知事物，习得重要的生活技能；通过日常的生活游戏，孩子可以跟父母进行更多的互动与交流，培养安全感；通过日常的生活游戏，孩子还能够尽情地发挥想象力和创造力。', '1', '2017-05-10 15:20:06', '87', null);
INSERT INTO `product` VALUES ('81', '噼里啪啦系列', '55', '35', 'products/cs30018.jpg', '[日] 佐佐木洋子 绘\r\n《噼里啪啦系列（共7册）》是日本画家佐佐木洋子编绘的，共七种，分别描绘孩子在刷牙、洗澡、游玩、吃点心等各种时候所碰到的问题，以风趣的方式教会他们人生之初的知识。噼里啪啦系列是特别为孩子设计的翻翻书，是孩子早期阅读入门、认知生活常识、培养良好习惯、锻炼手指灵活度、开发孩子智力的优质读物。很棒的婴幼儿情景式启蒙立体图画书！', '1', '2017-05-10 15:20:15', '87', null);
INSERT INTO `product` VALUES ('82', '中国：手绘中国地理地图（精装手绘儿童版）', '55', '35', 'products/cs30016.jpg', '洋洋兔 著\r\n《手绘中国地理地图——中国》是一本针对少年儿童阅读的知识性百科绘本。本书内容涉及中国23个省、4个直辖市、5个自治区和2个特别行政区。用绘本的方式呈现了各行政区的行政边界、地形地貌、风景名胜、交通、植被、动物、人口组成、人文遗址、矿产资源、美食、甚至民风习俗、历史名人等。全文四色手绘，全彩印刷，通过直观的手绘地图，外加丰富的知识点采集，组成了一本适合孩子阅读的生动地理百科绘本，让小读者清晰的认知中国各个地区的地理知识。', '1', '2017-05-10 15:18:52', '88', null);
INSERT INTO `product` VALUES ('83', '超有趣幼儿十万个为什么', '55', '25', 'products/cs30015.jpg', '铁皮人美术 编\r\n《超有趣幼儿十万个为什么》定位准确，知识丰富，所选问题都是从家长调查问卷中征选出来的孩子们感兴趣的。编排方式新颖独特，阅读检索起来更方便。书中每一个“为什么”都配以幽默风趣的漫画，使抽象的知识变得生动有趣，易于理解。文字精练，通俗有趣，有利于父母讲解。插图精美，生动活泼，小读者一看就会喜欢。它是一套真正满足幼儿求知欲的亲子读物。', '1', '2017-05-10 15:18:40', '88', null);
INSERT INTO `product` VALUES ('84', '世界地图：跟爸爸一起去旅行', '55', '25', 'products/cs30014.jpg', '[英] 尼克·柯雷恩 著；[英] 大卫·迪恩 绘\r\n《世界地图》（百科知识版）依据不同的地理区域划分世界，考察当地环境如何塑造全球各地的社会生活和文化。它以非常形象生动的插图和简洁丰富的细节为孩子们讲述了关于地球的故事，包括它的过去、现在和未来。它告诉孩子我们所生活的地球在宇宙中的是如何形成的；人们如何将三维的地球形象展现在二维的地图上。', '1', '2017-05-10 15:18:28', '88', null);
INSERT INTO `product` VALUES ('85', '小猪佩奇', '88', '72', 'products/cs30013.jpg', '英国快乐瓢虫出版公司 编\r\n小猪佩奇是一只非常可爱的小粉红猪，她与弟弟乔治、爸爸、妈妈快乐地住在一起。小猪佩奇喜欢做的事情是玩游戏、打扮得漂漂亮亮、渡假，以及住在小泥坑里快乐地跳上跳下!除了这些，她还喜欢到处探险，虽然有些时候会遇到一些小状况，但总可以化险为夷，而且都会带给大家意外的惊喜!', '1', '2017-05-10 15:18:05', '89', null);
INSERT INTO `product` VALUES ('86', '托马斯和朋友70周年经典故事', '123', '88', 'products/cs30012.jpg', '童趣出版有限公司 编\r\n《托马斯和朋友 70周年经典故事珍藏系列（套装36册）》从数百个故事中甄选出70个ZUI具代表性的故事，秘制《小火车家族档案》，全方面揭秘多多岛上小火车们的生活和工作。', '1', '2017-05-10 15:17:50', '89', null);
INSERT INTO `product` VALUES ('87', '小学数学口算·心算·', '22', '10', 'products/cs30011.jpg', '《小学数学口算·心算·速算练习册》编写组 编\r\n《小学数学口算·心算·速算练习册：1年级》将每学期所学知识及计算要点分为76天，编排合理，题型设计灵活多样，难度中等偏上，对进一步加强训练我们的口算、心算、巧算和速算能力非常实用有效。既可促进我们对所学知识的掌握与巩固，又能培养我们的快速反应能力与快速运算技能。', '1', '2017-05-10 15:17:39', '91', null);
INSERT INTO `product` VALUES ('88', '中学教材全解', '55', '35', 'products/cs30010.jpg', '薛金星 著\r\n配套解读各出版社出版的语文教科书，从作家作品到时代背景，从文题含义到字词句篇，从篇章结构到语言特色，从思想感悟到中考对接，面面俱到。它是教师备课的参考，家长辅导的工具，学生学习的帮手。本书处处体现薛金星先生终生学习的理念，不仅教会学生知识，更主要的是教会学生学习方法。通过阅读本书，学生可以把平时的点滴学习同中考紧密联系起来，从七年级起就了解中考真题，就学会解答中考真题的方法。', '1', '2017-05-10 15:17:27', '91', null);
INSERT INTO `product` VALUES ('89', '小学生满分作文1000篇', '56', '34', 'products/cs30009.jpg', '李继勇 著\r\n　　《作文之星：小学生满分作文1000篇》《作文之星：小学生优秀作文1000篇》囊括了本学段所有作文类型。提供了很好的作文范本，给你轻松，愉快的阅读，让你的作文水平全面提高。', '1', '2017-05-10 18:47:28', '91', null);
INSERT INTO `product` VALUES ('90', '天利38套', '45', '12', 'products/cs30008.jpg', '教学考试研究院，天利全国高考命题研究中心 著\r\n《超级全能生2018高考全国卷联考测评卷》是北京天利教学研究院以“超级全能生联考”为背景，倾力打造的高考一轮阶段训练+测评的试卷，以“先练后测 循环滚动”为核心理念', '1', '2017-05-10 18:47:49', '91', null);
INSERT INTO `product` VALUES ('92', '接触网工', '33', '12', 'products/cs30006.jpg', '铁道部人才服务中心 编\r\n《接触网工》根据铁道部人才服务中心的有关要求组织编写，内容以相应的《国家职业标准》、《铁路技术管理规程》及铁道部有关技术规章为依据，全书分为七大部分，包括初级练习题、中级练习题、高级练习题、技师练习题、高级技师练习题、共性规章类练习题、职业道德类练习题，题后附有参考答案。', '1', '2017-05-10 15:16:40', '92', null);
INSERT INTO `product` VALUES ('93', '现代汉语词典', '99', '65', 'products/cs30005.jpg', '中国社会科学院语言研究所词典编辑室 编\r\n《现代汉语词典》自1978年正式出版以来做过多次修订，以适应社会的发展，更好地反映现代汉语词汇新面貌，体现有关学科研究的新成果，落实国家有关语言文字方面的新规范。\r\n本次修订，主要内容为：全面落实2013年6月由国务院公布的《通用规范汉字表》；增收近几年涌现的新词语400多条，增补新义近100项，删除少量陈旧和见词明义的词语；根据读者和专家意见对700多条词语的释义、举例等做了修订。', '1', '2017-05-10 15:16:29', '95', null);
INSERT INTO `product` VALUES ('94', '微信小程序', '35', '33', 'products/cs30004.jpg', '李骏，边思 著\r\n《微信小程序：开发入门及案例详解》本书全面介绍微信小程序的开发思路、技术、工具与案例，涉及小程序开发的方方面面。主要内容包括：前端开发基础、小程序开发基础、小程序组件、AIP详解、实例分析等。本书案例丰富、讲解细腻、实用性强，可帮助读者从零开始快速入门小程序开发。', '1', '2017-05-10 15:16:12', '112', null);
INSERT INTO `product` VALUES ('95', 'Hadoop应用实战', '66', '54', 'products/cs30003.jpg', '谭磊，范磊 著\r\n本书全面地讲述了Hadoop相关领域的重要知识和*的技术及应用。书中首先介绍了数据挖掘的基础知识、Hadoop的基本框架和相关信息，然后系统地描述了如何在各类行业中用好Hadoop来做数据挖掘。\r\n　　本书面向的主要读者人群是想了解Hadoop与大数据的技术人员，无论他们是在互联网企业，还是在传统企业；无论他们从事的是技术或者运维工作，专业做数据分析，还是企业的策略官、市场官和运营官，都能从本书中找到各自所需要的内容。', '1', '2017-05-10 15:16:00', '112', null);
INSERT INTO `product` VALUES ('96', '跟老齐学Python：从入门到精通', '33', '32', 'products/cs30002.jpg', '齐伟 编\r\n本书是面向编程零基础读者的Python入门教程，内容涵盖了Python的基础知识和初步应用。以比较轻快的风格，向零基础的学习者介绍一门时下比较流行、并且用途比较广泛的编程语言，所以，本书读起来不晦涩，并且在其中穿插了很多貌似与Python编程无关，但与学习者未来程序员职业生涯有关的内容。', '1', '2017-05-10 15:15:37', '112', null);
INSERT INTO `product` VALUES ('97', '大话数据结构', '45', '33', 'products/cs30001.jpg', '程杰 著\r\n　《大话数据结构》为超级畅销书《大话设计模式》作者程杰潜心三年推出的扛鼎之作！以一个计算机教师教学为场景，讲解数据结构和相关算法的知识。通篇以一种趣味方式来叙述，大量引用了各种各样的生活知识来类比，并充分运用图形语言来体现抽象内容，对数据结构所涉及到的一些经典算法做到逐行分析、多算法比较。与市场上的同类数据结构图书相比，本书内容趣味易读，算法讲解细致深刻，是一本非常适合自学的读物。', '1', '2009-08-20 14:20:58', '112', null);
INSERT INTO `product` VALUES ('98', '福袋', '50', '10', 'products/cs50009.jpg', '想不想换换口味\r\n选购福袋购买惊喜，一惊拍下就会随机发出一本全新图书，买幸运买惊喜只要10元', '1', '2009-08-21 16:40:09', '80', null);
INSERT INTO `product` VALUES ('99', '白鹿原', '88', '35', 'products/cs50008.jpg', '好看', '1', '2009-08-21 16:40:49', '82', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', 'aaa', '123', '小霸', 'aaa@qq.com', '1381111111', '广州航海学院', '1', null);
INSERT INTO `user` VALUES ('8', 'bbb', '123', '詹程', 'bbb@qq.com', '1381111111', '广州航海学院', '1', '');
INSERT INTO `user` VALUES ('9', 'ccc', '123', '老三1', 'ccc@qq.com', '131111111', '广州航海学院', '1', '30e106f7f56d4687b6337bc8f9da94cad979495c244447b9852e9d2edf802294');
INSERT INTO `user` VALUES ('10', 'ddd', '123', '老四', 'ddd@qq.com', '1381111111', '广州航海学院', '1', '3864bc69465447b082947add33ba2b4c3c53cc2c42374ca487d57d93ac7dd120');
INSERT INTO `user` VALUES ('11', 'eee', '123', '老五', 'eee@qq.com', '1381111111', '广州航海学院', '1', 'c63da2b624e240d1a312c03a6f127a2dd240b6af72244498a82cbc604929c2d9');
INSERT INTO `user` VALUES ('12', 'fff', '123', '老六', 'fff@qq.com', '1381111111', '广州航海学院', '1', '441e301d2c8d4fdd8bb4feff36e6e969efd1f2b550404cdcb67959e73cc5d89b');
INSERT INTO `user` VALUES ('13', 'ggg', '123', '老气', 'ggg@qq.com', '1381111111', '广州航海学院', '1', '38623c78d5d44435b60355bf96e7df8178be463d81f04858b15ab309163a651c');
INSERT INTO `user` VALUES ('14', 'hhh', '123', '老八', 'hhh@qq.com', '1381111111', '广州航海学院', '1', '59352f184512420887bc39b7da5cc1e52b3d611f98f846c7b66d81f1a8ecb919');
INSERT INTO `user` VALUES ('15', 'iii', '123', '老九', 'iii@qq.com', '1381111111', '广州航海学院', '1', 'a4601174d84344359b25cbfa3eaf6f8333c6c57391444c0b90da7aeabf25d13a');
INSERT INTO `user` VALUES ('16', 'jjj', '123', '老十', 'jjj@qq.com', '1381111111', '广州航海学院', '1', 'b4735a217c72480b99c74898ddb2d6854936543778f6406689fbb9c43d10a6b3');
INSERT INTO `user` VALUES ('17', 'kkk', '123', '老十一', 'kkk@qq.com', '1381111111', '广州航海学院', '1', 'bd35c84c18ef4b468a45cb171a039e6f816cf16e9c594897ae7ee6fe74739df5');
INSERT INTO `user` VALUES ('18', '小霸', '123', '霸霸', '1234@qq.com', '1371111111', '广州市黄埔区红山三路101号', null, 'e692838631ce4c0780768c4c3ac7e81dd48d4148b3fe487488d74ae7e150bd04');
INSERT INTO `user` VALUES ('19', '霸霸', '1233', '小霸', '1234@qq.com', '12345', '广州航海学院', null, '19e605d5009c4bcf859ba4f1cb84de72bdddc0c667164ac4ad44ab966c64a1a2');
INSERT INTO `user` VALUES ('20', 'zhanchen', '123', '詹', '123', '234', '123', null, '9b0689e3f4b04dde9037588904211b138a7c6cadc9a44cde9c127290e1edfe84');
INSERT INTO `user` VALUES ('21', '李新燕', '123', '燕', '123', '123', '广州航海学院', null, '9be7b24f79e5406aa5663fa0210fc6a5f7c19dd309c7451d9a6bbc6b70a7d115');
INSERT INTO `user` VALUES ('22', 'zzz', '123', '老z', '1234@qq.com', '1371111111', '广州航海学院', null, '3ee66b4461a94e6281b3bd9d5a61294a40eba97a89ab4d1aa624d1f7ff916ef7');
INSERT INTO `user` VALUES ('23', '许大狼', '123', '许大狼', '1234@qq.com', '1371111111', '广州航海学院', null, '6e28cedc372041dc841170cfba4d1f5301f0a6959ac84342965d5dd33371c3f2');
