/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : lz

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-10-27 16:21:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lz_city`
-- ----------------------------
DROP TABLE IF EXISTS `lz_city`;
CREATE TABLE `lz_city` (
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`city`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_city
-- ----------------------------
INSERT INTO `lz_city` VALUES ('北京', '1');
INSERT INTO `lz_city` VALUES ('天津', '2');
INSERT INTO `lz_city` VALUES ('上海', '33');
INSERT INTO `lz_city` VALUES ('江苏', '22');
INSERT INTO `lz_city` VALUES ('青海', '1');
INSERT INTO `lz_city` VALUES ('四川', '2');
INSERT INTO `lz_city` VALUES ('海南', '2');
INSERT INTO `lz_city` VALUES ('陕西', '0');
INSERT INTO `lz_city` VALUES ('甘肃', '12');
INSERT INTO `lz_city` VALUES ('云南', '22');
INSERT INTO `lz_city` VALUES ('湖南', '55');
INSERT INTO `lz_city` VALUES ('湖北', '7');
INSERT INTO `lz_city` VALUES ('黑龙江', '6');
INSERT INTO `lz_city` VALUES ('贵州', '7');
INSERT INTO `lz_city` VALUES ('山东', '9');
INSERT INTO `lz_city` VALUES ('江西', '4');
INSERT INTO `lz_city` VALUES ('河南', '80');
INSERT INTO `lz_city` VALUES ('河北', '88');
INSERT INTO `lz_city` VALUES ('山西', '45');
INSERT INTO `lz_city` VALUES ('安徽', '8');
INSERT INTO `lz_city` VALUES ('福建', '5');
INSERT INTO `lz_city` VALUES ('浙江', '6');
INSERT INTO `lz_city` VALUES ('广东', '4');
INSERT INTO `lz_city` VALUES ('重庆', '4');
INSERT INTO `lz_city` VALUES ('吉林', '7');
INSERT INTO `lz_city` VALUES ('辽宁', '77');
INSERT INTO `lz_city` VALUES ('台湾', '4');
INSERT INTO `lz_city` VALUES ('新疆', '5');
INSERT INTO `lz_city` VALUES ('广西', '77');
INSERT INTO `lz_city` VALUES ('宁夏', '8');
INSERT INTO `lz_city` VALUES ('内蒙古', '6');
INSERT INTO `lz_city` VALUES ('西藏', '5');
INSERT INTO `lz_city` VALUES ('香港', '4');
INSERT INTO `lz_city` VALUES ('澳门', '4');
INSERT INTO `lz_city` VALUES ('南海诸岛', '0');

-- ----------------------------
-- Table structure for `lz_indexinfo_hotresource`
-- ----------------------------
DROP TABLE IF EXISTS `lz_indexinfo_hotresource`;
CREATE TABLE `lz_indexinfo_hotresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_indexinfo_hotresource
-- ----------------------------
INSERT INTO `lz_indexinfo_hotresource` VALUES ('1', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('2', '全部', 'first', '1', '陕旅版四年级下册英语期中测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('3', '全部', 'first', '1', 'Unit 8 What can you do? 测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('4', '全部', 'first', '1', 'Unit 7 Be careful 测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('5', '全部', 'first', '1', 'Unit 6 Today is her birthday 测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('6', '全部', 'first', '1', '吉林省长春德惠市第三中学2019——2020学年度上学期九年级月考化学试卷（pdf）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('7', '全部', 'first', '1', 'Unit 5 Where are you going? 测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('8', '全部', 'first', '1', 'Unit 4 What do you do on Saturday? 测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('9', '全部', 'first', '1', 'Unit 3 Is it snowing? 测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('10', '全部', 'first', '1', 'Unit 3 Is it snowing? 测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('11', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('12', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('13', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('14', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('15', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('16', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('17', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('18', '全部', 'first', '1', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('19', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('20', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('21', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('22', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('23', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('24', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('25', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('26', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('27', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('28', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('29', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('30', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('31', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('32', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('33', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('34', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('35', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');
INSERT INTO `lz_indexinfo_hotresource` VALUES ('36', '课件', 'second', '2', '陕旅版四年级下册英语期末测试卷（含答案及听力材料、听力音频）');

-- ----------------------------
-- Table structure for `lz_indexinfo_specialtopic`
-- ----------------------------
DROP TABLE IF EXISTS `lz_indexinfo_specialtopic`;
CREATE TABLE `lz_indexinfo_specialtopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_indexinfo_specialtopic
-- ----------------------------
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('1', 'http://www.caibo919687276.cn/images/SpecialTopic/1-1.jpg', '全部', '备战2020年高考一轮考点解 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('2', 'http://www.caibo919687276.cn/images/SpecialTopic/1-2.jpg', '全部', '2019-2020年初中7~9年级上 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('3', 'http://www.caibo919687276.cn/images/SpecialTopic/1-3.jpg', '全部', '2019-2020年小学1-6年级上 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('4', 'http://www.caibo919687276.cn/images/SpecialTopic/1-4.png', '全部', '2020届高考一轮复习精选资 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('5', 'http://www.caibo919687276.cn/images/SpecialTopic/1-5.png', '全部', '2019年秋季初中7-9年级上 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('6', 'http://www.caibo919687276.cn/images/SpecialTopic/1-6.png', '全部', '2019年秋季小学1-6年级上 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('7', 'http://www.caibo919687276.cn/images/SpecialTopic/1-7.jpg', '全部', '2019最新统编版初中教材同 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('8', 'http://www.caibo919687276.cn/images/SpecialTopic/1-8.jpg', '全部', '2019最新统编版小学教材同 ...', 'first', '1');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('9', 'http://www.caibo919687276.cn/images/SpecialTopic/2-1.jpg', '同步类', '2019-2020年小学1-6年级上 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('10', 'http://www.caibo919687276.cn/images/SpecialTopic/2-2.png', '同步类', '2019年秋季小学1-6年级上 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('11', 'http://www.caibo919687276.cn/images/SpecialTopic/2-3.jpg', '同步类', '2019最新统编版小学教材同 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('12', 'http://www.caibo919687276.cn/images/SpecialTopic/2-4.jpg', '同步类', '2019-2020学年小学上册全 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('13', 'http://www.caibo919687276.cn/images/SpecialTopic/2-5.jpg', '同步类', '2018-2019学年小学下学期 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('14', 'http://www.caibo919687276.cn/images/SpecialTopic/2-6.png', '同步类', '2019年小学下册各科期中考 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('15', 'http://www.caibo919687276.cn/images/SpecialTopic/2-7.jpg', '同步类', '2018-2019学年小学下学期 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('16', 'http://www.caibo919687276.cn/images/SpecialTopic/2-8.jpg', '同步类', '2018-2019学年小学各科各 ...', 'second', '2');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('17', 'http://www.caibo919687276.cn/images/SpecialTopic/3-1.jpg', '期中/期末', '2019-2020年初中7~9年级上 ...', 'third', '3');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('18', 'http://www.caibo919687276.cn/images/SpecialTopic/3-2.jpg', '期中/期末', '2019-2020年小学1-6年级上 ...', 'third', '3');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('19', 'http://www.caibo919687276.cn/images/SpecialTopic/3-3.png', '期中/期末', '2019年秋季初中7-9年级上 ...', 'third', '3');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('20', 'http://www.caibo919687276.cn/images/SpecialTopic/3-4.png', '期中/期末', '2019年秋季小学1-6年级上 ...', 'third', '3');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('21', 'http://www.caibo919687276.cn/images/SpecialTopic/3-5.jpg', '期中/期末', '2018-2019学年小学下学期 ...', 'third', '3');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('22', 'http://www.caibo919687276.cn/images/SpecialTopic/3-6.jpg', '期中/期末', '2018-2019学年初中下学期 ...', 'third', '3');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('23', 'http://www.caibo919687276.cn/images/SpecialTopic/3-7.png', '期中/期末', '2019年小学下册各科期中考 ...', 'third', '3');
INSERT INTO `lz_indexinfo_specialtopic` VALUES ('24', 'http://www.caibo919687276.cn/images/SpecialTopic/3-8.png', '期中/期末', '2019年初中下册各科期中考 ...', 'third', '3');

-- ----------------------------
-- Table structure for `lz_question`
-- ----------------------------
DROP TABLE IF EXISTS `lz_question`;
CREATE TABLE `lz_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testTitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `education` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `teachingMaterial` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `difficult` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `browseTimes` int(11) NOT NULL,
  `img` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_question
-- ----------------------------
INSERT INTO `lz_question` VALUES ('1', '一年级下册语文试题-期末测试-人教部编版', '语文', '2019', '人教版', '小学', '一年级', '人教版,一年级下册', '2019,试题,期末试题', '简单', '常洁琼123', '2020-01-03 04:08:53', '71', 'http://www.caibo919687276.cn/images/question/1-1.jpg@@@http://www.caibo919687276.cn/images/question/1-2.jpg', '258KB');
INSERT INTO `lz_question` VALUES ('2', '人教部编版一年级语文上册第五单元练习（无答案）', '语文', '2020', '人教版', '小学', '一年级', '人教版,一年级上册', '2020,试题,单元测试', '简单', '书527', '2020-01-03 00:47:54', '15', 'http://www.caibo919687276.cn/images/question/2-1.jpg@@@http://www.caibo919687276.cn/images/question/2-2.jpg', '410KB');
INSERT INTO `lz_question` VALUES ('7', '一年级下册语文试题-第二单元试卷（北师大版）', '语文', '2019', '北师大版', '小学', '一年级', '北师大版,一年级下册', '2019,试题,单元测试', '普通', 'ruru2342002', '2019-05-21 22:02:39', '2', 'http://www.caibo919687276.cn/images/question/7-1.jpg', '3340KB');
INSERT INTO `lz_question` VALUES ('8', '一年级上册语文试题-期末测试题 北师大版（2016）（含答案）', '语文', '2018', '北师大版', '小学', '一年级', '北师大版,一年级上册,12成长,语文天地', '试题,期末试题', '普通', 'cwwangqiuy', '2018-12-12 19:45:05', '2', 'http://www.caibo919687276.cn/images/question/8-1.jpg@@@http://www.caibo919687276.cn/images/question/8-2.jpg', '2200KB');
INSERT INTO `lz_question` VALUES ('9', '专项测试（拼音）-小学一年级上册语文无忧单元预测卷（苏教版）', '语文', '2019', '苏教版', '小学', '一年级', '苏教版,一年级上册,汉语拼音', '2019,试题,一课一练', '一般', '山西东社', '2019-09-17 02:19:48', '1', 'http://www.caibo919687276.cn/images/question/9-1.jpg@@@http://www.caibo919687276.cn/images/question/9-2.jpg', '651KB');
INSERT INTO `lz_question` VALUES ('10', '【精品】8.河里的月亮（同步练习及解析）|苏教版-一年级语文上册', '语文', '2016', '苏教版', '小学', '一年级', '苏教版,一年级上册,课文(三),8河里的月亮', '2016,试题,一课一练', '简单', '王立建', '2019-08-20 21:44:20', '2', 'http://www.caibo919687276.cn/images/question/10-1.jpg@@@http://www.caibo919687276.cn/images/question/10-2.jpg', '949KB');
INSERT INTO `lz_question` VALUES ('11', '02练习-小学一年级上册语文无忧单元预测卷（苏教版）', '语文', '2019', '苏教版', '小学', '一年级', '苏教版,一年级上册,汉语拼音,认一认2', '2019,试题,一课一练', '一般', '山西东社', '2019-08-01 22:13:57', '0', 'http://www.caibo919687276.cn/images/question/11-1.jpg@@@http://www.caibo919687276.cn/images/question/11-2.jpg', '763KB');
INSERT INTO `lz_question` VALUES ('3', '一年级上册语文期末试卷 人教新课标 含答案', '语文', '2018', '人教版', '小学', '一年级', '人教版,一年级上册', '2018,试题,期末试题', '普通', 'kangkang12', '2018-06-29 23:57:30', '3', 'http://www.caibo919687276.cn/images/question/3-1.jpg@@@http://www.caibo919687276.cn/images/question/3-2.jpg@@@http://www.caibo919687276.cn/images/question/3-3.jpg', '1966KB');
INSERT INTO `lz_question` VALUES ('4', '【精品】2015—2016学年一年级上语文期末测试卷（含解析）|人教新课标版', '语文', '2016', '人教版', '小学', '一年级', '人教版,一年级上册', '2016,试题,期末试题', '一般', '品题语文工作室', '2016-12-21 18:32:53', '2', 'http://www.caibo919687276.cn/images/question/4-1.jpg@@@http://www.caibo919687276.cn/images/question/4-2.jpg@@@http://www.caibo919687276.cn/images/question/4-3.jpg', '2044KB');
INSERT INTO `lz_question` VALUES ('5', '一年级上册语文试卷-期末测试|人教新课标', '语文', '2017', '人教版', '小学', '一年级', '人教版,一年级上册', '试题,期末试题', '简单', 'snwangfang', '2017-10-10 17:41:22', '3', 'http://www.caibo919687276.cn/images/question/5-1.jpg@@@http://www.caibo919687276.cn/images/question/5-2.jpg@@@http://www.caibo919687276.cn/images/question/5-3.jpg', '758KB');
INSERT INTO `lz_question` VALUES ('6', '一年级上册语文试题 期末语文试题-天津地区-（人教新课标，图片版，含答案）', '语文', '2019', '人教版', '小学', '一年级', '人教版,一年级上册', '试题,期末试题', '普通', '15932297498', '2019-02-21 05:45:36', '3', 'http://www.caibo919687276.cn/images/question/6-1.jpg@@@http://www.caibo919687276.cn/images/question/6-2.jpg@@@http://www.caibo919687276.cn/images/question/6-3.jpg', '130KB');

-- ----------------------------
-- Table structure for `lz_review`
-- ----------------------------
DROP TABLE IF EXISTS `lz_review`;
CREATE TABLE `lz_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_review
-- ----------------------------
INSERT INTO `lz_review` VALUES ('1', '好想吃桃子呀', '2020-02-11 14:21:11', '测试1', '4');
INSERT INTO `lz_review` VALUES ('2', '好想吃桃子呀', '2020-02-11 14:21:12', '测试2', '5');
INSERT INTO `lz_review` VALUES ('3', '好想吃桃子呀', '2020-02-11 14:21:13', '测试3', '3');
INSERT INTO `lz_review` VALUES ('4', '好想吃桃子呀', '2020-02-11 14:21:14', '测试4', '1');
INSERT INTO `lz_review` VALUES ('5', '好想吃桃子呀', '2020-02-11 14:21:15', '测试5', '5');
INSERT INTO `lz_review` VALUES ('6', '好想吃桃子呀', '2020-02-11 14:21:16', '测试6', '2');
INSERT INTO `lz_review` VALUES ('7', '好想吃桃子呀', '2020-02-11 14:21:17', '测试7', '4');
INSERT INTO `lz_review` VALUES ('8', '好想吃桃子呀', '2020-02-14 16:14:27', '测试8', '5');
INSERT INTO `lz_review` VALUES ('9', '好想吃桃子呀', '2020-02-14 16:21:08', '测试9', '4');
INSERT INTO `lz_review` VALUES ('10', '好想吃桃子呀', '2020-02-14 16:26:13', '测试10', '1');
INSERT INTO `lz_review` VALUES ('11', '好想吃桃子呀', '2020-02-14 16:27:19', '测试11', '2');
INSERT INTO `lz_review` VALUES ('12', '好想吃桃子呀', '2020-02-14 16:28:40', '测试12', '3');

-- ----------------------------
-- Table structure for `lz_user`
-- ----------------------------
DROP TABLE IF EXISTS `lz_user`;
CREATE TABLE `lz_user` (
  `user_nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_reg_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_desc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_userimg` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_user
-- ----------------------------
INSERT INTO `lz_user` VALUES ('好想吃桃子呀', '38d72e02d2c9d4fe1cd5fbb0766e265b', '13512265536', '2019-12-11', '测试员01', 'http://www.caibo919687276.cn/images/user/20191217085223.png');

-- ----------------------------
-- Table structure for `lz_video`
-- ----------------------------
DROP TABLE IF EXISTS `lz_video`;
CREATE TABLE `lz_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoTitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `education` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `teachingMaterial` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `browseTimes` int(11) NOT NULL,
  `src` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_video
-- ----------------------------
INSERT INTO `lz_video` VALUES ('1', '一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版', '语文', '部编版', '2019', '视频素材', '小学', '一年级', '人教版,一年级下册,识字（一）,4 猜字谜', '2019,视频,视频素材', 'hongsong114', '2019-01-06 04:04:33', '14', 'http://www.caibo919687276.cn/images/video/一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版.mp4', '218931KB');
INSERT INTO `lz_video` VALUES ('2', '一年级上册语文微课视频-1 秋天 |人教部编版（2016）', '语文', '部编版', '2017', '微课堂', '小学', '一年级', '部编版,一年级上册,课文（一）,1 秋天', '2017,视频,微课堂', 'zj0609', '2017-11-10 11:20:41', '5', 'http://www.caibo919687276.cn/images/video/一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版.mp4', '56134KB');
INSERT INTO `lz_video` VALUES ('3', '一年级上语文动画视频-拼音儿歌|人教新课标', '语文', '人教版', '2016', '视频素材', '小学', '一年级', '人教版,一年级上册,汉语拼音', '视频,视频素材', 'panzhoujian', '2016-08-30 18:07:00', '4', 'http://www.caibo919687276.cn/images/video/一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版.mp4', '1534KB');
INSERT INTO `lz_video` VALUES ('4', '一年级上册语文微课视频 - 1 a o e 认识单韵母 l 人教部编版', '语文', '部编版', '2018', '微课堂', '小学', '一年级', '部编版,一年级上册,汉语拼音,1aoe', '2019,视频,微课堂', 'anan411', '2018-05-20 08:38:51', '2', 'http://www.caibo919687276.cn/images/video/一年级上册语文微课视频 - 1 a o e 认识单韵母  l  人教部编版.mp4', '30254KB');
INSERT INTO `lz_video` VALUES ('5', '二年级下册语文课文情景朗读- 4 植树②一片树叶 l 北师大版2016', '语文', '北师大版', '2019', '视频素材', '小学', '一年级', '北师大版,一年级下册,4 植树,②一片树叶', '2019,视频,视频素材', 'anan422', '2019-07-07 16:21:43', '5', 'http://www.caibo919687276.cn/images/video/二年级下册语文课文情景朗读- 4 植树②一片树叶  l  北师大版2016.mp4', '23758KB');
INSERT INTO `lz_video` VALUES ('6', '一年级下册语文课文情景朗读- 11.1丁丁和牵牛花 l 北师大版2016', '语文', '北师大版', '2019', '视频素材', '小学', '一年级', '北师大版,一年级下册,11愿望,①丁丁和牵牛花', '2019,视频,视频素材', 'dguyah', '2019-07-07 08:50:27', '1', 'http://www.caibo919687276.cn/images/video/一年级下册语文课文情景朗读- 11.1丁丁和牵牛花  l  北师大版2016.mp4', '9374KB');
INSERT INTO `lz_video` VALUES ('7', '一年级下册语文视频课堂实录-13.2《小闹钟》北师大版（2016）（泉州市优课）', '语文', '北师大版', '2018', '微课堂', '小学', '一年级', '北师大版,一年级下册,13 时间,②小闹钟', '2018,视频,微课堂', '流浪客', '2018-12-31 11:24:26', '1', 'http://www.caibo919687276.cn/images/video/一年级下册语文视频课堂实录-13.2《小闹钟》北师大版（2016）（泉州市优课）.mp4', '445701KB');
INSERT INTO `lz_video` VALUES ('8', '一年级上册语文视频课堂实录《字与画》北师大版（2016）', '语文', '北师大版', '2018', '视频素材', '小学', '一年级', '北师大版,一年级上册,1 字与画', '2018,视频,视频素材', '流浪客', '2018-12-16 10:01:41', '1', 'http://www.caibo919687276.cn/images/video/一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版.mp4', '172660KB');
INSERT INTO `lz_video` VALUES ('9', '一年级下册语文微课- 2 春笋 — 积累量词 l 苏教版2016', '语文', '苏教版', '2019', '微课堂', '小学', '一年级', '苏教版,一年级下册,课文（一）,2 春笋', '2019,视频,微课堂', '78548444', '2019-06-09 10:31:47', '1', 'http://www.caibo919687276.cn/images/video/一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版.mp4', '6705KB');
INSERT INTO `lz_video` VALUES ('10', '一年级下册语文词语听写素材- 4世界多美呀 l 苏教版2016', '语文', '苏教版', '2016', '视频素材', '小学', '一年级', '苏教版,一年级下册,课文（一）,4 世界多美啊', '2019,视频,视频素材', '河神03', '2016-06-09 10:09:40', '0', 'http://www.caibo919687276.cn/images/video/一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版.mp4', '1286KB');
INSERT INTO `lz_video` VALUES ('11', '一年级下册语文听写素材- 18拔萝卜 l 西师大版2016', '语文', '西师大版', '2019', '视频素材', '小学', '一年级', '西师大版,一年级下册,课文4,拔萝卜', '2019,视频,视频素材', 'gold', '2019-07-06 16:57:48', '0', 'http://www.caibo919687276.cn/images/video/一年级下册语文课堂实录-第一单元 4 猜字谜 -人教部编版.mp4', '1146KB');

-- ----------------------------
-- Table structure for `lz_visitor_record`
-- ----------------------------
DROP TABLE IF EXISTS `lz_visitor_record`;
CREATE TABLE `lz_visitor_record` (
  `day` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `accessUser` int(20) DEFAULT NULL,
  `newMember` int(20) DEFAULT NULL,
  PRIMARY KEY (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lz_visitor_record
-- ----------------------------
INSERT INTO `lz_visitor_record` VALUES ('2020-02-20', '105', '3');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-19', '82', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-18', '40', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-17', '66', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-16', '70', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-15', '110', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-14', '94', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-21', '80', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-22', '52', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-23', '57', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-24', '50', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-25', '44', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-26', '51', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-27', '65', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-28', '32', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-02-29', '11', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-01', '5', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-02', '11', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-03', '5', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-04', '10', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-05', '8', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-06', '11', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-07', '7', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-08', '6', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-09', '3', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-10', '5', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-11', '9', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-12', '12', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-13', '4', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-14', '5', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-15', '6', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-16', '5', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-17', '6', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-18', '6', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-19', '4', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-03', '3', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-02', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-01', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-31', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-30', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-29', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-03-28', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-05', '1', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-04', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-09', '2', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-08', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-07', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-06', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-11', '1', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-10', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-13', '1', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-12', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-23', '7', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-22', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-21', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-20', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-19', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-18', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-17', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-04-24', '1', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-09', '4', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-08', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-07', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-06', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-05', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-04', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-03', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-11', '4', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-10', '0', '0');
INSERT INTO `lz_visitor_record` VALUES ('2020-05-12', '4', '0');
