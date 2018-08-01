-- ft_account 必须要有manager
-- ft_role 初始角色
-- ft_role_permission 角色初始权限
-- ft_permission 权限
-- ft_business_system 业务系统
-- ft_language 
-- ft_oauth_application 初始shap、google和天猫
-- ft_product 产品权限

-- ----------------------------
-- Table structure for `ft_account`

delete from ft_account where username='manager';
INSERT INTO `ft_account` (auid, username,password,email,status,active) VALUES ('aef0dccf5e7c4427a1a002c5eafdf187', 'manager', 'cdf4a007e2b02a0c49fc9b7ccfbb8a10c644f635e1765dcf2a7ab794ddc7edac', '59820640778@qq.com', 2, 1);
UPDATE ft_account SET id=0 where username='manager';


-- ----------------------------
-- Table structure for `ft_role`
-- ----------------------------
DROP TABLE IF EXISTS `ft_role`;
CREATE TABLE `ft_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cn_description` varchar(255) DEFAULT NULL,
  `en_description` varchar(255) DEFAULT NULL,
  `reserve` tinyint(1) NOT NULL DEFAULT '0',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ft_role
-- ----------------------------
INSERT INTO `ft_role` VALUES ('1', 'Anonymous', 'Anonymous', 'Anonymous', '1', '2018-01-20 04:20:39', '2018-01-20 03:01:25');
INSERT INTO `ft_role` VALUES ('2', 'Alpha', 'cn', 'cn', '0', '2018-01-02 01:59:26', '2017-10-27 03:53:38');
INSERT INTO `ft_role` VALUES ('3', 'Beta', null, null, '0', '2017-10-27 03:53:38', '2017-10-27 03:53:38');
INSERT INTO `ft_role` VALUES ('4', 'FAE', 'FAE', 'FAE', '0', '2017-10-27 03:53:38', '2017-10-27 03:53:38');
INSERT INTO `ft_role` VALUES ('5', 'Factory', 'Factory', 'Factory', '0', '2017-11-12 19:44:34', '2017-11-12 19:44:34');
INSERT INTO `ft_role` VALUES ('6', '内部测试专用', '用于内部测试', 'For our Test Team', '0', '2017-12-18 22:32:44', '2017-12-18 22:32:44');
INSERT INTO `ft_role` VALUES ('7', 'Sharp', 'Sharp', 'Sharp', '0', '2018-01-02 01:35:13', '2018-01-02 01:35:13');
INSERT INTO `ft_role` VALUES ('11', 'OrdinaryRole ', 'Ordinary role', 'Ordinary role', '1', '2018-01-20 03:11:32', '2018-01-20 03:11:32');
INSERT INTO `ft_role` VALUES ('12', 'R&D', '研发', 'R&D', '0', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role` VALUES ('13', '夏普测试', '用于测试提供给夏普的软件版本', '用于测试提供给夏普的软件版本', '0', '2018-01-22 19:58:46', '2018-01-22 19:58:46');
INSERT INTO `ft_role` VALUES ('14', 'Cube Group', 'Cube Group', 'Cube Group', '0', '2018-03-05 19:26:25', '2018-03-05 19:26:25');
INSERT INTO `ft_role` VALUES ('16', 'SuperManager', 'manager', 'manager', '1', '2018-05-03 11:54:03', '2017-10-28 16:30:47');


-- ----------------------------
-- Table structure for `ft_oauth_application`
-- ----------------------------
DROP TABLE IF EXISTS `ft_oauth_application`;
CREATE TABLE `ft_oauth_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `client_id` varchar(100) DEFAULT NULL,
  `client_secret` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `home_page` varchar(255) DEFAULT NULL,
  `direct_uri` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ft_oauth_application
-- ----------------------------
INSERT INTO `ft_oauth_application` VALUES ('1', null, 'alexa', 'Awx0YRuq8LNzrn21', 'R37z96hdh53a8oG9A52s', 'alexa', null, null, null, '1', '2017-08-02 02:25:55', '2017-07-25 09:07:55');
INSERT INTO `ft_oauth_application` VALUES ('2', null, 'google_home', 'client_id', 'client_secret', 'alexa', null, null, null, '1', '2017-07-25 09:07:55', '2017-07-25 09:07:55');
INSERT INTO `ft_oauth_application` VALUES ('3', null, 'AliGenie', 'AliGenie', 'RbikpeJpTqYlJRCI', 'tmall', null, null, null, '1', '2018-02-27 23:47:06', '2018-02-27 23:47:06');


-- ----------------------------
-- Table structure for `ft_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `ft_role_permission`;
CREATE TABLE `ft_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ft_role_permission
-- ----------------------------
INSERT INTO `ft_role_permission` VALUES ('9', '79', '2018-01-20 03:01:47', '2018-01-20 03:01:47');
INSERT INTO `ft_role_permission` VALUES ('11', '79', '2018-01-20 03:11:49', '2018-01-20 03:11:49');
INSERT INTO `ft_role_permission` VALUES ('3', '1', '2018-01-20 03:32:52', '2018-01-20 03:32:52');
INSERT INTO `ft_role_permission` VALUES ('3', '79', '2018-01-20 03:32:52', '2018-01-20 03:32:52');
INSERT INTO `ft_role_permission` VALUES ('2', '1', '2018-01-20 03:32:58', '2018-01-20 03:32:58');
INSERT INTO `ft_role_permission` VALUES ('2', '2', '2018-01-20 03:32:58', '2018-01-20 03:32:58');
INSERT INTO `ft_role_permission` VALUES ('2', '79', '2018-01-20 03:32:58', '2018-01-20 03:32:58');
INSERT INTO `ft_role_permission` VALUES ('1', '79', '2018-01-20 04:23:03', '2018-01-20 04:23:03');
INSERT INTO `ft_role_permission` VALUES ('12', '47', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '48', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '49', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '50', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '51', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '52', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '53', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '54', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '55', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '56', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '57', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '58', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '59', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '60', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '61', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '62', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '63', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '64', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '65', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '66', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '67', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '68', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '69', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '70', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '71', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '72', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '73', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '74', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '75', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '76', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '77', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '78', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '80', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '81', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('12', '82', '2018-01-21 17:29:41', '2018-01-21 17:29:41');
INSERT INTO `ft_role_permission` VALUES ('13', '83', '2018-01-22 19:58:46', '2018-01-22 19:58:46');
INSERT INTO `ft_role_permission` VALUES ('5', '48', '2018-01-23 19:05:18', '2018-01-23 19:05:18');
INSERT INTO `ft_role_permission` VALUES ('5', '63', '2018-01-23 19:05:18', '2018-01-23 19:05:18');
INSERT INTO `ft_role_permission` VALUES ('5', '64', '2018-01-23 19:05:18', '2018-01-23 19:05:18');
INSERT INTO `ft_role_permission` VALUES ('4', '47', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '48', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '49', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '50', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '65', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '66', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '68', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '73', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '74', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '75', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '80', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '81', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('4', '82', '2018-02-06 02:34:34', '2018-02-06 02:34:34');
INSERT INTO `ft_role_permission` VALUES ('6', '50', '2018-02-28 00:39:26', '2018-02-28 00:39:26');
INSERT INTO `ft_role_permission` VALUES ('6', '74', '2018-02-28 00:39:26', '2018-02-28 00:39:26');
INSERT INTO `ft_role_permission` VALUES ('6', '78', '2018-02-28 00:39:26', '2018-02-28 00:39:26');
INSERT INTO `ft_role_permission` VALUES ('6', '84', '2018-02-28 00:39:26', '2018-02-28 00:39:26');
INSERT INTO `ft_role_permission` VALUES ('14', '47', '2018-03-05 19:30:37', '2018-03-05 19:30:37');
INSERT INTO `ft_role_permission` VALUES ('14', '48', '2018-03-05 19:30:37', '2018-03-05 19:30:37');
INSERT INTO `ft_role_permission` VALUES ('14', '52', '2018-03-05 19:30:37', '2018-03-05 19:30:37');
INSERT INTO `ft_role_permission` VALUES ('14', '62', '2018-03-05 19:30:37', '2018-03-05 19:30:37');
INSERT INTO `ft_role_permission` VALUES ('14', '63', '2018-03-05 19:30:37', '2018-03-05 19:30:37');
INSERT INTO `ft_role_permission` VALUES ('14', '64', '2018-03-05 19:30:37', '2018-03-05 19:30:37');
INSERT INTO `ft_role_permission` VALUES ('14', '81', '2018-03-05 19:30:37', '2018-03-05 19:30:37');


-- ----------------------------
-- Table structure for `ft_business_system`
-- ----------------------------
DROP TABLE IF EXISTS `ft_business_system`;
CREATE TABLE `ft_business_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `permission_custom_data` text,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ft_business_system
-- ----------------------------
INSERT INTO `ft_business_system` VALUES ('1', 'Manager System', 'MANAGER', '', '2018-01-20 03:01:24', '2018-01-20 03:00:32');
INSERT INTO `ft_business_system` VALUES ('2', 'Oomi System', 'OOMI_SYSTEM', '', '2018-01-20 03:00:32', '2018-01-20 03:00:32');



-- ----------------------------
-- Table structure for `ft_language`
-- ----------------------------
DROP TABLE IF EXISTS `ft_language`;
CREATE TABLE `ft_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(11) DEFAULT NULL COMMENT '0：删除 1：正常',
  `delete_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ft_language
-- ----------------------------
INSERT INTO `ft_language` VALUES ('1', 'en', 'English', '1', '2018-06-07 14:25:04', '2018-06-07 14:25:04', null, null);
INSERT INTO `ft_language` VALUES ('2', 'zh-CN', 'Simple Chinese', '2', '2018-06-07 14:25:04', '2018-06-07 14:25:04', null, null);
INSERT INTO `ft_language` VALUES ('3', 'zh-HK', 'Traditional Chinese', '3', '2018-06-07 14:25:04', '2018-06-07 14:25:04', null, null);



-- ----------------------------
-- Table structure for `ft_product`
-- ----------------------------
DROP TABLE IF EXISTS `ft_product`;
CREATE TABLE `ft_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id号',
  `product` varchar(255) DEFAULT NULL COMMENT '产品名（区分大小写）',
  `model` varchar(255) DEFAULT NULL COMMENT '型号',
  `hw_version` varchar(255) DEFAULT NULL COMMENT '硬件版本',
  `latest_version` varchar(255) DEFAULT NULL COMMENT '当前最新版本',
  `version_number` int(11) DEFAULT NULL COMMENT '当前ota包的数量，由于代码没完善，这个字段并不准确，但不影响。',
  `version_format` varchar(255) DEFAULT NULL COMMENT '版本号的格式，#N表示是number',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `latest_beta_version` varchar(255) DEFAULT NULL,
  `latest_alpha_version` varchar(255) DEFAULT NULL,
  `feature` varchar(50) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ft_product
-- ----------------------------
INSERT INTO `ft_product` VALUES ('1', 'prosyst', '1', '1.0.0.0', '2.0.0.33', '27', '#N.#N.#N.#N', '2017-05-26 15:35:23', '1.2.3.6', '2.0.0.23', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('2', 'OMMICUBE', '1', '1.0', '01.01', '3', '#N.#N', '2017-05-26 12:24:48', '00.04', '00.04', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('3', 'touch', '0', '1.0', 'V2.0.0.29', '35', 'V#N.#N.#N.#N', '2017-08-14 13:54:42', 'V1.2.3.9', 'V2.0.0.13', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('6', 'AndroidPhone', '1', '1.0.0.0', '0.0.0.0', '12', '#N.#N.#N.#N', '2017-05-26 10:03:44', '0.0.0.0', '1.0.4.7', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('7', 'touchFirmware', '1', 'V1.0.0.0', 'V1.0.0.14', '7', 'V#N.#N.#N.#N', '2017-05-26 15:58:21', 'V0.0.0.0', 'V1.0.0.19', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('8', 'OOMI_Cube_IR', '1', 'V1.0.0.0', 'V1.1.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:00:28', 'V0.0.0.0', 'V0.0.0.0', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('9', 'OOMI_Cube_STM8', '1', 'V1.0.0.0', 'V0.0.0.0', '0', 'V#N.#N.#N.#N', '2017-05-25 18:39:20', 'V0.0.0.0', 'V0.0.0.0', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('10', 'OOMI_Cube_APP', '1', 'V1.0.0.0', 'V2.0.6.9', '31', 'V#N.#N.#N.#N', '2018-01-19 19:10:49', 'V2.0.5.8', 'V2.0.6.5', null, '2018-01-19 03:10:49', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('11', 'OOMI_Cube_Firmware', '1', 'V1.0.0.0', 'V0.2.0.4', '6', 'V#N.#N.#N.#N', '2018-01-19 19:11:29', 'V0.0.0.0', 'V0.2.0.2', null, '2018-01-19 03:11:29', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('12', 'OOMI_Touch_APP', '1', 'V1.0.0.0', 'V2.0.6.5', '21', 'V#N.#N.#N.#N', '2018-01-19 19:10:55', 'V2.0.5.12', 'V2.0.6.4', null, '2018-01-19 03:10:54', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('13', 'OOMI_Touch_Firmware', '1', 'V1.0.0.0', 'V1.0.0.19', '2', 'V#N.#N.#N.#N', '2017-05-26 18:45:40', 'V0.0.0.0', 'V0.0.0.0', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('14', 'OOMI_Phone_Android', '1', 'V1.0.0.0', 'V2.0.4.12', '10', 'V#N.#N.#N.#N', '2017-10-29 21:05:36', 'V2.0.2.7', 'V0.0.0.0', null, '2017-10-29 06:05:36', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('15', 'OOMI_Phone_iOS', '1', 'V1.0.0.0', 'V0.0.0.0', '0', 'V#N.#N.#N.#N', '2017-05-25 18:39:20', 'V0.0.0.0', 'V0.0.0.0', null, '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('16', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:01:42', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_01', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('17', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:08:29', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_02', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('18', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:09:23', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_00', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('19', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:10:06', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_03', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('20', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:10:37', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_27', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('21', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:11:16', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_09', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('22', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:12:09', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_10', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('23', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V0.0.0.0', '0', 'V#N.#N.#N.#N', '2017-05-25 18:39:20', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_28', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('24', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V0.0.0.0', '0', 'V#N.#N.#N.#N', '2017-05-25 18:39:20', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_08', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('25', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V0.0.0.0', '0', 'V#N.#N.#N.#N', '2017-05-25 18:39:20', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_26', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('26', 'OOMI_Cube_Zwave', '1', 'V1.0.0.0', 'V1.02.0.0', '1', 'V#N.#N.#N.#N', '2017-07-27 18:15:44', 'V0.0.0.0', 'V0.0.0.0', 'zwave_freq_29', '2017-10-27 03:53:19', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('27', 'OOMI_Kit', '1', 'V1.0.0.0', '2.0.6.3', '266', '#N.#N.#N.#N', '2018-01-19 19:12:20', '2.0.6.3', '2.0.6.3', null, '2018-01-19 03:12:20', '2017-10-27 03:53:19');
INSERT INTO `ft_product` VALUES ('28', 'OOMI_Pro_Phone_Android', '1', 'V1.0.0.0', null, null, 'V#N.#N.#N.#N', null, null, null, null, '2018-01-26 00:09:24', '2018-01-26 00:09:24');


-- ----------------------------
-- Table structure for `ft_permission`
-- ----------------------------
DROP TABLE IF EXISTS `ft_permission`;
CREATE TABLE `ft_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `business_system_id` int(11) DEFAULT NULL,
  `sort_no` int(11) DEFAULT NULL,
  `custom_data` text,
  `cn_description` varchar(255) DEFAULT NULL,
  `en_description` varchar(255) DEFAULT NULL,
  `reserve` tinyint(1) NOT NULL DEFAULT '0',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ft_permission
-- ----------------------------
INSERT INTO `ft_permission` VALUES ('1', 'Beta版公测权限', 'BETA_TEST', '0', '2', '2', null, '拥有更新软件到Beta版测试的权限', null, '0', '2018-01-20 03:00:40', '2017-10-27 03:53:07');
INSERT INTO `ft_permission` VALUES ('2', 'Alpha版内测权限', 'ALPHA_TEST', '0', '2', '1', null, '拥有更新软件到Aplha版测试的权限', null, '0', '2018-01-20 03:00:40', '2017-10-27 03:53:07');
INSERT INTO `ft_permission` VALUES ('47', '用户管理', 'MENU_ACCOUNT_ROOT', '0', '1', '2', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Account\",\"url\":\"\"}', '用户管理', '', '0', '2018-01-20 03:01:28', '2018-01-20 03:00:41');
INSERT INTO `ft_permission` VALUES ('48', '设备管理', 'MENU_CLIENT_ROOT', '0', '1', '3', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Client\",\"url\":\"\"}', '设备管理', '', '0', '2018-01-20 03:01:28', '2018-01-20 03:00:41');
INSERT INTO `ft_permission` VALUES ('49', '推送服务', 'MENU_PUSH_SERVICE_ROOT', '0', '1', '4', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Push Service\",\"url\":\"\"}', '推送服务', '', '0', '2018-01-20 03:01:28', '2018-01-20 03:00:41');
INSERT INTO `ft_permission` VALUES ('50', 'OTA管理', 'MENU_OTA_ROOT', '0', '1', '5', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"OTA\",\"url\":\"\"}', 'OTA管理', '', '0', '2018-01-20 03:01:29', '2018-01-20 03:00:41');
INSERT INTO `ft_permission` VALUES ('51', '用户编辑', 'MENU_ACCOUNT_EDIT', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/account/edit\"}', 'MENU_ACCOUNT_EDIT', 'MENU_ACCOUNT_EDIT', '0', '2018-01-20 03:00:47', '2018-01-20 03:00:47');
INSERT INTO `ft_permission` VALUES ('52', '用户列表', 'MENU_ACCOUNT_LIST', '47', '1', '0', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Account List\",\"url\":\"/account/list\"}', 'MENU_ACCOUNT_LIST', 'MENU_ACCOUNT_LIST', '0', '2018-01-20 03:00:47', '2018-01-20 03:00:47');
INSERT INTO `ft_permission` VALUES ('53', '创建角色', 'MENU_ROLE_CREATE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/role/create\"}', 'MENU_ROLE_CREATE', 'MENU_ROLE_CREATE', '0', '2018-01-20 03:00:47', '2018-01-20 03:00:47');
INSERT INTO `ft_permission` VALUES ('54', '删除角色', 'MENU_ROLE_DELETE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/role/delete\"}', 'MENU_ROLE_DELETE', 'MENU_ROLE_DELETE', '0', '2018-01-20 03:00:48', '2018-01-20 03:00:48');
INSERT INTO `ft_permission` VALUES ('55', '编辑角色', 'MENU_ROLE_EDIT', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/role/edit\"}', 'MENU_ROLE_EDIT', 'MENU_ROLE_EDIT', '0', '2018-01-20 03:00:48', '2018-01-20 03:00:48');
INSERT INTO `ft_permission` VALUES ('56', '角色列表', 'MENU_ROLE_LIST', '47', '1', '1', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Role List\",\"url\":\"/role/list\"}', 'MENU_ROLE_LIST', 'MENU_ROLE_LIST', '0', '2018-01-20 03:00:48', '2018-01-20 03:00:48');
INSERT INTO `ft_permission` VALUES ('57', '创建权限', 'MENU_PERMISSION_CREATE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/permission/create\"}', 'MENU_PERMISSION_CREATE', 'MENU_PERMISSION_CREATE', '0', '2018-01-20 03:00:48', '2018-01-20 03:00:48');
INSERT INTO `ft_permission` VALUES ('58', '权限删除', 'MENU_PERMISSION_DELETE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/permission/delete\"}', 'MENU_PERMISSION_DELETE', 'MENU_PERMISSION_DELETE', '0', '2018-01-20 03:00:48', '2018-01-20 03:00:48');
INSERT INTO `ft_permission` VALUES ('59', '编辑权限', 'MENU_PERMISSION_EDIT', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/permission/edit\"}', 'MENU_PERMISSION_EDIT', 'MENU_PERMISSION_EDIT', '0', '2018-01-20 03:00:49', '2018-01-20 03:00:49');
INSERT INTO `ft_permission` VALUES ('60', '权限列表', 'MENU_PERMISSION_LIST', '47', '1', '2', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Permission List\",\"url\":\"/permission/list\"}', 'MENU_PERMISSION_LIST', 'MENU_PERMISSION_LIST', '0', '2018-01-20 03:00:49', '2018-01-20 03:00:49');
INSERT INTO `ft_permission` VALUES ('61', '设备详情', 'MENU_CLIENT_DETAIL', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/client/detail\"}', 'MENU_CLIENT_DETAIL', 'MENU_CLIENT_DETAIL', '0', '2018-01-20 03:00:49', '2018-01-20 03:00:49');
INSERT INTO `ft_permission` VALUES ('62', '客户端列表', 'MENU_CLIENT_LIST', '48', '1', '0', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Client List\",\"url\":\"/client/list\"}', 'MENU_CLIENT_LIST', 'MENU_CLIENT_LIST', '0', '2018-01-20 03:00:49', '2018-01-20 03:00:49');
INSERT INTO `ft_permission` VALUES ('63', '搜索设备', 'MENU_CLIENT_SEARCH', '48', '1', '1', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Client Search\",\"url\":\"/client/search\"}', 'MENU_CLIENT_SEARCH', 'MENU_CLIENT_SEARCH', '0', '2018-01-20 03:00:50', '2018-01-20 03:00:50');
INSERT INTO `ft_permission` VALUES ('64', '查看设备列表', 'MENU_CLIENT_UNIQUENESS', '48', '1', '2', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Client Uniqueness\",\"url\":\"/client/uniqueness\"}', 'MENU_CLIENT_UNIQUENESS', 'MENU_CLIENT_UNIQUENESS', '0', '2018-01-20 03:00:50', '2018-01-20 03:00:50');
INSERT INTO `ft_permission` VALUES ('65', '创建推送', 'MENU_PUSH_TASK_CREATE', '49', '1', '0', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Create Push\",\"url\":\"/push/task_create\"}', 'MENU_PUSH_TASK_CREATE', 'MENU_PUSH_TASK_CREATE', '0', '2018-01-20 03:00:50', '2018-01-20 03:00:50');
INSERT INTO `ft_permission` VALUES ('66', '推送列表', 'MENU_PUSH_TASK_LIST', '49', '1', '1', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Push List\",\"url\":\"/push/task_list\"}', 'MENU_PUSH_TASK_LIST', 'MENU_PUSH_TASK_LIST', '0', '2018-01-20 03:00:50', '2018-01-20 03:00:50');
INSERT INTO `ft_permission` VALUES ('67', '推送任务详情列表', 'MENU_PUSH_TASK_STATUS', '0', '1', '1', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"Push Status\",\"url\":\"/push/task_status\"}', 'MENU_PUSH_TASK_STATUS', 'MENU_PUSH_TASK_STATUS', '0', '2018-01-20 03:00:51', '2018-01-20 03:00:51');
INSERT INTO `ft_permission` VALUES ('68', '创建OTA消息', 'MENU_PUSH_OTA', '49', '1', '2', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"OTA Push\",\"url\":\"/push/ota\"}', 'MENU_PUSH_OTA', 'MENU_PUSH_OTA', '0', '2018-01-20 03:00:51', '2018-01-20 03:00:51');
INSERT INTO `ft_permission` VALUES ('69', '创建产品', 'MENU_PRODUCT_CREATE ', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/product/create\"}', 'MENU_PRODUCT_CREATE', 'MENU_PRODUCT_CREATE', '0', '2018-01-20 03:00:51', '2018-01-20 03:00:51');
INSERT INTO `ft_permission` VALUES ('70', '产品列表', 'MENU_PRODUCT_LIST', '50', '1', '0', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Product List\",\"url\":\"/product/list\"}', 'MENU_PRODUCT_LIST', 'MENU_PRODUCT_LIST', '0', '2018-01-20 03:00:51', '2018-01-20 03:00:51');
INSERT INTO `ft_permission` VALUES ('71', '创建固件', 'MENU_FIRMWARE_CREATE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/firmware/create\"}', 'MENU_FIRMWARE_CREATE', 'MENU_FIRMWARE_CREATE', '0', '2018-01-20 03:00:51', '2018-01-20 03:00:51');
INSERT INTO `ft_permission` VALUES ('72', '删除固件', 'MENU_FIRMWARE_DELETE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/firmware/delete\"}', 'MENU_FIRMWARE_DELETE', 'MENU_FIRMWARE_DELETE', '0', '2018-01-20 03:00:52', '2018-01-20 03:00:52');
INSERT INTO `ft_permission` VALUES ('73', '固件编辑', 'MENU_FIRMWARE_EDIT', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/firmware/edit\"}', 'MENU_FIRMWARE_EDIT', 'MENU_FIRMWARE_EDIT', '0', '2018-01-20 03:00:52', '2018-01-20 03:00:52');
INSERT INTO `ft_permission` VALUES ('74', '固件列表', 'MENU_FIRMWARE_LIST', '50', '1', '1', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Firmware List\",\"url\":\"/firmware/list\"}', 'MENU_FIRMWARE_LIST', 'MENU_FIRMWARE_LIST', '0', '2018-01-20 03:00:52', '2018-01-20 03:00:52');
INSERT INTO `ft_permission` VALUES ('75', '创建系统版本', 'MENU_FIRMWARE_PACKAGE_KIT_CREATE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/firmware_package_kit/create\"}', 'MENU_FIRMWARE_PACKAGE_KIT_CREATE', 'MENU_FIRMWARE_PACKAGE_KIT_CREATE', '0', '2018-01-20 03:00:52', '2018-01-20 03:00:52');
INSERT INTO `ft_permission` VALUES ('76', '系统版本删除', 'MENU_FIRMWARE_PACKAGE_KIT_DELETE', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/firmware_package_kit/delete\"}', 'MENU_FIRMWARE_PACKAGE_KIT_DELETE', 'MENU_FIRMWARE_PACKAGE_KIT_DELETE', '0', '2018-01-20 03:00:53', '2018-01-20 03:00:53');
INSERT INTO `ft_permission` VALUES ('77', '编辑系统版本', 'MENU_FIRMWARE_PACKAGE_KIT_EDIT', '0', '1', '0', '{\"group\":\"\",\"isMenu\":false,\"menuMame\":\"\",\"url\":\"/firmware_package_kit/edit\"}', 'MENU_FIRMWARE_PACKAGE_KIT_EDIT', 'MENU_FIRMWARE_PACKAGE_KIT_EDIT', '0', '2018-01-20 03:00:53', '2018-01-20 03:00:53');
INSERT INTO `ft_permission` VALUES ('78', '系统版本列表', 'MENU_FIRMWARE_PACKAGE_KIT_LIST', '50', '1', '2', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Oomi Version List\",\"url\":\"/firmware_package_kit/list\"}', 'MENU_FIRMWARE_PACKAGE_KIT_LIST', 'MENU_FIRMWARE_PACKAGE_KIT_LIST', '0', '2018-01-20 03:00:53', '2018-01-20 03:00:53');
INSERT INTO `ft_permission` VALUES ('79', 'Gamma用户', 'GAMMA', '0', '2', '3', '', 'GAMMA', 'GAMMA', '0', '2018-01-20 03:01:01', '2018-01-20 03:01:01');
INSERT INTO `ft_permission` VALUES ('80', 'Home', 'MENU_HOME_ROOT', '0', '1', '1', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Home\",\"url\":\"/home\"}', 'Home', '', '0', '2018-01-20 03:01:28', '2018-01-20 03:01:28');
INSERT INTO `ft_permission` VALUES ('81', '文件查询', 'MENU_CLIENT_FILE_LIST', '48', '1', '4', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"File List\",\"url\":\"/client/fileList\"}', 'MENU_CLIENT_FILE_LIST', 'MENU_CLIENT_FILE_LIST', '0', '2018-01-20 03:02:03', '2018-01-20 03:02:03');
INSERT INTO `ft_permission` VALUES ('82', '数据报表', 'REPORT_USER_REPORT', '47', '1', '4', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Account Report\",\"url\":\"/statDay/report\"}', 'REPORT_USER_REPORT', 'REPORT_USER_REPORT', '0', '2018-01-20 03:02:03', '2018-01-20 03:02:03');
INSERT INTO `ft_permission` VALUES ('83', '夏普测试', 'SharpTest', null, '2', '1', '{}', '测试给夏普通的版本', '测试给夏普通的版本', '0', '2018-01-22 19:57:16', '2018-01-22 19:57:16');
INSERT INTO `ft_permission` VALUES ('84', '测试专用', 'Test', null, '2', '1', '{}', '专用于内部测试的用户权限', 'for Test Team', '0', '2018-01-24 02:08:31', '2018-01-24 02:08:31');
INSERT INTO `ft_permission` VALUES ('85', '蓝牙Mac地址修复', 'MENU_BLUETOOTH_MAC_REPAIR ', '48', '1', '10', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Fix BT Mac\",\"url\":\"/client/macAddressRepairQuery\"}', '蓝牙Mac地址修复', 'Fix Bluetooth Mac', '0', '2018-01-26 17:49:20', '2018-01-26 17:49:20');
INSERT INTO `ft_permission` VALUES ('90', '系统管理', 'MENU_SYSTEM_ROOT', '0', '1', '10', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"System\",\"url\":\"\"}', '系统基本配置，极大的提示系统的灵活性，作为其他模块的基础', 'config system information', '0', '2018-04-24 18:56:19', '2018-04-24 18:56:19');
INSERT INTO `ft_permission` VALUES ('91', '系统参数', 'MENU_SYSTEM_PARAMETER ', '90', '1', '1', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Parameter\",\"url\":\"/systemParameter/query\"}', '系统参数管理', 'Manager System Parameter', '0', '2018-04-24 18:56:19', '2018-04-24 18:56:19');
INSERT INTO `ft_permission` VALUES ('92', 'emailRecord', 'MENU_EMAIL_RECORD', '90', '1', '1', '{\"group\":\"\",\"isMenu\":true,\"menuMame\":\"Email Record\",\"url\":\"/email/list\"}', '邮件发送记录', 'Email Send Record', '0', '2018-04-24 18:56:19', '2018-04-24 18:56:19');
