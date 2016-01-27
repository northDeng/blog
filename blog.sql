/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-01-14 23:42:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `article` text NOT NULL,
  `title` varchar(64) NOT NULL,
  `articleclass` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `articleclass` (`articleclass`),
  CONSTRAINT `articleclass` FOREIGN KEY (`articleclass`) REFERENCES `articleclass` (`articleclass`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', 'admin', '释放天性是一件很有意思的事情，也是电子系节目本身能够nb的很重要原因。主持人、各个节目都要求演员释放天性，下面是一些筹备组常用的手段 :)\r\n\r\n1. 一个人在阳台对着外面大声喊“爸爸妈妈我爱你们”等等，演员一般到最后就会喊一些自己的东西了 :)\r\n2. 男女主角相隔50米，在人多的地方大声呼喊“你能听见吗”“听见了吗？”“我爱你”\r\n3. 还是露天，男女主角站在一个小圈子里面，对视3分钟。然后互相说50遍“我爱你”\r\n4. 男1号跟男2号拥抱在一起说台词，直到想吐都吐不出（《包青天》里面ws和wc据说就在小树林抱了好几个晚上...上台的表演彻底放开了）\r\n5. 每天晚上11点后露天排练，放开声音\r\n……\r\n\r\n每次学生节，导演组的导演们都要求入选的各个剧组进行这方面的强化训练，为的就是在台上能更好的表现自己，入戏。这些训练事后的影响自然也是多方面的 :)\r\n\r\n1. 很多演员学生节以后性格更开朗了，参加各种面试更加放得开了\r\n2. 男生越来越ws了..... 胆子越来越大\r\n3. 女生嘛，更加活泼了，朋友圈子扩大了\r\n4. 很多男女主角真的成了一对，娃哈哈~~~\r\n……\r\n\r\n	<p class=\"content\">\r\n释放天性是一件很有意思的事情，也是电子系节目本身能够nb的很重要原因。主持人、各个节目都要求演员释放天性，下面是一些筹备组常用的手段 :)<br>\r\n<br>\r\n1. 一个人在阳台对着外面大声喊“爸爸妈妈我爱你们”等等，演员一般到最后就会喊一些自己的东西了 :)<br>\r\n2. 男女主角相隔50米，在人多的地方大声呼喊“你能听见吗”“听见了吗？”“我爱你”<br>\r\n3. 还是露天，男女主角站在一个小圈子里面，对视3分钟。然后互相说50遍“我爱你”<br>\r\n4. 男1号跟男2号拥抱在一起说台词，直到想吐都吐不出（《包青天》里面ws和wc据说就在小树林抱了好几个晚上...上台的表演彻底放开了）<br>\r\n5. 每天晚上11点后露天排练，放开声音<br>\r\n……<br>\r\n<br>\r\n每次学生节，导演组的导演们都要求入选的各个剧组进行这方面的强化训练，为的就是在台上能更好的表现自己，入戏。这些训练事后的影响自然也是多方面的 :)<br>\r\n<br>\r\n1. 很多演员学生节以后性格更开朗了，参加各种面试更加放得开了<br>\r\n2. 男生越来越ws了..... 胆子越来越大<br>\r\n3. 女生嘛，更加活泼了，朋友圈子扩大了<br>\r\n4. 很多男女主角真的成了一对，娃哈哈~~~<br>\r\n……<br>\r\n<br>\r\n释放天性，魅力无穷!!\r\n			</p>', '学生节(6)_释放天性', '学生节');
