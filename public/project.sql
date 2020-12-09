/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : project

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 09/12/2020 16:17:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tp_ad
-- ----------------------------
DROP TABLE IF EXISTS `tp_ad`;
CREATE TABLE `tp_ad`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `position_id` int(11) NULL DEFAULT NULL,
  `sort` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_ad
-- ----------------------------
INSERT INTO `tp_ad` VALUES (1, '/uploads/ad/2020-09-23/1600851917_WCVTN.jpg', 1, 1);
INSERT INTO `tp_ad` VALUES (2, '/uploads/ad/2020-09-23/1600852070_QdBju.jpg', 2, 1);
INSERT INTO `tp_ad` VALUES (3, '/uploads/ad/2020-09-23/1600852080_MnXqG.jpg', 3, 1);

-- ----------------------------
-- Table structure for tp_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `tp_ad_position`;
CREATE TABLE `tp_ad_position`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '是否显示  1 显示 0 不显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告位置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_ad_position
-- ----------------------------
INSERT INTO `tp_ad_position` VALUES (1, '首页广告图1', '1920*564(px)', 1);
INSERT INTO `tp_ad_position` VALUES (2, '首页广告图2', '1920*320(px)', 1);
INSERT INTO `tp_ad_position` VALUES (3, '首页广告图3', '1920*466(px)', 1);

-- ----------------------------
-- Table structure for tp_address
-- ----------------------------
DROP TABLE IF EXISTS `tp_address`;
CREATE TABLE `tp_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号码',
  `status` tinyint(5) NOT NULL DEFAULT 0 COMMENT '是否为默认地址,0否,1是',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `create_time` int(11) NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '国家',
  `postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮编',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_address
-- ----------------------------
INSERT INTO `tp_address` VALUES (9, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '张三111111', '13838381438', 1, 1, 1599727545, '中国', '450000');
INSERT INTO `tp_address` VALUES (11, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '张三', '13838381438', 0, 1, 1599727555, '中国', '450000');
INSERT INTO `tp_address` VALUES (14, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '张三', '18503866892', 0, 1, 1601116247, '中国', '450000');
INSERT INTO `tp_address` VALUES (17, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'qwe', '17797759952', 1, 3, 1602728597, '中国', '450000');
INSERT INTO `tp_address` VALUES (18, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'qwe', '17797759954', 0, 3, 1602728655, '中国', '450000');
INSERT INTO `tp_address` VALUES (19, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'aak', '17797759951', 0, 4, 1602815538, '中国', '450000');
INSERT INTO `tp_address` VALUES (20, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'skh', '17797759952', 0, 4, 1602815610, '中国', '450000');
INSERT INTO `tp_address` VALUES (21, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'SKH', '17797759953', 0, 4, 1602815721, '中国', '450000');
INSERT INTO `tp_address` VALUES (22, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'aaa', '17797759954', 0, 4, 1602815744, '中国', '450000');
INSERT INTO `tp_address` VALUES (23, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'asd', '17797759955', 0, 4, 1602815801, '中国', '450000');
INSERT INTO `tp_address` VALUES (24, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'aaa', '17797759956', 0, 4, 1602815812, '中国', '450000');
INSERT INTO `tp_address` VALUES (25, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'aaa', '17797759957', 0, 4, 1602815868, '中国', '450000');
INSERT INTO `tp_address` VALUES (26, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'aaa', '17797759958', 1, 4, 1602816643, '中国', '450000');
INSERT INTO `tp_address` VALUES (27, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'aaa', '17797759959', 0, 4, 1602816653, '中国', '450000');
INSERT INTO `tp_address` VALUES (28, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', 'z\'x\'c', '17797759955', 0, 3, 1602821361, '中国', '450000');
INSERT INTO `tp_address` VALUES (30, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '张三', '18503866892', 0, 1, 1605326635, '中国', '450000');
INSERT INTO `tp_address` VALUES (31, '', '', '', '1asdasjkhfjkashdjkh', 'sjkkd', '17797759951', 0, 3, 1605348570, '安圭拉', '400425');
INSERT INTO `tp_address` VALUES (32, '', '', '', '啊实打实大中小大声道', 'ssf', '17797759951', 1, 7, 1605595149, '安哥拉', '112002');

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '登录IP',
  `login_time` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态   1和0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES (1, 'admin', '', '485208e25711873046c2f926e20611ad', '64e218', '', '', '::1', 1607501810, 1597289197, NULL, '', 1);
INSERT INTO `tp_admin` VALUES (2, 'root', '', '444e900fca5c7cad1c31bb6551691052', 'xDSRUH', '', '', '1', 1598264329, 1598257995, NULL, '', 1);

-- ----------------------------
-- Table structure for tp_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_log`;
CREATE TABLE `tp_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '管理员ID（0：账户不存在）',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员名字',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录IP地址',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '状态（0：失败，1：成功）',
  `type` tinyint(1) NULL DEFAULT 1 COMMENT '登录类型（0：退出，1：登录）',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_admin_log
-- ----------------------------
INSERT INTO `tp_admin_log` VALUES (1, 0, '', '127.0.0.1', NULL, '【账号登录】密码不正确，请重新输入！', 0, 1, '2020-08-12 16:16:15');
INSERT INTO `tp_admin_log` VALUES (2, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-12 16:16:33');
INSERT INTO `tp_admin_log` VALUES (3, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-12 18:09:53');
INSERT INTO `tp_admin_log` VALUES (4, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-12 18:12:18');
INSERT INTO `tp_admin_log` VALUES (5, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-13 10:21:32');
INSERT INTO `tp_admin_log` VALUES (6, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-13 10:24:26');
INSERT INTO `tp_admin_log` VALUES (7, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-13 10:41:09');
INSERT INTO `tp_admin_log` VALUES (8, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-13 10:42:10');
INSERT INTO `tp_admin_log` VALUES (9, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-13 11:26:14');
INSERT INTO `tp_admin_log` VALUES (10, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-13 11:26:37');
INSERT INTO `tp_admin_log` VALUES (11, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-13 17:09:07');
INSERT INTO `tp_admin_log` VALUES (12, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-14 13:19:15');
INSERT INTO `tp_admin_log` VALUES (13, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-14 13:55:15');
INSERT INTO `tp_admin_log` VALUES (14, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-14 16:42:54');
INSERT INTO `tp_admin_log` VALUES (15, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-15 10:15:04');
INSERT INTO `tp_admin_log` VALUES (16, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-15 13:48:27');
INSERT INTO `tp_admin_log` VALUES (17, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-15 14:45:16');
INSERT INTO `tp_admin_log` VALUES (18, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-15 14:55:33');
INSERT INTO `tp_admin_log` VALUES (19, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-20 10:11:03');
INSERT INTO `tp_admin_log` VALUES (20, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-20 18:33:07');
INSERT INTO `tp_admin_log` VALUES (21, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-20 18:34:26');
INSERT INTO `tp_admin_log` VALUES (22, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-20 19:03:57');
INSERT INTO `tp_admin_log` VALUES (23, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-20 19:05:52');
INSERT INTO `tp_admin_log` VALUES (24, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-20 19:10:06');
INSERT INTO `tp_admin_log` VALUES (25, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 10:26:19');
INSERT INTO `tp_admin_log` VALUES (26, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:10:51');
INSERT INTO `tp_admin_log` VALUES (27, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:11:20');
INSERT INTO `tp_admin_log` VALUES (28, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:12:05');
INSERT INTO `tp_admin_log` VALUES (29, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:14:21');
INSERT INTO `tp_admin_log` VALUES (30, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:14:38');
INSERT INTO `tp_admin_log` VALUES (31, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:16:28');
INSERT INTO `tp_admin_log` VALUES (32, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:17:36');
INSERT INTO `tp_admin_log` VALUES (33, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:18:26');
INSERT INTO `tp_admin_log` VALUES (34, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:19:35');
INSERT INTO `tp_admin_log` VALUES (35, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:20:11');
INSERT INTO `tp_admin_log` VALUES (36, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:21:09');
INSERT INTO `tp_admin_log` VALUES (37, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:37:25');
INSERT INTO `tp_admin_log` VALUES (38, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:43:47');
INSERT INTO `tp_admin_log` VALUES (39, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:45:51');
INSERT INTO `tp_admin_log` VALUES (40, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:53:23');
INSERT INTO `tp_admin_log` VALUES (41, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 17:59:19');
INSERT INTO `tp_admin_log` VALUES (42, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 18:07:05');
INSERT INTO `tp_admin_log` VALUES (43, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 18:27:10');
INSERT INTO `tp_admin_log` VALUES (44, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-21 18:28:29');
INSERT INTO `tp_admin_log` VALUES (45, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 10:32:59');
INSERT INTO `tp_admin_log` VALUES (46, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 10:33:27');
INSERT INTO `tp_admin_log` VALUES (47, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 13:28:27');
INSERT INTO `tp_admin_log` VALUES (48, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 13:31:26');
INSERT INTO `tp_admin_log` VALUES (49, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 13:32:35');
INSERT INTO `tp_admin_log` VALUES (50, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 14:33:13');
INSERT INTO `tp_admin_log` VALUES (51, 0, '', '127.0.0.1', NULL, '【账号登录】账户不存在，请重新输入！', 0, 1, '2020-08-24 16:51:21');
INSERT INTO `tp_admin_log` VALUES (52, 2, 'root1', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 16:51:36');
INSERT INTO `tp_admin_log` VALUES (53, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 16:52:06');
INSERT INTO `tp_admin_log` VALUES (54, 0, '', '127.0.0.1', NULL, '【账号登录】密码不正确，请重新输入！', 0, 1, '2020-08-24 18:17:15');
INSERT INTO `tp_admin_log` VALUES (55, 2, 'root', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 18:17:23');
INSERT INTO `tp_admin_log` VALUES (56, 2, 'root', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 18:18:49');
INSERT INTO `tp_admin_log` VALUES (57, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-24 18:19:10');
INSERT INTO `tp_admin_log` VALUES (58, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-25 11:00:46');
INSERT INTO `tp_admin_log` VALUES (59, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-26 10:32:14');
INSERT INTO `tp_admin_log` VALUES (60, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-28 13:25:17');
INSERT INTO `tp_admin_log` VALUES (61, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-28 14:39:42');
INSERT INTO `tp_admin_log` VALUES (62, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-28 18:58:31');
INSERT INTO `tp_admin_log` VALUES (63, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-28 18:59:38');
INSERT INTO `tp_admin_log` VALUES (64, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-29 13:25:52');
INSERT INTO `tp_admin_log` VALUES (65, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-29 13:48:07');
INSERT INTO `tp_admin_log` VALUES (66, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-08-29 13:51:38');
INSERT INTO `tp_admin_log` VALUES (67, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-02 10:33:34');
INSERT INTO `tp_admin_log` VALUES (68, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-02 11:10:24');
INSERT INTO `tp_admin_log` VALUES (69, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-02 11:12:46');
INSERT INTO `tp_admin_log` VALUES (70, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-02 11:23:41');
INSERT INTO `tp_admin_log` VALUES (71, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-10 17:24:19');
INSERT INTO `tp_admin_log` VALUES (72, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-12 10:42:22');
INSERT INTO `tp_admin_log` VALUES (73, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-12 14:33:43');
INSERT INTO `tp_admin_log` VALUES (74, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-12 14:35:36');
INSERT INTO `tp_admin_log` VALUES (75, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-15 10:13:50');
INSERT INTO `tp_admin_log` VALUES (76, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-16 14:37:47');
INSERT INTO `tp_admin_log` VALUES (77, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-17 11:08:00');
INSERT INTO `tp_admin_log` VALUES (78, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-17 13:48:36');
INSERT INTO `tp_admin_log` VALUES (79, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-17 14:57:58');
INSERT INTO `tp_admin_log` VALUES (80, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-21 16:48:34');
INSERT INTO `tp_admin_log` VALUES (81, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-22 10:25:17');
INSERT INTO `tp_admin_log` VALUES (82, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-23 10:12:05');
INSERT INTO `tp_admin_log` VALUES (83, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-24 10:37:00');
INSERT INTO `tp_admin_log` VALUES (84, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-24 16:32:14');
INSERT INTO `tp_admin_log` VALUES (85, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-25 10:03:53');
INSERT INTO `tp_admin_log` VALUES (86, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-09-26 10:28:21');
INSERT INTO `tp_admin_log` VALUES (87, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-08 11:48:56');
INSERT INTO `tp_admin_log` VALUES (88, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-09 09:58:57');
INSERT INTO `tp_admin_log` VALUES (89, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-09 14:16:25');
INSERT INTO `tp_admin_log` VALUES (90, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-09 14:17:09');
INSERT INTO `tp_admin_log` VALUES (91, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-09 15:51:25');
INSERT INTO `tp_admin_log` VALUES (92, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-10 10:15:18');
INSERT INTO `tp_admin_log` VALUES (93, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-12 10:46:27');
INSERT INTO `tp_admin_log` VALUES (94, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-13 13:59:35');
INSERT INTO `tp_admin_log` VALUES (95, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-14 10:29:36');
INSERT INTO `tp_admin_log` VALUES (96, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-15 10:10:11');
INSERT INTO `tp_admin_log` VALUES (97, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-17 10:35:49');
INSERT INTO `tp_admin_log` VALUES (98, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-19 15:27:38');
INSERT INTO `tp_admin_log` VALUES (99, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-21 13:44:34');
INSERT INTO `tp_admin_log` VALUES (100, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-22 16:34:32');
INSERT INTO `tp_admin_log` VALUES (101, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-23 10:15:04');
INSERT INTO `tp_admin_log` VALUES (102, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-26 14:07:26');
INSERT INTO `tp_admin_log` VALUES (103, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-26 18:45:33');
INSERT INTO `tp_admin_log` VALUES (104, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-27 10:27:57');
INSERT INTO `tp_admin_log` VALUES (105, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-28 11:07:58');
INSERT INTO `tp_admin_log` VALUES (106, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-29 13:43:22');
INSERT INTO `tp_admin_log` VALUES (107, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-10-30 14:45:26');
INSERT INTO `tp_admin_log` VALUES (108, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-02 17:42:57');
INSERT INTO `tp_admin_log` VALUES (109, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-03 10:49:23');
INSERT INTO `tp_admin_log` VALUES (110, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-04 10:21:16');
INSERT INTO `tp_admin_log` VALUES (111, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-05 10:42:03');
INSERT INTO `tp_admin_log` VALUES (112, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-09 10:56:31');
INSERT INTO `tp_admin_log` VALUES (113, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-11 13:25:51');
INSERT INTO `tp_admin_log` VALUES (114, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-12 15:39:03');
INSERT INTO `tp_admin_log` VALUES (115, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-13 10:25:31');
INSERT INTO `tp_admin_log` VALUES (116, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-14 10:40:25');
INSERT INTO `tp_admin_log` VALUES (117, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-16 10:56:07');
INSERT INTO `tp_admin_log` VALUES (118, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-17 10:42:53');
INSERT INTO `tp_admin_log` VALUES (119, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-20 11:23:39');
INSERT INTO `tp_admin_log` VALUES (120, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-23 10:49:40');
INSERT INTO `tp_admin_log` VALUES (121, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-25 15:41:40');
INSERT INTO `tp_admin_log` VALUES (122, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-25 16:33:24');
INSERT INTO `tp_admin_log` VALUES (123, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-11-26 10:36:36');
INSERT INTO `tp_admin_log` VALUES (124, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-12-02 15:33:11');
INSERT INTO `tp_admin_log` VALUES (125, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-12-04 11:44:02');
INSERT INTO `tp_admin_log` VALUES (126, 1, 'admin', '127.0.0.1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-12-04 18:25:18');
INSERT INTO `tp_admin_log` VALUES (127, 1, 'admin', '::1', NULL, '【账号登录】登录成功，正在进入系统！', 1, 1, '2020-12-09 16:16:50');

-- ----------------------------
-- Table structure for tp_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `sort` tinyint(4) NULL DEFAULT NULL,
  `english_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `english_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `time` int(11) NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES (1, 1, '国际贸易', '注册协议', '<p>注册协议1</p>', 1, 'international trade', '<p>Registration Agreement</p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (2, 2, '公司资质', '公司资质', '公司资质', 1, 'Company qualification', 'Company qualification', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (3, 2, '产品介绍', '产品介绍', '<p>产品介绍</p>', 2, 'product description', '<p>product description</p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (4, 2, '发展规划', '发展规划', '发展规划', 3, 'development plan', 'development plan', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (5, 2, '联系我们', '联系我们', '联系我们', 4, 'contact us', 'contact us', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (6, 3, '行业动态', NULL, '<p>行业动态</p>', NULL, 'Industry News', '<p>Industry News</p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (7, 3, '行业动态', NULL, '<p>行业动态</p>', NULL, 'Industry News', '<p>Industry News</p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (8, 3, '行业动态', '', '<p style=\"text-align: center;\">行业动态</p><p><img src=\"/uploads/ueditor/image/20201017/1602915980.jpg\" title=\"1602915980.jpg\" alt=\"timg.jpg\"/></p>', NULL, 'Industry News', '<p style=\"text-align: center;\">Industry News</p><p><img src=\"/uploads/ueditor/image/20201017/1602915995.jpg\" title=\"1602915995.jpg\" alt=\"timg.jpg\"/></p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (9, 3, '行业动态', '', '<p>行业动态</p>', NULL, 'Industry News', '<p>Industry News</p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (10, 4, '公司动态', '', '<p>公司动态</p>', NULL, 'Company dynamics', '<p>Company dynamics</p><p><br/></p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (11, 4, '公司动态', '', '<p>公司动态</p>', NULL, 'Company dynamics', '<p>Company dynamics</p><p><br/></p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (12, 4, '公司动态', '', '<p>公司动态</p>', NULL, 'Company dynamics', '<p>Company dynamics</p><p><br/></p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (13, 4, '公司动态', '', '<p>公司动态</p>', NULL, 'Company dynamics', '<p>Company dynamics</p><p><br/></p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (14, 3, '行业动态', '', '<p>行业动态</p>', NULL, 'Industry News', '<p>Industry News</p>', 1602316084, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (15, 3, '行业动态', NULL, '<p>行业动态</p>', NULL, 'Industry News', '<p>Industry News</p>', 1602323951, '/uploads/article/2020-10-10/1602323979_onTQu.png');
INSERT INTO `tp_article` VALUES (16, 3, '公司动态', NULL, '<p>公司动态</p>', NULL, 'Company dynamics', '<p>Company dynamics</p><p><br/></p>', 1602323984, '/uploads/article/2020-10-10/1602324432_lWYzp.jpg');

-- ----------------------------
-- Table structure for tp_article_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_article_category`;
CREATE TABLE `tp_article_category`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_article_category
-- ----------------------------
INSERT INTO `tp_article_category` VALUES (1, '注册协议', 'Registration Agreement');
INSERT INTO `tp_article_category` VALUES (2, '关于我们', 'About Us');
INSERT INTO `tp_article_category` VALUES (3, '行业动态', 'Industry News');
INSERT INTO `tp_article_category` VALUES (4, '公司动态', 'Company dynamics');

-- ----------------------------
-- Table structure for tp_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group`;
CREATE TABLE `tp_auth_group`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态：为1正常，为0禁用',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户组拥有的规则id， 多个规则\",\"隔开',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_auth_group
-- ----------------------------
INSERT INTO `tp_auth_group` VALUES (1, '超级管理员', 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,58,23,24,25,26,27,28,29,30,31,32,33,34,55,35,37,39,40,41,42,45,46,47,48,49,50,51,52,53,54,56,57,59,60,61,62,63', '超级管理员');
INSERT INTO `tp_auth_group` VALUES (2, '系统设置', 1, '1,2,3,4,5,6,7,8,9,10,11,12', '系统设置');

-- ----------------------------
-- Table structure for tp_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group_access`;
CREATE TABLE `tp_auth_group_access`  (
  `uid` mediumint(8) UNSIGNED NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) UNSIGNED NOT NULL COMMENT '用户组id',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组关联表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tp_auth_group_access
-- ----------------------------
INSERT INTO `tp_auth_group_access` VALUES (1, 1);
INSERT INTO `tp_auth_group_access` VALUES (2, 2);

-- ----------------------------
-- Table structure for tp_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_rule`;
CREATE TABLE `tp_auth_rule`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` char(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态：为1正常，为0禁用',
  `condition` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  `type` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规则表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tp_auth_rule
-- ----------------------------
INSERT INTO `tp_auth_rule` VALUES (1, 'index.list', '首页', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (2, 'system.list', '系统管理', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (3, 'menu.list', '菜单列表', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (4, 'menu.add', '添加菜单', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (5, 'menu.edit', '编辑菜单', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (6, 'menu.delete', '删除菜单', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (7, 'permission.list', '权限列表', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (8, 'permission.add', '添加权限', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (9, 'permission.edit', '编辑权限', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (10, 'permission.delete', '删除权限', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (11, 'role.list', '角色列表', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (12, 'role.add', '添加角色', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (13, 'role.edit', '编辑角色', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (14, 'role.delete', '删除角色', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (15, 'admin.list', '管理员列表', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (16, 'admin.add', '添加管理员', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (17, 'admin.edit', '编辑管理员', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (18, 'admin.delete', '删除管理员', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (19, 'user.list', '用户列表', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (20, 'user.add', '添加用户', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (21, 'user.edit', '编辑用户', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (22, 'user.delete', '删除用户', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (23, 'goods.list', '浏览商品', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (24, 'goods.add', '添加商品', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (25, 'goods.edit', '编辑商品', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (26, 'goods.delete', '删除商品', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (27, 'category.list', '浏览商品分类', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (28, 'category.add', '添加商品分类', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (29, 'category.edit', '编辑商品分类', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (30, 'category.delete', '删除商品分类', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (31, 'article.list', '文章浏览', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (32, 'article.add', '文章添加', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (33, 'article.edit', '文章编辑', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (34, 'article.delete', '文章删除', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (35, 'guang.list', '广告浏览', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (36, 'guang.add', '广告添加', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (37, 'guang.edit', '广告编辑', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (38, 'guang.delete', '广告删除', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (39, 'scope.list', '业务浏览', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (40, 'scope.edit', '编辑业务范围', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (41, 'mode.list', '浏览模式', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (42, 'mode.edit', '编辑赚钱模式', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (43, 'advantage.list', '浏览企业优势', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (44, 'advantage.edit', '编辑企业优势', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (45, 'customs.list', '浏览海关数据', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (46, 'customs.add', '添加海关数据', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (47, 'customs.edit', '编辑海关数据', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (48, 'customs.delete', '删除海关数据', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (49, 'county.list', '浏览国家', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (50, 'county.add', '添加国家', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (51, 'county.edit', '编辑国家', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (52, 'county.delete', '删除国家', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (53, 'article_category.list', '文章分类浏览', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (54, 'article_category.edit', '文章分类编辑', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (55, 'article.sys_article', '浏览系统文章', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (56, 'order.list', '订单浏览', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (57, 'order.edit', '订单操作', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (58, 'user.lock', '禁用账号', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (59, 'release.list', '浏览找货需求', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (60, 'release.edit', '需求操作', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (61, 'commit.list', '评论列表', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (62, 'commit.deal', '处理评论', 1, '', 1);
INSERT INTO `tp_auth_rule` VALUES (63, 'commit.delete', '删除评论', 1, '', 1);

-- ----------------------------
-- Table structure for tp_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_category`;
CREATE TABLE `tp_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级分类id',
  `english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移动端名称',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_category
-- ----------------------------
INSERT INTO `tp_category` VALUES (1, '家居', 0, 'Home', 1);
INSERT INTO `tp_category` VALUES (2, '家具', 1, 'Furniture', 1);
INSERT INTO `tp_category` VALUES (4, '电脑桌', 2, 'Computer Desk', 2);
INSERT INTO `tp_category` VALUES (5, '电器', 0, 'Electrical appliances', 2);
INSERT INTO `tp_category` VALUES (6, '电视', 5, 'TV', 1);
INSERT INTO `tp_category` VALUES (7, '超薄电视', 6, 'Slim TV', 1);
INSERT INTO `tp_category` VALUES (8, '服装', 0, 'clothing', 3);
INSERT INTO `tp_category` VALUES (9, '男装', 8, 'Men\'s', 1);
INSERT INTO `tp_category` VALUES (10, '上衣', 9, 'Coat', 2);
INSERT INTO `tp_category` VALUES (11, '上衣', 9, 'Coat', 3);
INSERT INTO `tp_category` VALUES (12, '曲面', 6, 'Curved surface', 2);

-- ----------------------------
-- Table structure for tp_collect
-- ----------------------------
DROP TABLE IF EXISTS `tp_collect`;
CREATE TABLE `tp_collect`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `goods_id` int(10) NOT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收藏列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_collect
-- ----------------------------
INSERT INTO `tp_collect` VALUES (1, 1, 1);
INSERT INTO `tp_collect` VALUES (3, 1, 2);
INSERT INTO `tp_collect` VALUES (4, 1, 3);
INSERT INTO `tp_collect` VALUES (7, 5, 40);
INSERT INTO `tp_collect` VALUES (8, 5, 6);
INSERT INTO `tp_collect` VALUES (10, 5, 9);
INSERT INTO `tp_collect` VALUES (11, 5, 10);
INSERT INTO `tp_collect` VALUES (13, 5, 12);
INSERT INTO `tp_collect` VALUES (14, 5, 13);
INSERT INTO `tp_collect` VALUES (17, 5, 7);
INSERT INTO `tp_collect` VALUES (18, 5, 17);
INSERT INTO `tp_collect` VALUES (19, 5, 18);

-- ----------------------------
-- Table structure for tp_commit
-- ----------------------------
DROP TABLE IF EXISTS `tp_commit`;
CREATE TABLE `tp_commit`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `star` int(255) NULL DEFAULT NULL,
  `time` int(11) NULL DEFAULT NULL,
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '1 未审核  2 通过  3 未通过',
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_commit
-- ----------------------------
INSERT INTO `tp_commit` VALUES (9, 'qweqweqweasdasdfasd了hi烈火剑法更好地分公司DFfwegfsdgdfhjfgjmgu', '/uploads/upload_image/2020-11-12/1605172898oNUEB.gif,/uploads/upload_image/2020-11-12/1605172910opnmE.gif', 4, 1605172921, 1, 3);
INSERT INTO `tp_commit` VALUES (12, 'aasd', '/uploads/upload_image/2020-11-12/1605173018VBmAW.jpg', 5, 1605173021, 3, 3);
INSERT INTO `tp_commit` VALUES (8, 'qweqweqweasdasdfasd了hi烈火剑法更好地分公司DFfwegfsdgdfhjfgjmgu', '/uploads/upload_image/2020-11-12/1605172898oNUEB.gif,/uploads/upload_image/2020-11-12/1605172910opnmE.gif', 4, 1605172915, 1, 3);
INSERT INTO `tp_commit` VALUES (11, 'hjkljjkjkjkjaskdjaskjlhfjkahjksdasdasfa', '/uploads/upload_image/2020-11-12/1605172999hRoHB.gif', 4, 1605173002, 1, 3);
INSERT INTO `tp_commit` VALUES (4, '123', '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 3, 1605168318, 1, 1);
INSERT INTO `tp_commit` VALUES (5, '123', '/uploads/upload_image/2020-11-12/1605172022iPGvB.png', 5, 1605172025, 1, 3);
INSERT INTO `tp_commit` VALUES (6, '阿诗丹顿多多多多军扩军做扩绿寻错军绿卡所军多扩绿军绿', '/uploads/upload_image/2020-11-12/1605172197Gmbsz.gif', 4, 1605172200, 1, 3);
INSERT INTO `tp_commit` VALUES (7, '阿诗丹顿多多多多军扩军做扩绿寻错军绿卡所军多扩绿军绿', '/uploads/upload_image/2020-11-12/1605172197Gmbsz.gif', 4, 1605172243, 2, 3);
INSERT INTO `tp_commit` VALUES (10, 'qweqweqweasdasdfasd了hi烈火剑法更好地分公司DFfwegfsdgdfhjfgjmgu', '/uploads/upload_image/2020-11-12/1605172898oNUEB.gif,/uploads/upload_image/2020-11-12/1605172910opnmE.gif', 4, 1605172928, 1, 3);
INSERT INTO `tp_commit` VALUES (13, 'qqqqq', '/uploads/upload_image/2020-11-12/1605173059hAUfp.gif', 2, 1605173062, 2, 3);
INSERT INTO `tp_commit` VALUES (14, 'qdasdasd', '/uploads/upload_image/2020-11-12/1605173130YrQVv.gif', 1, 1605173132, 2, 3);
INSERT INTO `tp_commit` VALUES (15, 'aa', '/uploads/upload_image/2020-11-12/1605173158xCFXo.jpg', 2, 1605173161, 2, 3);
INSERT INTO `tp_commit` VALUES (16, '阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的阿斯顿发大厦的', '/uploads/upload_image/2020-11-26/1606358195ktixf.jpg', 4, 1606358199, 2, 3);
INSERT INTO `tp_commit` VALUES (17, 'SADASDASDFASFAS', '/uploads/upload_image/2020-11-26/1606358420cXHLW.jpg,/uploads/upload_image/2020-11-26/1606358422Kgron.jpg,/uploads/upload_image/2020-11-26/1606358424WPkvL.jpg_64x64', 5, 1606358428, 2, 3);

-- ----------------------------
-- Table structure for tp_company
-- ----------------------------
DROP TABLE IF EXISTS `tp_company`;
CREATE TABLE `tp_company`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `english_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `english_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务范围' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_company
-- ----------------------------
INSERT INTO `tp_company` VALUES (1, '国际贸易', 'international trade', '国际贸易', 'international trade', '/uploads/scope/2020-09-24/1600937761_dYOMj.png', 1);
INSERT INTO `tp_company` VALUES (2, '国际贸易', 'international trade', '国际贸易', 'international trade', '/uploads/scope/2020-09-24/1600937803_ZYbWO.png', 1);
INSERT INTO `tp_company` VALUES (3, '国际贸易', 'international trade', '国际贸易', 'international trade', '/uploads/scope/2020-09-24/1600937816_sVutj.png', 1);
INSERT INTO `tp_company` VALUES (4, '国际贸易', 'international trade', '国际贸易', 'international trade', '/uploads/scope/2020-09-24/1600937824_vKCAd.png', 1);
INSERT INTO `tp_company` VALUES (5, '选品', 'selection', '选品', 'selection', '/uploads/scope/2020-09-24/1600939433_xvYqr.png', 2);
INSERT INTO `tp_company` VALUES (6, '下单', 'Place an order', '下单', 'Place an order', '/uploads/scope/2020-09-24/1600939458_RtCwp.png', 2);
INSERT INTO `tp_company` VALUES (7, '仓库', 'warehouse', '仓库', 'warehouse', '/uploads/scope/2020-09-24/1600939476_wQdGg.png', 2);
INSERT INTO `tp_company` VALUES (8, '发货', 'Ship', '发货', 'Ship', '/uploads/scope/2020-09-24/1600939490_SitnI.png', 2);
INSERT INTO `tp_company` VALUES (9, '国际贸易', 'international trade', '国际贸易', 'international trade', '/uploads/scope/2020-09-24/1600939997_RtZQg.png', 3);
INSERT INTO `tp_company` VALUES (10, '国际贸易	', 'international trade', '国际贸易', 'international trade', '/uploads/scope/2020-09-24/1600940002_nrILM.png', 3);
INSERT INTO `tp_company` VALUES (11, '国际贸易	', 'international trade', '国际贸易', 'international trade', '/uploads/scope/2020-09-24/1600940008_LjMuw.png', 3);

-- ----------------------------
-- Table structure for tp_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_config`;
CREATE TABLE `tp_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT 1 COMMENT '1:文本框，2:textarea，3:图片，4:单选，5:多选框6：单选；7：上传文件',
  `sort` tinyint(4) NULL DEFAULT NULL COMMENT '排序',
  `show` tinyint(4) NULL DEFAULT 1 COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_config
-- ----------------------------
INSERT INTO `tp_config` VALUES (1, 'site_title', '网站标题', '河南志尔贝进出口贸易有限公司', 1, 1, 1);
INSERT INTO `tp_config` VALUES (2, 'english_title', '英文标题', '河南志尔贝进出口贸易有限公司', 1, 2, 1);
INSERT INTO `tp_config` VALUES (3, 'site_logo', '网站Logo', '/uploads/sys/2020-09-23/1600856614_JFbEI.350c08d', 3, 3, 1);
INSERT INTO `tp_config` VALUES (4, 'beian', '底部备案号', '©2020 Baidu (京)-经营性-2017-0020 京公网安备11000002000001号 京ICP证030173号', 1, 4, 1);
INSERT INTO `tp_config` VALUES (5, 'english_beian', '英文备案号', '©2020 Baidu (京)-Operational-2017-0020 Beijing Public Network Security No. 11000002000001 Beijing ICP Certificate No. 030173', 1, 5, 1);
INSERT INTO `tp_config` VALUES (6, 'address', '地址', '河南省郑州市自贸试验区郑州片区(郑东)商都路北、站南 路西2幢1单元1306', 1, 6, 1);
INSERT INTO `tp_config` VALUES (7, 'english_address', '英文地址', '1306, Unit 1, Building 2, Shangdu Road North and Zhannan Road West, Zhengzhou Area (Zhengdong), Pilot Free Trade Zone, Zhengzhou City, Henan Province', 1, 7, 1);
INSERT INTO `tp_config` VALUES (8, 'phone', '手机', '17104411111', 1, 8, 1);
INSERT INTO `tp_config` VALUES (9, 'landline', '座机', '0371-63345455', 1, 9, 1);
INSERT INTO `tp_config` VALUES (10, 'fax', '传真', '0371-63345455', 1, 10, 1);
INSERT INTO `tp_config` VALUES (11, 'email', '邮箱', '460785087@hnzebjckmy.com', 1, 11, 1);
INSERT INTO `tp_config` VALUES (12, 'business_Scope', '业务范围', '河南志尔贝进出口贸易有限公司成立于2017年03月06日，公司成立之初，背靠国家一带一路政策立足于巴基斯坦，基于中巴形式的和谐政策，在董事长马志方的带领下，公司凭借过硬的品质和完善的管理，市场销量节节攀升。\r\n公司总部设于河南省郑州市郑东新区建正东方中心C座1305.1306室，开设了义乌办事处，深圳办事处外加驻巴基斯坦首都伊斯兰堡分公司及仓库，卡拉奇仓库。', 2, 12, 1);
INSERT INTO `tp_config` VALUES (13, 'english_business_Scope', '英文业务范围', 'Henan Zhierbei Import and Export Trade Co., Ltd. was established on March 6, 2017. At the beginning of the company, it was based on the country\'s Belt and Road policy and was based in Pakistan. Based on the harmonious policy in the form of China and Pakis', 2, 13, 1);
INSERT INTO `tp_config` VALUES (14, 'main_business', '主营业务', '河南志尔贝进出口贸易有限公司成立于2017年03月06日，公司成立之初，背靠国家一带一路政策立足于巴基斯坦，基于中巴形式的和谐政策，在董事长马志方的带领下，公司凭借过硬的品质和完善的管理，市场销量节节攀升。\r\n公司总部设于河南省郑州市郑东新区建正东方中心C座1305.1306室，开设了义乌办事处，深圳办事处外加驻巴基斯坦首都伊斯兰堡分公司及仓库，卡拉奇仓库。', 2, 14, 1);
INSERT INTO `tp_config` VALUES (15, 'english_main_business', '英文主营业务', 'Henan Zhierbei Import and Export Trade Co., Ltd. was established on March 6, 2017. At the beginning of the company, it was based on the country\'s Belt and Road policy and was based in Pakistan. Based on the harmonious policy in the form of China and Pakis', 2, 15, 1);
INSERT INTO `tp_config` VALUES (16, 'advantage', '企业优势', '河南志尔贝进出口贸易有限公司成立于2017年03月06日，公司成立之初，背靠国家一带一路政策立足于巴基斯坦，基于中巴形式的和谐政策，在董事长马志方的带领下，公司凭借过硬的品质和完善的管理，市场销量节节攀升。\r\n公司总部设于河南省郑州市郑东新区建正东方中心C座1305.1306室，开设了义乌办事处，深圳办事处外加驻巴基斯坦首都伊斯兰堡分公司及仓库，卡拉奇仓库。', 2, 16, 1);
INSERT INTO `tp_config` VALUES (17, 'english_advantage', '英文企业优势', 'Henan Zhierbei Import and Export Trade Co., Ltd. was established on March 6, 2017. At the beginning of the company, it was based on the country\'s Belt and Road policy and was based in Pakistan. Based on the harmonious policy in the form of China and Pakis', 2, 17, 1);
INSERT INTO `tp_config` VALUES (18, 'popular_searches', '热门搜索', '电器,美食,家具,数码产品', 1, NULL, 1);
INSERT INTO `tp_config` VALUES (19, 'english_searches', '英文热搜', 'Electrical appliances,Food,Furniture,Digital product', 1, NULL, 1);
INSERT INTO `tp_config` VALUES (20, 'blog_url', '博客链接', 'http://www.baidu.com', 1, NULL, 1);
INSERT INTO `tp_config` VALUES (21, 'Instagram_url', 'Instagram链接', 'http://www.baidu.com', 1, NULL, 1);
INSERT INTO `tp_config` VALUES (22, 'Facebook_url', 'Facebook链接', 'http://www.baidu.com', 1, NULL, 1);
INSERT INTO `tp_config` VALUES (23, 'YouTube_url', 'YouTube链接', 'http://www.baidu.com', 1, NULL, 1);
INSERT INTO `tp_config` VALUES (24, 'Pinterest_url', 'Pinterest链接', 'http://www.baidu.com', 1, NULL, 1);

-- ----------------------------
-- Table structure for tp_county
-- ----------------------------
DROP TABLE IF EXISTS `tp_county`;
CREATE TABLE `tp_county`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '国家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_county
-- ----------------------------
INSERT INTO `tp_county` VALUES (1, '巴基斯坦', 'Pakistan', '/uploads/county/2020-10-09/1602225469_XKdJk.png');
INSERT INTO `tp_county` VALUES (2, '美国', 'America', '/uploads/county/2020-10-09/1602229950_tvusj.png');
INSERT INTO `tp_county` VALUES (3, '法国', 'France', '/uploads/county/2020-10-09/1602229998_Jnwmj.png');
INSERT INTO `tp_county` VALUES (4, '俄罗斯', 'Russian', '/uploads/county/2020-10-09/1602230004_icwWn.png');

-- ----------------------------
-- Table structure for tp_customs
-- ----------------------------
DROP TABLE IF EXISTS `tp_customs`;
CREATE TABLE `tp_customs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文产品名称',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重量',
  `price` decimal(10, 0) NULL DEFAULT 0 COMMENT '单价',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `entype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文类型',
  `c_id` int(11) NULL DEFAULT NULL COMMENT '国家id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '海关数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_customs
-- ----------------------------
INSERT INTO `tp_customs` VALUES (1, '个人生活小家电11', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (2, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 2);
INSERT INTO `tp_customs` VALUES (3, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (4, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (5, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (6, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (7, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (8, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (9, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (10, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (11, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (12, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (13, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (14, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (15, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);
INSERT INTO `tp_customs` VALUES (16, '个人生活小家电', 'Personal life small appliances', 6000, '3t', 3000, '2020-08-07', '进出口数据', 'Import and export data', 1);

-- ----------------------------
-- Table structure for tp_error_logs
-- ----------------------------
DROP TABLE IF EXISTS `tp_error_logs`;
CREATE TABLE `tp_error_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_find_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_find_goods`;
CREATE TABLE `tp_find_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` tinyint(4) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sell_price` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '1 发布, 2 有货源 3 无货源 4 已购买',
  `time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_find_goods
-- ----------------------------
INSERT INTO `tp_find_goods` VALUES (1, '中国', '品牌', 7, '电脑桌', 'CM LY-4139', '500-600', '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 50000.00, 2, 1602574000);
INSERT INTO `tp_find_goods` VALUES (2, '中国', '品牌', 7, '电脑桌', 'CM LY-4139', '500-600', '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 0.00, 1, 1602574000);
INSERT INTO `tp_find_goods` VALUES (3, '中国', '品牌', 7, '电脑桌', 'CM LY-4139', '500-600', '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 0.00, 1, 1602574000);
INSERT INTO `tp_find_goods` VALUES (4, '中国', '品牌', 7, '电脑桌', 'CM LY-4139', '500-600', '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 0.00, 1, 1602574000);
INSERT INTO `tp_find_goods` VALUES (5, '中国', '品牌', 7, '电脑桌', 'CM LY-4139', '500-600', '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 700.00, 2, 1602574000);
INSERT INTO `tp_find_goods` VALUES (6, '中国', '品牌', 7, '电脑桌', 'CM LY-4139', '500-600', '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 0.00, 3, 1602574000);
INSERT INTO `tp_find_goods` VALUES (7, '中国', '品牌', 7, '电脑桌', 'CM LY-4139', '500-600', '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 700.00, 2, 1602574000);
INSERT INTO `tp_find_goods` VALUES (8, '123', '123', 10, '1231', '123123', '11-12', '123123', '/uploads/find_goods/2020-10-16/1602843040_avFPI.jpg', 0.00, 1, 1602843043);
INSERT INTO `tp_find_goods` VALUES (9, 'asd', 'asd', 12, 'asdasd', 'asdasd', '23-11', 'qweawsd', '/uploads/find_goods/2020-10-16/1602843114_EeIdO.jpg', 0.00, 1, 1602843116);

-- ----------------------------
-- Table structure for tp_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods`;
CREATE TABLE `tp_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL COMMENT '分类id',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '缩略图',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `sort` int(11) UNSIGNED NOT NULL COMMENT '排序',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT ' -1 下架， -2  删除， 1 正常  ',
  `sell_num` int(11) NULL DEFAULT 0 COMMENT '销售量',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建日期',
  `pic` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图册',
  `sell_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '售价',
  `market_price` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '原价',
  `cost_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '成本价',
  `stock` int(11) NULL DEFAULT 0 COMMENT '库存',
  `sku` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sku',
  `english_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `english_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `click_num` int(12) NULL DEFAULT 0 COMMENT '点击量',
  `car_num` int(12) NULL DEFAULT NULL COMMENT '加入购物车次数',
  `delivery_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货国家',
  `attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '尺寸属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_category_index`(`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_goods
-- ----------------------------
INSERT INTO `tp_goods` VALUES (1, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011072.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011073.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011073.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011073.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011074.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011074.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011075.jpg\" class=\"\" width=\"750\" height=\"1142\"/><img src=\"/uploads/ueditor/image/20200925/1601011075.jpg\" class=\"\" width=\"750\" height=\"954\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', ' 电脑桌钢木书桌书架111', 1, 1, 100, 1601011090, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 159.00, 179.00, NULL, 42, 'LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, 1, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (2, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011226.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011226.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011226.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011227.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011227.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011228.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011228.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用', 2, 1, 600, 1601011243, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 10, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, 2, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (3, 7, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011300.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011300.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011301.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011301.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011302.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011302.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011302.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌钢木书桌书架', 3, 1, 60, 1601011368, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 26, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, 2, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (4, 10, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 14, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (5, 11, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 86, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (6, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 26, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (7, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 29, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (8, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (9, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 29, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (10, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (11, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 28, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (12, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (13, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (14, 11, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 28, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (15, 11, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (16, 11, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (17, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (18, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (19, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (20, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (21, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (22, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (23, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (24, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (25, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (26, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (27, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (28, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (29, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (30, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (31, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (32, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (33, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (34, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (35, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 29, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (36, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (37, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (38, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 30, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (39, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 5, -1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, 50.00, 17, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL,XXL');
INSERT INTO `tp_goods` VALUES (40, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用1', 4, 1, 50, 1601011786, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 28, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', 'China', 1, NULL, 'cn,en', 'S,M,L,XL');
INSERT INTO `tp_goods` VALUES (41, 4, '/uploads/goods/2020-11-09/1604914401fyEob.jpg', '<p><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011718.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\"/><img src=\"/uploads/ueditor/image/20200925/1601011719.jpg\" class=\"\" width=\"750\" height=\"1121\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"917\"/><img src=\"/uploads/ueditor/image/20200925/1601011720.jpg\" class=\"\" width=\"750\" height=\"1142\"/></p>', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', '电脑桌台式家用122222', 1, 1, 50, 1604910860, '/uploads/goods/2020-11-09/1604914398inOug.jpg,/uploads/goods/2020-11-09/1604914399PkJwg.jpg,/uploads/goods/2020-11-09/1604914399RgkLJ.jpg', 158.00, 179.00, NULL, 18, 'CM LY-4139', 'Computer desk steel wood desk bookshelf', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139', NULL, 0, NULL, 'cn,en', 'S,M,L,XL');

-- ----------------------------
-- Table structure for tp_menu
-- ----------------------------
DROP TABLE IF EXISTS `tp_menu`;
CREATE TABLE `tp_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '父ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `sort` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态 1 正常 2 隐藏',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单权限',
  `heightlight_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单高亮',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_menu
-- ----------------------------
INSERT INTO `tp_menu` VALUES (1, 0, '系统管理', '', 0, 1, 'fa fa-gear', 'system.manage', 'admin/menu*,admin/system*');
INSERT INTO `tp_menu` VALUES (2, 1, '系统设置', '/admin/system', 0, 1, '', 'system.list', 'admin/system*');
INSERT INTO `tp_menu` VALUES (3, 0, '权限模块', '', 0, 1, 'fa fa-shield', 'system.auth', 'admin/admin*,admin/permission*,admin/role*');
INSERT INTO `tp_menu` VALUES (4, 3, '管理员', '/admin/admin', 0, 1, '', 'admin.list', 'admin/admin*');
INSERT INTO `tp_menu` VALUES (5, 3, '角色管理', '/admin/role', 0, 1, '', 'role.list', 'admin/role*');
INSERT INTO `tp_menu` VALUES (6, 1, '菜单管理', '/admin/menu', 0, 1, '', 'menu.list', 'admin/menu*');
INSERT INTO `tp_menu` VALUES (7, 3, '权限管理', '/admin/permission', 0, 1, '', 'permission.list', 'admin/permission*');
INSERT INTO `tp_menu` VALUES (8, 0, '用户管理', '', 0, 1, 'fa fa-user', 'system.member', '');
INSERT INTO `tp_menu` VALUES (9, 8, '用户列表', '/admin/user', 0, 1, '', 'user.list', '');
INSERT INTO `tp_menu` VALUES (10, 0, '商城模块', '', 0, 1, 'fa fa-shopping-cart', 'system.shop', '');
INSERT INTO `tp_menu` VALUES (11, 10, '商品分类', '/admin/category', 0, 1, '', 'category.list', '');
INSERT INTO `tp_menu` VALUES (12, 10, '商品列表', '/admin/goods', 0, 1, '', 'goods.list', '');
INSERT INTO `tp_menu` VALUES (15, 13, '文章列表', '/admin/article', 0, 1, '', 'article.list', '');
INSERT INTO `tp_menu` VALUES (13, 0, '文章管理', '', 0, 1, 'fa fa-file-text-o', 'system.article', '');
INSERT INTO `tp_menu` VALUES (16, 0, '广告管理', '', 0, 1, 'fa fa-picture-o', 'system.guang', '');
INSERT INTO `tp_menu` VALUES (17, 16, '广告列表', '/admin/guang', 0, 1, '', 'guang.list', '');
INSERT INTO `tp_menu` VALUES (18, 0, '公司管理', '', 0, 1, 'fa fa-group', 'system.company', '');
INSERT INTO `tp_menu` VALUES (19, 18, '业务范围', '/admin/scope', 0, 1, '', 'scope.list', '');
INSERT INTO `tp_menu` VALUES (20, 18, '赚钱模式', '/admin/mode', 0, 1, '', 'mode.list', '');
INSERT INTO `tp_menu` VALUES (21, 18, '企业优势', '/admin/advantage', 0, 1, '', 'advantage.list', '');
INSERT INTO `tp_menu` VALUES (22, 18, '海关数据', '/admin/customs', 0, 1, '', 'customs.list', '');
INSERT INTO `tp_menu` VALUES (23, 18, '海关国家', '/admin/county', 0, 1, '', 'county.list', '');
INSERT INTO `tp_menu` VALUES (24, 13, '文章分类', '/admin/article_category', 0, 1, '', 'article_category.list', '');
INSERT INTO `tp_menu` VALUES (26, 10, '订单列表', '/admin/order', 0, 1, '', 'order.list', '');
INSERT INTO `tp_menu` VALUES (27, 10, '需求发布', '/admin/release', 0, 1, '', 'release.list', '');
INSERT INTO `tp_menu` VALUES (28, 1, '评论列表', '/admin/commit', 0, 1, '', 'commit.list', '');

-- ----------------------------
-- Table structure for tp_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_order_goods`;
CREATE TABLE `tp_order_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_goods_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品订单号',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单id',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格  单价',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品缩略图',
  `pay_status` tinyint(4) NULL DEFAULT 0 COMMENT '支付状态',
  `pay_time` int(11) NULL DEFAULT NULL COMMENT '付款时间',
  `fahuo_time` int(11) NULL DEFAULT NULL COMMENT '发货时间',
  `shou_time` int(11) NULL DEFAULT NULL COMMENT '收货时间',
  `english_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品英文名称',
  `status` int(2) NULL DEFAULT -1,
  `attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delivery_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货地',
  `sku` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `english_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 188 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_order_goods
-- ----------------------------
INSERT INTO `tp_order_goods` VALUES (1, '2020102216312611', 1, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (2, '2020102216324921', 2, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (3, '2020102216361331', 3, 1, 1, 50000.00, 2, '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 0, NULL, NULL, NULL, '', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (4, '2020102216404241', 4, 1, 1, 50000.00, 2, '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 0, NULL, NULL, NULL, '', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (5, '2020102216422351', 5, 1, 1, 50000.00, 2, '电脑桌', '/uploads/find_goods/2020-10-13/1602574000_HDVmE.jpg', 0, NULL, NULL, NULL, '', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (6, '2020102217095061', 6, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (7, '2020102217095071', 6, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (8, '2020102310515671', 7, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (9, '2020102310533881', 8, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (10, '2020102310533891', 8, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (11, '20201023105338101', 8, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (12, '2020102310533991', 9, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (13, '20201023105339101', 9, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (14, '20201023105339111', 9, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (15, '20201023105340101', 10, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (16, '20201023105340111', 10, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (17, '20201023105340121', 10, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (18, '20201023105344111', 11, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (19, '20201023105344121', 11, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (20, '20201023105344131', 11, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (21, '20201023105345121', 12, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (22, '20201023105345131', 12, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (23, '20201023105345141', 12, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (24, '20201023105346131', 13, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (25, '20201023105346141', 13, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (26, '20201023105346151', 13, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (27, '20201023105346141', 14, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (28, '20201023105346151', 14, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (29, '20201023105346161', 14, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (30, '20201023110000151', 15, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (31, '20201023111003161', 16, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (32, '20201023111003171', 16, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (33, '20201023111003181', 16, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (34, '20201023114856173', 17, 40, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (35, '20201023115249183', 18, 6, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (36, '20201023154944193', 19, 14, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (37, '20201023154944203', 19, 39, 3, 158.00, 2, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (38, '20201023162149203', 20, 39, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (39, '20201023162737213', 21, 39, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', 1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (40, '20201023162752223', 22, 14, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, 1603444222, NULL, 'Computer desk steel wood desk bookshelf', -2, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (41, '20201023162752233', 22, 39, 3, 158.00, 3, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, 1603444222, NULL, 'Computer desk steel wood desk bookshelf', -2, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (42, '20201023165351233', 23, 3, 3, 158.00, 4, '电脑桌钢木书桌书架', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, 1603444222, NULL, 'Computer desk steel wood desk bookshelf', -2, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (43, '20201102184135243', 24, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-10-10/1602324395_EBTcl.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (44, '20201103102019253', 25, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-10-10/1602324395_EBTcl.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (45, '20201105113445263', 26, 35, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (46, '20201105113555273', 27, 40, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (47, '20201109152743291', 29, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-09-25/1601017264_OqDXE.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (48, '20201109152743301', 29, 2, 1, 158.00, 3, '电脑桌台式家用', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (49, '20201109152743311', 29, 5, 1, 158.00, 4, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (50, '20201109155740303', 30, 39, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-09-25/1601011755_niNCe.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', NULL, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (51, '20201109174048321', 32, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (52, '20201109174151331', 33, 1, 1, 159.00, 2, ' 电脑桌钢木书桌书架111', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (53, '20201110164612343', 34, 39, 3, 158.00, 2, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (54, '20201110164612353', 34, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (55, '20201111132737353', 35, 41, 3, 158.00, 1, '电脑桌台式家用122222', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (56, '20201111142614411', 41, 41, 1, 158.00, 1, '电脑桌台式家用122222', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (57, '20201111142614421', 41, 39, 1, 158.00, 2, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (58, '20201111142614431', 41, 4, 1, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (59, '20201111143046423', 42, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (60, '20201111143156433', 43, 39, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', 'CM LY-4139', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (61, '20201114162458441', 44, 0, 1, 12.00, 12, '张三', 'www.baidu.com', 0, NULL, NULL, NULL, NULL, -1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (62, '20201114162458451', 45, 0, 1, 15.00, 100, '李四', 'www.baidu.com', 0, NULL, NULL, NULL, NULL, -1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (63, '20201114162458461', 46, 0, 1, 600.00, 20, '王五', 'www.baidu.com', 0, NULL, NULL, NULL, NULL, -1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (64, '20201114162458471', 47, 0, 1, 78.00, 30, '赵六', 'www.baidu.com', 0, NULL, NULL, NULL, NULL, -1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (65, '20201114162458481', 48, 0, 1, 60.00, 50, '田七', 'www.baidu.com', 0, NULL, NULL, NULL, NULL, -1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (66, '20201114163027491', 49, 0, 1, 12.00, 12, '电脑桌1', 'www.baidu.com', 1, 1605342627, NULL, NULL, NULL, 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', NULL);
INSERT INTO `tp_order_goods` VALUES (67, '20201114163027501', 50, 0, 1, 15.00, 100, '电脑桌2', 'www.baidu.com', 1, 1605342627, NULL, NULL, NULL, 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', NULL);
INSERT INTO `tp_order_goods` VALUES (68, '20201114163027511', 51, 0, 1, 600.00, 20, '电脑桌3', 'www.baidu.com', 1, 1605342627, NULL, NULL, NULL, 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', NULL);
INSERT INTO `tp_order_goods` VALUES (69, '20201114163027521', 52, 0, 1, 78.00, 30, '电脑桌4', 'www.baidu.com', 1, 1605342627, NULL, NULL, NULL, 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', NULL);
INSERT INTO `tp_order_goods` VALUES (70, '20201114163027531', 53, 0, 1, 60.00, 50, '电脑桌5', 'www.baidu.com', 1, 1605342627, NULL, NULL, NULL, 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', NULL);
INSERT INTO `tp_order_goods` VALUES (71, '20201114163524541', 54, 0, 1, 12.00, 12, '电脑桌1', 'www.baidu.com', 1, 1605342924, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'www.baidu.com', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (72, '20201114163524551', 55, 0, 1, 15.00, 100, '电脑桌2', 'www.baidu.com', 1, 1605342924, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'www.baidu.com', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (73, '20201114163524561', 56, 0, 1, 600.00, 20, '电脑桌3', 'www.baidu.com', 1, 1605342924, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'www.baidu.com', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (74, '20201114163524571', 57, 0, 1, 78.00, 30, '电脑桌4', 'www.baidu.com', 1, 1605342924, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'www.baidu.com', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (75, '20201114163524581', 58, 0, 1, 60.00, 50, '电脑桌5', 'www.baidu.com', 1, 1605342924, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'www.baidu.com', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (76, '20201114164523591', 59, 0, 1, 12.00, 12, '电脑桌1', 'http://www.baidu.com', 1, 1605343523, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'http://www.baidu.com', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (77, '20201114164523601', 60, 0, 1, 15.00, 100, '电脑桌2', 'http://www.baidu.com', 1, 1605343523, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'http://www.baidu.com', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (78, '20201114164523611', 61, 0, 1, 600.00, 20, '电脑桌3', 'http://www.baidu.com', 1, 1605343523, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'http://www.baidu.com', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (79, '20201114164523621', 62, 0, 1, 78.00, 30, '电脑桌4', 'http://www.baidu.com', 1, 1605343523, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'http://www.baidu.com', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (80, '20201114164523631', 63, 0, 1, 60.00, 50, '电脑桌5', 'http://www.baidu.com', 1, 1605343523, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'http://www.baidu.com', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (81, '20201114171025641', 64, 0, 1, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345025, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (82, '20201114171025651', 65, 0, 1, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345025, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (83, '20201114171025661', 66, 0, 1, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345025, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (84, '20201114171025671', 67, 0, 1, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345025, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (85, '20201114171025681', 68, 0, 1, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345025, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (86, '20201114171131691', 69, 0, 1, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345091, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (87, '20201114171131701', 70, 0, 1, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345091, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (88, '20201114171131711', 71, 0, 1, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345091, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (89, '20201114171131721', 72, 0, 1, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345091, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (90, '20201114171131731', 73, 0, 1, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345091, 1605345117, NULL, '电脑桌5', 2, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (91, '20201114171229741', 74, 0, 1, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345149, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (92, '20201114171229751', 75, 0, 1, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345149, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (93, '20201114171229761', 76, 0, 1, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345149, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (94, '20201114171229771', 77, 0, 1, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345149, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (95, '20201114171229781', 78, 0, 1, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605345149, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (96, '20201117131117793', 79, 0, 3, 0.00, NULL, 'XXL/BLACK', '123123@11.com', 1, 1605589877, NULL, NULL, 'XXL/BLACK', 1, '12', '123123@11.com', 'sh11123222', 'sku1', '12', '12');
INSERT INTO `tp_order_goods` VALUES (97, '20201117131117803', 80, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (98, '20201117131117813', 81, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (99, '20201117131117823', 82, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (100, '20201117131117833', 83, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (101, '20201117131117843', 84, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (102, '20201117131117853', 85, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (103, '20201117131117863', 86, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (104, '20201117131117873', 87, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (105, '20201117131117883', 88, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (106, '20201117131117893', 89, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (107, '20201117131117903', 90, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (108, '20201117131117913', 91, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (109, '20201117131117923', 92, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (110, '20201117131117933', 93, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (111, '20201117131117943', 94, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (112, '20201117131117953', 95, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (113, '20201117131117963', 96, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (114, '20201117131117973', 97, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (115, '20201117131117983', 98, 0, 3, NULL, NULL, NULL, NULL, 1, 1605589877, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_order_goods` VALUES (116, '20201117131236993', 99, 0, 3, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589956, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (117, '202011171312361003', 100, 0, 3, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589956, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (118, '202011171312361013', 101, 0, 3, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589956, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (119, '202011171312361023', 102, 0, 3, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589956, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (120, '202011171312361033', 103, 0, 3, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589956, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (121, '202011171312531043', 104, 0, 3, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589973, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (122, '202011171312531053', 105, 0, 3, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589973, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (123, '202011171312531063', 106, 0, 3, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589973, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (124, '202011171312531073', 107, 0, 3, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589973, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (125, '202011171312531083', 108, 0, 3, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605589973, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (126, '202011171313491093', 109, 0, 3, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590029, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (127, '202011171313491103', 110, 0, 3, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590029, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (128, '202011171313491113', 111, 0, 3, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590029, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (129, '202011171313491123', 112, 0, 3, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590029, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (130, '202011171313491133', 113, 0, 3, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590029, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (131, '202011171314001143', 114, 0, 3, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590040, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (132, '202011171314001153', 115, 0, 3, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590040, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (133, '202011171314001163', 116, 0, 3, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590040, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (134, '202011171314001173', 117, 0, 3, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590040, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (135, '202011171314001183', 118, 0, 3, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590040, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (136, '202011171316351197', 119, 0, 7, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590195, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (137, '202011171316351207', 120, 0, 7, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590195, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (138, '202011171316351217', 121, 0, 7, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590195, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (139, '202011171316351227', 122, 0, 7, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590195, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (140, '202011171316351237', 123, 0, 7, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590195, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (141, '202011171317071247', 124, 0, 7, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590227, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (142, '202011171317071257', 125, 0, 7, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590227, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (143, '202011171317071267', 126, 0, 7, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590227, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (144, '202011171317071277', 127, 0, 7, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590227, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (145, '202011171317071287', 128, 0, 7, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605590227, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (146, '202011171343371297', 129, 0, 7, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591817, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (147, '202011171343371307', 130, 0, 7, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591817, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (148, '202011171343371317', 131, 0, 7, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591817, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (149, '202011171343371327', 132, 0, 7, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591817, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (150, '202011171343371337', 133, 0, 7, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591817, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (151, '202011171344141347', 134, 0, 7, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591854, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (152, '202011171344141357', 135, 0, 7, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591854, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (153, '202011171344141367', 136, 0, 7, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591854, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (154, '202011171344141377', 137, 0, 7, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591854, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (155, '202011171344141387', 138, 0, 7, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605591854, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (156, '202011171346421397', 139, 0, 7, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592002, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (157, '202011171346421407', 140, 0, 7, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592002, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (158, '202011171346421417', 141, 0, 7, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592002, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (159, '202011171346421427', 142, 0, 7, 78.00, 30, '电脑桌4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592002, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (160, '202011171346421437', 143, 0, 7, 60.00, 50, '电脑桌5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592002, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (161, '202011171353591447', 144, 0, 7, 12.00, 12, '电脑桌1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592439, NULL, NULL, '电脑桌1', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌1', '电脑桌1');
INSERT INTO `tp_order_goods` VALUES (162, '202011171353591457', 145, 0, 7, 15.00, 100, '电脑桌2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592439, NULL, NULL, '电脑桌2', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌2', '电脑桌2');
INSERT INTO `tp_order_goods` VALUES (163, '202011171353591467', 146, 0, 7, 600.00, 20, '电脑桌3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', 1, 1605592439, NULL, NULL, '电脑桌3', 1, 'XXL/BLACK', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605354963677&di=8cdcc609642ba549e385ce44b13a8dd0&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg', '中国', 'CM LY-4139', '电脑桌3', '电脑桌3');
INSERT INTO `tp_order_goods` VALUES (164, '202011171353591477', 147, 0, 7, 78.00, 30, '电脑桌4', NULL, 1, 1605592439, NULL, NULL, '电脑桌4', 1, 'XXL/BLACK', NULL, '中国', 'CM LY-4139', '电脑桌4', '电脑桌4');
INSERT INTO `tp_order_goods` VALUES (165, '202011171353591487', 148, 0, 7, 60.00, 50, '电脑桌5', NULL, 1, 1605592439, NULL, NULL, '电脑桌5', 1, 'XXL/BLACK', NULL, '中国', 'CM LY-4139', '电脑桌5', '电脑桌5');
INSERT INTO `tp_order_goods` VALUES (166, '202011171439151497', 149, 5, 7, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (167, '202011171614051503', 150, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (168, '202011171707451513', 151, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (169, '202011171724021523', 152, 4, 3, 158.00, 2, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (170, '202011171725071533', 153, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (171, '202011171729181543', 154, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (172, '202011171738331553', 155, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (173, '202011171738441563', 156, 6, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (174, '202011171740541573', 157, 5, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (175, '202011171741101583', 158, 5, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (176, '202011171742501593', 159, 11, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (177, '202011171757141603', 160, 5, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (178, '202011171812411613', 161, 6, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (179, '202011171812511623', 162, 6, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (180, '202011171813071633', 163, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (181, '202011171815271643', 164, 11, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (182, '202011171816061653', 165, 7, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (183, '202011171816511663', 166, 9, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (184, '202011201527591673', 167, 4, 3, 158.00, 2, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (185, '202011241732291683', 168, 5, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (186, '202011241732371693', 169, 5, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');
INSERT INTO `tp_order_goods` VALUES (187, '202011241733031703', 170, 4, 3, 158.00, 1, '电脑桌台式家用1', '/uploads/goods/2020-11-09/1604914401fyEob.jpg', 0, NULL, NULL, NULL, 'Computer desk steel wood desk bookshelf', -1, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn', '/uploads/goods/2020-11-09/1604914398inOug.jpg', '木以成居 电脑桌钢木书桌书架 板式双层（加宽）收纳现代简约学习桌台式办公桌子 浅胡桃色100*60CM LY-4139', 'Wood in a living room, computer desk, steel-wood desk, bookcase, double-layer (widened) storage, modern minimalist study desk, desktop desk, light walnut color 100*60CM LY-4139');

-- ----------------------------
-- Table structure for tp_order_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_order_info`;
CREATE TABLE `tp_order_info`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `order_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(13, 2) NULL DEFAULT 0.00 COMMENT '支付价格',
  `pay_way` tinyint(4) NULL DEFAULT 1 COMMENT '支付方式  1paypal',
  `status` tinyint(4) NULL DEFAULT -1 COMMENT '状态：-1，待付款；1，待发货；2，已发货，3，已完成；4，取消订单；-2：删除订单；5，订单关闭',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `add_time` int(11) NULL DEFAULT NULL COMMENT '下单时间',
  `pay_time` int(11) NULL DEFAULT NULL COMMENT '支付时间',
  `fahuo_time` int(11) NULL DEFAULT NULL COMMENT '发货时间',
  `shou_time` int(11) NULL DEFAULT NULL COMMENT '收货时间',
  `wuliu_gongsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '物流公司',
  `wuliu_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '物流号',
  `type` tinyint(1) NULL DEFAULT 1 COMMENT '1商城商品订单2找货订单3批量导入',
  `pay_status` tinyint(2) NULL DEFAULT 0 COMMENT '支付状态',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 171 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_order_info
-- ----------------------------
INSERT INTO `tp_order_info` VALUES (1, 1, 'Sp_20201022163265', 318.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603355486, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (2, 1, 'Sp_20201022165175', 318.00, 1, 1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603355569, 1603355569, NULL, NULL, '', '', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (3, 1, 'Sp_20201022165413', 100000.00, 1, 1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603355773, 1603355773, NULL, NULL, '', '', 2, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (4, 1, 'Sp_20201022162161', 100000.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603356042, NULL, NULL, NULL, '', '', 2, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (5, 1, 'Sp_20201022164499', 100000.00, 1, 1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603356143, 1603356143, NULL, NULL, '', '', 2, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (6, 1, 'Sp_20201022174973', 792.00, 1, 1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603357790, 1603357790, NULL, NULL, '', '', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (7, 1, 'Sp_20201023109339', 318.00, 1, 1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421516, 1603421516, NULL, NULL, '', '', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (8, 1, 'Sp_20201023101135', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421618, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (9, 1, 'Sp_20201023107971', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421619, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (10, 1, 'Sp_20201023105025', 1424.00, 1, 1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421620, 1603421620, NULL, NULL, '', '', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (11, 1, 'Sp_20201023105069', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421624, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (12, 1, 'Sp_20201023103150', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421625, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (13, 1, 'Sp_20201023104267', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421626, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (14, 1, 'Sp_20201023104357', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603421626, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (15, 1, 'Sp_20201023118068', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603422000, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (16, 1, 'Sp_20201023111147', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1603422603, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (17, 3, 'Sp_20201023119807', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1603424936, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (18, 3, 'Sp_20201023117509', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1603425169, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (19, 3, 'Sp_20201023151592', 474.00, 1, -1, '北京市', '市辖区', '西城区', 'qwe', '17797759954', 'qwe', 1603439384, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (20, 3, 'Sp_20201023166131', 158.00, 1, 1, '北京市', '市辖区', '西城区', 'qwe', '17797759952', 'qwe', 1603441309, 1603441309, NULL, NULL, '', '', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (21, 3, 'Sp_20201023163120', 158.00, 1, 1, '北京市', '市辖区', '西城区', 'qwe', '17797759952', 'qwe', 1603441657, 1603441657, NULL, NULL, '', '', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (22, 3, 'Sp_20201023161633', 632.00, 1, -2, '北京市', '市辖区', '西城区', 'qwe', '17797759954', 'qwe', 1603441672, 1603441672, 1603444222, 1603444551, '申通快递', '1234567890', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (23, 3, 'Sp_20201023164736', 632.00, 1, -2, '北京市', '市辖区', '西城区', 'qwe', '17797759952', 'qwe', 1603443231, 1603443231, 1603444222, 1603444652, '申通快递', '1234567890', 1, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (24, 3, 'Sp_20201102184059', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1604313695, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (25, 3, 'Sp_20201103102651', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1604370019, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (26, 3, 'Sp_20201105114189', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1604547285, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (27, 3, 'Sp_20201105114978', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1604547355, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (29, 1, 'Sp_20201109156108', 1424.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1604906863, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (30, 3, 'Sp_20201109157659', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'qwe', '17797759954', 'qwe', 1604908660, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (31, 1, 'Sp_20201109178797', 318.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1604914787, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (32, 1, 'Sp_20201109174512', 318.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1604914848, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (33, 1, 'Sp_20201109177856', 318.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1604914911, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (34, 3, 'Sp_20201110168384', 474.00, 1, -1, '天津市', '县', '宁河县', 'qwe', '17797759952', 'qwe', 1604997972, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (35, 3, 'Sp_20201111132314', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1605072457, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (36, 3, 'Sp_20201111141635', 632.00, 1, -1, '北京市', '市辖区', '西城区', 'qwe', '17797759954', 'qwe', 1605075781, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (37, 3, 'Sp_20201111148208', 632.00, 1, -1, '天津市', '县', '宁河县', 'qwe', '17797759952', 'qwe', 1605075801, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (38, 1, 'Sp_20201111146767', 632.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1605075848, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (39, 3, 'Sp_20201111148427', 632.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1605075896, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (40, 1, 'Sp_20201111147340', 632.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1605075906, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (41, 1, 'Sp_20201111147192', 632.00, 1, -1, '河南省', '郑州市', '中原区', '11111111111111111', '18503866892', '张三', 1605075974, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (42, 3, 'Sp_20201111141328', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1605076246, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (43, 3, 'Sp_20201111148834', 158.00, 1, -1, '北京市', '市辖区', '西城区', 'zxc', '17797759955', 'z\'x\'c', 1605076316, NULL, NULL, NULL, '', '', 1, 0, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (44, 1, 'Sp_202010221632622', 144.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605342298, NULL, NULL, NULL, '', '', 1, 0, '中国', NULL);
INSERT INTO `tp_order_info` VALUES (45, 1, 'Sp_202010221632621', 1500.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605342298, NULL, NULL, NULL, '', '', 1, 0, '中国', NULL);
INSERT INTO `tp_order_info` VALUES (46, 1, 'Sp_202010221632623', 12000.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605342298, NULL, NULL, NULL, '', '', 1, 0, '中国', NULL);
INSERT INTO `tp_order_info` VALUES (47, 1, 'Sp_202010221632624', 2340.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605342298, NULL, NULL, NULL, '', '', 1, 0, '中国', NULL);
INSERT INTO `tp_order_info` VALUES (48, 1, 'Sp_202010221632625', 3000.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605342298, NULL, NULL, NULL, '', '', 1, 0, '中国', NULL);
INSERT INTO `tp_order_info` VALUES (49, 1, 'Sp_202010221632622', 144.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605342627, 1605342627, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (50, 1, 'Sp_202010221632621', 1500.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605342627, 1605342627, NULL, NULL, '', '', 1, 0, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (51, 1, 'Sp_202010221632623', 12000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605342627, 1605342627, NULL, NULL, '', '', 1, 0, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (52, 1, 'Sp_202010221632624', 2340.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605342627, 1605342627, NULL, NULL, '', '', 1, 0, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (53, 1, 'Sp_202010221632625', 3000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605342627, 1605342627, NULL, NULL, '', '', 1, 0, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (54, 1, 'Sp_202010221632622', 144.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605342924, 1605342924, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (55, 1, 'Sp_202010221632621', 1500.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605342924, 1605342924, NULL, NULL, '', '', 1, 0, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (56, 1, 'Sp_202010221632623', 12000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605342924, 1605342924, NULL, NULL, '', '', 1, 0, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (57, 1, 'Sp_202010221632624', 2340.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605342924, 1605342924, NULL, NULL, '', '', 1, 0, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (58, 1, 'Sp_202010221632625', 3000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605342924, 1605342924, NULL, NULL, '', '', 1, 0, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (59, 1, 'Sp_202010221632622', 144.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605343523, 1605343523, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (60, 1, 'Sp_202010221632621', 1500.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605343523, 1605343523, NULL, NULL, '', '', 1, 0, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (61, 1, 'Sp_202010221632623', 12000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605343523, 1605343523, NULL, NULL, '', '', 1, 0, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (62, 1, 'Sp_202010221632624', 2340.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605343523, 1605343523, NULL, NULL, '', '', 1, 0, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (63, 1, 'Sp_202010221632625', 3000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605343523, 1605343523, NULL, NULL, '', '', 1, 0, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (64, 1, 'Sp_202010221632622', 144.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605345025, 1605345025, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (65, 1, 'Sp_202010221632621', 1500.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605345025, 1605345025, NULL, NULL, '', '', 1, 0, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (66, 1, 'Sp_202010221632623', 12000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605345025, 1605345025, NULL, NULL, '', '', 1, 0, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (67, 1, 'Sp_202010221632624', 2340.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605345025, 1605345025, NULL, NULL, '', '', 1, 0, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (68, 1, 'Sp_202010221632625', 3000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605345025, 1605345025, NULL, NULL, '', '', 1, 0, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (69, 1, 'Sp_202010221632622', 144.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605345091, 1605345091, NULL, NULL, '', '', 1, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (70, 1, 'Sp_202010221632621', 1500.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605345091, 1605345091, NULL, NULL, '', '', 1, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (71, 1, 'Sp_202010221632623', 12000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605345091, 1605345091, NULL, NULL, '', '', 1, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (72, 1, 'Sp_202010221632624', 2340.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605345091, 1605345091, NULL, NULL, '', '', 1, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (73, 1, 'Sp_202010221632625', 3000.00, 1, 2, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605345091, 1605345091, 1605345117, NULL, '123', '123', 1, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (74, 1, 'Sp_202010221632622', 144.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605345149, 1605345149, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (75, 1, 'Sp_202010221632621', 1500.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605345149, 1605345149, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (76, 1, 'Sp_202010221632623', 12000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605345149, 1605345149, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (77, 1, 'Sp_202010221632624', 2340.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605345149, 1605345149, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (78, 1, 'Sp_202010221632625', 3000.00, 1, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605345149, 1605345149, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (79, 3, '123', 0.00, 1, 1, 'as', 'asdf', 'cn', '123123', '198776321234', 'sadfas', 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, '0755-89565455');
INSERT INTO `tp_order_info` VALUES (80, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (81, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (82, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (83, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (84, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (85, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (86, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (87, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (88, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (89, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (90, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (91, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (92, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (93, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (94, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (95, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (96, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (97, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (98, 3, NULL, 0.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1605589877, 1605589877, NULL, NULL, '', '', 3, 1, NULL, NULL);
INSERT INTO `tp_order_info` VALUES (99, 3, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605589956, 1605589956, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (100, 3, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605589956, 1605589956, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (101, 3, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605589956, 1605589956, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (102, 3, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605589956, 1605589956, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (103, 3, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605589956, 1605589956, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (104, 3, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605589973, 1605589973, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (105, 3, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605589973, 1605589973, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (106, 3, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605589973, 1605589973, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (107, 3, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605589973, 1605589973, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (108, 3, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605589973, 1605589973, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (109, 3, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605590029, 1605590029, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (110, 3, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605590029, 1605590029, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (111, 3, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605590029, 1605590029, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (112, 3, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605590029, 1605590029, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (113, 3, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605590029, 1605590029, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (114, 3, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605590040, 1605590040, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (115, 3, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605590040, 1605590040, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (116, 3, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605590040, 1605590040, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (117, 3, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605590040, 1605590040, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (118, 3, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605590040, 1605590040, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (119, 7, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605590195, 1605590195, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (120, 7, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605590195, 1605590195, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (121, 7, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605590195, 1605590195, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (122, 7, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605590195, 1605590195, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (123, 7, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605590195, 1605590195, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (124, 7, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605590227, 1605590227, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (125, 7, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605590227, 1605590227, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (126, 7, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605590227, 1605590227, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (127, 7, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605590227, 1605590227, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (128, 7, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605590227, 1605590227, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (129, 7, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605591817, 1605591817, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (130, 7, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605591817, 1605591817, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (131, 7, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605591817, 1605591817, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (132, 7, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605591817, 1605591817, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (133, 7, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605591817, 1605591817, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (134, 7, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605591854, 1605591854, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (135, 7, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605591854, 1605591854, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (136, 7, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605591854, 1605591854, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (137, 7, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605591854, 1605591854, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (138, 7, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605591854, 1605591854, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (139, 7, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605592002, 1605592002, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (140, 7, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605592002, 1605592002, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (141, 7, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605592002, 1605592002, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (142, 7, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605592002, 1605592002, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (143, 7, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605592002, 1605592002, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (144, 7, 'Sp_202010221632622', 144.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1107', '13838381438', '张三', 1605592439, 1605592439, NULL, NULL, '', '', 3, 1, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (145, 7, 'Sp_202010221632621', 1500.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1108', '13838381439', '李四', 1605592439, 1605592439, NULL, NULL, '', '', 3, 1, '中国', '450001');
INSERT INTO `tp_order_info` VALUES (146, 7, 'Sp_202010221632623', 12000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1109', '13838381440', '王五', 1605592439, 1605592439, NULL, NULL, '', '', 3, 1, '中国', '450002');
INSERT INTO `tp_order_info` VALUES (147, 7, 'Sp_202010221632624', 2340.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1110', '13838381441', '赵六', 1605592439, 1605592439, NULL, NULL, '', '', 3, 1, '中国', '450003');
INSERT INTO `tp_order_info` VALUES (148, 7, 'Sp_202010221632625', 3000.00, 2, 1, '河南省', '郑州市', '郑东新区', '升龙广场A座1111', '13838381442', '田七', 1605592439, 1605592439, NULL, NULL, '', '', 3, 1, '中国', '450004');
INSERT INTO `tp_order_info` VALUES (149, 7, 'Sp_20201117141292', 158.00, 1, -1, '', '', '', '啊实打实大中小大声道', '17797759951', 'ssf', 1605595155, NULL, NULL, NULL, '', '', 1, 0, '安哥拉', '112002');
INSERT INTO `tp_order_info` VALUES (150, 3, 'Sp_20201117162777', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759954', 'qwe', 1605600845, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (151, 3, 'Sp_20201117172415', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605604065, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (152, 3, 'Sp_20201117171642', 316.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605605042, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (153, 3, 'Sp_20201117176849', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605605107, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (154, 3, 'Sp_20201117176442', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605605358, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (155, 3, 'Sp_20201117179227', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605605913, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (156, 3, 'Sp_20201117173614', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605605924, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (157, 3, 'Sp_20201117172180', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605606054, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (158, 3, 'Sp_20201117178923', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605606070, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (159, 3, 'Sp_20201117176395', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759954', 'qwe', 1605606170, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (160, 3, 'Sp_20201117177343', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759954', 'qwe', 1605607034, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (161, 3, 'Sp_20201117189511', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605607961, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (162, 3, 'Sp_20201117189605', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605607971, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (163, 3, 'Sp_20201117188478', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605607987, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (164, 3, 'Sp_20201117184594', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605608127, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (165, 3, 'Sp_20201117187540', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605608166, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (166, 3, 'Sp_20201117188082', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1605608211, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (167, 3, 'Sp_20201120158702', 316.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759954', 'qwe', 1605857279, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (168, 3, 'Sp_20201124179454', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1606210349, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (169, 3, 'Sp_20201124173902', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1606210357, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');
INSERT INTO `tp_order_info` VALUES (170, 3, 'Sp_20201124176521', 158.00, 1, -1, '河南省', '郑州市', '郑东新区', '升龙广场A座11层1107', '17797759952', 'qwe', 1606210383, NULL, NULL, NULL, '', '', 1, 0, '中国', '450000');

-- ----------------------------
-- Table structure for tp_region
-- ----------------------------
DROP TABLE IF EXISTS `tp_region`;
CREATE TABLE `tp_region`  (
  `id` smallint(6) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `REGION_ID`(`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_region
-- ----------------------------
INSERT INTO `tp_region` VALUES (1, '中国', 0);
INSERT INTO `tp_region` VALUES (2, '北京市', 1);
INSERT INTO `tp_region` VALUES (3, '天津市', 1);
INSERT INTO `tp_region` VALUES (4, '河北省', 1);
INSERT INTO `tp_region` VALUES (5, '山西省', 1);
INSERT INTO `tp_region` VALUES (6, '内蒙古自治区', 1);
INSERT INTO `tp_region` VALUES (7, '辽宁省', 1);
INSERT INTO `tp_region` VALUES (8, '吉林省', 1);
INSERT INTO `tp_region` VALUES (9, '黑龙江省', 1);
INSERT INTO `tp_region` VALUES (10, '上海市', 1);
INSERT INTO `tp_region` VALUES (11, '江苏省', 1);
INSERT INTO `tp_region` VALUES (12, '浙江省', 1);
INSERT INTO `tp_region` VALUES (13, '安徽省', 1);
INSERT INTO `tp_region` VALUES (14, '福建省', 1);
INSERT INTO `tp_region` VALUES (15, '江西省', 1);
INSERT INTO `tp_region` VALUES (16, '山东省', 1);
INSERT INTO `tp_region` VALUES (17, '河南省', 1);
INSERT INTO `tp_region` VALUES (18, '湖北省', 1);
INSERT INTO `tp_region` VALUES (19, '湖南省', 1);
INSERT INTO `tp_region` VALUES (20, '广东省', 1);
INSERT INTO `tp_region` VALUES (21, '广西壮族自治区', 1);
INSERT INTO `tp_region` VALUES (22, '海南省', 1);
INSERT INTO `tp_region` VALUES (23, '重庆市', 1);
INSERT INTO `tp_region` VALUES (24, '四川省', 1);
INSERT INTO `tp_region` VALUES (25, '贵州省', 1);
INSERT INTO `tp_region` VALUES (26, '云南省', 1);
INSERT INTO `tp_region` VALUES (27, '西藏自治区', 1);
INSERT INTO `tp_region` VALUES (28, '陕西省', 1);
INSERT INTO `tp_region` VALUES (29, '甘肃省', 1);
INSERT INTO `tp_region` VALUES (30, '青海省', 1);
INSERT INTO `tp_region` VALUES (31, '宁夏回族自治区', 1);
INSERT INTO `tp_region` VALUES (32, '新疆维吾尔自治区', 1);
INSERT INTO `tp_region` VALUES (33, '市辖区', 2);
INSERT INTO `tp_region` VALUES (34, '县', 2);
INSERT INTO `tp_region` VALUES (35, '市辖区', 3);
INSERT INTO `tp_region` VALUES (36, '县', 3);
INSERT INTO `tp_region` VALUES (37, '石家庄市', 4);
INSERT INTO `tp_region` VALUES (38, '唐山市', 4);
INSERT INTO `tp_region` VALUES (39, '秦皇岛市', 4);
INSERT INTO `tp_region` VALUES (40, '邯郸市', 4);
INSERT INTO `tp_region` VALUES (41, '邢台市', 4);
INSERT INTO `tp_region` VALUES (42, '保定市', 4);
INSERT INTO `tp_region` VALUES (43, '张家口市', 4);
INSERT INTO `tp_region` VALUES (44, '承德市', 4);
INSERT INTO `tp_region` VALUES (45, '沧州市', 4);
INSERT INTO `tp_region` VALUES (46, '廊坊市', 4);
INSERT INTO `tp_region` VALUES (47, '衡水市', 4);
INSERT INTO `tp_region` VALUES (48, '太原市', 5);
INSERT INTO `tp_region` VALUES (49, '大同市', 5);
INSERT INTO `tp_region` VALUES (50, '阳泉市', 5);
INSERT INTO `tp_region` VALUES (51, '长治市', 5);
INSERT INTO `tp_region` VALUES (52, '晋城市', 5);
INSERT INTO `tp_region` VALUES (53, '朔州市', 5);
INSERT INTO `tp_region` VALUES (54, '晋中市', 5);
INSERT INTO `tp_region` VALUES (55, '运城市', 5);
INSERT INTO `tp_region` VALUES (56, '忻州市', 5);
INSERT INTO `tp_region` VALUES (57, '临汾市', 5);
INSERT INTO `tp_region` VALUES (58, '吕梁市', 5);
INSERT INTO `tp_region` VALUES (59, '呼和浩特市', 6);
INSERT INTO `tp_region` VALUES (60, '包头市', 6);
INSERT INTO `tp_region` VALUES (61, '乌海市', 6);
INSERT INTO `tp_region` VALUES (62, '赤峰市', 6);
INSERT INTO `tp_region` VALUES (63, '通辽市', 6);
INSERT INTO `tp_region` VALUES (64, '鄂尔多斯市', 6);
INSERT INTO `tp_region` VALUES (65, '呼伦贝尔市', 6);
INSERT INTO `tp_region` VALUES (66, '巴彦淖尔市', 6);
INSERT INTO `tp_region` VALUES (67, '乌兰察布市', 6);
INSERT INTO `tp_region` VALUES (68, '兴安盟', 6);
INSERT INTO `tp_region` VALUES (69, '锡林郭勒盟', 6);
INSERT INTO `tp_region` VALUES (70, '阿拉善盟', 6);
INSERT INTO `tp_region` VALUES (71, '沈阳市', 7);
INSERT INTO `tp_region` VALUES (72, '大连市', 7);
INSERT INTO `tp_region` VALUES (73, '鞍山市', 7);
INSERT INTO `tp_region` VALUES (74, '抚顺市', 7);
INSERT INTO `tp_region` VALUES (75, '本溪市', 7);
INSERT INTO `tp_region` VALUES (76, '丹东市', 7);
INSERT INTO `tp_region` VALUES (77, '锦州市', 7);
INSERT INTO `tp_region` VALUES (78, '营口市', 7);
INSERT INTO `tp_region` VALUES (79, '阜新市', 7);
INSERT INTO `tp_region` VALUES (80, '辽阳市', 7);
INSERT INTO `tp_region` VALUES (81, '盘锦市', 7);
INSERT INTO `tp_region` VALUES (82, '铁岭市', 7);
INSERT INTO `tp_region` VALUES (83, '朝阳市', 7);
INSERT INTO `tp_region` VALUES (84, '葫芦岛市', 7);
INSERT INTO `tp_region` VALUES (85, '长春市', 8);
INSERT INTO `tp_region` VALUES (86, '吉林市', 8);
INSERT INTO `tp_region` VALUES (87, '四平市', 8);
INSERT INTO `tp_region` VALUES (88, '辽源市', 8);
INSERT INTO `tp_region` VALUES (89, '通化市', 8);
INSERT INTO `tp_region` VALUES (90, '白山市', 8);
INSERT INTO `tp_region` VALUES (91, '松原市', 8);
INSERT INTO `tp_region` VALUES (92, '白城市', 8);
INSERT INTO `tp_region` VALUES (93, '延边朝鲜族自治州', 8);
INSERT INTO `tp_region` VALUES (94, '哈尔滨市', 9);
INSERT INTO `tp_region` VALUES (95, '齐齐哈尔市', 9);
INSERT INTO `tp_region` VALUES (96, '鸡西市', 9);
INSERT INTO `tp_region` VALUES (97, '鹤岗市', 9);
INSERT INTO `tp_region` VALUES (98, '双鸭山市', 9);
INSERT INTO `tp_region` VALUES (99, '大庆市', 9);
INSERT INTO `tp_region` VALUES (100, '伊春市', 9);
INSERT INTO `tp_region` VALUES (101, '佳木斯市', 9);
INSERT INTO `tp_region` VALUES (102, '七台河市', 9);
INSERT INTO `tp_region` VALUES (103, '牡丹江市', 9);
INSERT INTO `tp_region` VALUES (104, '黑河市', 9);
INSERT INTO `tp_region` VALUES (105, '绥化市', 9);
INSERT INTO `tp_region` VALUES (106, '大兴安岭地区', 9);
INSERT INTO `tp_region` VALUES (107, '市辖区', 10);
INSERT INTO `tp_region` VALUES (108, '县', 10);
INSERT INTO `tp_region` VALUES (109, '南京市', 11);
INSERT INTO `tp_region` VALUES (110, '无锡市', 11);
INSERT INTO `tp_region` VALUES (111, '徐州市', 11);
INSERT INTO `tp_region` VALUES (112, '常州市', 11);
INSERT INTO `tp_region` VALUES (113, '苏州市', 11);
INSERT INTO `tp_region` VALUES (114, '南通市', 11);
INSERT INTO `tp_region` VALUES (115, '连云港市', 11);
INSERT INTO `tp_region` VALUES (116, '淮安市', 11);
INSERT INTO `tp_region` VALUES (117, '盐城市', 11);
INSERT INTO `tp_region` VALUES (118, '扬州市', 11);
INSERT INTO `tp_region` VALUES (119, '镇江市', 11);
INSERT INTO `tp_region` VALUES (120, '泰州市', 11);
INSERT INTO `tp_region` VALUES (121, '宿迁市', 11);
INSERT INTO `tp_region` VALUES (122, '杭州市', 12);
INSERT INTO `tp_region` VALUES (123, '宁波市', 12);
INSERT INTO `tp_region` VALUES (124, '温州市', 12);
INSERT INTO `tp_region` VALUES (125, '嘉兴市', 12);
INSERT INTO `tp_region` VALUES (126, '湖州市', 12);
INSERT INTO `tp_region` VALUES (127, '绍兴市', 12);
INSERT INTO `tp_region` VALUES (128, '金华市', 12);
INSERT INTO `tp_region` VALUES (129, '衢州市', 12);
INSERT INTO `tp_region` VALUES (130, '舟山市', 12);
INSERT INTO `tp_region` VALUES (131, '台州市', 12);
INSERT INTO `tp_region` VALUES (132, '丽水市', 12);
INSERT INTO `tp_region` VALUES (133, '合肥市', 13);
INSERT INTO `tp_region` VALUES (134, '芜湖市', 13);
INSERT INTO `tp_region` VALUES (135, '蚌埠市', 13);
INSERT INTO `tp_region` VALUES (136, '淮南市', 13);
INSERT INTO `tp_region` VALUES (137, '马鞍山市', 13);
INSERT INTO `tp_region` VALUES (138, '淮北市', 13);
INSERT INTO `tp_region` VALUES (139, '铜陵市', 13);
INSERT INTO `tp_region` VALUES (140, '安庆市', 13);
INSERT INTO `tp_region` VALUES (141, '黄山市', 13);
INSERT INTO `tp_region` VALUES (142, '滁州市', 13);
INSERT INTO `tp_region` VALUES (143, '阜阳市', 13);
INSERT INTO `tp_region` VALUES (144, '宿州市', 13);
INSERT INTO `tp_region` VALUES (145, '巢湖市', 13);
INSERT INTO `tp_region` VALUES (146, '六安市', 13);
INSERT INTO `tp_region` VALUES (147, '亳州市', 13);
INSERT INTO `tp_region` VALUES (148, '池州市', 13);
INSERT INTO `tp_region` VALUES (149, '宣城市', 13);
INSERT INTO `tp_region` VALUES (150, '福州市', 14);
INSERT INTO `tp_region` VALUES (151, '厦门市', 14);
INSERT INTO `tp_region` VALUES (152, '莆田市', 14);
INSERT INTO `tp_region` VALUES (153, '三明市', 14);
INSERT INTO `tp_region` VALUES (154, '泉州市', 14);
INSERT INTO `tp_region` VALUES (155, '漳州市', 14);
INSERT INTO `tp_region` VALUES (156, '南平市', 14);
INSERT INTO `tp_region` VALUES (157, '龙岩市', 14);
INSERT INTO `tp_region` VALUES (158, '宁德市', 14);
INSERT INTO `tp_region` VALUES (159, '南昌市', 15);
INSERT INTO `tp_region` VALUES (160, '景德镇市', 15);
INSERT INTO `tp_region` VALUES (161, '萍乡市', 15);
INSERT INTO `tp_region` VALUES (162, '九江市', 15);
INSERT INTO `tp_region` VALUES (163, '新余市', 15);
INSERT INTO `tp_region` VALUES (164, '鹰潭市', 15);
INSERT INTO `tp_region` VALUES (165, '赣州市', 15);
INSERT INTO `tp_region` VALUES (166, '吉安市', 15);
INSERT INTO `tp_region` VALUES (167, '宜春市', 15);
INSERT INTO `tp_region` VALUES (168, '抚州市', 15);
INSERT INTO `tp_region` VALUES (169, '上饶市', 15);
INSERT INTO `tp_region` VALUES (170, '济南市', 16);
INSERT INTO `tp_region` VALUES (171, '青岛市', 16);
INSERT INTO `tp_region` VALUES (172, '淄博市', 16);
INSERT INTO `tp_region` VALUES (173, '枣庄市', 16);
INSERT INTO `tp_region` VALUES (174, '东营市', 16);
INSERT INTO `tp_region` VALUES (175, '烟台市', 16);
INSERT INTO `tp_region` VALUES (176, '潍坊市', 16);
INSERT INTO `tp_region` VALUES (177, '济宁市', 16);
INSERT INTO `tp_region` VALUES (178, '泰安市', 16);
INSERT INTO `tp_region` VALUES (179, '威海市', 16);
INSERT INTO `tp_region` VALUES (180, '日照市', 16);
INSERT INTO `tp_region` VALUES (181, '莱芜市', 16);
INSERT INTO `tp_region` VALUES (182, '临沂市', 16);
INSERT INTO `tp_region` VALUES (183, '德州市', 16);
INSERT INTO `tp_region` VALUES (184, '聊城市', 16);
INSERT INTO `tp_region` VALUES (185, '滨州市', 16);
INSERT INTO `tp_region` VALUES (186, '菏泽市', 16);
INSERT INTO `tp_region` VALUES (187, '郑州市', 17);
INSERT INTO `tp_region` VALUES (188, '开封市', 17);
INSERT INTO `tp_region` VALUES (189, '洛阳市', 17);
INSERT INTO `tp_region` VALUES (190, '平顶山市', 17);
INSERT INTO `tp_region` VALUES (191, '安阳市', 17);
INSERT INTO `tp_region` VALUES (192, '鹤壁市', 17);
INSERT INTO `tp_region` VALUES (193, '新乡市', 17);
INSERT INTO `tp_region` VALUES (194, '焦作市', 17);
INSERT INTO `tp_region` VALUES (195, '濮阳市', 17);
INSERT INTO `tp_region` VALUES (196, '许昌市', 17);
INSERT INTO `tp_region` VALUES (197, '漯河市', 17);
INSERT INTO `tp_region` VALUES (198, '三门峡市', 17);
INSERT INTO `tp_region` VALUES (199, '南阳市', 17);
INSERT INTO `tp_region` VALUES (200, '商丘市', 17);
INSERT INTO `tp_region` VALUES (201, '信阳市', 17);
INSERT INTO `tp_region` VALUES (202, '周口市', 17);
INSERT INTO `tp_region` VALUES (203, '驻马店市', 17);
INSERT INTO `tp_region` VALUES (204, '武汉市', 18);
INSERT INTO `tp_region` VALUES (205, '黄石市', 18);
INSERT INTO `tp_region` VALUES (206, '十堰市', 18);
INSERT INTO `tp_region` VALUES (207, '宜昌市', 18);
INSERT INTO `tp_region` VALUES (208, '襄樊市', 18);
INSERT INTO `tp_region` VALUES (209, '鄂州市', 18);
INSERT INTO `tp_region` VALUES (210, '荆门市', 18);
INSERT INTO `tp_region` VALUES (211, '孝感市', 18);
INSERT INTO `tp_region` VALUES (212, '荆州市', 18);
INSERT INTO `tp_region` VALUES (213, '黄冈市', 18);
INSERT INTO `tp_region` VALUES (214, '咸宁市', 18);
INSERT INTO `tp_region` VALUES (215, '随州市', 18);
INSERT INTO `tp_region` VALUES (216, '恩施土家族苗族自治州', 18);
INSERT INTO `tp_region` VALUES (217, '省直辖县级行政区划', 18);
INSERT INTO `tp_region` VALUES (218, '长沙市', 19);
INSERT INTO `tp_region` VALUES (219, '株洲市', 19);
INSERT INTO `tp_region` VALUES (220, '湘潭市', 19);
INSERT INTO `tp_region` VALUES (221, '衡阳市', 19);
INSERT INTO `tp_region` VALUES (222, '邵阳市', 19);
INSERT INTO `tp_region` VALUES (223, '岳阳市', 19);
INSERT INTO `tp_region` VALUES (224, '常德市', 19);
INSERT INTO `tp_region` VALUES (225, '张家界市', 19);
INSERT INTO `tp_region` VALUES (226, '益阳市', 19);
INSERT INTO `tp_region` VALUES (227, '郴州市', 19);
INSERT INTO `tp_region` VALUES (228, '永州市', 19);
INSERT INTO `tp_region` VALUES (229, '怀化市', 19);
INSERT INTO `tp_region` VALUES (230, '娄底市', 19);
INSERT INTO `tp_region` VALUES (231, '湘西土家族苗族自治州', 19);
INSERT INTO `tp_region` VALUES (232, '广州市', 20);
INSERT INTO `tp_region` VALUES (233, '韶关市', 20);
INSERT INTO `tp_region` VALUES (234, '深圳市', 20);
INSERT INTO `tp_region` VALUES (235, '珠海市', 20);
INSERT INTO `tp_region` VALUES (236, '汕头市', 20);
INSERT INTO `tp_region` VALUES (237, '佛山市', 20);
INSERT INTO `tp_region` VALUES (238, '江门市', 20);
INSERT INTO `tp_region` VALUES (239, '湛江市', 20);
INSERT INTO `tp_region` VALUES (240, '茂名市', 20);
INSERT INTO `tp_region` VALUES (241, '肇庆市', 20);
INSERT INTO `tp_region` VALUES (242, '惠州市', 20);
INSERT INTO `tp_region` VALUES (243, '梅州市', 20);
INSERT INTO `tp_region` VALUES (244, '汕尾市', 20);
INSERT INTO `tp_region` VALUES (245, '河源市', 20);
INSERT INTO `tp_region` VALUES (246, '阳江市', 20);
INSERT INTO `tp_region` VALUES (247, '清远市', 20);
INSERT INTO `tp_region` VALUES (248, '东莞市', 20);
INSERT INTO `tp_region` VALUES (249, '中山市', 20);
INSERT INTO `tp_region` VALUES (250, '潮州市', 20);
INSERT INTO `tp_region` VALUES (251, '揭阳市', 20);
INSERT INTO `tp_region` VALUES (252, '云浮市', 20);
INSERT INTO `tp_region` VALUES (253, '南宁市', 21);
INSERT INTO `tp_region` VALUES (254, '柳州市', 21);
INSERT INTO `tp_region` VALUES (255, '桂林市', 21);
INSERT INTO `tp_region` VALUES (256, '梧州市', 21);
INSERT INTO `tp_region` VALUES (257, '北海市', 21);
INSERT INTO `tp_region` VALUES (258, '防城港市', 21);
INSERT INTO `tp_region` VALUES (259, '钦州市', 21);
INSERT INTO `tp_region` VALUES (260, '贵港市', 21);
INSERT INTO `tp_region` VALUES (261, '玉林市', 21);
INSERT INTO `tp_region` VALUES (262, '百色市', 21);
INSERT INTO `tp_region` VALUES (263, '贺州市', 21);
INSERT INTO `tp_region` VALUES (264, '河池市', 21);
INSERT INTO `tp_region` VALUES (265, '来宾市', 21);
INSERT INTO `tp_region` VALUES (266, '崇左市', 21);
INSERT INTO `tp_region` VALUES (267, '海口市', 22);
INSERT INTO `tp_region` VALUES (268, '三亚市', 22);
INSERT INTO `tp_region` VALUES (269, '省直辖县级行政区划', 22);
INSERT INTO `tp_region` VALUES (270, '市辖区', 23);
INSERT INTO `tp_region` VALUES (271, '县', 23);
INSERT INTO `tp_region` VALUES (273, '成都市', 24);
INSERT INTO `tp_region` VALUES (274, '自贡市', 24);
INSERT INTO `tp_region` VALUES (275, '攀枝花市', 24);
INSERT INTO `tp_region` VALUES (276, '泸州市', 24);
INSERT INTO `tp_region` VALUES (277, '德阳市', 24);
INSERT INTO `tp_region` VALUES (278, '绵阳市', 24);
INSERT INTO `tp_region` VALUES (279, '广元市', 24);
INSERT INTO `tp_region` VALUES (280, '遂宁市', 24);
INSERT INTO `tp_region` VALUES (281, '内江市', 24);
INSERT INTO `tp_region` VALUES (282, '乐山市', 24);
INSERT INTO `tp_region` VALUES (283, '南充市', 24);
INSERT INTO `tp_region` VALUES (284, '眉山市', 24);
INSERT INTO `tp_region` VALUES (285, '宜宾市', 24);
INSERT INTO `tp_region` VALUES (286, '广安市', 24);
INSERT INTO `tp_region` VALUES (287, '达州市', 24);
INSERT INTO `tp_region` VALUES (288, '雅安市', 24);
INSERT INTO `tp_region` VALUES (289, '巴中市', 24);
INSERT INTO `tp_region` VALUES (290, '资阳市', 24);
INSERT INTO `tp_region` VALUES (291, '阿坝藏族羌族自治州', 24);
INSERT INTO `tp_region` VALUES (292, '甘孜藏族自治州', 24);
INSERT INTO `tp_region` VALUES (293, '凉山彝族自治州', 24);
INSERT INTO `tp_region` VALUES (294, '贵阳市', 25);
INSERT INTO `tp_region` VALUES (295, '六盘水市', 25);
INSERT INTO `tp_region` VALUES (296, '遵义市', 25);
INSERT INTO `tp_region` VALUES (297, '安顺市', 25);
INSERT INTO `tp_region` VALUES (298, '铜仁地区', 25);
INSERT INTO `tp_region` VALUES (299, '黔西南布依族苗族自治州', 25);
INSERT INTO `tp_region` VALUES (300, '毕节地区', 25);
INSERT INTO `tp_region` VALUES (301, '黔东南苗族侗族自治州', 25);
INSERT INTO `tp_region` VALUES (302, '黔南布依族苗族自治州', 25);
INSERT INTO `tp_region` VALUES (303, '昆明市', 26);
INSERT INTO `tp_region` VALUES (304, '曲靖市', 26);
INSERT INTO `tp_region` VALUES (305, '玉溪市', 26);
INSERT INTO `tp_region` VALUES (306, '保山市', 26);
INSERT INTO `tp_region` VALUES (307, '昭通市', 26);
INSERT INTO `tp_region` VALUES (308, '丽江市', 26);
INSERT INTO `tp_region` VALUES (309, '普洱市', 26);
INSERT INTO `tp_region` VALUES (310, '临沧市', 26);
INSERT INTO `tp_region` VALUES (311, '楚雄彝族自治州', 26);
INSERT INTO `tp_region` VALUES (312, '红河哈尼族彝族自治州', 26);
INSERT INTO `tp_region` VALUES (313, '文山壮族苗族自治州', 26);
INSERT INTO `tp_region` VALUES (314, '西双版纳傣族自治州', 26);
INSERT INTO `tp_region` VALUES (315, '大理白族自治州', 26);
INSERT INTO `tp_region` VALUES (316, '德宏傣族景颇族自治州', 26);
INSERT INTO `tp_region` VALUES (317, '怒江傈僳族自治州', 26);
INSERT INTO `tp_region` VALUES (318, '迪庆藏族自治州', 26);
INSERT INTO `tp_region` VALUES (319, '拉萨市', 27);
INSERT INTO `tp_region` VALUES (320, '昌都地区', 27);
INSERT INTO `tp_region` VALUES (321, '山南地区', 27);
INSERT INTO `tp_region` VALUES (322, '日喀则地区', 27);
INSERT INTO `tp_region` VALUES (323, '那曲地区', 27);
INSERT INTO `tp_region` VALUES (324, '阿里地区', 27);
INSERT INTO `tp_region` VALUES (325, '林芝地区', 27);
INSERT INTO `tp_region` VALUES (326, '西安市', 28);
INSERT INTO `tp_region` VALUES (327, '铜川市', 28);
INSERT INTO `tp_region` VALUES (328, '宝鸡市', 28);
INSERT INTO `tp_region` VALUES (329, '咸阳市', 28);
INSERT INTO `tp_region` VALUES (330, '渭南市', 28);
INSERT INTO `tp_region` VALUES (331, '延安市', 28);
INSERT INTO `tp_region` VALUES (332, '汉中市', 28);
INSERT INTO `tp_region` VALUES (333, '榆林市', 28);
INSERT INTO `tp_region` VALUES (334, '安康市', 28);
INSERT INTO `tp_region` VALUES (335, '商洛市', 28);
INSERT INTO `tp_region` VALUES (336, '兰州市', 29);
INSERT INTO `tp_region` VALUES (337, '嘉峪关市', 29);
INSERT INTO `tp_region` VALUES (338, '金昌市', 29);
INSERT INTO `tp_region` VALUES (339, '白银市', 29);
INSERT INTO `tp_region` VALUES (340, '天水市', 29);
INSERT INTO `tp_region` VALUES (341, '武威市', 29);
INSERT INTO `tp_region` VALUES (342, '张掖市', 29);
INSERT INTO `tp_region` VALUES (343, '平凉市', 29);
INSERT INTO `tp_region` VALUES (344, '酒泉市', 29);
INSERT INTO `tp_region` VALUES (345, '庆阳市', 29);
INSERT INTO `tp_region` VALUES (346, '定西市', 29);
INSERT INTO `tp_region` VALUES (347, '陇南市', 29);
INSERT INTO `tp_region` VALUES (348, '临夏回族自治州', 29);
INSERT INTO `tp_region` VALUES (349, '甘南藏族自治州', 29);
INSERT INTO `tp_region` VALUES (350, '西宁市', 30);
INSERT INTO `tp_region` VALUES (351, '海东地区', 30);
INSERT INTO `tp_region` VALUES (352, '海北藏族自治州', 30);
INSERT INTO `tp_region` VALUES (353, '黄南藏族自治州', 30);
INSERT INTO `tp_region` VALUES (354, '海南藏族自治州', 30);
INSERT INTO `tp_region` VALUES (355, '果洛藏族自治州', 30);
INSERT INTO `tp_region` VALUES (356, '玉树藏族自治州', 30);
INSERT INTO `tp_region` VALUES (357, '海西蒙古族藏族自治州', 30);
INSERT INTO `tp_region` VALUES (358, '银川市', 31);
INSERT INTO `tp_region` VALUES (359, '石嘴山市', 31);
INSERT INTO `tp_region` VALUES (360, '吴忠市', 31);
INSERT INTO `tp_region` VALUES (361, '固原市', 31);
INSERT INTO `tp_region` VALUES (362, '中卫市', 31);
INSERT INTO `tp_region` VALUES (363, '乌鲁木齐市', 32);
INSERT INTO `tp_region` VALUES (364, '克拉玛依市', 32);
INSERT INTO `tp_region` VALUES (365, '吐鲁番地区', 32);
INSERT INTO `tp_region` VALUES (366, '哈密地区', 32);
INSERT INTO `tp_region` VALUES (367, '昌吉回族自治州', 32);
INSERT INTO `tp_region` VALUES (368, '博尔塔拉蒙古自治州', 32);
INSERT INTO `tp_region` VALUES (369, '巴音郭楞蒙古自治州', 32);
INSERT INTO `tp_region` VALUES (370, '阿克苏地区', 32);
INSERT INTO `tp_region` VALUES (371, '克孜勒苏柯尔克孜自治州', 32);
INSERT INTO `tp_region` VALUES (372, '喀什地区', 32);
INSERT INTO `tp_region` VALUES (373, '和田地区', 32);
INSERT INTO `tp_region` VALUES (374, '伊犁哈萨克自治州', 32);
INSERT INTO `tp_region` VALUES (375, '塔城地区', 32);
INSERT INTO `tp_region` VALUES (376, '阿勒泰地区', 32);
INSERT INTO `tp_region` VALUES (377, '自治区直辖县级行政区划', 32);
INSERT INTO `tp_region` VALUES (378, '东城区', 33);
INSERT INTO `tp_region` VALUES (379, '西城区', 33);
INSERT INTO `tp_region` VALUES (382, '朝阳区', 33);
INSERT INTO `tp_region` VALUES (383, '丰台区', 33);
INSERT INTO `tp_region` VALUES (384, '石景山区', 33);
INSERT INTO `tp_region` VALUES (385, '海淀区', 33);
INSERT INTO `tp_region` VALUES (386, '门头沟区', 33);
INSERT INTO `tp_region` VALUES (387, '房山区', 33);
INSERT INTO `tp_region` VALUES (388, '通州区', 33);
INSERT INTO `tp_region` VALUES (389, '顺义区', 33);
INSERT INTO `tp_region` VALUES (390, '昌平区', 33);
INSERT INTO `tp_region` VALUES (391, '大兴区', 33);
INSERT INTO `tp_region` VALUES (392, '怀柔区', 33);
INSERT INTO `tp_region` VALUES (393, '平谷区', 33);
INSERT INTO `tp_region` VALUES (394, '密云县', 34);
INSERT INTO `tp_region` VALUES (395, '延庆县', 34);
INSERT INTO `tp_region` VALUES (396, '和平区', 35);
INSERT INTO `tp_region` VALUES (397, '河东区', 35);
INSERT INTO `tp_region` VALUES (398, '河西区', 35);
INSERT INTO `tp_region` VALUES (399, '南开区', 35);
INSERT INTO `tp_region` VALUES (400, '河北区', 35);
INSERT INTO `tp_region` VALUES (401, '红桥区', 35);
INSERT INTO `tp_region` VALUES (404, '滨海新区', 35);
INSERT INTO `tp_region` VALUES (405, '东丽区', 35);
INSERT INTO `tp_region` VALUES (406, '西青区', 35);
INSERT INTO `tp_region` VALUES (407, '津南区', 35);
INSERT INTO `tp_region` VALUES (408, '北辰区', 35);
INSERT INTO `tp_region` VALUES (409, '武清区', 35);
INSERT INTO `tp_region` VALUES (410, '宝坻区', 35);
INSERT INTO `tp_region` VALUES (411, '宁河县', 36);
INSERT INTO `tp_region` VALUES (412, '静海县', 36);
INSERT INTO `tp_region` VALUES (413, '蓟县', 36);
INSERT INTO `tp_region` VALUES (414, '市辖区', 37);
INSERT INTO `tp_region` VALUES (415, '长安区', 37);
INSERT INTO `tp_region` VALUES (416, '桥东区', 37);
INSERT INTO `tp_region` VALUES (417, '桥西区', 37);
INSERT INTO `tp_region` VALUES (418, '新华区', 37);
INSERT INTO `tp_region` VALUES (419, '井陉矿区', 37);
INSERT INTO `tp_region` VALUES (420, '裕华区', 37);
INSERT INTO `tp_region` VALUES (421, '井陉县', 37);
INSERT INTO `tp_region` VALUES (422, '正定县', 37);
INSERT INTO `tp_region` VALUES (423, '栾城县', 37);
INSERT INTO `tp_region` VALUES (424, '行唐县', 37);
INSERT INTO `tp_region` VALUES (425, '灵寿县', 37);
INSERT INTO `tp_region` VALUES (426, '高邑县', 37);
INSERT INTO `tp_region` VALUES (427, '深泽县', 37);
INSERT INTO `tp_region` VALUES (428, '赞皇县', 37);
INSERT INTO `tp_region` VALUES (429, '无极县', 37);
INSERT INTO `tp_region` VALUES (430, '平山县', 37);
INSERT INTO `tp_region` VALUES (431, '元氏县', 37);
INSERT INTO `tp_region` VALUES (432, '赵县', 37);
INSERT INTO `tp_region` VALUES (433, '辛集市', 37);
INSERT INTO `tp_region` VALUES (434, '藁城市', 37);
INSERT INTO `tp_region` VALUES (435, '晋州市', 37);
INSERT INTO `tp_region` VALUES (436, '新乐市', 37);
INSERT INTO `tp_region` VALUES (437, '鹿泉市', 37);
INSERT INTO `tp_region` VALUES (438, '市辖区', 38);
INSERT INTO `tp_region` VALUES (439, '路南区', 38);
INSERT INTO `tp_region` VALUES (440, '路北区', 38);
INSERT INTO `tp_region` VALUES (441, '古冶区', 38);
INSERT INTO `tp_region` VALUES (442, '开平区', 38);
INSERT INTO `tp_region` VALUES (443, '丰南区', 38);
INSERT INTO `tp_region` VALUES (444, '丰润区', 38);
INSERT INTO `tp_region` VALUES (445, '滦县', 38);
INSERT INTO `tp_region` VALUES (446, '滦南县', 38);
INSERT INTO `tp_region` VALUES (447, '乐亭县', 38);
INSERT INTO `tp_region` VALUES (448, '迁西县', 38);
INSERT INTO `tp_region` VALUES (449, '玉田县', 38);
INSERT INTO `tp_region` VALUES (450, '唐海县', 38);
INSERT INTO `tp_region` VALUES (451, '遵化市', 38);
INSERT INTO `tp_region` VALUES (452, '迁安市', 38);
INSERT INTO `tp_region` VALUES (453, '市辖区', 39);
INSERT INTO `tp_region` VALUES (454, '海港区', 39);
INSERT INTO `tp_region` VALUES (455, '山海关区', 39);
INSERT INTO `tp_region` VALUES (456, '北戴河区', 39);
INSERT INTO `tp_region` VALUES (457, '青龙满族自治县', 39);
INSERT INTO `tp_region` VALUES (458, '昌黎县', 39);
INSERT INTO `tp_region` VALUES (459, '抚宁县', 39);
INSERT INTO `tp_region` VALUES (460, '卢龙县', 39);
INSERT INTO `tp_region` VALUES (461, '市辖区', 40);
INSERT INTO `tp_region` VALUES (462, '邯山区', 40);
INSERT INTO `tp_region` VALUES (463, '丛台区', 40);
INSERT INTO `tp_region` VALUES (464, '复兴区', 40);
INSERT INTO `tp_region` VALUES (465, '峰峰矿区', 40);
INSERT INTO `tp_region` VALUES (466, '邯郸县', 40);
INSERT INTO `tp_region` VALUES (467, '临漳县', 40);
INSERT INTO `tp_region` VALUES (468, '成安县', 40);
INSERT INTO `tp_region` VALUES (469, '大名县', 40);
INSERT INTO `tp_region` VALUES (470, '涉县', 40);
INSERT INTO `tp_region` VALUES (471, '磁县', 40);
INSERT INTO `tp_region` VALUES (472, '肥乡县', 40);
INSERT INTO `tp_region` VALUES (473, '永年县', 40);
INSERT INTO `tp_region` VALUES (474, '邱县', 40);
INSERT INTO `tp_region` VALUES (475, '鸡泽县', 40);
INSERT INTO `tp_region` VALUES (476, '广平县', 40);
INSERT INTO `tp_region` VALUES (477, '馆陶县', 40);
INSERT INTO `tp_region` VALUES (478, '魏县', 40);
INSERT INTO `tp_region` VALUES (479, '曲周县', 40);
INSERT INTO `tp_region` VALUES (480, '武安市', 40);
INSERT INTO `tp_region` VALUES (481, '市辖区', 41);
INSERT INTO `tp_region` VALUES (482, '桥东区', 41);
INSERT INTO `tp_region` VALUES (483, '桥西区', 41);
INSERT INTO `tp_region` VALUES (484, '邢台县', 41);
INSERT INTO `tp_region` VALUES (485, '临城县', 41);
INSERT INTO `tp_region` VALUES (486, '内丘县', 41);
INSERT INTO `tp_region` VALUES (487, '柏乡县', 41);
INSERT INTO `tp_region` VALUES (488, '隆尧县', 41);
INSERT INTO `tp_region` VALUES (489, '任县', 41);
INSERT INTO `tp_region` VALUES (490, '南和县', 41);
INSERT INTO `tp_region` VALUES (491, '宁晋县', 41);
INSERT INTO `tp_region` VALUES (492, '巨鹿县', 41);
INSERT INTO `tp_region` VALUES (493, '新河县', 41);
INSERT INTO `tp_region` VALUES (494, '广宗县', 41);
INSERT INTO `tp_region` VALUES (495, '平乡县', 41);
INSERT INTO `tp_region` VALUES (496, '威县', 41);
INSERT INTO `tp_region` VALUES (497, '清河县', 41);
INSERT INTO `tp_region` VALUES (498, '临西县', 41);
INSERT INTO `tp_region` VALUES (499, '南宫市', 41);
INSERT INTO `tp_region` VALUES (500, '沙河市', 41);
INSERT INTO `tp_region` VALUES (501, '市辖区', 42);
INSERT INTO `tp_region` VALUES (502, '新市区', 42);
INSERT INTO `tp_region` VALUES (503, '北市区', 42);
INSERT INTO `tp_region` VALUES (504, '南市区', 42);
INSERT INTO `tp_region` VALUES (505, '满城县', 42);
INSERT INTO `tp_region` VALUES (506, '清苑县', 42);
INSERT INTO `tp_region` VALUES (507, '涞水县', 42);
INSERT INTO `tp_region` VALUES (508, '阜平县', 42);
INSERT INTO `tp_region` VALUES (509, '徐水县', 42);
INSERT INTO `tp_region` VALUES (510, '定兴县', 42);
INSERT INTO `tp_region` VALUES (511, '唐县', 42);
INSERT INTO `tp_region` VALUES (512, '高阳县', 42);
INSERT INTO `tp_region` VALUES (513, '容城县', 42);
INSERT INTO `tp_region` VALUES (514, '涞源县', 42);
INSERT INTO `tp_region` VALUES (515, '望都县', 42);
INSERT INTO `tp_region` VALUES (516, '安新县', 42);
INSERT INTO `tp_region` VALUES (517, '易县', 42);
INSERT INTO `tp_region` VALUES (518, '曲阳县', 42);
INSERT INTO `tp_region` VALUES (519, '蠡县', 42);
INSERT INTO `tp_region` VALUES (520, '顺平县', 42);
INSERT INTO `tp_region` VALUES (521, '博野县', 42);
INSERT INTO `tp_region` VALUES (522, '雄县', 42);
INSERT INTO `tp_region` VALUES (523, '涿州市', 42);
INSERT INTO `tp_region` VALUES (524, '定州市', 42);
INSERT INTO `tp_region` VALUES (525, '安国市', 42);
INSERT INTO `tp_region` VALUES (526, '高碑店市', 42);
INSERT INTO `tp_region` VALUES (527, '市辖区', 43);
INSERT INTO `tp_region` VALUES (528, '桥东区', 43);
INSERT INTO `tp_region` VALUES (529, '桥西区', 43);
INSERT INTO `tp_region` VALUES (530, '宣化区', 43);
INSERT INTO `tp_region` VALUES (531, '下花园区', 43);
INSERT INTO `tp_region` VALUES (532, '宣化县', 43);
INSERT INTO `tp_region` VALUES (533, '张北县', 43);
INSERT INTO `tp_region` VALUES (534, '康保县', 43);
INSERT INTO `tp_region` VALUES (535, '沽源县', 43);
INSERT INTO `tp_region` VALUES (536, '尚义县', 43);
INSERT INTO `tp_region` VALUES (537, '蔚县', 43);
INSERT INTO `tp_region` VALUES (538, '阳原县', 43);
INSERT INTO `tp_region` VALUES (539, '怀安县', 43);
INSERT INTO `tp_region` VALUES (540, '万全县', 43);
INSERT INTO `tp_region` VALUES (541, '怀来县', 43);
INSERT INTO `tp_region` VALUES (542, '涿鹿县', 43);
INSERT INTO `tp_region` VALUES (543, '赤城县', 43);
INSERT INTO `tp_region` VALUES (544, '崇礼县', 43);
INSERT INTO `tp_region` VALUES (545, '市辖区', 44);
INSERT INTO `tp_region` VALUES (546, '双桥区', 44);
INSERT INTO `tp_region` VALUES (547, '双滦区', 44);
INSERT INTO `tp_region` VALUES (548, '鹰手营子矿区', 44);
INSERT INTO `tp_region` VALUES (549, '承德县', 44);
INSERT INTO `tp_region` VALUES (550, '兴隆县', 44);
INSERT INTO `tp_region` VALUES (551, '平泉县', 44);
INSERT INTO `tp_region` VALUES (552, '滦平县', 44);
INSERT INTO `tp_region` VALUES (553, '隆化县', 44);
INSERT INTO `tp_region` VALUES (554, '丰宁满族自治县', 44);
INSERT INTO `tp_region` VALUES (555, '宽城满族自治县', 44);
INSERT INTO `tp_region` VALUES (556, '围场满族蒙古族自治县', 44);
INSERT INTO `tp_region` VALUES (557, '市辖区', 45);
INSERT INTO `tp_region` VALUES (558, '新华区', 45);
INSERT INTO `tp_region` VALUES (559, '运河区', 45);
INSERT INTO `tp_region` VALUES (560, '沧县', 45);
INSERT INTO `tp_region` VALUES (561, '青县', 45);
INSERT INTO `tp_region` VALUES (562, '东光县', 45);
INSERT INTO `tp_region` VALUES (563, '海兴县', 45);
INSERT INTO `tp_region` VALUES (564, '盐山县', 45);
INSERT INTO `tp_region` VALUES (565, '肃宁县', 45);
INSERT INTO `tp_region` VALUES (566, '南皮县', 45);
INSERT INTO `tp_region` VALUES (567, '吴桥县', 45);
INSERT INTO `tp_region` VALUES (568, '献县', 45);
INSERT INTO `tp_region` VALUES (569, '孟村回族自治县', 45);
INSERT INTO `tp_region` VALUES (570, '泊头市', 45);
INSERT INTO `tp_region` VALUES (571, '任丘市', 45);
INSERT INTO `tp_region` VALUES (572, '黄骅市', 45);
INSERT INTO `tp_region` VALUES (573, '河间市', 45);
INSERT INTO `tp_region` VALUES (574, '市辖区', 46);
INSERT INTO `tp_region` VALUES (575, '安次区', 46);
INSERT INTO `tp_region` VALUES (576, '广阳区', 46);
INSERT INTO `tp_region` VALUES (577, '固安县', 46);
INSERT INTO `tp_region` VALUES (578, '永清县', 46);
INSERT INTO `tp_region` VALUES (579, '香河县', 46);
INSERT INTO `tp_region` VALUES (580, '大城县', 46);
INSERT INTO `tp_region` VALUES (581, '文安县', 46);
INSERT INTO `tp_region` VALUES (582, '大厂回族自治县', 46);
INSERT INTO `tp_region` VALUES (583, '霸州市', 46);
INSERT INTO `tp_region` VALUES (584, '三河市', 46);
INSERT INTO `tp_region` VALUES (585, '市辖区', 47);
INSERT INTO `tp_region` VALUES (586, '桃城区', 47);
INSERT INTO `tp_region` VALUES (587, '枣强县', 47);
INSERT INTO `tp_region` VALUES (588, '武邑县', 47);
INSERT INTO `tp_region` VALUES (589, '武强县', 47);
INSERT INTO `tp_region` VALUES (590, '饶阳县', 47);
INSERT INTO `tp_region` VALUES (591, '安平县', 47);
INSERT INTO `tp_region` VALUES (592, '故城县', 47);
INSERT INTO `tp_region` VALUES (593, '景县', 47);
INSERT INTO `tp_region` VALUES (594, '阜城县', 47);
INSERT INTO `tp_region` VALUES (595, '冀州市', 47);
INSERT INTO `tp_region` VALUES (596, '深州市', 47);
INSERT INTO `tp_region` VALUES (597, '市辖区', 48);
INSERT INTO `tp_region` VALUES (598, '小店区', 48);
INSERT INTO `tp_region` VALUES (599, '迎泽区', 48);
INSERT INTO `tp_region` VALUES (600, '杏花岭区', 48);
INSERT INTO `tp_region` VALUES (601, '尖草坪区', 48);
INSERT INTO `tp_region` VALUES (602, '万柏林区', 48);
INSERT INTO `tp_region` VALUES (603, '晋源区', 48);
INSERT INTO `tp_region` VALUES (604, '清徐县', 48);
INSERT INTO `tp_region` VALUES (605, '阳曲县', 48);
INSERT INTO `tp_region` VALUES (606, '娄烦县', 48);
INSERT INTO `tp_region` VALUES (607, '古交市', 48);
INSERT INTO `tp_region` VALUES (608, '市辖区', 49);
INSERT INTO `tp_region` VALUES (609, '城区', 49);
INSERT INTO `tp_region` VALUES (610, '矿区', 49);
INSERT INTO `tp_region` VALUES (611, '南郊区', 49);
INSERT INTO `tp_region` VALUES (612, '新荣区', 49);
INSERT INTO `tp_region` VALUES (613, '阳高县', 49);
INSERT INTO `tp_region` VALUES (614, '天镇县', 49);
INSERT INTO `tp_region` VALUES (615, '广灵县', 49);
INSERT INTO `tp_region` VALUES (616, '灵丘县', 49);
INSERT INTO `tp_region` VALUES (617, '浑源县', 49);
INSERT INTO `tp_region` VALUES (618, '左云县', 49);
INSERT INTO `tp_region` VALUES (619, '大同县', 49);
INSERT INTO `tp_region` VALUES (620, '市辖区', 50);
INSERT INTO `tp_region` VALUES (621, '城区', 50);
INSERT INTO `tp_region` VALUES (622, '矿区', 50);
INSERT INTO `tp_region` VALUES (623, '郊区', 50);
INSERT INTO `tp_region` VALUES (624, '平定县', 50);
INSERT INTO `tp_region` VALUES (625, '盂县', 50);
INSERT INTO `tp_region` VALUES (626, '市辖区', 51);
INSERT INTO `tp_region` VALUES (627, '城区', 51);
INSERT INTO `tp_region` VALUES (628, '郊区', 51);
INSERT INTO `tp_region` VALUES (629, '长治县', 51);
INSERT INTO `tp_region` VALUES (630, '襄垣县', 51);
INSERT INTO `tp_region` VALUES (631, '屯留县', 51);
INSERT INTO `tp_region` VALUES (632, '平顺县', 51);
INSERT INTO `tp_region` VALUES (633, '黎城县', 51);
INSERT INTO `tp_region` VALUES (634, '壶关县', 51);
INSERT INTO `tp_region` VALUES (635, '长子县', 51);
INSERT INTO `tp_region` VALUES (636, '武乡县', 51);
INSERT INTO `tp_region` VALUES (637, '沁县', 51);
INSERT INTO `tp_region` VALUES (638, '沁源县', 51);
INSERT INTO `tp_region` VALUES (639, '潞城市', 51);
INSERT INTO `tp_region` VALUES (640, '市辖区', 52);
INSERT INTO `tp_region` VALUES (641, '城区', 52);
INSERT INTO `tp_region` VALUES (642, '沁水县', 52);
INSERT INTO `tp_region` VALUES (643, '阳城县', 52);
INSERT INTO `tp_region` VALUES (644, '陵川县', 52);
INSERT INTO `tp_region` VALUES (645, '泽州县', 52);
INSERT INTO `tp_region` VALUES (646, '高平市', 52);
INSERT INTO `tp_region` VALUES (647, '市辖区', 53);
INSERT INTO `tp_region` VALUES (648, '朔城区', 53);
INSERT INTO `tp_region` VALUES (649, '平鲁区', 53);
INSERT INTO `tp_region` VALUES (650, '山阴县', 53);
INSERT INTO `tp_region` VALUES (651, '应县', 53);
INSERT INTO `tp_region` VALUES (652, '右玉县', 53);
INSERT INTO `tp_region` VALUES (653, '怀仁县', 53);
INSERT INTO `tp_region` VALUES (654, '市辖区', 54);
INSERT INTO `tp_region` VALUES (655, '榆次区', 54);
INSERT INTO `tp_region` VALUES (656, '榆社县', 54);
INSERT INTO `tp_region` VALUES (657, '左权县', 54);
INSERT INTO `tp_region` VALUES (658, '和顺县', 54);
INSERT INTO `tp_region` VALUES (659, '昔阳县', 54);
INSERT INTO `tp_region` VALUES (660, '寿阳县', 54);
INSERT INTO `tp_region` VALUES (661, '太谷县', 54);
INSERT INTO `tp_region` VALUES (662, '祁县', 54);
INSERT INTO `tp_region` VALUES (663, '平遥县', 54);
INSERT INTO `tp_region` VALUES (664, '灵石县', 54);
INSERT INTO `tp_region` VALUES (665, '介休市', 54);
INSERT INTO `tp_region` VALUES (666, '市辖区', 55);
INSERT INTO `tp_region` VALUES (667, '盐湖区', 55);
INSERT INTO `tp_region` VALUES (668, '临猗县', 55);
INSERT INTO `tp_region` VALUES (669, '万荣县', 55);
INSERT INTO `tp_region` VALUES (670, '闻喜县', 55);
INSERT INTO `tp_region` VALUES (671, '稷山县', 55);
INSERT INTO `tp_region` VALUES (672, '新绛县', 55);
INSERT INTO `tp_region` VALUES (673, '绛县', 55);
INSERT INTO `tp_region` VALUES (674, '垣曲县', 55);
INSERT INTO `tp_region` VALUES (675, '夏县', 55);
INSERT INTO `tp_region` VALUES (676, '平陆县', 55);
INSERT INTO `tp_region` VALUES (677, '芮城县', 55);
INSERT INTO `tp_region` VALUES (678, '永济市', 55);
INSERT INTO `tp_region` VALUES (679, '河津市', 55);
INSERT INTO `tp_region` VALUES (680, '市辖区', 56);
INSERT INTO `tp_region` VALUES (681, '忻府区', 56);
INSERT INTO `tp_region` VALUES (682, '定襄县', 56);
INSERT INTO `tp_region` VALUES (683, '五台县', 56);
INSERT INTO `tp_region` VALUES (684, '代县', 56);
INSERT INTO `tp_region` VALUES (685, '繁峙县', 56);
INSERT INTO `tp_region` VALUES (686, '宁武县', 56);
INSERT INTO `tp_region` VALUES (687, '静乐县', 56);
INSERT INTO `tp_region` VALUES (688, '神池县', 56);
INSERT INTO `tp_region` VALUES (689, '五寨县', 56);
INSERT INTO `tp_region` VALUES (690, '岢岚县', 56);
INSERT INTO `tp_region` VALUES (691, '河曲县', 56);
INSERT INTO `tp_region` VALUES (692, '保德县', 56);
INSERT INTO `tp_region` VALUES (693, '偏关县', 56);
INSERT INTO `tp_region` VALUES (694, '原平市', 56);
INSERT INTO `tp_region` VALUES (695, '市辖区', 57);
INSERT INTO `tp_region` VALUES (696, '尧都区', 57);
INSERT INTO `tp_region` VALUES (697, '曲沃县', 57);
INSERT INTO `tp_region` VALUES (698, '翼城县', 57);
INSERT INTO `tp_region` VALUES (699, '襄汾县', 57);
INSERT INTO `tp_region` VALUES (700, '洪洞县', 57);
INSERT INTO `tp_region` VALUES (701, '古县', 57);
INSERT INTO `tp_region` VALUES (702, '安泽县', 57);
INSERT INTO `tp_region` VALUES (703, '浮山县', 57);
INSERT INTO `tp_region` VALUES (704, '吉县', 57);
INSERT INTO `tp_region` VALUES (705, '乡宁县', 57);
INSERT INTO `tp_region` VALUES (706, '大宁县', 57);
INSERT INTO `tp_region` VALUES (707, '隰县', 57);
INSERT INTO `tp_region` VALUES (708, '永和县', 57);
INSERT INTO `tp_region` VALUES (709, '蒲县', 57);
INSERT INTO `tp_region` VALUES (710, '汾西县', 57);
INSERT INTO `tp_region` VALUES (711, '侯马市', 57);
INSERT INTO `tp_region` VALUES (712, '霍州市', 57);
INSERT INTO `tp_region` VALUES (713, '市辖区', 58);
INSERT INTO `tp_region` VALUES (714, '离石区', 58);
INSERT INTO `tp_region` VALUES (715, '文水县', 58);
INSERT INTO `tp_region` VALUES (716, '交城县', 58);
INSERT INTO `tp_region` VALUES (717, '兴县', 58);
INSERT INTO `tp_region` VALUES (718, '临县', 58);
INSERT INTO `tp_region` VALUES (719, '柳林县', 58);
INSERT INTO `tp_region` VALUES (720, '石楼县', 58);
INSERT INTO `tp_region` VALUES (721, '岚县', 58);
INSERT INTO `tp_region` VALUES (722, '方山县', 58);
INSERT INTO `tp_region` VALUES (723, '中阳县', 58);
INSERT INTO `tp_region` VALUES (724, '交口县', 58);
INSERT INTO `tp_region` VALUES (725, '孝义市', 58);
INSERT INTO `tp_region` VALUES (726, '汾阳市', 58);
INSERT INTO `tp_region` VALUES (727, '市辖区', 59);
INSERT INTO `tp_region` VALUES (728, '新城区', 59);
INSERT INTO `tp_region` VALUES (729, '回民区', 59);
INSERT INTO `tp_region` VALUES (730, '玉泉区', 59);
INSERT INTO `tp_region` VALUES (731, '赛罕区', 59);
INSERT INTO `tp_region` VALUES (732, '土默特左旗', 59);
INSERT INTO `tp_region` VALUES (733, '托克托县', 59);
INSERT INTO `tp_region` VALUES (734, '和林格尔县', 59);
INSERT INTO `tp_region` VALUES (735, '清水河县', 59);
INSERT INTO `tp_region` VALUES (736, '武川县', 59);
INSERT INTO `tp_region` VALUES (737, '市辖区', 60);
INSERT INTO `tp_region` VALUES (738, '东河区', 60);
INSERT INTO `tp_region` VALUES (739, '昆都仑区', 60);
INSERT INTO `tp_region` VALUES (740, '青山区', 60);
INSERT INTO `tp_region` VALUES (741, '石拐区', 60);
INSERT INTO `tp_region` VALUES (742, '白云鄂博矿区', 60);
INSERT INTO `tp_region` VALUES (743, '九原区', 60);
INSERT INTO `tp_region` VALUES (744, '土默特右旗', 60);
INSERT INTO `tp_region` VALUES (745, '固阳县', 60);
INSERT INTO `tp_region` VALUES (746, '达尔罕茂明安联合旗', 60);
INSERT INTO `tp_region` VALUES (747, '市辖区', 61);
INSERT INTO `tp_region` VALUES (748, '海勃湾区', 61);
INSERT INTO `tp_region` VALUES (749, '海南区', 61);
INSERT INTO `tp_region` VALUES (750, '乌达区', 61);
INSERT INTO `tp_region` VALUES (751, '市辖区', 62);
INSERT INTO `tp_region` VALUES (752, '红山区', 62);
INSERT INTO `tp_region` VALUES (753, '元宝山区', 62);
INSERT INTO `tp_region` VALUES (754, '松山区', 62);
INSERT INTO `tp_region` VALUES (755, '阿鲁科尔沁旗', 62);
INSERT INTO `tp_region` VALUES (756, '巴林左旗', 62);
INSERT INTO `tp_region` VALUES (757, '巴林右旗', 62);
INSERT INTO `tp_region` VALUES (758, '林西县', 62);
INSERT INTO `tp_region` VALUES (759, '克什克腾旗', 62);
INSERT INTO `tp_region` VALUES (760, '翁牛特旗', 62);
INSERT INTO `tp_region` VALUES (761, '喀喇沁旗', 62);
INSERT INTO `tp_region` VALUES (762, '宁城县', 62);
INSERT INTO `tp_region` VALUES (763, '敖汉旗', 62);
INSERT INTO `tp_region` VALUES (764, '市辖区', 63);
INSERT INTO `tp_region` VALUES (765, '科尔沁区', 63);
INSERT INTO `tp_region` VALUES (766, '科尔沁左翼中旗', 63);
INSERT INTO `tp_region` VALUES (767, '科尔沁左翼后旗', 63);
INSERT INTO `tp_region` VALUES (768, '开鲁县', 63);
INSERT INTO `tp_region` VALUES (769, '库伦旗', 63);
INSERT INTO `tp_region` VALUES (770, '奈曼旗', 63);
INSERT INTO `tp_region` VALUES (771, '扎鲁特旗', 63);
INSERT INTO `tp_region` VALUES (772, '霍林郭勒市', 63);
INSERT INTO `tp_region` VALUES (773, '东胜区', 64);
INSERT INTO `tp_region` VALUES (774, '达拉特旗', 64);
INSERT INTO `tp_region` VALUES (775, '准格尔旗', 64);
INSERT INTO `tp_region` VALUES (776, '鄂托克前旗', 64);
INSERT INTO `tp_region` VALUES (777, '鄂托克旗', 64);
INSERT INTO `tp_region` VALUES (778, '杭锦旗', 64);
INSERT INTO `tp_region` VALUES (779, '乌审旗', 64);
INSERT INTO `tp_region` VALUES (780, '伊金霍洛旗', 64);
INSERT INTO `tp_region` VALUES (781, '市辖区', 65);
INSERT INTO `tp_region` VALUES (782, '海拉尔区', 65);
INSERT INTO `tp_region` VALUES (783, '阿荣旗', 65);
INSERT INTO `tp_region` VALUES (784, '莫力达瓦达斡尔族自治旗', 65);
INSERT INTO `tp_region` VALUES (785, '鄂伦春自治旗', 65);
INSERT INTO `tp_region` VALUES (786, '鄂温克族自治旗', 65);
INSERT INTO `tp_region` VALUES (787, '陈巴尔虎旗', 65);
INSERT INTO `tp_region` VALUES (788, '新巴尔虎左旗', 65);
INSERT INTO `tp_region` VALUES (789, '新巴尔虎右旗', 65);
INSERT INTO `tp_region` VALUES (790, '满洲里市', 65);
INSERT INTO `tp_region` VALUES (791, '牙克石市', 65);
INSERT INTO `tp_region` VALUES (792, '扎兰屯市', 65);
INSERT INTO `tp_region` VALUES (793, '额尔古纳市', 65);
INSERT INTO `tp_region` VALUES (794, '根河市', 65);
INSERT INTO `tp_region` VALUES (795, '市辖区', 66);
INSERT INTO `tp_region` VALUES (796, '临河区', 66);
INSERT INTO `tp_region` VALUES (797, '五原县', 66);
INSERT INTO `tp_region` VALUES (798, '磴口县', 66);
INSERT INTO `tp_region` VALUES (799, '乌拉特前旗', 66);
INSERT INTO `tp_region` VALUES (800, '乌拉特中旗', 66);
INSERT INTO `tp_region` VALUES (801, '乌拉特后旗', 66);
INSERT INTO `tp_region` VALUES (802, '杭锦后旗', 66);
INSERT INTO `tp_region` VALUES (803, '市辖区', 67);
INSERT INTO `tp_region` VALUES (804, '集宁区', 67);
INSERT INTO `tp_region` VALUES (805, '卓资县', 67);
INSERT INTO `tp_region` VALUES (806, '化德县', 67);
INSERT INTO `tp_region` VALUES (807, '商都县', 67);
INSERT INTO `tp_region` VALUES (808, '兴和县', 67);
INSERT INTO `tp_region` VALUES (809, '凉城县', 67);
INSERT INTO `tp_region` VALUES (810, '察哈尔右翼前旗', 67);
INSERT INTO `tp_region` VALUES (811, '察哈尔右翼中旗', 67);
INSERT INTO `tp_region` VALUES (812, '察哈尔右翼后旗', 67);
INSERT INTO `tp_region` VALUES (813, '四子王旗', 67);
INSERT INTO `tp_region` VALUES (814, '丰镇市', 67);
INSERT INTO `tp_region` VALUES (815, '乌兰浩特市', 68);
INSERT INTO `tp_region` VALUES (816, '阿尔山市', 68);
INSERT INTO `tp_region` VALUES (817, '科尔沁右翼前旗', 68);
INSERT INTO `tp_region` VALUES (818, '科尔沁右翼中旗', 68);
INSERT INTO `tp_region` VALUES (819, '扎赉特旗', 68);
INSERT INTO `tp_region` VALUES (820, '突泉县', 68);
INSERT INTO `tp_region` VALUES (821, '二连浩特市', 69);
INSERT INTO `tp_region` VALUES (822, '锡林浩特市', 69);
INSERT INTO `tp_region` VALUES (823, '阿巴嘎旗', 69);
INSERT INTO `tp_region` VALUES (824, '苏尼特左旗', 69);
INSERT INTO `tp_region` VALUES (825, '苏尼特右旗', 69);
INSERT INTO `tp_region` VALUES (826, '东乌珠穆沁旗', 69);
INSERT INTO `tp_region` VALUES (827, '西乌珠穆沁旗', 69);
INSERT INTO `tp_region` VALUES (828, '太仆寺旗', 69);
INSERT INTO `tp_region` VALUES (829, '镶黄旗', 69);
INSERT INTO `tp_region` VALUES (830, '正镶白旗', 69);
INSERT INTO `tp_region` VALUES (831, '正蓝旗', 69);
INSERT INTO `tp_region` VALUES (832, '多伦县', 69);
INSERT INTO `tp_region` VALUES (833, '阿拉善左旗', 70);
INSERT INTO `tp_region` VALUES (834, '阿拉善右旗', 70);
INSERT INTO `tp_region` VALUES (835, '额济纳旗', 70);
INSERT INTO `tp_region` VALUES (836, '市辖区', 71);
INSERT INTO `tp_region` VALUES (837, '和平区', 71);
INSERT INTO `tp_region` VALUES (838, '沈河区', 71);
INSERT INTO `tp_region` VALUES (839, '大东区', 71);
INSERT INTO `tp_region` VALUES (840, '皇姑区', 71);
INSERT INTO `tp_region` VALUES (841, '铁西区', 71);
INSERT INTO `tp_region` VALUES (842, '苏家屯区', 71);
INSERT INTO `tp_region` VALUES (843, '东陵区', 71);
INSERT INTO `tp_region` VALUES (844, '沈北新区', 71);
INSERT INTO `tp_region` VALUES (845, '于洪区', 71);
INSERT INTO `tp_region` VALUES (846, '辽中县', 71);
INSERT INTO `tp_region` VALUES (847, '康平县', 71);
INSERT INTO `tp_region` VALUES (848, '法库县', 71);
INSERT INTO `tp_region` VALUES (849, '新民市', 71);
INSERT INTO `tp_region` VALUES (850, '市辖区', 72);
INSERT INTO `tp_region` VALUES (851, '中山区', 72);
INSERT INTO `tp_region` VALUES (852, '西岗区', 72);
INSERT INTO `tp_region` VALUES (853, '沙河口区', 72);
INSERT INTO `tp_region` VALUES (854, '甘井子区', 72);
INSERT INTO `tp_region` VALUES (855, '旅顺口区', 72);
INSERT INTO `tp_region` VALUES (856, '金州区', 72);
INSERT INTO `tp_region` VALUES (857, '长海县', 72);
INSERT INTO `tp_region` VALUES (858, '瓦房店市', 72);
INSERT INTO `tp_region` VALUES (859, '普兰店市', 72);
INSERT INTO `tp_region` VALUES (860, '庄河市', 72);
INSERT INTO `tp_region` VALUES (861, '市辖区', 73);
INSERT INTO `tp_region` VALUES (862, '铁东区', 73);
INSERT INTO `tp_region` VALUES (863, '铁西区', 73);
INSERT INTO `tp_region` VALUES (864, '立山区', 73);
INSERT INTO `tp_region` VALUES (865, '千山区', 73);
INSERT INTO `tp_region` VALUES (866, '台安县', 73);
INSERT INTO `tp_region` VALUES (867, '岫岩满族自治县', 73);
INSERT INTO `tp_region` VALUES (868, '海城市', 73);
INSERT INTO `tp_region` VALUES (869, '市辖区', 74);
INSERT INTO `tp_region` VALUES (870, '新抚区', 74);
INSERT INTO `tp_region` VALUES (871, '东洲区', 74);
INSERT INTO `tp_region` VALUES (872, '望花区', 74);
INSERT INTO `tp_region` VALUES (873, '顺城区', 74);
INSERT INTO `tp_region` VALUES (874, '抚顺县', 74);
INSERT INTO `tp_region` VALUES (875, '新宾满族自治县', 74);
INSERT INTO `tp_region` VALUES (876, '清原满族自治县', 74);
INSERT INTO `tp_region` VALUES (877, '市辖区', 75);
INSERT INTO `tp_region` VALUES (878, '平山区', 75);
INSERT INTO `tp_region` VALUES (879, '溪湖区', 75);
INSERT INTO `tp_region` VALUES (880, '明山区', 75);
INSERT INTO `tp_region` VALUES (881, '南芬区', 75);
INSERT INTO `tp_region` VALUES (882, '本溪满族自治县', 75);
INSERT INTO `tp_region` VALUES (883, '桓仁满族自治县', 75);
INSERT INTO `tp_region` VALUES (884, '市辖区', 76);
INSERT INTO `tp_region` VALUES (885, '元宝区', 76);
INSERT INTO `tp_region` VALUES (886, '振兴区', 76);
INSERT INTO `tp_region` VALUES (887, '振安区', 76);
INSERT INTO `tp_region` VALUES (888, '宽甸满族自治县', 76);
INSERT INTO `tp_region` VALUES (889, '东港市', 76);
INSERT INTO `tp_region` VALUES (890, '凤城市', 76);
INSERT INTO `tp_region` VALUES (891, '市辖区', 77);
INSERT INTO `tp_region` VALUES (892, '古塔区', 77);
INSERT INTO `tp_region` VALUES (893, '凌河区', 77);
INSERT INTO `tp_region` VALUES (894, '太和区', 77);
INSERT INTO `tp_region` VALUES (895, '黑山县', 77);
INSERT INTO `tp_region` VALUES (896, '义县', 77);
INSERT INTO `tp_region` VALUES (897, '凌海市', 77);
INSERT INTO `tp_region` VALUES (898, '北镇市', 77);
INSERT INTO `tp_region` VALUES (899, '市辖区', 78);
INSERT INTO `tp_region` VALUES (900, '站前区', 78);
INSERT INTO `tp_region` VALUES (901, '西市区', 78);
INSERT INTO `tp_region` VALUES (902, '鲅鱼圈区', 78);
INSERT INTO `tp_region` VALUES (903, '老边区', 78);
INSERT INTO `tp_region` VALUES (904, '盖州市', 78);
INSERT INTO `tp_region` VALUES (905, '大石桥市', 78);
INSERT INTO `tp_region` VALUES (906, '市辖区', 79);
INSERT INTO `tp_region` VALUES (907, '海州区', 79);
INSERT INTO `tp_region` VALUES (908, '新邱区', 79);
INSERT INTO `tp_region` VALUES (909, '太平区', 79);
INSERT INTO `tp_region` VALUES (910, '清河门区', 79);
INSERT INTO `tp_region` VALUES (911, '细河区', 79);
INSERT INTO `tp_region` VALUES (912, '阜新蒙古族自治县', 79);
INSERT INTO `tp_region` VALUES (913, '彰武县', 79);
INSERT INTO `tp_region` VALUES (914, '市辖区', 80);
INSERT INTO `tp_region` VALUES (915, '白塔区', 80);
INSERT INTO `tp_region` VALUES (916, '文圣区', 80);
INSERT INTO `tp_region` VALUES (917, '宏伟区', 80);
INSERT INTO `tp_region` VALUES (918, '弓长岭区', 80);
INSERT INTO `tp_region` VALUES (919, '太子河区', 80);
INSERT INTO `tp_region` VALUES (920, '辽阳县', 80);
INSERT INTO `tp_region` VALUES (921, '灯塔市', 80);
INSERT INTO `tp_region` VALUES (922, '市辖区', 81);
INSERT INTO `tp_region` VALUES (923, '双台子区', 81);
INSERT INTO `tp_region` VALUES (924, '兴隆台区', 81);
INSERT INTO `tp_region` VALUES (925, '大洼县', 81);
INSERT INTO `tp_region` VALUES (926, '盘山县', 81);
INSERT INTO `tp_region` VALUES (927, '市辖区', 82);
INSERT INTO `tp_region` VALUES (928, '银州区', 82);
INSERT INTO `tp_region` VALUES (929, '清河区', 82);
INSERT INTO `tp_region` VALUES (930, '铁岭县', 82);
INSERT INTO `tp_region` VALUES (931, '西丰县', 82);
INSERT INTO `tp_region` VALUES (932, '昌图县', 82);
INSERT INTO `tp_region` VALUES (933, '调兵山市', 82);
INSERT INTO `tp_region` VALUES (934, '开原市', 82);
INSERT INTO `tp_region` VALUES (935, '市辖区', 83);
INSERT INTO `tp_region` VALUES (936, '双塔区', 83);
INSERT INTO `tp_region` VALUES (937, '龙城区', 83);
INSERT INTO `tp_region` VALUES (938, '朝阳县', 83);
INSERT INTO `tp_region` VALUES (939, '建平县', 83);
INSERT INTO `tp_region` VALUES (940, '喀喇沁左翼蒙古族自治县', 83);
INSERT INTO `tp_region` VALUES (941, '北票市', 83);
INSERT INTO `tp_region` VALUES (942, '凌源市', 83);
INSERT INTO `tp_region` VALUES (943, '市辖区', 84);
INSERT INTO `tp_region` VALUES (944, '连山区', 84);
INSERT INTO `tp_region` VALUES (945, '龙港区', 84);
INSERT INTO `tp_region` VALUES (946, '南票区', 84);
INSERT INTO `tp_region` VALUES (947, '绥中县', 84);
INSERT INTO `tp_region` VALUES (948, '建昌县', 84);
INSERT INTO `tp_region` VALUES (949, '兴城市', 84);
INSERT INTO `tp_region` VALUES (950, '市辖区', 85);
INSERT INTO `tp_region` VALUES (951, '南关区', 85);
INSERT INTO `tp_region` VALUES (952, '宽城区', 85);
INSERT INTO `tp_region` VALUES (953, '朝阳区', 85);
INSERT INTO `tp_region` VALUES (954, '二道区', 85);
INSERT INTO `tp_region` VALUES (955, '绿园区', 85);
INSERT INTO `tp_region` VALUES (956, '双阳区', 85);
INSERT INTO `tp_region` VALUES (957, '农安县', 85);
INSERT INTO `tp_region` VALUES (958, '九台市', 85);
INSERT INTO `tp_region` VALUES (959, '榆树市', 85);
INSERT INTO `tp_region` VALUES (960, '德惠市', 85);
INSERT INTO `tp_region` VALUES (961, '市辖区', 86);
INSERT INTO `tp_region` VALUES (962, '昌邑区', 86);
INSERT INTO `tp_region` VALUES (963, '龙潭区', 86);
INSERT INTO `tp_region` VALUES (964, '船营区', 86);
INSERT INTO `tp_region` VALUES (965, '丰满区', 86);
INSERT INTO `tp_region` VALUES (966, '永吉县', 86);
INSERT INTO `tp_region` VALUES (967, '蛟河市', 86);
INSERT INTO `tp_region` VALUES (968, '桦甸市', 86);
INSERT INTO `tp_region` VALUES (969, '舒兰市', 86);
INSERT INTO `tp_region` VALUES (970, '磐石市', 86);
INSERT INTO `tp_region` VALUES (971, '市辖区', 87);
INSERT INTO `tp_region` VALUES (972, '铁西区', 87);
INSERT INTO `tp_region` VALUES (973, '铁东区', 87);
INSERT INTO `tp_region` VALUES (974, '梨树县', 87);
INSERT INTO `tp_region` VALUES (975, '伊通满族自治县', 87);
INSERT INTO `tp_region` VALUES (976, '公主岭市', 87);
INSERT INTO `tp_region` VALUES (977, '双辽市', 87);
INSERT INTO `tp_region` VALUES (978, '市辖区', 88);
INSERT INTO `tp_region` VALUES (979, '龙山区', 88);
INSERT INTO `tp_region` VALUES (980, '西安区', 88);
INSERT INTO `tp_region` VALUES (981, '东丰县', 88);
INSERT INTO `tp_region` VALUES (982, '东辽县', 88);
INSERT INTO `tp_region` VALUES (983, '市辖区', 89);
INSERT INTO `tp_region` VALUES (984, '东昌区', 89);
INSERT INTO `tp_region` VALUES (985, '二道江区', 89);
INSERT INTO `tp_region` VALUES (986, '通化县', 89);
INSERT INTO `tp_region` VALUES (987, '辉南县', 89);
INSERT INTO `tp_region` VALUES (988, '柳河县', 89);
INSERT INTO `tp_region` VALUES (989, '梅河口市', 89);
INSERT INTO `tp_region` VALUES (990, '集安市', 89);
INSERT INTO `tp_region` VALUES (991, '市辖区', 90);
INSERT INTO `tp_region` VALUES (992, '八道江区', 90);
INSERT INTO `tp_region` VALUES (993, '抚松县', 90);
INSERT INTO `tp_region` VALUES (994, '靖宇县', 90);
INSERT INTO `tp_region` VALUES (995, '长白朝鲜族自治县', 90);
INSERT INTO `tp_region` VALUES (996, '江源区', 90);
INSERT INTO `tp_region` VALUES (997, '临江市', 90);
INSERT INTO `tp_region` VALUES (998, '市辖区', 91);
INSERT INTO `tp_region` VALUES (999, '宁江区', 91);
INSERT INTO `tp_region` VALUES (1000, '前郭尔罗斯蒙古族自治县', 91);
INSERT INTO `tp_region` VALUES (1001, '长岭县', 91);
INSERT INTO `tp_region` VALUES (1002, '乾安县', 91);
INSERT INTO `tp_region` VALUES (1003, '扶余县', 91);
INSERT INTO `tp_region` VALUES (1004, '市辖区', 92);
INSERT INTO `tp_region` VALUES (1005, '洮北区', 92);
INSERT INTO `tp_region` VALUES (1006, '镇赉县', 92);
INSERT INTO `tp_region` VALUES (1007, '通榆县', 92);
INSERT INTO `tp_region` VALUES (1008, '洮南市', 92);
INSERT INTO `tp_region` VALUES (1009, '大安市', 92);
INSERT INTO `tp_region` VALUES (1010, '延吉市', 93);
INSERT INTO `tp_region` VALUES (1011, '图们市', 93);
INSERT INTO `tp_region` VALUES (1012, '敦化市', 93);
INSERT INTO `tp_region` VALUES (1013, '珲春市', 93);
INSERT INTO `tp_region` VALUES (1014, '龙井市', 93);
INSERT INTO `tp_region` VALUES (1015, '和龙市', 93);
INSERT INTO `tp_region` VALUES (1016, '汪清县', 93);
INSERT INTO `tp_region` VALUES (1017, '安图县', 93);
INSERT INTO `tp_region` VALUES (1018, '市辖区', 94);
INSERT INTO `tp_region` VALUES (1019, '道里区', 94);
INSERT INTO `tp_region` VALUES (1020, '南岗区', 94);
INSERT INTO `tp_region` VALUES (1021, '道外区', 94);
INSERT INTO `tp_region` VALUES (1022, '香坊区', 94);
INSERT INTO `tp_region` VALUES (1024, '平房区', 94);
INSERT INTO `tp_region` VALUES (1025, '松北区', 94);
INSERT INTO `tp_region` VALUES (1026, '呼兰区', 94);
INSERT INTO `tp_region` VALUES (1027, '依兰县', 94);
INSERT INTO `tp_region` VALUES (1028, '方正县', 94);
INSERT INTO `tp_region` VALUES (1029, '宾县', 94);
INSERT INTO `tp_region` VALUES (1030, '巴彦县', 94);
INSERT INTO `tp_region` VALUES (1031, '木兰县', 94);
INSERT INTO `tp_region` VALUES (1032, '通河县', 94);
INSERT INTO `tp_region` VALUES (1033, '延寿县', 94);
INSERT INTO `tp_region` VALUES (1034, '阿城区', 94);
INSERT INTO `tp_region` VALUES (1035, '双城市', 94);
INSERT INTO `tp_region` VALUES (1036, '尚志市', 94);
INSERT INTO `tp_region` VALUES (1037, '五常市', 94);
INSERT INTO `tp_region` VALUES (1038, '市辖区', 95);
INSERT INTO `tp_region` VALUES (1039, '龙沙区', 95);
INSERT INTO `tp_region` VALUES (1040, '建华区', 95);
INSERT INTO `tp_region` VALUES (1041, '铁锋区', 95);
INSERT INTO `tp_region` VALUES (1042, '昂昂溪区', 95);
INSERT INTO `tp_region` VALUES (1043, '富拉尔基区', 95);
INSERT INTO `tp_region` VALUES (1044, '碾子山区', 95);
INSERT INTO `tp_region` VALUES (1045, '梅里斯达斡尔族区', 95);
INSERT INTO `tp_region` VALUES (1046, '龙江县', 95);
INSERT INTO `tp_region` VALUES (1047, '依安县', 95);
INSERT INTO `tp_region` VALUES (1048, '泰来县', 95);
INSERT INTO `tp_region` VALUES (1049, '甘南县', 95);
INSERT INTO `tp_region` VALUES (1050, '富裕县', 95);
INSERT INTO `tp_region` VALUES (1051, '克山县', 95);
INSERT INTO `tp_region` VALUES (1052, '克东县', 95);
INSERT INTO `tp_region` VALUES (1053, '拜泉县', 95);
INSERT INTO `tp_region` VALUES (1054, '讷河市', 95);
INSERT INTO `tp_region` VALUES (1055, '市辖区', 96);
INSERT INTO `tp_region` VALUES (1056, '鸡冠区', 96);
INSERT INTO `tp_region` VALUES (1057, '恒山区', 96);
INSERT INTO `tp_region` VALUES (1058, '滴道区', 96);
INSERT INTO `tp_region` VALUES (1059, '梨树区', 96);
INSERT INTO `tp_region` VALUES (1060, '城子河区', 96);
INSERT INTO `tp_region` VALUES (1061, '麻山区', 96);
INSERT INTO `tp_region` VALUES (1062, '鸡东县', 96);
INSERT INTO `tp_region` VALUES (1063, '虎林市', 96);
INSERT INTO `tp_region` VALUES (1064, '密山市', 96);
INSERT INTO `tp_region` VALUES (1065, '市辖区', 97);
INSERT INTO `tp_region` VALUES (1066, '向阳区', 97);
INSERT INTO `tp_region` VALUES (1067, '工农区', 97);
INSERT INTO `tp_region` VALUES (1068, '南山区', 97);
INSERT INTO `tp_region` VALUES (1069, '兴安区', 97);
INSERT INTO `tp_region` VALUES (1070, '东山区', 97);
INSERT INTO `tp_region` VALUES (1071, '兴山区', 97);
INSERT INTO `tp_region` VALUES (1072, '萝北县', 97);
INSERT INTO `tp_region` VALUES (1073, '绥滨县', 97);
INSERT INTO `tp_region` VALUES (1074, '市辖区', 98);
INSERT INTO `tp_region` VALUES (1075, '尖山区', 98);
INSERT INTO `tp_region` VALUES (1076, '岭东区', 98);
INSERT INTO `tp_region` VALUES (1077, '四方台区', 98);
INSERT INTO `tp_region` VALUES (1078, '宝山区', 98);
INSERT INTO `tp_region` VALUES (1079, '集贤县', 98);
INSERT INTO `tp_region` VALUES (1080, '友谊县', 98);
INSERT INTO `tp_region` VALUES (1081, '宝清县', 98);
INSERT INTO `tp_region` VALUES (1082, '饶河县', 98);
INSERT INTO `tp_region` VALUES (1083, '市辖区', 99);
INSERT INTO `tp_region` VALUES (1084, '萨尔图区', 99);
INSERT INTO `tp_region` VALUES (1085, '龙凤区', 99);
INSERT INTO `tp_region` VALUES (1086, '让胡路区', 99);
INSERT INTO `tp_region` VALUES (1087, '红岗区', 99);
INSERT INTO `tp_region` VALUES (1088, '大同区', 99);
INSERT INTO `tp_region` VALUES (1089, '肇州县', 99);
INSERT INTO `tp_region` VALUES (1090, '肇源县', 99);
INSERT INTO `tp_region` VALUES (1091, '林甸县', 99);
INSERT INTO `tp_region` VALUES (1092, '杜尔伯特蒙古族自治县', 99);
INSERT INTO `tp_region` VALUES (1093, '市辖区', 100);
INSERT INTO `tp_region` VALUES (1094, '伊春区', 100);
INSERT INTO `tp_region` VALUES (1095, '南岔区', 100);
INSERT INTO `tp_region` VALUES (1096, '友好区', 100);
INSERT INTO `tp_region` VALUES (1097, '西林区', 100);
INSERT INTO `tp_region` VALUES (1098, '翠峦区', 100);
INSERT INTO `tp_region` VALUES (1099, '新青区', 100);
INSERT INTO `tp_region` VALUES (1100, '美溪区', 100);
INSERT INTO `tp_region` VALUES (1101, '金山屯区', 100);
INSERT INTO `tp_region` VALUES (1102, '五营区', 100);
INSERT INTO `tp_region` VALUES (1103, '乌马河区', 100);
INSERT INTO `tp_region` VALUES (1104, '汤旺河区', 100);
INSERT INTO `tp_region` VALUES (1105, '带岭区', 100);
INSERT INTO `tp_region` VALUES (1106, '乌伊岭区', 100);
INSERT INTO `tp_region` VALUES (1107, '红星区', 100);
INSERT INTO `tp_region` VALUES (1108, '上甘岭区', 100);
INSERT INTO `tp_region` VALUES (1109, '嘉荫县', 100);
INSERT INTO `tp_region` VALUES (1110, '铁力市', 100);
INSERT INTO `tp_region` VALUES (1111, '市辖区', 101);
INSERT INTO `tp_region` VALUES (1113, '向阳区', 101);
INSERT INTO `tp_region` VALUES (1114, '前进区', 101);
INSERT INTO `tp_region` VALUES (1115, '东风区', 101);
INSERT INTO `tp_region` VALUES (1116, '郊区', 101);
INSERT INTO `tp_region` VALUES (1117, '桦南县', 101);
INSERT INTO `tp_region` VALUES (1118, '桦川县', 101);
INSERT INTO `tp_region` VALUES (1119, '汤原县', 101);
INSERT INTO `tp_region` VALUES (1120, '抚远县', 101);
INSERT INTO `tp_region` VALUES (1121, '同江市', 101);
INSERT INTO `tp_region` VALUES (1122, '富锦市', 101);
INSERT INTO `tp_region` VALUES (1123, '市辖区', 102);
INSERT INTO `tp_region` VALUES (1124, '新兴区', 102);
INSERT INTO `tp_region` VALUES (1125, '桃山区', 102);
INSERT INTO `tp_region` VALUES (1126, '茄子河区', 102);
INSERT INTO `tp_region` VALUES (1127, '勃利县', 102);
INSERT INTO `tp_region` VALUES (1128, '市辖区', 103);
INSERT INTO `tp_region` VALUES (1129, '东安区', 103);
INSERT INTO `tp_region` VALUES (1130, '阳明区', 103);
INSERT INTO `tp_region` VALUES (1131, '爱民区', 103);
INSERT INTO `tp_region` VALUES (1132, '西安区', 103);
INSERT INTO `tp_region` VALUES (1133, '东宁县', 103);
INSERT INTO `tp_region` VALUES (1134, '林口县', 103);
INSERT INTO `tp_region` VALUES (1135, '绥芬河市', 103);
INSERT INTO `tp_region` VALUES (1136, '海林市', 103);
INSERT INTO `tp_region` VALUES (1137, '宁安市', 103);
INSERT INTO `tp_region` VALUES (1138, '穆棱市', 103);
INSERT INTO `tp_region` VALUES (1139, '市辖区', 104);
INSERT INTO `tp_region` VALUES (1140, '爱辉区', 104);
INSERT INTO `tp_region` VALUES (1141, '嫩江县', 104);
INSERT INTO `tp_region` VALUES (1142, '逊克县', 104);
INSERT INTO `tp_region` VALUES (1143, '孙吴县', 104);
INSERT INTO `tp_region` VALUES (1144, '北安市', 104);
INSERT INTO `tp_region` VALUES (1145, '五大连池市', 104);
INSERT INTO `tp_region` VALUES (1146, '市辖区', 105);
INSERT INTO `tp_region` VALUES (1147, '北林区', 105);
INSERT INTO `tp_region` VALUES (1148, '望奎县', 105);
INSERT INTO `tp_region` VALUES (1149, '兰西县', 105);
INSERT INTO `tp_region` VALUES (1150, '青冈县', 105);
INSERT INTO `tp_region` VALUES (1151, '庆安县', 105);
INSERT INTO `tp_region` VALUES (1152, '明水县', 105);
INSERT INTO `tp_region` VALUES (1153, '绥棱县', 105);
INSERT INTO `tp_region` VALUES (1154, '安达市', 105);
INSERT INTO `tp_region` VALUES (1155, '肇东市', 105);
INSERT INTO `tp_region` VALUES (1156, '海伦市', 105);
INSERT INTO `tp_region` VALUES (1157, '呼玛县', 106);
INSERT INTO `tp_region` VALUES (1158, '塔河县', 106);
INSERT INTO `tp_region` VALUES (1159, '漠河县', 106);
INSERT INTO `tp_region` VALUES (1160, '黄浦区', 107);
INSERT INTO `tp_region` VALUES (1161, '卢湾区', 107);
INSERT INTO `tp_region` VALUES (1162, '徐汇区', 107);
INSERT INTO `tp_region` VALUES (1163, '长宁区', 107);
INSERT INTO `tp_region` VALUES (1164, '静安区', 107);
INSERT INTO `tp_region` VALUES (1165, '普陀区', 107);
INSERT INTO `tp_region` VALUES (1166, '闸北区', 107);
INSERT INTO `tp_region` VALUES (1167, '虹口区', 107);
INSERT INTO `tp_region` VALUES (1168, '杨浦区', 107);
INSERT INTO `tp_region` VALUES (1169, '闵行区', 107);
INSERT INTO `tp_region` VALUES (1170, '宝山区', 107);
INSERT INTO `tp_region` VALUES (1171, '嘉定区', 107);
INSERT INTO `tp_region` VALUES (1172, '浦东新区', 107);
INSERT INTO `tp_region` VALUES (1173, '金山区', 107);
INSERT INTO `tp_region` VALUES (1174, '松江区', 107);
INSERT INTO `tp_region` VALUES (1175, '青浦区', 107);
INSERT INTO `tp_region` VALUES (1177, '奉贤区', 107);
INSERT INTO `tp_region` VALUES (1178, '崇明县', 108);
INSERT INTO `tp_region` VALUES (1179, '市辖区', 109);
INSERT INTO `tp_region` VALUES (1180, '玄武区', 109);
INSERT INTO `tp_region` VALUES (1181, '白下区', 109);
INSERT INTO `tp_region` VALUES (1182, '秦淮区', 109);
INSERT INTO `tp_region` VALUES (1183, '建邺区', 109);
INSERT INTO `tp_region` VALUES (1184, '鼓楼区', 109);
INSERT INTO `tp_region` VALUES (1185, '下关区', 109);
INSERT INTO `tp_region` VALUES (1186, '浦口区', 109);
INSERT INTO `tp_region` VALUES (1187, '栖霞区', 109);
INSERT INTO `tp_region` VALUES (1188, '雨花台区', 109);
INSERT INTO `tp_region` VALUES (1189, '江宁区', 109);
INSERT INTO `tp_region` VALUES (1190, '六合区', 109);
INSERT INTO `tp_region` VALUES (1191, '溧水县', 109);
INSERT INTO `tp_region` VALUES (1192, '高淳县', 109);
INSERT INTO `tp_region` VALUES (1193, '市辖区', 110);
INSERT INTO `tp_region` VALUES (1194, '崇安区', 110);
INSERT INTO `tp_region` VALUES (1195, '南长区', 110);
INSERT INTO `tp_region` VALUES (1196, '北塘区', 110);
INSERT INTO `tp_region` VALUES (1197, '锡山区', 110);
INSERT INTO `tp_region` VALUES (1198, '惠山区', 110);
INSERT INTO `tp_region` VALUES (1199, '滨湖区', 110);
INSERT INTO `tp_region` VALUES (1200, '江阴市', 110);
INSERT INTO `tp_region` VALUES (1201, '宜兴市', 110);
INSERT INTO `tp_region` VALUES (1202, '市辖区', 111);
INSERT INTO `tp_region` VALUES (1203, '鼓楼区', 111);
INSERT INTO `tp_region` VALUES (1204, '云龙区', 111);
INSERT INTO `tp_region` VALUES (1206, '贾汪区', 111);
INSERT INTO `tp_region` VALUES (1207, '泉山区', 111);
INSERT INTO `tp_region` VALUES (1208, '丰县', 111);
INSERT INTO `tp_region` VALUES (1209, '沛县', 111);
INSERT INTO `tp_region` VALUES (1210, '铜山区', 111);
INSERT INTO `tp_region` VALUES (1211, '睢宁县', 111);
INSERT INTO `tp_region` VALUES (1212, '新沂市', 111);
INSERT INTO `tp_region` VALUES (1213, '邳州市', 111);
INSERT INTO `tp_region` VALUES (1214, '市辖区', 112);
INSERT INTO `tp_region` VALUES (1215, '天宁区', 112);
INSERT INTO `tp_region` VALUES (1216, '钟楼区', 112);
INSERT INTO `tp_region` VALUES (1217, '戚墅堰区', 112);
INSERT INTO `tp_region` VALUES (1218, '新北区', 112);
INSERT INTO `tp_region` VALUES (1219, '武进区', 112);
INSERT INTO `tp_region` VALUES (1220, '溧阳市', 112);
INSERT INTO `tp_region` VALUES (1221, '金坛市', 112);
INSERT INTO `tp_region` VALUES (1222, '市辖区', 113);
INSERT INTO `tp_region` VALUES (1223, '沧浪区', 113);
INSERT INTO `tp_region` VALUES (1224, '平江区', 113);
INSERT INTO `tp_region` VALUES (1225, '金阊区', 113);
INSERT INTO `tp_region` VALUES (1226, '虎丘区', 113);
INSERT INTO `tp_region` VALUES (1227, '吴中区', 113);
INSERT INTO `tp_region` VALUES (1228, '相城区', 113);
INSERT INTO `tp_region` VALUES (1229, '常熟市', 113);
INSERT INTO `tp_region` VALUES (1230, '张家港市', 113);
INSERT INTO `tp_region` VALUES (1231, '昆山市', 113);
INSERT INTO `tp_region` VALUES (1232, '吴江市', 113);
INSERT INTO `tp_region` VALUES (1233, '太仓市', 113);
INSERT INTO `tp_region` VALUES (1234, '市辖区', 114);
INSERT INTO `tp_region` VALUES (1235, '崇川区', 114);
INSERT INTO `tp_region` VALUES (1236, '港闸区', 114);
INSERT INTO `tp_region` VALUES (1237, '海安县', 114);
INSERT INTO `tp_region` VALUES (1238, '如东县', 114);
INSERT INTO `tp_region` VALUES (1239, '启东市', 114);
INSERT INTO `tp_region` VALUES (1240, '如皋市', 114);
INSERT INTO `tp_region` VALUES (1241, '通州区', 114);
INSERT INTO `tp_region` VALUES (1242, '海门市', 114);
INSERT INTO `tp_region` VALUES (1243, '市辖区', 115);
INSERT INTO `tp_region` VALUES (1244, '连云区', 115);
INSERT INTO `tp_region` VALUES (1245, '新浦区', 115);
INSERT INTO `tp_region` VALUES (1246, '海州区', 115);
INSERT INTO `tp_region` VALUES (1247, '赣榆县', 115);
INSERT INTO `tp_region` VALUES (1248, '东海县', 115);
INSERT INTO `tp_region` VALUES (1249, '灌云县', 115);
INSERT INTO `tp_region` VALUES (1250, '灌南县', 115);
INSERT INTO `tp_region` VALUES (1251, '市辖区', 116);
INSERT INTO `tp_region` VALUES (1252, '清河区', 116);
INSERT INTO `tp_region` VALUES (1253, '楚州区', 116);
INSERT INTO `tp_region` VALUES (1254, '淮阴区', 116);
INSERT INTO `tp_region` VALUES (1255, '清浦区', 116);
INSERT INTO `tp_region` VALUES (1256, '涟水县', 116);
INSERT INTO `tp_region` VALUES (1257, '洪泽县', 116);
INSERT INTO `tp_region` VALUES (1258, '盱眙县', 116);
INSERT INTO `tp_region` VALUES (1259, '金湖县', 116);
INSERT INTO `tp_region` VALUES (1260, '市辖区', 117);
INSERT INTO `tp_region` VALUES (1261, '亭湖区', 117);
INSERT INTO `tp_region` VALUES (1262, '盐都区', 117);
INSERT INTO `tp_region` VALUES (1263, '响水县', 117);
INSERT INTO `tp_region` VALUES (1264, '滨海县', 117);
INSERT INTO `tp_region` VALUES (1265, '阜宁县', 117);
INSERT INTO `tp_region` VALUES (1266, '射阳县', 117);
INSERT INTO `tp_region` VALUES (1267, '建湖县', 117);
INSERT INTO `tp_region` VALUES (1268, '东台市', 117);
INSERT INTO `tp_region` VALUES (1269, '大丰市', 117);
INSERT INTO `tp_region` VALUES (1270, '市辖区', 118);
INSERT INTO `tp_region` VALUES (1271, '广陵区', 118);
INSERT INTO `tp_region` VALUES (1272, '邗江区', 118);
INSERT INTO `tp_region` VALUES (1273, '维扬区', 118);
INSERT INTO `tp_region` VALUES (1274, '宝应县', 118);
INSERT INTO `tp_region` VALUES (1275, '仪征市', 118);
INSERT INTO `tp_region` VALUES (1276, '高邮市', 118);
INSERT INTO `tp_region` VALUES (1277, '江都市', 118);
INSERT INTO `tp_region` VALUES (1278, '市辖区', 119);
INSERT INTO `tp_region` VALUES (1279, '京口区', 119);
INSERT INTO `tp_region` VALUES (1280, '润州区', 119);
INSERT INTO `tp_region` VALUES (1281, '丹徒区', 119);
INSERT INTO `tp_region` VALUES (1282, '丹阳市', 119);
INSERT INTO `tp_region` VALUES (1283, '扬中市', 119);
INSERT INTO `tp_region` VALUES (1284, '句容市', 119);
INSERT INTO `tp_region` VALUES (1285, '市辖区', 120);
INSERT INTO `tp_region` VALUES (1286, '海陵区', 120);
INSERT INTO `tp_region` VALUES (1287, '高港区', 120);
INSERT INTO `tp_region` VALUES (1288, '兴化市', 120);
INSERT INTO `tp_region` VALUES (1289, '靖江市', 120);
INSERT INTO `tp_region` VALUES (1290, '泰兴市', 120);
INSERT INTO `tp_region` VALUES (1291, '姜堰市', 120);
INSERT INTO `tp_region` VALUES (1292, '市辖区', 121);
INSERT INTO `tp_region` VALUES (1293, '宿城区', 121);
INSERT INTO `tp_region` VALUES (1294, '宿豫区', 121);
INSERT INTO `tp_region` VALUES (1295, '沭阳县', 121);
INSERT INTO `tp_region` VALUES (1296, '泗阳县', 121);
INSERT INTO `tp_region` VALUES (1297, '泗洪县', 121);
INSERT INTO `tp_region` VALUES (1298, '市辖区', 122);
INSERT INTO `tp_region` VALUES (1299, '上城区', 122);
INSERT INTO `tp_region` VALUES (1300, '下城区', 122);
INSERT INTO `tp_region` VALUES (1301, '江干区', 122);
INSERT INTO `tp_region` VALUES (1302, '拱墅区', 122);
INSERT INTO `tp_region` VALUES (1303, '西湖区', 122);
INSERT INTO `tp_region` VALUES (1304, '滨江区', 122);
INSERT INTO `tp_region` VALUES (1305, '萧山区', 122);
INSERT INTO `tp_region` VALUES (1306, '余杭区', 122);
INSERT INTO `tp_region` VALUES (1307, '桐庐县', 122);
INSERT INTO `tp_region` VALUES (1308, '淳安县', 122);
INSERT INTO `tp_region` VALUES (1309, '建德市', 122);
INSERT INTO `tp_region` VALUES (1310, '富阳市', 122);
INSERT INTO `tp_region` VALUES (1311, '临安市', 122);
INSERT INTO `tp_region` VALUES (1312, '市辖区', 123);
INSERT INTO `tp_region` VALUES (1313, '海曙区', 123);
INSERT INTO `tp_region` VALUES (1314, '江东区', 123);
INSERT INTO `tp_region` VALUES (1315, '江北区', 123);
INSERT INTO `tp_region` VALUES (1316, '北仑区', 123);
INSERT INTO `tp_region` VALUES (1317, '镇海区', 123);
INSERT INTO `tp_region` VALUES (1318, '鄞州区', 123);
INSERT INTO `tp_region` VALUES (1319, '象山县', 123);
INSERT INTO `tp_region` VALUES (1320, '宁海县', 123);
INSERT INTO `tp_region` VALUES (1321, '余姚市', 123);
INSERT INTO `tp_region` VALUES (1322, '慈溪市', 123);
INSERT INTO `tp_region` VALUES (1323, '奉化市', 123);
INSERT INTO `tp_region` VALUES (1324, '市辖区', 124);
INSERT INTO `tp_region` VALUES (1325, '鹿城区', 124);
INSERT INTO `tp_region` VALUES (1326, '龙湾区', 124);
INSERT INTO `tp_region` VALUES (1327, '瓯海区', 124);
INSERT INTO `tp_region` VALUES (1328, '洞头县', 124);
INSERT INTO `tp_region` VALUES (1329, '永嘉县', 124);
INSERT INTO `tp_region` VALUES (1330, '平阳县', 124);
INSERT INTO `tp_region` VALUES (1331, '苍南县', 124);
INSERT INTO `tp_region` VALUES (1332, '文成县', 124);
INSERT INTO `tp_region` VALUES (1333, '泰顺县', 124);
INSERT INTO `tp_region` VALUES (1334, '瑞安市', 124);
INSERT INTO `tp_region` VALUES (1335, '乐清市', 124);
INSERT INTO `tp_region` VALUES (1336, '市辖区', 125);
INSERT INTO `tp_region` VALUES (1338, '秀洲区', 125);
INSERT INTO `tp_region` VALUES (1339, '嘉善县', 125);
INSERT INTO `tp_region` VALUES (1340, '海盐县', 125);
INSERT INTO `tp_region` VALUES (1341, '海宁市', 125);
INSERT INTO `tp_region` VALUES (1342, '平湖市', 125);
INSERT INTO `tp_region` VALUES (1343, '桐乡市', 125);
INSERT INTO `tp_region` VALUES (1344, '市辖区', 126);
INSERT INTO `tp_region` VALUES (1345, '吴兴区', 126);
INSERT INTO `tp_region` VALUES (1346, '南浔区', 126);
INSERT INTO `tp_region` VALUES (1347, '德清县', 126);
INSERT INTO `tp_region` VALUES (1348, '长兴县', 126);
INSERT INTO `tp_region` VALUES (1349, '安吉县', 126);
INSERT INTO `tp_region` VALUES (1350, '市辖区', 127);
INSERT INTO `tp_region` VALUES (1351, '越城区', 127);
INSERT INTO `tp_region` VALUES (1352, '绍兴县', 127);
INSERT INTO `tp_region` VALUES (1353, '新昌县', 127);
INSERT INTO `tp_region` VALUES (1354, '诸暨市', 127);
INSERT INTO `tp_region` VALUES (1355, '上虞市', 127);
INSERT INTO `tp_region` VALUES (1356, '嵊州市', 127);
INSERT INTO `tp_region` VALUES (1357, '市辖区', 128);
INSERT INTO `tp_region` VALUES (1358, '婺城区', 128);
INSERT INTO `tp_region` VALUES (1359, '金东区', 128);
INSERT INTO `tp_region` VALUES (1360, '武义县', 128);
INSERT INTO `tp_region` VALUES (1361, '浦江县', 128);
INSERT INTO `tp_region` VALUES (1362, '磐安县', 128);
INSERT INTO `tp_region` VALUES (1363, '兰溪市', 128);
INSERT INTO `tp_region` VALUES (1364, '义乌市', 128);
INSERT INTO `tp_region` VALUES (1365, '东阳市', 128);
INSERT INTO `tp_region` VALUES (1366, '永康市', 128);
INSERT INTO `tp_region` VALUES (1367, '市辖区', 129);
INSERT INTO `tp_region` VALUES (1368, '柯城区', 129);
INSERT INTO `tp_region` VALUES (1369, '衢江区', 129);
INSERT INTO `tp_region` VALUES (1370, '常山县', 129);
INSERT INTO `tp_region` VALUES (1371, '开化县', 129);
INSERT INTO `tp_region` VALUES (1372, '龙游县', 129);
INSERT INTO `tp_region` VALUES (1373, '江山市', 129);
INSERT INTO `tp_region` VALUES (1374, '市辖区', 130);
INSERT INTO `tp_region` VALUES (1375, '定海区', 130);
INSERT INTO `tp_region` VALUES (1376, '普陀区', 130);
INSERT INTO `tp_region` VALUES (1377, '岱山县', 130);
INSERT INTO `tp_region` VALUES (1378, '嵊泗县', 130);
INSERT INTO `tp_region` VALUES (1379, '市辖区', 131);
INSERT INTO `tp_region` VALUES (1380, '椒江区', 131);
INSERT INTO `tp_region` VALUES (1381, '黄岩区', 131);
INSERT INTO `tp_region` VALUES (1382, '路桥区', 131);
INSERT INTO `tp_region` VALUES (1383, '玉环县', 131);
INSERT INTO `tp_region` VALUES (1384, '三门县', 131);
INSERT INTO `tp_region` VALUES (1385, '天台县', 131);
INSERT INTO `tp_region` VALUES (1386, '仙居县', 131);
INSERT INTO `tp_region` VALUES (1387, '温岭市', 131);
INSERT INTO `tp_region` VALUES (1388, '临海市', 131);
INSERT INTO `tp_region` VALUES (1389, '市辖区', 132);
INSERT INTO `tp_region` VALUES (1390, '莲都区', 132);
INSERT INTO `tp_region` VALUES (1391, '青田县', 132);
INSERT INTO `tp_region` VALUES (1392, '缙云县', 132);
INSERT INTO `tp_region` VALUES (1393, '遂昌县', 132);
INSERT INTO `tp_region` VALUES (1394, '松阳县', 132);
INSERT INTO `tp_region` VALUES (1395, '云和县', 132);
INSERT INTO `tp_region` VALUES (1396, '庆元县', 132);
INSERT INTO `tp_region` VALUES (1397, '景宁畲族自治县', 132);
INSERT INTO `tp_region` VALUES (1398, '龙泉市', 132);
INSERT INTO `tp_region` VALUES (1399, '市辖区', 133);
INSERT INTO `tp_region` VALUES (1400, '瑶海区', 133);
INSERT INTO `tp_region` VALUES (1401, '庐阳区', 133);
INSERT INTO `tp_region` VALUES (1402, '蜀山区', 133);
INSERT INTO `tp_region` VALUES (1403, '包河区', 133);
INSERT INTO `tp_region` VALUES (1404, '长丰县', 133);
INSERT INTO `tp_region` VALUES (1405, '肥东县', 133);
INSERT INTO `tp_region` VALUES (1406, '肥西县', 133);
INSERT INTO `tp_region` VALUES (1407, '市辖区', 1412);
INSERT INTO `tp_region` VALUES (1408, '镜湖区', 1412);
INSERT INTO `tp_region` VALUES (1409, '三山区', 1412);
INSERT INTO `tp_region` VALUES (1410, '弋江区', 1412);
INSERT INTO `tp_region` VALUES (1411, '鸠江区', 1412);
INSERT INTO `tp_region` VALUES (1412, '芜湖市', 134);
INSERT INTO `tp_region` VALUES (1413, '繁昌县', 1412);
INSERT INTO `tp_region` VALUES (1414, '南陵县', 1412);
INSERT INTO `tp_region` VALUES (1415, '市辖区', 135);
INSERT INTO `tp_region` VALUES (1416, '龙子湖区', 135);
INSERT INTO `tp_region` VALUES (1417, '蚌山区', 135);
INSERT INTO `tp_region` VALUES (1418, '禹会区', 135);
INSERT INTO `tp_region` VALUES (1419, '淮上区', 135);
INSERT INTO `tp_region` VALUES (1420, '怀远县', 135);
INSERT INTO `tp_region` VALUES (1421, '五河县', 135);
INSERT INTO `tp_region` VALUES (1422, '固镇县', 135);
INSERT INTO `tp_region` VALUES (1423, '市辖区', 136);
INSERT INTO `tp_region` VALUES (1424, '大通区', 136);
INSERT INTO `tp_region` VALUES (1425, '田家庵区', 136);
INSERT INTO `tp_region` VALUES (1426, '谢家集区', 136);
INSERT INTO `tp_region` VALUES (1427, '八公山区', 136);
INSERT INTO `tp_region` VALUES (1428, '潘集区', 136);
INSERT INTO `tp_region` VALUES (1429, '凤台县', 136);
INSERT INTO `tp_region` VALUES (1430, '市辖区', 137);
INSERT INTO `tp_region` VALUES (1431, '金家庄区', 137);
INSERT INTO `tp_region` VALUES (1432, '花山区', 137);
INSERT INTO `tp_region` VALUES (1433, '雨山区', 137);
INSERT INTO `tp_region` VALUES (1434, '当涂县', 137);
INSERT INTO `tp_region` VALUES (1435, '市辖区', 138);
INSERT INTO `tp_region` VALUES (1436, '杜集区', 138);
INSERT INTO `tp_region` VALUES (1437, '相山区', 138);
INSERT INTO `tp_region` VALUES (1438, '烈山区', 138);
INSERT INTO `tp_region` VALUES (1439, '濉溪县', 138);
INSERT INTO `tp_region` VALUES (1440, '市辖区', 139);
INSERT INTO `tp_region` VALUES (1441, '铜官山区', 139);
INSERT INTO `tp_region` VALUES (1442, '狮子山区', 139);
INSERT INTO `tp_region` VALUES (1443, '郊区', 139);
INSERT INTO `tp_region` VALUES (1444, '铜陵县', 139);
INSERT INTO `tp_region` VALUES (1445, '市辖区', 140);
INSERT INTO `tp_region` VALUES (1446, '迎江区', 140);
INSERT INTO `tp_region` VALUES (1447, '大观区', 140);
INSERT INTO `tp_region` VALUES (1448, '宜秀区', 140);
INSERT INTO `tp_region` VALUES (1449, '怀宁县', 140);
INSERT INTO `tp_region` VALUES (1450, '枞阳县', 140);
INSERT INTO `tp_region` VALUES (1451, '潜山县', 140);
INSERT INTO `tp_region` VALUES (1452, '太湖县', 140);
INSERT INTO `tp_region` VALUES (1453, '宿松县', 140);
INSERT INTO `tp_region` VALUES (1454, '望江县', 140);
INSERT INTO `tp_region` VALUES (1455, '岳西县', 140);
INSERT INTO `tp_region` VALUES (1456, '桐城市', 140);
INSERT INTO `tp_region` VALUES (1457, '市辖区', 141);
INSERT INTO `tp_region` VALUES (1458, '屯溪区', 141);
INSERT INTO `tp_region` VALUES (1459, '黄山区', 141);
INSERT INTO `tp_region` VALUES (1460, '徽州区', 141);
INSERT INTO `tp_region` VALUES (1461, '歙县', 141);
INSERT INTO `tp_region` VALUES (1462, '休宁县', 141);
INSERT INTO `tp_region` VALUES (1463, '黟县', 141);
INSERT INTO `tp_region` VALUES (1464, '祁门县', 141);
INSERT INTO `tp_region` VALUES (1465, '市辖区', 142);
INSERT INTO `tp_region` VALUES (1466, '琅琊区', 142);
INSERT INTO `tp_region` VALUES (1467, '南谯区', 142);
INSERT INTO `tp_region` VALUES (1468, '来安县', 142);
INSERT INTO `tp_region` VALUES (1469, '全椒县', 142);
INSERT INTO `tp_region` VALUES (1470, '定远县', 142);
INSERT INTO `tp_region` VALUES (1471, '凤阳县', 142);
INSERT INTO `tp_region` VALUES (1472, '天长市', 142);
INSERT INTO `tp_region` VALUES (1473, '明光市', 142);
INSERT INTO `tp_region` VALUES (1474, '市辖区', 143);
INSERT INTO `tp_region` VALUES (1475, '颍州区', 143);
INSERT INTO `tp_region` VALUES (1476, '颍东区', 143);
INSERT INTO `tp_region` VALUES (1477, '颍泉区', 143);
INSERT INTO `tp_region` VALUES (1478, '临泉县', 143);
INSERT INTO `tp_region` VALUES (1479, '太和县', 143);
INSERT INTO `tp_region` VALUES (1480, '阜南县', 143);
INSERT INTO `tp_region` VALUES (1481, '颍上县', 143);
INSERT INTO `tp_region` VALUES (1482, '界首市', 143);
INSERT INTO `tp_region` VALUES (1483, '市辖区', 144);
INSERT INTO `tp_region` VALUES (1484, '埇桥区', 144);
INSERT INTO `tp_region` VALUES (1485, '砀山县', 144);
INSERT INTO `tp_region` VALUES (1486, '萧县', 144);
INSERT INTO `tp_region` VALUES (1487, '灵璧县', 144);
INSERT INTO `tp_region` VALUES (1488, '泗县', 144);
INSERT INTO `tp_region` VALUES (1489, '市辖区', 145);
INSERT INTO `tp_region` VALUES (1490, '居巢区', 145);
INSERT INTO `tp_region` VALUES (1491, '庐江县', 145);
INSERT INTO `tp_region` VALUES (1492, '无为县', 145);
INSERT INTO `tp_region` VALUES (1493, '含山县', 145);
INSERT INTO `tp_region` VALUES (1494, '和县', 145);
INSERT INTO `tp_region` VALUES (1495, '市辖区', 146);
INSERT INTO `tp_region` VALUES (1496, '金安区', 146);
INSERT INTO `tp_region` VALUES (1497, '裕安区', 146);
INSERT INTO `tp_region` VALUES (1498, '寿县', 146);
INSERT INTO `tp_region` VALUES (1499, '霍邱县', 146);
INSERT INTO `tp_region` VALUES (1500, '舒城县', 146);
INSERT INTO `tp_region` VALUES (1501, '金寨县', 146);
INSERT INTO `tp_region` VALUES (1502, '霍山县', 146);
INSERT INTO `tp_region` VALUES (1503, '市辖区', 147);
INSERT INTO `tp_region` VALUES (1504, '谯城区', 147);
INSERT INTO `tp_region` VALUES (1505, '涡阳县', 147);
INSERT INTO `tp_region` VALUES (1506, '蒙城县', 147);
INSERT INTO `tp_region` VALUES (1507, '利辛县', 147);
INSERT INTO `tp_region` VALUES (1508, '市辖区', 148);
INSERT INTO `tp_region` VALUES (1509, '贵池区', 148);
INSERT INTO `tp_region` VALUES (1510, '东至县', 148);
INSERT INTO `tp_region` VALUES (1511, '石台县', 148);
INSERT INTO `tp_region` VALUES (1512, '青阳县', 148);
INSERT INTO `tp_region` VALUES (1513, '市辖区', 149);
INSERT INTO `tp_region` VALUES (1514, '宣州区', 149);
INSERT INTO `tp_region` VALUES (1515, '郎溪县', 149);
INSERT INTO `tp_region` VALUES (1516, '广德县', 149);
INSERT INTO `tp_region` VALUES (1517, '泾县', 149);
INSERT INTO `tp_region` VALUES (1518, '绩溪县', 149);
INSERT INTO `tp_region` VALUES (1519, '旌德县', 149);
INSERT INTO `tp_region` VALUES (1520, '宁国市', 149);
INSERT INTO `tp_region` VALUES (1521, '市辖区', 150);
INSERT INTO `tp_region` VALUES (1522, '鼓楼区', 150);
INSERT INTO `tp_region` VALUES (1523, '台江区', 150);
INSERT INTO `tp_region` VALUES (1524, '仓山区', 150);
INSERT INTO `tp_region` VALUES (1525, '马尾区', 150);
INSERT INTO `tp_region` VALUES (1526, '晋安区', 150);
INSERT INTO `tp_region` VALUES (1527, '闽侯县', 150);
INSERT INTO `tp_region` VALUES (1528, '连江县', 150);
INSERT INTO `tp_region` VALUES (1529, '罗源县', 150);
INSERT INTO `tp_region` VALUES (1530, '闽清县', 150);
INSERT INTO `tp_region` VALUES (1531, '永泰县', 150);
INSERT INTO `tp_region` VALUES (1532, '平潭县', 150);
INSERT INTO `tp_region` VALUES (1533, '福清市', 150);
INSERT INTO `tp_region` VALUES (1534, '长乐市', 150);
INSERT INTO `tp_region` VALUES (1535, '市辖区', 151);
INSERT INTO `tp_region` VALUES (1536, '思明区', 151);
INSERT INTO `tp_region` VALUES (1537, '海沧区', 151);
INSERT INTO `tp_region` VALUES (1538, '湖里区', 151);
INSERT INTO `tp_region` VALUES (1539, '集美区', 151);
INSERT INTO `tp_region` VALUES (1540, '同安区', 151);
INSERT INTO `tp_region` VALUES (1541, '翔安区', 151);
INSERT INTO `tp_region` VALUES (1542, '市辖区', 152);
INSERT INTO `tp_region` VALUES (1543, '城厢区', 152);
INSERT INTO `tp_region` VALUES (1544, '涵江区', 152);
INSERT INTO `tp_region` VALUES (1545, '荔城区', 152);
INSERT INTO `tp_region` VALUES (1546, '秀屿区', 152);
INSERT INTO `tp_region` VALUES (1547, '仙游县', 152);
INSERT INTO `tp_region` VALUES (1548, '市辖区', 153);
INSERT INTO `tp_region` VALUES (1549, '梅列区', 153);
INSERT INTO `tp_region` VALUES (1550, '三元区', 153);
INSERT INTO `tp_region` VALUES (1551, '明溪县', 153);
INSERT INTO `tp_region` VALUES (1552, '清流县', 153);
INSERT INTO `tp_region` VALUES (1553, '宁化县', 153);
INSERT INTO `tp_region` VALUES (1554, '大田县', 153);
INSERT INTO `tp_region` VALUES (1555, '尤溪县', 153);
INSERT INTO `tp_region` VALUES (1556, '沙县', 153);
INSERT INTO `tp_region` VALUES (1557, '将乐县', 153);
INSERT INTO `tp_region` VALUES (1558, '泰宁县', 153);
INSERT INTO `tp_region` VALUES (1559, '建宁县', 153);
INSERT INTO `tp_region` VALUES (1560, '永安市', 153);
INSERT INTO `tp_region` VALUES (1561, '市辖区', 154);
INSERT INTO `tp_region` VALUES (1562, '鲤城区', 154);
INSERT INTO `tp_region` VALUES (1563, '丰泽区', 154);
INSERT INTO `tp_region` VALUES (1564, '洛江区', 154);
INSERT INTO `tp_region` VALUES (1565, '泉港区', 154);
INSERT INTO `tp_region` VALUES (1566, '惠安县', 154);
INSERT INTO `tp_region` VALUES (1567, '安溪县', 154);
INSERT INTO `tp_region` VALUES (1568, '永春县', 154);
INSERT INTO `tp_region` VALUES (1569, '德化县', 154);
INSERT INTO `tp_region` VALUES (1570, '金门县', 154);
INSERT INTO `tp_region` VALUES (1571, '石狮市', 154);
INSERT INTO `tp_region` VALUES (1572, '晋江市', 154);
INSERT INTO `tp_region` VALUES (1573, '南安市', 154);
INSERT INTO `tp_region` VALUES (1574, '市辖区', 155);
INSERT INTO `tp_region` VALUES (1575, '芗城区', 155);
INSERT INTO `tp_region` VALUES (1576, '龙文区', 155);
INSERT INTO `tp_region` VALUES (1577, '云霄县', 155);
INSERT INTO `tp_region` VALUES (1578, '漳浦县', 155);
INSERT INTO `tp_region` VALUES (1579, '诏安县', 155);
INSERT INTO `tp_region` VALUES (1580, '长泰县', 155);
INSERT INTO `tp_region` VALUES (1581, '东山县', 155);
INSERT INTO `tp_region` VALUES (1582, '南靖县', 155);
INSERT INTO `tp_region` VALUES (1583, '平和县', 155);
INSERT INTO `tp_region` VALUES (1584, '华安县', 155);
INSERT INTO `tp_region` VALUES (1585, '龙海市', 155);
INSERT INTO `tp_region` VALUES (1586, '市辖区', 156);
INSERT INTO `tp_region` VALUES (1587, '延平区', 156);
INSERT INTO `tp_region` VALUES (1588, '顺昌县', 156);
INSERT INTO `tp_region` VALUES (1589, '浦城县', 156);
INSERT INTO `tp_region` VALUES (1590, '光泽县', 156);
INSERT INTO `tp_region` VALUES (1591, '松溪县', 156);
INSERT INTO `tp_region` VALUES (1592, '政和县', 156);
INSERT INTO `tp_region` VALUES (1593, '邵武市', 156);
INSERT INTO `tp_region` VALUES (1594, '武夷山市', 156);
INSERT INTO `tp_region` VALUES (1595, '建瓯市', 156);
INSERT INTO `tp_region` VALUES (1596, '建阳市', 156);
INSERT INTO `tp_region` VALUES (1597, '市辖区', 157);
INSERT INTO `tp_region` VALUES (1598, '新罗区', 157);
INSERT INTO `tp_region` VALUES (1599, '长汀县', 157);
INSERT INTO `tp_region` VALUES (1600, '永定县', 157);
INSERT INTO `tp_region` VALUES (1601, '上杭县', 157);
INSERT INTO `tp_region` VALUES (1602, '武平县', 157);
INSERT INTO `tp_region` VALUES (1603, '连城县', 157);
INSERT INTO `tp_region` VALUES (1604, '漳平市', 157);
INSERT INTO `tp_region` VALUES (1605, '市辖区', 158);
INSERT INTO `tp_region` VALUES (1606, '蕉城区', 158);
INSERT INTO `tp_region` VALUES (1607, '霞浦县', 158);
INSERT INTO `tp_region` VALUES (1608, '古田县', 158);
INSERT INTO `tp_region` VALUES (1609, '屏南县', 158);
INSERT INTO `tp_region` VALUES (1610, '寿宁县', 158);
INSERT INTO `tp_region` VALUES (1611, '周宁县', 158);
INSERT INTO `tp_region` VALUES (1612, '柘荣县', 158);
INSERT INTO `tp_region` VALUES (1613, '福安市', 158);
INSERT INTO `tp_region` VALUES (1614, '福鼎市', 158);
INSERT INTO `tp_region` VALUES (1615, '市辖区', 159);
INSERT INTO `tp_region` VALUES (1616, '东湖区', 159);
INSERT INTO `tp_region` VALUES (1617, '西湖区', 159);
INSERT INTO `tp_region` VALUES (1618, '青云谱区', 159);
INSERT INTO `tp_region` VALUES (1619, '湾里区', 159);
INSERT INTO `tp_region` VALUES (1620, '青山湖区', 159);
INSERT INTO `tp_region` VALUES (1621, '南昌县', 159);
INSERT INTO `tp_region` VALUES (1622, '新建县', 159);
INSERT INTO `tp_region` VALUES (1623, '安义县', 159);
INSERT INTO `tp_region` VALUES (1624, '进贤县', 159);
INSERT INTO `tp_region` VALUES (1625, '市辖区', 160);
INSERT INTO `tp_region` VALUES (1626, '昌江区', 160);
INSERT INTO `tp_region` VALUES (1627, '珠山区', 160);
INSERT INTO `tp_region` VALUES (1628, '浮梁县', 160);
INSERT INTO `tp_region` VALUES (1629, '乐平市', 160);
INSERT INTO `tp_region` VALUES (1630, '市辖区', 161);
INSERT INTO `tp_region` VALUES (1631, '安源区', 161);
INSERT INTO `tp_region` VALUES (1632, '湘东区', 161);
INSERT INTO `tp_region` VALUES (1633, '莲花县', 161);
INSERT INTO `tp_region` VALUES (1634, '上栗县', 161);
INSERT INTO `tp_region` VALUES (1635, '芦溪县', 161);
INSERT INTO `tp_region` VALUES (1636, '市辖区', 162);
INSERT INTO `tp_region` VALUES (1637, '庐山区', 162);
INSERT INTO `tp_region` VALUES (1638, '浔阳区', 162);
INSERT INTO `tp_region` VALUES (1639, '九江县', 162);
INSERT INTO `tp_region` VALUES (1640, '武宁县', 162);
INSERT INTO `tp_region` VALUES (1641, '修水县', 162);
INSERT INTO `tp_region` VALUES (1642, '永修县', 162);
INSERT INTO `tp_region` VALUES (1643, '德安县', 162);
INSERT INTO `tp_region` VALUES (1644, '星子县', 162);
INSERT INTO `tp_region` VALUES (1645, '都昌县', 162);
INSERT INTO `tp_region` VALUES (1646, '湖口县', 162);
INSERT INTO `tp_region` VALUES (1647, '彭泽县', 162);
INSERT INTO `tp_region` VALUES (1648, '瑞昌市', 162);
INSERT INTO `tp_region` VALUES (1649, '市辖区', 163);
INSERT INTO `tp_region` VALUES (1650, '渝水区', 163);
INSERT INTO `tp_region` VALUES (1651, '分宜县', 163);
INSERT INTO `tp_region` VALUES (1652, '市辖区', 164);
INSERT INTO `tp_region` VALUES (1653, '月湖区', 164);
INSERT INTO `tp_region` VALUES (1654, '余江县', 164);
INSERT INTO `tp_region` VALUES (1655, '贵溪市', 164);
INSERT INTO `tp_region` VALUES (1656, '市辖区', 165);
INSERT INTO `tp_region` VALUES (1657, '章贡区', 165);
INSERT INTO `tp_region` VALUES (1658, '赣县', 165);
INSERT INTO `tp_region` VALUES (1659, '信丰县', 165);
INSERT INTO `tp_region` VALUES (1660, '大余县', 165);
INSERT INTO `tp_region` VALUES (1661, '上犹县', 165);
INSERT INTO `tp_region` VALUES (1662, '崇义县', 165);
INSERT INTO `tp_region` VALUES (1663, '安远县', 165);
INSERT INTO `tp_region` VALUES (1664, '龙南县', 165);
INSERT INTO `tp_region` VALUES (1665, '定南县', 165);
INSERT INTO `tp_region` VALUES (1666, '全南县', 165);
INSERT INTO `tp_region` VALUES (1667, '宁都县', 165);
INSERT INTO `tp_region` VALUES (1668, '于都县', 165);
INSERT INTO `tp_region` VALUES (1669, '兴国县', 165);
INSERT INTO `tp_region` VALUES (1670, '会昌县', 165);
INSERT INTO `tp_region` VALUES (1671, '寻乌县', 165);
INSERT INTO `tp_region` VALUES (1672, '石城县', 165);
INSERT INTO `tp_region` VALUES (1673, '瑞金市', 165);
INSERT INTO `tp_region` VALUES (1674, '南康市', 165);
INSERT INTO `tp_region` VALUES (1675, '市辖区', 166);
INSERT INTO `tp_region` VALUES (1676, '吉州区', 166);
INSERT INTO `tp_region` VALUES (1677, '青原区', 166);
INSERT INTO `tp_region` VALUES (1678, '吉安县', 166);
INSERT INTO `tp_region` VALUES (1679, '吉水县', 166);
INSERT INTO `tp_region` VALUES (1680, '峡江县', 166);
INSERT INTO `tp_region` VALUES (1681, '新干县', 166);
INSERT INTO `tp_region` VALUES (1682, '永丰县', 166);
INSERT INTO `tp_region` VALUES (1683, '泰和县', 166);
INSERT INTO `tp_region` VALUES (1684, '遂川县', 166);
INSERT INTO `tp_region` VALUES (1685, '万安县', 166);
INSERT INTO `tp_region` VALUES (1686, '安福县', 166);
INSERT INTO `tp_region` VALUES (1687, '永新县', 166);
INSERT INTO `tp_region` VALUES (1688, '井冈山市', 166);
INSERT INTO `tp_region` VALUES (1689, '市辖区', 167);
INSERT INTO `tp_region` VALUES (1690, '袁州区', 167);
INSERT INTO `tp_region` VALUES (1691, '奉新县', 167);
INSERT INTO `tp_region` VALUES (1692, '万载县', 167);
INSERT INTO `tp_region` VALUES (1693, '上高县', 167);
INSERT INTO `tp_region` VALUES (1694, '宜丰县', 167);
INSERT INTO `tp_region` VALUES (1695, '靖安县', 167);
INSERT INTO `tp_region` VALUES (1696, '铜鼓县', 167);
INSERT INTO `tp_region` VALUES (1697, '丰城市', 167);
INSERT INTO `tp_region` VALUES (1698, '樟树市', 167);
INSERT INTO `tp_region` VALUES (1699, '高安市', 167);
INSERT INTO `tp_region` VALUES (1700, '市辖区', 168);
INSERT INTO `tp_region` VALUES (1701, '临川区', 168);
INSERT INTO `tp_region` VALUES (1702, '南城县', 168);
INSERT INTO `tp_region` VALUES (1703, '黎川县', 168);
INSERT INTO `tp_region` VALUES (1704, '南丰县', 168);
INSERT INTO `tp_region` VALUES (1705, '崇仁县', 168);
INSERT INTO `tp_region` VALUES (1706, '乐安县', 168);
INSERT INTO `tp_region` VALUES (1707, '宜黄县', 168);
INSERT INTO `tp_region` VALUES (1708, '金溪县', 168);
INSERT INTO `tp_region` VALUES (1709, '资溪县', 168);
INSERT INTO `tp_region` VALUES (1710, '东乡县', 168);
INSERT INTO `tp_region` VALUES (1711, '广昌县', 168);
INSERT INTO `tp_region` VALUES (1712, '市辖区', 169);
INSERT INTO `tp_region` VALUES (1713, '信州区', 169);
INSERT INTO `tp_region` VALUES (1714, '上饶县', 169);
INSERT INTO `tp_region` VALUES (1715, '广丰县', 169);
INSERT INTO `tp_region` VALUES (1716, '玉山县', 169);
INSERT INTO `tp_region` VALUES (1717, '铅山县', 169);
INSERT INTO `tp_region` VALUES (1718, '横峰县', 169);
INSERT INTO `tp_region` VALUES (1719, '弋阳县', 169);
INSERT INTO `tp_region` VALUES (1720, '余干县', 169);
INSERT INTO `tp_region` VALUES (1721, '鄱阳县', 169);
INSERT INTO `tp_region` VALUES (1722, '万年县', 169);
INSERT INTO `tp_region` VALUES (1723, '婺源县', 169);
INSERT INTO `tp_region` VALUES (1724, '德兴市', 169);
INSERT INTO `tp_region` VALUES (1725, '市辖区', 170);
INSERT INTO `tp_region` VALUES (1726, '历下区', 170);
INSERT INTO `tp_region` VALUES (1727, '市中区', 170);
INSERT INTO `tp_region` VALUES (1728, '槐荫区', 170);
INSERT INTO `tp_region` VALUES (1729, '天桥区', 170);
INSERT INTO `tp_region` VALUES (1730, '历城区', 170);
INSERT INTO `tp_region` VALUES (1731, '长清区', 170);
INSERT INTO `tp_region` VALUES (1732, '平阴县', 170);
INSERT INTO `tp_region` VALUES (1733, '济阳县', 170);
INSERT INTO `tp_region` VALUES (1734, '商河县', 170);
INSERT INTO `tp_region` VALUES (1735, '章丘市', 170);
INSERT INTO `tp_region` VALUES (1736, '市辖区', 171);
INSERT INTO `tp_region` VALUES (1737, '市南区', 171);
INSERT INTO `tp_region` VALUES (1738, '市北区', 171);
INSERT INTO `tp_region` VALUES (1739, '四方区', 171);
INSERT INTO `tp_region` VALUES (1740, '黄岛区', 171);
INSERT INTO `tp_region` VALUES (1741, '崂山区', 171);
INSERT INTO `tp_region` VALUES (1742, '李沧区', 171);
INSERT INTO `tp_region` VALUES (1743, '城阳区', 171);
INSERT INTO `tp_region` VALUES (1744, '胶州市', 171);
INSERT INTO `tp_region` VALUES (1745, '即墨市', 171);
INSERT INTO `tp_region` VALUES (1746, '平度市', 171);
INSERT INTO `tp_region` VALUES (1747, '胶南市', 171);
INSERT INTO `tp_region` VALUES (1748, '莱西市', 171);
INSERT INTO `tp_region` VALUES (1749, '市辖区', 172);
INSERT INTO `tp_region` VALUES (1750, '淄川区', 172);
INSERT INTO `tp_region` VALUES (1751, '张店区', 172);
INSERT INTO `tp_region` VALUES (1752, '博山区', 172);
INSERT INTO `tp_region` VALUES (1753, '临淄区', 172);
INSERT INTO `tp_region` VALUES (1754, '周村区', 172);
INSERT INTO `tp_region` VALUES (1755, '桓台县', 172);
INSERT INTO `tp_region` VALUES (1756, '高青县', 172);
INSERT INTO `tp_region` VALUES (1757, '沂源县', 172);
INSERT INTO `tp_region` VALUES (1758, '市辖区', 173);
INSERT INTO `tp_region` VALUES (1759, '市中区', 173);
INSERT INTO `tp_region` VALUES (1760, '薛城区', 173);
INSERT INTO `tp_region` VALUES (1761, '峄城区', 173);
INSERT INTO `tp_region` VALUES (1762, '台儿庄区', 173);
INSERT INTO `tp_region` VALUES (1763, '山亭区', 173);
INSERT INTO `tp_region` VALUES (1764, '滕州市', 173);
INSERT INTO `tp_region` VALUES (1765, '市辖区', 174);
INSERT INTO `tp_region` VALUES (1766, '东营区', 174);
INSERT INTO `tp_region` VALUES (1767, '河口区', 174);
INSERT INTO `tp_region` VALUES (1768, '垦利县', 174);
INSERT INTO `tp_region` VALUES (1769, '利津县', 174);
INSERT INTO `tp_region` VALUES (1770, '广饶县', 174);
INSERT INTO `tp_region` VALUES (1771, '市辖区', 175);
INSERT INTO `tp_region` VALUES (1772, '芝罘区', 175);
INSERT INTO `tp_region` VALUES (1773, '福山区', 175);
INSERT INTO `tp_region` VALUES (1774, '牟平区', 175);
INSERT INTO `tp_region` VALUES (1775, '莱山区', 175);
INSERT INTO `tp_region` VALUES (1776, '长岛县', 175);
INSERT INTO `tp_region` VALUES (1777, '龙口市', 175);
INSERT INTO `tp_region` VALUES (1778, '莱阳市', 175);
INSERT INTO `tp_region` VALUES (1779, '莱州市', 175);
INSERT INTO `tp_region` VALUES (1780, '蓬莱市', 175);
INSERT INTO `tp_region` VALUES (1781, '招远市', 175);
INSERT INTO `tp_region` VALUES (1782, '栖霞市', 175);
INSERT INTO `tp_region` VALUES (1783, '海阳市', 175);
INSERT INTO `tp_region` VALUES (1784, '市辖区', 176);
INSERT INTO `tp_region` VALUES (1785, '潍城区', 176);
INSERT INTO `tp_region` VALUES (1786, '寒亭区', 176);
INSERT INTO `tp_region` VALUES (1787, '坊子区', 176);
INSERT INTO `tp_region` VALUES (1788, '奎文区', 176);
INSERT INTO `tp_region` VALUES (1789, '临朐县', 176);
INSERT INTO `tp_region` VALUES (1790, '昌乐县', 176);
INSERT INTO `tp_region` VALUES (1791, '青州市', 176);
INSERT INTO `tp_region` VALUES (1792, '诸城市', 176);
INSERT INTO `tp_region` VALUES (1793, '寿光市', 176);
INSERT INTO `tp_region` VALUES (1794, '安丘市', 176);
INSERT INTO `tp_region` VALUES (1795, '高密市', 176);
INSERT INTO `tp_region` VALUES (1796, '昌邑市', 176);
INSERT INTO `tp_region` VALUES (1797, '市辖区', 177);
INSERT INTO `tp_region` VALUES (1798, '市中区', 177);
INSERT INTO `tp_region` VALUES (1799, '任城区', 177);
INSERT INTO `tp_region` VALUES (1800, '微山县', 177);
INSERT INTO `tp_region` VALUES (1801, '鱼台县', 177);
INSERT INTO `tp_region` VALUES (1802, '金乡县', 177);
INSERT INTO `tp_region` VALUES (1803, '嘉祥县', 177);
INSERT INTO `tp_region` VALUES (1804, '汶上县', 177);
INSERT INTO `tp_region` VALUES (1805, '泗水县', 177);
INSERT INTO `tp_region` VALUES (1806, '梁山县', 177);
INSERT INTO `tp_region` VALUES (1807, '曲阜市', 177);
INSERT INTO `tp_region` VALUES (1808, '兖州市', 177);
INSERT INTO `tp_region` VALUES (1809, '邹城市', 177);
INSERT INTO `tp_region` VALUES (1810, '市辖区', 178);
INSERT INTO `tp_region` VALUES (1811, '泰山区', 178);
INSERT INTO `tp_region` VALUES (1812, '岱岳区', 178);
INSERT INTO `tp_region` VALUES (1813, '宁阳县', 178);
INSERT INTO `tp_region` VALUES (1814, '东平县', 178);
INSERT INTO `tp_region` VALUES (1815, '新泰市', 178);
INSERT INTO `tp_region` VALUES (1816, '肥城市', 178);
INSERT INTO `tp_region` VALUES (1817, '市辖区', 179);
INSERT INTO `tp_region` VALUES (1818, '环翠区', 179);
INSERT INTO `tp_region` VALUES (1819, '文登市', 179);
INSERT INTO `tp_region` VALUES (1820, '荣成市', 179);
INSERT INTO `tp_region` VALUES (1821, '乳山市', 179);
INSERT INTO `tp_region` VALUES (1822, '市辖区', 180);
INSERT INTO `tp_region` VALUES (1823, '东港区', 180);
INSERT INTO `tp_region` VALUES (1824, '岚山区', 180);
INSERT INTO `tp_region` VALUES (1825, '五莲县', 180);
INSERT INTO `tp_region` VALUES (1826, '莒县', 180);
INSERT INTO `tp_region` VALUES (1827, '市辖区', 181);
INSERT INTO `tp_region` VALUES (1828, '莱城区', 181);
INSERT INTO `tp_region` VALUES (1829, '钢城区', 181);
INSERT INTO `tp_region` VALUES (1830, '市辖区', 182);
INSERT INTO `tp_region` VALUES (1831, '兰山区', 182);
INSERT INTO `tp_region` VALUES (1832, '罗庄区', 182);
INSERT INTO `tp_region` VALUES (1833, '河东区', 182);
INSERT INTO `tp_region` VALUES (1834, '沂南县', 182);
INSERT INTO `tp_region` VALUES (1835, '郯城县', 182);
INSERT INTO `tp_region` VALUES (1836, '沂水县', 182);
INSERT INTO `tp_region` VALUES (1837, '苍山县', 182);
INSERT INTO `tp_region` VALUES (1838, '费县', 182);
INSERT INTO `tp_region` VALUES (1839, '平邑县', 182);
INSERT INTO `tp_region` VALUES (1840, '莒南县', 182);
INSERT INTO `tp_region` VALUES (1841, '蒙阴县', 182);
INSERT INTO `tp_region` VALUES (1842, '临沭县', 182);
INSERT INTO `tp_region` VALUES (1843, '市辖区', 183);
INSERT INTO `tp_region` VALUES (1844, '德城区', 183);
INSERT INTO `tp_region` VALUES (1845, '陵县', 183);
INSERT INTO `tp_region` VALUES (1846, '宁津县', 183);
INSERT INTO `tp_region` VALUES (1847, '庆云县', 183);
INSERT INTO `tp_region` VALUES (1848, '临邑县', 183);
INSERT INTO `tp_region` VALUES (1849, '齐河县', 183);
INSERT INTO `tp_region` VALUES (1850, '平原县', 183);
INSERT INTO `tp_region` VALUES (1851, '夏津县', 183);
INSERT INTO `tp_region` VALUES (1852, '武城县', 183);
INSERT INTO `tp_region` VALUES (1853, '乐陵市', 183);
INSERT INTO `tp_region` VALUES (1854, '禹城市', 183);
INSERT INTO `tp_region` VALUES (1855, '市辖区', 184);
INSERT INTO `tp_region` VALUES (1856, '东昌府区', 184);
INSERT INTO `tp_region` VALUES (1857, '阳谷县', 184);
INSERT INTO `tp_region` VALUES (1858, '莘县', 184);
INSERT INTO `tp_region` VALUES (1859, '茌平县', 184);
INSERT INTO `tp_region` VALUES (1860, '东阿县', 184);
INSERT INTO `tp_region` VALUES (1861, '冠县', 184);
INSERT INTO `tp_region` VALUES (1862, '高唐县', 184);
INSERT INTO `tp_region` VALUES (1863, '临清市', 184);
INSERT INTO `tp_region` VALUES (1864, '市辖区', 185);
INSERT INTO `tp_region` VALUES (1865, '滨城区', 185);
INSERT INTO `tp_region` VALUES (1866, '惠民县', 185);
INSERT INTO `tp_region` VALUES (1867, '阳信县', 185);
INSERT INTO `tp_region` VALUES (1868, '无棣县', 185);
INSERT INTO `tp_region` VALUES (1869, '沾化县', 185);
INSERT INTO `tp_region` VALUES (1870, '博兴县', 185);
INSERT INTO `tp_region` VALUES (1871, '邹平县', 185);
INSERT INTO `tp_region` VALUES (1873, '牡丹区', 186);
INSERT INTO `tp_region` VALUES (1874, '曹县', 186);
INSERT INTO `tp_region` VALUES (1875, '单县', 186);
INSERT INTO `tp_region` VALUES (1876, '成武县', 186);
INSERT INTO `tp_region` VALUES (1877, '巨野县', 186);
INSERT INTO `tp_region` VALUES (1878, '郓城县', 186);
INSERT INTO `tp_region` VALUES (1879, '鄄城县', 186);
INSERT INTO `tp_region` VALUES (1880, '定陶县', 186);
INSERT INTO `tp_region` VALUES (1881, '东明县', 186);
INSERT INTO `tp_region` VALUES (1882, '市辖区', 187);
INSERT INTO `tp_region` VALUES (1883, '中原区', 187);
INSERT INTO `tp_region` VALUES (1884, '二七区', 187);
INSERT INTO `tp_region` VALUES (1885, '管城回族区', 187);
INSERT INTO `tp_region` VALUES (1886, '金水区', 187);
INSERT INTO `tp_region` VALUES (1887, '上街区', 187);
INSERT INTO `tp_region` VALUES (1888, '惠济区', 187);
INSERT INTO `tp_region` VALUES (1889, '中牟县', 187);
INSERT INTO `tp_region` VALUES (1890, '巩义市', 187);
INSERT INTO `tp_region` VALUES (1891, '荥阳市', 187);
INSERT INTO `tp_region` VALUES (1892, '新密市', 187);
INSERT INTO `tp_region` VALUES (1893, '新郑市', 187);
INSERT INTO `tp_region` VALUES (1894, '登封市', 187);
INSERT INTO `tp_region` VALUES (1895, '市辖区', 188);
INSERT INTO `tp_region` VALUES (1896, '龙亭区', 188);
INSERT INTO `tp_region` VALUES (1897, '顺河回族区', 188);
INSERT INTO `tp_region` VALUES (1898, '鼓楼区', 188);
INSERT INTO `tp_region` VALUES (1899, '禹王台区', 188);
INSERT INTO `tp_region` VALUES (1900, '金明区', 188);
INSERT INTO `tp_region` VALUES (1901, '杞县', 188);
INSERT INTO `tp_region` VALUES (1902, '通许县', 188);
INSERT INTO `tp_region` VALUES (1903, '尉氏县', 188);
INSERT INTO `tp_region` VALUES (1904, '开封县', 188);
INSERT INTO `tp_region` VALUES (1905, '兰考县', 188);
INSERT INTO `tp_region` VALUES (1906, '市辖区', 189);
INSERT INTO `tp_region` VALUES (1907, '老城区', 189);
INSERT INTO `tp_region` VALUES (1908, '西工区', 189);
INSERT INTO `tp_region` VALUES (1909, '瀍河回族区', 189);
INSERT INTO `tp_region` VALUES (1910, '涧西区', 189);
INSERT INTO `tp_region` VALUES (1911, '吉利区', 189);
INSERT INTO `tp_region` VALUES (1912, '洛龙区', 189);
INSERT INTO `tp_region` VALUES (1913, '孟津县', 189);
INSERT INTO `tp_region` VALUES (1914, '新安县', 189);
INSERT INTO `tp_region` VALUES (1915, '栾川县', 189);
INSERT INTO `tp_region` VALUES (1916, '嵩县', 189);
INSERT INTO `tp_region` VALUES (1917, '汝阳县', 189);
INSERT INTO `tp_region` VALUES (1918, '宜阳县', 189);
INSERT INTO `tp_region` VALUES (1919, '洛宁县', 189);
INSERT INTO `tp_region` VALUES (1920, '伊川县', 189);
INSERT INTO `tp_region` VALUES (1921, '偃师市', 189);
INSERT INTO `tp_region` VALUES (1922, '市辖区', 190);
INSERT INTO `tp_region` VALUES (1923, '新华区', 190);
INSERT INTO `tp_region` VALUES (1924, '卫东区', 190);
INSERT INTO `tp_region` VALUES (1925, '石龙区', 190);
INSERT INTO `tp_region` VALUES (1926, '湛河区', 190);
INSERT INTO `tp_region` VALUES (1927, '宝丰县', 190);
INSERT INTO `tp_region` VALUES (1928, '叶县', 190);
INSERT INTO `tp_region` VALUES (1929, '鲁山县', 190);
INSERT INTO `tp_region` VALUES (1930, '郏县', 190);
INSERT INTO `tp_region` VALUES (1931, '舞钢市', 190);
INSERT INTO `tp_region` VALUES (1932, '汝州市', 190);
INSERT INTO `tp_region` VALUES (1933, '市辖区', 191);
INSERT INTO `tp_region` VALUES (1934, '文峰区', 191);
INSERT INTO `tp_region` VALUES (1935, '北关区', 191);
INSERT INTO `tp_region` VALUES (1936, '殷都区', 191);
INSERT INTO `tp_region` VALUES (1937, '龙安区', 191);
INSERT INTO `tp_region` VALUES (1938, '安阳县', 191);
INSERT INTO `tp_region` VALUES (1939, '汤阴县', 191);
INSERT INTO `tp_region` VALUES (1940, '滑县', 191);
INSERT INTO `tp_region` VALUES (1941, '内黄县', 191);
INSERT INTO `tp_region` VALUES (1942, '林州市', 191);
INSERT INTO `tp_region` VALUES (1943, '市辖区', 192);
INSERT INTO `tp_region` VALUES (1944, '鹤山区', 192);
INSERT INTO `tp_region` VALUES (1945, '山城区', 192);
INSERT INTO `tp_region` VALUES (1946, '淇滨区', 192);
INSERT INTO `tp_region` VALUES (1947, '浚县', 192);
INSERT INTO `tp_region` VALUES (1948, '淇县', 192);
INSERT INTO `tp_region` VALUES (1949, '市辖区', 193);
INSERT INTO `tp_region` VALUES (1950, '红旗区', 193);
INSERT INTO `tp_region` VALUES (1951, '卫滨区', 193);
INSERT INTO `tp_region` VALUES (1952, '凤泉区', 193);
INSERT INTO `tp_region` VALUES (1953, '牧野区', 193);
INSERT INTO `tp_region` VALUES (1954, '新乡县', 193);
INSERT INTO `tp_region` VALUES (1955, '获嘉县', 193);
INSERT INTO `tp_region` VALUES (1956, '原阳县', 193);
INSERT INTO `tp_region` VALUES (1957, '延津县', 193);
INSERT INTO `tp_region` VALUES (1958, '封丘县', 193);
INSERT INTO `tp_region` VALUES (1959, '长垣县', 193);
INSERT INTO `tp_region` VALUES (1960, '卫辉市', 193);
INSERT INTO `tp_region` VALUES (1961, '辉县市', 193);
INSERT INTO `tp_region` VALUES (1962, '市辖区', 194);
INSERT INTO `tp_region` VALUES (1963, '解放区', 194);
INSERT INTO `tp_region` VALUES (1964, '中站区', 194);
INSERT INTO `tp_region` VALUES (1965, '马村区', 194);
INSERT INTO `tp_region` VALUES (1966, '山阳区', 194);
INSERT INTO `tp_region` VALUES (1967, '修武县', 194);
INSERT INTO `tp_region` VALUES (1968, '博爱县', 194);
INSERT INTO `tp_region` VALUES (1969, '武陟县', 194);
INSERT INTO `tp_region` VALUES (1970, '温县', 194);
INSERT INTO `tp_region` VALUES (1971, '济源市', 194);
INSERT INTO `tp_region` VALUES (1972, '沁阳市', 194);
INSERT INTO `tp_region` VALUES (1973, '孟州市', 194);
INSERT INTO `tp_region` VALUES (1974, '市辖区', 195);
INSERT INTO `tp_region` VALUES (1975, '华龙区', 195);
INSERT INTO `tp_region` VALUES (1976, '清丰县', 195);
INSERT INTO `tp_region` VALUES (1977, '南乐县', 195);
INSERT INTO `tp_region` VALUES (1978, '范县', 195);
INSERT INTO `tp_region` VALUES (1979, '台前县', 195);
INSERT INTO `tp_region` VALUES (1980, '濮阳县', 195);
INSERT INTO `tp_region` VALUES (1981, '市辖区', 196);
INSERT INTO `tp_region` VALUES (1982, '魏都区', 196);
INSERT INTO `tp_region` VALUES (1983, '许昌县', 196);
INSERT INTO `tp_region` VALUES (1984, '鄢陵县', 196);
INSERT INTO `tp_region` VALUES (1985, '襄城县', 196);
INSERT INTO `tp_region` VALUES (1986, '禹州市', 196);
INSERT INTO `tp_region` VALUES (1987, '长葛市', 196);
INSERT INTO `tp_region` VALUES (1988, '市辖区', 197);
INSERT INTO `tp_region` VALUES (1989, '源汇区', 197);
INSERT INTO `tp_region` VALUES (1990, '郾城区', 197);
INSERT INTO `tp_region` VALUES (1991, '召陵区', 197);
INSERT INTO `tp_region` VALUES (1992, '舞阳县', 197);
INSERT INTO `tp_region` VALUES (1993, '临颍县', 197);
INSERT INTO `tp_region` VALUES (1994, '市辖区', 198);
INSERT INTO `tp_region` VALUES (1995, '湖滨区', 198);
INSERT INTO `tp_region` VALUES (1996, '渑池县', 198);
INSERT INTO `tp_region` VALUES (1997, '陕县', 198);
INSERT INTO `tp_region` VALUES (1998, '卢氏县', 198);
INSERT INTO `tp_region` VALUES (1999, '义马市', 198);
INSERT INTO `tp_region` VALUES (2000, '灵宝市', 198);
INSERT INTO `tp_region` VALUES (2001, '市辖区', 199);
INSERT INTO `tp_region` VALUES (2002, '宛城区', 199);
INSERT INTO `tp_region` VALUES (2003, '卧龙区', 199);
INSERT INTO `tp_region` VALUES (2004, '南召县', 199);
INSERT INTO `tp_region` VALUES (2005, '方城县', 199);
INSERT INTO `tp_region` VALUES (2006, '西峡县', 199);
INSERT INTO `tp_region` VALUES (2007, '镇平县', 199);
INSERT INTO `tp_region` VALUES (2008, '内乡县', 199);
INSERT INTO `tp_region` VALUES (2009, '淅川县', 199);
INSERT INTO `tp_region` VALUES (2010, '社旗县', 199);
INSERT INTO `tp_region` VALUES (2011, '唐河县', 199);
INSERT INTO `tp_region` VALUES (2012, '新野县', 199);
INSERT INTO `tp_region` VALUES (2013, '桐柏县', 199);
INSERT INTO `tp_region` VALUES (2014, '邓州市', 199);
INSERT INTO `tp_region` VALUES (2015, '市辖区', 200);
INSERT INTO `tp_region` VALUES (2016, '梁园区', 200);
INSERT INTO `tp_region` VALUES (2017, '睢阳区', 200);
INSERT INTO `tp_region` VALUES (2018, '民权县', 200);
INSERT INTO `tp_region` VALUES (2019, '睢县', 200);
INSERT INTO `tp_region` VALUES (2020, '宁陵县', 200);
INSERT INTO `tp_region` VALUES (2021, '柘城县', 200);
INSERT INTO `tp_region` VALUES (2022, '虞城县', 200);
INSERT INTO `tp_region` VALUES (2023, '夏邑县', 200);
INSERT INTO `tp_region` VALUES (2024, '永城市', 200);
INSERT INTO `tp_region` VALUES (2025, '市辖区', 201);
INSERT INTO `tp_region` VALUES (2026, '浉河区', 201);
INSERT INTO `tp_region` VALUES (2027, '平桥区', 201);
INSERT INTO `tp_region` VALUES (2028, '罗山县', 201);
INSERT INTO `tp_region` VALUES (2029, '光山县', 201);
INSERT INTO `tp_region` VALUES (2030, '新县', 201);
INSERT INTO `tp_region` VALUES (2031, '商城县', 201);
INSERT INTO `tp_region` VALUES (2032, '固始县', 201);
INSERT INTO `tp_region` VALUES (2033, '潢川县', 201);
INSERT INTO `tp_region` VALUES (2034, '淮滨县', 201);
INSERT INTO `tp_region` VALUES (2035, '息县', 201);
INSERT INTO `tp_region` VALUES (2036, '市辖区', 202);
INSERT INTO `tp_region` VALUES (2037, '川汇区', 202);
INSERT INTO `tp_region` VALUES (2038, '扶沟县', 202);
INSERT INTO `tp_region` VALUES (2039, '西华县', 202);
INSERT INTO `tp_region` VALUES (2040, '商水县', 202);
INSERT INTO `tp_region` VALUES (2041, '沈丘县', 202);
INSERT INTO `tp_region` VALUES (2042, '郸城县', 202);
INSERT INTO `tp_region` VALUES (2043, '淮阳县', 202);
INSERT INTO `tp_region` VALUES (2044, '太康县', 202);
INSERT INTO `tp_region` VALUES (2045, '鹿邑县', 202);
INSERT INTO `tp_region` VALUES (2046, '项城市', 202);
INSERT INTO `tp_region` VALUES (2047, '市辖区', 203);
INSERT INTO `tp_region` VALUES (2048, '驿城区', 203);
INSERT INTO `tp_region` VALUES (2049, '西平县', 203);
INSERT INTO `tp_region` VALUES (2050, '上蔡县', 203);
INSERT INTO `tp_region` VALUES (2051, '平舆县', 203);
INSERT INTO `tp_region` VALUES (2052, '正阳县', 203);
INSERT INTO `tp_region` VALUES (2053, '确山县', 203);
INSERT INTO `tp_region` VALUES (2054, '泌阳县', 203);
INSERT INTO `tp_region` VALUES (2055, '汝南县', 203);
INSERT INTO `tp_region` VALUES (2056, '遂平县', 203);
INSERT INTO `tp_region` VALUES (2057, '新蔡县', 203);
INSERT INTO `tp_region` VALUES (2058, '市辖区', 204);
INSERT INTO `tp_region` VALUES (2059, '江岸区', 204);
INSERT INTO `tp_region` VALUES (2060, '江汉区', 204);
INSERT INTO `tp_region` VALUES (2061, '硚口区', 204);
INSERT INTO `tp_region` VALUES (2062, '汉阳区', 204);
INSERT INTO `tp_region` VALUES (2063, '武昌区', 204);
INSERT INTO `tp_region` VALUES (2064, '青山区', 204);
INSERT INTO `tp_region` VALUES (2065, '洪山区', 204);
INSERT INTO `tp_region` VALUES (2066, '东西湖区', 204);
INSERT INTO `tp_region` VALUES (2067, '汉南区', 204);
INSERT INTO `tp_region` VALUES (2068, '蔡甸区', 204);
INSERT INTO `tp_region` VALUES (2069, '江夏区', 204);
INSERT INTO `tp_region` VALUES (2070, '黄陂区', 204);
INSERT INTO `tp_region` VALUES (2071, '新洲区', 204);
INSERT INTO `tp_region` VALUES (2072, '市辖区', 205);
INSERT INTO `tp_region` VALUES (2073, '黄石港区', 205);
INSERT INTO `tp_region` VALUES (2074, '西塞山区', 205);
INSERT INTO `tp_region` VALUES (2075, '下陆区', 205);
INSERT INTO `tp_region` VALUES (2076, '铁山区', 205);
INSERT INTO `tp_region` VALUES (2077, '阳新县', 205);
INSERT INTO `tp_region` VALUES (2078, '大冶市', 205);
INSERT INTO `tp_region` VALUES (2079, '市辖区', 206);
INSERT INTO `tp_region` VALUES (2080, '茅箭区', 206);
INSERT INTO `tp_region` VALUES (2081, '张湾区', 206);
INSERT INTO `tp_region` VALUES (2082, '郧县', 206);
INSERT INTO `tp_region` VALUES (2083, '郧西县', 206);
INSERT INTO `tp_region` VALUES (2084, '竹山县', 206);
INSERT INTO `tp_region` VALUES (2085, '竹溪县', 206);
INSERT INTO `tp_region` VALUES (2086, '房县', 206);
INSERT INTO `tp_region` VALUES (2087, '丹江口市', 206);
INSERT INTO `tp_region` VALUES (2088, '市辖区', 207);
INSERT INTO `tp_region` VALUES (2089, '西陵区', 207);
INSERT INTO `tp_region` VALUES (2090, '伍家岗区', 207);
INSERT INTO `tp_region` VALUES (2091, '点军区', 207);
INSERT INTO `tp_region` VALUES (2092, '猇亭区', 207);
INSERT INTO `tp_region` VALUES (2093, '夷陵区', 207);
INSERT INTO `tp_region` VALUES (2094, '远安县', 207);
INSERT INTO `tp_region` VALUES (2095, '兴山县', 207);
INSERT INTO `tp_region` VALUES (2096, '秭归县', 207);
INSERT INTO `tp_region` VALUES (2097, '长阳土家族自治县', 207);
INSERT INTO `tp_region` VALUES (2098, '五峰土家族自治县', 207);
INSERT INTO `tp_region` VALUES (2099, '宜都市', 207);
INSERT INTO `tp_region` VALUES (2100, '当阳市', 207);
INSERT INTO `tp_region` VALUES (2101, '枝江市', 207);
INSERT INTO `tp_region` VALUES (2102, '市辖区', 208);
INSERT INTO `tp_region` VALUES (2103, '襄城区', 208);
INSERT INTO `tp_region` VALUES (2104, '樊城区', 208);
INSERT INTO `tp_region` VALUES (2105, '襄阳区', 208);
INSERT INTO `tp_region` VALUES (2106, '南漳县', 208);
INSERT INTO `tp_region` VALUES (2107, '谷城县', 208);
INSERT INTO `tp_region` VALUES (2108, '保康县', 208);
INSERT INTO `tp_region` VALUES (2109, '老河口市', 208);
INSERT INTO `tp_region` VALUES (2110, '枣阳市', 208);
INSERT INTO `tp_region` VALUES (2111, '宜城市', 208);
INSERT INTO `tp_region` VALUES (2112, '市辖区', 209);
INSERT INTO `tp_region` VALUES (2113, '梁子湖区', 209);
INSERT INTO `tp_region` VALUES (2114, '华容区', 209);
INSERT INTO `tp_region` VALUES (2115, '鄂城区', 209);
INSERT INTO `tp_region` VALUES (2116, '市辖区', 210);
INSERT INTO `tp_region` VALUES (2117, '东宝区', 210);
INSERT INTO `tp_region` VALUES (2118, '掇刀区', 210);
INSERT INTO `tp_region` VALUES (2119, '京山县', 210);
INSERT INTO `tp_region` VALUES (2120, '沙洋县', 210);
INSERT INTO `tp_region` VALUES (2121, '钟祥市', 210);
INSERT INTO `tp_region` VALUES (2122, '市辖区', 211);
INSERT INTO `tp_region` VALUES (2123, '孝南区', 211);
INSERT INTO `tp_region` VALUES (2124, '孝昌县', 211);
INSERT INTO `tp_region` VALUES (2125, '大悟县', 211);
INSERT INTO `tp_region` VALUES (2126, '云梦县', 211);
INSERT INTO `tp_region` VALUES (2127, '应城市', 211);
INSERT INTO `tp_region` VALUES (2128, '安陆市', 211);
INSERT INTO `tp_region` VALUES (2129, '汉川市', 211);
INSERT INTO `tp_region` VALUES (2130, '市辖区', 212);
INSERT INTO `tp_region` VALUES (2131, '沙市区', 212);
INSERT INTO `tp_region` VALUES (2132, '荆州区', 212);
INSERT INTO `tp_region` VALUES (2133, '公安县', 212);
INSERT INTO `tp_region` VALUES (2134, '监利县', 212);
INSERT INTO `tp_region` VALUES (2135, '江陵县', 212);
INSERT INTO `tp_region` VALUES (2136, '石首市', 212);
INSERT INTO `tp_region` VALUES (2137, '洪湖市', 212);
INSERT INTO `tp_region` VALUES (2138, '松滋市', 212);
INSERT INTO `tp_region` VALUES (2139, '市辖区', 213);
INSERT INTO `tp_region` VALUES (2140, '黄州区', 213);
INSERT INTO `tp_region` VALUES (2141, '团风县', 213);
INSERT INTO `tp_region` VALUES (2142, '红安县', 213);
INSERT INTO `tp_region` VALUES (2143, '罗田县', 213);
INSERT INTO `tp_region` VALUES (2144, '英山县', 213);
INSERT INTO `tp_region` VALUES (2145, '浠水县', 213);
INSERT INTO `tp_region` VALUES (2146, '蕲春县', 213);
INSERT INTO `tp_region` VALUES (2147, '黄梅县', 213);
INSERT INTO `tp_region` VALUES (2148, '麻城市', 213);
INSERT INTO `tp_region` VALUES (2149, '武穴市', 213);
INSERT INTO `tp_region` VALUES (2150, '市辖区', 214);
INSERT INTO `tp_region` VALUES (2151, '咸安区', 214);
INSERT INTO `tp_region` VALUES (2152, '嘉鱼县', 214);
INSERT INTO `tp_region` VALUES (2153, '通城县', 214);
INSERT INTO `tp_region` VALUES (2154, '崇阳县', 214);
INSERT INTO `tp_region` VALUES (2155, '通山县', 214);
INSERT INTO `tp_region` VALUES (2156, '赤壁市', 214);
INSERT INTO `tp_region` VALUES (2157, '市辖区', 215);
INSERT INTO `tp_region` VALUES (2158, '曾都区', 215);
INSERT INTO `tp_region` VALUES (2159, '广水市', 215);
INSERT INTO `tp_region` VALUES (2160, '恩施市', 216);
INSERT INTO `tp_region` VALUES (2161, '利川市', 216);
INSERT INTO `tp_region` VALUES (2162, '建始县', 216);
INSERT INTO `tp_region` VALUES (2163, '巴东县', 216);
INSERT INTO `tp_region` VALUES (2164, '宣恩县', 216);
INSERT INTO `tp_region` VALUES (2165, '咸丰县', 216);
INSERT INTO `tp_region` VALUES (2166, '来凤县', 216);
INSERT INTO `tp_region` VALUES (2167, '鹤峰县', 216);
INSERT INTO `tp_region` VALUES (2168, '仙桃市', 217);
INSERT INTO `tp_region` VALUES (2169, '潜江市', 217);
INSERT INTO `tp_region` VALUES (2170, '天门市', 217);
INSERT INTO `tp_region` VALUES (2171, '神农架林区', 217);
INSERT INTO `tp_region` VALUES (2172, '市辖区', 218);
INSERT INTO `tp_region` VALUES (2173, '芙蓉区', 218);
INSERT INTO `tp_region` VALUES (2174, '天心区', 218);
INSERT INTO `tp_region` VALUES (2175, '岳麓区', 218);
INSERT INTO `tp_region` VALUES (2176, '开福区', 218);
INSERT INTO `tp_region` VALUES (2177, '雨花区', 218);
INSERT INTO `tp_region` VALUES (2178, '长沙县', 218);
INSERT INTO `tp_region` VALUES (2179, '望城县', 218);
INSERT INTO `tp_region` VALUES (2180, '宁乡县', 218);
INSERT INTO `tp_region` VALUES (2181, '浏阳市', 218);
INSERT INTO `tp_region` VALUES (2182, '市辖区', 219);
INSERT INTO `tp_region` VALUES (2183, '荷塘区', 219);
INSERT INTO `tp_region` VALUES (2184, '芦淞区', 219);
INSERT INTO `tp_region` VALUES (2185, '石峰区', 219);
INSERT INTO `tp_region` VALUES (2186, '天元区', 219);
INSERT INTO `tp_region` VALUES (2187, '株洲县', 219);
INSERT INTO `tp_region` VALUES (2188, '攸县', 219);
INSERT INTO `tp_region` VALUES (2189, '茶陵县', 219);
INSERT INTO `tp_region` VALUES (2190, '炎陵县', 219);
INSERT INTO `tp_region` VALUES (2191, '醴陵市', 219);
INSERT INTO `tp_region` VALUES (2192, '市辖区', 220);
INSERT INTO `tp_region` VALUES (2193, '雨湖区', 220);
INSERT INTO `tp_region` VALUES (2194, '岳塘区', 220);
INSERT INTO `tp_region` VALUES (2195, '湘潭县', 220);
INSERT INTO `tp_region` VALUES (2196, '湘乡市', 220);
INSERT INTO `tp_region` VALUES (2197, '韶山市', 220);
INSERT INTO `tp_region` VALUES (2198, '市辖区', 221);
INSERT INTO `tp_region` VALUES (2199, '珠晖区', 221);
INSERT INTO `tp_region` VALUES (2200, '雁峰区', 221);
INSERT INTO `tp_region` VALUES (2201, '石鼓区', 221);
INSERT INTO `tp_region` VALUES (2202, '蒸湘区', 221);
INSERT INTO `tp_region` VALUES (2203, '南岳区', 221);
INSERT INTO `tp_region` VALUES (2204, '衡阳县', 221);
INSERT INTO `tp_region` VALUES (2205, '衡南县', 221);
INSERT INTO `tp_region` VALUES (2206, '衡山县', 221);
INSERT INTO `tp_region` VALUES (2207, '衡东县', 221);
INSERT INTO `tp_region` VALUES (2208, '祁东县', 221);
INSERT INTO `tp_region` VALUES (2209, '耒阳市', 221);
INSERT INTO `tp_region` VALUES (2210, '常宁市', 221);
INSERT INTO `tp_region` VALUES (2211, '市辖区', 222);
INSERT INTO `tp_region` VALUES (2212, '双清区', 222);
INSERT INTO `tp_region` VALUES (2213, '大祥区', 222);
INSERT INTO `tp_region` VALUES (2214, '北塔区', 222);
INSERT INTO `tp_region` VALUES (2215, '邵东县', 222);
INSERT INTO `tp_region` VALUES (2216, '新邵县', 222);
INSERT INTO `tp_region` VALUES (2217, '邵阳县', 222);
INSERT INTO `tp_region` VALUES (2218, '隆回县', 222);
INSERT INTO `tp_region` VALUES (2219, '洞口县', 222);
INSERT INTO `tp_region` VALUES (2220, '绥宁县', 222);
INSERT INTO `tp_region` VALUES (2221, '新宁县', 222);
INSERT INTO `tp_region` VALUES (2222, '城步苗族自治县', 222);
INSERT INTO `tp_region` VALUES (2223, '武冈市', 222);
INSERT INTO `tp_region` VALUES (2224, '市辖区', 223);
INSERT INTO `tp_region` VALUES (2225, '岳阳楼区', 223);
INSERT INTO `tp_region` VALUES (2226, '云溪区', 223);
INSERT INTO `tp_region` VALUES (2227, '君山区', 223);
INSERT INTO `tp_region` VALUES (2228, '岳阳县', 223);
INSERT INTO `tp_region` VALUES (2229, '华容县', 223);
INSERT INTO `tp_region` VALUES (2230, '湘阴县', 223);
INSERT INTO `tp_region` VALUES (2231, '平江县', 223);
INSERT INTO `tp_region` VALUES (2232, '汨罗市', 223);
INSERT INTO `tp_region` VALUES (2233, '临湘市', 223);
INSERT INTO `tp_region` VALUES (2234, '市辖区', 224);
INSERT INTO `tp_region` VALUES (2235, '武陵区', 224);
INSERT INTO `tp_region` VALUES (2236, '鼎城区', 224);
INSERT INTO `tp_region` VALUES (2237, '安乡县', 224);
INSERT INTO `tp_region` VALUES (2238, '汉寿县', 224);
INSERT INTO `tp_region` VALUES (2239, '澧县', 224);
INSERT INTO `tp_region` VALUES (2240, '临澧县', 224);
INSERT INTO `tp_region` VALUES (2241, '桃源县', 224);
INSERT INTO `tp_region` VALUES (2242, '石门县', 224);
INSERT INTO `tp_region` VALUES (2243, '津市市', 224);
INSERT INTO `tp_region` VALUES (2244, '市辖区', 225);
INSERT INTO `tp_region` VALUES (2245, '永定区', 225);
INSERT INTO `tp_region` VALUES (2246, '武陵源区', 225);
INSERT INTO `tp_region` VALUES (2247, '慈利县', 225);
INSERT INTO `tp_region` VALUES (2248, '桑植县', 225);
INSERT INTO `tp_region` VALUES (2249, '市辖区', 226);
INSERT INTO `tp_region` VALUES (2250, '资阳区', 226);
INSERT INTO `tp_region` VALUES (2251, '赫山区', 226);
INSERT INTO `tp_region` VALUES (2252, '南县', 226);
INSERT INTO `tp_region` VALUES (2253, '桃江县', 226);
INSERT INTO `tp_region` VALUES (2254, '安化县', 226);
INSERT INTO `tp_region` VALUES (2255, '沅江市', 226);
INSERT INTO `tp_region` VALUES (2256, '市辖区', 227);
INSERT INTO `tp_region` VALUES (2257, '北湖区', 227);
INSERT INTO `tp_region` VALUES (2258, '苏仙区', 227);
INSERT INTO `tp_region` VALUES (2259, '桂阳县', 227);
INSERT INTO `tp_region` VALUES (2260, '宜章县', 227);
INSERT INTO `tp_region` VALUES (2261, '永兴县', 227);
INSERT INTO `tp_region` VALUES (2262, '嘉禾县', 227);
INSERT INTO `tp_region` VALUES (2263, '临武县', 227);
INSERT INTO `tp_region` VALUES (2264, '汝城县', 227);
INSERT INTO `tp_region` VALUES (2265, '桂东县', 227);
INSERT INTO `tp_region` VALUES (2266, '安仁县', 227);
INSERT INTO `tp_region` VALUES (2267, '资兴市', 227);
INSERT INTO `tp_region` VALUES (2268, '市辖区', 228);
INSERT INTO `tp_region` VALUES (2270, '冷水滩区', 228);
INSERT INTO `tp_region` VALUES (2271, '祁阳县', 228);
INSERT INTO `tp_region` VALUES (2272, '东安县', 228);
INSERT INTO `tp_region` VALUES (2273, '双牌县', 228);
INSERT INTO `tp_region` VALUES (2274, '道县', 228);
INSERT INTO `tp_region` VALUES (2275, '江永县', 228);
INSERT INTO `tp_region` VALUES (2276, '宁远县', 228);
INSERT INTO `tp_region` VALUES (2277, '蓝山县', 228);
INSERT INTO `tp_region` VALUES (2278, '新田县', 228);
INSERT INTO `tp_region` VALUES (2279, '江华瑶族自治县', 228);
INSERT INTO `tp_region` VALUES (2280, '市辖区', 229);
INSERT INTO `tp_region` VALUES (2281, '鹤城区', 229);
INSERT INTO `tp_region` VALUES (2282, '中方县', 229);
INSERT INTO `tp_region` VALUES (2283, '沅陵县', 229);
INSERT INTO `tp_region` VALUES (2284, '辰溪县', 229);
INSERT INTO `tp_region` VALUES (2285, '溆浦县', 229);
INSERT INTO `tp_region` VALUES (2286, '会同县', 229);
INSERT INTO `tp_region` VALUES (2287, '麻阳苗族自治县', 229);
INSERT INTO `tp_region` VALUES (2288, '新晃侗族自治县', 229);
INSERT INTO `tp_region` VALUES (2289, '芷江侗族自治县', 229);
INSERT INTO `tp_region` VALUES (2290, '靖州苗族侗族自治县', 229);
INSERT INTO `tp_region` VALUES (2291, '通道侗族自治县', 229);
INSERT INTO `tp_region` VALUES (2292, '洪江市', 229);
INSERT INTO `tp_region` VALUES (2293, '市辖区', 230);
INSERT INTO `tp_region` VALUES (2294, '娄星区', 230);
INSERT INTO `tp_region` VALUES (2295, '双峰县', 230);
INSERT INTO `tp_region` VALUES (2296, '新化县', 230);
INSERT INTO `tp_region` VALUES (2297, '冷水江市', 230);
INSERT INTO `tp_region` VALUES (2298, '涟源市', 230);
INSERT INTO `tp_region` VALUES (2299, '吉首市', 231);
INSERT INTO `tp_region` VALUES (2300, '泸溪县', 231);
INSERT INTO `tp_region` VALUES (2301, '凤凰县', 231);
INSERT INTO `tp_region` VALUES (2302, '花垣县', 231);
INSERT INTO `tp_region` VALUES (2303, '保靖县', 231);
INSERT INTO `tp_region` VALUES (2304, '古丈县', 231);
INSERT INTO `tp_region` VALUES (2305, '永顺县', 231);
INSERT INTO `tp_region` VALUES (2306, '龙山县', 231);
INSERT INTO `tp_region` VALUES (2307, '市辖区', 232);
INSERT INTO `tp_region` VALUES (2308, '南沙区', 232);
INSERT INTO `tp_region` VALUES (2309, '荔湾区', 232);
INSERT INTO `tp_region` VALUES (2310, '越秀区', 232);
INSERT INTO `tp_region` VALUES (2311, '海珠区', 232);
INSERT INTO `tp_region` VALUES (2312, '天河区', 232);
INSERT INTO `tp_region` VALUES (2313, '萝岗区', 232);
INSERT INTO `tp_region` VALUES (2314, '白云区', 232);
INSERT INTO `tp_region` VALUES (2315, '黄埔区', 232);
INSERT INTO `tp_region` VALUES (2316, '番禺区', 232);
INSERT INTO `tp_region` VALUES (2317, '花都区', 232);
INSERT INTO `tp_region` VALUES (2318, '增城市', 232);
INSERT INTO `tp_region` VALUES (2319, '从化市', 232);
INSERT INTO `tp_region` VALUES (2320, '市辖区', 233);
INSERT INTO `tp_region` VALUES (2321, '武江区', 233);
INSERT INTO `tp_region` VALUES (2322, '浈江区', 233);
INSERT INTO `tp_region` VALUES (2323, '曲江区', 233);
INSERT INTO `tp_region` VALUES (2324, '始兴县', 233);
INSERT INTO `tp_region` VALUES (2325, '仁化县', 233);
INSERT INTO `tp_region` VALUES (2326, '翁源县', 233);
INSERT INTO `tp_region` VALUES (2327, '乳源瑶族自治县', 233);
INSERT INTO `tp_region` VALUES (2328, '新丰县', 233);
INSERT INTO `tp_region` VALUES (2329, '乐昌市', 233);
INSERT INTO `tp_region` VALUES (2330, '南雄市', 233);
INSERT INTO `tp_region` VALUES (2331, '市辖区', 234);
INSERT INTO `tp_region` VALUES (2332, '罗湖区', 234);
INSERT INTO `tp_region` VALUES (2333, '福田区', 234);
INSERT INTO `tp_region` VALUES (2334, '南山区', 234);
INSERT INTO `tp_region` VALUES (2335, '宝安区', 234);
INSERT INTO `tp_region` VALUES (2336, '龙岗区', 234);
INSERT INTO `tp_region` VALUES (2337, '盐田区', 234);
INSERT INTO `tp_region` VALUES (2338, '市辖区', 235);
INSERT INTO `tp_region` VALUES (2339, '香洲区', 235);
INSERT INTO `tp_region` VALUES (2340, '斗门区', 235);
INSERT INTO `tp_region` VALUES (2341, '金湾区', 235);
INSERT INTO `tp_region` VALUES (2342, '市辖区', 236);
INSERT INTO `tp_region` VALUES (2343, '龙湖区', 236);
INSERT INTO `tp_region` VALUES (2344, '金平区', 236);
INSERT INTO `tp_region` VALUES (2345, '濠江区', 236);
INSERT INTO `tp_region` VALUES (2346, '潮阳区', 236);
INSERT INTO `tp_region` VALUES (2347, '潮南区', 236);
INSERT INTO `tp_region` VALUES (2348, '澄海区', 236);
INSERT INTO `tp_region` VALUES (2349, '南澳县', 236);
INSERT INTO `tp_region` VALUES (2350, '市辖区', 237);
INSERT INTO `tp_region` VALUES (2351, '禅城区', 237);
INSERT INTO `tp_region` VALUES (2352, '南海区', 237);
INSERT INTO `tp_region` VALUES (2353, '顺德区', 237);
INSERT INTO `tp_region` VALUES (2354, '三水区', 237);
INSERT INTO `tp_region` VALUES (2355, '高明区', 237);
INSERT INTO `tp_region` VALUES (2356, '市辖区', 238);
INSERT INTO `tp_region` VALUES (2357, '蓬江区', 238);
INSERT INTO `tp_region` VALUES (2358, '江海区', 238);
INSERT INTO `tp_region` VALUES (2359, '新会区', 238);
INSERT INTO `tp_region` VALUES (2360, '台山市', 238);
INSERT INTO `tp_region` VALUES (2361, '开平市', 238);
INSERT INTO `tp_region` VALUES (2362, '鹤山市', 238);
INSERT INTO `tp_region` VALUES (2363, '恩平市', 238);
INSERT INTO `tp_region` VALUES (2364, '市辖区', 239);
INSERT INTO `tp_region` VALUES (2365, '赤坎区', 239);
INSERT INTO `tp_region` VALUES (2366, '霞山区', 239);
INSERT INTO `tp_region` VALUES (2367, '坡头区', 239);
INSERT INTO `tp_region` VALUES (2368, '麻章区', 239);
INSERT INTO `tp_region` VALUES (2369, '遂溪县', 239);
INSERT INTO `tp_region` VALUES (2370, '徐闻县', 239);
INSERT INTO `tp_region` VALUES (2371, '廉江市', 239);
INSERT INTO `tp_region` VALUES (2372, '雷州市', 239);
INSERT INTO `tp_region` VALUES (2373, '吴川市', 239);
INSERT INTO `tp_region` VALUES (2374, '市辖区', 240);
INSERT INTO `tp_region` VALUES (2375, '茂南区', 240);
INSERT INTO `tp_region` VALUES (2376, '茂港区', 240);
INSERT INTO `tp_region` VALUES (2377, '电白县', 240);
INSERT INTO `tp_region` VALUES (2378, '高州市', 240);
INSERT INTO `tp_region` VALUES (2379, '化州市', 240);
INSERT INTO `tp_region` VALUES (2380, '信宜市', 240);
INSERT INTO `tp_region` VALUES (2381, '市辖区', 241);
INSERT INTO `tp_region` VALUES (2382, '端州区', 241);
INSERT INTO `tp_region` VALUES (2383, '鼎湖区', 241);
INSERT INTO `tp_region` VALUES (2384, '广宁县', 241);
INSERT INTO `tp_region` VALUES (2385, '怀集县', 241);
INSERT INTO `tp_region` VALUES (2386, '封开县', 241);
INSERT INTO `tp_region` VALUES (2387, '德庆县', 241);
INSERT INTO `tp_region` VALUES (2388, '高要市', 241);
INSERT INTO `tp_region` VALUES (2389, '四会市', 241);
INSERT INTO `tp_region` VALUES (2390, '市辖区', 242);
INSERT INTO `tp_region` VALUES (2391, '惠城区', 242);
INSERT INTO `tp_region` VALUES (2392, '惠阳区', 242);
INSERT INTO `tp_region` VALUES (2393, '博罗县', 242);
INSERT INTO `tp_region` VALUES (2394, '惠东县', 242);
INSERT INTO `tp_region` VALUES (2395, '龙门县', 242);
INSERT INTO `tp_region` VALUES (2396, '市辖区', 243);
INSERT INTO `tp_region` VALUES (2397, '梅江区', 243);
INSERT INTO `tp_region` VALUES (2398, '梅县', 243);
INSERT INTO `tp_region` VALUES (2399, '大埔县', 243);
INSERT INTO `tp_region` VALUES (2400, '丰顺县', 243);
INSERT INTO `tp_region` VALUES (2401, '五华县', 243);
INSERT INTO `tp_region` VALUES (2402, '平远县', 243);
INSERT INTO `tp_region` VALUES (2403, '蕉岭县', 243);
INSERT INTO `tp_region` VALUES (2404, '兴宁市', 243);
INSERT INTO `tp_region` VALUES (2405, '市辖区', 244);
INSERT INTO `tp_region` VALUES (2406, '城区', 244);
INSERT INTO `tp_region` VALUES (2407, '海丰县', 244);
INSERT INTO `tp_region` VALUES (2408, '陆河县', 244);
INSERT INTO `tp_region` VALUES (2409, '陆丰市', 244);
INSERT INTO `tp_region` VALUES (2410, '市辖区', 245);
INSERT INTO `tp_region` VALUES (2411, '源城区', 245);
INSERT INTO `tp_region` VALUES (2412, '紫金县', 245);
INSERT INTO `tp_region` VALUES (2413, '龙川县', 245);
INSERT INTO `tp_region` VALUES (2414, '连平县', 245);
INSERT INTO `tp_region` VALUES (2415, '和平县', 245);
INSERT INTO `tp_region` VALUES (2416, '东源县', 245);
INSERT INTO `tp_region` VALUES (2417, '市辖区', 246);
INSERT INTO `tp_region` VALUES (2418, '江城区', 246);
INSERT INTO `tp_region` VALUES (2419, '阳西县', 246);
INSERT INTO `tp_region` VALUES (2420, '阳东县', 246);
INSERT INTO `tp_region` VALUES (2421, '阳春市', 246);
INSERT INTO `tp_region` VALUES (2422, '市辖区', 247);
INSERT INTO `tp_region` VALUES (2423, '清城区', 247);
INSERT INTO `tp_region` VALUES (2424, '佛冈县', 247);
INSERT INTO `tp_region` VALUES (2425, '阳山县', 247);
INSERT INTO `tp_region` VALUES (2426, '连山壮族瑶族自治县', 247);
INSERT INTO `tp_region` VALUES (2427, '连南瑶族自治县', 247);
INSERT INTO `tp_region` VALUES (2428, '清新县', 247);
INSERT INTO `tp_region` VALUES (2429, '英德市', 247);
INSERT INTO `tp_region` VALUES (2430, '连州市', 247);
INSERT INTO `tp_region` VALUES (2431, '市辖区', 250);
INSERT INTO `tp_region` VALUES (2432, '湘桥区', 250);
INSERT INTO `tp_region` VALUES (2433, '潮安县', 250);
INSERT INTO `tp_region` VALUES (2434, '饶平县', 250);
INSERT INTO `tp_region` VALUES (2435, '市辖区', 251);
INSERT INTO `tp_region` VALUES (2436, '榕城区', 251);
INSERT INTO `tp_region` VALUES (2437, '揭东县', 251);
INSERT INTO `tp_region` VALUES (2438, '揭西县', 251);
INSERT INTO `tp_region` VALUES (2439, '惠来县', 251);
INSERT INTO `tp_region` VALUES (2440, '普宁市', 251);
INSERT INTO `tp_region` VALUES (2441, '市辖区', 252);
INSERT INTO `tp_region` VALUES (2442, '云城区', 252);
INSERT INTO `tp_region` VALUES (2443, '新兴县', 252);
INSERT INTO `tp_region` VALUES (2444, '郁南县', 252);
INSERT INTO `tp_region` VALUES (2445, '云安县', 252);
INSERT INTO `tp_region` VALUES (2446, '罗定市', 252);
INSERT INTO `tp_region` VALUES (2447, '市辖区', 253);
INSERT INTO `tp_region` VALUES (2448, '兴宁区', 253);
INSERT INTO `tp_region` VALUES (2449, '青秀区', 253);
INSERT INTO `tp_region` VALUES (2450, '江南区', 253);
INSERT INTO `tp_region` VALUES (2451, '西乡塘区', 253);
INSERT INTO `tp_region` VALUES (2452, '良庆区', 253);
INSERT INTO `tp_region` VALUES (2453, '邕宁区', 253);
INSERT INTO `tp_region` VALUES (2454, '武鸣县', 253);
INSERT INTO `tp_region` VALUES (2455, '隆安县', 253);
INSERT INTO `tp_region` VALUES (2456, '马山县', 253);
INSERT INTO `tp_region` VALUES (2457, '上林县', 253);
INSERT INTO `tp_region` VALUES (2458, '宾阳县', 253);
INSERT INTO `tp_region` VALUES (2459, '横县', 253);
INSERT INTO `tp_region` VALUES (2460, '市辖区', 254);
INSERT INTO `tp_region` VALUES (2461, '城中区', 254);
INSERT INTO `tp_region` VALUES (2462, '鱼峰区', 254);
INSERT INTO `tp_region` VALUES (2463, '柳南区', 254);
INSERT INTO `tp_region` VALUES (2464, '柳北区', 254);
INSERT INTO `tp_region` VALUES (2465, '柳江县', 254);
INSERT INTO `tp_region` VALUES (2466, '柳城县', 254);
INSERT INTO `tp_region` VALUES (2467, '鹿寨县', 254);
INSERT INTO `tp_region` VALUES (2468, '融安县', 254);
INSERT INTO `tp_region` VALUES (2469, '融水苗族自治县', 254);
INSERT INTO `tp_region` VALUES (2470, '三江侗族自治县', 254);
INSERT INTO `tp_region` VALUES (2471, '市辖区', 255);
INSERT INTO `tp_region` VALUES (2472, '秀峰区', 255);
INSERT INTO `tp_region` VALUES (2473, '叠彩区', 255);
INSERT INTO `tp_region` VALUES (2474, '象山区', 255);
INSERT INTO `tp_region` VALUES (2475, '七星区', 255);
INSERT INTO `tp_region` VALUES (2476, '雁山区', 255);
INSERT INTO `tp_region` VALUES (2477, '阳朔县', 255);
INSERT INTO `tp_region` VALUES (2478, '临桂县', 255);
INSERT INTO `tp_region` VALUES (2479, '灵川县', 255);
INSERT INTO `tp_region` VALUES (2480, '全州县', 255);
INSERT INTO `tp_region` VALUES (2481, '兴安县', 255);
INSERT INTO `tp_region` VALUES (2482, '永福县', 255);
INSERT INTO `tp_region` VALUES (2483, '灌阳县', 255);
INSERT INTO `tp_region` VALUES (2484, '龙胜各族自治县', 255);
INSERT INTO `tp_region` VALUES (2485, '资源县', 255);
INSERT INTO `tp_region` VALUES (2486, '平乐县', 255);
INSERT INTO `tp_region` VALUES (2487, '荔蒲县', 255);
INSERT INTO `tp_region` VALUES (2488, '恭城瑶族自治县', 255);
INSERT INTO `tp_region` VALUES (2489, '市辖区', 256);
INSERT INTO `tp_region` VALUES (2490, '万秀区', 256);
INSERT INTO `tp_region` VALUES (2491, '蝶山区', 256);
INSERT INTO `tp_region` VALUES (2492, '长洲区', 256);
INSERT INTO `tp_region` VALUES (2493, '苍梧县', 256);
INSERT INTO `tp_region` VALUES (2494, '藤县', 256);
INSERT INTO `tp_region` VALUES (2495, '蒙山县', 256);
INSERT INTO `tp_region` VALUES (2496, '岑溪市', 256);
INSERT INTO `tp_region` VALUES (2497, '市辖区', 257);
INSERT INTO `tp_region` VALUES (2498, '海城区', 257);
INSERT INTO `tp_region` VALUES (2499, '银海区', 257);
INSERT INTO `tp_region` VALUES (2500, '铁山港区', 257);
INSERT INTO `tp_region` VALUES (2501, '合浦县', 257);
INSERT INTO `tp_region` VALUES (2502, '市辖区', 258);
INSERT INTO `tp_region` VALUES (2503, '港口区', 258);
INSERT INTO `tp_region` VALUES (2504, '防城区', 258);
INSERT INTO `tp_region` VALUES (2505, '上思县', 258);
INSERT INTO `tp_region` VALUES (2506, '东兴市', 258);
INSERT INTO `tp_region` VALUES (2507, '市辖区', 259);
INSERT INTO `tp_region` VALUES (2508, '钦南区', 259);
INSERT INTO `tp_region` VALUES (2509, '钦北区', 259);
INSERT INTO `tp_region` VALUES (2510, '灵山县', 259);
INSERT INTO `tp_region` VALUES (2511, '浦北县', 259);
INSERT INTO `tp_region` VALUES (2512, '市辖区', 260);
INSERT INTO `tp_region` VALUES (2513, '港北区', 260);
INSERT INTO `tp_region` VALUES (2514, '港南区', 260);
INSERT INTO `tp_region` VALUES (2515, '覃塘区', 260);
INSERT INTO `tp_region` VALUES (2516, '平南县', 260);
INSERT INTO `tp_region` VALUES (2517, '桂平市', 260);
INSERT INTO `tp_region` VALUES (2518, '市辖区', 261);
INSERT INTO `tp_region` VALUES (2519, '玉州区', 261);
INSERT INTO `tp_region` VALUES (2520, '容县', 261);
INSERT INTO `tp_region` VALUES (2521, '陆川县', 261);
INSERT INTO `tp_region` VALUES (2522, '博白县', 261);
INSERT INTO `tp_region` VALUES (2523, '兴业县', 261);
INSERT INTO `tp_region` VALUES (2524, '北流市', 261);
INSERT INTO `tp_region` VALUES (2525, '市辖区', 262);
INSERT INTO `tp_region` VALUES (2526, '右江区', 262);
INSERT INTO `tp_region` VALUES (2527, '田阳县', 262);
INSERT INTO `tp_region` VALUES (2528, '田东县', 262);
INSERT INTO `tp_region` VALUES (2529, '平果县', 262);
INSERT INTO `tp_region` VALUES (2530, '德保县', 262);
INSERT INTO `tp_region` VALUES (2531, '靖西县', 262);
INSERT INTO `tp_region` VALUES (2532, '那坡县', 262);
INSERT INTO `tp_region` VALUES (2533, '凌云县', 262);
INSERT INTO `tp_region` VALUES (2534, '乐业县', 262);
INSERT INTO `tp_region` VALUES (2535, '田林县', 262);
INSERT INTO `tp_region` VALUES (2536, '西林县', 262);
INSERT INTO `tp_region` VALUES (2537, '隆林各族自治县', 262);
INSERT INTO `tp_region` VALUES (2538, '市辖区', 263);
INSERT INTO `tp_region` VALUES (2539, '八步区', 263);
INSERT INTO `tp_region` VALUES (2540, '昭平县', 263);
INSERT INTO `tp_region` VALUES (2541, '钟山县', 263);
INSERT INTO `tp_region` VALUES (2542, '富川瑶族自治县', 263);
INSERT INTO `tp_region` VALUES (2543, '市辖区', 264);
INSERT INTO `tp_region` VALUES (2544, '金城江区', 264);
INSERT INTO `tp_region` VALUES (2545, '南丹县', 264);
INSERT INTO `tp_region` VALUES (2546, '天峨县', 264);
INSERT INTO `tp_region` VALUES (2547, '凤山县', 264);
INSERT INTO `tp_region` VALUES (2548, '东兰县', 264);
INSERT INTO `tp_region` VALUES (2549, '罗城仫佬族自治县', 264);
INSERT INTO `tp_region` VALUES (2550, '环江毛南族自治县', 264);
INSERT INTO `tp_region` VALUES (2551, '巴马瑶族自治县', 264);
INSERT INTO `tp_region` VALUES (2552, '都安瑶族自治县', 264);
INSERT INTO `tp_region` VALUES (2553, '大化瑶族自治县', 264);
INSERT INTO `tp_region` VALUES (2554, '宜州市', 264);
INSERT INTO `tp_region` VALUES (2555, '市辖区', 265);
INSERT INTO `tp_region` VALUES (2556, '兴宾区', 265);
INSERT INTO `tp_region` VALUES (2557, '忻城县', 265);
INSERT INTO `tp_region` VALUES (2558, '象州县', 265);
INSERT INTO `tp_region` VALUES (2559, '武宣县', 265);
INSERT INTO `tp_region` VALUES (2560, '金秀瑶族自治县', 265);
INSERT INTO `tp_region` VALUES (2561, '合山市', 265);
INSERT INTO `tp_region` VALUES (2562, '市辖区', 266);
INSERT INTO `tp_region` VALUES (2563, '江洲区', 266);
INSERT INTO `tp_region` VALUES (2564, '扶绥县', 266);
INSERT INTO `tp_region` VALUES (2565, '宁明县', 266);
INSERT INTO `tp_region` VALUES (2566, '龙州县', 266);
INSERT INTO `tp_region` VALUES (2567, '大新县', 266);
INSERT INTO `tp_region` VALUES (2568, '天等县', 266);
INSERT INTO `tp_region` VALUES (2569, '凭祥市', 266);
INSERT INTO `tp_region` VALUES (2570, '市辖区', 267);
INSERT INTO `tp_region` VALUES (2571, '秀英区', 267);
INSERT INTO `tp_region` VALUES (2572, '龙华区', 267);
INSERT INTO `tp_region` VALUES (2573, '琼山区', 267);
INSERT INTO `tp_region` VALUES (2574, '美兰区', 267);
INSERT INTO `tp_region` VALUES (2575, '市辖区', 268);
INSERT INTO `tp_region` VALUES (2576, '五指山市', 269);
INSERT INTO `tp_region` VALUES (2577, '琼海市', 269);
INSERT INTO `tp_region` VALUES (2578, '儋州市', 269);
INSERT INTO `tp_region` VALUES (2579, '文昌市', 269);
INSERT INTO `tp_region` VALUES (2580, '万宁市', 269);
INSERT INTO `tp_region` VALUES (2581, '东方市', 269);
INSERT INTO `tp_region` VALUES (2582, '定安县', 269);
INSERT INTO `tp_region` VALUES (2583, '屯昌县', 269);
INSERT INTO `tp_region` VALUES (2584, '澄迈县', 269);
INSERT INTO `tp_region` VALUES (2585, '临高县', 269);
INSERT INTO `tp_region` VALUES (2586, '白沙黎族自治县', 269);
INSERT INTO `tp_region` VALUES (2587, '昌江黎族自治县', 269);
INSERT INTO `tp_region` VALUES (2588, '乐东黎族自治县', 269);
INSERT INTO `tp_region` VALUES (2589, '陵水黎族自治县', 269);
INSERT INTO `tp_region` VALUES (2590, '保亭黎族苗族自治县', 269);
INSERT INTO `tp_region` VALUES (2591, '琼中黎族苗族自治县', 269);
INSERT INTO `tp_region` VALUES (2592, '西沙群岛', 269);
INSERT INTO `tp_region` VALUES (2593, '南沙群岛', 269);
INSERT INTO `tp_region` VALUES (2594, '中沙群岛的岛礁及其海域', 269);
INSERT INTO `tp_region` VALUES (2595, '万州区', 270);
INSERT INTO `tp_region` VALUES (2596, '涪陵区', 270);
INSERT INTO `tp_region` VALUES (2597, '渝中区', 270);
INSERT INTO `tp_region` VALUES (2598, '大渡口区', 270);
INSERT INTO `tp_region` VALUES (2599, '江北区', 270);
INSERT INTO `tp_region` VALUES (2600, '沙坪坝区', 270);
INSERT INTO `tp_region` VALUES (2601, '九龙坡区', 270);
INSERT INTO `tp_region` VALUES (2602, '南岸区', 270);
INSERT INTO `tp_region` VALUES (2603, '北碚区', 270);
INSERT INTO `tp_region` VALUES (2604, '万盛区', 270);
INSERT INTO `tp_region` VALUES (2605, '双桥区', 270);
INSERT INTO `tp_region` VALUES (2606, '渝北区', 270);
INSERT INTO `tp_region` VALUES (2607, '巴南区', 270);
INSERT INTO `tp_region` VALUES (2608, '黔江区', 270);
INSERT INTO `tp_region` VALUES (2609, '长寿区', 270);
INSERT INTO `tp_region` VALUES (2610, '綦江县', 271);
INSERT INTO `tp_region` VALUES (2611, '潼南县', 271);
INSERT INTO `tp_region` VALUES (2612, '铜梁县', 271);
INSERT INTO `tp_region` VALUES (2613, '大足县', 271);
INSERT INTO `tp_region` VALUES (2614, '荣昌县', 271);
INSERT INTO `tp_region` VALUES (2615, '璧山县', 271);
INSERT INTO `tp_region` VALUES (2616, '梁平县', 271);
INSERT INTO `tp_region` VALUES (2617, '城口县', 271);
INSERT INTO `tp_region` VALUES (2618, '丰都县', 271);
INSERT INTO `tp_region` VALUES (2619, '垫江县', 271);
INSERT INTO `tp_region` VALUES (2620, '武隆县', 271);
INSERT INTO `tp_region` VALUES (2621, '忠县', 271);
INSERT INTO `tp_region` VALUES (2622, '开县', 271);
INSERT INTO `tp_region` VALUES (2623, '云阳县', 271);
INSERT INTO `tp_region` VALUES (2624, '奉节县', 271);
INSERT INTO `tp_region` VALUES (2625, '巫山县', 271);
INSERT INTO `tp_region` VALUES (2626, '巫溪县', 271);
INSERT INTO `tp_region` VALUES (2627, '石柱土家族自治县', 271);
INSERT INTO `tp_region` VALUES (2628, '秀山土家族苗族自治县', 271);
INSERT INTO `tp_region` VALUES (2629, '酉阳土家族苗族自治县', 271);
INSERT INTO `tp_region` VALUES (2630, '彭水苗族土家族自治县', 271);
INSERT INTO `tp_region` VALUES (2631, '江津区', 272);
INSERT INTO `tp_region` VALUES (2632, '合川区', 272);
INSERT INTO `tp_region` VALUES (2633, '永川区', 272);
INSERT INTO `tp_region` VALUES (2634, '南川区', 272);
INSERT INTO `tp_region` VALUES (2635, '市辖区', 273);
INSERT INTO `tp_region` VALUES (2636, '锦江区', 273);
INSERT INTO `tp_region` VALUES (2637, '青羊区', 273);
INSERT INTO `tp_region` VALUES (2638, '金牛区', 273);
INSERT INTO `tp_region` VALUES (2639, '武侯区', 273);
INSERT INTO `tp_region` VALUES (2640, '成华区', 273);
INSERT INTO `tp_region` VALUES (2641, '龙泉驿区', 273);
INSERT INTO `tp_region` VALUES (2642, '青白江区', 273);
INSERT INTO `tp_region` VALUES (2643, '新都区', 273);
INSERT INTO `tp_region` VALUES (2644, '温江区', 273);
INSERT INTO `tp_region` VALUES (2645, '金堂县', 273);
INSERT INTO `tp_region` VALUES (2646, '双流县', 273);
INSERT INTO `tp_region` VALUES (2647, '郫县', 273);
INSERT INTO `tp_region` VALUES (2648, '大邑县', 273);
INSERT INTO `tp_region` VALUES (2649, '蒲江县', 273);
INSERT INTO `tp_region` VALUES (2650, '新津县', 273);
INSERT INTO `tp_region` VALUES (2651, '都江堰市', 273);
INSERT INTO `tp_region` VALUES (2652, '彭州市', 273);
INSERT INTO `tp_region` VALUES (2653, '邛崃市', 273);
INSERT INTO `tp_region` VALUES (2654, '崇州市', 273);
INSERT INTO `tp_region` VALUES (2655, '市辖区', 274);
INSERT INTO `tp_region` VALUES (2656, '自流井区', 274);
INSERT INTO `tp_region` VALUES (2657, '贡井区', 274);
INSERT INTO `tp_region` VALUES (2658, '大安区', 274);
INSERT INTO `tp_region` VALUES (2659, '沿滩区', 274);
INSERT INTO `tp_region` VALUES (2660, '荣县', 274);
INSERT INTO `tp_region` VALUES (2661, '富顺县', 274);
INSERT INTO `tp_region` VALUES (2662, '市辖区', 275);
INSERT INTO `tp_region` VALUES (2663, '东区', 275);
INSERT INTO `tp_region` VALUES (2664, '西区', 275);
INSERT INTO `tp_region` VALUES (2665, '仁和区', 275);
INSERT INTO `tp_region` VALUES (2666, '米易县', 275);
INSERT INTO `tp_region` VALUES (2667, '盐边县', 275);
INSERT INTO `tp_region` VALUES (2668, '市辖区', 276);
INSERT INTO `tp_region` VALUES (2669, '江阳区', 276);
INSERT INTO `tp_region` VALUES (2670, '纳溪区', 276);
INSERT INTO `tp_region` VALUES (2671, '龙马潭区', 276);
INSERT INTO `tp_region` VALUES (2672, '泸县', 276);
INSERT INTO `tp_region` VALUES (2673, '合江县', 276);
INSERT INTO `tp_region` VALUES (2674, '叙永县', 276);
INSERT INTO `tp_region` VALUES (2675, '古蔺县', 276);
INSERT INTO `tp_region` VALUES (2676, '市辖区', 277);
INSERT INTO `tp_region` VALUES (2677, '旌阳区', 277);
INSERT INTO `tp_region` VALUES (2678, '中江县', 277);
INSERT INTO `tp_region` VALUES (2679, '罗江县', 277);
INSERT INTO `tp_region` VALUES (2680, '广汉市', 277);
INSERT INTO `tp_region` VALUES (2681, '什邡市', 277);
INSERT INTO `tp_region` VALUES (2682, '绵竹市', 277);
INSERT INTO `tp_region` VALUES (2683, '市辖区', 278);
INSERT INTO `tp_region` VALUES (2684, '涪城区', 278);
INSERT INTO `tp_region` VALUES (2685, '游仙区', 278);
INSERT INTO `tp_region` VALUES (2686, '三台县', 278);
INSERT INTO `tp_region` VALUES (2687, '盐亭县', 278);
INSERT INTO `tp_region` VALUES (2688, '安县', 278);
INSERT INTO `tp_region` VALUES (2689, '梓潼县', 278);
INSERT INTO `tp_region` VALUES (2690, '北川羌族自治县', 278);
INSERT INTO `tp_region` VALUES (2691, '平武县', 278);
INSERT INTO `tp_region` VALUES (2692, '江油市', 278);
INSERT INTO `tp_region` VALUES (2693, '市辖区', 279);
INSERT INTO `tp_region` VALUES (2694, '市中区', 279);
INSERT INTO `tp_region` VALUES (2695, '元坝区', 279);
INSERT INTO `tp_region` VALUES (2696, '朝天区', 279);
INSERT INTO `tp_region` VALUES (2697, '旺苍县', 279);
INSERT INTO `tp_region` VALUES (2698, '青川县', 279);
INSERT INTO `tp_region` VALUES (2699, '剑阁县', 279);
INSERT INTO `tp_region` VALUES (2700, '苍溪县', 279);
INSERT INTO `tp_region` VALUES (2701, '市辖区', 280);
INSERT INTO `tp_region` VALUES (2702, '船山区', 280);
INSERT INTO `tp_region` VALUES (2703, '安居区', 280);
INSERT INTO `tp_region` VALUES (2704, '蓬溪县', 280);
INSERT INTO `tp_region` VALUES (2705, '射洪县', 280);
INSERT INTO `tp_region` VALUES (2706, '大英县', 280);
INSERT INTO `tp_region` VALUES (2707, '市辖区', 281);
INSERT INTO `tp_region` VALUES (2708, '市中区', 281);
INSERT INTO `tp_region` VALUES (2709, '东兴区', 281);
INSERT INTO `tp_region` VALUES (2710, '威远县', 281);
INSERT INTO `tp_region` VALUES (2711, '资中县', 281);
INSERT INTO `tp_region` VALUES (2712, '隆昌县', 281);
INSERT INTO `tp_region` VALUES (2713, '市辖区', 282);
INSERT INTO `tp_region` VALUES (2714, '市中区', 282);
INSERT INTO `tp_region` VALUES (2715, '沙湾区', 282);
INSERT INTO `tp_region` VALUES (2716, '五通桥区', 282);
INSERT INTO `tp_region` VALUES (2717, '金口河区', 282);
INSERT INTO `tp_region` VALUES (2718, '犍为县', 282);
INSERT INTO `tp_region` VALUES (2719, '井研县', 282);
INSERT INTO `tp_region` VALUES (2720, '夹江县', 282);
INSERT INTO `tp_region` VALUES (2721, '沐川县', 282);
INSERT INTO `tp_region` VALUES (2722, '峨边彝族自治县', 282);
INSERT INTO `tp_region` VALUES (2723, '马边彝族自治县', 282);
INSERT INTO `tp_region` VALUES (2724, '峨眉山市', 282);
INSERT INTO `tp_region` VALUES (2725, '市辖区', 283);
INSERT INTO `tp_region` VALUES (2726, '顺庆区', 283);
INSERT INTO `tp_region` VALUES (2727, '高坪区', 283);
INSERT INTO `tp_region` VALUES (2728, '嘉陵区', 283);
INSERT INTO `tp_region` VALUES (2729, '南部县', 283);
INSERT INTO `tp_region` VALUES (2730, '营山县', 283);
INSERT INTO `tp_region` VALUES (2731, '蓬安县', 283);
INSERT INTO `tp_region` VALUES (2732, '仪陇县', 283);
INSERT INTO `tp_region` VALUES (2733, '西充县', 283);
INSERT INTO `tp_region` VALUES (2734, '阆中市', 283);
INSERT INTO `tp_region` VALUES (2735, '市辖区', 284);
INSERT INTO `tp_region` VALUES (2736, '东坡区', 284);
INSERT INTO `tp_region` VALUES (2737, '仁寿县', 284);
INSERT INTO `tp_region` VALUES (2738, '彭山县', 284);
INSERT INTO `tp_region` VALUES (2739, '洪雅县', 284);
INSERT INTO `tp_region` VALUES (2740, '丹棱县', 284);
INSERT INTO `tp_region` VALUES (2741, '青神县', 284);
INSERT INTO `tp_region` VALUES (2742, '市辖区', 285);
INSERT INTO `tp_region` VALUES (2743, '翠屏区', 285);
INSERT INTO `tp_region` VALUES (2744, '宜宾县', 285);
INSERT INTO `tp_region` VALUES (2745, '南溪县', 285);
INSERT INTO `tp_region` VALUES (2746, '江安县', 285);
INSERT INTO `tp_region` VALUES (2747, '长宁县', 285);
INSERT INTO `tp_region` VALUES (2748, '高县', 285);
INSERT INTO `tp_region` VALUES (2749, '珙县', 285);
INSERT INTO `tp_region` VALUES (2750, '筠连县', 285);
INSERT INTO `tp_region` VALUES (2751, '兴文县', 285);
INSERT INTO `tp_region` VALUES (2752, '屏山县', 285);
INSERT INTO `tp_region` VALUES (2753, '市辖区', 286);
INSERT INTO `tp_region` VALUES (2754, '广安区', 286);
INSERT INTO `tp_region` VALUES (2755, '岳池县', 286);
INSERT INTO `tp_region` VALUES (2756, '武胜县', 286);
INSERT INTO `tp_region` VALUES (2757, '邻水县', 286);
INSERT INTO `tp_region` VALUES (2759, '市辖区', 287);
INSERT INTO `tp_region` VALUES (2760, '通川区', 287);
INSERT INTO `tp_region` VALUES (2761, '达县', 287);
INSERT INTO `tp_region` VALUES (2762, '宣汉县', 287);
INSERT INTO `tp_region` VALUES (2763, '开江县', 287);
INSERT INTO `tp_region` VALUES (2764, '大竹县', 287);
INSERT INTO `tp_region` VALUES (2765, '渠县', 287);
INSERT INTO `tp_region` VALUES (2766, '万源市', 287);
INSERT INTO `tp_region` VALUES (2767, '市辖区', 288);
INSERT INTO `tp_region` VALUES (2768, '雨城区', 288);
INSERT INTO `tp_region` VALUES (2769, '名山县', 288);
INSERT INTO `tp_region` VALUES (2770, '荥经县', 288);
INSERT INTO `tp_region` VALUES (2771, '汉源县', 288);
INSERT INTO `tp_region` VALUES (2772, '石棉县', 288);
INSERT INTO `tp_region` VALUES (2773, '天全县', 288);
INSERT INTO `tp_region` VALUES (2774, '芦山县', 288);
INSERT INTO `tp_region` VALUES (2775, '宝兴县', 288);
INSERT INTO `tp_region` VALUES (2776, '市辖区', 289);
INSERT INTO `tp_region` VALUES (2777, '巴州区', 289);
INSERT INTO `tp_region` VALUES (2778, '通江县', 289);
INSERT INTO `tp_region` VALUES (2779, '南江县', 289);
INSERT INTO `tp_region` VALUES (2780, '平昌县', 289);
INSERT INTO `tp_region` VALUES (2781, '市辖区', 290);
INSERT INTO `tp_region` VALUES (2782, '雁江区', 290);
INSERT INTO `tp_region` VALUES (2783, '安岳县', 290);
INSERT INTO `tp_region` VALUES (2784, '乐至县', 290);
INSERT INTO `tp_region` VALUES (2785, '简阳市', 290);
INSERT INTO `tp_region` VALUES (2786, '汶川县', 291);
INSERT INTO `tp_region` VALUES (2787, '理县', 291);
INSERT INTO `tp_region` VALUES (2788, '茂县', 291);
INSERT INTO `tp_region` VALUES (2789, '松潘县', 291);
INSERT INTO `tp_region` VALUES (2790, '九寨沟县', 291);
INSERT INTO `tp_region` VALUES (2791, '金川县', 291);
INSERT INTO `tp_region` VALUES (2792, '小金县', 291);
INSERT INTO `tp_region` VALUES (2793, '黑水县', 291);
INSERT INTO `tp_region` VALUES (2794, '马尔康县', 291);
INSERT INTO `tp_region` VALUES (2795, '壤塘县', 291);
INSERT INTO `tp_region` VALUES (2796, '阿坝县', 291);
INSERT INTO `tp_region` VALUES (2797, '若尔盖县', 291);
INSERT INTO `tp_region` VALUES (2798, '红原县', 291);
INSERT INTO `tp_region` VALUES (2799, '康定县', 292);
INSERT INTO `tp_region` VALUES (2800, '泸定县', 292);
INSERT INTO `tp_region` VALUES (2801, '丹巴县', 292);
INSERT INTO `tp_region` VALUES (2802, '九龙县', 292);
INSERT INTO `tp_region` VALUES (2803, '雅江县', 292);
INSERT INTO `tp_region` VALUES (2804, '道孚县', 292);
INSERT INTO `tp_region` VALUES (2805, '炉霍县', 292);
INSERT INTO `tp_region` VALUES (2806, '甘孜县', 292);
INSERT INTO `tp_region` VALUES (2807, '新龙县', 292);
INSERT INTO `tp_region` VALUES (2808, '德格县', 292);
INSERT INTO `tp_region` VALUES (2809, '白玉县', 292);
INSERT INTO `tp_region` VALUES (2810, '石渠县', 292);
INSERT INTO `tp_region` VALUES (2811, '色达县', 292);
INSERT INTO `tp_region` VALUES (2812, '理塘县', 292);
INSERT INTO `tp_region` VALUES (2813, '巴塘县', 292);
INSERT INTO `tp_region` VALUES (2814, '乡城县', 292);
INSERT INTO `tp_region` VALUES (2815, '稻城县', 292);
INSERT INTO `tp_region` VALUES (2816, '得荣县', 292);
INSERT INTO `tp_region` VALUES (2817, '西昌市', 293);
INSERT INTO `tp_region` VALUES (2818, '木里藏族自治县', 293);
INSERT INTO `tp_region` VALUES (2819, '盐源县', 293);
INSERT INTO `tp_region` VALUES (2820, '德昌县', 293);
INSERT INTO `tp_region` VALUES (2821, '会理县', 293);
INSERT INTO `tp_region` VALUES (2822, '会东县', 293);
INSERT INTO `tp_region` VALUES (2823, '宁南县', 293);
INSERT INTO `tp_region` VALUES (2824, '普格县', 293);
INSERT INTO `tp_region` VALUES (2825, '布拖县', 293);
INSERT INTO `tp_region` VALUES (2826, '金阳县', 293);
INSERT INTO `tp_region` VALUES (2827, '昭觉县', 293);
INSERT INTO `tp_region` VALUES (2828, '喜德县', 293);
INSERT INTO `tp_region` VALUES (2829, '冕宁县', 293);
INSERT INTO `tp_region` VALUES (2830, '越西县', 293);
INSERT INTO `tp_region` VALUES (2831, '甘洛县', 293);
INSERT INTO `tp_region` VALUES (2832, '美姑县', 293);
INSERT INTO `tp_region` VALUES (2833, '雷波县', 293);
INSERT INTO `tp_region` VALUES (2834, '市辖区', 294);
INSERT INTO `tp_region` VALUES (2835, '南明区', 294);
INSERT INTO `tp_region` VALUES (2836, '云岩区', 294);
INSERT INTO `tp_region` VALUES (2837, '花溪区', 294);
INSERT INTO `tp_region` VALUES (2838, '乌当区', 294);
INSERT INTO `tp_region` VALUES (2839, '白云区', 294);
INSERT INTO `tp_region` VALUES (2840, '小河区', 294);
INSERT INTO `tp_region` VALUES (2841, '开阳县', 294);
INSERT INTO `tp_region` VALUES (2842, '息烽县', 294);
INSERT INTO `tp_region` VALUES (2843, '修文县', 294);
INSERT INTO `tp_region` VALUES (2844, '清镇市', 294);
INSERT INTO `tp_region` VALUES (2845, '钟山区', 295);
INSERT INTO `tp_region` VALUES (2846, '六枝特区', 295);
INSERT INTO `tp_region` VALUES (2847, '水城县', 295);
INSERT INTO `tp_region` VALUES (2848, '盘县', 295);
INSERT INTO `tp_region` VALUES (2849, '市辖区', 296);
INSERT INTO `tp_region` VALUES (2850, '红花岗区', 296);
INSERT INTO `tp_region` VALUES (2851, '汇川区', 296);
INSERT INTO `tp_region` VALUES (2852, '遵义县', 296);
INSERT INTO `tp_region` VALUES (2853, '桐梓县', 296);
INSERT INTO `tp_region` VALUES (2854, '绥阳县', 296);
INSERT INTO `tp_region` VALUES (2855, '正安县', 296);
INSERT INTO `tp_region` VALUES (2856, '道真仡佬族苗族自治县', 296);
INSERT INTO `tp_region` VALUES (2857, '务川仡佬族苗族自治县', 296);
INSERT INTO `tp_region` VALUES (2858, '凤冈县', 296);
INSERT INTO `tp_region` VALUES (2859, '湄潭县', 296);
INSERT INTO `tp_region` VALUES (2860, '余庆县', 296);
INSERT INTO `tp_region` VALUES (2861, '习水县', 296);
INSERT INTO `tp_region` VALUES (2862, '赤水市', 296);
INSERT INTO `tp_region` VALUES (2863, '仁怀市', 296);
INSERT INTO `tp_region` VALUES (2864, '市辖区', 297);
INSERT INTO `tp_region` VALUES (2865, '西秀区', 297);
INSERT INTO `tp_region` VALUES (2866, '平坝县', 297);
INSERT INTO `tp_region` VALUES (2867, '普定县', 297);
INSERT INTO `tp_region` VALUES (2868, '镇宁布依族苗族自治县', 297);
INSERT INTO `tp_region` VALUES (2869, '关岭布依族苗族自治县', 297);
INSERT INTO `tp_region` VALUES (2870, '紫云苗族布依族自治县', 297);
INSERT INTO `tp_region` VALUES (2871, '铜仁市', 298);
INSERT INTO `tp_region` VALUES (2872, '江口县', 298);
INSERT INTO `tp_region` VALUES (2873, '玉屏侗族自治县', 298);
INSERT INTO `tp_region` VALUES (2874, '石阡县', 298);
INSERT INTO `tp_region` VALUES (2875, '思南县', 298);
INSERT INTO `tp_region` VALUES (2876, '印江土家族苗族自治县', 298);
INSERT INTO `tp_region` VALUES (2877, '德江县', 298);
INSERT INTO `tp_region` VALUES (2878, '沿河土家族自治县', 298);
INSERT INTO `tp_region` VALUES (2879, '松桃苗族自治县', 298);
INSERT INTO `tp_region` VALUES (2880, '万山特区', 298);
INSERT INTO `tp_region` VALUES (2881, '兴义市', 299);
INSERT INTO `tp_region` VALUES (2882, '兴仁县', 299);
INSERT INTO `tp_region` VALUES (2883, '普安县', 299);
INSERT INTO `tp_region` VALUES (2884, '晴隆县', 299);
INSERT INTO `tp_region` VALUES (2885, '贞丰县', 299);
INSERT INTO `tp_region` VALUES (2886, '望谟县', 299);
INSERT INTO `tp_region` VALUES (2887, '册亨县', 299);
INSERT INTO `tp_region` VALUES (2888, '安龙县', 299);
INSERT INTO `tp_region` VALUES (2889, '毕节市', 300);
INSERT INTO `tp_region` VALUES (2890, '大方县', 300);
INSERT INTO `tp_region` VALUES (2891, '黔西县', 300);
INSERT INTO `tp_region` VALUES (2892, '金沙县', 300);
INSERT INTO `tp_region` VALUES (2893, '织金县', 300);
INSERT INTO `tp_region` VALUES (2894, '纳雍县', 300);
INSERT INTO `tp_region` VALUES (2895, '威宁彝族回族苗族自治县', 300);
INSERT INTO `tp_region` VALUES (2896, '赫章县', 300);
INSERT INTO `tp_region` VALUES (2897, '凯里市', 301);
INSERT INTO `tp_region` VALUES (2898, '黄平县', 301);
INSERT INTO `tp_region` VALUES (2899, '施秉县', 301);
INSERT INTO `tp_region` VALUES (2900, '三穗县', 301);
INSERT INTO `tp_region` VALUES (2901, '镇远县', 301);
INSERT INTO `tp_region` VALUES (2902, '岑巩县', 301);
INSERT INTO `tp_region` VALUES (2903, '天柱县', 301);
INSERT INTO `tp_region` VALUES (2904, '锦屏县', 301);
INSERT INTO `tp_region` VALUES (2905, '剑河县', 301);
INSERT INTO `tp_region` VALUES (2906, '台江县', 301);
INSERT INTO `tp_region` VALUES (2907, '黎平县', 301);
INSERT INTO `tp_region` VALUES (2908, '榕江县', 301);
INSERT INTO `tp_region` VALUES (2909, '从江县', 301);
INSERT INTO `tp_region` VALUES (2910, '雷山县', 301);
INSERT INTO `tp_region` VALUES (2911, '麻江县', 301);
INSERT INTO `tp_region` VALUES (2912, '丹寨县', 301);
INSERT INTO `tp_region` VALUES (2913, '都匀市', 302);
INSERT INTO `tp_region` VALUES (2914, '福泉市', 302);
INSERT INTO `tp_region` VALUES (2915, '荔波县', 302);
INSERT INTO `tp_region` VALUES (2916, '贵定县', 302);
INSERT INTO `tp_region` VALUES (2917, '瓮安县', 302);
INSERT INTO `tp_region` VALUES (2918, '独山县', 302);
INSERT INTO `tp_region` VALUES (2919, '平塘县', 302);
INSERT INTO `tp_region` VALUES (2920, '罗甸县', 302);
INSERT INTO `tp_region` VALUES (2921, '长顺县', 302);
INSERT INTO `tp_region` VALUES (2922, '龙里县', 302);
INSERT INTO `tp_region` VALUES (2923, '惠水县', 302);
INSERT INTO `tp_region` VALUES (2924, '三都水族自治县', 302);
INSERT INTO `tp_region` VALUES (2925, '市辖区', 303);
INSERT INTO `tp_region` VALUES (2926, '五华区', 303);
INSERT INTO `tp_region` VALUES (2927, '盘龙区', 303);
INSERT INTO `tp_region` VALUES (2928, '官渡区', 303);
INSERT INTO `tp_region` VALUES (2929, '西山区', 303);
INSERT INTO `tp_region` VALUES (2930, '东川区', 303);
INSERT INTO `tp_region` VALUES (2931, '呈贡县', 303);
INSERT INTO `tp_region` VALUES (2932, '晋宁县', 303);
INSERT INTO `tp_region` VALUES (2933, '富民县', 303);
INSERT INTO `tp_region` VALUES (2934, '宜良县', 303);
INSERT INTO `tp_region` VALUES (2935, '石林彝族自治县', 303);
INSERT INTO `tp_region` VALUES (2936, '嵩明县', 303);
INSERT INTO `tp_region` VALUES (2937, '禄劝彝族苗族自治县', 303);
INSERT INTO `tp_region` VALUES (2938, '寻甸回族彝族自治县', 303);
INSERT INTO `tp_region` VALUES (2939, '安宁市', 303);
INSERT INTO `tp_region` VALUES (2940, '市辖区', 304);
INSERT INTO `tp_region` VALUES (2941, '麒麟区', 304);
INSERT INTO `tp_region` VALUES (2942, '马龙县', 304);
INSERT INTO `tp_region` VALUES (2943, '陆良县', 304);
INSERT INTO `tp_region` VALUES (2944, '师宗县', 304);
INSERT INTO `tp_region` VALUES (2945, '罗平县', 304);
INSERT INTO `tp_region` VALUES (2946, '富源县', 304);
INSERT INTO `tp_region` VALUES (2947, '会泽县', 304);
INSERT INTO `tp_region` VALUES (2948, '沾益县', 304);
INSERT INTO `tp_region` VALUES (2949, '宣威市', 304);
INSERT INTO `tp_region` VALUES (2950, '市辖区', 305);
INSERT INTO `tp_region` VALUES (2951, '红塔区', 305);
INSERT INTO `tp_region` VALUES (2952, '江川县', 305);
INSERT INTO `tp_region` VALUES (2953, '澄江县', 305);
INSERT INTO `tp_region` VALUES (2954, '通海县', 305);
INSERT INTO `tp_region` VALUES (2955, '华宁县', 305);
INSERT INTO `tp_region` VALUES (2956, '易门县', 305);
INSERT INTO `tp_region` VALUES (2957, '峨山彝族自治县', 305);
INSERT INTO `tp_region` VALUES (2958, '新平彝族傣族自治县', 305);
INSERT INTO `tp_region` VALUES (2959, '元江哈尼族彝族傣族自治县', 305);
INSERT INTO `tp_region` VALUES (2960, '市辖区', 306);
INSERT INTO `tp_region` VALUES (2961, '隆阳区', 306);
INSERT INTO `tp_region` VALUES (2962, '施甸县', 306);
INSERT INTO `tp_region` VALUES (2963, '腾冲县', 306);
INSERT INTO `tp_region` VALUES (2964, '龙陵县', 306);
INSERT INTO `tp_region` VALUES (2965, '昌宁县', 306);
INSERT INTO `tp_region` VALUES (2966, '市辖区', 307);
INSERT INTO `tp_region` VALUES (2967, '昭阳区', 307);
INSERT INTO `tp_region` VALUES (2968, '鲁甸县', 307);
INSERT INTO `tp_region` VALUES (2969, '巧家县', 307);
INSERT INTO `tp_region` VALUES (2970, '盐津县', 307);
INSERT INTO `tp_region` VALUES (2971, '大关县', 307);
INSERT INTO `tp_region` VALUES (2972, '永善县', 307);
INSERT INTO `tp_region` VALUES (2973, '绥江县', 307);
INSERT INTO `tp_region` VALUES (2974, '镇雄县', 307);
INSERT INTO `tp_region` VALUES (2975, '彝良县', 307);
INSERT INTO `tp_region` VALUES (2976, '威信县', 307);
INSERT INTO `tp_region` VALUES (2977, '水富县', 307);
INSERT INTO `tp_region` VALUES (2978, '市辖区', 308);
INSERT INTO `tp_region` VALUES (2979, '古城区', 308);
INSERT INTO `tp_region` VALUES (2980, '玉龙纳西族自治县', 308);
INSERT INTO `tp_region` VALUES (2981, '永胜县', 308);
INSERT INTO `tp_region` VALUES (2982, '华坪县', 308);
INSERT INTO `tp_region` VALUES (2983, '宁蒗彝族自治县', 308);
INSERT INTO `tp_region` VALUES (2984, '市辖区', 309);
INSERT INTO `tp_region` VALUES (2985, '思茅区', 309);
INSERT INTO `tp_region` VALUES (2986, '宁洱哈尼族彝族自治县', 309);
INSERT INTO `tp_region` VALUES (2987, '墨江哈尼族自治县', 309);
INSERT INTO `tp_region` VALUES (2988, '景东彝族自治县', 309);
INSERT INTO `tp_region` VALUES (2989, '景谷傣族彝族自治县', 309);
INSERT INTO `tp_region` VALUES (2990, '镇沅彝族哈尼族拉祜族自治县', 309);
INSERT INTO `tp_region` VALUES (2991, '江城哈尼族彝族自治县', 309);
INSERT INTO `tp_region` VALUES (2992, '孟连傣族拉祜族佤族自治县', 309);
INSERT INTO `tp_region` VALUES (2993, '澜沧拉祜族自治县', 309);
INSERT INTO `tp_region` VALUES (2994, '西盟佤族自治县', 309);
INSERT INTO `tp_region` VALUES (2995, '市辖区', 310);
INSERT INTO `tp_region` VALUES (2996, '临翔区', 310);
INSERT INTO `tp_region` VALUES (2997, '凤庆县', 310);
INSERT INTO `tp_region` VALUES (2998, '云县', 310);
INSERT INTO `tp_region` VALUES (2999, '永德县', 310);
INSERT INTO `tp_region` VALUES (3000, '镇康县', 310);
INSERT INTO `tp_region` VALUES (3001, '双江拉祜族佤族布朗族傣族自治县', 310);
INSERT INTO `tp_region` VALUES (3002, '耿马傣族佤族自治县', 310);
INSERT INTO `tp_region` VALUES (3003, '沧源佤族自治县', 310);
INSERT INTO `tp_region` VALUES (3004, '楚雄市', 311);
INSERT INTO `tp_region` VALUES (3005, '双柏县', 311);
INSERT INTO `tp_region` VALUES (3006, '牟定县', 311);
INSERT INTO `tp_region` VALUES (3007, '南华县', 311);
INSERT INTO `tp_region` VALUES (3008, '姚安县', 311);
INSERT INTO `tp_region` VALUES (3009, '大姚县', 311);
INSERT INTO `tp_region` VALUES (3010, '永仁县', 311);
INSERT INTO `tp_region` VALUES (3011, '元谋县', 311);
INSERT INTO `tp_region` VALUES (3012, '武定县', 311);
INSERT INTO `tp_region` VALUES (3013, '禄丰县', 311);
INSERT INTO `tp_region` VALUES (3014, '个旧市', 312);
INSERT INTO `tp_region` VALUES (3015, '开远市', 312);
INSERT INTO `tp_region` VALUES (3016, '蒙自市', 312);
INSERT INTO `tp_region` VALUES (3017, '屏边苗族自治县', 312);
INSERT INTO `tp_region` VALUES (3018, '建水县', 312);
INSERT INTO `tp_region` VALUES (3019, '石屏县', 312);
INSERT INTO `tp_region` VALUES (3020, '弥勒县', 312);
INSERT INTO `tp_region` VALUES (3021, '泸西县', 312);
INSERT INTO `tp_region` VALUES (3022, '元阳县', 312);
INSERT INTO `tp_region` VALUES (3023, '红河县', 312);
INSERT INTO `tp_region` VALUES (3024, '金平苗族瑶族傣族自治县', 312);
INSERT INTO `tp_region` VALUES (3025, '绿春县', 312);
INSERT INTO `tp_region` VALUES (3026, '河口瑶族自治县', 312);
INSERT INTO `tp_region` VALUES (3027, '文山县', 313);
INSERT INTO `tp_region` VALUES (3028, '砚山县', 313);
INSERT INTO `tp_region` VALUES (3029, '西畴县', 313);
INSERT INTO `tp_region` VALUES (3030, '麻栗坡县', 313);
INSERT INTO `tp_region` VALUES (3031, '马关县', 313);
INSERT INTO `tp_region` VALUES (3032, '丘北县', 313);
INSERT INTO `tp_region` VALUES (3033, '广南县', 313);
INSERT INTO `tp_region` VALUES (3034, '富宁县', 313);
INSERT INTO `tp_region` VALUES (3035, '景洪市', 314);
INSERT INTO `tp_region` VALUES (3036, '勐海县', 314);
INSERT INTO `tp_region` VALUES (3037, '勐腊县', 314);
INSERT INTO `tp_region` VALUES (3038, '大理市', 315);
INSERT INTO `tp_region` VALUES (3039, '漾濞彝族自治县', 315);
INSERT INTO `tp_region` VALUES (3040, '祥云县', 315);
INSERT INTO `tp_region` VALUES (3041, '宾川县', 315);
INSERT INTO `tp_region` VALUES (3042, '弥渡县', 315);
INSERT INTO `tp_region` VALUES (3043, '南涧彝族自治县', 315);
INSERT INTO `tp_region` VALUES (3044, '巍山彝族回族自治县', 315);
INSERT INTO `tp_region` VALUES (3045, '永平县', 315);
INSERT INTO `tp_region` VALUES (3046, '云龙县', 315);
INSERT INTO `tp_region` VALUES (3047, '洱源县', 315);
INSERT INTO `tp_region` VALUES (3048, '剑川县', 315);
INSERT INTO `tp_region` VALUES (3049, '鹤庆县', 315);
INSERT INTO `tp_region` VALUES (3050, '瑞丽市', 316);
INSERT INTO `tp_region` VALUES (3051, '芒市', 316);
INSERT INTO `tp_region` VALUES (3052, '梁河县', 316);
INSERT INTO `tp_region` VALUES (3053, '盈江县', 316);
INSERT INTO `tp_region` VALUES (3054, '陇川县', 316);
INSERT INTO `tp_region` VALUES (3055, '泸水县', 317);
INSERT INTO `tp_region` VALUES (3056, '福贡县', 317);
INSERT INTO `tp_region` VALUES (3057, '贡山独龙族怒族自治县', 317);
INSERT INTO `tp_region` VALUES (3058, '兰坪白族普米族自治县', 317);
INSERT INTO `tp_region` VALUES (3059, '香格里拉县', 318);
INSERT INTO `tp_region` VALUES (3060, '德钦县', 318);
INSERT INTO `tp_region` VALUES (3061, '维西傈僳族自治县', 318);
INSERT INTO `tp_region` VALUES (3062, '市辖区', 319);
INSERT INTO `tp_region` VALUES (3063, '城关区', 319);
INSERT INTO `tp_region` VALUES (3064, '林周县', 319);
INSERT INTO `tp_region` VALUES (3065, '当雄县', 319);
INSERT INTO `tp_region` VALUES (3066, '尼木县', 319);
INSERT INTO `tp_region` VALUES (3067, '曲水县', 319);
INSERT INTO `tp_region` VALUES (3068, '堆龙德庆县', 319);
INSERT INTO `tp_region` VALUES (3069, '达孜县', 319);
INSERT INTO `tp_region` VALUES (3070, '墨竹工卡县', 319);
INSERT INTO `tp_region` VALUES (3071, '昌都县', 320);
INSERT INTO `tp_region` VALUES (3072, '江达县', 320);
INSERT INTO `tp_region` VALUES (3073, '贡觉县', 320);
INSERT INTO `tp_region` VALUES (3074, '类乌齐县', 320);
INSERT INTO `tp_region` VALUES (3075, '丁青县', 320);
INSERT INTO `tp_region` VALUES (3076, '察雅县', 320);
INSERT INTO `tp_region` VALUES (3077, '八宿县', 320);
INSERT INTO `tp_region` VALUES (3078, '左贡县', 320);
INSERT INTO `tp_region` VALUES (3079, '芒康县', 320);
INSERT INTO `tp_region` VALUES (3080, '洛隆县', 320);
INSERT INTO `tp_region` VALUES (3081, '边坝县', 320);
INSERT INTO `tp_region` VALUES (3082, '乃东县', 321);
INSERT INTO `tp_region` VALUES (3083, '扎囊县', 321);
INSERT INTO `tp_region` VALUES (3084, '贡嘎县', 321);
INSERT INTO `tp_region` VALUES (3085, '桑日县', 321);
INSERT INTO `tp_region` VALUES (3086, '琼结县', 321);
INSERT INTO `tp_region` VALUES (3087, '曲松县', 321);
INSERT INTO `tp_region` VALUES (3088, '措美县', 321);
INSERT INTO `tp_region` VALUES (3089, '洛扎县', 321);
INSERT INTO `tp_region` VALUES (3090, '加查县', 321);
INSERT INTO `tp_region` VALUES (3091, '隆子县', 321);
INSERT INTO `tp_region` VALUES (3092, '错那县', 321);
INSERT INTO `tp_region` VALUES (3093, '浪卡子县', 321);
INSERT INTO `tp_region` VALUES (3094, '日喀则市', 322);
INSERT INTO `tp_region` VALUES (3095, '南木林县', 322);
INSERT INTO `tp_region` VALUES (3096, '江孜县', 322);
INSERT INTO `tp_region` VALUES (3097, '定日县', 322);
INSERT INTO `tp_region` VALUES (3098, '萨迦县', 322);
INSERT INTO `tp_region` VALUES (3099, '拉孜县', 322);
INSERT INTO `tp_region` VALUES (3100, '昂仁县', 322);
INSERT INTO `tp_region` VALUES (3101, '谢通门县', 322);
INSERT INTO `tp_region` VALUES (3102, '白朗县', 322);
INSERT INTO `tp_region` VALUES (3103, '仁布县', 322);
INSERT INTO `tp_region` VALUES (3104, '康马县', 322);
INSERT INTO `tp_region` VALUES (3105, '定结县', 322);
INSERT INTO `tp_region` VALUES (3106, '仲巴县', 322);
INSERT INTO `tp_region` VALUES (3107, '亚东县', 322);
INSERT INTO `tp_region` VALUES (3108, '吉隆县', 322);
INSERT INTO `tp_region` VALUES (3109, '聂拉木县', 322);
INSERT INTO `tp_region` VALUES (3110, '萨嘎县', 322);
INSERT INTO `tp_region` VALUES (3111, '岗巴县', 322);
INSERT INTO `tp_region` VALUES (3112, '那曲县', 323);
INSERT INTO `tp_region` VALUES (3113, '嘉黎县', 323);
INSERT INTO `tp_region` VALUES (3114, '比如县', 323);
INSERT INTO `tp_region` VALUES (3115, '聂荣县', 323);
INSERT INTO `tp_region` VALUES (3116, '安多县', 323);
INSERT INTO `tp_region` VALUES (3117, '申扎县', 323);
INSERT INTO `tp_region` VALUES (3118, '索县', 323);
INSERT INTO `tp_region` VALUES (3119, '班戈县', 323);
INSERT INTO `tp_region` VALUES (3120, '巴青县', 323);
INSERT INTO `tp_region` VALUES (3121, '尼玛县', 323);
INSERT INTO `tp_region` VALUES (3122, '普兰县', 324);
INSERT INTO `tp_region` VALUES (3123, '札达县', 324);
INSERT INTO `tp_region` VALUES (3124, '噶尔县', 324);
INSERT INTO `tp_region` VALUES (3125, '日土县', 324);
INSERT INTO `tp_region` VALUES (3126, '革吉县', 324);
INSERT INTO `tp_region` VALUES (3127, '改则县', 324);
INSERT INTO `tp_region` VALUES (3128, '措勤县', 324);
INSERT INTO `tp_region` VALUES (3129, '林芝县', 325);
INSERT INTO `tp_region` VALUES (3130, '工布江达县', 325);
INSERT INTO `tp_region` VALUES (3131, '米林县', 325);
INSERT INTO `tp_region` VALUES (3132, '墨脱县', 325);
INSERT INTO `tp_region` VALUES (3133, '波密县', 325);
INSERT INTO `tp_region` VALUES (3134, '察隅县', 325);
INSERT INTO `tp_region` VALUES (3135, '朗县', 325);
INSERT INTO `tp_region` VALUES (3136, '市辖区', 326);
INSERT INTO `tp_region` VALUES (3137, '新城区', 326);
INSERT INTO `tp_region` VALUES (3138, '碑林区', 326);
INSERT INTO `tp_region` VALUES (3139, '莲湖区', 326);
INSERT INTO `tp_region` VALUES (3140, '灞桥区', 326);
INSERT INTO `tp_region` VALUES (3141, '未央区', 326);
INSERT INTO `tp_region` VALUES (3142, '雁塔区', 326);
INSERT INTO `tp_region` VALUES (3143, '阎良区', 326);
INSERT INTO `tp_region` VALUES (3144, '临潼区', 326);
INSERT INTO `tp_region` VALUES (3145, '长安区', 326);
INSERT INTO `tp_region` VALUES (3146, '蓝田县', 326);
INSERT INTO `tp_region` VALUES (3147, '周至县', 326);
INSERT INTO `tp_region` VALUES (3148, '户县', 326);
INSERT INTO `tp_region` VALUES (3149, '高陵县', 326);
INSERT INTO `tp_region` VALUES (3150, '市辖区', 327);
INSERT INTO `tp_region` VALUES (3151, '王益区', 327);
INSERT INTO `tp_region` VALUES (3152, '印台区', 327);
INSERT INTO `tp_region` VALUES (3153, '耀州区', 327);
INSERT INTO `tp_region` VALUES (3154, '宜君县', 327);
INSERT INTO `tp_region` VALUES (3155, '市辖区', 328);
INSERT INTO `tp_region` VALUES (3156, '渭滨区', 328);
INSERT INTO `tp_region` VALUES (3157, '金台区', 328);
INSERT INTO `tp_region` VALUES (3158, '陈仓区', 328);
INSERT INTO `tp_region` VALUES (3159, '凤翔县', 328);
INSERT INTO `tp_region` VALUES (3160, '岐山县', 328);
INSERT INTO `tp_region` VALUES (3161, '扶风县', 328);
INSERT INTO `tp_region` VALUES (3162, '眉县', 328);
INSERT INTO `tp_region` VALUES (3163, '陇县', 328);
INSERT INTO `tp_region` VALUES (3164, '千阳县', 328);
INSERT INTO `tp_region` VALUES (3165, '麟游县', 328);
INSERT INTO `tp_region` VALUES (3166, '凤县', 328);
INSERT INTO `tp_region` VALUES (3167, '太白县', 328);
INSERT INTO `tp_region` VALUES (3168, '市辖区', 329);
INSERT INTO `tp_region` VALUES (3169, '秦都区', 329);
INSERT INTO `tp_region` VALUES (3170, '杨陵区', 329);
INSERT INTO `tp_region` VALUES (3171, '渭城区', 329);
INSERT INTO `tp_region` VALUES (3172, '三原县', 329);
INSERT INTO `tp_region` VALUES (3173, '泾阳县', 329);
INSERT INTO `tp_region` VALUES (3174, '乾县', 329);
INSERT INTO `tp_region` VALUES (3175, '礼泉县', 329);
INSERT INTO `tp_region` VALUES (3176, '永寿县', 329);
INSERT INTO `tp_region` VALUES (3177, '彬县', 329);
INSERT INTO `tp_region` VALUES (3178, '长武县', 329);
INSERT INTO `tp_region` VALUES (3179, '旬邑县', 329);
INSERT INTO `tp_region` VALUES (3180, '淳化县', 329);
INSERT INTO `tp_region` VALUES (3181, '武功县', 329);
INSERT INTO `tp_region` VALUES (3182, '兴平市', 329);
INSERT INTO `tp_region` VALUES (3183, '市辖区', 330);
INSERT INTO `tp_region` VALUES (3184, '临渭区', 330);
INSERT INTO `tp_region` VALUES (3185, '华县', 330);
INSERT INTO `tp_region` VALUES (3186, '潼关县', 330);
INSERT INTO `tp_region` VALUES (3187, '大荔县', 330);
INSERT INTO `tp_region` VALUES (3188, '合阳县', 330);
INSERT INTO `tp_region` VALUES (3189, '澄城县', 330);
INSERT INTO `tp_region` VALUES (3190, '蒲城县', 330);
INSERT INTO `tp_region` VALUES (3191, '白水县', 330);
INSERT INTO `tp_region` VALUES (3192, '富平县', 330);
INSERT INTO `tp_region` VALUES (3193, '韩城市', 330);
INSERT INTO `tp_region` VALUES (3194, '华阴市', 330);
INSERT INTO `tp_region` VALUES (3195, '市辖区', 331);
INSERT INTO `tp_region` VALUES (3196, '宝塔区', 331);
INSERT INTO `tp_region` VALUES (3197, '延长县', 331);
INSERT INTO `tp_region` VALUES (3198, '延川县', 331);
INSERT INTO `tp_region` VALUES (3199, '子长县', 331);
INSERT INTO `tp_region` VALUES (3200, '安塞县', 331);
INSERT INTO `tp_region` VALUES (3201, '志丹县', 331);
INSERT INTO `tp_region` VALUES (3202, '吴起县', 331);
INSERT INTO `tp_region` VALUES (3203, '甘泉县', 331);
INSERT INTO `tp_region` VALUES (3204, '富县', 331);
INSERT INTO `tp_region` VALUES (3205, '洛川县', 331);
INSERT INTO `tp_region` VALUES (3206, '宜川县', 331);
INSERT INTO `tp_region` VALUES (3207, '黄龙县', 331);
INSERT INTO `tp_region` VALUES (3208, '黄陵县', 331);
INSERT INTO `tp_region` VALUES (3209, '市辖区', 332);
INSERT INTO `tp_region` VALUES (3210, '汉台区', 332);
INSERT INTO `tp_region` VALUES (3211, '南郑县', 332);
INSERT INTO `tp_region` VALUES (3212, '城固县', 332);
INSERT INTO `tp_region` VALUES (3213, '洋县', 332);
INSERT INTO `tp_region` VALUES (3214, '西乡县', 332);
INSERT INTO `tp_region` VALUES (3215, '勉县', 332);
INSERT INTO `tp_region` VALUES (3216, '宁强县', 332);
INSERT INTO `tp_region` VALUES (3217, '略阳县', 332);
INSERT INTO `tp_region` VALUES (3218, '镇巴县', 332);
INSERT INTO `tp_region` VALUES (3219, '留坝县', 332);
INSERT INTO `tp_region` VALUES (3220, '佛坪县', 332);
INSERT INTO `tp_region` VALUES (3221, '市辖区', 333);
INSERT INTO `tp_region` VALUES (3222, '榆阳区', 333);
INSERT INTO `tp_region` VALUES (3223, '神木县', 333);
INSERT INTO `tp_region` VALUES (3224, '府谷县', 333);
INSERT INTO `tp_region` VALUES (3225, '横山县', 333);
INSERT INTO `tp_region` VALUES (3226, '靖边县', 333);
INSERT INTO `tp_region` VALUES (3227, '定边县', 333);
INSERT INTO `tp_region` VALUES (3228, '绥德县', 333);
INSERT INTO `tp_region` VALUES (3229, '米脂县', 333);
INSERT INTO `tp_region` VALUES (3230, '佳县', 333);
INSERT INTO `tp_region` VALUES (3231, '吴堡县', 333);
INSERT INTO `tp_region` VALUES (3232, '清涧县', 333);
INSERT INTO `tp_region` VALUES (3233, '子洲县', 333);
INSERT INTO `tp_region` VALUES (3234, '市辖区', 334);
INSERT INTO `tp_region` VALUES (3235, '汉滨区', 334);
INSERT INTO `tp_region` VALUES (3236, '汉阴县', 334);
INSERT INTO `tp_region` VALUES (3237, '石泉县', 334);
INSERT INTO `tp_region` VALUES (3238, '宁陕县', 334);
INSERT INTO `tp_region` VALUES (3239, '紫阳县', 334);
INSERT INTO `tp_region` VALUES (3240, '岚皋县', 334);
INSERT INTO `tp_region` VALUES (3241, '平利县', 334);
INSERT INTO `tp_region` VALUES (3242, '镇坪县', 334);
INSERT INTO `tp_region` VALUES (3243, '旬阳县', 334);
INSERT INTO `tp_region` VALUES (3244, '白河县', 334);
INSERT INTO `tp_region` VALUES (3245, '市辖区', 335);
INSERT INTO `tp_region` VALUES (3246, '商州区', 335);
INSERT INTO `tp_region` VALUES (3247, '洛南县', 335);
INSERT INTO `tp_region` VALUES (3248, '丹凤县', 335);
INSERT INTO `tp_region` VALUES (3249, '商南县', 335);
INSERT INTO `tp_region` VALUES (3250, '山阳县', 335);
INSERT INTO `tp_region` VALUES (3251, '镇安县', 335);
INSERT INTO `tp_region` VALUES (3252, '柞水县', 335);
INSERT INTO `tp_region` VALUES (3253, '市辖区', 336);
INSERT INTO `tp_region` VALUES (3254, '城关区', 336);
INSERT INTO `tp_region` VALUES (3255, '七里河区', 336);
INSERT INTO `tp_region` VALUES (3256, '西固区', 336);
INSERT INTO `tp_region` VALUES (3257, '安宁区', 336);
INSERT INTO `tp_region` VALUES (3258, '红古区', 336);
INSERT INTO `tp_region` VALUES (3259, '永登县', 336);
INSERT INTO `tp_region` VALUES (3260, '皋兰县', 336);
INSERT INTO `tp_region` VALUES (3261, '榆中县', 336);
INSERT INTO `tp_region` VALUES (3262, '市辖区', 337);
INSERT INTO `tp_region` VALUES (3263, '市辖区', 338);
INSERT INTO `tp_region` VALUES (3264, '金川区', 338);
INSERT INTO `tp_region` VALUES (3265, '永昌县', 338);
INSERT INTO `tp_region` VALUES (3266, '市辖区', 339);
INSERT INTO `tp_region` VALUES (3267, '白银区', 339);
INSERT INTO `tp_region` VALUES (3268, '平川区', 339);
INSERT INTO `tp_region` VALUES (3269, '靖远县', 339);
INSERT INTO `tp_region` VALUES (3270, '会宁县', 339);
INSERT INTO `tp_region` VALUES (3271, '景泰县', 339);
INSERT INTO `tp_region` VALUES (3272, '市辖区', 340);
INSERT INTO `tp_region` VALUES (3274, '秦州区', 340);
INSERT INTO `tp_region` VALUES (3275, '清水县', 340);
INSERT INTO `tp_region` VALUES (3276, '秦安县', 340);
INSERT INTO `tp_region` VALUES (3277, '甘谷县', 340);
INSERT INTO `tp_region` VALUES (3278, '武山县', 340);
INSERT INTO `tp_region` VALUES (3279, '张家川回族自治县', 340);
INSERT INTO `tp_region` VALUES (3280, '市辖区', 341);
INSERT INTO `tp_region` VALUES (3281, '凉州区', 341);
INSERT INTO `tp_region` VALUES (3282, '民勤县', 341);
INSERT INTO `tp_region` VALUES (3283, '古浪县', 341);
INSERT INTO `tp_region` VALUES (3284, '天祝藏族自治县', 341);
INSERT INTO `tp_region` VALUES (3285, '市辖区', 342);
INSERT INTO `tp_region` VALUES (3286, '甘州区', 342);
INSERT INTO `tp_region` VALUES (3287, '肃南裕固族自治县', 342);
INSERT INTO `tp_region` VALUES (3288, '民乐县', 342);
INSERT INTO `tp_region` VALUES (3289, '临泽县', 342);
INSERT INTO `tp_region` VALUES (3290, '高台县', 342);
INSERT INTO `tp_region` VALUES (3291, '山丹县', 342);
INSERT INTO `tp_region` VALUES (3292, '市辖区', 343);
INSERT INTO `tp_region` VALUES (3293, '崆峒区', 343);
INSERT INTO `tp_region` VALUES (3294, '泾川县', 343);
INSERT INTO `tp_region` VALUES (3295, '灵台县', 343);
INSERT INTO `tp_region` VALUES (3296, '崇信县', 343);
INSERT INTO `tp_region` VALUES (3297, '华亭县', 343);
INSERT INTO `tp_region` VALUES (3298, '庄浪县', 343);
INSERT INTO `tp_region` VALUES (3299, '静宁县', 343);
INSERT INTO `tp_region` VALUES (3300, '市辖区', 344);
INSERT INTO `tp_region` VALUES (3301, '肃州区', 344);
INSERT INTO `tp_region` VALUES (3302, '金塔县', 344);
INSERT INTO `tp_region` VALUES (3304, '肃北蒙古族自治县', 344);
INSERT INTO `tp_region` VALUES (3305, '阿克塞哈萨克族自治县', 344);
INSERT INTO `tp_region` VALUES (3306, '玉门市', 344);
INSERT INTO `tp_region` VALUES (3307, '敦煌市', 344);
INSERT INTO `tp_region` VALUES (3308, '市辖区', 345);
INSERT INTO `tp_region` VALUES (3309, '西峰区', 345);
INSERT INTO `tp_region` VALUES (3310, '庆城县', 345);
INSERT INTO `tp_region` VALUES (3311, '环县', 345);
INSERT INTO `tp_region` VALUES (3312, '华池县', 345);
INSERT INTO `tp_region` VALUES (3313, '合水县', 345);
INSERT INTO `tp_region` VALUES (3314, '正宁县', 345);
INSERT INTO `tp_region` VALUES (3315, '宁县', 345);
INSERT INTO `tp_region` VALUES (3316, '镇原县', 345);
INSERT INTO `tp_region` VALUES (3317, '市辖区', 346);
INSERT INTO `tp_region` VALUES (3318, '安定区', 346);
INSERT INTO `tp_region` VALUES (3319, '通渭县', 346);
INSERT INTO `tp_region` VALUES (3320, '陇西县', 346);
INSERT INTO `tp_region` VALUES (3321, '渭源县', 346);
INSERT INTO `tp_region` VALUES (3322, '临洮县', 346);
INSERT INTO `tp_region` VALUES (3323, '漳县', 346);
INSERT INTO `tp_region` VALUES (3324, '岷县', 346);
INSERT INTO `tp_region` VALUES (3325, '市辖区', 347);
INSERT INTO `tp_region` VALUES (3326, '武都区', 347);
INSERT INTO `tp_region` VALUES (3327, '成县', 347);
INSERT INTO `tp_region` VALUES (3328, '文县', 347);
INSERT INTO `tp_region` VALUES (3329, '宕昌县', 347);
INSERT INTO `tp_region` VALUES (3330, '康县', 347);
INSERT INTO `tp_region` VALUES (3331, '西和县', 347);
INSERT INTO `tp_region` VALUES (3332, '礼县', 347);
INSERT INTO `tp_region` VALUES (3333, '徽县', 347);
INSERT INTO `tp_region` VALUES (3334, '两当县', 347);
INSERT INTO `tp_region` VALUES (3335, '临夏市', 348);
INSERT INTO `tp_region` VALUES (3336, '临夏县', 348);
INSERT INTO `tp_region` VALUES (3337, '康乐县', 348);
INSERT INTO `tp_region` VALUES (3338, '永靖县', 348);
INSERT INTO `tp_region` VALUES (3339, '广河县', 348);
INSERT INTO `tp_region` VALUES (3340, '和政县', 348);
INSERT INTO `tp_region` VALUES (3341, '东乡族自治县', 348);
INSERT INTO `tp_region` VALUES (3342, '积石山保安族东乡族撒拉族自治县', 348);
INSERT INTO `tp_region` VALUES (3343, '合作市', 349);
INSERT INTO `tp_region` VALUES (3344, '临潭县', 349);
INSERT INTO `tp_region` VALUES (3345, '卓尼县', 349);
INSERT INTO `tp_region` VALUES (3346, '舟曲县', 349);
INSERT INTO `tp_region` VALUES (3347, '迭部县', 349);
INSERT INTO `tp_region` VALUES (3348, '玛曲县', 349);
INSERT INTO `tp_region` VALUES (3349, '碌曲县', 349);
INSERT INTO `tp_region` VALUES (3350, '夏河县', 349);
INSERT INTO `tp_region` VALUES (3351, '市辖区', 350);
INSERT INTO `tp_region` VALUES (3352, '城东区', 350);
INSERT INTO `tp_region` VALUES (3353, '城中区', 350);
INSERT INTO `tp_region` VALUES (3354, '城西区', 350);
INSERT INTO `tp_region` VALUES (3355, '城北区', 350);
INSERT INTO `tp_region` VALUES (3356, '大通回族土族自治县', 350);
INSERT INTO `tp_region` VALUES (3357, '湟中县', 350);
INSERT INTO `tp_region` VALUES (3358, '湟源县', 350);
INSERT INTO `tp_region` VALUES (3359, '平安县', 351);
INSERT INTO `tp_region` VALUES (3360, '民和回族土族自治县', 351);
INSERT INTO `tp_region` VALUES (3361, '乐都县', 351);
INSERT INTO `tp_region` VALUES (3362, '互助土族自治县', 351);
INSERT INTO `tp_region` VALUES (3363, '化隆回族自治县', 351);
INSERT INTO `tp_region` VALUES (3364, '循化撒拉族自治县', 351);
INSERT INTO `tp_region` VALUES (3365, '门源回族自治县', 352);
INSERT INTO `tp_region` VALUES (3366, '祁连县', 352);
INSERT INTO `tp_region` VALUES (3367, '海晏县', 352);
INSERT INTO `tp_region` VALUES (3368, '刚察县', 352);
INSERT INTO `tp_region` VALUES (3369, '同仁县', 353);
INSERT INTO `tp_region` VALUES (3370, '尖扎县', 353);
INSERT INTO `tp_region` VALUES (3371, '泽库县', 353);
INSERT INTO `tp_region` VALUES (3372, '河南蒙古族自治县', 353);
INSERT INTO `tp_region` VALUES (3373, '共和县', 354);
INSERT INTO `tp_region` VALUES (3374, '同德县', 354);
INSERT INTO `tp_region` VALUES (3375, '贵德县', 354);
INSERT INTO `tp_region` VALUES (3376, '兴海县', 354);
INSERT INTO `tp_region` VALUES (3377, '贵南县', 354);
INSERT INTO `tp_region` VALUES (3378, '玛沁县', 355);
INSERT INTO `tp_region` VALUES (3379, '班玛县', 355);
INSERT INTO `tp_region` VALUES (3380, '甘德县', 355);
INSERT INTO `tp_region` VALUES (3381, '达日县', 355);
INSERT INTO `tp_region` VALUES (3382, '久治县', 355);
INSERT INTO `tp_region` VALUES (3383, '玛多县', 355);
INSERT INTO `tp_region` VALUES (3384, '玉树县', 356);
INSERT INTO `tp_region` VALUES (3385, '杂多县', 356);
INSERT INTO `tp_region` VALUES (3386, '称多县', 356);
INSERT INTO `tp_region` VALUES (3387, '治多县', 356);
INSERT INTO `tp_region` VALUES (3388, '囊谦县', 356);
INSERT INTO `tp_region` VALUES (3389, '曲麻莱县', 356);
INSERT INTO `tp_region` VALUES (3390, '格尔木市', 357);
INSERT INTO `tp_region` VALUES (3391, '德令哈市', 357);
INSERT INTO `tp_region` VALUES (3392, '乌兰县', 357);
INSERT INTO `tp_region` VALUES (3393, '都兰县', 357);
INSERT INTO `tp_region` VALUES (3394, '天峻县', 357);
INSERT INTO `tp_region` VALUES (3395, '市辖区', 358);
INSERT INTO `tp_region` VALUES (3396, '兴庆区', 358);
INSERT INTO `tp_region` VALUES (3397, '西夏区', 358);
INSERT INTO `tp_region` VALUES (3398, '金凤区', 358);
INSERT INTO `tp_region` VALUES (3399, '永宁县', 358);
INSERT INTO `tp_region` VALUES (3400, '贺兰县', 358);
INSERT INTO `tp_region` VALUES (3401, '灵武市', 358);
INSERT INTO `tp_region` VALUES (3402, '市辖区', 359);
INSERT INTO `tp_region` VALUES (3403, '大武口区', 359);
INSERT INTO `tp_region` VALUES (3404, '惠农区', 359);
INSERT INTO `tp_region` VALUES (3405, '平罗县', 359);
INSERT INTO `tp_region` VALUES (3406, '市辖区', 360);
INSERT INTO `tp_region` VALUES (3407, '利通区', 360);
INSERT INTO `tp_region` VALUES (3408, '盐池县', 360);
INSERT INTO `tp_region` VALUES (3409, '同心县', 360);
INSERT INTO `tp_region` VALUES (3410, '青铜峡市', 360);
INSERT INTO `tp_region` VALUES (3411, '市辖区', 361);
INSERT INTO `tp_region` VALUES (3412, '原州区', 361);
INSERT INTO `tp_region` VALUES (3413, '西吉县', 361);
INSERT INTO `tp_region` VALUES (3414, '隆德县', 361);
INSERT INTO `tp_region` VALUES (3415, '泾源县', 361);
INSERT INTO `tp_region` VALUES (3416, '彭阳县', 361);
INSERT INTO `tp_region` VALUES (3417, '市辖区', 362);
INSERT INTO `tp_region` VALUES (3418, '沙坡头区', 362);
INSERT INTO `tp_region` VALUES (3419, '中宁县', 362);
INSERT INTO `tp_region` VALUES (3420, '海原县', 362);
INSERT INTO `tp_region` VALUES (3421, '市辖区', 363);
INSERT INTO `tp_region` VALUES (3422, '天山区', 363);
INSERT INTO `tp_region` VALUES (3423, '沙依巴克区', 363);
INSERT INTO `tp_region` VALUES (3424, '新市区', 363);
INSERT INTO `tp_region` VALUES (3425, '水磨沟区', 363);
INSERT INTO `tp_region` VALUES (3426, '头屯河区', 363);
INSERT INTO `tp_region` VALUES (3427, '达坂城区', 363);
INSERT INTO `tp_region` VALUES (3428, '米东区', 363);
INSERT INTO `tp_region` VALUES (3429, '乌鲁木齐县', 363);
INSERT INTO `tp_region` VALUES (3430, '市辖区', 364);
INSERT INTO `tp_region` VALUES (3431, '独山子区', 364);
INSERT INTO `tp_region` VALUES (3432, '克拉玛依区', 364);
INSERT INTO `tp_region` VALUES (3433, '白碱滩区', 364);
INSERT INTO `tp_region` VALUES (3434, '乌尔禾区', 364);
INSERT INTO `tp_region` VALUES (3435, '吐鲁番市', 365);
INSERT INTO `tp_region` VALUES (3436, '鄯善县', 365);
INSERT INTO `tp_region` VALUES (3437, '托克逊县', 365);
INSERT INTO `tp_region` VALUES (3438, '哈密市', 366);
INSERT INTO `tp_region` VALUES (3439, '巴里坤哈萨克自治县', 366);
INSERT INTO `tp_region` VALUES (3440, '伊吾县', 366);
INSERT INTO `tp_region` VALUES (3441, '昌吉市', 367);
INSERT INTO `tp_region` VALUES (3442, '阜康市', 367);
INSERT INTO `tp_region` VALUES (3444, '呼图壁县', 367);
INSERT INTO `tp_region` VALUES (3445, '玛纳斯县', 367);
INSERT INTO `tp_region` VALUES (3446, '奇台县', 367);
INSERT INTO `tp_region` VALUES (3447, '吉木萨尔县', 367);
INSERT INTO `tp_region` VALUES (3448, '木垒哈萨克自治县', 367);
INSERT INTO `tp_region` VALUES (3449, '博乐市', 368);
INSERT INTO `tp_region` VALUES (3450, '精河县', 368);
INSERT INTO `tp_region` VALUES (3451, '温泉县', 368);
INSERT INTO `tp_region` VALUES (3452, '库尔勒市', 369);
INSERT INTO `tp_region` VALUES (3453, '轮台县', 369);
INSERT INTO `tp_region` VALUES (3454, '尉犁县', 369);
INSERT INTO `tp_region` VALUES (3455, '若羌县', 369);
INSERT INTO `tp_region` VALUES (3456, '且末县', 369);
INSERT INTO `tp_region` VALUES (3457, '焉耆回族自治县', 369);
INSERT INTO `tp_region` VALUES (3458, '和静县', 369);
INSERT INTO `tp_region` VALUES (3459, '和硕县', 369);
INSERT INTO `tp_region` VALUES (3460, '博湖县', 369);
INSERT INTO `tp_region` VALUES (3461, '阿克苏市', 370);
INSERT INTO `tp_region` VALUES (3462, '温宿县', 370);
INSERT INTO `tp_region` VALUES (3463, '库车县', 370);
INSERT INTO `tp_region` VALUES (3464, '沙雅县', 370);
INSERT INTO `tp_region` VALUES (3465, '新和县', 370);
INSERT INTO `tp_region` VALUES (3466, '拜城县', 370);
INSERT INTO `tp_region` VALUES (3467, '乌什县', 370);
INSERT INTO `tp_region` VALUES (3468, '阿瓦提县', 370);
INSERT INTO `tp_region` VALUES (3469, '柯坪县', 370);
INSERT INTO `tp_region` VALUES (3470, '阿图什市', 371);
INSERT INTO `tp_region` VALUES (3471, '阿克陶县', 371);
INSERT INTO `tp_region` VALUES (3472, '阿合奇县', 371);
INSERT INTO `tp_region` VALUES (3473, '乌恰县', 371);
INSERT INTO `tp_region` VALUES (3474, '喀什市', 372);
INSERT INTO `tp_region` VALUES (3475, '疏附县', 372);
INSERT INTO `tp_region` VALUES (3476, '疏勒县', 372);
INSERT INTO `tp_region` VALUES (3477, '英吉沙县', 372);
INSERT INTO `tp_region` VALUES (3478, '泽普县', 372);
INSERT INTO `tp_region` VALUES (3479, '莎车县', 372);
INSERT INTO `tp_region` VALUES (3480, '叶城县', 372);
INSERT INTO `tp_region` VALUES (3481, '麦盖提县', 372);
INSERT INTO `tp_region` VALUES (3482, '岳普湖县', 372);
INSERT INTO `tp_region` VALUES (3483, '伽师县', 372);
INSERT INTO `tp_region` VALUES (3484, '巴楚县', 372);
INSERT INTO `tp_region` VALUES (3485, '塔什库尔干塔吉克自治县', 372);
INSERT INTO `tp_region` VALUES (3486, '和田市', 373);
INSERT INTO `tp_region` VALUES (3487, '和田县', 373);
INSERT INTO `tp_region` VALUES (3488, '墨玉县', 373);
INSERT INTO `tp_region` VALUES (3489, '皮山县', 373);
INSERT INTO `tp_region` VALUES (3490, '洛浦县', 373);
INSERT INTO `tp_region` VALUES (3491, '策勒县', 373);
INSERT INTO `tp_region` VALUES (3492, '于田县', 373);
INSERT INTO `tp_region` VALUES (3493, '民丰县', 373);
INSERT INTO `tp_region` VALUES (3494, '伊宁市', 374);
INSERT INTO `tp_region` VALUES (3495, '奎屯市', 374);
INSERT INTO `tp_region` VALUES (3496, '伊宁县', 374);
INSERT INTO `tp_region` VALUES (3497, '察布查尔锡伯自治县', 374);
INSERT INTO `tp_region` VALUES (3498, '霍城县', 374);
INSERT INTO `tp_region` VALUES (3499, '巩留县', 374);
INSERT INTO `tp_region` VALUES (3500, '新源县', 374);
INSERT INTO `tp_region` VALUES (3501, '昭苏县', 374);
INSERT INTO `tp_region` VALUES (3502, '特克斯县', 374);
INSERT INTO `tp_region` VALUES (3503, '尼勒克县', 374);
INSERT INTO `tp_region` VALUES (3504, '塔城市', 375);
INSERT INTO `tp_region` VALUES (3505, '乌苏市', 375);
INSERT INTO `tp_region` VALUES (3506, '额敏县', 375);
INSERT INTO `tp_region` VALUES (3507, '沙湾县', 375);
INSERT INTO `tp_region` VALUES (3508, '托里县', 375);
INSERT INTO `tp_region` VALUES (3509, '裕民县', 375);
INSERT INTO `tp_region` VALUES (3510, '和布克赛尔蒙古自治县', 375);
INSERT INTO `tp_region` VALUES (3511, '阿勒泰市', 376);
INSERT INTO `tp_region` VALUES (3512, '布尔津县', 376);
INSERT INTO `tp_region` VALUES (3513, '富蕴县', 376);
INSERT INTO `tp_region` VALUES (3514, '福海县', 376);
INSERT INTO `tp_region` VALUES (3515, '哈巴河县', 376);
INSERT INTO `tp_region` VALUES (3516, '青河县', 376);
INSERT INTO `tp_region` VALUES (3517, '吉木乃县', 376);
INSERT INTO `tp_region` VALUES (3518, '石河子市', 377);
INSERT INTO `tp_region` VALUES (3519, '阿拉尔市', 377);
INSERT INTO `tp_region` VALUES (3520, '图木舒克市', 377);
INSERT INTO `tp_region` VALUES (3521, '五家渠市', 377);
INSERT INTO `tp_region` VALUES (4000, '麦积区', 340);
INSERT INTO `tp_region` VALUES (4001, '江津区', 270);
INSERT INTO `tp_region` VALUES (4002, '合川区', 270);
INSERT INTO `tp_region` VALUES (4003, '永川区', 270);
INSERT INTO `tp_region` VALUES (4004, '南川区', 270);
INSERT INTO `tp_region` VALUES (4006, '芜湖县', 1412);
INSERT INTO `tp_region` VALUES (4100, '加格达奇区', 106);
INSERT INTO `tp_region` VALUES (4101, '松岭区', 106);
INSERT INTO `tp_region` VALUES (4102, '新林区', 106);
INSERT INTO `tp_region` VALUES (4103, '呼中区', 106);
INSERT INTO `tp_region` VALUES (4200, '南湖区', 125);
INSERT INTO `tp_region` VALUES (4300, '共青城市', 162);
INSERT INTO `tp_region` VALUES (4400, '红寺堡区', 360);
INSERT INTO `tp_region` VALUES (4500, '瓜州县', 344);
INSERT INTO `tp_region` VALUES (4600, '随县', 215);
INSERT INTO `tp_region` VALUES (4700, '零陵区', 228);
INSERT INTO `tp_region` VALUES (4800, '平桂管理区', 263);
INSERT INTO `tp_region` VALUES (4900, '利州区', 279);
INSERT INTO `tp_region` VALUES (5000, '华蓥市', 286);

-- ----------------------------
-- Table structure for tp_shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `tp_shopping_cart`;
CREATE TABLE `tp_shopping_cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `create_time` int(11) NULL DEFAULT NULL,
  `attr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delivery_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货地',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_shopping_cart
-- ----------------------------
INSERT INTO `tp_shopping_cart` VALUES (2, 5, 7, 1, 158.00, 1605594773, 'S', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn');
INSERT INTO `tp_shopping_cart` VALUES (3, 6, 7, 3, 158.00, 1605594780, 'M', '/uploads/goods/2020-11-09/1604914398inOug.jpg', 'cn');
INSERT INTO `tp_shopping_cart` VALUES (4, 11, 7, 7, 158.00, 1605594791, 'XL', '/uploads/goods/2020-11-09/1604914399PkJwg.jpg', 'en');

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '1 正常  0 禁用',
  `wallet` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '钱包',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sex` tinyint(2) NULL DEFAULT 1 COMMENT '1男 2 女',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES (1, 'zhangsan', '18503866892', '392864672@qq.com', '67a0b773e2d8a3223e92b60886706680', NULL, 1, 0.00, 'pckvFQ', 1601030442, '', 2);
INSERT INTO `tp_user` VALUES (2, '333', '333', '333', '8f4962016f70249b22bc58f53fc9cf45', NULL, 1, 0.00, 'wYnEzJ', 1602491132, '333', 0);
INSERT INTO `tp_user` VALUES (3, 'skh', '17797759952', '1048776050@qq.com', '2f570a7d6bf4366e92adc74da0252867', NULL, 1, 0.00, 'fxsMWe', 1602491572, '', 1);
INSERT INTO `tp_user` VALUES (4, 'aaa', '17797759952', '1048776050@qq.com', 'f5a4c8357404d334b1c13a07967a52fd', NULL, 1, 0.00, 'aWiJoB', 1602491733, 'sda', 0);
INSERT INTO `tp_user` VALUES (5, 'asd', 'asd', 'asd', '3652b5b66b25bc077f0e333c8ece7e37', NULL, 1, 0.00, 'rUHags', 1602754479, 'asd', 0);
INSERT INTO `tp_user` VALUES (6, '17797759959', '17797759951', '1048776050@qq.com', 'a68f5e4f0569a9140c6ee89c4b18d8e6', NULL, 1, 0.00, 'WlBkHL', 1603445776, '', 1);
INSERT INTO `tp_user` VALUES (7, 'skh2', '17797759953', '1048776050@qq.com', '976ba99864e4cb482574a704c300019a', NULL, 1, 0.00, 'lTaFoS', 1605590159, '', 1);

SET FOREIGN_KEY_CHECKS = 1;
