/*
Navicat MySQL Data Transfer

Source Server         : walle
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : walle

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-04-17 14:37:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wl_function`
-- ----------------------------
DROP TABLE IF EXISTS `wl_function`;
CREATE TABLE `wl_function` (
  `FUNC_ID` varchar(36) NOT NULL,
  `FUNC_CODE` varchar(80) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `FUNC_LEVEL` double(22,0) DEFAULT NULL,
  `FUN_SEQ` double(22,0) DEFAULT NULL,
  `VIEWNAME` text,
  `DLL_PATH` text,
  `FUNC_IMG` text,
  `FUNC_ARG` text,
  `FUNC_TYPE` varchar(10) DEFAULT NULL,
  `DISABLED` varchar(1) DEFAULT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `SYS` varchar(36) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_function
-- ----------------------------
INSERT INTO `wl_function` VALUES ('1', 'root', '系统', '0', '1', '0', null, null, null, null, null, null, null, null, 'c300ba5c-01e8-3727-b305-5dcc9ccae1ee', '2013-05-07 15:24:54', 'f0047a21-8b0a-4f7f-b498-7a4a86fd83df', '2013-06-09 09:52:12', '23', null, '1');
INSERT INTO `wl_function` VALUES ('8000', '系统管理', '系统管理', '1', '2', '5', null, null, null, null, 'ajax', null, null, null, '1', '2000-01-01 00:00:00', '85154e0d-7e8b-4bdb-ac8d-14aff4d7e93f', '2014-03-20 18:29:32', '20', null, '1');
INSERT INTO `wl_function` VALUES ('8001', '组织用户管理', '组织用户管理', '8000', '3', '0', 'walle-system/jsp/orgUser.jsp', null, null, null, 'ajax', null, null, null, '1', '2000-01-01 00:00:00', null, null, '0', null, '1');
INSERT INTO `wl_function` VALUES ('8002', '角色管理', '角色管理', '8000', '3', '1', 'walle-system/jsp/role.jsp', null, null, null, 'ajax', null, null, null, '1', '2000-01-01 00:00:00', null, null, '0', null, '1');
INSERT INTO `wl_function` VALUES ('8003', '功能管理', '功能管理', '8000', '3', '2', 'walle-system/jsp/func.jsp', null, null, null, 'ajax', null, null, null, '1', '2000-01-01 00:00:00', null, null, '0', null, '1');
INSERT INTO `wl_function` VALUES ('8008', '系统代码', '系统代码', '8000', '3', '3', 'walle-system/jsp/syscode/syscode.jsp', null, null, null, 'ajax', null, null, null, '1', '2000-01-01 00:00:00', '8bd14143-6d38-4c03-8111-d0f4fcf6c457', '2014-03-26 22:22:22', '3', null, '1');

-- ----------------------------
-- Table structure for `wl_notification`
-- ----------------------------
DROP TABLE IF EXISTS `wl_notification`;
CREATE TABLE `wl_notification` (
  `NOTIFICATION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `TYPE` varchar(128) DEFAULT NULL,
  `SUBJECT` text,
  `CONTENT` text,
  `ACTION_TARGET` text,
  `SOURCE_ID` varchar(50) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `NOTIFICATION_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_notification
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_notification_his`
-- ----------------------------
DROP TABLE IF EXISTS `wl_notification_his`;
CREATE TABLE `wl_notification_his` (
  `NOTIFICATION_HIS_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `TYPE` varchar(128) DEFAULT NULL,
  `SUBJECT` text,
  `CONTENT` text,
  `ACTION_TARGET` text,
  `SOURCE_ID` varchar(50) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `READ_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_HIS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_notification_his
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_online_user`
-- ----------------------------
DROP TABLE IF EXISTS `wl_online_user`;
CREATE TABLE `wl_online_user` (
  `ONLINE_USER_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `SESSION_ID` varchar(32) DEFAULT NULL,
  `SERVER_NAME` varchar(30) DEFAULT NULL,
  `REMOTE_ADDRESS` varchar(30) DEFAULT NULL,
  `REMOTE_USER` varchar(30) DEFAULT NULL,
  `LOGIN_TIME` datetime DEFAULT NULL,
  `LAST_REQUEST_TIME` datetime DEFAULT NULL,
  `EXPIRED` varchar(1) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ONLINE_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_online_user
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_organize`
-- ----------------------------
DROP TABLE IF EXISTS `wl_organize`;
CREATE TABLE `wl_organize` (
  `ORGANIZE_ID` varchar(36) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  `DISTRICT_ID` varchar(36) DEFAULT NULL,
  `ORGANIZE_TYPE_ID` varchar(36) DEFAULT NULL,
  `PARENT_ORGANIZE_ID` varchar(36) DEFAULT NULL,
  `MANAGE` varchar(40) DEFAULT NULL,
  `CONTACT` varchar(40) DEFAULT NULL,
  `CONTACT_TEL` varchar(15) DEFAULT NULL,
  `FAX` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `LEVE` varchar(2) DEFAULT NULL,
  `EX1` varchar(100) DEFAULT NULL,
  `EX2` varchar(100) DEFAULT NULL,
  `EX3` varchar(100) DEFAULT NULL,
  `EX4` varchar(100) DEFAULT NULL,
  `EX5` varchar(100) DEFAULT NULL,
  `EX6` varchar(100) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `TS_ID` varchar(100) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ORGANIZE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_organize
-- ----------------------------
INSERT INTO `wl_organize` VALUES ('1', 'Main', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, 'U', null, '1', '2000-01-01 00:00:00', '1', '2014-11-20 14:32:32', '3', null, '1');

-- ----------------------------
-- Table structure for `wl_portal_myportlet`
-- ----------------------------
DROP TABLE IF EXISTS `wl_portal_myportlet`;
CREATE TABLE `wl_portal_myportlet` (
  `MYPORTLET_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `PORTLET_ID` varchar(36) DEFAULT NULL,
  `WIDTH` varchar(10) DEFAULT NULL,
  `HEIGHT` varchar(10) DEFAULT NULL,
  `SEQ` double(5,0) DEFAULT NULL,
  `COLUMN_INDEX` double(5,0) DEFAULT '1',
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT '0',
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`MYPORTLET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_portal_myportlet
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_portal_portlet`
-- ----------------------------
DROP TABLE IF EXISTS `wl_portal_portlet`;
CREATE TABLE `wl_portal_portlet` (
  `PORTLET_ID` varchar(36) NOT NULL,
  `PORTLET_NAME` text,
  `TITLE` text,
  `DESCRIPTION` text,
  `SCREENSHOT` varchar(200) DEFAULT 'no_news.gif',
  `TYPE` varchar(100) DEFAULT NULL,
  `SRC` text,
  `PARAMETERS` text,
  `WIDTH` varchar(20) DEFAULT NULL,
  `HEIGHT` varchar(20) DEFAULT '400',
  `SEQ` double(5,0) DEFAULT NULL,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT '0',
  `DEFAULT_DISPLAY` varchar(10) DEFAULT '1',
  `STATUS` varchar(10) DEFAULT 'U',
  `THIRDPARTY_PORTLET` varchar(10) DEFAULT '0',
  `COLUMN_INDEX` double(5,0) DEFAULT '1',
  `ICON` varchar(250) DEFAULT 'icon-save',
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`PORTLET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_portal_portlet
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_portal_role_portlet`
-- ----------------------------
DROP TABLE IF EXISTS `wl_portal_role_portlet`;
CREATE TABLE `wl_portal_role_portlet` (
  `ROLE_PORTLET_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) DEFAULT NULL,
  `PORTLET_ID` varchar(36) DEFAULT NULL,
  `DEFAULT_DISPLAY` varchar(10) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_PORTLET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_portal_role_portlet
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_role`
-- ----------------------------
DROP TABLE IF EXISTS `wl_role`;
CREATE TABLE `wl_role` (
  `ROLE_ID` varchar(36) NOT NULL,
  `CODE` varchar(40) DEFAULT NULL,
  `NAME` varchar(40) NOT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_role
-- ----------------------------
INSERT INTO `wl_role` VALUES ('1', 'admin', '系统管理员', null, null, '1', '2000-01-01 00:00:00', null, null, '0', '1');

-- ----------------------------
-- Table structure for `wl_role_func`
-- ----------------------------
DROP TABLE IF EXISTS `wl_role_func`;
CREATE TABLE `wl_role_func` (
  `ROLE_FUNC_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `FUNC_ID` varchar(36) NOT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_role_func
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_service_log`
-- ----------------------------
DROP TABLE IF EXISTS `wl_service_log`;
CREATE TABLE `wl_service_log` (
  `SERVICE_LOG_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `SERVER_NAME` varchar(30) DEFAULT NULL,
  `REMOTE_ADDRESS` varchar(30) DEFAULT NULL,
  `REMOTE_USER` varchar(30) DEFAULT NULL,
  `SERVICE_NAME` varchar(100) DEFAULT NULL,
  `METHOD_NAME` varchar(100) DEFAULT NULL,
  `ARGS` text,
  `RESULT` text,
  `LOG_TIME` datetime DEFAULT NULL,
  `TIME_USED` double(10,0) DEFAULT NULL,
  `ACCESS_INDEX` varchar(36) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`SERVICE_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_service_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_sql_log`
-- ----------------------------
DROP TABLE IF EXISTS `wl_sql_log`;
CREATE TABLE `wl_sql_log` (
  `SQL_LOG_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `SQL_STATEMENT` text,
  `LOG_TIME` datetime DEFAULT NULL,
  `TIME_USED` double(10,0) DEFAULT NULL,
  `SERVICE_ACCESS_INDEX` varchar(36) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`SQL_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_sql_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_sys_code`
-- ----------------------------
DROP TABLE IF EXISTS `wl_sys_code`;
CREATE TABLE `wl_sys_code` (
  `CODE_ID` varchar(36) NOT NULL,
  `CODE_TYPE_ID` varchar(36) NOT NULL,
  `CODE_NAME` varchar(100) NOT NULL,
  `CODE_VALUE` varchar(100) NOT NULL,
  `ICON` varchar(200) DEFAULT NULL,
  `PARENT_CODE_VALUE` varchar(36) DEFAULT NULL,
  `CODE_DESC` varchar(200) DEFAULT NULL,
  `CODE_GROUP` varchar(36) DEFAULT NULL,
  `SORT` double(10,0) DEFAULT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `SYSTEM` varchar(10) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_sys_code
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_sys_code_type`
-- ----------------------------
DROP TABLE IF EXISTS `wl_sys_code_type`;
CREATE TABLE `wl_sys_code_type` (
  `CODE_TYPE_ID` varchar(36) NOT NULL,
  `CODE_TYPE_NAME` text NOT NULL,
  `TYPE_CODE` varchar(100) NOT NULL,
  `CODE_TYPE_DESC` varchar(200) DEFAULT NULL,
  `DATE_TYPE` varchar(36) DEFAULT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `SYSTEM` varchar(10) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`CODE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_sys_code_type
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `wl_sys_log`;
CREATE TABLE `wl_sys_log` (
  `LOG_ID` varchar(36) NOT NULL,
  `OPER_USER_ID` varchar(36) DEFAULT NULL,
  `LOG_DATE` datetime DEFAULT NULL,
  `OPER_OJECT` varchar(100) NOT NULL,
  `OPER_ACTION` varchar(100) NOT NULL,
  `MODI_RECORDS` double(10,0) DEFAULT NULL,
  `LOG_DESC` text,
  `RESULT` varchar(10) DEFAULT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_tenant`
-- ----------------------------
DROP TABLE IF EXISTS `wl_tenant`;
CREATE TABLE `wl_tenant` (
  `UUID` varchar(36) NOT NULL,
  `TENANT_NAME` varchar(100) DEFAULT NULL,
  `REC_VER` double(20,0) DEFAULT '0',
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_tenant
-- ----------------------------
INSERT INTO `wl_tenant` VALUES ('1', 'Main', '0', '1', '2000-01-01 00:00:00', null, null);

-- ----------------------------
-- Table structure for `wl_user`
-- ----------------------------
DROP TABLE IF EXISTS `wl_user`;
CREATE TABLE `wl_user` (
  `USER_ID` varchar(36) NOT NULL,
  `CODE` varchar(20) DEFAULT NULL,
  `LOGIN_NAME` varchar(100) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  `ORGANIZE_ID` varchar(36) NOT NULL,
  `REPORT_TO_USER_ID` double(6,0) DEFAULT NULL,
  `CERTIFI_TYPE_ID` double(6,0) DEFAULT NULL,
  `CERTIFI_CODE` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  `ALLOW_CHANGE_PASSWORD` varchar(1) DEFAULT NULL,
  `WORK_TYPE_ID` double(6,0) DEFAULT NULL,
  `USER_TYPE_ID` double(6,0) DEFAULT NULL,
  `CHECK_FLAG` varchar(1) DEFAULT NULL,
  `EDUCATION_TYPE_ID` double(6,0) DEFAULT NULL,
  `HOME_TEL` varchar(15) DEFAULT NULL,
  `OFFICE_TEL` varchar(15) DEFAULT NULL,
  `MOBILE_TELE` varchar(100) DEFAULT NULL,
  `ADDR_ID` varchar(120) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECT_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `MULTI_LOGIN_FLAG` double(2,0) DEFAULT NULL,
  `LAST_LOGIN_LOG_ID` double(12,0) DEFAULT NULL,
  `TRY_TIMES` double(22,0) DEFAULT NULL,
  `LOCK_FLAG` varchar(1) DEFAULT NULL,
  `IS_LOGIN` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `STATE` varchar(1) DEFAULT NULL,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `QQ` varchar(120) DEFAULT NULL,
  `ICON` varchar(120) DEFAULT NULL,
  `ICON_SMALL` varchar(200) DEFAULT NULL,
  `MSN` varchar(200) DEFAULT NULL,
  `ONLINE_STATUS` varchar(10) DEFAULT NULL,
  `UNITS_ID` varchar(36) DEFAULT NULL,
  `ISSENDMSG` varchar(10) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_user
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_user_func`
-- ----------------------------
DROP TABLE IF EXISTS `wl_user_func`;
CREATE TABLE `wl_user_func` (
  `USER_FUNC_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `FUNC_ID` varchar(36) NOT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(22,0) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`USER_FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_user_func
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_user_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `wl_user_login_log`;
CREATE TABLE `wl_user_login_log` (
  `USER_LOGIN_LOG_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `LOGIN_TIME` datetime NOT NULL,
  `LOGOUT_TIME` datetime DEFAULT NULL,
  `TRY_TIMES` double(22,0) NOT NULL,
  `USER_IP` varchar(40) DEFAULT NULL,
  `HOST_NAME` varchar(40) DEFAULT NULL,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_user_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `wl_user_role`;
CREATE TABLE `wl_user_role` (
  `ROLE_USER_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `ROLE_ID` varchar(36) DEFAULT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `REMARKS` text,
  `CREATOR` varchar(36) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFIER` varchar(36) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `REC_VER` double(10,0) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wl_user_role
-- ----------------------------
INSERT INTO `wl_user_role` VALUES ('1', '1', '1', 'A', null, '1', '2000-01-01 00:00:00', null, null, '0', '1');