INSERT INTO `article` VALUES ('3', 'admin', '<p class=\"content\">\r\n12月7日下午，我正在后台跟主持人们闲聊的时候，接到了来自美国伯克利的电话。beep，8字班师兄，胖乎乎圆溜溜的，当年的山西高考状元，考前一个礼拜从零开始学习就拿到微所NO.1，中文名字看上去跟linear是两口子，硕士阶段修完了所有社会学课程去了伯克利读社会学，自由空间前任站长，站规的起草者，电子系nb的学生节创始人之一，在今年学生节开始前从遥远的大洋彼岸给我送来了第一时间的祝福。<br>\r\n<br>\r\n电话的信号并不是特别清晰，但他雌性的声音很快穿透了整个后台 :) “哎呀呀，你们今年真是辛苦啊，我看不到啦...”，我也嘻嘻笑笑的跟他扯皮了一阵，当时的确让我很惊喜。想想电子的学生节能走到今天，linear和beep应该算头功，当年《一起走到》就是他们首先以非学生会的身份介入的，元老级人物啊。<br>\r\n<br>\r\n现在仔细想想，筹备组这票人还真是个个nb啊，学生节作为业余爱好，平时都忙着各自的学习、事业、生活，每年到这个时候大家都聚到一起，为了这温暖、忙碌的舞台而奋斗。或许就像reconzansp说的，电子学生节nb这么多年了，平时自己都在外面忙碌，每到这个时候，就是希望跟大伙见见，聊聊天，所以一块努力做好这台晚会。<br>\r\n<br>\r\n也许将来，当我作为观众在台下，看着周围一个个熟悉而又渐渐苍老的面孔，兴奋、喜悦、怀念......\r\n			</p>', '学生节(5)_beep的越洋电话', '学生节');
INSERT INTO `article` VALUES ('4', 'admin', '<p class=\"content\">\r\n今年主持人上面，筹备组第一次采用了大规模的全系海选，报名的人数多达50+，远远超出了我们的估计。因此在一审的第二天，我们安排了整整一天的时间进行评选，每人10分钟左右。事实证明，这样的选拔是正确的，应该继续发扬下去。<br>\r\n<br>\r\n首先从海选主持的第一题，我们收集到了很多观众对于电子学生节的反馈。其次从报名表上参选者的个人信息，我们了解到了很多电子的相关人才，太牛了，电子系真的人才辈出，这话一点都不假。再次通过选拔主持人，相当于让更多观众提前参与到学生节中，同时在系里渲染了学生节的氛围。<br>\r\n<br>\r\n我记得当时讨论的时候，我们首先一致咬定今年用4位，在具体人选上则产生了较大的分歧，经过大家1个多小时的投票、辩论、再投票、再辩论，最终才确定下来。shanghen、venessawj、winidea、clshlmch在跟我和ttt单独面谈后最终成为了今年的主持。然后就是设计各个主持段子，主要思路就是绝对不能报幕，必须融入到节目中。4个人很容易做简单的小话剧，ttt挑起了文案组的大梁，加上AR的全心投入，今年的主持得到了观众的认可，至少目前我看到的网上评论是这样的，不光是stage和特快上的，一些班板，就是那些网友认为大多数人不会关心，可以畅所欲言的版面也有类似的赞扬~~，让我很欣慰，估计ttt比我更乐，呵呵。<br>\r\n<br>\r\n在今年的主持段子中，我个人很喜欢蒲公英前面... <br>\r\n......\r\n			</p>', '学生节(4)_主持人选拔', '学生节');

