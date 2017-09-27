/*
Navicat MySQL Data Transfer

Source Server         : 545
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : janebook

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2017-09-27 09:41:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(50) DEFAULT NULL COMMENT '文章标题',
  `content` varchar(21000) DEFAULT NULL COMMENT '文章内容',
  `hot` int(11) DEFAULT NULL COMMENT '热度',
  `author_name` varchar(11) DEFAULT NULL COMMENT '作者名字',
  `browse` int(11) DEFAULT NULL COMMENT '浏览数',
  `collection` int(11) DEFAULT NULL COMMENT '收藏数',
  `tag` varchar(50) DEFAULT NULL COMMENT '标签',
  `classify_id` int(50) DEFAULT NULL COMMENT '类别id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `word_num` int(11) DEFAULT NULL COMMENT '文章字数',
  `reward` int(11) DEFAULT NULL COMMENT '打赏人数',
  `img` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `is_release` int(1) DEFAULT NULL COMMENT '是否发布',
  `is_drop` int(1) DEFAULT NULL COMMENT '是否丢弃',
  PRIMARY KEY (`id`),
  KEY `classify_id` (`classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('1', '四年的异国恋，我们没有输给时差与距离', '四年里，我们总共相聚的时光不超过十次，在一起的日子更不超过三个月，但我们坚持下来了。 1你说从你在小学见我的第一面时，你便认定了，我就是你这辈子要共度一生的女孩。于是，你央求...', '1', '黑岛上的猫客', '461', '22', '产品杂谈', null, '2017-09-28 09:15:38', '3292', '3', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('2', '浅谈简书签约：临渊羡鱼，不如退而结网', '01 秋日时光，天高气爽。 这是一个萧瑟的季节，亦是一个美丽的季节。 一杯咖啡，伴随着漾满房间的音乐，坐在书桌前，手指飞舞着，敲下一串串字符，这是一件多么美好的事情。 没错，...', '2', '陈旻子', '1482', '122', '谈写作', null, '2017-09-22 09:18:57', '2113', '4', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('3', '佟丽娅：在原生家庭有多缺爱，在爱情里就有多卑微', '9月15日，芭莎公布慈善夜当晚捐款的完整名单。 老邪那双滴溜溜的邪魅八卦大眼，不知咋滴就瞅到了各色明星夫妇阵营。 因中餐厅更火的教主夫妇，逗比的邓超孙俪，好人设不崩坏的佟大为...', '3', '三妈圆桌 ', '2130', '51', '社会热点', null, '2017-09-11 09:21:01', '435', '5', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('4', '10招教你更好的使用Google，搜索更全面', '1.使用“|”或者“or”搜索不确定的关键词。 2.使用“URL 关键字”进行站内搜索，比如搜索功能非常不友好的某乎，你就可以通过Google的站内搜索功能搜索你想要的关键词...', '5', '一块四毛二 ', '672', '70', '程序员', null, '2017-09-17 09:22:32', '672', '46', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('5', '我经历的丧偶式婚姻', '文/人鱼海棠 其实你一直都在，但我只看到了自己，对你却视而不见。 2017年 9月25日 星期一 晴 1 有人说，再恩爱的夫妻，一生中都有100次想离婚的念头和50次想杀死对...', '6', '人鱼海棠', '906', '62', '今夜日记', null, '2017-09-15 09:24:18', '456', '66', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('6', '“在你足够优秀之前，请别奢求我去主动了解你。”', '01. 新生学弟发来一段话，“招新的时候，学长学姐都会对我说，不会啊，没关系的，我们可以教你的。然后我就满腔热情的去面试，结果，这个组织不收我，那个部门拒绝我。其实，所有地方...', '55', '诗音姑娘', '1367', '92', '青春', null, '2017-08-28 09:26:26', '4564', '55', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('7', '萨达萨达所多', '来简书已经有四天了，四天的四篇文章我下意识的回避了一个话题，关于那个话题我只是轻描淡写的说了几句，可是现在既然决定投稿的话应该超越过去和现在的局限，把最真实的作品分享出来。那...', '65', '流过一纸荒唐泪', '1000', '80', '谈谈情，说说爱', null, '2017-08-28 09:27:49', '652', '85', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('8', '挣钱和教育孩子矛盾吗？', '在教育孩子的时候，﻿ 你选择了挣钱，不去管教孩子，﻿ 等孩子大了，你辛辛苦苦挣一辈子的钱不够他败家一年！﻿ 在教育孩子的时候，你选择了管教，陪伴，﻿ 等孩子大了，你一辈子没挣...', '45', '上官书函', '1420', '56', '散文', null, '2017-09-04 09:29:14', '655', '56', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('9', '有奖征集-简书Android 3.0.0 公测「全新首页/全新体验」', '好久不见，简书这一次，做了很大的更新，我们诚邀你参与我们的公测，作为首批体验我们的新版本用户，你的意见非常宝贵。于此同时，参与公测，你可以：1、人人有奖，下载Android公...', '123', '简书', '11920', '150', '今日看点', null, '2017-08-10 09:30:32', '2131', '50', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('10', '暗恋成真', '﻿﻿﻿这是一场刻骨铭心的旅程，我只能站立，不能前进，不能后退。我只能注视，不能说话，不能妄动。如果你愿意在我的琴上敲下一个键，我愿意为你完成所有乐章。 01 我和寒缨是高中同...', '1321', '寒风奔跑', '741', '37', '谈谈情，说说爱', null, '2017-08-21 09:32:22', '6233', '70', './images/avatar/ws.gif', null, null);

-- ----------------------------
-- Table structure for t_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `t_blacklist`;
CREATE TABLE `t_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `user_id` varchar(11) DEFAULT NULL COMMENT '用户id',
  `benned_id` varchar(11) DEFAULT NULL COMMENT '被禁ID',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黑名单表';

-- ----------------------------
-- Records of t_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for t_classify
-- ----------------------------
DROP TABLE IF EXISTS `t_classify`;
CREATE TABLE `t_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `classify_info` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `classify_admin` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_send` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否需要',
  `classify_img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '分类图片',
  `send_check` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '是否需要审查',
  `article_num` int(11) DEFAULT NULL COMMENT '文章字数',
  `follow` int(11) DEFAULT NULL,
  `is_city` int(255) DEFAULT NULL COMMENT '是否城市专题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_classify
-- ----------------------------

-- ----------------------------
-- Table structure for t_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_collection`;
CREATE TABLE `t_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` varchar(11) DEFAULT NULL COMMENT '用户id',
  `article_id` varchar(11) DEFAULT NULL COMMENT '文章id',
  `collection_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of t_collection
-- ----------------------------

-- ----------------------------
-- Table structure for t_commentary_fir
-- ----------------------------
DROP TABLE IF EXISTS `t_commentary_fir`;
CREATE TABLE `t_commentary_fir` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `reviewer_id` varchar(11) DEFAULT NULL COMMENT '评论者',
  `comment_cont` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `review_time` datetime DEFAULT NULL COMMENT '评论时间',
  `favor` varchar(11) DEFAULT NULL COMMENT '赞赏评论',
  `be_reviewer_id` varchar(11) DEFAULT NULL,
  `reviewer_name` varchar(11) DEFAULT NULL,
  `be_reviewer_name` varchar(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL COMMENT '被回复文章id',
  PRIMARY KEY (`id`),
  KEY `reviewer_id` (`reviewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论管理表';

-- ----------------------------
-- Records of t_commentary_fir
-- ----------------------------

-- ----------------------------
-- Table structure for t_commentary_sec
-- ----------------------------
DROP TABLE IF EXISTS `t_commentary_sec`;
CREATE TABLE `t_commentary_sec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `reviewer_name` varchar(11) DEFAULT NULL COMMENT '评论人',
  `be_reviewer_name` varchar(11) DEFAULT NULL COMMENT '被评论人',
  `comment_cont` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `review_time` datetime DEFAULT NULL COMMENT '评论时间',
  `reviewer_id` varchar(11) DEFAULT NULL,
  `be_reviewer_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviewer_id` (`reviewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表2';

-- ----------------------------
-- Records of t_commentary_sec
-- ----------------------------

-- ----------------------------
-- Table structure for t_favor
-- ----------------------------
DROP TABLE IF EXISTS `t_favor`;
CREATE TABLE `t_favor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `classify_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_favor
-- ----------------------------

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `type` varchar(11) DEFAULT NULL COMMENT '消息类型',
  `mes_content` varchar(255) DEFAULT NULL COMMENT '消息文本',
  `send_id` varchar(11) DEFAULT NULL,
  `recive_id` varchar(11) DEFAULT NULL,
  `readed` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviewer_id` (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permissionurl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_rec
-- ----------------------------
DROP TABLE IF EXISTS `t_rec`;
CREATE TABLE `t_rec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_rec
-- ----------------------------

-- ----------------------------
-- Table structure for t_relationship
-- ----------------------------
DROP TABLE IF EXISTS `t_relationship`;
CREATE TABLE `t_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系编号',
  `user_id` int(11) DEFAULT NULL COMMENT '关注人id',
  `friend_id` int(11) DEFAULT NULL COMMENT '被关注人id',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关系表';

-- ----------------------------
-- Records of t_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_search
-- ----------------------------
DROP TABLE IF EXISTS `t_search`;
CREATE TABLE `t_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search_name` varchar(255) DEFAULT NULL COMMENT '搜索文本',
  `click` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_search
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` varchar(11) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(18) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(11) DEFAULT NULL COMMENT '昵称',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `info` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `personal_website` varchar(255) DEFAULT NULL COMMENT '个人网站',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `email` varchar(20) DEFAULT NULL COMMENT '电子邮件',
  `favor` int(11) DEFAULT NULL COMMENT '收获喜欢数',
  `birthday` datetime DEFAULT NULL COMMENT '生日日期',
  `wechat` varchar(20) DEFAULT NULL COMMENT '微信账号',
  `QQ` int(11) DEFAULT NULL COMMENT 'QQ账号',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `is_rec` int(1) DEFAULT NULL,
  `rec_type` int(1) DEFAULT NULL,
  `language_type` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('admin', 'admin', '管理员', '男', '是的撒', null, '51321', '456431', '451', '2017-08-21 09:34:07', null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('亓官', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('刘淼', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('念远环人', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('润泽华', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('溜溜心情的遛马', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('章涛涛', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('简书博客', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('简书大学堂', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('简宝玉', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_user` VALUES ('魏童', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
