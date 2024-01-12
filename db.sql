/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmkxl70
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmkxl70` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmkxl70`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmkxl70/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmkxl70/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmkxl70/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fenguanyuanzhang` */

DROP TABLE IF EXISTS `fenguanyuanzhang`;

CREATE TABLE `fenguanyuanzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='分管院长';

/*Data for the table `fenguanyuanzhang` */

insert  into `fenguanyuanzhang`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`dianhua`,`youxiang`,`zhaopian`,`sfsh`,`shhf`) values (61,'2021-03-27 00:24:36','分管院长1','123456','姓名1','男','学院1','13823888881','773890001@qq.com','http://localhost:8080/ssmkxl70/upload/fenguanyuanzhang_zhaopian1.jpg','是',''),(62,'2021-03-27 00:24:36','分管院长2','123456','姓名2','男','学院2','13823888882','773890002@qq.com','http://localhost:8080/ssmkxl70/upload/fenguanyuanzhang_zhaopian2.jpg','是',''),(63,'2021-03-27 00:24:36','分管院长3','123456','姓名3','男','学院3','13823888883','773890003@qq.com','http://localhost:8080/ssmkxl70/upload/fenguanyuanzhang_zhaopian3.jpg','是',''),(64,'2021-03-27 00:24:36','分管院长4','123456','姓名4','男','学院4','13823888884','773890004@qq.com','http://localhost:8080/ssmkxl70/upload/fenguanyuanzhang_zhaopian4.jpg','是',''),(65,'2021-03-27 00:24:36','分管院长5','123456','姓名5','男','学院5','13823888885','773890005@qq.com','http://localhost:8080/ssmkxl70/upload/fenguanyuanzhang_zhaopian5.jpg','是',''),(66,'2021-03-27 00:24:36','分管院长6','123456','姓名6','男','学院6','13823888886','773890006@qq.com','http://localhost:8080/ssmkxl70/upload/fenguanyuanzhang_zhaopian6.jpg','是','');

/*Table structure for table `fudaoyuan` */

DROP TABLE IF EXISTS `fudaoyuan`;

CREATE TABLE `fudaoyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fudaoyuangonghao` varchar(200) NOT NULL COMMENT '辅导员工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fudaoyuanxingming` varchar(200) NOT NULL COMMENT '辅导员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fudaoyuangonghao` (`fudaoyuangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='辅导员';

/*Data for the table `fudaoyuan` */

insert  into `fudaoyuan`(`id`,`addtime`,`fudaoyuangonghao`,`mima`,`fudaoyuanxingming`,`xingbie`,`xueyuan`,`dianhua`,`youxiang`,`zhaopian`,`sfsh`,`shhf`) values (31,'2021-03-27 00:24:36','辅导员1','123456','辅导员姓名1','男','学院1','13823888881','773890001@qq.com','http://localhost:8080/ssmkxl70/upload/fudaoyuan_zhaopian1.jpg','是',''),(32,'2021-03-27 00:24:36','辅导员2','123456','辅导员姓名2','男','学院2','13823888882','773890002@qq.com','http://localhost:8080/ssmkxl70/upload/fudaoyuan_zhaopian2.jpg','是',''),(33,'2021-03-27 00:24:36','辅导员3','123456','辅导员姓名3','男','学院3','13823888883','773890003@qq.com','http://localhost:8080/ssmkxl70/upload/fudaoyuan_zhaopian3.jpg','是',''),(34,'2021-03-27 00:24:36','辅导员4','123456','辅导员姓名4','男','学院4','13823888884','773890004@qq.com','http://localhost:8080/ssmkxl70/upload/fudaoyuan_zhaopian4.jpg','是',''),(35,'2021-03-27 00:24:36','辅导员5','123456','辅导员姓名5','男','学院5','13823888885','773890005@qq.com','http://localhost:8080/ssmkxl70/upload/fudaoyuan_zhaopian5.jpg','是',''),(36,'2021-03-27 00:24:36','辅导员6','123456','辅导员姓名6','男','学院6','13823888886','773890006@qq.com','http://localhost:8080/ssmkxl70/upload/fudaoyuan_zhaopian6.jpg','是','');