-- ----------------------------
-- Table structure for `articleclass`
-- ----------------------------
DROP TABLE IF EXISTS `articleclass`;
CREATE TABLE `articleclass` (
  `id` int(11) NOT NULL auto_increment,
  `articleclass` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`,`articleclass`),
  KEY `articleclass` (`articleclass`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articleclass
-- ----------------------------
INSERT INTO `articleclass` VALUES ('4', 'Ajax学习心得');
INSERT INTO `articleclass` VALUES ('3', 'CSS样式风格');
INSERT INTO `articleclass` VALUES ('1', '个人随笔');
INSERT INTO `articleclass` VALUES ('6', '学生节');
INSERT INTO `articleclass` VALUES ('5', '新疆甘肃游记');
INSERT INTO `articleclass` VALUES ('2', '美术设计');
INSERT INTO `articleclass` VALUES ('7', '职业生涯');

-- ----------------------------
-- Table structure for `blogregister`
-- ----------------------------
DROP TABLE IF EXISTS `blogregister`;
CREATE TABLE `blogregister` (
  `StuNum` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `StuName` varchar(32) NOT NULL,
  `zhuanye` varchar(32) NOT NULL,
  `banji` varchar(32) NOT NULL,
  `sex` varchar(4) NOT NULL default '男',
  `email` varchar(32) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `qq` int(11) NOT NULL,
  `zyxxcj` text NOT NULL,
  `hjqk` text NOT NULL,
  `shsj` text NOT NULL,
  PRIMARY KEY  (`StuNum`),
  UNIQUE KEY `StuName` USING BTREE (`StuName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogregister
-- ----------------------------
INSERT INTO `blogregister` VALUES ('0001321086', '123', 'LWY', '计算机', '1', '男', '1033846474@qq.com', '18930521855', '1033846474', '123', '123', '123');
INSERT INTO `blogregister` VALUES ('0505070101', 'qaz112233', 'chris', '市场营销', '4', '男', '1577206320@qq.com', '13105749645', '56254', 'fdfd', 'adfa', 'dfadfas');
INSERT INTO `blogregister` VALUES ('0505070102', 'a11111', 'wang', '计算机', '1', '男', '1311621845@qq.com', '13262555555', '13', '0', '0', '0');
INSERT INTO `blogregister` VALUES ('0505070104', 'DT19950712', '邓涛', '市场营销', '13', '男', '1340652578@qq.com', '15600266816', '1340652578', '撒旦', '阿萨德', '阿萨德');
INSERT INTO `blogregister` VALUES ('0505070108', '123456', 'DT', '市场营销', '111', '男', '1340652578@qq.com', '15600266816', '5456', 'FHKJDSHF', 'hskfjsh', '舒服了看法');
INSERT INTO `blogregister` VALUES ('0505070111', '111', '对的', '市场营销', '13', '男', '134065@qq.com', '15600266816', '1340652578', '的商贩', '爱上对方会尽快了', '大好时机开发');
INSERT INTO `blogregister` VALUES ('0505070112', '111', '对', '市场营销', '13', '男', '134065@qq.com', '15600266816', '1340652578', '的商贩', '爱上对方会尽快了', '大好时机开发');
INSERT INTO `blogregister` VALUES ('0505070113', '111', '啊', '市场营销', '13', '男', '134065@qq.com', '15600266816', '1340652578', '的商贩', '爱上对方会尽快了', '大好时机开发');
INSERT INTO `blogregister` VALUES ('0505070114', '111', '阿萨德', '市场营销', '13', '男', '134065@qq.com', '15600266816', '1340652578', '的商贩', '爱上对方会尽快了', '大好时机开发');
INSERT INTO `blogregister` VALUES ('0505070115', '123', 'ad', '市场营销', '13', '男', '134065@qq.com', '15600266816', '1340652578', '的商贩', '爱上对方会尽快了', '大好时机开发');
INSERT INTO `blogregister` VALUES ('0505070116', '123', 'ad大师傅', '市场营销', '13', '男', '134065@qq.com', '15600266816', '1340652578', '的商贩', '爱上对方会尽快了', '大好时机开发');
INSERT INTO `blogregister` VALUES ('0505070122', '123', '大神', '市场营销', '13', '男', '132@qq.com', '15600266816', '1340652578', 'dsaf', 'adsf', 'adsf');
INSERT INTO `blogregister` VALUES ('0505070123', '123', '大神撒', '市场营销', '13', '男', '132@qq.com', '15600266816', '1340652578', 'dsaf', 'adsf', 'adsf');

-- ----------------------------
-- Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `count` int(11) default '0',
  `title` varchar(32) default NULL,
  PRIMARY KEY  (`id`,`name`),
  KEY `name` (`name`),
  CONSTRAINT `name` FOREIGN KEY (`name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`name`) REFER `blog/user`(`name`)';

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('3', 'admin', 'sad', '2', '学生节(6)_释放天性');
INSERT INTO `content` VALUES ('4', 'admin', 'afds', '1', '学生节(6)_释放天性');
INSERT INTO `content` VALUES ('5', '0505070102', 'shab  ', '1', '学生节(6)_释放天性');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `level` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`,`name`),
  UNIQUE KEY `name` USING BTREE (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '1');
INSERT INTO `user` VALUES ('2', 'user', '123456', '0');
INSERT INTO `user` VALUES ('3', '0505070108', '123456', '0');
INSERT INTO `user` VALUES ('4', '0505070101', 'qaz112233', '0');
INSERT INTO `user` VALUES ('7', '0505070111', '111', '0');
INSERT INTO `user` VALUES ('8', '0505070112', '111', '0');
INSERT INTO `user` VALUES ('9', '0505070113', '111', '0');
INSERT INTO `user` VALUES ('10', '0505070114', '111', '0');
INSERT INTO `user` VALUES ('11', '0505070115', '123', '0');
INSERT INTO `user` VALUES ('12', '0505070116', '123', '0');
INSERT INTO `user` VALUES ('13', '0505070122', '123', '0');
INSERT INTO `user` VALUES ('14', '0505070123', '123', '0');
INSERT INTO `user` VALUES ('15', '0505070102', 'a11111', '0');
INSERT INTO `user` VALUES ('16', '0505070104', 'DT19950712', '0');
