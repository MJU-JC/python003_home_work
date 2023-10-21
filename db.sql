-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangoclhj5
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `djangoclhj5`
--

/*!40000 DROP DATABASE IF EXISTS `djangoclhj5`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangoclhj5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `djangoclhj5`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='成员交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2022-02-23 06:31:56','帖子标题1','帖子内容1',0,1,'用户名1','开放'),(102,'2022-02-23 06:31:56','帖子标题2','帖子内容2',0,2,'用户名2','开放'),(103,'2022-02-23 06:31:56','帖子标题3','帖子内容3',0,3,'用户名3','开放'),(104,'2022-02-23 06:31:56','帖子标题4','帖子内容4',0,4,'用户名4','开放'),(105,'2022-02-23 06:31:56','帖子标题5','帖子内容5',0,5,'用户名5','开放'),(106,'2022-02-23 06:31:56','帖子标题6','帖子内容6',0,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuofenpei`
--

DROP TABLE IF EXISTS `gongzuofenpei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuofenpei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gongzuomingcheng` varchar(200) DEFAULT NULL COMMENT '工作名称',
  `gongzuoleixing` varchar(200) DEFAULT NULL COMMENT '工作类型',
  `fenpeishijian` datetime DEFAULT NULL COMMENT '分配时间',
  `fenpeiyuanyin` longtext COMMENT '分配原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645598140677 DEFAULT CHARSET=utf8 COMMENT='工作分配';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuofenpei`
--

LOCK TABLES `gongzuofenpei` WRITE;
/*!40000 ALTER TABLE `gongzuofenpei` DISABLE KEYS */;
INSERT INTO `gongzuofenpei` VALUES (51,'2022-02-23 06:31:56','工号1','姓名1','工作名称1','工作类型1','2022-02-23 14:31:56','分配原因1','是',''),(52,'2022-02-23 06:31:56','工号2','姓名2','工作名称2','工作类型2','2022-02-23 14:31:56','分配原因2','是',''),(53,'2022-02-23 06:31:56','工号3','姓名3','工作名称3','工作类型3','2022-02-23 14:31:56','分配原因3','是',''),(54,'2022-02-23 06:31:56','工号4','姓名4','工作名称4','工作类型4','2022-02-23 14:31:56','分配原因4','是',''),(55,'2022-02-23 06:31:56','工号5','姓名5','工作名称5','工作类型5','2022-02-23 14:31:56','分配原因5','是',''),(56,'2022-02-23 06:31:56','工号6','姓名6','工作名称6','工作类型6','2022-02-23 14:31:56','分配原因6','是',''),(1645598140676,'2022-02-23 06:35:40','11','姓名1','工作名称1','工作类型1','2022-02-23 14:35:37','第三方是非得失水电费','是','接了232');
/*!40000 ALTER TABLE `gongzuofenpei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuoleixing`
--

DROP TABLE IF EXISTS `gongzuoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongzuoleixing` varchar(200) DEFAULT NULL COMMENT '工作类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongzuoleixing` (`gongzuoleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='工作类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuoleixing`
--

LOCK TABLES `gongzuoleixing` WRITE;
/*!40000 ALTER TABLE `gongzuoleixing` DISABLE KEYS */;
INSERT INTO `gongzuoleixing` VALUES (21,'2022-02-23 06:31:56','工作类型1'),(22,'2022-02-23 06:31:56','工作类型2'),(23,'2022-02-23 06:31:56','工作类型3'),(24,'2022-02-23 06:31:56','工作类型4'),(25,'2022-02-23 06:31:56','工作类型5'),(26,'2022-02-23 06:31:56','工作类型6');
/*!40000 ALTER TABLE `gongzuoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuoxinxi`
--

DROP TABLE IF EXISTS `gongzuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gongzuomingcheng` varchar(200) DEFAULT NULL COMMENT '工作名称',
  `gongzuoleixing` varchar(200) DEFAULT NULL COMMENT '工作类型',
  `gongzuowendang` varchar(200) DEFAULT NULL COMMENT '工作文档',
  `gongzuozhuangtai` varchar(200) NOT NULL COMMENT '工作状态',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645598344298 DEFAULT CHARSET=utf8 COMMENT='工作信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuoxinxi`
--

LOCK TABLES `gongzuoxinxi` WRITE;
/*!40000 ALTER TABLE `gongzuoxinxi` DISABLE KEYS */;
INSERT INTO `gongzuoxinxi` VALUES (61,'2022-02-23 06:31:56','工号1','姓名1','工作名称1','工作类型1','','待办工作','2022-02-23 14:31:56','工作内容1','是',''),(62,'2022-02-23 06:31:56','工号2','姓名2','工作名称2','工作类型2','','待办工作','2022-02-23 14:31:56','工作内容2','是',''),(63,'2022-02-23 06:31:56','工号3','姓名3','工作名称3','工作类型3','','待办工作','2022-02-23 14:31:56','工作内容3','是',''),(64,'2022-02-23 06:31:56','工号4','姓名4','工作名称4','工作类型4','','待办工作','2022-02-23 14:31:56','工作内容4','是',''),(65,'2022-02-23 06:31:56','工号5','姓名5','工作名称5','工作类型5','','待办工作','2022-02-23 14:31:56','工作内容5','是',''),(66,'2022-02-23 06:31:56','工号6','姓名6','工作名称6','工作类型6','','待办工作','2022-02-23 14:31:56','工作内容6','是',''),(1645598327700,'2022-02-23 06:38:47','11','姓名1','工作名称1','工作类型1','upload/1645598325949.doc','已完成','2022-02-23 14:38:37','<p>水电费电商发送到发送到</p>','是','确认完成11'),(1645598344297,'2022-02-23 06:39:04','11','姓名1','工作名称1','工作类型1','upload/1645598341088.doc','已完成','2022-02-23 14:38:59','<p>水电费电商发多少</p>','否','');
/*!40000 ALTER TABLE `gongzuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuoxuanqu`
--

DROP TABLE IF EXISTS `gongzuoxuanqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuoxuanqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gongzuomingcheng` varchar(200) DEFAULT NULL COMMENT '工作名称',
  `gongzuoleixing` varchar(200) DEFAULT NULL COMMENT '工作类型',
  `xuanqushijian` datetime DEFAULT NULL COMMENT '选取时间',
  `xuanquyuanyin` longtext COMMENT '选取原因',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645598284997 DEFAULT CHARSET=utf8 COMMENT='工作选取';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuoxuanqu`
--

LOCK TABLES `gongzuoxuanqu` WRITE;
/*!40000 ALTER TABLE `gongzuoxuanqu` DISABLE KEYS */;
INSERT INTO `gongzuoxuanqu` VALUES (41,'2022-02-23 06:31:56','工号1','姓名1','工作名称1','工作类型1','2022-02-23 14:31:56','选取原因1',1,1,'是',''),(42,'2022-02-23 06:31:56','工号2','姓名2','工作名称2','工作类型2','2022-02-23 14:31:56','选取原因2',2,2,'是',''),(43,'2022-02-23 06:31:56','工号3','姓名3','工作名称3','工作类型3','2022-02-23 14:31:56','选取原因3',3,3,'是',''),(44,'2022-02-23 06:31:56','工号4','姓名4','工作名称4','工作类型4','2022-02-23 14:31:56','选取原因4',4,4,'是',''),(45,'2022-02-23 06:31:56','工号5','姓名5','工作名称5','工作类型5','2022-02-23 14:31:56','选取原因5',5,5,'是',''),(46,'2022-02-23 06:31:56','工号6','姓名6','工作名称6','工作类型6','2022-02-23 14:31:56','选取原因6',6,6,'是',''),(1645598284996,'2022-02-23 06:38:04','11','姓名1','工作名称1','工作类型1','2022-02-23 14:38:00','<p>水电费时代</p>',11,31,'是','水电费电商');
/*!40000 ALTER TABLE `gongzuoxuanqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuozhuye`
--

DROP TABLE IF EXISTS `gongzuozhuye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuozhuye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongzuomingcheng` varchar(200) NOT NULL COMMENT '工作名称',
  `jianjie` longtext COMMENT '简介',
  `gongzuoleixing` varchar(200) DEFAULT NULL COMMENT '工作类型',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='工作主页';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuozhuye`
--

LOCK TABLES `gongzuozhuye` WRITE;
/*!40000 ALTER TABLE `gongzuozhuye` DISABLE KEYS */;
INSERT INTO `gongzuozhuye` VALUES (31,'2022-02-23 06:31:56','工作名称1','简介1','工作类型1','内容1','2022-02-23','upload/gongzuozhuye_fengmian1.jpg','2022-02-23 14:31:56',6),(32,'2022-02-23 06:31:56','工作名称2','简介2','工作类型2','内容2','2022-02-23','upload/gongzuozhuye_fengmian2.jpg','2022-02-23 14:31:56',2),(33,'2022-02-23 06:31:56','工作名称3','简介3','工作类型3','内容3','2022-02-23','upload/gongzuozhuye_fengmian3.jpg','2022-02-23 14:31:56',3),(34,'2022-02-23 06:31:56','工作名称4','简介4','工作类型4','内容4','2022-02-23','upload/gongzuozhuye_fengmian4.jpg','2022-02-23 14:31:56',4),(35,'2022-02-23 06:31:56','工作名称5','简介5','工作类型5','内容5','2022-02-23','upload/gongzuozhuye_fengmian5.jpg','2022-02-23 14:31:56',5),(36,'2022-02-23 06:31:56','工作名称6','简介6','工作类型6','内容6','2022-02-23','upload/gongzuozhuye_fengmian6.jpg','2022-02-23 14:31:56',6);
/*!40000 ALTER TABLE `gongzuozhuye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jixiaoxinxi`
--

DROP TABLE IF EXISTS `jixiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jixiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `yuangongkaoqin` int(11) DEFAULT NULL COMMENT '员工考勤',
  `gongzuotaidu` int(11) DEFAULT NULL COMMENT '工作态度',
  `yewujineng` int(11) DEFAULT NULL COMMENT '业务技能',
  `gongzuojixiao` int(11) DEFAULT NULL COMMENT '工作绩效',
  `zongdefen` varchar(200) DEFAULT NULL COMMENT '总得分',
  `pingjiadengji` varchar(200) DEFAULT NULL COMMENT '评价等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='绩效信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jixiaoxinxi`
--

LOCK TABLES `jixiaoxinxi` WRITE;
/*!40000 ALTER TABLE `jixiaoxinxi` DISABLE KEYS */;
INSERT INTO `jixiaoxinxi` VALUES (71,'2022-02-23 06:31:56','工号1','姓名1','月份1',10,10,10,10,'总得分1','优秀'),(72,'2022-02-23 06:31:56','工号2','姓名2','月份2',10,10,10,10,'总得分2','优秀'),(73,'2022-02-23 06:31:56','工号3','姓名3','月份3',10,10,10,10,'总得分3','优秀'),(74,'2022-02-23 06:31:56','工号4','姓名4','月份4',10,10,10,10,'总得分4','优秀'),(75,'2022-02-23 06:31:56','工号5','姓名5','月份5',10,10,10,10,'总得分5','优秀'),(76,'2022-02-23 06:31:56','工号6','姓名6','月份6',10,10,10,10,'总得分6','优秀');
/*!40000 ALTER TABLE `jixiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhigonggao`
--

DROP TABLE IF EXISTS `tongzhigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhigonggao`
--

LOCK TABLES `tongzhigonggao` WRITE;
/*!40000 ALTER TABLE `tongzhigonggao` DISABLE KEYS */;
INSERT INTO `tongzhigonggao` VALUES (91,'2022-02-23 06:31:56','标题1','简介1','2022-02-23','upload/tongzhigonggao_fengmian1.jpg','内容1','2022-02-23 14:31:56',1),(92,'2022-02-23 06:31:56','标题2','简介2','2022-02-23','upload/tongzhigonggao_fengmian2.jpg','内容2','2022-02-23 14:31:56',2),(93,'2022-02-23 06:31:56','标题3','简介3','2022-02-23','upload/tongzhigonggao_fengmian3.jpg','内容3','2022-02-23 14:31:56',3),(94,'2022-02-23 06:31:56','标题4','简介4','2022-02-23','upload/tongzhigonggao_fengmian4.jpg','内容4','2022-02-23 14:31:56',4),(95,'2022-02-23 06:31:56','标题5','简介5','2022-02-23','upload/tongzhigonggao_fengmian5.jpg','内容5','2022-02-23 14:31:56',5),(96,'2022-02-23 06:31:56','标题6','简介6','2022-02-23','upload/tongzhigonggao_fengmian6.jpg','内容6','2022-02-23 14:31:56',6);
/*!40000 ALTER TABLE `tongzhigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-02-23 06:31:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuqiushenqing`
--

DROP TABLE IF EXISTS `xuqiushenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuqiushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xuqiushijian` datetime DEFAULT NULL COMMENT '需求时间',
  `xiangxishuoming` longtext COMMENT '详细说明',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='需求申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuqiushenqing`
--

LOCK TABLES `xuqiushenqing` WRITE;
/*!40000 ALTER TABLE `xuqiushenqing` DISABLE KEYS */;
INSERT INTO `xuqiushenqing` VALUES (81,'2022-02-23 06:31:56','标题1','2022-02-23 14:31:56','详细说明1','2022-02-23','工号1','姓名1','手机1','是',''),(82,'2022-02-23 06:31:56','标题2','2022-02-23 14:31:56','详细说明2','2022-02-23','工号2','姓名2','手机2','是',''),(83,'2022-02-23 06:31:56','标题3','2022-02-23 14:31:56','详细说明3','2022-02-23','工号3','姓名3','手机3','是',''),(84,'2022-02-23 06:31:56','标题4','2022-02-23 14:31:56','详细说明4','2022-02-23','工号4','姓名4','手机4','是',''),(85,'2022-02-23 06:31:56','标题5','2022-02-23 14:31:56','详细说明5','2022-02-23','工号5','姓名5','手机5','是',''),(86,'2022-02-23 06:31:56','标题6','2022-02-23 14:31:56','详细说明6','2022-02-23','工号6','姓名6','手机6','是','');
/*!40000 ALTER TABLE `xuqiushenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2022-02-23 06:31:56','11','11','姓名1','男','年龄1','13823888881','440300199101010001','upload/yuangong_tupian1.jpg'),(12,'2022-02-23 06:31:56','工号2','123456','姓名2','男','年龄2','13823888882','440300199202020002','upload/yuangong_tupian2.jpg'),(13,'2022-02-23 06:31:56','工号3','123456','姓名3','男','年龄3','13823888883','440300199303030003','upload/yuangong_tupian3.jpg'),(14,'2022-02-23 06:31:56','工号4','123456','姓名4','男','年龄4','13823888884','440300199404040004','upload/yuangong_tupian4.jpg'),(15,'2022-02-23 06:31:56','工号5','123456','姓名5','男','年龄5','13823888885','440300199505050005','upload/yuangong_tupian5.jpg'),(16,'2022-02-23 06:31:56','工号6','123456','姓名6','男','年龄6','13823888886','440300199606060006','upload/yuangong_tupian6.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 12:04:36