/*Table structure for table `gonggaolan` */

DROP TABLE IF EXISTS `gonggaolan`;

CREATE TABLE `gonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='公告栏';

/*Data for the table `gonggaolan` */

insert  into `gonggaolan`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoleixing`,`gonggaoneirong`,`fabushijian`,`fengmian`) values (141,'2021-03-27 00:24:36','公告标题1','公告','公告内容1','2021-03-27','http://localhost:8080/ssmkxl70/upload/gonggaolan_fengmian1.jpg'),(142,'2021-03-27 00:24:36','公告标题2','公告','公告内容2','2021-03-27','http://localhost:8080/ssmkxl70/upload/gonggaolan_fengmian2.jpg'),(143,'2021-03-27 00:24:36','公告标题3','公告','公告内容3','2021-03-27','http://localhost:8080/ssmkxl70/upload/gonggaolan_fengmian3.jpg'),(144,'2021-03-27 00:24:36','公告标题4','公告','公告内容4','2021-03-27','http://localhost:8080/ssmkxl70/upload/gonggaolan_fengmian4.jpg'),(145,'2021-03-27 00:24:36','公告标题5','公告','公告内容5','2021-03-27','http://localhost:8080/ssmkxl70/upload/gonggaolan_fengmian5.jpg'),(146,'2021-03-27 00:24:36','公告标题6','公告','公告内容6','2021-03-27','http://localhost:8080/ssmkxl70/upload/gonggaolan_fengmian6.jpg');

/*Table structure for table `huojiangqingkuang` */

DROP TABLE IF EXISTS `huojiangqingkuang`;

CREATE TABLE `huojiangqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `huojiangzhengshuming` varchar(200) DEFAULT NULL COMMENT '获奖证书名',
  `huojiangshijian` date DEFAULT NULL COMMENT '获奖时间',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='获奖情况';

/*Data for the table `huojiangqingkuang` */

insert  into `huojiangqingkuang`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`xingbie`,`banji`,`huojiangzhengshuming`,`huojiangshijian`,`fujian`,`userid`) values (111,'2021-03-27 00:24:36','学号1','姓名1','专业1','男','班级1','获奖证书名1','2021-03-27','',1),(112,'2021-03-27 00:24:36','学号2','姓名2','专业2','男','班级2','获奖证书名2','2021-03-27','',2),(113,'2021-03-27 00:24:36','学号3','姓名3','专业3','男','班级3','获奖证书名3','2021-03-27','',3),(114,'2021-03-27 00:24:36','学号4','姓名4','专业4','男','班级4','获奖证书名4','2021-03-27','',4),(115,'2021-03-27 00:24:36','学号5','姓名5','专业5','男','班级5','获奖证书名5','2021-03-27','',5),(116,'2021-03-27 00:24:36','学号6','姓名6','专业6','男','班级6','获奖证书名6','2021-03-27','',6);

/*Table structure for table `jiankangshenbao` */

DROP TABLE IF EXISTS `jiankangshenbao`;

CREATE TABLE `jiankangshenbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shifoufashao` varchar(200) DEFAULT NULL COMMENT '是否发烧',
  `tujingdi` varchar(200) DEFAULT NULL COMMENT '途径地',
  `jiechushi` varchar(200) DEFAULT NULL COMMENT '接触史',
  `jiankangqingkuang` varchar(200) DEFAULT NULL COMMENT '健康情况',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='健康申报';

/*Data for the table `jiankangshenbao` */

insert  into `jiankangshenbao`(`id`,`addtime`,`xuehao`,`xingming`,`shifoufashao`,`tujingdi`,`jiechushi`,`jiankangqingkuang`,`userid`,`longitude`,`latitude`,`fulladdress`) values (161,'2021-03-27 00:24:36','学号1','姓名1','是','途径地1','接触史1','健康',1,1,1,'宇宙银河系地球1号'),(162,'2021-03-27 00:24:36','学号2','姓名2','是','途径地2','接触史2','健康',2,2,2,'宇宙银河系地球2号'),(163,'2021-03-27 00:24:36','学号3','姓名3','是','途径地3','接触史3','健康',3,3,3,'宇宙银河系地球3号'),(164,'2021-03-27 00:24:36','学号4','姓名4','是','途径地4','接触史4','健康',4,4,4,'宇宙银河系地球4号'),(165,'2021-03-27 00:24:36','学号5','姓名5','是','途径地5','接触史5','健康',5,5,5,'宇宙银河系地球5号'),(166,'2021-03-27 00:24:36','学号6','姓名6','是','途径地6','接触史6','健康',6,6,6,'宇宙银河系地球6号');

/*Table structure for table `jiaowuchuzhang` */

DROP TABLE IF EXISTS `jiaowuchuzhang`;

CREATE TABLE `jiaowuchuzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='教务处长';

