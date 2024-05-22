-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot4b1w3
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
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053562115 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (31,'2021-03-18 07:35:17','班级1'),(32,'2021-03-18 07:35:17','班级2'),(33,'2021-03-18 07:35:17','班级3'),(34,'2021-03-18 07:35:17','班级4'),(35,'2021-03-18 07:35:17','班级5'),(36,'2021-03-18 07:35:17','班级6'),(1616053562114,'2021-03-18 07:46:01','生工1905班');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baoxiuchuli`
--

DROP TABLE IF EXISTS `baoxiuchuli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baoxiuchuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiushebei` varchar(200) DEFAULT NULL COMMENT '报修设备',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `baoxiuriqi` varchar(200) DEFAULT NULL COMMENT '报修日期',
  `weixiufankui` varchar(200) DEFAULT NULL COMMENT '维修反馈',
  `weixiujindu` varchar(200) DEFAULT NULL COMMENT '维修进度',
  `gengxinriqi` datetime DEFAULT NULL COMMENT '更新日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053847098 DEFAULT CHARSET=utf8 COMMENT='报修处理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoxiuchuli`
--

LOCK TABLES `baoxiuchuli` WRITE;
/*!40000 ALTER TABLE `baoxiuchuli` DISABLE KEYS */;
INSERT INTO `baoxiuchuli` VALUES (91,'2021-03-18 07:35:17','报修设备1','类型1','报修日期1','维修反馈1','维修中','2021-03-18 15:35:17','学号1','学生姓名1','班级1','宿舍号1'),(92,'2021-03-18 07:35:17','报修设备2','类型2','报修日期2','维修反馈2','维修中','2021-03-18 15:35:17','学号2','学生姓名2','班级2','宿舍号2'),(93,'2021-03-18 07:35:17','报修设备3','类型3','报修日期3','维修反馈3','维修中','2021-03-18 15:35:17','学号3','学生姓名3','班级3','宿舍号3'),(94,'2021-03-18 07:35:17','报修设备4','类型4','报修日期4','维修反馈4','维修中','2021-03-18 15:35:17','学号4','学生姓名4','班级4','宿舍号4'),(95,'2021-03-18 07:35:17','报修设备5','类型5','报修日期5','维修反馈5','维修中','2021-03-18 15:35:17','学号5','学生姓名5','班级5','宿舍号5'),(96,'2021-03-18 07:35:17','报修设备6','类型6','报修日期6','维修反馈6','维修中','2021-03-18 15:35:17','学号6','学生姓名6','班级6','宿舍号6'),(1616053847097,'2021-03-18 07:50:46','水龙头','水工','2021-03-18','需要维修费30元','已完成','2021-03-18 20:50:45','1','陈一','生工1905班','5栋605');
/*!40000 ALTER TABLE `baoxiuchuli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baoxiuxinxi`
--

DROP TABLE IF EXISTS `baoxiuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiushebei` varchar(200) NOT NULL COMMENT '报修设备',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053788699 DEFAULT CHARSET=utf8 COMMENT='报修信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoxiuxinxi`
--

LOCK TABLES `baoxiuxinxi` WRITE;
/*!40000 ALTER TABLE `baoxiuxinxi` DISABLE KEYS */;
INSERT INTO `baoxiuxinxi` VALUES (81,'2021-03-18 07:35:17','报修设备1','水工','http://localhost:8080/springboot4b1w3/upload/baoxiuxinxi_tupian1.jpg','报修内容1','2021-03-18','学号1','学生姓名1','班级1','宿舍号1','手机1','是',''),(82,'2021-03-18 07:35:17','报修设备2','水工','http://localhost:8080/springboot4b1w3/upload/baoxiuxinxi_tupian2.jpg','报修内容2','2021-03-18','学号2','学生姓名2','班级2','宿舍号2','手机2','是',''),(83,'2021-03-18 07:35:17','报修设备3','水工','http://localhost:8080/springboot4b1w3/upload/baoxiuxinxi_tupian3.jpg','报修内容3','2021-03-18','学号3','学生姓名3','班级3','宿舍号3','手机3','是',''),(84,'2021-03-18 07:35:17','报修设备4','水工','http://localhost:8080/springboot4b1w3/upload/baoxiuxinxi_tupian4.jpg','报修内容4','2021-03-18','学号4','学生姓名4','班级4','宿舍号4','手机4','是',''),(85,'2021-03-18 07:35:17','报修设备5','水工','http://localhost:8080/springboot4b1w3/upload/baoxiuxinxi_tupian5.jpg','报修内容5','2021-03-18','学号5','学生姓名5','班级5','宿舍号5','手机5','是',''),(86,'2021-03-18 07:35:17','报修设备6','水工','http://localhost:8080/springboot4b1w3/upload/baoxiuxinxi_tupian6.jpg','报修内容6','2021-03-18','学号6','学生姓名6','班级6','宿舍号6','手机6','是',''),(1616053788698,'2021-03-18 07:49:48','水龙头','水工','http://localhost:8080/springboot4b1w3/upload/1616053779960.jpg','浴室水龙头损坏','2021-03-18','1','陈一','生工1905班','5栋605','12312312312','是','今晚维修');
/*!40000 ALTER TABLE `baoxiuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot4b1w3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot4b1w3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot4b1w3/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053542713 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2021-03-18 07:35:17','公告标题1','http://localhost:8080/springboot4b1w3/upload/1616053150677.jpg','<p>内容1</p>','2021-03-18'),(12,'2021-03-18 07:35:17','公告标题2','http://localhost:8080/springboot4b1w3/upload/gonggaoxinxi_tupian2.jpg','内容2','2021-03-18'),(13,'2021-03-18 07:35:17','公告标题3','http://localhost:8080/springboot4b1w3/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-03-18'),(14,'2021-03-18 07:35:17','公告标题4','http://localhost:8080/springboot4b1w3/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-03-18'),(15,'2021-03-18 07:35:17','公告标题5','http://localhost:8080/springboot4b1w3/upload/gonggaoxinxi_tupian5.jpg','内容5','2021-03-18'),(16,'2021-03-18 07:35:17','公告标题6','http://localhost:8080/springboot4b1w3/upload/gonggaoxinxi_tupian6.jpg','内容6','2021-03-18'),(1616053542712,'2021-03-18 07:45:42','关于宿舍安排事宜','http://localhost:8080/springboot4b1w3/upload/1616053530318.jpg','<p>新生宿舍安排通知</p><p><img src=\"http://localhost:8080/springboot4b1w3/upload/1616053541013.jpg\"></p>','2021-03-18');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `jiaofeimingcheng` varchar(200) NOT NULL COMMENT '缴费名称',
  `jiaofeileixing` varchar(200) NOT NULL COMMENT '缴费类型',
  `jiaofeijine` int(11) NOT NULL COMMENT '缴费金额',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053908371 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (101,'2021-03-18 07:35:17','学号1','学生姓名1','班级1','宿舍号1','缴费名称1','水费',1,'2021-03-18','未支付'),(102,'2021-03-18 07:35:17','学号2','学生姓名2','班级2','宿舍号2','缴费名称2','水费',2,'2021-03-18','未支付'),(103,'2021-03-18 07:35:17','学号3','学生姓名3','班级3','宿舍号3','缴费名称3','水费',3,'2021-03-18','未支付'),(104,'2021-03-18 07:35:17','学号4','学生姓名4','班级4','宿舍号4','缴费名称4','水费',4,'2021-03-18','未支付'),(105,'2021-03-18 07:35:17','学号5','学生姓名5','班级5','宿舍号5','缴费名称5','水费',5,'2021-03-18','未支付'),(106,'2021-03-18 07:35:17','学号6','学生姓名6','班级6','宿舍号6','缴费名称6','水费',6,'2021-03-18','未支付'),(1616053667345,'2021-03-18 07:47:46','1','陈一','生工1905班','5栋605','2021年2月水费','水费',50,'2021-03-18','已支付'),(1616053908370,'2021-03-18 07:51:47','1','陈一','生工1905班','5栋605','水龙头维修费','维修费',30,'2021-03-18','已支付');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `susheanpai`
--

DROP TABLE IF EXISTS `susheanpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `susheanpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` varchar(200) DEFAULT NULL COMMENT '可住人数',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `anpairiqi` date DEFAULT NULL COMMENT '安排日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053634050 DEFAULT CHARSET=utf8 COMMENT='宿舍安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `susheanpai`
--

LOCK TABLES `susheanpai` WRITE;
/*!40000 ALTER TABLE `susheanpai` DISABLE KEYS */;
INSERT INTO `susheanpai` VALUES (61,'2021-03-18 07:35:17','宿舍号1','宿舍类型1','http://localhost:8080/springboot4b1w3/upload/susheanpai_tupian1.jpg','位置1','可住人数1','学号1','学生姓名1','班级1','2021-03-18'),(62,'2021-03-18 07:35:17','宿舍号2','宿舍类型2','http://localhost:8080/springboot4b1w3/upload/susheanpai_tupian2.jpg','位置2','可住人数2','学号2','学生姓名2','班级2','2021-03-18'),(63,'2021-03-18 07:35:17','宿舍号3','宿舍类型3','http://localhost:8080/springboot4b1w3/upload/susheanpai_tupian3.jpg','位置3','可住人数3','学号3','学生姓名3','班级3','2021-03-18'),(64,'2021-03-18 07:35:17','宿舍号4','宿舍类型4','http://localhost:8080/springboot4b1w3/upload/susheanpai_tupian4.jpg','位置4','可住人数4','学号4','学生姓名4','班级4','2021-03-18'),(65,'2021-03-18 07:35:17','宿舍号5','宿舍类型5','http://localhost:8080/springboot4b1w3/upload/susheanpai_tupian5.jpg','位置5','可住人数5','学号5','学生姓名5','班级5','2021-03-18'),(66,'2021-03-18 07:35:17','宿舍号6','宿舍类型6','http://localhost:8080/springboot4b1w3/upload/susheanpai_tupian6.jpg','位置6','可住人数6','学号6','学生姓名6','班级6','2021-03-18'),(1616053634049,'2021-03-18 07:47:13','5栋605','女生','http://localhost:8080/springboot4b1w3/upload/1616053619972.jpg','南区学生公寓','6','1','陈一','生工1905班','2021-03-18');
/*!40000 ALTER TABLE `susheanpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushexinxi`
--

DROP TABLE IF EXISTS `sushexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) NOT NULL COMMENT '宿舍类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` int(11) DEFAULT NULL COMMENT '可住人数',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053626370 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushexinxi`
--

LOCK TABLES `sushexinxi` WRITE;
/*!40000 ALTER TABLE `sushexinxi` DISABLE KEYS */;
INSERT INTO `sushexinxi` VALUES (51,'2021-03-18 07:35:17','宿舍号1','男生','http://localhost:8080/springboot4b1w3/upload/sushexinxi_tupian1.jpg','位置1',1,'备注1'),(52,'2021-03-18 07:35:17','宿舍号2','男生','http://localhost:8080/springboot4b1w3/upload/sushexinxi_tupian2.jpg','位置2',2,'备注2'),(53,'2021-03-18 07:35:17','宿舍号3','男生','http://localhost:8080/springboot4b1w3/upload/sushexinxi_tupian3.jpg','位置3',3,'备注3'),(54,'2021-03-18 07:35:17','宿舍号4','男生','http://localhost:8080/springboot4b1w3/upload/sushexinxi_tupian4.jpg','位置4',4,'备注4'),(55,'2021-03-18 07:35:17','宿舍号5','男生','http://localhost:8080/springboot4b1w3/upload/sushexinxi_tupian5.jpg','位置5',5,'备注5'),(56,'2021-03-18 07:35:17','宿舍号6','男生','http://localhost:8080/springboot4b1w3/upload/sushexinxi_tupian6.jpg','位置6',6,'备注6'),(1616053626369,'2021-03-18 07:47:05','5栋605','女生','http://localhost:8080/springboot4b1w3/upload/1616053619972.jpg','南区学生公寓',6,NULL);
/*!40000 ALTER TABLE `sushexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','mc2zzpx5m6qvlwubvcf8hidboqaxnhfk','2021-03-18 07:36:23','2021-03-18 08:52:18'),(2,41,'学生1','xuesheng','学生','ziby618psf5qgavemnevvyxapjfm5nbg','2021-03-18 07:37:29','2021-03-18 08:37:29'),(3,1616053330954,'2','xuesheng','学生','so2dnbircvxu24i0mx9y8x3q36myuwsp','2021-03-18 07:42:16','2021-03-18 08:42:16'),(4,1616053474504,'1','xuesheng','学生','mewrre7old6vhbkhahotucsj6t653nvs','2021-03-18 07:44:39','2021-03-18 08:44:39'),(5,1616053722324,'2','xuesheng','学生','8sh6ykfw3h41wki38tyfhgtkrbuxsqya','2021-03-18 07:48:48','2021-03-18 08:48:48'),(6,1616053592687,'1','xuesheng','学生','8fu9tjdor02wggfkituviekt06ubk70i','2021-03-18 07:49:08','2021-03-18 08:51:54');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-18 07:35:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weishengjiancha`
--

DROP TABLE IF EXISTS `weishengjiancha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weishengjiancha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `jianchaneirong` varchar(200) DEFAULT NULL COMMENT '检查内容',
  `shifouzhengjie` varchar(200) DEFAULT NULL COMMENT '是否整洁',
  `shifouweigui` varchar(200) DEFAULT NULL COMMENT '是否违规',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `jianchariqi` date DEFAULT NULL COMMENT '检查日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053698895 DEFAULT CHARSET=utf8 COMMENT='卫生检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weishengjiancha`
--

LOCK TABLES `weishengjiancha` WRITE;
/*!40000 ALTER TABLE `weishengjiancha` DISABLE KEYS */;
INSERT INTO `weishengjiancha` VALUES (71,'2021-03-18 07:35:17','学号1','学生姓名1','班级1','宿舍号1','检查内容1','是','是','合格','2021-03-18'),(72,'2021-03-18 07:35:17','学号2','学生姓名2','班级2','宿舍号2','检查内容2','是','是','合格','2021-03-18'),(73,'2021-03-18 07:35:17','学号3','学生姓名3','班级3','宿舍号3','检查内容3','是','是','合格','2021-03-18'),(74,'2021-03-18 07:35:17','学号4','学生姓名4','班级4','宿舍号4','检查内容4','是','是','合格','2021-03-18'),(75,'2021-03-18 07:35:17','学号5','学生姓名5','班级5','宿舍号5','检查内容5','是','是','合格','2021-03-18'),(76,'2021-03-18 07:35:17','学号6','学生姓名6','班级6','宿舍号6','检查内容6','是','是','合格','2021-03-18'),(1616053698894,'2021-03-18 07:48:18','1','陈一','生工1905班','5栋605','检查整洁及是否违规','是','否','不合格','2021-03-18');
/*!40000 ALTER TABLE `weishengjiancha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053722325 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (41,'2021-03-18 07:35:17','学生1','123456','学生姓名1','男','http://localhost:8080/springboot4b1w3/upload/xuesheng_touxiang1.jpg','院系1','班级1','13823888881','773890001@qq.com','宿舍号1'),(42,'2021-03-18 07:35:17','学生2','123456','学生姓名2','男','http://localhost:8080/springboot4b1w3/upload/xuesheng_touxiang2.jpg','院系2','班级2','13823888882','773890002@qq.com','宿舍号2'),(43,'2021-03-18 07:35:17','学生3','123456','学生姓名3','男','http://localhost:8080/springboot4b1w3/upload/xuesheng_touxiang3.jpg','院系3','班级3','13823888883','773890003@qq.com','宿舍号3'),(44,'2021-03-18 07:35:17','学生4','123456','学生姓名4','男','http://localhost:8080/springboot4b1w3/upload/xuesheng_touxiang4.jpg','院系4','班级4','13823888884','773890004@qq.com','宿舍号4'),(45,'2021-03-18 07:35:17','学生5','123456','学生姓名5','男','http://localhost:8080/springboot4b1w3/upload/xuesheng_touxiang5.jpg','院系5','班级5','13823888885','773890005@qq.com','宿舍号5'),(46,'2021-03-18 07:35:17','学生6','123456','学生姓名6','男','http://localhost:8080/springboot4b1w3/upload/xuesheng_touxiang6.jpg','院系6','班级6','13823888886','773890006@qq.com','宿舍号6'),(1616053592687,'2021-03-18 07:46:32','1','1','陈一','女','http://localhost:8080/springboot4b1w3/upload/1616053580263.jpg','食品科学学院','生工1905班','12312312312','123@qq.com','5栋605'),(1616053722324,'2021-03-18 07:48:42','2','2','王明','男','http://localhost:8080/springboot4b1w3/upload/1616053736525.jpg','食品科学学院','生工1905班','12345678978','456@qq.com',NULL);
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuanxi`
--

DROP TABLE IF EXISTS `yuanxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuanxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxi` varchar(200) NOT NULL COMMENT '院系',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanxi` (`yuanxi`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053553064 DEFAULT CHARSET=utf8 COMMENT='院系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuanxi`
--

LOCK TABLES `yuanxi` WRITE;
/*!40000 ALTER TABLE `yuanxi` DISABLE KEYS */;
INSERT INTO `yuanxi` VALUES (21,'2021-03-18 07:35:17','院系1'),(22,'2021-03-18 07:35:17','院系2'),(23,'2021-03-18 07:35:17','院系3'),(24,'2021-03-18 07:35:17','院系4'),(25,'2021-03-18 07:35:17','院系5'),(26,'2021-03-18 07:35:17','院系6'),(1616053553063,'2021-03-18 07:45:52','食品科学学院');
/*!40000 ALTER TABLE `yuanxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19  9:42:30
