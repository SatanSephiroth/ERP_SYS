-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.4.8-MariaDB - mariadb.org binary distribution
-- 服务器OS:                        Win64
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for erp_sys
DROP DATABASE IF EXISTS `erp_sys`;
CREATE DATABASE IF NOT EXISTS `erp_sys` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `erp_sys`;

-- Dumping structure for table erp_sys.sys_configs
DROP TABLE IF EXISTS `sys_configs`;
CREATE TABLE IF NOT EXISTS `sys_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '参数名',
  `value` varchar(50) DEFAULT NULL COMMENT '参数值',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='配置管理';

-- Dumping data for table erp_sys.sys_configs: ~2 rows (大约)
/*!40000 ALTER TABLE `sys_configs` DISABLE KEYS */;
INSERT INTO `sys_configs` (`id`, `name`, `value`, `note`, `createdTime`, `modifiedTime`, `createdUser`, `modifiedUser`) VALUES
	(4, 'uploadPath', '/upload/images', '上传路径', '2018-04-22 17:39:55', '2018-04-22 17:39:55', NULL, NULL),
	(5, 'downloadPath', '/downloads/', '文件下载路径', '2018-04-22 17:40:41', '2018-04-22 17:40:41', NULL, NULL);
/*!40000 ALTER TABLE `sys_configs` ENABLE KEYS */;

-- Dumping structure for table erp_sys.sys_depts
DROP TABLE IF EXISTS `sys_depts`;
CREATE TABLE IF NOT EXISTS `sys_depts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `parentId` int(11) DEFAULT NULL COMMENT '上级部门',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- Dumping data for table erp_sys.sys_depts: ~11 rows (大约)
/*!40000 ALTER TABLE `sys_depts` DISABLE KEYS */;
INSERT INTO `sys_depts` (`id`, `name`, `parentId`, `sort`, `note`, `createdTime`, `modifiedTime`, `createdUser`, `modifiedUser`) VALUES
	(2, '生产部', NULL, 1, '生产', '2019-09-19 18:59:09', '2020-03-11 10:11:45', 'admin', NULL),
	(3, '研发部', NULL, 2, '负责产品设计与测试', '2019-09-19 19:15:05', '2020-03-11 10:12:19', NULL, NULL),
	(5, '技术部', 3, 1, '负责产品设计', '2019-09-20 10:13:11', '2020-03-11 10:13:11', NULL, NULL),
	(6, '实验部', 3, 2, '负责研发产品的测试', '2019-09-20 10:14:12', '2020-03-11 10:14:12', NULL, NULL),
	(7, '品质部', NULL, 3, '负责来料与生产产品的品质保障', '2019-09-20 10:15:37', '2020-03-11 10:15:37', NULL, NULL),
	(8, '工艺部', 3, 3, '负责产线工装与模具的设计与保养', '2019-09-20 10:16:44', '2020-03-11 10:16:44', NULL, NULL),
	(9, '行政部', NULL, 4, '', '2019-09-20 10:17:05', '2020-03-11 10:17:05', NULL, NULL),
	(10, '人事部', 9, 1, '', '2019-09-20 10:17:22', '2020-03-11 10:17:22', NULL, NULL),
	(11, 'IT', 9, 2, '', '2019-09-20 10:18:06', '2020-03-11 10:18:06', NULL, NULL),
	(12, '总务部', 9, 3, '', '2019-09-20 10:18:26', '2020-03-11 10:18:26', NULL, NULL),
	(13, '财务部', NULL, 5, '', '2019-09-20 10:18:45', '2020-03-11 10:18:45', NULL, NULL),
	(14, '销售部', NULL, 6, '', '2019-09-20 10:19:00', '2020-03-11 10:19:00', NULL, NULL),
	(15, '运维部', NULL, 7, '', '2019-09-20 10:20:16', '2020-03-11 10:20:25', NULL, NULL);
/*!40000 ALTER TABLE `sys_depts` ENABLE KEYS */;

-- Dumping structure for table erp_sys.sys_logs
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE IF NOT EXISTS `sys_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- Dumping data for table erp_sys.sys_logs: ~0 rows (大约)
/*!40000 ALTER TABLE `sys_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_logs` ENABLE KEYS */;

-- Dumping structure for table erp_sys.sys_menus
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE IF NOT EXISTS `sys_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `type` int(11) DEFAULT NULL COMMENT '类型     1：菜单   2：按钮',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `permission` varchar(500) DEFAULT NULL COMMENT '授权(如：user:create)',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COMMENT='资源管理';