/*Data for the table `jiaowuchuzhang` */

insert  into `jiaowuchuzhang`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`youxiang`,`zhaopian`,`sfsh`,`shhf`) values (71,'2021-03-27 00:24:36','教务处长1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmkxl70/upload/jiaowuchuzhang_zhaopian1.jpg','是',''),(72,'2021-03-27 00:24:36','教务处长2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmkxl70/upload/jiaowuchuzhang_zhaopian2.jpg','是',''),(73,'2021-03-27 00:24:36','教务处长3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmkxl70/upload/jiaowuchuzhang_zhaopian3.jpg','是',''),(74,'2021-03-27 00:24:36','教务处长4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmkxl70/upload/jiaowuchuzhang_zhaopian4.jpg','是',''),(75,'2021-03-27 00:24:36','教务处长5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmkxl70/upload/jiaowuchuzhang_zhaopian5.jpg','是',''),(76,'2021-03-27 00:24:36','教务处长6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmkxl70/upload/jiaowuchuzhang_zhaopian6.jpg','是','');

/*Table structure for table `jiaqiquxiang` */

DROP TABLE IF EXISTS `jiaqiquxiang`;

CREATE TABLE `jiaqiquxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `jiaqijihua` varchar(200) DEFAULT NULL COMMENT '假期计划',
  `jihualixiaoshijian` date DEFAULT NULL COMMENT '计划离校时间',
  `jihuahuixiaoshijian` date DEFAULT NULL COMMENT '计划回校时间',
  `jiaotonggongju` varchar(200) DEFAULT NULL COMMENT '交通工具',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='假期去向';

/*Data for the table `jiaqiquxiang` */

insert  into `jiaqiquxiang`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`zhuanye`,`banji`,`nianji`,`jiaqijihua`,`jihualixiaoshijian`,`jihuahuixiaoshijian`,`jiaotonggongju`,`jiatingdizhi`,`userid`) values (101,'2021-03-27 00:24:36','学号1','姓名1','男','专业1','班级1','年级1','回家','2021-03-27','2021-03-27','交通工具1','家庭地址1',1),(102,'2021-03-27 00:24:36','学号2','姓名2','男','专业2','班级2','年级2','回家','2021-03-27','2021-03-27','交通工具2','家庭地址2',2),(103,'2021-03-27 00:24:36','学号3','姓名3','男','专业3','班级3','年级3','回家','2021-03-27','2021-03-27','交通工具3','家庭地址3',3),(104,'2021-03-27 00:24:36','学号4','姓名4','男','专业4','班级4','年级4','回家','2021-03-27','2021-03-27','交通工具4','家庭地址4',4),(105,'2021-03-27 00:24:36','学号5','姓名5','男','专业5','班级5','年级5','回家','2021-03-27','2021-03-27','交通工具5','家庭地址5',5),(106,'2021-03-27 00:24:36','学号6','姓名6','男','专业6','班级6','年级6','回家','2021-03-27','2021-03-27','交通工具6','家庭地址6',6);

/*Table structure for table `lixiaoshenqing` */

DROP TABLE IF EXISTS `lixiaoshenqing`;

CREATE TABLE `lixiaoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `lixiaoliyou` longtext COMMENT '离校理由',
  `daodadidian` varchar(200) DEFAULT NULL COMMENT '到达地点',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `huixiaoshijian` varchar(200) DEFAULT NULL COMMENT '回校时间',
  `jinjilianxiren` varchar(200) DEFAULT NULL COMMENT '紧急联系人',
  `jinjilianxirendianhua` varchar(200) DEFAULT NULL COMMENT '紧急联系人电话',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fudaoyuanxingming` varchar(200) DEFAULT NULL COMMENT '辅导员姓名',
  `fudaoyuangonghao` varchar(200) DEFAULT NULL COMMENT '辅导员工号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='离校申请';

/*Data for the table `lixiaoshenqing` */

insert  into `lixiaoshenqing`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`xueyuan`,`lixiaoliyou`,`daodadidian`,`kaishishijian`,`huixiaoshijian`,`jinjilianxiren`,`jinjilianxirendianhua`,`fujian`,`fudaoyuanxingming`,`fudaoyuangonghao`,`sfsh`,`shhf`,`userid`) values (121,'2021-03-27 00:24:36','学号1','姓名1','专业1','学院1','离校理由1','到达地点1','2021-03-27','回校时间1','紧急联系人1','紧急联系人电话1','','辅导员姓名1','辅导员工号1','是','',1),(122,'2021-03-27 00:24:36','学号2','姓名2','专业2','学院2','离校理由2','到达地点2','2021-03-27','回校时间2','紧急联系人2','紧急联系人电话2','','辅导员姓名2','辅导员工号2','是','',2),(123,'2021-03-27 00:24:36','学号3','姓名3','专业3','学院3','离校理由3','到达地点3','2021-03-27','回校时间3','紧急联系人3','紧急联系人电话3','','辅导员姓名3','辅导员工号3','是','',3),(124,'2021-03-27 00:24:36','学号4','姓名4','专业4','学院4','离校理由4','到达地点4','2021-03-27','回校时间4','紧急联系人4','紧急联系人电话4','','辅导员姓名4','辅导员工号4','是','',4),(125,'2021-03-27 00:24:36','学号5','姓名5','专业5','学院5','离校理由5','到达地点5','2021-03-27','回校时间5','紧急联系人5','紧急联系人电话5','','辅导员姓名5','辅导员工号5','是','',5),(126,'2021-03-27 00:24:36','学号6','姓名6','专业6','学院6','离校理由6','到达地点6','2021-03-27','回校时间6','紧急联系人6','紧急联系人电话6','','辅导员姓名6','辅导员工号6','是','',6);

/*Table structure for table `luxianhenji` */

DROP TABLE IF EXISTS `luxianhenji`;

CREATE TABLE `luxianhenji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='路线痕迹';

