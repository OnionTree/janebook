/*
Navicat MySQL Data Transfer

Source Server         : 3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : janebook

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2017-10-09 09:58:20
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('1', '四年的异国恋，我们没有输给时差与距离', '四年里，我们总共相聚的时光不超过十次，在一起的日子更不超过三个月，但我们坚持下来了。 1你说从你在小学见我的第一面时，你便认定了，我就是你这辈子要共度一生的女孩。于是，你央求...', '1', '黑岛上的猫客', '461', '22', '连载小说', '1', '2017-09-28 09:15:38', '3292', '3', './images/avatar/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('2', '浅谈简书签约：临渊羡鱼，不如退而结网', '01 秋日时光，天高气爽。 这是一个萧瑟的季节，亦是一个美丽的季节。 一杯咖啡，伴随着漾满房间的音乐，坐在书桌前，手指飞舞着，敲下一串串字符，这是一件多么美好的事情。 没错，...', '2', '陈旻子', '1482', '122', '城市故事', '2', '2017-09-22 09:18:57', '2113', '4', './images/note/Gabe.gif', null, null);
INSERT INTO `t_article` VALUES ('3', '佟丽娅：在原生家庭有多缺爱，在爱情里就有多卑微', '9月15日，芭莎公布慈善夜当晚捐款的完整名单。 老邪那双滴溜溜的邪魅八卦大眼，不知咋滴就瞅到了各色明星夫妇阵营。 因中餐厅更火的教主夫妇，逗比的邓超孙俪，好人设不崩坏的佟大为...', '3', '三妈圆桌 ', '2130', '51', '谈写作', '3', '2017-09-11 09:21:01', '435', '5', './images/note/Gabe.gif', null, null);
INSERT INTO `t_article` VALUES ('4', '10招教你更好的使用Google，搜索更全面', '1.使用“|”或者“or”搜索不确定的关键词。 2.使用“URL 关键字”进行站内搜索，比如搜索功能非常不友好的某乎，你就可以通过Google的站内搜索功能搜索你想要的关键词...', '5', '一块四毛二 ', '672', '70', '微小说', '4', '2017-09-17 09:22:32', '672', '46', './images/note/japali.gif', null, null);
INSERT INTO `t_article` VALUES ('5', '我经历的丧偶式婚姻', '文/人鱼海棠 其实你一直都在，但我只看到了自己，对你却视而不见。 2017年 9月25日 星期一 晴 1 有人说，再恩爱的夫妻，一生中都有100次想离婚的念头和50次想杀死对...', '6', '人鱼海棠', '906', '62', '世间事', '5', '2017-09-15 09:24:18', '456', '66', './images/note/japali.gif', null, null);
INSERT INTO `t_article` VALUES ('6', '“在你足够优秀之前，请别奢求我去主动了解你。”', '01. 新生学弟发来一段话，“招新的时候，学长学姐都会对我说，不会啊，没关系的，我们可以教你的。然后我就满腔热情的去面试，结果，这个组织不收我，那个部门拒绝我。其实，所有地方...', '55', '诗音姑娘', '1367', '92', '乡土故事', '6', '2017-08-28 09:26:26', '4564', '55', './images/note/kancolle.gif', null, null);
INSERT INTO `t_article` VALUES ('7', '萨达萨达所多', '来简书已经有四天了，四天的四篇文章我下意识的回避了一个话题，关于那个话题我只是轻描淡写的说了几句，可是现在既然决定投稿的话应该超越过去和现在的局限，把最真实的作品分享出来。那...', '65', '流过一纸荒唐泪', '1000', '80', '散文', '7', '2017-08-28 09:27:49', '652', '85', './images/note/kancolle.gif', null, null);
INSERT INTO `t_article` VALUES ('8', '挣钱和教育孩子矛盾吗？', '在教育孩子的时候，﻿ 你选择了挣钱，不去管教孩子，﻿ 等孩子大了，你辛辛苦苦挣一辈子的钱不够他败家一年！﻿ 在教育孩子的时候，你选择了管教，陪伴，﻿ 等孩子大了，你一辈子没挣...', '45', '上官书函', '1420', '56', '行业故事汇', '8', '2017-09-04 09:29:14', '655', '56', './images/note/k-on.gif', null, null);
INSERT INTO `t_article` VALUES ('9', '有奖征集-简书Android 3.0.0 公测「全新首页/全新体验」', '好久不见，简书这一次，做了很大的更新，我们诚邀你参与我们的公测，作为首批体验我们的新版本用户，你的意见非常宝贵。于此同时，参与公测，你可以：1、人人有奖，下载Android公...', '123', '简书', '11920', '150', '旅行、在路上', '9', '2017-08-10 09:30:32', '2131', '50', './images/note/k-on.gif', null, null);
INSERT INTO `t_article` VALUES ('10', '暗恋成真', '﻿﻿﻿这是一场刻骨铭心的旅程，我只能站立，不能前进，不能后退。我只能注视，不能说话，不能妄动。如果你愿意在我的琴上敲下一个键，我愿意为你完成所有乐章。 01 我和寒缨是高中同...', '1321', '寒风奔跑', '741', '37', '成长励志', '10', '2017-08-21 09:32:22', '6233', '70', './images/note/k-on.gif', null, null);
INSERT INTO `t_article` VALUES ('11', '听说，你想要一份高质量的书单', '文/怀左同学 01 经常有人要我开书单，但我从来不开，原因是我喜欢的，别人不一定接受，或者给人开的书单，对别人不一定起作用。这样一来二去，就会浪费大家的时间。 我上学多年，读...', '456', '怀左同学', '789', '879', '大学生活', '11', '2017-09-06 16:03:49', '789', '789', './images/note/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('12', '天妇罗是油炸虾吗？天妇罗、甜不辣、黑轮和台湾关东煮竟是同一始祖！', '从小因为“爱吃”闹过不少笑话：那时候日本料理店的天妇罗就从来只写作“油炸天妇罗”，它的身体完全被裹上一层黄灿灿的壳衣，除了尾巴，真不可见其“庐山真面目”。 直到我吃到了更多的...', '78', ' 独食难肥的二郎 ', '45', '98', '哲思', '12', '2017-08-10 16:03:52', '8789', '89', './images/note/ws.gif', null, null);
INSERT INTO `t_article` VALUES ('13', '徒步墨脱——中国最后一个通公路的县城', '在中国从来没有一个省份，像西藏这样被人们所敬畏和向往。在电影里，它是洗涤心灵的《转山》，是关于信仰的《冈仁波齐》。在小说里，它是浪漫和诗意的《尘埃落定》，是有关失落文明的《藏...', '54', ' 徒步研究所', '546', '456', '谈谈情，说说爱', '13', '2016-02-11 16:03:56', '45', '465', './images/note/nzsm.jpg', null, null);
INSERT INTO `t_article` VALUES ('14', '如何将纯文字的PPT设计出品位感？', '前两天有好友私信郑少。 对于纯文字的PPT该怎么设计。 经过郑少的思考之后，于是乎总结了一些套路分享给大家。 想要做好纯文字的PPT，需要知道设计的四大基础原则。 即：对齐、...', '84', ' 郑少PTT', '13', '465', '漫画手绘', '14', '2017-09-12 16:04:02', '45', '666', './images/note/nzsm.jpg', null, null);
INSERT INTO `t_article` VALUES ('15', '\r\n为什么我厌恶苹果手机', '经常换手机，是买不到好手机。正如经常换老婆的人，是因为还没找到让他满意的老婆。 如何判断一个手机的好坏？关键的一点是:你觉得好。 我对手机的基本要求是: 电池续航时间长。结实...', '4', ' 饱醉豚', '4561', '4111', '书法', '15', '2017-09-18 16:04:05', '555', '444', './images/avnote/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('16', '豆汁儿、卤煮、炸酱面！', '第一次喝豆汁儿，我顶着浓重的黑眼圈，一边使劲儿扒拉眼皮一边后悔脑子抽筋去看升旗，红旗招展，人山人海，千里来相会的父老乡亲胳膊连着自拍杆，手机杵到天与太阳肩并肩，阻挡了我追寻五...', '78', ' 名贵的考拉熊', '778', '3333', '美食', '16', '2017-09-01 16:04:12', '111', '311', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('17', '【干货】做哪些事情可以帮助我们提高情商？', '情商比智商重要，高情商可以帮助我们构建人脉圈，处理好与朋友，上司，爱人的关系。﻿﻿ 那我们该如何做一个高情商的人呢？经过我翻阅各种书籍，向各位前辈请教，总结出如下经验。﻿﻿﻿...', '456', ' 卫好纯', '1123', '787', '社会热点', '17', '2017-09-03 16:04:15', '666', '11', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('18', '人可以没有自知之明到什么程度?', '你肯定对这些话很熟悉： “帮个忙都不行，算什么朋友” \"看关系发个红包吧，萍水相逢1元，朋友知己3元，好哥们5元，好姐妹10元，爱人52.1元，暗恋我66元，想跟我一生一世8...', '45', ' 槽值 ', '56', '441', '摄影', '18', '2017-09-05 16:04:20', '6777', '132', './images/note/steam.gif', null, null);
INSERT INTO `t_article` VALUES ('19', '找个外国男朋友是个什么体验？没想到，他把我扔进了精神病院', '我脑子里突然闪过一个画面：几个大汉把我绑在病床上，我拼命挣扎、嘴里不断喊着“我没病”。 一 两年前，我定居美国洛杉矶，还交了一个地道的美国男朋友，叫杰克。交往半年过后，我们同...', '1234', '真实故事计划 ', '789789', '409', '上班这点事儿', '19', '2017-09-21 16:04:24', '8978', '3', './images/note/steam.gif', null, null);
INSERT INTO `t_article` VALUES ('20', '为什么印度电影一言不合就唱歌跳舞｜大象公会', '文｜陶岱 印度电影为什么这么爱唱歌跳舞？是因为印度人民自古以来就有歌舞传统吗？答案远不是这么简单。 从老一代观众熟悉的《大篷车》，到近年大受欢迎的《三傻大闹宝莱坞》，印度电影...', '11', '大象公会', '8911', '13', '散文', '2', '2017-09-18 16:04:28', '1434', '321', './images/note/steam.gif', null, null);
INSERT INTO `t_article` VALUES ('21', '为什么印度电影一言不合就唱歌跳舞｜大象公会', '文｜陶岱 印度电影为什么这么爱唱歌跳舞？是因为印度人民自古以来就有歌舞传统吗？答案远不是这么简单。 从老一代观众熟悉的《大篷车》，到近年大受欢迎的《三傻大闹宝莱坞》，印度电影...', '23', 'admin', '5623', '145', '散文', '2', '2017-09-07 23:56:47', '1531', '452', './images/note/steam.gif', null, null);
INSERT INTO `t_article` VALUES ('22', '职场秘密｜为什么公司宁可花多钱招人也不给老员工加薪', '原创职场干货和个人成长分享 在没有年度调薪制度的公司，这种情况常常出现，公司宁可花更多的钱招人也不给老员工加薪，即使老员工工作很出色。 我就职过的一公司曾出现过工资泄密的事故...', '123', '101', '4561', '123', '上班这点事', '19', '2017-09-28 00:15:18', '2933', '52', './images/note/steam.gif', null, null);
INSERT INTO `t_article` VALUES ('23', '练书法打卡—摘抄杜甫的中秋诗作三首', '练字打卡，摘抄杜甫的三首与中秋相关的诗。', '23', '亓官', '6', '2', '书法', '15', '2017-09-20 00:21:15', '6', '2', './images/note/steam.gif', null, null);
INSERT INTO `t_article` VALUES ('24', '《那年花开月正圆》同人志：梦里梨花白', '楔子﻿ 老戏园里有一棵梨树，戏园子虽然荒废了很多年，但梨树却年年开花，愈发茂盛起来。每每夕阳西下，老人们便摇着蒲扇聊天，身边总是围着一滋溜的孩子。﻿ 阿寿叔一家就住在戏园对对...', '2', '刘淼', '6', '33', '散文', '2', '2017-09-15 00:22:22', '3', '12', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('25', '找个外国男朋友是个什么体验？没想到，他把我扔进了精神病院', '文｜陶岱 印度电影为什么这么爱唱歌跳舞？是因为印度人民自古以来就有歌舞传统吗？答案远不是这么简单。 从老一代观众熟悉的《大篷车》，到近年大受欢迎的《三傻大闹宝莱坞》，印度电影...', '12', '念远环人', '6', '33', '美食', '16', '2017-08-28 00:23:07', '3', '56', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('26', '天妇罗是油炸虾吗？天妇罗、甜不辣、黑轮和台湾关东煮竟是同一始祖！', '在中国从来没有一个省份，像西藏这样被人们所敬畏和向往。在电影里，它是洗涤心灵的《转山》，是关于信仰的《冈仁波齐》。在小说里，它是浪漫和诗意的《尘埃落定》，是有关失落文明的《藏...', '62', '润泽华', '98', '78', '哲思', '12', '2017-08-07 00:23:43', '62', '263', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('27', '听说，你想要一份高质量的书单', '前两天有好友私信郑少。 对于纯文字的PPT该怎么设计。 经过郑少的思考之后，于是乎总结了一些套路分享给大家。 想要做好纯文字的PPT，需要知道设计的四大基础原则。 即：对齐、...', '6', '溜溜心情的遛马', '56', '33', '散文', '2', '2017-09-25 00:25:07', '566', '132', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('28', '美食坊前', '前两天有好友私信郑少。 对于纯文字的PPT该怎么设计。 经过郑少的思考之后，于是乎总结了一些套路分享给大家。 想要做好纯文字的PPT，需要知道设计的四大基础原则。 即：对齐、...', null, '章涛涛', '56', '526', '美食', '16', '2017-08-21 01:25:13', '53', '32', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('29', '上班这点破事', '文/怀左同学 01 经常有人要我开书单，但我从来不开，原因是我喜欢的，别人不一定接受，或者给人开的书单，对别人不一定起作用。这样一来二去，就会浪费大家的时间。 我上学多年，读...', null, '简书博客', '565', '5656', '上班这点事', '19', '2017-09-04 00:25:20', '23', '223', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('30', '社会的那点事', '在中国从来没有一个省份，像西藏这样被人们所敬畏和向往。在电影里，它是洗涤心灵的《转山》，是关于信仰的《冈仁波齐》。在小说里，它是浪漫和诗意的《尘埃落定》，是有关失落文明的《藏...', null, '简书大学堂', '234', '7897', '社会热点', '17', '2017-09-02 00:25:28', '596', '565', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('31', '摄影师的瞅瞅', '你肯定对这些话很熟悉： “帮个忙都不行，算什么朋友” \"看关系发个红包吧，萍水相逢1元，朋友知己3元，好哥们5元，好姐妹10元，爱人52.1元，暗恋我66元，想跟我一生一世8...', null, '简宝玉', '456', '23', '摄影', '18', '2017-09-01 00:25:33', '656', '6556', './images/note/remi.gif', null, null);
INSERT INTO `t_article` VALUES ('32', '没啥好说的鸡汤', '前两天有好友私信郑少。 对于纯文字的PPT该怎么设计。 经过郑少的思考之后，于是乎总结了一些套路分享给大家。 想要做好纯文字的PPT，需要知道设计的四大基础原则。 即：对齐、...', null, '魏童', '56', '532', '成长励志', '10', '2017-08-31 00:25:37', '456', '53', './images/note/remi.gif', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_classify
-- ----------------------------
INSERT INTO `t_classify` VALUES ('1', '连载小说', '本专题收录的作品类型：各种类别的小说、有特定主题的专栏文章。 投稿指...', '', null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('2', '城市故事', '世界上有那么多的城镇，城镇中有那么多的酒馆，她却偏偏走进了我的酒馆。 ...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('3', '谈写作', '本专题主要收录写作者关于文学写作及其他写作的思考。 投稿须知详情...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('4', '微小说', '本专题收录各种类型微型小说，内容须言之有物，结构完整。 投稿指南：...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('5', '世间事', '「世间事」是一个专门收录故事的专题。 故事包括但不限于：身边故事...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('6', '乡土故事', '投稿须知： 1.本专题收录各种类型乡土故事，内容须真情实感，言之有...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('7', '散文', '一缕墨香伴清茶。 散文专题投稿须知： 1.字数适量。散文虽形式...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('8', '行业故事汇', '金融、互联、快消、广告、教育、媒体、物流、销售......这里有只有行...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('9', '旅行、在路上', '邂逅一座城池，讲述一段故事。 投稿须知： 1.既为旅行，必有拍图，...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('10', '成长励志', '成长励志投稿须知： 1.本专题收录有关成长，蜕变，励志，追梦等文章，...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('11', '大学生活', '本专题收录大学相关文章。要求文内不得带有公众号信息等推广内容。 详细规...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('12', '哲思', '投稿须知: 1、字数不限，收入以哲学思辨（中西方哲学观点和作者本人的...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('13', '谈谈情，说说爱', '柏拉图说每个恋爱中的人都是诗人，这里并不要求你一定要写得诗情画意，态度...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('14', '漫画手绘', '手绘、漫画爱好者分享交流学习的地方 (≧∇≦)ﾉ ，无论高手还是菜鸟都...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('15', '书法', '你好。 见字如面。 这里是简书书法专题。 欢迎每日打卡，我们一起...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('16', '美食', '美食不可辜负。看美食没有配图不幸福啊！请投稿的亲们配图啊！ 详细...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('17', '社会热点', '有思想、有深度、有分享、有见解的热点交流平台，在这里你能寻找到全球最快...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('18', '摄影', '生活本无趣   光影挽留年 用图片 说故事 记录生活 记录美好...', null, null, null, null, null, null, null);
INSERT INTO `t_classify` VALUES ('19', '上班这点事儿', '本专题仅收录求职、简历、换工作、职业规划、招聘、职场干货、上班感悟、管...', null, null, null, null, null, null, null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
INSERT INTO `t_user` VALUES ('101', '123456', '家伟', '男', '我很帅', '', null, null, null, null, null, null, null, null, null, null, '0');
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
