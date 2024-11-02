/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmonwk4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmonwk4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmonwk4`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmonwk4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmonwk4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmonwk4/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `jiaoling` int(11) DEFAULT NULL COMMENT '教龄',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616147679247 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`jiaoling`,`leixing`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-03-19 17:53:36','教师1','123456','姓名1','男',1,'类型1','13823888881','773890001@qq.com','http://localhost:8080/ssmonwk4/upload/jiaoshi_zhaopian1.jpg'),(12,'2021-03-19 17:53:36','教师2','123456','姓名2','男',2,'类型2','13823888882','773890002@qq.com','http://localhost:8080/ssmonwk4/upload/jiaoshi_zhaopian2.jpg'),(13,'2021-03-19 17:53:36','教师3','123456','姓名3','男',3,'类型3','13823888883','773890003@qq.com','http://localhost:8080/ssmonwk4/upload/jiaoshi_zhaopian3.jpg'),(14,'2021-03-19 17:53:36','教师4','123456','姓名4','男',4,'类型4','13823888884','773890004@qq.com','http://localhost:8080/ssmonwk4/upload/jiaoshi_zhaopian4.jpg'),(15,'2021-03-19 17:53:36','教师5','123456','姓名5','男',5,'类型5','13823888885','773890005@qq.com','http://localhost:8080/ssmonwk4/upload/jiaoshi_zhaopian5.jpg'),(16,'2021-03-19 17:53:36','教师6','123456','姓名6','男',6,'类型6','13823888886','773890006@qq.com','http://localhost:8080/ssmonwk4/upload/jiaoshi_zhaopian6.jpg'),(1616147679246,'2021-03-19 17:54:39','22','22','李四','男',2,'数学老师',NULL,NULL,'http://localhost:8080/ssmonwk4/upload/1616147696454.jpg');

/*Table structure for table `pingjiaxinxi` */

DROP TABLE IF EXISTS `pingjiaxinxi`;

CREATE TABLE `pingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `jiaoxueneirong` longtext COMMENT '教学内容',
  `pingfen` int(11) DEFAULT NULL COMMENT '评分',
  `jiaoxuepinglun` varchar(200) DEFAULT NULL COMMENT '教学评论',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616147811043 DEFAULT CHARSET=utf8 COMMENT='评价信息';

/*Data for the table `pingjiaxinxi` */

insert  into `pingjiaxinxi`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`leixing`,`kechengmingcheng`,`jiaoxueneirong`,`pingfen`,`jiaoxuepinglun`,`riqi`,`beizhu`) values (41,'2021-03-19 17:53:36','教师工号1','教师姓名1','类型1','课程名称1','教学内容1',1,'教学评论1','2021-03-19','备注1'),(42,'2021-03-19 17:53:36','教师工号2','教师姓名2','类型2','课程名称2','教学内容2',2,'教学评论2','2021-03-19','备注2'),(43,'2021-03-19 17:53:36','教师工号3','教师姓名3','类型3','课程名称3','教学内容3',3,'教学评论3','2021-03-19','备注3'),(44,'2021-03-19 17:53:36','教师工号4','教师姓名4','类型4','课程名称4','教学内容4',4,'教学评论4','2021-03-19','备注4'),(45,'2021-03-19 17:53:36','教师工号5','教师姓名5','类型5','课程名称5','教学内容5',5,'教学评论5','2021-03-19','备注5'),(46,'2021-03-19 17:53:36','教师工号6','教师姓名6','类型6','课程名称6','教学内容6',6,'教学评论6','2021-03-19','备注6'),(1616147811042,'2021-03-19 17:56:50','001','李四','数学老师','XXXX','XXXXX',8,'XXXXX','2021-03-19','XXX');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1616147679246,'22','jiaoshi','教师','9n7s9wv01n8tge9wk7uxbxppq9n9aapt','2021-03-19 17:54:46','2021-03-19 18:54:47'),(2,1616147764468,'33','youke','游客','p0p89v7lkb0nb373ufz67ks0kruc65id','2021-03-19 17:56:10','2021-03-19 18:56:10');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-19 17:53:36');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`tupian`) values (21,'2021-03-19 17:53:36','学生1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmonwk4/upload/xuesheng_tupian1.jpg'),(22,'2021-03-19 17:53:36','学生2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssmonwk4/upload/xuesheng_tupian2.jpg'),(23,'2021-03-19 17:53:36','学生3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmonwk4/upload/xuesheng_tupian3.jpg'),(24,'2021-03-19 17:53:36','学生4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmonwk4/upload/xuesheng_tupian4.jpg'),(25,'2021-03-19 17:53:36','学生5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmonwk4/upload/xuesheng_tupian5.jpg'),(26,'2021-03-19 17:53:36','学生6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmonwk4/upload/xuesheng_tupian6.jpg');

/*Table structure for table `youke` */

DROP TABLE IF EXISTS `youke`;

CREATE TABLE `youke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616147764469 DEFAULT CHARSET=utf8 COMMENT='游客';

/*Data for the table `youke` */

insert  into `youke`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (31,'2021-03-19 17:53:36','游客1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmonwk4/upload/youke_zhaopian1.jpg'),(32,'2021-03-19 17:53:36','游客2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmonwk4/upload/youke_zhaopian2.jpg'),(33,'2021-03-19 17:53:36','游客3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmonwk4/upload/youke_zhaopian3.jpg'),(34,'2021-03-19 17:53:36','游客4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmonwk4/upload/youke_zhaopian4.jpg'),(35,'2021-03-19 17:53:36','游客5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmonwk4/upload/youke_zhaopian5.jpg'),(36,'2021-03-19 17:53:36','游客6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmonwk4/upload/youke_zhaopian6.jpg'),(1616147764468,'2021-03-19 17:56:04','33','33',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `zonghepingjia` */

DROP TABLE IF EXISTS `zonghepingjia`;

CREATE TABLE `zonghepingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengcishu` int(11) DEFAULT NULL COMMENT '课程次数',
  `zonghepingfen` int(11) DEFAULT NULL COMMENT '综合评分',
  `zongtipingjia` varchar(200) DEFAULT NULL COMMENT '总体评价',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='综合评价';

/*Data for the table `zonghepingjia` */

insert  into `zonghepingjia`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`kechengcishu`,`zonghepingfen`,`zongtipingjia`,`beizhu`) values (51,'2021-03-19 17:53:36','教师工号1','教师姓名1',1,1,'总体评价1','备注1'),(52,'2021-03-19 17:53:36','教师工号2','教师姓名2',2,2,'总体评价2','备注2'),(53,'2021-03-19 17:53:36','教师工号3','教师姓名3',3,3,'总体评价3','备注3'),(54,'2021-03-19 17:53:36','教师工号4','教师姓名4',4,4,'总体评价4','备注4'),(55,'2021-03-19 17:53:36','教师工号5','教师姓名5',5,5,'总体评价5','备注5'),(56,'2021-03-19 17:53:36','教师工号6','教师姓名6',6,6,'总体评价6','备注6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