/*Data for the table `luxianhenji` */

insert  into `luxianhenji`(`id`,`addtime`,`xuehao`,`shijian`,`userid`,`longitude`,`latitude`,`fulladdress`) values (171,'2021-03-27 00:24:36','学号1','2021-03-27 00:24:36',1,1,1,'宇宙银河系地球1号'),(172,'2021-03-27 00:24:36','学号2','2021-03-27 00:24:36',2,2,2,'宇宙银河系地球2号'),(173,'2021-03-27 00:24:36','学号3','2021-03-27 00:24:36',3,3,3,'宇宙银河系地球3号'),(174,'2021-03-27 00:24:36','学号4','2021-03-27 00:24:36',4,4,4,'宇宙银河系地球4号'),(175,'2021-03-27 00:24:36','学号5','2021-03-27 00:24:36',5,5,5,'宇宙银河系地球5号'),(176,'2021-03-27 00:24:36','学号6','2021-03-27 00:24:36',6,6,6,'宇宙银河系地球6号');

/*Table structure for table `qingjiashenqing` */

DROP TABLE IF EXISTS `qingjiashenqing`;

CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `qingjialiyou` longtext COMMENT '请假理由',
  `qingjiashizhang` varchar(200) DEFAULT NULL COMMENT '请假时长',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fudaoyuanxingming` varchar(200) DEFAULT NULL COMMENT '辅导员姓名',
  `fudaoyuangonghao` varchar(200) DEFAULT NULL COMMENT '辅导员工号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='请假申请';

/*Data for the table `qingjiashenqing` */

insert  into `qingjiashenqing`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`xueyuan`,`qingjialiyou`,`qingjiashizhang`,`kaishishijian`,`jieshushijian`,`fujian`,`fudaoyuanxingming`,`fudaoyuangonghao`,`sfsh`,`shhf`,`userid`) values (131,'2021-03-27 00:24:36','学号1','姓名1','专业1','学院1','请假理由1','一天内','2021-03-27','2021-03-27','','辅导员姓名1','辅导员工号1','是','',1),(132,'2021-03-27 00:24:36','学号2','姓名2','专业2','学院2','请假理由2','一天内','2021-03-27','2021-03-27','','辅导员姓名2','辅导员工号2','是','',2),(133,'2021-03-27 00:24:36','学号3','姓名3','专业3','学院3','请假理由3','一天内','2021-03-27','2021-03-27','','辅导员姓名3','辅导员工号3','是','',3),(134,'2021-03-27 00:24:36','学号4','姓名4','专业4','学院4','请假理由4','一天内','2021-03-27','2021-03-27','','辅导员姓名4','辅导员工号4','是','',4),(135,'2021-03-27 00:24:36','学号5','姓名5','专业5','学院5','请假理由5','一天内','2021-03-27','2021-03-27','','辅导员姓名5','辅导员工号5','是','',5),(136,'2021-03-27 00:24:36','学号6','姓名6','专业6','学院6','请假理由6','一天内','2021-03-27','2021-03-27','','辅导员姓名6','辅导员工号6','是','',6);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-27 00:24:36');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`zhuanye`,`banji`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`sfsh`,`shhf`) values (11,'2021-03-27 00:24:36','学生1','123456','姓名1','男','专业1','班级1','020-89819991','773890001@qq.com','440300199101010001','是',''),(12,'2021-03-27 00:24:36','学生2','123456','姓名2','男','专业2','班级2','020-89819992','773890002@qq.com','440300199202020002','是',''),(13,'2021-03-27 00:24:36','学生3','123456','姓名3','男','专业3','班级3','020-89819993','773890003@qq.com','440300199303030003','是',''),(14,'2021-03-27 00:24:36','学生4','123456','姓名4','男','专业4','班级4','020-89819994','773890004@qq.com','440300199404040004','是',''),(15,'2021-03-27 00:24:36','学生5','123456','姓名5','男','专业5','班级5','020-89819995','773890005@qq.com','440300199505050005','是',''),(16,'2021-03-27 00:24:36','学生6','123456','姓名6','男','专业6','班级6','020-89819996','773890006@qq.com','440300199606060006','是','');

/*Table structure for table `xueshengjibenxinxi` */

DROP TABLE IF EXISTS `xueshengjibenxinxi`;

CREATE TABLE `xueshengjibenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `shifouzhusu` varchar(200) DEFAULT NULL COMMENT '是否住宿',
  `sushedong` varchar(200) DEFAULT NULL COMMENT '宿舍栋',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `chuangwei` varchar(200) DEFAULT NULL COMMENT '床位',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='学生基本信息';

