/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t344`;
CREATE DATABASE IF NOT EXISTS `t344` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t344`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `daibanshiyi`;
CREATE TABLE IF NOT EXISTS `daibanshiyi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `daibanshiyi_name` varchar(200) DEFAULT NULL COMMENT '事宜标题 Search111 ',
  `daibanshiyi_types` int DEFAULT NULL COMMENT '事宜类型 Search111',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `daibanshiyi_photo` varchar(200) DEFAULT NULL COMMENT '事宜封面',
  `daibanshiyi_content` text COMMENT '事宜简介',
  `daibanshiyi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='事宜信息';

DELETE FROM `daibanshiyi`;
INSERT INTO `daibanshiyi` (`id`, `daibanshiyi_name`, `daibanshiyi_types`, `gongzuorenyuan_id`, `daibanshiyi_photo`, `daibanshiyi_content`, `daibanshiyi_delete`, `insert_time`, `create_time`) VALUES
	(1, '事宜标题1', 3, 3, 'upload/daibanshiyi1.jpg', '事宜简介1', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(2, '事宜标题2', 1, 1, 'upload/daibanshiyi2.jpg', '事宜简介2', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(3, '事宜标题3', 2, 2, 'upload/daibanshiyi3.jpg', '事宜简介3', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(4, '事宜标题4', 3, 3, 'upload/daibanshiyi4.jpg', '事宜简介4', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(5, '事宜标题5', 2, 3, 'upload/daibanshiyi5.jpg', '事宜简介5', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(6, '事宜标题6', 3, 3, 'upload/daibanshiyi6.jpg', '事宜简介6', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(7, '事宜标题7', 2, 1, 'upload/daibanshiyi7.jpg', '事宜简介7', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(8, '事宜标题8', 3, 2, 'upload/daibanshiyi8.jpg', '事宜简介8', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(9, '事宜标题9', 3, 3, 'upload/daibanshiyi9.jpg', '事宜简介9', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(10, '事宜标题10', 2, 3, 'upload/daibanshiyi10.jpg', '事宜简介10', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(11, '事宜标题11', 1, 1, 'upload/daibanshiyi11.jpg', '事宜简介11', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(12, '事宜标题12', 2, 1, 'upload/daibanshiyi12.jpg', '事宜简介12', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(13, '事宜标题13', 1, 1, 'upload/daibanshiyi13.jpg', '事宜简介13', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(14, '事宜标题14', 2, 1, 'upload/daibanshiyi14.jpg', '事宜简介14', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'fuwuxiangmu_types', '服务项目类型', 1, '服务项目类型1', NULL, NULL, '2023-02-28 08:12:05'),
	(2, 'fuwuxiangmu_types', '服务项目类型', 2, '服务项目类型2', NULL, NULL, '2023-02-28 08:12:05'),
	(3, 'fuwuxiangmu_types', '服务项目类型', 3, '服务项目类型3', NULL, NULL, '2023-02-28 08:12:05'),
	(4, 'daibanshiyi_types', '事宜类型', 1, '事宜类型1', NULL, NULL, '2023-02-28 08:12:05'),
	(5, 'daibanshiyi_types', '事宜类型', 2, '事宜类型2', NULL, NULL, '2023-02-28 08:12:05'),
	(6, 'daibanshiyi_types', '事宜类型', 3, '事宜类型3', NULL, NULL, '2023-02-28 08:12:05'),
	(7, 'jiankangdangan_types', '档案类型', 1, '档案类型1', NULL, NULL, '2023-02-28 08:12:05'),
	(8, 'jiankangdangan_types', '档案类型', 2, '档案类型2', NULL, NULL, '2023-02-28 08:12:05'),
	(9, 'jiankangdangan_types', '档案类型', 3, '档案类型3', NULL, NULL, '2023-02-28 08:12:05'),
	(10, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-02-28 08:12:05'),
	(11, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-02-28 08:12:05'),
	(12, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-02-28 08:12:05'),
	(13, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-02-28 08:12:05'),
	(14, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-02-28 08:12:05'),
	(15, 'jiankang_types', '健康指标', 1, '健康指标1', NULL, NULL, '2023-02-28 08:12:05'),
	(16, 'jiankang_types', '健康指标', 2, '健康指标2', NULL, NULL, '2023-02-28 08:12:05'),
	(17, 'shenfen_types', '身份', 1, '身份1', NULL, NULL, '2023-02-28 08:12:05'),
	(18, 'shenfen_types', '身份', 2, '身份2', NULL, NULL, '2023-02-28 08:12:05'),
	(19, 'yisheng_types', '科室', 1, '科室1', NULL, NULL, '2023-02-28 08:12:05'),
	(20, 'yisheng_types', '科室', 2, '科室2', NULL, NULL, '2023-02-28 08:12:05'),
	(21, 'yisheng_types', '科室', 3, '科室3', NULL, NULL, '2023-02-28 08:12:05'),
	(22, 'zhiwei_types', '职位', 1, '职位1', NULL, NULL, '2023-02-28 08:12:05'),
	(23, 'zhiwei_types', '职位', 2, '职位2', NULL, NULL, '2023-02-28 08:12:05'),
	(24, 'zhiwei_types', '职位', 3, '职位3', NULL, NULL, '2023-02-28 08:12:05'),
	(25, 'yisheng_yuyue_yesno_types', '预约审核', 1, '未审核', NULL, NULL, '2023-02-28 08:12:05'),
	(26, 'yisheng_yuyue_yesno_types', '预约审核', 2, '同意', NULL, NULL, '2023-02-28 08:12:05'),
	(27, 'yisheng_yuyue_yesno_types', '预约审核', 3, '拒绝', NULL, NULL, '2023-02-28 08:12:05');

DROP TABLE IF EXISTS `fuwuxiangmu`;
CREATE TABLE IF NOT EXISTS `fuwuxiangmu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fuwuxiangmu_name` varchar(200) DEFAULT NULL COMMENT '服务项目名称 Search111 ',
  `fuwuxiangmu_types` int DEFAULT NULL COMMENT '服务项目类型 Search111',
  `fuwuxiangmu_photo` varchar(200) DEFAULT NULL COMMENT '服务项目封面',
  `fuwuxiangmu_content` text COMMENT '服务项目简介',
  `fuwuxiangmu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='服务项目信息';

DELETE FROM `fuwuxiangmu`;
INSERT INTO `fuwuxiangmu` (`id`, `fuwuxiangmu_name`, `fuwuxiangmu_types`, `fuwuxiangmu_photo`, `fuwuxiangmu_content`, `fuwuxiangmu_delete`, `insert_time`, `create_time`) VALUES
	(1, '服务项目名称1', 3, 'upload/fuwuxiangmu1.jpg', '服务项目简介1', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(2, '服务项目名称2', 1, 'upload/fuwuxiangmu2.jpg', '服务项目简介2', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(3, '服务项目名称3', 2, 'upload/fuwuxiangmu3.jpg', '服务项目简介3', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(4, '服务项目名称4', 3, 'upload/fuwuxiangmu4.jpg', '服务项目简介4', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(5, '服务项目名称5', 2, 'upload/fuwuxiangmu5.jpg', '服务项目简介5', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(6, '服务项目名称6', 1, 'upload/fuwuxiangmu6.jpg', '服务项目简介6', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(7, '服务项目名称7', 2, 'upload/fuwuxiangmu7.jpg', '服务项目简介7', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(8, '服务项目名称8', 3, 'upload/fuwuxiangmu8.jpg', '服务项目简介8', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(9, '服务项目名称9', 1, 'upload/fuwuxiangmu9.jpg', '服务项目简介9', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(10, '服务项目名称10', 1, 'upload/fuwuxiangmu10.jpg', '服务项目简介10', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(11, '服务项目名称11', 3, 'upload/fuwuxiangmu11.jpg', '服务项目简介11', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(12, '服务项目名称12', 1, 'upload/fuwuxiangmu12.jpg', '服务项目简介12', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(13, '服务项目名称13', 2, 'upload/fuwuxiangmu13.jpg', '服务项目简介13', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(14, '服务项目名称14', 3, 'upload/fuwuxiangmu14.jpg', '服务项目简介14', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33');

DROP TABLE IF EXISTS `gongzuorenyuan`;
CREATE TABLE IF NOT EXISTS `gongzuorenyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuorenyuan_name` varchar(200) DEFAULT NULL COMMENT '工作人员姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `gongzuorenyuan_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `gongzuorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongzuorenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `gongzuorenyuan_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='社区工作人员';

DELETE FROM `gongzuorenyuan`;
INSERT INTO `gongzuorenyuan` (`id`, `username`, `password`, `gongzuorenyuan_name`, `sex_types`, `gongzuorenyuan_photo`, `gongzuorenyuan_phone`, `gongzuorenyuan_email`, `gongzuorenyuan_delete`, `create_time`) VALUES
	(1, '社区工作人员1', '123456', '工作人员姓名1', 1, 'upload/gongzuorenyuan1.jpg', '17703786901', '1@qq.com', 1, '2023-02-28 08:12:33'),
	(2, '社区工作人员2', '123456', '工作人员姓名2', 1, 'upload/gongzuorenyuan2.jpg', '17703786902', '2@qq.com', 1, '2023-02-28 08:12:33'),
	(3, '社区工作人员3', '123456', '工作人员姓名3', 2, 'upload/gongzuorenyuan3.jpg', '17703786903', '3@qq.com', 1, '2023-02-28 08:12:33');

DROP TABLE IF EXISTS `jiankangdangan`;
CREATE TABLE IF NOT EXISTS `jiankangdangan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiankangdangan_name` varchar(200) DEFAULT NULL COMMENT '档案标题 Search111 ',
  `jiankangdangan_types` int DEFAULT NULL COMMENT '档案类型 Search111',
  `jiankangdangan_file` varchar(200) DEFAULT NULL COMMENT '档案下载',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `jiankangdangan_content` text COMMENT '档案详情',
  `jiankangdangan_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='档案信息';

DELETE FROM `jiankangdangan`;
INSERT INTO `jiankangdangan` (`id`, `jiankangdangan_name`, `jiankangdangan_types`, `jiankangdangan_file`, `yonghu_id`, `jiankangdangan_content`, `jiankangdangan_delete`, `insert_time`, `create_time`) VALUES
	(1, '档案标题1', 1, 'upload/file.rar', 1, '档案详情1', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(2, '档案标题2', 2, 'upload/file.rar', 2, '档案详情2', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(3, '档案标题3', 1, 'upload/file.rar', 3, '档案详情3', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(4, '档案标题4', 1, 'upload/file.rar', 2, '档案详情4', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(5, '档案标题5', 2, 'upload/file.rar', 3, '档案详情5', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(6, '档案标题6', 2, 'upload/file.rar', 3, '档案详情6', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(7, '档案标题7', 1, 'upload/file.rar', 3, '档案详情7', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(8, '档案标题8', 2, 'upload/file.rar', 3, '档案详情8', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(9, '档案标题9', 2, 'upload/file.rar', 3, '档案详情9', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(10, '档案标题10', 2, 'upload/file.rar', 3, '档案详情10', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(11, '档案标题11', 3, 'upload/file.rar', 2, '档案详情11', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(12, '档案标题12', 2, 'upload/file.rar', 1, '档案详情12', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(13, '档案标题13', 2, 'upload/file.rar', 2, '档案详情13', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(14, '档案标题14', 2, 'upload/file.rar', 3, '档案详情14', 1, '2023-02-28 08:12:33', '2023-02-28 08:12:33'),
	(15, '123', 3, 'upload/1677573382106.jpg', 1, '123', 2, '2023-02-28 08:36:24', '2023-02-28 08:36:24');

DROP TABLE IF EXISTS `jiashu`;
CREATE TABLE IF NOT EXISTS `jiashu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiashu_name` varchar(200) DEFAULT NULL COMMENT '家属姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiashu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `jiashu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiashu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `shenfen_types` int DEFAULT NULL COMMENT '身份 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `jiashu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='家属';

DELETE FROM `jiashu`;
INSERT INTO `jiashu` (`id`, `username`, `password`, `jiashu_name`, `sex_types`, `jiashu_photo`, `jiashu_phone`, `jiashu_email`, `shenfen_types`, `yonghu_id`, `jiashu_delete`, `create_time`) VALUES
	(1, '家属1', '123456', '家属姓名1', 1, 'upload/jiashu1.jpg', '17703786901', '1@qq.com', 2, 3, 1, '2023-02-28 08:12:33'),
	(2, '家属2', '123456', '家属姓名2', 1, 'upload/jiashu2.jpg', '17703786902', '2@qq.com', 1, 2, 1, '2023-02-28 08:12:33'),
	(3, '家属3', '123456', '家属姓名3', 2, 'upload/jiashu3.jpg', '17703786903', '3@qq.com', 1, 3, 1, '2023-02-28 08:12:33'),
	(4, '家属4', '123456', '123', NULL, NULL, '13344113121', '123@qq.com', NULL, NULL, 1, '2023-02-28 08:40:24');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'upload/news1.jpg', '2023-02-28 08:12:33', '公告详情1', '2023-02-28 08:12:33'),
	(2, '公告标题2', 1, 'upload/news2.jpg', '2023-02-28 08:12:33', '公告详情2', '2023-02-28 08:12:33'),
	(3, '公告标题3', 1, 'upload/news3.jpg', '2023-02-28 08:12:33', '公告详情3', '2023-02-28 08:12:33'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-02-28 08:12:33', '公告详情4', '2023-02-28 08:12:33'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-02-28 08:12:33', '公告详情5', '2023-02-28 08:12:33'),
	(6, '公告标题6', 1, 'upload/news6.jpg', '2023-02-28 08:12:33', '公告详情6', '2023-02-28 08:12:33'),
	(7, '公告标题7', 3, 'upload/news7.jpg', '2023-02-28 08:12:33', '公告详情7', '2023-02-28 08:12:33'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-02-28 08:12:33', '公告详情8', '2023-02-28 08:12:33'),
	(9, '公告标题9', 2, 'upload/news9.jpg', '2023-02-28 08:12:33', '公告详情9', '2023-02-28 08:12:33'),
	(10, '公告标题10', 1, 'upload/news10.jpg', '2023-02-28 08:12:33', '公告详情10', '2023-02-28 08:12:33'),
	(11, '公告标题11', 2, 'upload/news11.jpg', '2023-02-28 08:12:33', '公告详情11', '2023-02-28 08:12:33'),
	(12, '公告标题12', 2, 'upload/news12.jpg', '2023-02-28 08:12:33', '公告详情12', '2023-02-28 08:12:33'),
	(13, '公告标题13', 3, 'upload/news13.jpg', '2023-02-28 08:12:33', '公告详情13', '2023-02-28 08:12:33'),
	(14, '公告标题14', 3, 'upload/news14.jpg', '2023-02-28 08:12:33', '公告详情14', '2023-02-28 08:12:33');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '老人', 'tectr3jnx5q4b0q4e9g0x650io22azb8', '2023-02-28 08:18:43', '2024-08-04 06:30:33'),
	(2, 1, 'admin', 'users', '管理员', '470vfwm4e9j7slu7vzspudhwxch45cp3', '2023-02-28 08:26:09', '2024-08-04 06:28:42'),
	(3, 1, 'a1', 'gongzuorenyuan', '社区工作人员', '30hdi5s0n00c3qj0uopoo99psu3xwrsg', '2023-02-28 08:28:57', '2024-08-04 06:29:58'),
	(4, 1, 'a1', 'yisheng', '医生', '9h3gvpvaq2emywubhi5olk0igl06t25i', '2023-02-28 08:29:02', '2024-08-04 06:30:10'),
	(5, 1, 'a1', 'jiashu', '家属', 'zzb1vayyj4mos1x81wfqvzggkb5y2l4i', '2023-02-28 08:29:12', '2024-08-04 06:30:22'),
	(6, 4, 'a11', 'jiashu', '家属', '1g4rfgui8h5tlac62pipvpdwfgwz3iua', '2023-02-28 08:40:28', '2023-02-28 09:40:29');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-02-28 08:12:05');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生名称 Search111',
  `yisheng_types` int DEFAULT NULL COMMENT '科室 Search111',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111',
  `yisheng_zhichneg` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_guahao` varchar(200) DEFAULT NULL COMMENT '预约须知',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_content` text COMMENT '履历介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `yisheng_uuid_number`, `username`, `password`, `yisheng_name`, `yisheng_types`, `zhiwei_types`, `yisheng_zhichneg`, `yisheng_photo`, `yisheng_phone`, `yisheng_guahao`, `yisheng_email`, `yisheng_content`, `create_time`) VALUES
	(1, '1677571953698', '医生1', '123456', '医生名称1', 2, 2, '职称1', 'upload/yisheng1.jpg', '17703786901', '预约须知1', '1@qq.com', '履历介绍1', '2023-02-28 08:12:33'),
	(2, '1677571953770', '医生2', '123456', '医生名称2', 1, 2, '职称2', 'upload/yisheng2.jpg', '17703786902', '预约须知2', '2@qq.com', '履历介绍2', '2023-02-28 08:12:33'),
	(3, '1677571953723', '医生3', '123456', '医生名称3', 1, 3, '职称3', 'upload/yisheng3.jpg', '17703786903', '预约须知3', '3@qq.com', '履历介绍3', '2023-02-28 08:12:33');

DROP TABLE IF EXISTS `yisheng_yuyue`;
CREATE TABLE IF NOT EXISTS `yisheng_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yonghu_id` int DEFAULT NULL COMMENT '老人',
  `yisheng_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yisheng_yuyue_text` text COMMENT '预约备注',
  `yisheng_yuyue_yesno_types` int DEFAULT NULL COMMENT '预约审核 Search111',
  `yisheng_yuyue_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='医生预约';

DELETE FROM `yisheng_yuyue`;
INSERT INTO `yisheng_yuyue` (`id`, `yisheng_id`, `yonghu_id`, `yisheng_yuyue_time`, `yisheng_yuyue_text`, `yisheng_yuyue_yesno_types`, `yisheng_yuyue_yesno_text`, `create_time`) VALUES
	(1, 3, 3, '2023-02-28 08:12:33', '预约备注1', 1, NULL, '2023-02-28 08:12:33'),
	(2, 1, 2, '2023-02-28 08:12:33', '预约备注2', 1, NULL, '2023-02-28 08:12:33'),
	(3, 2, 3, '2023-02-28 08:12:33', '预约备注3', 1, NULL, '2023-02-28 08:12:33'),
	(4, 2, 3, '2023-02-28 08:12:33', '预约备注4', 1, NULL, '2023-02-28 08:12:33'),
	(5, 2, 2, '2023-02-28 08:12:33', '预约备注5', 1, NULL, '2023-02-28 08:12:33'),
	(6, 1, 3, '2023-02-28 08:12:33', '预约备注6', 1, NULL, '2023-02-28 08:12:33'),
	(7, 2, 1, '2023-02-28 08:12:33', '预约备注7', 1, NULL, '2023-02-28 08:12:33'),
	(8, 2, 3, '2023-02-28 08:12:33', '预约备注8', 1, NULL, '2023-02-28 08:12:33'),
	(9, 3, 3, '2023-02-28 08:12:33', '预约备注9', 1, NULL, '2023-02-28 08:12:33'),
	(10, 3, 3, '2023-02-28 08:12:33', '预约备注10', 1, NULL, '2023-02-28 08:12:33'),
	(11, 2, 2, '2023-02-28 08:12:33', '预约备注11', 1, NULL, '2023-02-28 08:12:33'),
	(12, 2, 2, '2023-02-28 08:12:33', '预约备注12', 1, NULL, '2023-02-28 08:12:33'),
	(13, 1, 1, '2023-02-28 08:12:33', '预约备注13', 2, '筛选合理预约', '2023-02-28 08:12:33'),
	(14, 3, 2, '2023-02-28 08:12:33', '预约备注14', 1, NULL, '2023-02-28 08:12:33'),
	(15, 2, 1, '2023-03-01 08:18:50', '123', 1, NULL, '2023-02-28 08:18:57'),
	(17, 2, 1, '2024-08-04 05:30:54', '111', 1, NULL, '2024-08-04 05:30:58');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '老人姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_age` int DEFAULT NULL COMMENT '年龄',
  `jiankang_types` int DEFAULT NULL COMMENT '健康指标 Search111',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='老人';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_photo`, `yonghu_id_number`, `yonghu_phone`, `yonghu_email`, `yonghu_age`, `jiankang_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '老人1', '123456', '老人姓名1', 1, 'upload/yonghu1.jpg', '410224199010102001', '17703786901', '1@qq.com', 129, 2, 1, '2023-02-28 08:12:33'),
	(2, '老人2', '123456', '老人姓名2', 1, 'upload/yonghu2.jpg', '410224199010102002', '17703786902', '2@qq.com', 338, 1, 1, '2023-02-28 08:12:33'),
	(3, '老人3', '123456', '老人姓名3', 1, 'upload/yonghu3.jpg', '410224199010102003', '17703786903', '3@qq.com', 91, 2, 1, '2023-02-28 08:12:33');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
