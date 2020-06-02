/*
 Navicat Premium Data Transfer

 Source Server         : localhost_MySql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : resume-resolver

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 02/06/2020 22:24:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cv_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `cv_basic_info`;
CREATE TABLE `cv_basic_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cv_resolve_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标志为同一份简历',
  `info_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `info_value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '年龄',
  `upload_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1790 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cv_basic_info
-- ----------------------------
INSERT INTO `cv_basic_info` VALUES (1690, NULL, '姓名', '黄杨阳', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1691, NULL, '年龄', '28', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1692, NULL, '性别', '男学历本科', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1693, NULL, '电话', '180-8405-4652', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1694, NULL, '邮箱', '2459593393@qq.com', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1695, NULL, '籍贯', '重庆', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1696, NULL, '工作年限', '3年半应聘', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1697, NULL, '职位', '位Java开发工程师期望薪资20000~25000', 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_basic_info` VALUES (1698, NULL, '微信号', '：xp13260516561', '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1699, NULL, '户口/国籍', NULL, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1700, NULL, '户口/国籍', NULL, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1701, NULL, '国籍', '：武汉', '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1702, NULL, '身高', '：175cm', '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1703, NULL, '婚姻状况', NULL, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1704, NULL, '婚姻状况', '：未婚', '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1705, NULL, '家庭地址', '：湖北省武汉市新洲区', '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1706, NULL, '政治面貌', '治面貌：共青团员目前年收入10万元（包含基本工资、补贴、奖金、股权收益等） ', '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_basic_info` VALUES (1707, NULL, '姓名', '：高洁', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1708, NULL, '性别', '：女', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1709, NULL, '手机号码', '：15201638691', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1710, NULL, '年龄', '：30岁', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1711, NULL, '电子邮件', '：rui.xiang666@163.com', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1712, NULL, '教育程度', '：本科', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1713, NULL, '工作年限', '：8年', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1714, NULL, '婚姻状况', NULL, '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1715, NULL, '婚姻状况', '：保密', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1716, NULL, '职业状态', '：离职，正在找工作', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1717, NULL, '所在地', '：北京', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1718, NULL, '国籍', '：中国', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1719, NULL, '目前职业概况', '：所在行业：互联网/移动互联网/电子商务公司名称：光载无限（北京）科技有限公司所任职位：测试主管目前年薪：保密职业发展意向：期望', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1720, NULL, '行业', '：互联网/移动互联网/电子商务公司名称：光载无限（北京）科技有限', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1721, NULL, '公司', '名称：光载无限（北京）科技有限公司所任职位：测试主管目前年薪：保密职业发展意向：期望行业：计算机软件期望', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1722, NULL, '职位', '位：测试主管目前年薪：保密职业发展意向：期望行业：计算机软件期望职位：测试经理/主管期望地点：北京期望年薪：面议', '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_basic_info` VALUES (1723, NULL, '户口/国籍', NULL, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_basic_info` VALUES (1724, NULL, '户口/国籍', NULL, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_basic_info` VALUES (1725, NULL, '国籍', '：武汉 ', '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_basic_info` VALUES (1726, NULL, '婚姻状况', NULL, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_basic_info` VALUES (1727, NULL, '婚姻状况', '姻状况：未婚 目前年收入12万元（包含基本工资、补贴、奖金、股权收益等） ', '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_basic_info` VALUES (1728, NULL, '姓名', '：任万辉', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1729, NULL, '性别', '：男', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1730, NULL, '手机号码', '：15210460217', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1731, NULL, '年龄', '：27岁', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1732, NULL, '电子邮件', '：15210460217@163.com', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1733, NULL, '教育程度', '：本科', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1734, NULL, '工作年限', '：2年', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1735, NULL, '婚姻状况', NULL, '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1736, NULL, '婚姻状况', '：未婚', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1737, NULL, '职业状态', '：在职，看看新机会', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1738, NULL, '所在地', '：北京-昌平区', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1739, NULL, '国籍', '：中国户籍：德州', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1740, NULL, '目前职业概况', '：所在行业：计算机软件公司名称：中通服软件科技有限公司所任职位：开发工程师目前年薪：保密职业发展意向：期望', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1741, NULL, '行业', '：计算机软件公司名称：中通服软件科技有限', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1742, NULL, '公司', '名称：中通服软件科技有限公司所任职位：开发工程师目前年薪：保密职业发展意向：期望行业：计算机软件期望', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1743, NULL, '职位', '位：开发工程师目前年薪：保密职业发展意向：期望行业：计算机软件期望职位：软件工程师期望地点：北京期望年薪：保密', '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_basic_info` VALUES (1744, NULL, '姓名', '：张云峰民族：汉', 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_basic_info` VALUES (1745, NULL, '性别', '：男', 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_basic_info` VALUES (1746, NULL, '电话', '：15000923843', 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_basic_info` VALUES (1747, NULL, '邮箱', '：15000923843@163.com住址：上海杉达学院', 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_basic_info` VALUES (1748, NULL, '年龄', '：25', 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_basic_info` VALUES (1749, NULL, '身高', '：173cm户籍：皖', 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_basic_info` VALUES (1750, NULL, '政治面貌', '治面貌：团员毕业院校：上海杉达学院学历：本科奖状及技能证书（MeritandSkillscertificate）英语四级CET-4：517分、英语六级CET-6：440分良好的听说读写能力计算机二级考试、C语言二级熟练运用office相关软件校级综合学金（二等奖）高等数学二等奖', 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_basic_info` VALUES (1751, NULL, '专业', '/上海建桥学院', '4c206621ca614b938fa4f82aa7120114');
INSERT INTO `cv_basic_info` VALUES (1752, NULL, '工作年限', '：2年期望', '4c206621ca614b938fa4f82aa7120114');
INSERT INTO `cv_basic_info` VALUES (1753, NULL, '职位', '：后端开发（Java/Golang）联系方式手机：17521342181Email：ahmczsy@gmail.com', '4c206621ca614b938fa4f82aa7120114');
INSERT INTO `cv_basic_info` VALUES (1754, NULL, '微信号', '信号：ahmczsy 技能清单语言：Java：熟悉数据结构、理解java编程中基本知识。如注解、反射、IO、持久化、线程，线程池等Golang：熟练掌握slice、map、tag、channel、协程、接口、struct、sync包下并发组件框架：Golang:Gin/XormJava:Spring/SpringBoot/Mybatis/Mina(类似Netty)数据库相关：MySQL，熟悉MySQL的索引优化数据传输：熟悉HTTP，有使用Mina进行TCP和WebSocket开发经验，熟悉Protobuf、JSON数据格式和序列化方式版本管理、文档和自动化部署工具：Svn/Git/Maven/Gomodule/Jenkins云和开放平台：微信小程序开发/腾讯云Linux：熟练掌握Ubuntu/CentOS发行版的操作及搭建、有项目维护经验。', '4c206621ca614b938fa4f82aa7120114');
INSERT INTO `cv_basic_info` VALUES (1755, NULL, '姓名', '黄杨阳', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1756, NULL, '年龄', '28', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1757, NULL, '性别', '男学历本科', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1758, NULL, '电话', '180-8405-4652', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1759, NULL, '邮箱', '2459593393@qq.com', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1760, NULL, '籍贯', '重庆', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1761, NULL, '工作年限', '3年半应聘', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1762, NULL, '职位', '位Java开发工程师期望薪资20000~25000', '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_basic_info` VALUES (1763, NULL, '姓名', '：梁闯', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1764, NULL, '性别', '：男出生日期：1994.06', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1765, NULL, '籍贯', '：河南信阳', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1766, NULL, '婚姻状况', NULL, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1767, NULL, '婚姻状况', '：未婚', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1768, NULL, '工作年限', '：1.5年', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1769, NULL, '专业', '：软件工程英语：良好应聘方向求职', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1770, NULL, '行业', '：计算机软件、互联网应聘', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1771, NULL, '职位', '位：Java开发工程师求职地点：上海期望薪资：10000-15000元/月IT技能有扎实的的Java语言基础，良好的业务逻辑分析能力，熟悉常用的设计模式。熟练使用Spring、SpringMVC、MyBatis、SpringBoot、Spring-Data-JPA、Struts2等主流框架。了解SpringBoot、SpringCloud等衍生的敏捷开发技术，分布式、微服务架构设计开发技术熟悉RESTful架构风格。熟练掌握Shiro安全框架进行登陆认证授权。熟练掌握Oracle、MySql等数据库开发应用。熟练掌握MySql数据库优化，SQL语句调优。熟练使用NoSQL非关系性数据库Redis进行数据缓存操作，了解Redis分布式锁。熟练使用Ecplise、Idea编程工具进行开发。熟练使用NavicatPremium、Navicat、PLSQL等数据库开发工具进行数据的开发。熟悉使用Maven管理项目的构建。熟练使用Git等版本控制管理工具。熟练掌握Linux项目运行环境搭建，Nginx静态资源服务器、负载均衡代理服务器配置。熟悉Tomcat集群实现原理，并使用提高服务的性能。了解RabbitMq消息中间件的基本使用。了解掌握Docker容器技术在微服务架构中的应用。了解Jeckins的基本使用，进行项目自动化部署。', '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_basic_info` VALUES (1772, NULL, '姓名', '黄杨阳', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1773, NULL, '年龄', '28', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1774, NULL, '性别', '男学历', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1775, NULL, '本科', '', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1776, NULL, '电话', '180-8405-4652', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1777, NULL, '邮箱', '2459593393@qq.com', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1778, NULL, '籍贯', '重庆', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1779, NULL, '工作年限', '3年半应聘', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1780, NULL, '职位', '位Java开发工程师期望薪资20000~25000', '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_basic_info` VALUES (1781, NULL, '性别', '：男', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1782, NULL, '年龄', '：22民族：汉毕业院校：上海第二工业大学专业：电子信息工程学历：本科籍贯：江苏现所在地：上海政治面貌：团员邮箱：377905356@qq.com联系地址：上海市教育背景2015.9---2019.6上海第二工业大学（电子信息工程）', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1783, NULL, '专业', '：电子信息工程学历：', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1784, NULL, '本科', '', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1785, NULL, '籍贯', '：江苏现', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1786, NULL, '所在地', '：上海', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1787, NULL, '政治面貌', '：团员', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1788, NULL, '邮箱', '：377905356@qq.com联系地址：上海市教育背景2015.9---2019.6上海第二工业大学（电子信息工程）专业课程：单片机原理与应用信号与系统语音信号处理模拟电子技术数字电子技术数据结构与算法光通信技术与应用数据通信与计算机网络个人技能具备基础的英语交流能力（CET-4证书CET-6证书）；熟悉C语言（计算机C程序设计二级证书），python，熟悉嵌入式掌握keiluVision5、Dev-C++，vs的运用；具备良好的语言沟通能力（普通话二级甲等）；', '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_basic_info` VALUES (1789, NULL, '熟悉', '悉C语言（计算机C程序设计二级证书），python，熟悉嵌入式掌握keiluVision5、Dev-C++，vs的运用；具备良好的语言沟通能力（普通话二级甲等）；熟悉word，excel等办公软件个人荣誉2016-2017大二学年校三等奖学金2017-2018大三学年校三等奖学金2017-2018优秀团员个人经历2017.5—2017.1051单片机刷卡机模块移植2018.3—2018.10儿童防丢失智能设备模块移植', '37d695d684ef459e9337ed0c066ef92d');

-- ----------------------------
-- Table structure for cv_info
-- ----------------------------
DROP TABLE IF EXISTS `cv_info`;
CREATE TABLE `cv_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '简历解析信息表，存简历的解析信息，简历码，附加信息',
  `rule_id` int(255) NULL DEFAULT NULL COMMENT '规则id',
  `cv_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新简历名字',
  `original_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '初始简历名',
  `upload_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cv_info
-- ----------------------------
INSERT INTO `cv_info` VALUES (219, NULL, '1234634【Java开发工程师 _ 上海15-24K】张云峰 2年.pdf', '【Java开发工程师 _ 上海15-24K】张云峰 2年.pdf', 'ee270914f5024a80bb126e897b8a4f18', '201907291739');
INSERT INTO `cv_info` VALUES (221, NULL, '123446java-梁闯-拉勾招聘.pdf', 'java-梁闯-拉勾招聘.pdf', '0fc7ab640812465c82512c5890d25b64', '201907291739');
INSERT INTO `cv_info` VALUES (226, NULL, '1234940【Java开发工程师 _ 上海15-24K】黄杨阳 4年.docx', '【Java开发工程师 _ 上海15-24K】黄杨阳 4年.docx', '76355abc05d94813ac046679095efd26', '201907301131');

-- ----------------------------
-- Table structure for cv_word
-- ----------------------------
DROP TABLE IF EXISTS `cv_word`;
CREATE TABLE `cv_word`  (
  `cv_resolve_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历解析id，是cv_info的id',
  `model_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模块值，内容',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1453 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cv_word
-- ----------------------------
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '姓名黄杨阳年龄28性别男学历本科电话180-8405-4652邮箱2459593393@qq.com籍贯重庆工作年限3年半应聘职位Java开发工程师期望薪资20000~25000', 1386, 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '熟练Struts2+Spring+Hibernate，SpringMVC+Spring+Mybatis等主流开发框架熟悉hibernate，mybatis持久层框架的开发以及spring容器的IOC，DI，AOP等熟悉HTML、CSS、Jquery、EasyUI、Bootstrap等前端技术熟练JSP、Servlet、Filter、Listener、Cookie、Session、EL表达式、JSTL等技术熟悉MySQL、了解Oracle数据库，能够进行简单的PL/SQL开发，了解MySQL数据库的优化熟悉Maven、SVN、Git，了解Gradle了解Redis、ActiveMQ、Solr、Shiro，Mongodb，Memcached了解SOA架构、Nginx、fastDFS、Dubbo、Quartz了解Linux常用命令熟悉go基础语法，简单使用python，php了解docker，springboot，elasticsearch，solr', 1387, 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '2019/3-2019/6上海趣凡科技技术部后端开发工程师	App接口开发系统上线与功能测试2018/5-2019/1上海哔哩哔哩技术部后端开发工程师	主要从事软件编码与维护工作前端页面设计与bug修复系统上线与功能测试2017/8-2018/5成都愚创科技开发部Java开发工程师主要从事软件编码与维护工作负责接口编写与三方联调前端页面设计与bug修复系统上线与功能测试2015/12-2017/8成都艾萌科技研发部Java开发工程师主要从事软件编码工作负责接口编写与三方联调页面功能测试，编写操作手册', 1388, 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '趣点评App2018/5-2019/1开发环境：IDEA，Git，JDK1.8项目描述：类似小型大众点评的app,用于美食推广，发布种草，评论等项目职责：用户模块，搜索模块开发技术点：solr,elasticsearch7,springbootPassport账号系统/Account管理系统2018/5-2019/1开发环境：IDEA，Git，JDK1.8，统一使用Mac电脑开发，python，php，java，go项目描述：此项目是哔哩哔哩账号项目，目前该账号系统已经拥有3亿注册账号，日活跃用户数百万https://www.bilibili.com项目职责：维护用户的基础信息（勋章、挂件、头像、实名认证、账号找回等）修复线上bug，日常需求迭代，编写文档，单元测试用户实名认证项目迁移使用Java/golang进行项目的需求迭代，php迁移，作为controller层透传接口，python脚本临时修复/同步db数据技术点：java，golang，公司封装的框架SMT收银系统2018/2-2018/5开发环境：IDEA，Tomcat8.5，MySQL5.7，SVN，JDK1.8项目描述：收银系统，给门店，商家线下支付宝/微信刷卡支付公司以springjdbcTemplate为基础封装的一套以JSON对象的Dao层查询，以动态代理+反射为基础+数据库配置+dubbo为底层核心+zookeeper实现web（SpringMVC）层与service通信及方法调用，前端采用vue.js，数据库mongoDB,mysql项目职责：订单、商品，权限管理等模块开发，solr服务搭建功能测试，简单页面修改技术点：前后台均使用公司封装的框架ESOP系统维护与开发：2017/08-2018/1开发环境：IDEA、Eclipse、Tomcat、MySQL项目描述：中国移动集团客户业务综合运营平台（ESOP）是通过对已有系统功能的能力化封装与集成，通过统一的门户界面给系统使用者提供综合、一站式的服务。ESOP系统围绕一套公共的CRM系统整合移动的业务，老版本使用eframework2.0(公司封装的)+jsp自定义标签+ibatis+bpm（公司产品）进行移动业务办理的流程推进。由于业务复杂，不易维护，后续业务分隔成子系统采用SpringBoot+Mybatis进行开发，老版本只负责提供连接地址。项目职责：编写接口文档，写功能测试用例，客户使用手册，项目上线，APP的H5页面编写后台编码，前台页面进行数据的展示，导入，导出以及调用bpm接口进行流程审批技术点：前后台均使用公司封装的框架关键字SQL、SSH/M、AJAX、JS、JSON、jQuery、Bootstrap、SVN、MAVEN、MyEclipse、Java、Tomcat、Linux、quartz海尔云贷开放平台：2016/10-2017/8开发环境：Eclipse、Tomcat、MySQL项目描述：小贷系统与门户系统通过webservice交互，由小贷系统提供通讯URL以及具体webservice的SEI方法。该系统采用SpringMVC+Mybatis+Spring+WebService+HttpClient等技术，以海尔内部提供接口规范为准，为不同的合作伙伴创建接口以完成开户，进件，贷款，还款，账单等一系列接口。项目职责：开发环境搭建，数据库设计，APP/企业/个人开户,进件，贷款等接口开发，联调与测试人行征信系统的部分查询与jsp页面编写，数据库表整理技术点：SpringMVC、Spring、Mybatis、Maven、SVN、JQuery、HMTL、线程池、httpclient、webservice米乐淘：2016/6-2016/9开发环境：Eclipse、Tomcat、MySQL项目描述：这个项目是在线销售电子产品的一个购物平台,分为两个系统,前台售卖系统,后台管理系统,主要业务是展示电子产品，促销等。此项目框架采用分布式SOA开发，主要包括：后台管理系统，网站门户，搜索系统，订单系统，会员系统项目职责：参与单点登录部分业务代码实现参与购物车模块的业务编码页面静态化的实现,门户网站的广告展示订单系统的实现技术点：SSM、Maven、SVN、JQuery、HMTL、EasyUI、Bootstrap、ActiveMQ、Redis、Dubbo、fastDFS维维速运：2015/12-2016/5开发环境：Eclipse、Tomcat、MySQL项目描述：这个项目属于物流管理类的项目,项目针对大学里目前比较流行的快递行业,主要业务是下单,支付,生成订单,上门取货,支付,是使用于大学校园快递的小型项目。项目职责：主要参与用户模块,订单模块,基础模块数据展示及CRUD操作等功能,项目其他任务技术点：SpringMVC、Spring、Mybatis、Maven、SVN、JQuery、HTML5', 1389, 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '本科|2012年9月—2016年6月|重庆理工大学计算机科学与工程学院软件工程专业Java方向', 1390, 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '我评价本人具有良好的团队合作精神，能迅速融入新的团队。易和人相处，能在较大的压力下保持良好的工作状态，善于自我调节。具有良好的编码规范，良好的沟通能力、表达能力。具有强烈的责任感，工作踏实。性格开朗乐观，积极上进。热爱学习，喜欢研究新的技术，具有很强的自学能力和良好的学习方法。', 1391, 'a59d8d0d903343f09a1108a6b09b0bc8');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '微信号：xp13260516561户口/国籍：武汉身高：175cm婚姻状况：未婚家庭地址：湖北省武汉市新洲区政治面貌：共青团员目前年收入10万元（包含基本工资、补贴、奖金、股权收益等） ', 1392, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_word` VALUES (NULL, '求职意向', '期望薪资：10000-12000元/月地点：上海职能/职位：软件工程师Java开发工程师 行业：计算机软件到岗时间：1周内工作类型：全职', 1393, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '：1.本人勤奋踏实，工作认真负责，自学能力强;2.性格开朗，容易与人相处，注重团队协作精神，且能承受较大压力；3.注重专业基础学习和实践能力的培养，对java编程和网站开发具有浓厚的兴趣；4.具有很强的上进心。', 1394, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '2016/7-2019/2Java开发工程师|开发部深圳安之网络科技有限公司[2年7个月]计算机软件|少于50人|民营公司工作描述：1.参与软件工程系统的设计、开发、测试等过程。2.负责项目中主要功能的代码实现。3项目运行中所产生的Bug调试和修复。4.完成上级交给的任务', 1395, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '2018/10-2019/1黄商仓库货物存储信息管理平台所属公司：深圳安之网络科技有限公司项目描述：开发环境:eclipse,tomcat,mysql使用技术:SSM,maven仓储管理主要是从整个商品流通过程的购、销、储、运各个环节的链式关系中，研究货物储存的收、管、发及其相关的经营活动，以及围绕货物储存业务所开展的对人、财、物的运用与管理。该系统包括商品在库信息、入库信息、出库信息、商品位置信息、仓库位置信息以及负责人的情况，供应商信息、商品分类信息等,将仓库管理实现信息化,网络化,无纸化。责任描述：1.参与需求分析,进行需求讨论.2.负责商品在库信息、商品分类信息、供应商信息模块的开发；3.配合测试人员完成相关模块的测试。2018/4-2018/9盛远商贸运输信息标准化平台所属公司：深圳安之网络科技有限公司项目描述：1.软件环境：Spring+MyBatis+SpringMvc+MySql2.盛远商贸公司定制的一套企业ERP系统，包含供应链管理、销售与市场管理、物流控制管理、财务管理、基础平台五个子系统，下辖分销、客户服务、财务管理、库存管理、人力资源、报表、工作流服务、企业信息系统、质量管理、运输管理、项目管理、法规与标准和过程控制等四十多个功能。责任描述：1、参与讨论业务分析、业务模块划分；2、主要负责部门，员工模块的编码实现；3、负责采购管理出货表和统计报表模块的功能代码的实现。4、采用树状结构，可以完成添加、删除等操作。在点击某个部门的名称，可以查看这个部门的详细信息以及所有子部门列表(在子部门列表上，还可以点击部门名称进行进一步的导航)。在列表界面上，可以点击“返回”以便返回上一级部门。5、员工模块可以完成添加、删除等操作，但在进行添加操作的过程中需要选择该人员需要分配到那一个机构部门底下。2017/9-2018/2艳阳天酒店会员管理系统所属公司：深圳安之网络科技有限公司项目描述：开发环境：框架SSM（spring+springmvc+mybatis）mysql数据库，Tomcat服务器等该系统主要目的--该系统分为企业内部信息资源和业务管理部分。企业内部信息资源的主要模块有：组织机构管理、职位管理、员工管理、站内交流、客户关系管理、日程管理模块、财务管理模块、系统权限管理模块、考勤管理。业务部分分为客户管理模块，租房管理，租赁管理等。责任描述：实现模块：根据业务需求分析画出，用例图，业务流程图。员工管理新增员工信息，查看员工信息，修改员工信息；同时实现组织机构、职位和员工的三级联动站内交流实现内部人员信息的发送，转发等功能参与模块：客户关系管理—录入租房管理-房屋信息录入管理系统管理—用户的登录注册2017/4-2017/8上海晨兴商务信息管理平台所属公司：深圳安之网络科技有限公司项目描述：开发工具：Spring+SpringMvc+Mybatis+MySQL+SVN+MVAEN+Tamcat该公司是一家小商品出口的公司，随着公司不断壮大,领导计划将现原有的系统更新升级，开发新的更适应公司现有规模的管理系统。将仓储、货运、采购、财务、统计等进行信息化管理，建立一个公司专属综合平台，让更好的进行经营销售活动而不是繁杂的琐事，同时替代现行的纸质单据、图片，方便经营中的各项统计和商务洽谈中可以对客户进行多媒体形式的讲解等。责任描述：1．负责仓储管理和货运管理下的购销合同，出口报运，装箱等模块的代码编写。2．并使用POI打印excel报表和数据的导出。3．完成单元测试和项目维护工作2016/10-2017/2惠州立速达物流所属公司：深圳安之网络科技有限公司项目描述：本项目主要是基于物流公司对于配送物流信息的管理，提供从商品车下线、入库、分拨、运输、配送到客户的全程跟踪管理系统；并根据实际需要满足合作伙伴之间的客户协同，实现信息共享，本系统主要包括调度管理、订单管理、技术管理、车务管理、安全管理、客户管理和系统管理。责任描述：1.主要负责车务管理，车务管理主要包括司机管理，证照管理、档案管理、出场和入场登记等；2.采用POI完成司机档案信息的导入和导出；3.使用echarts生成司机的驾龄分布图；4.配送区域选择采用Ajax+JSON完成三级下拉联动；', 1396, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '2012/9-2016/6湖北汽车工业学院本科|计算机科学与技术专业描述：java，专业英语，面向对象程序设计，软件体系结构，软件工程等', 1397, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_word` VALUES (NULL, '技能特长', '能特长（包括IT技能、语言能力、证书、成绩、培训经历） 技能/语言Python一般Web前端熟练HTML5熟练MySQL熟练Oracle一般SSH熟练JavaScript熟练Java熟练Linux一般SVN熟练MSExcel良好SSM熟练', 1398, '3df3e7d8e7974209b9c9422ba1585138');
INSERT INTO `cv_word` VALUES (NULL, '求职意向', '个人标签：Bootstrap  SSM  Mysql期望薪资：9000-10000元/月地点：上海职能/职位：软件工程师  Java开发工程师行业：计算机软件到岗时间：1周内工作类型：全职', 1399, 'ddc37dce96ee4b879df152ddb33b7984');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '：1.热爱编程，想长期在上海，在IT这一行稳定的发展下去。2.有较强团队合作能力，在项目过程中，同事有疑难问题，也会努力去帮忙解决。3.适应能力强，能很快的适应公司的要求。4.工作踏实，做事认真，学习能力强。', 1400, 'ddc37dce96ee4b879df152ddb33b7984');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '2016/7-2019/1Java开发工程师|研发部上海辽源科技有限公司 [2年6个月]计算机软件|少于50人|民营公司工作描述：1.参与需求分析阶段项目业务流程整理及讨论。2.根据需求来设计数据库。3.参与新技术点的探讨与学习。4.根据项目进度完成自己负责模块的详细设计及编码、单元测试工作以及互测。5.参与现有项目/产品的维护、升级、修复等工作。6.编写技术设计文档。7.完成部门经理交代的其它工作。', 1401, 'ddc37dce96ee4b879df152ddb33b7984');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '2018/6-2018/12贷利网所属公司：上海辽源科技有限公司项目描述：1.开发环境：IDEA+Tomcat+GIT2.开发技术：SSM+Mysql+JQuery+Ajax+JavaScript+html5+css3亚文新贷分为网页版和Android、iOS两个App，本产品为网页版。主要承担贷款业务的放款、还款、退款、变更、查询、系统管理等业务，与其他业务系统，特别是综合信贷系统和核心系统的交互非常多，相关利息、服务费、罚息、滞纳金、违约金等费用通过调用产品中心进行计算，承接相关业务系统的业务需求，目前已经承接房贷业务系统、成长企业贷、海南小额贷款业务系统，后续还将承接车贷、个人贷款、融资租赁等业务系统。责任描述：1.参与基本需求设计。2.负责对还款模块的编码及测试，包括正常还款跑批、逾期还款跑批、预约还款（预约正常还款、预约前期服务费、预约一次性提前还款、延期、转产品、部分提前还款）以及预约还款跑批模块等。3.负责对撤销模块的编码及测试，包括预约还款撤销以及系统预约历史撤销，退款(线上退款、线下退款)以及退款撤销模块；完成保证金抵偿、保证金退款模块。4.负责后期的bug测试及维护。2017/11-2018/4天天饮食所属公司：上海辽源科技有限公司项目描述：1.开发环境：IDEA+GIT2.开发技术：SSM+Maven+Mysql+JQuery+Ajax+JavaScript+html5+css3运营餐厅时人工点餐费时费力，无序上餐会造成等待客户流失，服务人员缺失会让环境杂乱无章，收银混乱有可能造成不必要的经济损失。使用本系统可以节约点单买单时间，降低错单漏单，提升餐厅翻台率，节省人工成本，从而提升效益。本系统目前涉及到餐厅内部的前台点餐下单，后台管理订单，会员优惠折扣，餐厅内部通信以及查看区域内各餐厅财务数据报表等各项业务，后续还将根据客户需求进行业务升级扩展。责任描述：1.参与系统需求说明书及概要设计说明书的文档编写。2.参与系统数据库的设计。3.负责菜品样式的管理以及权限设置，图表展示的编码。4.负责后期的测试及维护。2017/4-2017/9杭州迅捷物流中心所属公司：上海辽源科技有限公司项目描述：1.开发环境：Eclipse+svn+Tomcat2.开发技术：SSM+MySql+JQuery+Ajax+JavaScript+html5+css3本平台是物流公司的核心综合业务平台。分为基础设置，取派，中转，路由，PDA，财务，管理报表需求共七个部分。本平台通过对物流专线数据的采集提供给物流企业实时正确数据，物流公司可在我们平台进行入驻，入驻完成之后便可发布其公司的主营线路以及编辑其收费标准。然后会员在搜索其专线的时候即可提供给用户其准确数据。然后进行下单，在会员下单之前有不明白之处可以与物流公司进行在线交谈以及咨询其相关信息。责任描述：1.参与基本需求设计，根据需求编写设计文档。2.负责线路模块，取派模块的编码，以及批量操作。3.完成后期的测试及维护。2016/10-2017/2FRESH运输调度管理平台所属公司：上海辽源科技有限公司项目描述：1.开发环境：Eclipse+SVN+Tomcat2.开发技术：SSM+Mysql+JQuery+Ajax+JavaScript+html5+css3FRESH物流系统是为CoCo有限公司开发的系统，本系统主要用于管理商品车的下线、入库、分拨、运输和配送，有效的提高了管理效率，这个系统主要包括调度管理、订单管理、技术管理、车务管理、安全管理、客户管理和系统管理等模块。责任描述：1.参与该系统需求阶段的业务讨论，对模块提出建议。2.负责其中订单管理及客户管理模块的编码。4.完成后期的测试及维护。', 1402, 'ddc37dce96ee4b879df152ddb33b7984');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '2010/9-2014/6荆楚理工学院本科|计算机科学与技术', 1403, 'ddc37dce96ee4b879df152ddb33b7984');
INSERT INTO `cv_word` VALUES (NULL, '技能特长', '能特长（包括IT技能、语言能力、证书、成绩、培训经历）技能/语言Linux良好IDEA熟练SSM熟练JavaScript熟练HTML5熟练C/C++一般CSS3熟练Web前端熟练Oracle一般Eclipse熟练IOS一般Java熟练MySQL熟练证书2017/12驾驶执照2011/3全国计算机等级二级', 1404, 'ddc37dce96ee4b879df152ddb33b7984');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '姓名：高洁性别：女手机号码：15201638691年龄：30岁电子邮件：rui.xiang666@163.com教育程度：本科工作年限：8年婚姻状况：保密职业状态：离职，正在找工作所在地：北京国籍：中国目前职业概况：所在行业：互联网/移动互联网/电子商务公司名称：光载无限（北京）科技有限公司所任职位：测试主管目前年薪：保密职业发展意向：期望行业：计算机软件期望职位：测试经理/主管期望地点：北京期望年薪：面议', 1405, '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '目经历2016/05–至今区块链IMI项目职务：测试主管所在公司：光载无限（北京）科技有限公司项目简介：线下用户转移到线上，减免排队时间，增加办事效率项目职责：1.负责编写测试计划、测试用例以及性能、自动化测试脚本\n2.组织项目组及测试组内共同评审;\n3.针对产品执行功能测试、兼容性测试、性能测试、压力测试、易用性测试等;\n4.把握被测试系统的测试进度\n5.测试过程bug有效提交管理，协助开发人员有效解决;\n6.测试阶段有效分析输出测试报告，给予项目经理、产品经理有效参考\n7.在项目过程中保持和项目经理、开发工程师、需求方等环节积极有效的沟通，驱动问题能够被解决\n8.针对需求的变动，定期对测试用例有效跟踪完善，最终归档;\n9.根据测试结果，定期形式测试报告项目业绩：2014/04–2016/05心港湾App项目职务：测试主管所在公司：北京天心无限科技有限公司项目简介：线下客户和线上客户相结合项目职责：1.负责编写测试计划、测试用例以及性能、自动化测试脚本\n2.组织项目组及测试组内共同评审;\n3.针对产品执行功能测试、兼容性测试、性能测试、压力测试、易用性测试等;\n4.把握被测试系统的测试进度\n5.测试过程bug有效提交管理，协助开发人员有效解决;\n6.测试阶段有效分析输出测试报告，给予项目经理、产品经理有效参考\n7.在项目过程中保持和项目经理、开发工程师、需求方等环节积极有效的沟通，驱动问题能够被解决\n8.针对需求的变动，定期对测试用例有效跟踪完善，最终归档;\n9.根据测试结果，定期形式测试报告项目业绩：2014/03–2015/03云生活商城---以及云生活商城App客户端项目职务：测试主管所在公司：云生活科技(北京)有限公司项目简介：云生活是专注于O2O运营模式，通过线上和线下两种方式有效的结合，从而更有效的来服务于客户群体项目职责：1、根据测试任务，进行测试设计，编制符合标准的测试文档；\n2、搭建测试环境，对测试人员进行培训；\n3、与开发组协作实现各阶段的测试活动；评估测试工作的有效性；参与测试评审；\n4、管理被测试系统，分配和管理角色对被测试系统进行相应测试工作；\n5、管理被测系统的数据及后台数据库；\n6、整理测试文档。项目业绩：2012/07–2014/03BPM业务流程管理软件项目职务：软件测试工程师所在公司：北京炎黄盈动科技发展有限责任公司项目简介：BPM业务流程管理软件App客户端，主要功能是方便用户线下操作，随时随地掌握动态最新信息项目职责：1.编写测试用例；\n2.编写测试计划；\n3.部署测试环境；\n4.测试应用程序；\n5.回归bug，关闭bug；\n6.提交测试报告项目业绩：2012/07–2014/03BPM业务流程管理软件项目职务：测试部门所在公司：北京炎黄盈动科技发展有限责任公司项目简介：BPM,即业务流程管理，是一种以规范化的构造端到端的卓越业务流程为中心，以持续的提高组织业务绩效为目的的系统化方法；\n该BPM主要提供实现一定的经营目的而执行的一系列逻辑相关的活动的集合，业务流程的输出是满足市场需要的产品或服务。项目职责：1.编写测试用例；\n2.编写测试计划；\n3.部署测试环境；\n4.测试应用程序；\n5.回归bug，关闭bug；\n6.提交测试报告项目业绩：2011/07–2014/03Coe产品项目职务：测试部门所在公司：北京炎黄盈动科技发展有限责任公司项目简介：AWSCoE(CenterofExcellence)打造的流程卓越中心旨在帮助企业建立以流程能力为中心的战略优势，推进企业向以客户为中心的流程化运营模式的演变，提升企业整体管理能力。\n流程卓越中心在企业内是一个重要的组织机制，可以协调组织内的所有工作过程，使流程体系与组织目标、内外环境变化保持一致，促进企业的流程文化。项目职责：1.编写测试用例；\n2.编写测试计划；\n3.部署测试环境；\n4.测试应用程序；\n5.回归bug，关闭bug；\n6.提交测试报告项目业绩：2011/07–2011/12BPM业务流程管理软件---客户端', 1406, '2ac642733e77460aae84b3147e1441f5');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '户口/国籍：武汉 婚姻状况：未婚 目前年收入12万元（包含基本工资、补贴、奖金、股权收益等） ', 1407, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_word` VALUES (NULL, '求职意向', '个人标签：Java开发工程师期望薪资：10000-14000元/月地点：上海职能/职位：互联网软件开发工程师网站维护工程师Java开发工程师 行业：计算机服务(系统、数据服务、维修)互联网/电子商务 到岗时间：随时工作类型：全职', 1408, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '：1、熟悉JavaWeb技术，如：JSP、Servlet、EL等；2、熟练使用Eclipse、IDEA等集成开发工具，熟练项目版本控制工具GIT，jar包管理工具Maven；3、熟练使用Spring+SpringMVC+MyBatis（SSM）、了解Spring+Struts2+Hibernate(SSH)、Springboot+mybatis进行开发；4、熟练Mysql、oracle数据库；5、熟练使用HTML5、CSS、JavaScript、JQuery、AJAX、JSON等技术具有很强的团队精神，有良好的组织和协调能力，有强烈的集体荣誉感具有很强的团队精神，有良好的组织和协调能力，有强烈的集体荣誉感。自学能力强，喜欢钻研新技术，敢于面对和克服困难。有较强的抗压、执行能力，勇于承担责任，有良好的职业素质；', 1409, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '2016/8-2019/2Java开发工程师|研发部上海孑立科技有限公司[2年6个月]计算机软件|少于50人|民营公司工作描述：1、负责研发公司应用软件的模块设计、开发和交付2、负责编码，单元测试3、按照功能组件的详细设计4、对其他软件工程师的代码进行审核5、参与新知识的学习和培训6、修复程序BUG7、参与与其业务相关的需求变更评审8、完成上级交办的其他事宜9、编写技术设计文档', 1410, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '2018/9-2019/2哈保保险所属公司：上海孑立科技有限公司项目描述：开发工具：IDEA、MySQL、Tomcat一、首页：热评险种和推荐产品的介绍，及保险分类的展示。二、产品品牌：该项目所有险种的详细介绍，并可分类进行搜索。三、保费支付：提供在线支付保险功能。四、促销活动：新推出的保险的促销详细。责任描述：1.报销管理：包括报销单的申请，申请人填完申请单时，可以直接选择本部门经理申请报销。提交时，会根据部门经理的名称，将报销单存放在该部门经理的未审核报销单项里。部门经理审核通过后，报销单审核完毕存档。2.部分套餐的设计3.系统表的维护2018/3-2018/7就业通所属公司：上海孑立科技有限公司项目描述：开发工具：IDEA、MySQL、Tomcat本系统主要用来搭建企业与求职者的桥梁。系统大致可分为用户端和企业端八个模块，分别是职位搜索、用户的简历管理、互动专区、系统设置、企业动态、企业相册、企业发布的职位管理、企业的简历管理。本系统由Struts2、spring3.1、EJB3编写而成，用JAVA标准的组件体系结构，用于以Java编程语言构建分布式的面向对象的商务应用程序。通过把使用不同供应商提供的工具开发出来的组件组合在一起以便尽可能提高软件稳定性，同时也使整个程序迁移方便，更易拓展责任描述：企业招聘的职位管理模块，企业动态模块，企业相册模块。在前台使用了jquery对输入的数据进行验证，在上传图片时使用了html5的zyUpload插件进行上传多张图片。2017/8-2017/12中华英才培养基金所属公司：上海孑立科技有限公司项目描述：开发工具：IDEA、MySQL、Tomcat在中国下一代教育基金会的支持下，依托清华附中，设立了“中华英才培养专项基金”，得到汉能控股集团的鼎力资助，计划每年从全国贫困县招收农村籍、学习比较优秀的初一毕业生，到清华附中参加“寒门英才培养计划-汉能助梦行动夏令营”活动，入选学员参加“中华英才空中课堂”学校。为每个学生创造一个多元化的学习空间，使每一个得到全面发展，形成正确的人生观，激发学员的梦想责任描述：1、根据需求分析，全面负责平台的后台开发定制、服务器、数据库维护。2、功能定制，技术选型：定制开发功能3、服务器，数据库维护4、负责教室风采页面的浏览展示5、负责学生园地页面的浏览展示2017/3-2017/6壹人壹车汽车用品商城所属公司：上海孑立科技有限公司项目描述：开发工具：Eclipse、MySQL、Tomcat壹人壹车汽车用品商城是为实现汽车配件的线上销售开发的系统，实现客户足不出户买到自己想要的汽车配件。包括系统管理、商品管理、运营管理、会员管理、浏览查询、在线购买、用户注册管理、新产品的上架、购物车、支付方式、等系统模块责任描述：根据需求分析，完成页面的首页的代码，配合团队工作，协助其他同事完成团队工作，完成每日的报表。负责部分商品管理页面的展示负责部分浏览查询功能2006/10-2017/1长江蔬菜杂志绩效管理所属公司：上海孑立科技有限公司项目描述：开发工具：Eclipse、MySQL、Tomcat1.所有在职成员有被测评权限的作为被投票人，所有在职人员和上挂借调人员作为投票人。所有投票人员采用匿名值投票。2.所有的投票要素，投票分数，投票时间，投票类型均可以配置。3.投票信息应及时反馈给个各部门综合处4.投票结果应按照绩效办考核标准进行计算，误差不大于0.001.5.所有指定结果均可以导出。6.自动生成反馈报告，给各个部门领导反馈责任描述：负责绩效考核需求的分析整理、业务逻辑的整理、代码的开发实现、测试负责投票票数的统计部分部门结果的反馈', 1411, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '2012/9-2015/6湖北第二师范学院本科|计算机科学与技术', 1412, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_word` VALUES (NULL, '技能特长', '能特长（包括IT技能、语言能力、证书、成绩、培训经历） 技能/语言Oracle良好Java熟练HTML5熟练Linux一般Hadoop一般Web前端一般XML/XSLT一般MySQL熟练JavaScript熟练', 1413, '21b06bf25aa14cdd862f9a3111c0dc1b');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '姓名：任万辉性别：男手机号码：15210460217年龄：27岁电子邮件：15210460217@163.com教育程度：本科工作年限：2年婚姻状况：未婚职业状态：在职，看看新机会所在地：北京-昌平区国籍：中国户籍：德州目前职业概况：所在行业：计算机软件公司名称：中通服软件科技有限公司所任职位：开发工程师目前年薪：保密职业发展意向：期望行业：计算机软件期望职位：软件工程师期望地点：北京期望年薪：保密', 1414, '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '目经历2017/06–至今天翼终端经营分析系统项目职务：高级开发工程师所在公司：中通服软件科技有限公司项目简介：本系统是以天翼集团的ERP，直供系统等多个系统的整合，用于数据分析以及用户以及厂商的维护。项目职责：1、元数据管理模块,包括元数据管理以及血缘管理;\n2、明星门店模块,包括文件收集、文件校验、文件入库Hadoop;\n3、预约导出模块,包括4GCRM预约导出功能的实现以及京东苹果预约导出;\n4、WebService接口开发,用于会员管理;\n5、任务调度模块,包括任务的增删改查以及启动停止;\n6、参与编写Python脚本进行数据清洗;\n7、使用RMI服务连接Hive库以及HBase库;\n8、项目部署更新测试项目业绩：2017/03–2017/06天翼终端ESB平台项目职务：开发工程师所在公司：中通服软件科技有限公司项目简介：天翼终端ESB平台是经分调度的一个总平台，关系着经分的收发文件以及对于服务系统的监控。项目职责：1、企业管理模块，包括角色管理、组织管理等模块以及页面展示及其友好优化；\n2、服务监控模块，包括实时服务日志监控、FTP服务日志监控；\n3、服务配置模块，包括实时服务管理、FTP服务管理；\n4、基础配置模块，包括系统管理、FTP用户管理以及业务管理；\n5、任务调度模块，包括任务的增删改查以及启动停止；\n6、项目部署更新测试项目业绩：2016/08–2017/03电信骨干智能网综合业务支撑系统项目职务：开发工程师所在公司：中通服软件科技有限公司项目简介：电信骨干智能网综合业务支撑系统主要承接着集团、省智能网用户在故障投诉时故障处理人员进行智能网网元数据实时查询以进行故障排查,另外也承接着话单查询、统计功能以及电信网络的用户分析以及旧系统运维改造。项目职责：1、在线考试模块，包括试卷管理、在线考试、成绩查询等模块以及页面展示及其友好优化；\n2、当日装当日修装维业务模块，包括当日装当日修指标报表、当日装当日修指标报表分析；\n3、集团指标通报配置模块，包括全网装维服务分析PPT的自动生成与下发；\n4、编写Oracle存储过程进行数据处理以及整合分析；\n5、任务调度模块，包括任务的增删改查以及启动停止；\n6、项目部署更新测试项目业绩：2016/03–2016/06青岛软控ERP系统项目职务：开发工程师所在公司：青岛高校软控有限公司', 1415, '6711742e66ea40f2acb6c3432bd44a2e');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '（Internship）2017.07-2018.06亚信科技有限公司java软件开发（中国移动项目）开发环境：eclipse+Maven+gitLab（版本管理工具）负责公司项目后台功能模块设计、数据结构设计、对外接口设计（基于SSM的开发模式）；对现有系统架构改进，提升现有系统性能；与前端开发人员配合，高质量完成系统后端业务的开发工作；负责运维自动化平台、任务调度后台等内部工具开发；负责单元测试、自动化测试、自动部署脚本的编写和维护。2018.07-至今上海华腾软件系统有限公司java软件开发（外汇新本币系统（中国银行间本币交易系统））开发模式（SpringMVC+Spring+Maven+Redis+Nginx+Springjdbc），前后端分离式开发，基于rest接口开发。负责机构下交易账户的管理，与机构与机构之间的可见性。以及2个系统之间的消息的接收和入库，以及查询展示，主要运用到了消息队列（RabbitMQ），实现上下游消息的下发。负责机构下交易员双方达成一笔报价成交入库的校验与展示。（运用到了线程处理业务，减少从业务处理到入库时间）教育背景（Education）2014.09-2018.07上海杉达学院计算机应用科学（本科）主修课程：数据库原理、Java从入门到精通、算法、数据结构、操作系统、编译原理、计算机组成原理、计算机体系结构、计算机网络、oracle数据库。', 1416, 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '姓名黄杨阳年龄28性别男学历本科电话180-8405-4652邮箱2459593393@qq.com籍贯重庆工作年限3年半应聘职位Java开发工程师期望薪资20000~25000', 1417, '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '张思宇/男/1996全日制本科/软件工程专业/上海建桥学院工作年限：2年期望职位：后端开发（Java/Golang）联系方式手机：17521342181Email：ahmczsy@gmail.com微信号：ahmczsy 技能清单语言：Java：熟悉数据结构、理解java编程中基本知识。如注解、反射、IO、持久化、线程，线程池等Golang：熟练掌握slice、map、tag、channel、协程、接口、struct、sync包下并发组件框架：Golang:Gin/XormJava:Spring/SpringBoot/Mybatis/Mina(类似Netty)数据库相关：MySQL，熟悉MySQL的索引优化数据传输：熟悉HTTP，有使用Mina进行TCP和WebSocket开发经验，熟悉Protobuf、JSON数据格式和序列化方式版本管理、文档和自动化部署工具：Svn/Git/Maven/Gomodule/Jenkins云和开放平台：微信小程序开发/腾讯云Linux：熟练掌握Ubuntu/CentOS发行版的操作及搭建、有项目维护经验。', 1418, '4c206621ca614b938fa4f82aa7120114');
INSERT INTO `cv_word` VALUES (NULL, '求职意向', '：Java开发工程师所在城市：上海联系电话：17316341056邮箱：warm_lc@126.com求职意向：新媒体编辑意向城市：广东珠海市', 1419, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '（PersonalInfo）姓名：张云峰民族：汉性别：男电话：15000923843邮箱：15000923843@163.com住址：上海杉达学院年龄：25身高：173cm户籍：皖政治面貌：团员毕业院校：上海杉达学院学历：本科奖状及技能证书（MeritandSkillscertificate）英语四级CET-4：517分、英语六级CET-6：440分良好的听说读写能力计算机二级考试、C语言二级熟练运用office相关软件校级综合学金（二等奖）高等数学二等奖', 1420, 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '姓名：梁闯性别：男出生日期：1994.06籍贯：河南信阳婚姻状况：未婚工作年限：1.5年专业：软件工程英语：良好应聘方向求职行业：计算机软件、互联网应聘职位：Java开发工程师求职地点：上海期望薪资：10000-15000元/月IT技能有扎实的的Java语言基础，良好的业务逻辑分析能力，熟悉常用的设计模式。熟练使用Spring、SpringMVC、MyBatis、SpringBoot、Spring-Data-JPA、Struts2等主流框架。了解SpringBoot、SpringCloud等衍生的敏捷开发技术，分布式、微服务架构设计开发技术熟悉RESTful架构风格。熟练掌握Shiro安全框架进行登陆认证授权。熟练掌握Oracle、MySql等数据库开发应用。熟练掌握MySql数据库优化，SQL语句调优。熟练使用NoSQL非关系性数据库Redis进行数据缓存操作，了解Redis分布式锁。熟练使用Ecplise、Idea编程工具进行开发。熟练使用NavicatPremium、Navicat、PLSQL等数据库开发工具进行数据的开发。熟悉使用Maven管理项目的构建。熟练使用Git等版本控制管理工具。熟练掌握Linux项目运行环境搭建，Nginx静态资源服务器、负载均衡代理服务器配置。熟悉Tomcat集群实现原理，并使用提高服务的性能。了解RabbitMq消息中间件的基本使用。了解掌握Docker容器技术在微服务架构中的应用。了解Jeckins的基本使用，进行项目自动化部署。', 1421, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '熟练Struts2+Spring+Hibernate，SpringMVC+Spring+Mybatis等主流开发框架熟悉hibernate，mybatis持久层框架的开发以及spring容器的IOC，DI，AOP等熟悉HTML、CSS、Jquery、EasyUI、Bootstrap等前端技术熟练JSP、Servlet、Filter、Listener、Cookie、Session、EL表达式、JSTL等技术熟悉MySQL、了解Oracle数据库，能够进行简单的PL/SQL开发，了解MySQL数据库的优化熟悉Maven、SVN、Git，了解Gradle了解Redis、ActiveMQ、Solr、Shiro，Mongodb，Memcached了解SOA架构、Nginx、fastDFS、Dubbo、Quartz了解Linux常用命令熟悉go基础语法，简单使用python，php了解docker，springboot，elasticsearch，solr', 1422, '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '作经历 上海音智达信息技术有限公司（2018年7月~现在）Penrose(工业IoT产品)该项目是工业物联网产品，数据库采用MySQL、数据库分表中间件：MyCat、Web容器：Tomcat、缓存：Redis、前端代理服务器：NGINX、消息中间件：Kafka本人突出业绩如下：负责运维平台的API开发，如：传感器点位，人员的，Excel导入导出等对数据库经常查询的列加索引，优化查询速度。表中存在必要的冗余，解决多表联合费时查询操作。在一次生产服务器CPU高占用异常中，使用jstack等工具，根据线程栈等数据排查出问题，并解决传感器微信小程序该项目主要目的是让客户在微信小程序上实时看到传感器发送的数据。后端使用的是Golang。公司的主要目的是调研Golang技术环境和生态，本人主要业绩如下：使用WebSocket来实时推送传感器数据集成微信开发的SDK上海游一信息技术有限公司（2017年7月~2018年5月）棋牌手游该手游前端采用白鹭引擎；后端是以Mina作为通讯框架；传输协议采用WebSocket；消息序列化使用了Protobuf。Protobuf相比JSON减少了很多的传输流量，提高了传输速率。本人负责游戏业务逻辑的开发，突出业绩如下：使用自定义注解和反射实现了类似SpringMVC的消息自动分发模式，即游戏客户端向服务器发送消息，Java服务器能够自动调用相应的Service类排查出玩家再同时点击准备按钮时发生的并发问题，并解决了该问题。开发了游戏内的录像和录像回放的功能 ', 1423, '4c206621ca614b938fa4f82aa7120114');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '我评价（Self-assessment）扎实的专业基础:认真对待学业,努力学习专业知识,为日后工作打好基础。性格平和开朗，待人热忱。良好协调沟通能力，适应力强，反应快、积极、灵活，勤勉上进，认真细致，踏实肯干，对工作认真负责，善于团队合作学习注重理论与实践的结合.', 1424, 'ee270914f5024a80bb126e897b8a4f18');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '2019/3-2019/6上海趣凡科技技术部后端开发工程师	App接口开发系统上线与功能测试2018/5-2019/1上海哔哩哔哩技术部后端开发工程师	主要从事软件编码与维护工作前端页面设计与bug修复系统上线与功能测试2017/8-2018/5成都愚创科技开发部Java开发工程师主要从事软件编码与维护工作负责接口编写与三方联调前端页面设计与bug修复系统上线与功能测试2015/12-2017/8成都艾萌科技研发部Java开发工程师主要从事软件编码工作负责接口编写与三方联调页面功能测试，编写操作手册', 1425, '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '2017.09-2019.02上海万达信息股份有限公司Java开发工程师计算机软件|规模：1000-9999|已上市工作描述：1、配合项目组员完成公司软件产品和项目的研发工作；2、积极参加内部的技术交流，分析并解决软件开发过程中的问题；3、参与系统需求分析、方案讨论，进行部分业务详细设计与编码实现；4、进行部分项目的上线部署配置；5、项目的维护、项目开发文档、产品白皮书的整理。', 1426, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '趣点评App2018/5-2019/1开发环境：IDEA，Git，JDK1.8项目描述：类似小型大众点评的app,用于美食推广，发布种草，评论等项目职责：用户模块，搜索模块开发技术点：solr,elasticsearch7,springbootPassport账号系统/Account管理系统2018/5-2019/1开发环境：IDEA，Git，JDK1.8，统一使用Mac电脑开发，python，php，java，go项目描述：此项目是哔哩哔哩账号项目，目前该账号系统已经拥有3亿注册账号，日活跃用户数百万https://www.bilibili.com项目职责：维护用户的基础信息（勋章、挂件、头像、实名认证、账号找回等）修复线上bug，日常需求迭代，编写文档，单元测试用户实名认证项目迁移使用Java/golang进行项目的需求迭代，php迁移，作为controller层透传接口，python脚本临时修复/同步db数据技术点：java，golang，公司封装的框架SMT收银系统2018/2-2018/5开发环境：IDEA，Tomcat8.5，MySQL5.7，SVN，JDK1.8项目描述：收银系统，给门店，商家线下支付宝/微信刷卡支付公司以springjdbcTemplate为基础封装的一套以JSON对象的Dao层查询，以动态代理+反射为基础+数据库配置+dubbo为底层核心+zookeeper实现web（SpringMVC）层与service通信及方法调用，前端采用vue.js，数据库mongoDB,mysql项目职责：订单、商品，权限管理等模块开发，solr服务搭建功能测试，简单页面修改技术点：前后台均使用公司封装的框架ESOP系统维护与开发：2017/08-2018/1开发环境：IDEA、Eclipse、Tomcat、MySQL项目描述：中国移动集团客户业务综合运营平台（ESOP）是通过对已有系统功能的能力化封装与集成，通过统一的门户界面给系统使用者提供综合、一站式的服务。ESOP系统围绕一套公共的CRM系统整合移动的业务，老版本使用eframework2.0(公司封装的)+jsp自定义标签+ibatis+bpm（公司产品）进行移动业务办理的流程推进。由于业务复杂，不易维护，后续业务分隔成子系统采用SpringBoot+Mybatis进行开发，老版本只负责提供连接地址。项目职责：编写接口文档，写功能测试用例，客户使用手册，项目上线，APP的H5页面编写后台编码，前台页面进行数据的展示，导入，导出以及调用bpm接口进行流程审批技术点：前后台均使用公司封装的框架关键字SQL、SSH/M、AJAX、JS、JSON、jQuery、Bootstrap、SVN、MAVEN、MyEclipse、Java、Tomcat、Linux、quartz海尔云贷开放平台：2016/10-2017/8开发环境：Eclipse、Tomcat、MySQL项目描述：小贷系统与门户系统通过webservice交互，由小贷系统提供通讯URL以及具体webservice的SEI方法。该系统采用SpringMVC+Mybatis+Spring+WebService+HttpClient等技术，以海尔内部提供接口规范为准，为不同的合作伙伴创建接口以完成开户，进件，贷款，还款，账单等一系列接口。项目职责：开发环境搭建，数据库设计，APP/企业/个人开户,进件，贷款等接口开发，联调与测试人行征信系统的部分查询与jsp页面编写，数据库表整理技术点：SpringMVC、Spring、Mybatis、Maven、SVN、JQuery、HMTL、线程池、httpclient、webservice米乐淘：2016/6-2016/9开发环境：Eclipse、Tomcat、MySQL项目描述：这个项目是在线销售电子产品的一个购物平台,分为两个系统,前台售卖系统,后台管理系统,主要业务是展示电子产品，促销等。此项目框架采用分布式SOA开发，主要包括：后台管理系统，网站门户，搜索系统，订单系统，会员系统项目职责：参与单点登录部分业务代码实现参与购物车模块的业务编码页面静态化的实现,门户网站的广告展示订单系统的实现技术点：SSM、Maven、SVN、JQuery、HMTL、EasyUI、Bootstrap、ActiveMQ、Redis、Dubbo、fastDFS维维速运：2015/12-2016/5开发环境：Eclipse、Tomcat、MySQL项目描述：这个项目属于物流管理类的项目,项目针对大学里目前比较流行的快递行业,主要业务是下单,支付,生成订单,上门取货,支付,是使用于大学校园快递的小型项目。项目职责：主要参与用户模块,订单模块,基础模块数据展示及CRUD操作等功能,项目其他任务技术点：SpringMVC、Spring、Mybatis、Maven、SVN、JQuery、HTML5', 1427, '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '项目名称：嘉定卫生计生微信公众号（2018.09-2019.02）软件环境：Tomcat8.0、Jdk1.8、Mysql5.7开发工具：Idea、Maven、Git开发技术：SpringBoot、SpringCloud、JPA、Nginx、Jenkins、Docker、Redis、WebService、JAXB、Swagger-UI项目描述：为进一步推进上海市健康类新媒体工作发展，加强卫生计生行业新媒体阵地建设，满足不同人群对健康信息的多元化需求，切实提升健康传播、网络宣传引导工作的整体水平、简化社区居民日常就医流程、提供更高效便捷的就医等问题，嘉定卫生计生微信公众号主要提供三大块功能：个人中心、新闻中心、关于我们。个人中心主要提供给社区居民更方便的在线医院预约挂号、检验报告信息、检查报告信息、个人预约信息查询和医生个人排班、预约情况查询、医生号源、排班信息查询。新闻中心主要提供给卫计委单位用户使用，方便卫计委用户及时发布要闻动态、便民公告、法治卫生、健康卫生等一些新媒体信息。关于我们主要介绍了相关的社区医院的信息、组织机构的职能介绍、家庭医生服务相关的介绍。责任描述：项目使用SpringCloud微服务，采用前后端分离的模式，将整个项目划分为前端模块、后台服务端模块、第三方服务模块。我主要负责第三方服务的数据转换模块，提供符合RESTful架构风格的接口。通过封装符合SOAP协议的XML格式的报文请求微信第三方的WebService服务接口，将服务响应结果转换为javaBean的对象。负责GitLab私服上第三方服务相关的代码更新、提交。在Jenkins上发布、构建、更新任务，以及使用一些Docker常用命令查看服务容器的运行状态、日志。进行服务接口的测试。项目名称：信息化项目管理平台（2018.06-2019.01）软件环境：Tomcat7.0、Jdk1.8、SQLServer2012开发工具：Idea、Maven、Git开发技术：Spring、Struts2、Hiberrnate、Shiro、Spring-Schedule、excel报表导入导出、Easy-UI、Jsp项目描述：信息化项目管理平台是使用Spring、Struts2、Hiberrnate框架结合Shiro安全框架开发的一款用于政府机构进行项目相关信息（主要包括项目', 1428, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '、合同、各类文档）、项目资产（项目所购买的服务器、产品软件、应用软件）的信息管理；以及对运维团队日常运维工作的管理，主要包括运维人员运维工单的处理记录、日周月季报的上传、设备巡检记录等相关信息的管理。责任描述：在这个系统中我主要负责注册模块、登陆模块、权限模块、工单处理模块、运维文档模块、用户代办事项；在注册、登陆、权限模块使用了较为轻量级的Shiro安全框架，来对注册用户的密码进行盐值+MD5加密算法进行加密，使用Shiro的认证、授权机制来对登陆用户进行密码匹配、权限划分；工单处理模块主要实现的是由用户机构派发问题单到运维人员，然后由运维人员进行判断分类为故障单和事件单，并进行处理，处理完成后反馈结果，由用户进行确认完成并且进行评价。使用SpringSchedule定时任务来实现用户代办事项的提醒、查看、确认。使用树数据结构结合递归算法完成运维文档树形结构的设计与实现。项目名称：社区运维监控平台（2018.03-2019.01）软件环境：Tomcat8.0、Jdk1.8、SQLServer2012开发工具：Ecplise、Maven、SVN开发技术：Spring、SpringMVC、MyBatis、Echarts、UI标签、Ajax、Json、Jsp项目描述：社区运维监控系统采用Spring、SpringMVC、MyBatis框架进行开发，主要用于社区运维过程中对软件运行状态、数据库上传数据、机房硬件设备状态进行定时任务监控，并且通过接入短信接口实现系统发现异常实时通知到运维工作人员，以便及时解决异常问题来维持设备、服务的正常运行的运维产品。责任描述：在这个系统中我主要负责软件运行状态监控模块和短信入口模块；在进行软件监控模块主要是基于http网络协议来实现的，通过模拟访问目标软件服务通过返回的状态码来进行判断软件系统是否正常运行，发现异常情况及时通过短信提醒通知到相关人员；短信模块主要通过在程序中调用第三方的SDK来实现短信的发送功能。项目名称：1+1+1预约转诊系统（2017.12-2018.12）软件环境：Tomcat7.0、Jdk1.7、Oracle11g开发工具：Ecplise、Maven、SVN开发技术：Spring、SpringMVC、MyBatis项目描述：预约转诊系统主要用于二三级医院向一级医院线上预约转诊及回转,方便社区及家庭医生对居民转诊快速申请，完成社区医院的家庭医生签约工作站、医生和居民的双向转诊。通过调用预约转诊的第三方服务接口来查询家庭医生工作站信息，实现居民与家庭医生之间的签约，简便居民就医的转诊过程，方便居民在网上进行预约挂号、签约、转诊等流程。责任描述：参与项目的开发过程，负责项目中医生号源信息池的信息查询、居民预约号源模块的开发和项目功能的测试过程。进行项目后期的维护过程，发现并及时解决实际使用过程中的问题。进行线上服务器端项目的更新、部署等工作。项目名称：微信预约第三方服务接口（2017.09-2018.12）软件环境：Tomcat7.0、Jdk1.7、Oracle11g开发工具：Ecplise、Maven、SVN开发技术：Spring、SpringMVC、Mybatis、WebService项目描述：预约转诊第三方服务接口主要为社区预约转诊系统提供数据的查询接口，通过WebService对接综合医院及社区，查询社区医院的内部数据资源，将医院信息、医生信息、医生排班信息、号源等信息返回给服务的调用方。责任描述：参与第三方服务接口的升级开发过程，参与并完善需求、设计文档中负责开发的接口模块的数据库设计。主要负责信息查询接口、一级科室、二级科室、医生信息等查询接口的编写。配合开发团队进行联合调试和编写系统相关文档。进行服务接口的维护和后期的修复漏洞。', 1429, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '本科|2012年9月—2016年6月|重庆理工大学计算机科学与工程学院软件工程专业Java方向', 1430, '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '2014.09-2018.06河南工业大学软件工程本科', 1431, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '我评价本人具有良好的团队合作精神，能迅速融入新的团队。易和人相处，能在较大的压力下保持良好的工作状态，善于自我调节。具有良好的编码规范，良好的沟通能力、表达能力。具有强烈的责任感，工作踏实。性格开朗乐观，积极上进。热爱学习，喜欢研究新的技术，具有很强的自学能力和良好的学习方法。', 1432, '9b94af8065c14e63bee5e69c1d45eb0f');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '我评价我很喜欢软件开发，很享受和团队一起成功开发、上线新项目带来的成就感；1）学习能力强，适应能力强，责任心强，抗压力强。2）善于与人沟通交流。3）工作认真仔细，谦虚谨慎、勤奋好学，有较强的语言表达能力和亲和力，具备较强的用户沟通能力。4）具备较好的沟通能力、团队协作精神。5）较强的自学能力和独立解决问题能力。', 1433, '0fc7ab640812465c82512c5890d25b64');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '', 1434, '74b3424c21804845b6cbb2a9248c3faa');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '技能证书熟练掌握HTML(5)、CSS3、js等技能，熟悉es6、npm、webpack、git版本控制工具。前端开发框架：熟练运用vue，使用过react框架。服务端：简单应用nodejs、了解mongodb数据库。其他能力：计算机二级、大学英语四级、国家励志奖学金等。2017.08~2018.09pc端和移动端网站项目介绍：主要展示公司官网包含pc端（首页、个人中心、信息披露站点）和移动端（m）站点。首页站点：⽤react+material-ui/antd+wepack开发打包，主要有产品展示、详情、购买等功能。账⼾中⼼：主要展⽰订单列表、订单详情、修改账⼾密码、测评、对接银⾏存管系统等功能，⽤vue+element-ui+wepack开发打包。信息披露站点：主要展⽰信息批露、关于我们，采用vue+wepack框架做的，并自定义项目所需组件，后面有尝试react+typescript+webpack多页⾯构建、分组件⾃适应页⾯。移动端：⼿机端展⽰，主要负责做活期产品、卡券使⽤等功能。2016.08~2017.08活动项目开发环境：手机端项目介绍：年度报告微信分享活动、组团大战、签到活动、红包雨、抽奖大转盘、微信模板消息推送等活动责任描述：对项目进行需求分析，按照原型图实现所需效果，适配不同尺寸的手机，及部分手机兼容性优化等。学习能力强、善于沟通交流、乐观向上、性格开朗', 1435, '74b3424c21804845b6cbb2a9248c3faa');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '我评价', 1436, '74b3424c21804845b6cbb2a9248c3faa');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '/本科/22岁17719319751sll1195296604@163.com自我描述个人能力团队精神抗压能力沟通协调能力责任心本人思维敏捷，逻辑分析能力强，工作认真、负责，能承受一定工作压力。活泼开朗、乐观向上、适应力强、上手快、勤奋好学、脚踏实地。对工作尽职尽责，乐于接受挑战性的工作。具有优秀的学习能力和强烈的学习意识，善于分析解决问题。善于交流与沟通，能以较强的团队合作精神，快速的融入开发团队', 1437, '326bc22dda0e41669f0611899b7b900f');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '南京维数软件股份有限公司/研发部2017.02-2019.01Java后端1、负责接口的开发和批处理，给后台java开发提供调用数据的接口2、对一般性技术问题进行研究并参与需求分析掌握3、对产品进行维护，参与模块的分析与研究4、辅助其他开发人员完成项目的整体性开发5、完成软件的测试、修改bug，业务功能实现与单元测试', 1438, '326bc22dda0e41669f0611899b7b900f');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '易家达商城(南京维数软件股份有限公司)2018.05-2018.121、实现单点登录和用户注册系统功能。2、实现商品管理以及与保持后台数据同步功能3、实现购物车系统功能4、参与了搜索系统，单页页面缓存以及与后台数据同步的的部分功能开发环境：IDEA、Maven、Git、Tomcat8、MySql5.6、JDK1.8后端技术：Spring、SpringMVC、MyBatis、SpringBoot、SpringCloud、Redis、RabbitMQ、Elasticsearch、nginx、FastDFS、Thymeleaf、JWT，阿里大于SMS项目介绍：易家达商城是一个全品类的电商购物网站(B2C)，用户可以在现购买商品，加入购物车、下单、秒杀商品、可以评论已购买的商品，管理员可以在后台管理商品的上下架，促销活动，管理员监控商品销售状况，客服可以在后台处理退款操作系统功能模块：后台管理系统、前台管理系统、会员系统、订单系统、登录系统、搜索系统等功能模块图钉社交平台(南京维数软件股份有限公司)2017.12-2018.04负责模块：1.登录与注册：实现用户注册登录，及忘记密码情况找回密码2人员管理：负责更新展示页面的数据3.吐槽专栏：实现发吐槽、点赞、评论等功能图钉，谐音：秃顶。图钉社交平台是程序员专属的社交平台，平台包含与程序员相关的：头条新闻，问题讨论，程序员招聘，近期活动，征婚交友、吐槽、创业经验分享等。所用技术：SpringBoot、SpringCloud、SpringdataJPA、redis、mysql、MQ等力诺家居配送管理系统(南京维数软件股份有限公司)2017.08-2017.111负责相关功能代码实现2负责相关功能模块的维护以及部分测试工作3负责代码的调优重构，调整BUG软件架构：springMVC+spring+Mybatis+mysql+easyUI开发环境：Eclipse+tomcat7+maven+git系统功能：分区管理、取派管理、人员管理、客户管理系统、调度、工单受理、包装、签单管理项目介绍：金色物流管理系统是系统的核心综合业务系统，实现“决策、管理、操作”一体化运作，做到管理层协调管理的简单化，进行有效控制运营。诺斯办公系统2017.02-2017.071、模块代码编写、文档编写、后期维护2、负责模块，员工管理，知识管理，通信管理模块的设计与代码实现项目描述：为提升公司的办公规范化程度，实现对公司的统一调度和管理而为本公司开发此办公系统。项目主要包含员工管理、部门管理、岗位管理、考勤管理、知识管理、个人办公管理、通信管理、任务和日程管理、办公用品管理、权限设置等模块开发环境：Eclipse、Tomcat、MySql、Maven、Git所用技术：Spring、SpringMVC、MyBatis、JQuery、EasyUI、Solr', 1439, '326bc22dda0e41669f0611899b7b900f');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '育经历宿州学院2013-2017本科/物联网工程', 1440, '326bc22dda0e41669f0611899b7b900f');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '/本科/26岁17317522412cuinamail@163.com自我描述责任心执行力团队精神抗压能力沟通协调能力本人从事iOS开发3年，在公司主要负责iOS端项目开发，熟悉iOS开发整体流程，包括架构设计、代码编写、后期bug修复、项目迭代、编写程序设计相关文档。精通Objective-C、C，Swift，熟悉内存管理机制，了解runtime机制，熟悉GCD多线程编程，了解iOS程序的基本架构和组织方式熟悉iOS网络编程，HTTP和Socket；对Alamofire,FMDB,SDWebImage等主流开源库有所了解。热爱编程,对IT行业充满热情,有独立的用代码解决问题的能力；热情大方，工作严谨认真，能承受工作压力；具良好的敬业精神、沟通能力和团队合作精神。', 1441, '53739768f6fd4e65834dd87fe6b2f945');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '众安在线财产保险股份有限公司/安链云2018.04-2018.12IOS开发工程师SDKSwiftOC负责众安科技-安链云iOS端新产品研发，迭代，维护。工作内容有：1、负责保险业务人脸识别系统SDK的封装、迭代、文档编写；2、完成众安科技协同管理工具的开发，需求迭代；3、参与数博会展览产品开发；4、参与918众安科技日AboutOne产品开发；5、完成步步鸡钱包产品开发；6、完成步步鸡电商App开发；善林(上海)金融信息服务有限公司/技术中心2017.04-2018.04IOS开发工程师IOSSwiftOC负责善林财富子公司iOS端产品开发，迭代，维护。工作内容有：1、参与借贷端（花千贷app）及投资端（善林财富app，理财大师app）项目开发2、部分私有控件和代码库的封装和维护3、规避金融端app安全隐患（反编译，完整性校验），提供可行性措施4、学习和研究到新的移动互联网技术应用到产品中进行创新上海睿博信息科技有限公司/研发部2015.12-2017.04IOS开发工程师IOSSwiftOC负责善林财富子公司iOS端产品开发，迭代，维护。工作内容有：1、参与借贷端（花千贷app）及投资端（善林财富app，理财大师app）项目开发2、部分私有控件和代码库的封装和维护3、规避金融端app安全隐患（反编译，完整性校验），提供可行性措施4、学习和研究到新的移动互联网技术应用到产品中进行创新', 1442, '53739768f6fd4e65834dd87fe6b2f945');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '协同管理项目(众安在线财产保险股份有限公司)2018.04-2018.06搭建了即时通讯框架，对crashlog分析更深入了该项目是内部使用的一款项目协同管理工具，主要负责功能有记录工时，IM即时通讯，调试文件log记录系统等。项目职责：1.协助项目经理对产品进行构架以及软件界面架构及实现2.腾讯IM集成，IM聊天自定义UI搭建，自定义消息的展示交互3.内部Log系统的设计集成，Log写入文件或数据库方便问题排插4.项目进度展示筛选5.使用FMDB进行数据存储更新修改理财大师(善林(上海)金融信息服务有限公司)2017.09-2018.03掌握了完整的性能测试流程项目描述：该应用是为线下门店2万理财师发展注册投资用户设计的，使用对象为体系内的少数管理人员及体系外的理财师，旨在发展非在职理财师及注册投资用户，推动财富端产品投资。为团队开发项目。为企业账号签名项目，主要包含个人业绩分时段查询、投资端产品分享，下挂理财师业绩跟进，管理等功能。责任描述：该项目中，本人主要负责个人中心“我的理财师”模块的代码编写工作，此外配合项目相关同事完成项目测试和上线流程，主要职责如下：1、完成客户端软件需求的整理和软件的设计；2、负责App端操作文档的编写；3、负责项目框架的搭建、代码编写4、负责项目性能（内存，CPU，压力）评估和优化5、配合运营部完成线上测试，收集客户反馈花千贷2017.05-2017.09熟练掌握了私有控件和代码库的封装和维护项目描述：该应用是一款面向高成长性人群、大众阶层的移动互联网金融助贷服务平台，通过大数据征信、数据分析和风控能力实现科技驱动金融创新。是一款纯信用、无抵押、实时审批、快速放款的手机借贷app。该应用包含活体认证，身份证校验，银行卡绑定，在线借款，还款，账单查询等功能。责任描述：该项目，本人主要负责“借款”模块的代码编写工作，此外配合项目相关同事完成项目测试和上线流程，主要职责如下：1、参与需求评审会议，协助产品定产品需求2、负责项目“借款”模块的功能代码编写3、负责项目“借款”模块的风控测试4、协助运营部完成App端操作文档的编写，演示青岛城阳人民医院(上海睿博信息科技有限公司)2016.08-2016.10掌握iOS项目的开发和上架流程项目描述：该应用是为“青岛城阳人民医院“设计的掌上医疗APP，旨在引导用户高效轻松就诊。内部集成了支付，环信及时通信，阿里百川用户反馈，就医消息推送等技术。提供了门诊预约，报告查询，科室排队提醒，智能导诊，科室繁忙度，在线缴费，就医咨询等在线就医功能。责任描述：该项目中，本人独立完成整个项目的代码编写工作，此外配合项目相关同事完成项目上线流程，主要职责如下：1、完成项目框架搭建，代码编写；2、及时通信集成，实现医患在线沟通；3、埋点统计，追踪用户行为，以优化设计流程；4、支付功能集成，调试；', 1443, '53739768f6fd4e65834dd87fe6b2f945');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '育经历河南大学2012-2016本科/通信工程社交主页https://github.com/nacui', 1444, '53739768f6fd4e65834dd87fe6b2f945');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '姓名黄杨阳年龄28性别男学历本科电话180-8405-4652邮箱2459593393@qq.com籍贯重庆工作年限3年半应聘职位Java开发工程师期望薪资20000~25000', 1445, '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '熟练Struts2+Spring+Hibernate，SpringMVC+Spring+Mybatis等主流开发框架熟悉hibernate，mybatis持久层框架的开发以及spring容器的IOC，DI，AOP等熟悉HTML、CSS、Jquery、EasyUI、Bootstrap等前端技术熟练JSP、Servlet、Filter、Listener、Cookie、Session、EL表达式、JSTL等技术熟悉MySQL、了解Oracle数据库，能够进行简单的PL/SQL开发，了解MySQL数据库的优化熟悉Maven、SVN、Git，了解Gradle了解Redis、ActiveMQ、Solr、Shiro，Mongodb，Memcached了解SOA架构、Nginx、fastDFS、Dubbo、Quartz了解Linux常用命令熟悉go基础语法，简单使用python，php了解docker，springboot，elasticsearch，solr', 1446, '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_word` VALUES (NULL, '工作经历', '2019/3-2019/6上海趣凡科技技术部后端开发工程师	App接口开发系统上线与功能测试2018/5-2019/1上海哔哩哔哩技术部后端开发工程师	主要从事软件编码与维护工作前端页面设计与bug修复系统上线与功能测试2017/8-2018/5成都愚创科技开发部Java开发工程师主要从事软件编码与维护工作负责接口编写与三方联调前端页面设计与bug修复系统上线与功能测试2015/12-2017/8成都艾萌科技研发部Java开发工程师主要从事软件编码工作负责接口编写与三方联调页面功能测试，编写操作手册', 1447, '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_word` VALUES (NULL, '项目经历', '趣点评App2018/5-2019/1开发环境：IDEA，Git，JDK1.8项目描述：类似小型大众点评的app,用于美食推广，发布种草，评论等项目职责：用户模块，搜索模块开发技术点：solr,elasticsearch7,springbootPassport账号系统/Account管理系统2018/5-2019/1开发环境：IDEA，Git，JDK1.8，统一使用Mac电脑开发，python，php，java，go项目描述：此项目是哔哩哔哩账号项目，目前该账号系统已经拥有3亿注册账号，日活跃用户数百万https://www.bilibili.com项目职责：维护用户的基础信息（勋章、挂件、头像、实名认证、账号找回等）修复线上bug，日常需求迭代，编写文档，单元测试用户实名认证项目迁移使用Java/golang进行项目的需求迭代，php迁移，作为controller层透传接口，python脚本临时修复/同步db数据技术点：java，golang，公司封装的框架SMT收银系统2018/2-2018/5开发环境：IDEA，Tomcat8.5，MySQL5.7，SVN，JDK1.8项目描述：收银系统，给门店，商家线下支付宝/微信刷卡支付公司以springjdbcTemplate为基础封装的一套以JSON对象的Dao层查询，以动态代理+反射为基础+数据库配置+dubbo为底层核心+zookeeper实现web（SpringMVC）层与service通信及方法调用，前端采用vue.js，数据库mongoDB,mysql项目职责：订单、商品，权限管理等模块开发，solr服务搭建功能测试，简单页面修改技术点：前后台均使用公司封装的框架ESOP系统维护与开发：2017/08-2018/1开发环境：IDEA、Eclipse、Tomcat、MySQL项目描述：中国移动集团客户业务综合运营平台（ESOP）是通过对已有系统功能的能力化封装与集成，通过统一的门户界面给系统使用者提供综合、一站式的服务。ESOP系统围绕一套公共的CRM系统整合移动的业务，老版本使用eframework2.0(公司封装的)+jsp自定义标签+ibatis+bpm（公司产品）进行移动业务办理的流程推进。由于业务复杂，不易维护，后续业务分隔成子系统采用SpringBoot+Mybatis进行开发，老版本只负责提供连接地址。项目职责：编写接口文档，写功能测试用例，客户使用手册，项目上线，APP的H5页面编写后台编码，前台页面进行数据的展示，导入，导出以及调用bpm接口进行流程审批技术点：前后台均使用公司封装的框架关键字SQL、SSH/M、AJAX、JS、JSON、jQuery、Bootstrap、SVN、MAVEN、MyEclipse、Java、Tomcat、Linux、quartz海尔云贷开放平台：2016/10-2017/8开发环境：Eclipse、Tomcat、MySQL项目描述：小贷系统与门户系统通过webservice交互，由小贷系统提供通讯URL以及具体webservice的SEI方法。该系统采用SpringMVC+Mybatis+Spring+WebService+HttpClient等技术，以海尔内部提供接口规范为准，为不同的合作伙伴创建接口以完成开户，进件，贷款，还款，账单等一系列接口。项目职责：开发环境搭建，数据库设计，APP/企业/个人开户,进件，贷款等接口开发，联调与测试人行征信系统的部分查询与jsp页面编写，数据库表整理技术点：SpringMVC、Spring、Mybatis、Maven、SVN、JQuery、HMTL、线程池、httpclient、webservice米乐淘：2016/6-2016/9开发环境：Eclipse、Tomcat、MySQL项目描述：这个项目是在线销售电子产品的一个购物平台,分为两个系统,前台售卖系统,后台管理系统,主要业务是展示电子产品，促销等。此项目框架采用分布式SOA开发，主要包括：后台管理系统，网站门户，搜索系统，订单系统，会员系统项目职责：参与单点登录部分业务代码实现参与购物车模块的业务编码页面静态化的实现,门户网站的广告展示订单系统的实现技术点：SSM、Maven、SVN、JQuery、HMTL、EasyUI、Bootstrap、ActiveMQ、Redis、Dubbo、fastDFS维维速运：2015/12-2016/5开发环境：Eclipse、Tomcat、MySQL项目描述：这个项目属于物流管理类的项目,项目针对大学里目前比较流行的快递行业,主要业务是下单,支付,生成订单,上门取货,支付,是使用于大学校园快递的小型项目。项目职责：主要参与用户模块,订单模块,基础模块数据展示及CRUD操作等功能,项目其他任务技术点：SpringMVC、Spring、Mybatis、Maven、SVN、JQuery、HTML5', 1448, '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_word` VALUES (NULL, '教育经历', '本科|2012年9月—2016年6月|重庆理工大学计算机科学与工程学院软件工程专业Java方向', 1449, '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '我评价本人具有良好的团队合作精神，能迅速融入新的团队。易和人相处，能在较大的压力下保持良好的工作状态，善于自我调节。具有良好的编码规范，良好的沟通能力、表达能力。具有强烈的责任感，工作踏实。性格开朗乐观，积极上进。热爱学习，喜欢研究新的技术，具有很强的自学能力和良好的学习方法。', 1450, '76355abc05d94813ac046679095efd26');
INSERT INTO `cv_word` VALUES (NULL, '基本信息', '性别：男年龄：22民族：汉毕业院校：上海第二工业大学专业：电子信息工程学历：本科籍贯：江苏现所在地：上海政治面貌：团员邮箱：377905356@qq.com联系地址：上海市教育背景2015.9---2019.6上海第二工业大学（电子信息工程）专业课程：单片机原理与应用信号与系统语音信号处理模拟电子技术数字电子技术数据结构与算法光通信技术与应用数据通信与计算机网络个人技能具备基础的英语交流能力（CET-4证书CET-6证书）；熟悉C语言（计算机C程序设计二级证书），python，熟悉嵌入式掌握keiluVision5、Dev-C++，vs的运用；具备良好的语言沟通能力（普通话二级甲等）；熟悉word，excel等办公软件个人荣誉2016-2017大二学年校三等奖学金2017-2018大三学年校三等奖学金2017-2018优秀团员个人经历2017.5—2017.1051单片机刷卡机模块移植2018.3—2018.10儿童防丢失智能设备模块移植', 1451, '37d695d684ef459e9337ed0c066ef92d');
INSERT INTO `cv_word` VALUES (NULL, '自我评价', '我评价在大学生活中，本人是一个乐观，积极向上，上进心强，善于帮助他人的人。不论是在项目团队还是在兼职团队中，都有较强的团队精神。在未来的实习工作中，我会以最快的时间熟悉公司的内容以尽快的进入到公司的工作。学习所需要的技术并且结合之前的所学内容在岗位上发挥作用，配合完成相关工作。勤于学习，能不断进步自身的能力与综合素质。我将以充沛的精力，刻苦钻研的精神来努力工作。RESUMEPersonalinformationeducationalbackgroundPersonalskillsSelf-assessment', 1452, '37d695d684ef459e9337ed0c066ef92d');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '系统管理', 1, '0', '/', 'fa fa-cog', '7');
INSERT INTO `menu` VALUES (2, '菜单管理', 2, '1', '/system/menu', '', '1');
INSERT INTO `menu` VALUES (3, '角色管理', 2, '1', '/system/role', '', '2');
INSERT INTO `menu` VALUES (4, '用户管理', 2, '1', '/system/user', '', '3');
INSERT INTO `menu` VALUES (15, '首页', 2, '0', '/first', 'fa fa-home', '1');
INSERT INTO `menu` VALUES (20, '资源管理', 2, '1', '/system/resource', '', '4');
INSERT INTO `menu` VALUES (39, '定义解析规则', 2, '0', '/definition', 'fa fa-file-text', '2');
INSERT INTO `menu` VALUES (40, '选择解析', 2, '0', '/choose', 'fa fa-map-signs', '3');
INSERT INTO `menu` VALUES (41, '上传历史', 2, '0', '/leading', 'fa fa-child', '4');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_del` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0:目录,1:文件',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `full_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (4, 0, '系统管理', 1, 3, NULL, '/', '', 'el-icon-menu', '0,1');
INSERT INTO `resource` VALUES (5, 0, '菜单管理', 4, 1, NULL, '/resource/list/', '', '', '0,1,4');
INSERT INTO `resource` VALUES (6, 0, '角色管理', 4, 2, NULL, '/role/list/', '', '', '0,1,4');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '6,5', 'admin', '管理员', '15,24,25,26,27,28,29,36,22,37,30,31,32,33,34,35,1,2,38,3,4,20');
INSERT INTO `role` VALUES (2, '6,4', 'normal', '普通员工', '15,24,25,26,27,28,29,36,22');
INSERT INTO `role` VALUES (3, NULL, 'vip', 'vip', NULL);

-- ----------------------------
-- Table structure for rule_json
-- ----------------------------
DROP TABLE IF EXISTS `rule_json`;
CREATE TABLE `rule_json`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `rule_json` json NULL,
  `rule_upload_count` int(11) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `version_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule_json
-- ----------------------------
INSERT INTO `rule_json` VALUES (71, 123, '[{\"id\": \"ID1\", \"fieldName\": [{\"value\": \"基本信息\"}, {\"value\": \"个人信息\"}], \"modelName\": \"基本信息\", \"attributeName\": [{\"value\": \"职位\"}, {\"value\": \"公司\"}, {\"value\": \"行业\"}, {\"value\": \"专业\"}, {\"value\": \"学校\"}, {\"value\": \"学历/学位\"}, {\"value\": \"微信号\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"身高\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"家庭地址\"}, {\"value\": \"政治面貌\"}, {\"value\": \"姓名\"}, {\"value\": \"性别\"}, {\"value\": \"年龄\"}, {\"value\": \"邮箱\"}, {\"value\": \"电话\"}, {\"value\": \"籍贯\"}, {\"value\": \"手机号码\"}, {\"value\": \"电子邮件\"}, {\"value\": \"教育程度\"}, {\"value\": \"工作年限\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"职业状态\"}, {\"value\": \"所在地\"}, {\"value\": \"国籍\"}, {\"value\": \"目前职业概况\"}, {\"value\": \"户口/国籍\"}]}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"求职意向\"}, {\"value\": \"专业技能\"}], \"modelName\": \"专业技能\", \"attributeName\": [{\"value\": \"熟悉\"}]}, {\"id\": \"ID3\", \"fieldName\": [{\"value\": \"工作经历\"}, {\"value\": \"工作经验\"}, {\"value\": \"专业技能\"}], \"modelName\": \"工作经历\", \"attributeName\": [{\"value\": \"技术部\"}, {\"value\": \"java\"}]}, {\"id\": \"ID4\", \"fieldName\": [{\"value\": \"项目经历\"}, {\"value\": \"项目经验\"}], \"modelName\": \"项目经历\", \"attributeName\": [{\"value\": \"java\"}]}, {\"id\": \"ID5\", \"fieldName\": [{\"value\": \"教育经历\"}, {\"value\": \"教育经验\"}], \"modelName\": \"教育经历\", \"attributeName\": [{\"value\": \"本科\"}]}, {\"id\": \"ID6\", \"fieldName\": [{\"value\": \"技能特长\"}, {\"value\": \"IT技能\"}], \"modelName\": \"技能特长\", \"attributeName\": []}, {\"id\": \"ID7\", \"fieldName\": [{\"value\": \"自我评价\"}], \"modelName\": \"自我评价\", \"attributeName\": []}]', 42, '2019-07-26 09:38:11', '123553ef544719543858c54e4084abe1d8d');
INSERT INTO `rule_json` VALUES (72, 123, '[{\"id\": \"ID1\", \"fieldName\": [{\"value\": \"基本信息\"}, {\"value\": \"个人信息\"}], \"modelName\": \"基本信息\", \"attributeName\": [{\"value\": \"职位\"}, {\"value\": \"公司\"}, {\"value\": \"行业\"}, {\"value\": \"专业\"}, {\"value\": \"学校\"}, {\"value\": \"学历/学位\"}, {\"value\": \"微信号\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"身高\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"家庭地址\"}, {\"value\": \"政治面貌\"}, {\"value\": \"姓名\"}, {\"value\": \"性别\"}, {\"value\": \"年龄\"}, {\"value\": \"邮箱\"}, {\"value\": \"电话\"}, {\"value\": \"籍贯\"}, {\"value\": \"手机号码\"}, {\"value\": \"电子邮件\"}, {\"value\": \"教育程度\"}, {\"value\": \"工作年限\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"职业状态\"}, {\"value\": \"所在地\"}, {\"value\": \"国籍\"}, {\"value\": \"目前职业概况\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"学历\"}, {\"value\": \"期望薪资\"}]}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"求职意向\"}, {\"value\": \"专业技能\"}], \"modelName\": \"专业技能\", \"attributeName\": [{\"value\": \"熟悉\"}]}, {\"id\": \"ID3\", \"fieldName\": [{\"value\": \"工作经历\"}, {\"value\": \"工作经验\"}, {\"value\": \"专业技能\"}], \"modelName\": \"工作经历\", \"attributeName\": [{\"value\": \"技术部\"}, {\"value\": \"java\"}]}, {\"id\": \"ID4\", \"fieldName\": [{\"value\": \"项目经历\"}, {\"value\": \"项目经验\"}], \"modelName\": \"项目经历\", \"attributeName\": [{\"value\": \"java\"}]}, {\"id\": \"ID5\", \"fieldName\": [{\"value\": \"教育经历\"}, {\"value\": \"教育经验\"}], \"modelName\": \"教育经历\", \"attributeName\": [{\"value\": \"本科\"}]}, {\"id\": \"ID6\", \"fieldName\": [{\"value\": \"技能特长\"}, {\"value\": \"IT技能\"}], \"modelName\": \"技能特长\", \"attributeName\": []}, {\"id\": \"ID7\", \"fieldName\": [{\"value\": \"自我评价\"}], \"modelName\": \"自我评价\", \"attributeName\": []}]', 43, '2019-07-26 09:39:18', '123a16c2993d02a4891875a4d8320308c06');
INSERT INTO `rule_json` VALUES (73, 123, '[{\"id\": \"ID1\", \"fieldName\": [{\"value\": \"基本信息\"}, {\"value\": \"个人信息\"}], \"modelName\": \"基本信息\", \"attributeName\": [{\"value\": \"职位\"}, {\"value\": \"公司\"}, {\"value\": \"行业\"}, {\"value\": \"专业\"}, {\"value\": \"学校\"}, {\"value\": \"微信号\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"身高\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"家庭地址\"}, {\"value\": \"政治面貌\"}, {\"value\": \"姓名\"}, {\"value\": \"性别\"}, {\"value\": \"年龄\"}, {\"value\": \"邮箱\"}, {\"value\": \"电话\"}, {\"value\": \"籍贯\"}, {\"value\": \"手机号码\"}, {\"value\": \"电子邮件\"}, {\"value\": \"教育程度\"}, {\"value\": \"工作年限\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"职业状态\"}, {\"value\": \"所在地\"}, {\"value\": \"国籍\"}, {\"value\": \"目前职业概况\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"学历\"}, {\"value\": \"期望薪资\"}, {\"value\": \"学历/学位\"}]}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"求职意向\"}, {\"value\": \"专业技能\"}], \"modelName\": \"专业技能\", \"attributeName\": [{\"value\": \"熟悉\"}]}, {\"id\": \"ID3\", \"fieldName\": [{\"value\": \"工作经历\"}, {\"value\": \"工作经验\"}, {\"value\": \"专业技能\"}], \"modelName\": \"工作经历\", \"attributeName\": [{\"value\": \"技术部\"}, {\"value\": \"java\"}]}, {\"id\": \"ID4\", \"fieldName\": [{\"value\": \"项目经历\"}, {\"value\": \"项目经验\"}], \"modelName\": \"项目经历\", \"attributeName\": [{\"value\": \"java\"}]}, {\"id\": \"ID5\", \"fieldName\": [{\"value\": \"教育经历\"}, {\"value\": \"教育经验\"}], \"modelName\": \"教育经历\", \"attributeName\": [{\"value\": \"本科\"}]}, {\"id\": \"ID6\", \"fieldName\": [{\"value\": \"技能特长\"}, {\"value\": \"IT技能\"}], \"modelName\": \"技能特长\", \"attributeName\": []}, {\"id\": \"ID7\", \"fieldName\": [{\"value\": \"自我评价\"}], \"modelName\": \"自我评价\", \"attributeName\": []}]', 44, '2019-07-26 09:41:27', '123d4a8e31ac54a44bea43f048bc7b3d7dd');
INSERT INTO `rule_json` VALUES (74, 123, '[{\"id\": \"ID1\", \"fieldName\": [{\"value\": \"基本信息\"}, {\"value\": \"个人信息\"}], \"modelName\": \"基本信息\", \"attributeName\": [{\"value\": \"职位\"}, {\"value\": \"公司\"}, {\"value\": \"行业\"}, {\"value\": \"专业\"}, {\"value\": \"学校\"}, {\"value\": \"学历/学位\"}, {\"value\": \"微信号\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"身高\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"家庭地址\"}, {\"value\": \"政治面貌\"}, {\"value\": \"姓名\"}, {\"value\": \"性别\"}, {\"value\": \"年龄\"}, {\"value\": \"邮箱\"}, {\"value\": \"电话\"}, {\"value\": \"籍贯\"}, {\"value\": \"手机号码\"}, {\"value\": \"电子邮件\"}, {\"value\": \"教育程度\"}, {\"value\": \"工作年限\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"职业状态\"}, {\"value\": \"所在地\"}, {\"value\": \"国籍\"}, {\"value\": \"目前职业概况\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"学历\"}, {\"value\": \"期望薪资\"}]}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"求职意向\"}, {\"value\": \"专业技能\"}], \"modelName\": \"专业技能\", \"attributeName\": []}, {\"id\": \"ID3\", \"fieldName\": [{\"value\": \"工作经历\"}, {\"value\": \"工作经验\"}, {\"value\": \"专业技能\"}], \"modelName\": \"工作经历\", \"attributeName\": []}, {\"id\": \"ID4\", \"fieldName\": [{\"value\": \"项目经历\"}, {\"value\": \"项目经验\"}], \"modelName\": \"项目经历\", \"attributeName\": []}, {\"id\": \"ID5\", \"fieldName\": [{\"value\": \"教育经历\"}, {\"value\": \"教育经验\"}], \"modelName\": \"教育经历\", \"attributeName\": []}, {\"id\": \"ID6\", \"fieldName\": [{\"value\": \"技能特长\"}, {\"value\": \"IT技能\"}], \"modelName\": \"技能特长\", \"attributeName\": []}, {\"id\": \"ID7\", \"fieldName\": [{\"value\": \"自我评价\"}], \"modelName\": \"自我评价\", \"attributeName\": []}]', 45, '2019-07-26 10:11:09', '12328da29a197674ecabda3fe284838d1bb');
INSERT INTO `rule_json` VALUES (75, 123, '[{\"id\": \"ID1\", \"fieldName\": [{\"value\": \"基本信息\"}, {\"value\": \"个人信息\"}], \"modelName\": \"基本信息\", \"attributeName\": [{\"value\": \"职位\"}, {\"value\": \"公司\"}, {\"value\": \"行业\"}, {\"value\": \"专业\"}, {\"value\": \"学校\"}, {\"value\": \"学历/学位\"}, {\"value\": \"微信号\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"身高\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"家庭地址\"}, {\"value\": \"政治面貌\"}, {\"value\": \"姓名\"}, {\"value\": \"性别\"}, {\"value\": \"年龄\"}, {\"value\": \"邮箱\"}, {\"value\": \"电话\"}, {\"value\": \"籍贯\"}, {\"value\": \"手机号码\"}, {\"value\": \"电子邮件\"}, {\"value\": \"教育程度\"}, {\"value\": \"工作年限\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"职业状态\"}, {\"value\": \"所在地\"}, {\"value\": \"国籍\"}, {\"value\": \"目前职业概况\"}, {\"value\": \"户口/国籍\"}]}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"求职意向\"}, {\"value\": \"求职倾向\"}], \"modelName\": \"求职意向\", \"attributeName\": []}, {\"id\": \"ID3\", \"fieldName\": [{\"value\": \"工作经历\"}, {\"value\": \"工作经验\"}, {\"value\": \"专业技能\"}], \"modelName\": \"工作经历\", \"attributeName\": []}, {\"id\": \"ID4\", \"fieldName\": [{\"value\": \"项目经历\"}, {\"value\": \"项目经验\"}], \"modelName\": \"项目经历\", \"attributeName\": []}, {\"id\": \"ID5\", \"fieldName\": [{\"value\": \"教育经历\"}, {\"value\": \"教育经验\"}], \"modelName\": \"教育经历\", \"attributeName\": []}, {\"id\": \"ID6\", \"fieldName\": [{\"value\": \"技能特长\"}], \"modelName\": \"技能特长\", \"attributeName\": []}, {\"id\": \"ID7\", \"fieldName\": [{\"value\": \"自我评价\"}], \"modelName\": \"自我评价\", \"attributeName\": []}]', 46, '2019-07-26 11:00:14', '1230daec58d5c724ec19e5a7a43d6c63c3b');
INSERT INTO `rule_json` VALUES (76, 123, '[{\"id\": \"ID1\", \"fieldName\": [{\"value\": \"基本信息\"}, {\"value\": \"个人信息\"}], \"modelName\": \"基本信息\", \"attributeName\": [{\"value\": \"职位\"}, {\"value\": \"公司\"}, {\"value\": \"行业\"}, {\"value\": \"专业\"}, {\"value\": \"学校\"}, {\"value\": \"学历/学位\"}, {\"value\": \"微信号\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"身高\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"家庭地址\"}, {\"value\": \"政治面貌\"}]}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"求职意向\"}, {\"value\": \"求职倾向\"}], \"modelName\": \"求职意向\"}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"工作经历\"}, {\"value\": \"工作经验\"}], \"modelName\": \"工作经历\"}, {\"id\": \"ID3\", \"fieldName\": [{\"value\": \"项目经历\"}, {\"value\": \"项目经验\"}], \"modelName\": \"项目经历\"}, {\"id\": \"ID4\", \"fieldName\": [{\"value\": \"教育经历\"}, {\"value\": \"教育经验\"}], \"modelName\": \"教育经历\"}, {\"id\": \"ID5\", \"fieldName\": [{\"value\": \"技能特长\"}], \"modelName\": \"技能特长\"}]', 47, '2019-07-30 09:57:23', '12308f5217320214f08b1dc83ebbb4e378f');
INSERT INTO `rule_json` VALUES (77, 123, '[{\"id\": \"ID1\", \"fieldName\": [{\"value\": \"基本信息\"}, {\"value\": \"个人信息\"}, {\"value\": \"个人基本信息\"}], \"modelName\": \"基本信息\", \"attributeName\": [{\"value\": \"职位\"}, {\"value\": \"公司\"}, {\"value\": \"行业\"}, {\"value\": \"专业\"}, {\"value\": \"学校\"}, {\"value\": \"学历/学位\"}, {\"value\": \"微信号\"}, {\"value\": \"户口/国籍\"}, {\"value\": \"身高\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"家庭地址\"}, {\"value\": \"政治面貌\"}, {\"value\": \"姓名\"}, {\"value\": \"性别\"}, {\"value\": \"年龄\"}, {\"value\": \"邮箱\"}, {\"value\": \"电话\"}, {\"value\": \"籍贯\"}, {\"value\": \"手机号码\"}, {\"value\": \"电子邮件\"}, {\"value\": \"教育程度\"}, {\"value\": \"工作年限\"}, {\"value\": \"婚姻状况\"}, {\"value\": \"职业状态\"}, {\"value\": \"所在地\"}, {\"value\": \"国籍\"}, {\"value\": \"目前职业概况\"}, {\"value\": \"户口/国籍\"}]}, {\"id\": \"ID2\", \"fieldName\": [{\"value\": \"求职意向\"}, {\"value\": \"专业技能\"}], \"modelName\": \"专业技能\", \"attributeName\": [{\"value\": \"熟悉\"}]}, {\"id\": \"ID3\", \"fieldName\": [{\"value\": \"工作经历\"}, {\"value\": \"工作经验\"}, {\"value\": \"专业技能\"}], \"modelName\": \"工作经历\", \"attributeName\": [{\"value\": \"技术部\"}, {\"value\": \"java\"}]}, {\"id\": \"ID4\", \"fieldName\": [{\"value\": \"项目经历\"}, {\"value\": \"项目经验\"}], \"modelName\": \"项目经历\", \"attributeName\": [{\"value\": \"java\"}]}, {\"id\": \"ID5\", \"fieldName\": [{\"value\": \"教育经历\"}, {\"value\": \"教育经验\"}], \"modelName\": \"教育经历\", \"attributeName\": [{\"value\": \"本科\"}]}, {\"id\": \"ID6\", \"fieldName\": [{\"value\": \"技能特长\"}], \"modelName\": \"技能特长\", \"attributeName\": []}, {\"id\": \"ID7\", \"fieldName\": [{\"value\": \"自我评价\"}], \"modelName\": \"自我评价\", \"attributeName\": []}]', 48, '2019-07-30 09:58:05', '1233941570b1e44486ea378e393922ce311');

-- ----------------------------
-- Table structure for rule_version
-- ----------------------------
DROP TABLE IF EXISTS `rule_version`;
CREATE TABLE `rule_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id，user的id值',
  `version_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本号=年月日+user_id+3个随机数',
  `model_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名',
  `model_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块值，以逗号分割',
  `rule_key_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则使用的模板说明',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2977 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule_version
-- ----------------------------
INSERT INTO `rule_version` VALUES (2930, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '基本信息', NULL, '1');
INSERT INTO `rule_version` VALUES (2931, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '个人信息', NULL, '1');
INSERT INTO `rule_version` VALUES (2932, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '个人基本信息', NULL, '1');
INSERT INTO `rule_version` VALUES (2933, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '职位', NULL, '2');
INSERT INTO `rule_version` VALUES (2934, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '公司', NULL, '2');
INSERT INTO `rule_version` VALUES (2935, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '行业', NULL, '2');
INSERT INTO `rule_version` VALUES (2936, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '专业', NULL, '2');
INSERT INTO `rule_version` VALUES (2937, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '学校', NULL, '2');
INSERT INTO `rule_version` VALUES (2938, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '学历/学位', NULL, '2');
INSERT INTO `rule_version` VALUES (2939, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '微信号', NULL, '2');
INSERT INTO `rule_version` VALUES (2940, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '户口/国籍', NULL, '2');
INSERT INTO `rule_version` VALUES (2941, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '身高', NULL, '2');
INSERT INTO `rule_version` VALUES (2942, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '婚姻状况', NULL, '2');
INSERT INTO `rule_version` VALUES (2943, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '家庭地址', NULL, '2');
INSERT INTO `rule_version` VALUES (2944, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '政治面貌', NULL, '2');
INSERT INTO `rule_version` VALUES (2945, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '姓名', NULL, '2');
INSERT INTO `rule_version` VALUES (2946, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '性别', NULL, '2');
INSERT INTO `rule_version` VALUES (2947, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '年龄', NULL, '2');
INSERT INTO `rule_version` VALUES (2948, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '邮箱', NULL, '2');
INSERT INTO `rule_version` VALUES (2949, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '电话', NULL, '2');
INSERT INTO `rule_version` VALUES (2950, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '籍贯', NULL, '2');
INSERT INTO `rule_version` VALUES (2951, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '手机号码', NULL, '2');
INSERT INTO `rule_version` VALUES (2952, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '电子邮件', NULL, '2');
INSERT INTO `rule_version` VALUES (2953, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '教育程度', NULL, '2');
INSERT INTO `rule_version` VALUES (2954, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '工作年限', NULL, '2');
INSERT INTO `rule_version` VALUES (2955, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '婚姻状况', NULL, '2');
INSERT INTO `rule_version` VALUES (2956, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '职业状态', NULL, '2');
INSERT INTO `rule_version` VALUES (2957, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '所在地', NULL, '2');
INSERT INTO `rule_version` VALUES (2958, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '国籍', NULL, '2');
INSERT INTO `rule_version` VALUES (2959, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '目前职业概况', NULL, '2');
INSERT INTO `rule_version` VALUES (2960, 123, '1233941570b1e44486ea378e393922ce311', '基本信息', '户口/国籍', NULL, '2');
INSERT INTO `rule_version` VALUES (2961, 123, '1233941570b1e44486ea378e393922ce311', '专业技能', '求职意向', NULL, '1');
INSERT INTO `rule_version` VALUES (2962, 123, '1233941570b1e44486ea378e393922ce311', '专业技能', '专业技能', NULL, '1');
INSERT INTO `rule_version` VALUES (2963, 123, '1233941570b1e44486ea378e393922ce311', '专业技能', '熟悉', NULL, '2');
INSERT INTO `rule_version` VALUES (2964, 123, '1233941570b1e44486ea378e393922ce311', '工作经历', '工作经历', NULL, '1');
INSERT INTO `rule_version` VALUES (2965, 123, '1233941570b1e44486ea378e393922ce311', '工作经历', '工作经验', NULL, '1');
INSERT INTO `rule_version` VALUES (2966, 123, '1233941570b1e44486ea378e393922ce311', '工作经历', '专业技能', NULL, '1');
INSERT INTO `rule_version` VALUES (2967, 123, '1233941570b1e44486ea378e393922ce311', '工作经历', '技术部', NULL, '2');
INSERT INTO `rule_version` VALUES (2968, 123, '1233941570b1e44486ea378e393922ce311', '工作经历', 'java', NULL, '2');
INSERT INTO `rule_version` VALUES (2969, 123, '1233941570b1e44486ea378e393922ce311', '项目经历', '项目经历', NULL, '1');
INSERT INTO `rule_version` VALUES (2970, 123, '1233941570b1e44486ea378e393922ce311', '项目经历', '项目经验', NULL, '1');
INSERT INTO `rule_version` VALUES (2971, 123, '1233941570b1e44486ea378e393922ce311', '项目经历', 'java', NULL, '2');
INSERT INTO `rule_version` VALUES (2972, 123, '1233941570b1e44486ea378e393922ce311', '教育经历', '教育经历', NULL, '1');
INSERT INTO `rule_version` VALUES (2973, 123, '1233941570b1e44486ea378e393922ce311', '教育经历', '教育经验', NULL, '1');
INSERT INTO `rule_version` VALUES (2974, 123, '1233941570b1e44486ea378e393922ce311', '教育经历', '本科', NULL, '2');
INSERT INTO `rule_version` VALUES (2975, 123, '1233941570b1e44486ea378e393922ce311', '技能特长', '技能特长', NULL, '1');
INSERT INTO `rule_version` VALUES (2976, 123, '1233941570b1e44486ea378e393922ce311', '自我评价', '自我评价', NULL, '1');

-- ----------------------------
-- Table structure for rule_version_copy
-- ----------------------------
DROP TABLE IF EXISTS `rule_version_copy`;
CREATE TABLE `rule_version_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则数据库副本---历史版本',
  `user_id` int(11) NULL DEFAULT NULL,
  `version_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rule_key_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '同规则表',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `rule_upload_count` int(11) NULL DEFAULT NULL COMMENT '写入次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2740 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_w
-- ----------------------------
DROP TABLE IF EXISTS `test_w`;
CREATE TABLE `test_w`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `describe_word` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_w
-- ----------------------------
INSERT INTO `test_w` VALUES (1, '王五', '24', '男', '2019-07-30 10:32:02', '好人');
INSERT INTO `test_w` VALUES (2, '王五', '24', '男', '2019-07-30 10:33:14', '好人');
INSERT INTO `test_w` VALUES (3, '王五', '24', '男', '2019-07-30 10:34:33', '好人');
INSERT INTO `test_w` VALUES (4, '李四', '24', '男', '2019-07-30 10:34:33', '不是人');
INSERT INTO `test_w` VALUES (5, '爱丽丝', '24', '女', '2019-07-30 10:34:33', '人');
INSERT INTO `test_w` VALUES (6, '肉丝', '24', '女', '2019-07-30 10:34:33', '菜');

-- ----------------------------
-- Table structure for test_x
-- ----------------------------
DROP TABLE IF EXISTS `test_x`;
CREATE TABLE `test_x`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `change_date` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '根据当前时间戳更新',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_x
-- ----------------------------
INSERT INTO `test_x` VALUES (1, '肉丝', '泡菜', '14', '2019-07-30 10:39:38');
INSERT INTO `test_x` VALUES (2, '爱丽丝', '汤', '10', '2019-07-30 10:40:51');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emp_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '1,2', '1', '123456', NULL, '1');
INSERT INTO `user` VALUES (8, 'holy', '2', '2', '6a3b3c5049655b1afe6d543c1651ae92', NULL, '1');
INSERT INTO `user` VALUES (10, 'zhangchao', '1', '3', '333d3ada338a05b3f1e85d11d6e3874f', NULL, '1');
INSERT INTO `user` VALUES (11, '马翔', '1', '4', 'cb6f0c11ba2df59396b975f8f8e3c7ab', NULL, '1');
INSERT INTO `user` VALUES (12, 'maxiang', '1', '5', '02d2b8bb166ef847ede906d91f268933', NULL, '1');
INSERT INTO `user` VALUES (13, '111', '1', '6', '18034a2cb955e302f40957dcf067b688', NULL, '1');
INSERT INTO `user` VALUES (15, 'test001', '2', '7', 'fbdfdb1befd2ba6b5ea6b979e8305991', '2019-06-06 11:35:34', '1');
INSERT INTO `user` VALUES (16, 'test002', '2', '8', 'a3b478de2fd97e8830160bd1bca91af8', '2019-06-06 11:35:48', '1');
INSERT INTO `user` VALUES (17, 'test003', '2', '003', 'f06e823805bbd7709e7d7632a31bc825', '2019-06-06 11:37:38', '1');
INSERT INTO `user` VALUES (18, 'test004', '2', '004', '4afe56497149bdaa7e573e68819d7c5a', '2019-06-06 11:37:42', '1');
INSERT INTO `user` VALUES (19, 'test005', '2', '005', '0182334e0db250dd23fe6bce7ea245ee', '2019-06-06 11:37:47', '1');
INSERT INTO `user` VALUES (20, 'test011', '2', '011', 'cafbc1a7ac35125c7fa7aaf0f5f4aacf', '2019-06-06 11:38:11', '1');
INSERT INTO `user` VALUES (21, 'test012', '2', '012', 'c8484131afeac48692c71f3ba9ed7217', '2019-06-06 11:38:15', '1');
INSERT INTO `user` VALUES (22, 'test013', '2', '013', 'ebfb3a56a3e958612ffa1ef52572af1d', '2019-06-06 11:38:18', '1');
INSERT INTO `user` VALUES (23, 'test014', '2', '014', 'e374292805556797063220299d095ece', '2019-06-06 11:38:21', '1');
INSERT INTO `user` VALUES (24, 'test021', '2', '021', '06fae5c6ead87df6c64994fcaaffdfbf', '2019-06-06 11:38:28', '1');
INSERT INTO `user` VALUES (25, 'test022', '2', '022', '4767b3a669a89cf66d33d28e2262efe4', '2019-06-06 11:38:30', '1');
INSERT INTO `user` VALUES (26, 'test023', '2', '023', 'b0ea9e80273c7f2f31302c2709814f5f', '2019-06-06 11:38:34', '1');
INSERT INTO `user` VALUES (27, 'test024', '2', '024', '3b2adcd77e800f58c4a6f984f39127c6', '2019-06-06 11:38:37', '1');
INSERT INTO `user` VALUES (29, 'test031', '2', '031', 'abe454d147df0f9f2ead59e3d33a76d4', '2019-06-06 11:39:35', '1');
INSERT INTO `user` VALUES (30, 'test032', '2', '032', '4bfd6b1ecc16c3611e5b9793d0ef336f', '2019-06-06 11:39:39', '1');
INSERT INTO `user` VALUES (31, 'test033', '2', '033', '71481162c98cee90463725c14a67a5e8', '2019-06-06 11:39:43', '1');
INSERT INTO `user` VALUES (32, 'test034', '2', '034', '5d93348f6ca3db5841a311b6d940d114', '2019-06-06 11:39:45', '1');
INSERT INTO `user` VALUES (33, 'test111', '2', '111', '0df4393a867532fccad2bf7612dc3149', '2019-06-06 11:40:30', '1');
INSERT INTO `user` VALUES (34, 'test112', '2', '112', '1314ec2199376e17846a4ef6f6e3f1ea', '2019-06-06 11:40:34', '1');
INSERT INTO `user` VALUES (35, 'test113', '2', '113', 'fe3a7216569d1441226f3b7411c28441', '2019-06-06 11:40:36', '1');
INSERT INTO `user` VALUES (36, 'test114', '2', '114', '5ba4536a953bdea296dc1a1ca89968f5', '2019-06-06 11:40:41', '1');
INSERT INTO `user` VALUES (37, 'test121', '2', '121', '78c1bc87b74e30065644d620b1e3f2f4', '2019-06-06 11:40:46', '1');
INSERT INTO `user` VALUES (38, 'test123', '2', '123', '21ffc9f187f14d81eb17bd96e853f67a', '2019-06-06 11:40:51', '1');
INSERT INTO `user` VALUES (39, 'test124', '2', '124', 'b1158050b39a8f744e893b73c77a0313', '2019-06-06 11:40:55', '1');
INSERT INTO `user` VALUES (40, 'test131', '2', '131', 'c1817bff9ae91ef13e6f33db39f8232e', '2019-06-06 11:41:03', '1');
INSERT INTO `user` VALUES (41, 'test132', '2', '132', '01040a2836351f7909b32a520422a9fc', '2019-06-06 11:41:06', '1');
INSERT INTO `user` VALUES (42, 'test133', '2', '133', '12ce67de5517cd4a661a9673f31afdac', '2019-06-06 11:41:09', '1');
INSERT INTO `user` VALUES (43, 'test134', '2', '134', 'db91bab39ed19df07e29b8a6ece777fe', '2019-06-06 11:41:12', '1');
INSERT INTO `user` VALUES (44, 'test141', '2', '141', 'cbc5f2ae715e12a461a178bbea08b52d', '2019-06-06 11:41:25', '1');
INSERT INTO `user` VALUES (45, 'test142', '2', '142', 'cb6403397473cf521d659852074f131c', '2019-06-06 11:41:28', '1');
INSERT INTO `user` VALUES (46, 'test143', '2', '143', 'db8dc1f5e3680780aa51c9172bb622d9', '2019-06-06 11:41:31', '1');
INSERT INTO `user` VALUES (47, 'test144', '2', '144', '8810ae53460059e89e62957b0edcd685', '2019-06-06 11:41:35', '1');
INSERT INTO `user` VALUES (48, 'test211', '2', '211', '8293f98f2b0f2c73914514c5390b2538', '2019-06-06 11:41:41', '1');
INSERT INTO `user` VALUES (49, 'test212', '2', '212', '968e4804d43307a9d923512aa53a2c5a', '2019-06-06 11:41:45', '1');
INSERT INTO `user` VALUES (50, 'test213', '2', '213', '8c944e9d88c1372461a34225e5d740f5', '2019-06-06 11:41:49', '1');
INSERT INTO `user` VALUES (51, 'test214', '2', '214', '999a57220e553d6750613d41df744f9a', '2019-06-06 11:41:52', '1');
INSERT INTO `user` VALUES (53, 'test221', '2', '221', '306b5cf80dab534e7501a56131d57076', '2019-06-06 11:42:24', '1');
INSERT INTO `user` VALUES (54, 'test222', '2', '222', '5eb7b6fd07ed380f29268db1f6c51c8f', '2019-06-06 11:42:27', '1');
INSERT INTO `user` VALUES (55, 'test223', '2', '223', '14e2867a8693dabcceaa5733a0f72a5a', '2019-06-06 11:42:30', '1');
INSERT INTO `user` VALUES (56, 'test224', '2', '224', '8260ab91caa83ddf83b596be17abc1e9', '2019-06-06 11:42:33', '1');
INSERT INTO `user` VALUES (57, 'test231', '2', '231', '80a6b550b9c3597f2a353c682aa76dff', '2019-06-06 11:42:59', '1');
INSERT INTO `user` VALUES (58, 'test232', '2', '232', 'fa31b60699825441877f01f72ae5d5b8', '2019-06-06 11:43:02', '1');
INSERT INTO `user` VALUES (59, 'test233', '2', '233', 'b7c62feff09d24976cc9dc96b6f40032', '2019-06-06 11:43:05', '1');
INSERT INTO `user` VALUES (60, 'test234', '2', '234', '87460bf33d0806abe005331e498cba87', '2019-06-06 11:43:08', '1');
INSERT INTO `user` VALUES (61, 'test241', '2', '241', 'e001249d3f89f7383554277fa3cc8120', '2019-06-06 11:43:13', '1');
INSERT INTO `user` VALUES (62, 'test242', '2', '242', 'be48ad472ddadeb787f2cabaa543afb5', '2019-06-06 11:43:16', '1');
INSERT INTO `user` VALUES (63, 'test243', '2', '243', '66972d73b06de557283694f8c29bed8d', '2019-06-06 11:43:19', '1');
INSERT INTO `user` VALUES (64, 'test244', '2', '244', '15eb44c5eb59ebec819db3f1cac132b5', '2019-06-06 11:43:22', '1');
INSERT INTO `user` VALUES (65, 'test311', '2', '311', 'e1523676e06d31237c9a94422dcabaa8', '2019-06-06 11:43:30', '1');
INSERT INTO `user` VALUES (66, 'test312', '2', '312', 'd8e3d73354519101b00e977bf0efa576', '2019-06-06 11:43:33', '1');
INSERT INTO `user` VALUES (67, 'test313', '2', '313', '3d9bc294d8d83ffaf18d1805c0fe9e66', '2019-06-06 11:43:37', '1');
INSERT INTO `user` VALUES (68, 'test314', '2', '314', '1621a99f3558c8c527641f843cc1b99b', '2019-06-06 11:43:40', '1');
INSERT INTO `user` VALUES (69, 'test321', '2', '321', '8965464b5480c96c62fe0a80b4126c45', '2019-06-06 11:43:45', '1');
INSERT INTO `user` VALUES (70, 'test322', '2', '322', '61334b585cfc9fa1915a10d30f354c53', '2019-06-06 11:43:47', '1');
INSERT INTO `user` VALUES (71, 'test323', '2', '323', '4c98a76ccc39729eb01ac486916727d0', '2019-06-06 11:43:51', '1');
INSERT INTO `user` VALUES (72, 'test324', '2', '324', 'ed75b96461c9409f7318656be6749aec', '2019-06-06 11:43:54', '1');
INSERT INTO `user` VALUES (73, 'test331', '2', '331', '411b907c31c30fa3c964deace84bc53c', '2019-06-06 11:43:59', '1');
INSERT INTO `user` VALUES (74, 'test332', '2', '332', '6a7408f9f781e72aed2d10348ab93c6d', '2019-06-06 11:44:04', '1');
INSERT INTO `user` VALUES (75, 'test333', '2', '333', 'd1e8ada27d73753de0624688a8a175ff', '2019-06-06 11:44:07', '1');
INSERT INTO `user` VALUES (76, 'test334', '2', '334', '86442ab1427ffa55bd1966fbc31288d9', '2019-06-06 11:44:10', '1');
INSERT INTO `user` VALUES (77, 'test341', '2', '341', '90d3c5913134d6b82adcf22d9bb8e648', '2019-06-06 11:44:14', '1');
INSERT INTO `user` VALUES (78, 'test342', '2', '342', 'f5b2649e15a632b248ca480b5edaf97b', '2019-06-06 11:44:18', '1');
INSERT INTO `user` VALUES (79, 'test344', '2', '344', 'fe13e7bdccef9e36ed349c286bf5b051', '2019-06-06 11:44:23', '1');
INSERT INTO `user` VALUES (80, 'test343', '2', '343', '2449a7f3dbe6684c54c721cb60cba9ee', '2019-06-06 11:44:29', '1');
INSERT INTO `user` VALUES (81, 'test411', '2', '411', '577c75744c43086c7eb5f1ab38b0eea2', '2019-06-06 11:44:39', '1');
INSERT INTO `user` VALUES (82, 'test412', '2', '412', 'a27840dbb273c95c7565a50f2ca92b69', '2019-06-06 11:44:43', '1');
INSERT INTO `user` VALUES (83, 'test413', '2', '413', '4740481b075ab92d52d8f834c33d8c18', '2019-06-06 11:44:46', '1');
INSERT INTO `user` VALUES (84, 'test414', '2', '414', '7510b20428e9409d183cf85e664c3e83', '2019-06-06 11:44:49', '1');
INSERT INTO `user` VALUES (85, 'test421', '2', '421', '3e67f90004a61d43c8c2f242e96cdb93', '2019-06-06 11:44:56', '1');
INSERT INTO `user` VALUES (86, 'test422', '2', '422', '79f06467a37723c0dca47b331e9a9fc5', '2019-06-06 11:44:59', '1');
INSERT INTO `user` VALUES (87, 'test423', '2', '423', 'e726d6cb3b6a23178b8505b788591ce3', '2019-06-06 11:45:02', '1');
INSERT INTO `user` VALUES (88, 'test424', '2', '424', '072a93284590f9a322aeb8b5e8dea19f', '2019-06-06 11:45:05', '1');
INSERT INTO `user` VALUES (89, 'test431', '2', '431', '3b1b520790f6294535373063f78b62d2', '2019-06-06 11:45:11', '1');
INSERT INTO `user` VALUES (90, 'test432', '2', '432', '576aec06fa629b47a3204a6917278eca', '2019-06-06 11:45:13', '1');
INSERT INTO `user` VALUES (91, 'test433', '2', '433', '755ab7aa1798fbacb9c4930bfcc099cc', '2019-06-06 11:45:16', '1');
INSERT INTO `user` VALUES (92, 'test434', '2', '434', 'eafef4d22cf19e422c63ee4a0f1a18fc', '2019-06-06 11:45:20', '1');
INSERT INTO `user` VALUES (93, 'test441', '2', '441', 'b70fc91d02de35d15750845692c0bbc4', '2019-06-06 11:45:26', '1');
INSERT INTO `user` VALUES (94, 'test442', '2', '442', '7cabd99e095531662cf488a4bc935879', '2019-06-06 11:45:29', '1');
INSERT INTO `user` VALUES (95, 'test443', '2', '443', '2c9ea18eb85e06909da3b06b13f6c9f6', '2019-06-06 11:45:31', '1');
INSERT INTO `user` VALUES (96, 'test444', '2', '444', '7712505b6fbff5c68827889221a0921a', '2019-06-06 11:45:36', '1');
INSERT INTO `user` VALUES (97, 'test041', '2', '041', '3acfbcabb931e33bb4c865072831a0f8', '2019-06-06 11:49:33', '1');
INSERT INTO `user` VALUES (98, 'test042', '2', '042', 'c66620b696c82618fa0e694fe016876c', '2019-06-06 11:49:36', '1');
INSERT INTO `user` VALUES (99, 'test043', '2', '043', '5b56b2006bc8e76bb230c326cc66e96f', '2019-06-06 11:49:40', '1');
INSERT INTO `user` VALUES (100, 'test044', '2', '044', 'a84c7d05885b5fcee30b648f89bb7da4', '2019-06-06 11:49:42', '1');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `level_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `english_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1、前台员工2、后台员工3、临时员工4、功能账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '1', '张三', '295731403@qq.com', '1', '2019-04-25 10:01:24', 'level1', 'ZhangSan', '后台员工');
INSERT INTO `user_info` VALUES (2, '2', '李四', 'tombsky@126.com', '2', NULL, 'level1', 'LiSi', '后台员工');
INSERT INTO `user_info` VALUES (3, '3', '张超', 'tombsky@163.com', '3', NULL, 'level1', 'WangWu', '后台员工');
INSERT INTO `user_info` VALUES (4, '4', '马翔', '1341198325@qq.com', '4', NULL, 'level1', 'ZhaoLiu', '后台员工');
INSERT INTO `user_info` VALUES (5, '5', '唐七', 'holy2012@163.com', '5', NULL, 'level1', 'TangQi', '后台员工');
INSERT INTO `user_info` VALUES (6, '6', '何八', '', '6', NULL, 'level1', 'HeBa', '后台员工');
INSERT INTO `user_info` VALUES (7, '7', 'test001', '', '001', NULL, 'level1', 'test001', '后台员工');
INSERT INTO `user_info` VALUES (8, '8', 'test002', NULL, '002', NULL, 'level2', 'test002', '后台员工');
INSERT INTO `user_info` VALUES (9, '003', 'test003', NULL, '003', NULL, 'level2', 'test003', '后台员工');
INSERT INTO `user_info` VALUES (10, '004', 'test004', NULL, '004', NULL, 'level2', 'test004', '后台员工');
INSERT INTO `user_info` VALUES (11, '005', 'test005', NULL, '005', NULL, 'level2', 'test005', '后台员工');
INSERT INTO `user_info` VALUES (12, '011', 'test011', NULL, '011', NULL, 'level2', 'test011', '后台员工');
INSERT INTO `user_info` VALUES (13, '012', 'test012', NULL, '012', NULL, 'level2', 'test012', '后台员工');
INSERT INTO `user_info` VALUES (14, '013', 'test013', NULL, '013', NULL, 'level2', 'test013', '后台员工');
INSERT INTO `user_info` VALUES (15, '014', 'test014', NULL, '014', NULL, 'level2', 'test014', '后台员工');
INSERT INTO `user_info` VALUES (16, '021', 'test021', NULL, '021', NULL, 'level2', 'test021', '后台员工');
INSERT INTO `user_info` VALUES (17, '022', 'test022', NULL, '022', NULL, 'level2', 'test022', '后台员工');
INSERT INTO `user_info` VALUES (18, '023', 'test023', NULL, '023', NULL, 'level2', 'test023', '后台员工');
INSERT INTO `user_info` VALUES (19, '024', 'test024', NULL, '024', NULL, 'level2', 'test024', '后台员工');
INSERT INTO `user_info` VALUES (20, '031', 'test031', NULL, '031', NULL, 'level2', 'test031', '后台员工');
INSERT INTO `user_info` VALUES (21, '032', 'test032', NULL, '032', NULL, 'level2', 'test032', '后台员工');
INSERT INTO `user_info` VALUES (22, '033', 'test033', NULL, '033', NULL, 'level2', 'test033', '后台员工');
INSERT INTO `user_info` VALUES (23, '034', 'test034', NULL, '034', NULL, 'level2', 'test034', '后台员工');
INSERT INTO `user_info` VALUES (24, '111', 'test111', NULL, '111', NULL, 'level2', 'test111', '后台员工');
INSERT INTO `user_info` VALUES (25, '112', 'test112', NULL, '112', NULL, 'level2', 'test112', '后台员工');
INSERT INTO `user_info` VALUES (26, '113', 'test113', NULL, '113', NULL, 'level2', 'test113', '后台员工');
INSERT INTO `user_info` VALUES (27, '114', 'test114', NULL, '114', NULL, 'level2', 'test114', '后台员工');
INSERT INTO `user_info` VALUES (28, '121', 'test121', NULL, '121', NULL, 'level2', 'test121', '后台员工');
INSERT INTO `user_info` VALUES (29, '123', 'test123', NULL, '123', NULL, 'level2', 'test123', '后台员工');
INSERT INTO `user_info` VALUES (30, '124', 'test124', NULL, '124', NULL, 'level2', 'test124', '后台员工');
INSERT INTO `user_info` VALUES (31, '131', 'test131', NULL, '131', NULL, 'level2', 'test131', '后台员工');
INSERT INTO `user_info` VALUES (32, '132', 'test132', NULL, '132', NULL, 'level2', 'test132', '后台员工');
INSERT INTO `user_info` VALUES (33, '133', 'test133', NULL, '133', NULL, 'level2', 'test133', '后台员工');
INSERT INTO `user_info` VALUES (34, '134', 'test134', NULL, '134', NULL, 'level2', 'test134', '后台员工');
INSERT INTO `user_info` VALUES (35, '141', 'test141', NULL, '141', NULL, 'level2', 'test141', '前台员工');
INSERT INTO `user_info` VALUES (36, '142', 'test142', NULL, '142', NULL, 'level2', 'test142', '后台员工');
INSERT INTO `user_info` VALUES (37, '143', 'test143', NULL, '143', NULL, 'level2', 'test143', '后台员工');
INSERT INTO `user_info` VALUES (38, '144', 'test144', NULL, '144', NULL, 'level2', 'test144', '后台员工');
INSERT INTO `user_info` VALUES (39, '211', 'test211', NULL, '211', NULL, 'level2', 'test211', '后台员工');
INSERT INTO `user_info` VALUES (40, '212', 'test212', NULL, '212', NULL, 'level2', 'test212', '后台员工');
INSERT INTO `user_info` VALUES (41, '213', 'test213', NULL, '213', NULL, 'level2', 'test213', '后台员工');
INSERT INTO `user_info` VALUES (42, '214', 'test214', NULL, '214', NULL, 'level2', 'test214', '后台员工');
INSERT INTO `user_info` VALUES (43, '221', 'test221', NULL, '221', NULL, 'level2', 'test221', '后台员工');
INSERT INTO `user_info` VALUES (44, '222', 'test222', NULL, '222', NULL, 'level2', 'test222', '后台员工');
INSERT INTO `user_info` VALUES (45, '223', 'test223', NULL, '223', NULL, 'level2', 'test223', '后台员工');
INSERT INTO `user_info` VALUES (46, '224', 'test224', NULL, '224', NULL, 'level2', 'test224', '后台员工');
INSERT INTO `user_info` VALUES (47, '231', 'test231', NULL, '231', NULL, 'level2', 'test231', '后台员工');
INSERT INTO `user_info` VALUES (48, '232', 'test232', NULL, '232', NULL, 'level2', 'test232', '后台员工');
INSERT INTO `user_info` VALUES (49, '233', 'test233', NULL, '233', NULL, 'level2', 'test233', '后台员工');
INSERT INTO `user_info` VALUES (50, '234', 'test234', NULL, '234', NULL, 'level2', 'test234', '后台员工');
INSERT INTO `user_info` VALUES (51, '241', 'test241', NULL, '241', NULL, 'level2', 'test241', '后台员工');
INSERT INTO `user_info` VALUES (52, '242', 'test242', NULL, '242', NULL, 'level2', 'test242', '后台员工');
INSERT INTO `user_info` VALUES (53, '243', 'test243', NULL, '243', NULL, 'level2', 'test243', '后台员工');
INSERT INTO `user_info` VALUES (54, '244', 'test244', NULL, '244', NULL, 'level2', 'test244', '后台员工');
INSERT INTO `user_info` VALUES (55, '311', 'test311', NULL, '311', NULL, 'level2', 'test311', '后台员工');
INSERT INTO `user_info` VALUES (56, '312', 'test312', NULL, '312', NULL, 'level2', 'test312', '后台员工');
INSERT INTO `user_info` VALUES (57, '313', 'test313', NULL, '313', NULL, 'level2', 'test313', '后台员工');
INSERT INTO `user_info` VALUES (58, '314', 'test314', NULL, '314', NULL, 'level2', 'test314', '后台员工');
INSERT INTO `user_info` VALUES (59, '321', 'test321', NULL, '321', NULL, 'level2', 'test321', '后台员工');
INSERT INTO `user_info` VALUES (60, '322', 'test322', NULL, '322', NULL, 'level2', 'test322', '后台员工');
INSERT INTO `user_info` VALUES (61, '323', 'test323', NULL, '323', NULL, 'level2', 'test323', '后台员工');
INSERT INTO `user_info` VALUES (62, '324', 'test324', NULL, '324', NULL, 'level2', 'test324', '后台员工');
INSERT INTO `user_info` VALUES (63, '331', 'test331', NULL, '331', NULL, 'level2', 'test331', '后台员工');
INSERT INTO `user_info` VALUES (64, '332', 'test332', NULL, '332', NULL, 'level2', 'test332', '后台员工');
INSERT INTO `user_info` VALUES (65, '333', 'test333', NULL, '333', NULL, 'level2', 'test333', '后台员工');
INSERT INTO `user_info` VALUES (66, '334', 'test334', NULL, '334', NULL, 'level2', 'test334', '后台员工');
INSERT INTO `user_info` VALUES (67, '341', 'test341', NULL, '341', NULL, 'level2', 'test341', '后台员工');
INSERT INTO `user_info` VALUES (68, '342', 'test342', NULL, '342', NULL, 'level2', 'test342', '后台员工');
INSERT INTO `user_info` VALUES (69, '344', 'test344', NULL, '344', NULL, 'level2', 'test344', '后台员工');
INSERT INTO `user_info` VALUES (70, '343', 'test343', NULL, '343', NULL, 'level2', 'test343', '后台员工');
INSERT INTO `user_info` VALUES (71, '411', 'test411', NULL, '411', NULL, 'level2', 'test411', '后台员工');
INSERT INTO `user_info` VALUES (72, '412', 'test412', NULL, '412', NULL, 'level2', 'test412', '后台员工');
INSERT INTO `user_info` VALUES (73, '413', 'test413', NULL, '413', NULL, 'level2', 'test413', '后台员工');
INSERT INTO `user_info` VALUES (74, '414', 'test414', NULL, '414', NULL, 'level2', 'test414', '后台员工');
INSERT INTO `user_info` VALUES (75, '421', 'test421', NULL, '421', NULL, 'level2', 'test421', '后台员工');
INSERT INTO `user_info` VALUES (76, '422', 'test422', NULL, '422', NULL, 'level2', 'test422', '后台员工');
INSERT INTO `user_info` VALUES (77, '423', 'test423', NULL, '423', NULL, 'level2', 'test423', '后台员工');
INSERT INTO `user_info` VALUES (78, '424', 'test424', NULL, '424', NULL, 'level2', 'test424', '后台员工');
INSERT INTO `user_info` VALUES (79, '431', 'test431', NULL, '431', NULL, 'level2', 'test431', '后台员工');
INSERT INTO `user_info` VALUES (80, '432', 'test432', NULL, '432', NULL, 'level2', 'test432', '后台员工');
INSERT INTO `user_info` VALUES (81, '433', 'test433', NULL, '433', NULL, 'level2', 'test433', '后台员工');
INSERT INTO `user_info` VALUES (82, '434', 'test434', NULL, '434', NULL, 'level2', 'test434', '后台员工');
INSERT INTO `user_info` VALUES (83, '441', 'test441', NULL, '441', NULL, 'level2', 'test441', '后台员工');
INSERT INTO `user_info` VALUES (84, '442', 'test442', NULL, '442', NULL, 'level2', 'test442', '后台员工');
INSERT INTO `user_info` VALUES (85, '443', 'test443', NULL, '443', NULL, 'level2', 'test443', '后台员工');
INSERT INTO `user_info` VALUES (86, '444', 'test444', NULL, '444', NULL, 'level2', 'test444', '后台员工');
INSERT INTO `user_info` VALUES (87, '041', 'test041', NULL, '041', NULL, 'level2', 'test041', '后台员工');
INSERT INTO `user_info` VALUES (88, '042', 'test042', NULL, '042', NULL, 'level2', 'test042', '后台员工');
INSERT INTO `user_info` VALUES (89, '043', 'test043', NULL, '043', NULL, 'level2', 'test043', '后台员工');
INSERT INTO `user_info` VALUES (90, '044', 'test044', NULL, '044', NULL, 'level2', 'test044', '前台员工');

SET FOREIGN_KEY_CHECKS = 1;