/*Data for the table `xueshengjibenxinxi` */

insert  into `xueshengjibenxinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`zhuanye`,`banji`,`nianji`,`shifouzhusu`,`sushedong`,`fangjianhao`,`chuangwei`,`zhengzhimianmao`,`jiatingdizhi`,`userid`) values (91,'2021-03-27 00:24:36','学号1','姓名1','男','专业1','班级1','年级1','是','宿舍栋1','房间号1','床位1','政治面貌1','家庭地址1',1),(92,'2021-03-27 00:24:36','学号2','姓名2','男','专业2','班级2','年级2','是','宿舍栋2','房间号2','床位2','政治面貌2','家庭地址2',2),(93,'2021-03-27 00:24:36','学号3','姓名3','男','专业3','班级3','年级3','是','宿舍栋3','房间号3','床位3','政治面貌3','家庭地址3',3),(94,'2021-03-27 00:24:36','学号4','姓名4','男','专业4','班级4','年级4','是','宿舍栋4','房间号4','床位4','政治面貌4','家庭地址4',4),(95,'2021-03-27 00:24:36','学号5','姓名5','男','专业5','班级5','年级5','是','宿舍栋5','房间号5','床位5','政治面貌5','家庭地址5',5),(96,'2021-03-27 00:24:36','学号6','姓名6','男','专业6','班级6','年级6','是','宿舍栋6','房间号6','床位6','政治面貌6','家庭地址6',6);

/*Table structure for table `xueyuan` */

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) NOT NULL COMMENT '学院',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuan` (`xueyuan`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学院';

/*Data for the table `xueyuan` */

insert  into `xueyuan`(`id`,`addtime`,`xueyuan`) values (41,'2021-03-27 00:24:36','学院1'),(42,'2021-03-27 00:24:36','学院2'),(43,'2021-03-27 00:24:36','学院3'),(44,'2021-03-27 00:24:36','学院4'),(45,'2021-03-27 00:24:36','学院5'),(46,'2021-03-27 00:24:36','学院6');

/*Table structure for table `yuanbulixiaoshenqing` */

DROP TABLE IF EXISTS `yuanbulixiaoshenqing`;

CREATE TABLE `yuanbulixiaoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `lixiaoliyou` longtext COMMENT '离校理由',
  `daodadidian` varchar(200) DEFAULT NULL COMMENT '到达地点',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `huixiaoshijian` varchar(200) DEFAULT NULL COMMENT '回校时间',
  `jinjilianxiren` varchar(200) DEFAULT NULL COMMENT '紧急联系人',
  `jinjilianxirendianhua` varchar(200) DEFAULT NULL COMMENT '紧急联系人电话',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fudaoyuanxingming` varchar(200) DEFAULT NULL COMMENT '辅导员姓名',
  `fudaoyuangonghao` varchar(200) DEFAULT NULL COMMENT '辅导员工号',
  `yuanshujixingming` varchar(200) DEFAULT NULL COMMENT '院书记姓名',
  `yuanshujigonghao` varchar(200) DEFAULT NULL COMMENT '院书记工号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='院部离校申请';

/*Data for the table `yuanbulixiaoshenqing` */

insert  into `yuanbulixiaoshenqing`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`xueyuan`,`lixiaoliyou`,`daodadidian`,`kaishishijian`,`huixiaoshijian`,`jinjilianxiren`,`jinjilianxirendianhua`,`fujian`,`fudaoyuanxingming`,`fudaoyuangonghao`,`yuanshujixingming`,`yuanshujigonghao`,`sfsh`,`shhf`,`userid`) values (151,'2021-03-27 00:24:36','学号1','姓名1','专业1','学院1','离校理由1','到达地点1','2021-03-27','回校时间1','紧急联系人1','紧急联系人电话1','','辅导员姓名1','辅导员工号1','院书记姓名1','院书记工号1','是','',1),(152,'2021-03-27 00:24:36','学号2','姓名2','专业2','学院2','离校理由2','到达地点2','2021-03-27','回校时间2','紧急联系人2','紧急联系人电话2','','辅导员姓名2','辅导员工号2','院书记姓名2','院书记工号2','是','',2),(153,'2021-03-27 00:24:36','学号3','姓名3','专业3','学院3','离校理由3','到达地点3','2021-03-27','回校时间3','紧急联系人3','紧急联系人电话3','','辅导员姓名3','辅导员工号3','院书记姓名3','院书记工号3','是','',3),(154,'2021-03-27 00:24:36','学号4','姓名4','专业4','学院4','离校理由4','到达地点4','2021-03-27','回校时间4','紧急联系人4','紧急联系人电话4','','辅导员姓名4','辅导员工号4','院书记姓名4','院书记工号4','是','',4),(155,'2021-03-27 00:24:36','学号5','姓名5','专业5','学院5','离校理由5','到达地点5','2021-03-27','回校时间5','紧急联系人5','紧急联系人电话5','','辅导员姓名5','辅导员工号5','院书记姓名5','院书记工号5','是','',5),(156,'2021-03-27 00:24:36','学号6','姓名6','专业6','学院6','离校理由6','到达地点6','2021-03-27','回校时间6','紧急联系人6','紧急联系人电话6','','辅导员姓名6','辅导员工号6','院书记姓名6','院书记工号6','是','',6);