-- Dumping data for table erp_sys.sys_menus: ~17 rows (大约)
/*!40000 ALTER TABLE `sys_menus` DISABLE KEYS */;
INSERT INTO `sys_menus` (`id`, `name`, `url`, `type`, `sort`, `note`, `parentId`, `permission`, `createdTime`, `modifiedTime`, `createdUser`, `modifiedUser`) VALUES
	(8, '系统管理', '请求路径', 1, 8, NULL, NULL, 'sys:list', '2019-09-19 15:15:59', '2017-07-21 11:16:00', 'admin', 'admin'),
	(20, '部门管理', 'dept/listUI.do', 1, 20, NULL, 8, 'sys:dept:view', '2019-09-19 10:02:09', '2020-03-11 10:03:07', NULL, NULL),
	(25, '日志管理', '请求路径', 1, 25, NULL, 8, NULL, '2019-09-19 15:15:59', '2017-07-12 15:15:59', 'admin', 'admin'),
	(45, '用户管理', 'user/listUI.do', 1, 23, NULL, 8, 'sys:user:view', '2019-09-19 15:15:59', '2020-03-11 10:09:54', 'admin', NULL),
	(46, '菜单管理', 'menu/listUI.do', 1, 21, NULL, 8, 'sys:menu:view', '2019-09-19 15:15:59', '2020-03-11 10:09:23', 'admin', NULL),
	(47, '角色管理', 'role/listUI.do', 1, 22, NULL, 8, 'sys:role:view', '2019-09-19 15:15:59', '2020-03-11 10:09:42', 'admin', NULL),
	(115, '查看', '', 2, 1, NULL, 46, 'sys:menu:view', '2019-09-20 16:33:41', '2017-07-21 11:09:05', NULL, NULL),
	(116, '新增', '', 2, 2, NULL, 46, 'sys:menu:add', '2019-09-20 16:34:02', '2017-07-21 11:09:22', NULL, NULL),
	(117, '修改', '', 2, 3, NULL, 46, 'sys:menu:update', '2019-09-20 16:34:25', '2017-07-21 11:09:45', NULL, NULL),
	(118, '删除', '', 2, 4, NULL, 46, 'sys:menu:delete', '2019-09-20 16:34:46', '2017-07-21 11:10:12', NULL, NULL),
	(119, '查看', '', 2, 1, NULL, 45, 'sys:user:view', '2019-09-20 16:35:05', '2017-07-21 11:12:46', NULL, NULL),
	(120, '查看', '', 2, 1, NULL, 47, 'sys:role:view', '2019-09-20 16:35:26', '2017-07-21 11:13:43', NULL, NULL),
	(126, '新增', '', 2, 2, NULL, 45, 'sys:user:add', '2019-09-20 11:11:34', '2017-07-21 11:11:34', NULL, NULL),
	(127, '修改', '', 2, 3, NULL, 45, 'sys:user:update', '2019-09-20 11:11:56', '2017-07-21 11:11:56', NULL, NULL),
	(128, '新增', '', 2, 2, NULL, 47, 'sys:role:add', '2019-09-20 11:14:24', '2017-07-21 11:14:24', NULL, NULL),
	(129, '修改', '', 2, 3, NULL, 47, 'sys:role:update', '2019-09-20 11:14:48', '2017-07-21 11:14:48', NULL, NULL),
	(130, '删除', '', 2, 4, NULL, 47, 'sys:role:delete', '2019-09-20 11:15:09', '2017-07-21 11:15:09', NULL, NULL);
/*!40000 ALTER TABLE `sys_menus` ENABLE KEYS */;

-- Dumping structure for table erp_sys.sys_roles
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE IF NOT EXISTS `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='角色';

-- Dumping data for table erp_sys.sys_roles: ~2 rows (大约)
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` (`id`, `name`, `note`, `createdTime`, `modifiedTime`, `createdUser`, `modifiedUser`) VALUES
	(1, '系统管理员', '系统管理员', '2019-09-19 17:44:11', '2019-09-19 20:53:32', 'admin', 'admin'),
	(45, '运维经理', '运维经理', '2019-09-19 20:51:43', '2019-09-19 10:21:31', NULL, NULL);
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;