/*Table structure for table `yuanshuji` */

DROP TABLE IF EXISTS `yuanshuji`;

CREATE TABLE `yuanshuji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanshujigonghao` varchar(200) NOT NULL COMMENT '院书记工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuanshujixingming` varchar(200) NOT NULL COMMENT '院书记姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanshujigonghao` (`yuanshujigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='院书记';

/*Data for the table `yuanshuji` */

insert  into `yuanshuji`(`id`,`addtime`,`yuanshujigonghao`,`mima`,`yuanshujixingming`,`xingbie`,`xueyuan`,`dianhua`,`youxiang`,`zhaopian`,`sfsh`,`shhf`) values (51,'2021-03-27 00:24:36','院书记1','123456','院书记姓名1','男','学院1','13823888881','773890001@qq.com','http://localhost:8080/ssmkxl70/upload/yuanshuji_zhaopian1.jpg','是',''),(52,'2021-03-27 00:24:36','院书记2','123456','院书记姓名2','男','学院2','13823888882','773890002@qq.com','http://localhost:8080/ssmkxl70/upload/yuanshuji_zhaopian2.jpg','是',''),(53,'2021-03-27 00:24:36','院书记3','123456','院书记姓名3','男','学院3','13823888883','773890003@qq.com','http://localhost:8080/ssmkxl70/upload/yuanshuji_zhaopian3.jpg','是',''),(54,'2021-03-27 00:24:36','院书记4','123456','院书记姓名4','男','学院4','13823888884','773890004@qq.com','http://localhost:8080/ssmkxl70/upload/yuanshuji_zhaopian4.jpg','是',''),(55,'2021-03-27 00:24:36','院书记5','123456','院书记姓名5','男','学院5','13823888885','773890005@qq.com','http://localhost:8080/ssmkxl70/upload/yuanshuji_zhaopian5.jpg','是',''),(56,'2021-03-27 00:24:36','院书记6','123456','院书记姓名6','男','学院6','13823888886','773890006@qq.com','http://localhost:8080/ssmkxl70/upload/yuanshuji_zhaopian6.jpg','是','');

/*Table structure for table `zhuanye` */

DROP TABLE IF EXISTS `zhuanye`;

CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanye` (`zhuanye`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='专业';

/*Data for the table `zhuanye` */

insert  into `zhuanye`(`id`,`addtime`,`zhuanye`) values (21,'2021-03-27 00:24:36','专业1'),(22,'2021-03-27 00:24:36','专业2'),(23,'2021-03-27 00:24:36','专业3'),(24,'2021-03-27 00:24:36','专业4'),(25,'2021-03-27 00:24:36','专业5'),(26,'2021-03-27 00:24:36','专业6');

/*Table structure for table `zhuguanxiaolingdao` */

DROP TABLE IF EXISTS `zhuguanxiaolingdao`;

CREATE TABLE `zhuguanxiaolingdao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='主管校领导';

/*Data for the table `zhuguanxiaolingdao` */

insert  into `zhuguanxiaolingdao`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`youxiang`,`zhaopian`,`sfsh`,`shhf`) values (81,'2021-03-27 00:24:36','主管校领导1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmkxl70/upload/zhuguanxiaolingdao_zhaopian1.jpg','是',''),(82,'2021-03-27 00:24:36','主管校领导2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmkxl70/upload/zhuguanxiaolingdao_zhaopian2.jpg','是',''),(83,'2021-03-27 00:24:36','主管校领导3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmkxl70/upload/zhuguanxiaolingdao_zhaopian3.jpg','是',''),(84,'2021-03-27 00:24:36','主管校领导4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmkxl70/upload/zhuguanxiaolingdao_zhaopian4.jpg','是',''),(85,'2021-03-27 00:24:36','主管校领导5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmkxl70/upload/zhuguanxiaolingdao_zhaopian5.jpg','是',''),(86,'2021-03-27 00:24:36','主管校领导6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmkxl70/upload/zhuguanxiaolingdao_zhaopian6.jpg','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