-- Dumping structure for table erp_sys.sys_role_menus
DROP TABLE IF EXISTS `sys_role_menus`;
CREATE TABLE IF NOT EXISTS `sys_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1260 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- Dumping data for table erp_sys.sys_role_menus: ~26 rows (大约)
/*!40000 ALTER TABLE `sys_role_menus` DISABLE KEYS */;
INSERT INTO `sys_role_menus` (`id`, `role_id`, `menu_id`) VALUES
	(1232, 1, 8),
	(1234, 1, 25),
	(1235, 1, 45),
	(1236, 1, 119),
	(1237, 1, 126),
	(1238, 1, 127),
	(1239, 1, 46),
	(1240, 1, 115),
	(1241, 1, 116),
	(1242, 1, 117),
	(1243, 1, 118),
	(1244, 1, 47),
	(1245, 1, 120),
	(1246, 1, 128),
	(1247, 1, 129),
	(1248, 1, 130),
	(1250, 45, 8),
	(1251, 45, 45),
	(1252, 45, 119),
	(1253, 45, 46),
	(1254, 45, 115),
	(1255, 45, 47),
	(1256, 45, 120),
	(1257, 45, 128),
	(1258, 45, 129),
	(1259, 45, 130);
/*!40000 ALTER TABLE `sys_role_menus` ENABLE KEYS */;

-- Dumping structure for table erp_sys.sys_users
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE IF NOT EXISTS `sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐  密码加密时前缀，使加密后的值不同',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `valid` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常  默认值 ：1',
  `deptId` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- Dumping data for table erp_sys.sys_users: ~6 rows (大约)
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` (`id`, `username`, `password`, `salt`, `email`, `mobile`, `valid`, `deptId`, `createdTime`, `modifiedTime`, `createdUser`, `modifiedUser`) VALUES
	(1, 'admin', '4ebd394fbd25e495e0753a7dc9889a8e', '7adb778c-e7d3-4dd3-a3c5-5f80a158006d', '13506183370@163.com', '13506183370', 1, 15, '2019-09-19 09:36:48', '2020-03-11 10:29:22', NULL, NULL),
	(2, 'zhangli', 'bdcf69375bdb532e50279b91eb00940d', '5e7cbd36-e897-4951-b42b-19809caf3caa', 'zhangli@t.cn', '13678909876', 0, 3, '2019-09-19 10:01:51', '2019-09-19 20:49:19', NULL, 'admin'),
	(3, 'wangke', 'c5dc32ec66041aeddf432b3146bd2257', '5e3e1475-1ea9-4a6a-976e-b07545827139', 'wangke@t.cn', '18678900987', 1, 3, '2019-09-19 11:40:53', '2019-09-19 20:48:52', NULL, NULL),
	(4, 'zhangql', '+HBpqtPuj9KLBIpneR5X0A==', 'ed487fac-9952-45c9-acaa-21dab9c689cc', 'zhangql@t.cn', '13678909876', 1, 2, '2019-09-19 12:17:30', '2019-09-19 20:48:04', NULL, NULL),
	(5, 'fanwei', '1acab7425d6dfae670f26bd160518902', '34fbedb2-e135-4f8d-b595-24360edc348d', 'fanwei@t.cn', '13876545678', 1, 3, '2019-09-19 17:03:22', '2019-09-19 20:47:49', NULL, NULL),
	(6, 'wumei', '431ebdcccf3404787a144f9ba669a8e2', '8a14f46f-7a17-4dfe-85ab-08e63cb618ce', 'wumei@t.cn', '13567898765', 1, 2, '2019-09-19 10:57:40', '2019-09-19 20:46:49', NULL, NULL);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;

-- Dumping structure for table erp_sys.sys_user_roles
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE IF NOT EXISTS `sys_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- Dumping data for table erp_sys.sys_user_roles: ~3 rows (大约)
/*!40000 ALTER TABLE `sys_user_roles` DISABLE KEYS */;
INSERT INTO `sys_user_roles` (`id`, `user_id`, `role_id`) VALUES
	(66, 16, 45),
	(67, 15, 45),
	(68, 1, 1);
/*!40000 ALTER TABLE `sys_user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
