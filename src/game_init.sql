/*
 Navicat Premium Data Transfer

 Source Server         : 83
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 8.129.50.83:3306
 Source Schema         : game

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 16/04/2022 19:53:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动名称',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动编号',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  `time_limit` int(0) NULL DEFAULT NULL COMMENT '是否有时限（1有0没有）',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '每日签到', 'DAILY_ATTENDANCE', 1, 0, NULL, NULL);
INSERT INTO `activity` VALUES (2, '每日食堂', 'CANTEEN', 1, 0, NULL, NULL);
INSERT INTO `activity` VALUES (3, '夺宝奇兵', 'LOTTERY', 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL,
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'xiedapao', 'E10ADC3949BA59ABBE56E057F20F883E', '2021-11-10 14:06:05');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '版本号',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `release_time` date NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型：VERSION_UPGRADE版本更新公告',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES (1, '2.5.0', '2021-10-24 2.5.0版本更新公告', '2021-10-24', '2021-10-24 14:12:04', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (2, '2.6.0', '2021-10-31 2.6.0版本更新公告', '2021-10-31', '2021-10-31 17:38:52', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (3, '2.7.0', '2021-12-04 2.7.0版本更新公告', '2021-12-04', '2021-12-04 13:26:23', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (4, '2.8.0', '2022-01-30 2.8.0版本更新公告', '2022-01-30', '2022-01-30 14:18:30', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (5, '2.8.1', '2022-02-13 2.8.1版本更新公告', '2022-02-13', '2022-02-13 14:39:50', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (6, '2.8.5', '2022-03-20 2.8.5版本更新公告', '2022-03-20', '2022-03-20 21:48:31', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (7, '2.8.6', '2022-03-27 2.8.6版本更新公告', '2022-03-27', '2022-03-27 14:34:11', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (8, '2.9.0', '2022-04-05 2.9.0版本更新公告', '2022-04-05', '2022-04-05 22:10:57', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (9, '2.9.1', '2022-04-10 2.9.1版本更新公告', '2022-04-10', '2022-04-10 17:34:33', 'VERSION_UPGRADE', NULL);
INSERT INTO `announcement` VALUES (10, '2.9.2', '2022-04-16 2.9.2版本更新公告', '2022-04-16', '2022-04-16 11:59:57', 'VERSION_UPGRADE', NULL);

-- ----------------------------
-- Table structure for announcement_detail
-- ----------------------------
DROP TABLE IF EXISTS `announcement_detail`;
CREATE TABLE `announcement_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `announcement_id` int(0) NOT NULL,
  `content` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型（功能，bug，英雄调整）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement_detail
-- ----------------------------
INSERT INTO `announcement_detail` VALUES (1, 1, '游戏框架代码重构', '1');
INSERT INTO `announcement_detail` VALUES (2, 1, '新增世界boss系统', '1');
INSERT INTO `announcement_detail` VALUES (3, 1, '新英雄时光贤者', '1');
INSERT INTO `announcement_detail` VALUES (4, 1, '英雄招募代码优化', '1');
INSERT INTO `announcement_detail` VALUES (5, 1, 'ui界面调整', '1');
INSERT INTO `announcement_detail` VALUES (6, 1, '解决亿点bug', '2');
INSERT INTO `announcement_detail` VALUES (7, 2, '部分英雄技能图标补充', '1');
INSERT INTO `announcement_detail` VALUES (8, 2, '抽卡时钻石不足返回不了bug解决', '2');
INSERT INTO `announcement_detail` VALUES (9, 2, '英雄成长属性调整', '1');
INSERT INTO `announcement_detail` VALUES (10, 2, '好友界面优化', '1');
INSERT INTO `announcement_detail` VALUES (11, 2, '好友界面表情弹窗显示问题', '2');
INSERT INTO `announcement_detail` VALUES (12, 2, '注册弹窗重做', '1');
INSERT INTO `announcement_detail` VALUES (13, 4, '阵型功能', '1');
INSERT INTO `announcement_detail` VALUES (14, 4, '拍卖行功能', '1');
INSERT INTO `announcement_detail` VALUES (15, 4, '英雄战斗代码优化和英雄数值平衡', '1');
INSERT INTO `announcement_detail` VALUES (16, 4, '好友消息提示弹窗优化', '1');
INSERT INTO `announcement_detail` VALUES (17, 4, '好友请求弹窗优化', '1');
INSERT INTO `announcement_detail` VALUES (18, 4, '增加账号互踢功能', '1');
INSERT INTO `announcement_detail` VALUES (19, 4, '增加好友上线提醒', '1');
INSERT INTO `announcement_detail` VALUES (20, 4, '抽卡界面优化', '1');
INSERT INTO `announcement_detail` VALUES (21, 4, '排位界面阵容面板优化', '1');
INSERT INTO `announcement_detail` VALUES (22, 4, '英雄升级弹窗优化，增加长按批量使用经验书', '1');
INSERT INTO `announcement_detail` VALUES (23, 4, '碎片商城搬移', '1');
INSERT INTO `announcement_detail` VALUES (24, 4, '好友删除功能', '1');
INSERT INTO `announcement_detail` VALUES (25, 5, '新增副本功能', '1');
INSERT INTO `announcement_detail` VALUES (26, 5, '部分页面新增默认背景', '1');
INSERT INTO `announcement_detail` VALUES (27, 6, '新英雄兽灵行者', '1');
INSERT INTO `announcement_detail` VALUES (28, 6, '关卡界面优化和关卡星数奖励', '1');
INSERT INTO `announcement_detail` VALUES (29, 6, '帮派基础功能', '1');
INSERT INTO `announcement_detail` VALUES (30, 6, '商店页面优化', '1');
INSERT INTO `announcement_detail` VALUES (31, 6, '每日食堂活动', '1');
INSERT INTO `announcement_detail` VALUES (32, 6, '英雄一键升级', '1');
INSERT INTO `announcement_detail` VALUES (33, 6, '夺宝奇兵', '1');
INSERT INTO `announcement_detail` VALUES (34, 6, '部分弹窗界面优化', '1');
INSERT INTO `announcement_detail` VALUES (35, 6, '英雄数据从服务端获取', '1');
INSERT INTO `announcement_detail` VALUES (36, 6, '解决符文宝箱开启失败', '2');
INSERT INTO `announcement_detail` VALUES (37, 7, '用户昵称修改功能', '1');
INSERT INTO `announcement_detail` VALUES (38, 7, '英雄选择弹窗调整', '1');
INSERT INTO `announcement_detail` VALUES (39, 7, '物品页面和物品使用优化', '1');
INSERT INTO `announcement_detail` VALUES (40, 7, '英雄属性计算代码优化', '1');
INSERT INTO `announcement_detail` VALUES (41, 7, '符文弹窗新增搜索功能，显示加成属性，符文批量合成', '1');
INSERT INTO `announcement_detail` VALUES (42, 8, '帮助页面', '1');
INSERT INTO `announcement_detail` VALUES (43, 8, '斗神塔改造', '1');
INSERT INTO `announcement_detail` VALUES (44, 8, '头像选择框ui优化', '1');
INSERT INTO `announcement_detail` VALUES (45, 9, '新增道具 双倍经验卡', '1');
INSERT INTO `announcement_detail` VALUES (46, 9, '游戏优化', '1');
INSERT INTO `announcement_detail` VALUES (47, 10, '符文合成优化（使用中的符文不能合成）', '1');
INSERT INTO `announcement_detail` VALUES (48, 10, '好友新增显示上次登录时间', '1');
INSERT INTO `announcement_detail` VALUES (49, 10, '排位战斗记录显示优化', '1');
INSERT INTO `announcement_detail` VALUES (50, 10, '阵容位置选择弹窗优化', '1');
INSERT INTO `announcement_detail` VALUES (51, 10, '排位奖励弹窗', '1');
INSERT INTO `announcement_detail` VALUES (52, 10, '新手礼包调整', '1');
INSERT INTO `announcement_detail` VALUES (53, 10, '双倍经验显示null', '2');
INSERT INTO `announcement_detail` VALUES (54, 10, '武魂战斗技能显示错误', '2');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物品名称',
  `type` int(0) NOT NULL COMMENT '类型（1英雄碎片2物品4宝箱）',
  `hero_id` int(0) NULL DEFAULT NULL COMMENT '英雄碎片的英雄id',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '剑圣碎片', 1, 1, NULL);
INSERT INTO `article` VALUES (2, '狱血魔神碎片', 1, 2, NULL);
INSERT INTO `article` VALUES (3, '狮王碎片', 1, 3, NULL);
INSERT INTO `article` VALUES (4, '炽焰之魂碎片', 1, 4, NULL);
INSERT INTO `article` VALUES (5, '冰魄之心碎片', 1, 5, NULL);
INSERT INTO `article` VALUES (6, '医仙碎片', 1, 6, NULL);
INSERT INTO `article` VALUES (7, '冰龙碎片', 1, 7, NULL);
INSERT INTO `article` VALUES (8, '暗裔剑魔碎片', 1, 8, NULL);
INSERT INTO `article` VALUES (9, '暗夜使者碎片', 1, 9, NULL);
INSERT INTO `article` VALUES (10, '武魂碎片', 1, 10, NULL);
INSERT INTO `article` VALUES (11, '战神碎片', 1, 11, NULL);
INSERT INTO `article` VALUES (12, '圣骑士碎片', 1, 12, NULL);
INSERT INTO `article` VALUES (13, '弹药专家碎片', 1, 13, NULL);
INSERT INTO `article` VALUES (14, '狂战士碎片', 1, 14, NULL);
INSERT INTO `article` VALUES (15, '死神碎片', 1, 15, NULL);
INSERT INTO `article` VALUES (16, '赌侠碎片', 1, 16, NULL);
INSERT INTO `article` VALUES (17, '巨神兵碎片', 1, 17, NULL);
INSERT INTO `article` VALUES (18, '逐日之弓碎片', 1, 18, NULL);
INSERT INTO `article` VALUES (19, '幻化师碎片', 1, 19, NULL);
INSERT INTO `article` VALUES (20, '嗜血猎手碎片', 1, 20, NULL);
INSERT INTO `article` VALUES (21, '雷神碎片', 1, 21, NULL);
INSERT INTO `article` VALUES (22, '鹿灵碎片', 1, 22, NULL);
INSERT INTO `article` VALUES (23, '炼金术师碎片', 1, 23, NULL);
INSERT INTO `article` VALUES (24, '无极剑尊碎片', 1, 24, NULL);
INSERT INTO `article` VALUES (25, '火凤碎片', 1, 25, NULL);
INSERT INTO `article` VALUES (26, '漫游枪神碎片', 1, 26, NULL);
INSERT INTO `article` VALUES (27, '暗黑龙骑士碎片', 1, 27, NULL);
INSERT INTO `article` VALUES (28, '神圣天使碎片', 1, 28, NULL);
INSERT INTO `article` VALUES (29, '堕落天使碎片', 1, 29, NULL);
INSERT INTO `article` VALUES (30, '九尾妖狐碎片', 1, 30, NULL);
INSERT INTO `article` VALUES (31, '狙神碎片', 1, 31, NULL);
INSERT INTO `article` VALUES (32, '禁魔猎人碎片', 1, 32, NULL);
INSERT INTO `article` VALUES (33, '暗影之主碎片', 1, 33, NULL);
INSERT INTO `article` VALUES (34, '复仇亡魂碎片', 1, 34, NULL);
INSERT INTO `article` VALUES (35, '吸血鬼伯爵碎片', 1, 35, NULL);
INSERT INTO `article` VALUES (36, '荆棘甲士碎片', 1, 36, NULL);
INSERT INTO `article` VALUES (37, '星灵士碎片', 1, 37, NULL);
INSERT INTO `article` VALUES (38, '鬼泣碎片', 1, 38, NULL);
INSERT INTO `article` VALUES (39, '暗裔枪骑碎片', 1, 39, NULL);
INSERT INTO `article` VALUES (40, '封魔之刃碎片', 1, 40, NULL);
INSERT INTO `article` VALUES (41, '远古树精碎片', 1, 41, NULL);
INSERT INTO `article` VALUES (1001, '体力药（小）', 2, NULL, '回复10点体力');
INSERT INTO `article` VALUES (1002, '体力药（中）', 2, NULL, '回复20点体力');
INSERT INTO `article` VALUES (1003, '体力药（大）', 2, NULL, '回复50点体力');
INSERT INTO `article` VALUES (1004, '经验书（小）', 2, NULL, '增加英雄100点经验');
INSERT INTO `article` VALUES (1005, '经验书（中）', 2, NULL, '增加英雄200点经验');
INSERT INTO `article` VALUES (1006, '经验书（大）', 2, NULL, '增加英雄500点经验');
INSERT INTO `article` VALUES (1007, '斗神符', 2, NULL, '增加一次斗神塔挑战次数');
INSERT INTO `article` VALUES (999, '万能碎片', 2, NULL, '可兑换任意一只英雄的碎片');
INSERT INTO `article` VALUES (2001, '一级符文宝箱', 4, NULL, '打开之后随机获得一个一级符文');
INSERT INTO `article` VALUES (2002, '二级符文宝箱', 4, NULL, '打开之后随机获得一个二级符文');
INSERT INTO `article` VALUES (2003, '三级符文宝箱', 4, NULL, '打开之后随机获得一个三级符文');
INSERT INTO `article` VALUES (1000, '招募令', 2, NULL, '可招募任意一只英雄');
INSERT INTO `article` VALUES (500, '邪神碎片', 1, 500, NULL);
INSERT INTO `article` VALUES (1008, '阵法之书', 2, NULL, '增加阵法100点经验');
INSERT INTO `article` VALUES (42, '时光贤者碎片', 1, 42, NULL);
INSERT INTO `article` VALUES (43, '兽灵行者碎片', 1, 43, NULL);
INSERT INTO `article` VALUES (1009, '扫荡券', 2, NULL, '可扫荡已3星通关关卡');
INSERT INTO `article` VALUES (1010, '抽奖券', 2, NULL, '可用于夺宝奇兵活动抽奖');
INSERT INTO `article` VALUES (3001, '1日双倍经验卡', 2, NULL, '使用后一日双倍经验');
INSERT INTO `article` VALUES (3002, '3日双倍经验卡', 2, NULL, '使用后三日双倍经验');
INSERT INTO `article` VALUES (3003, '7日双倍经验书', 2, NULL, '使用后七日双倍经验');

-- ----------------------------
-- Table structure for auction_article
-- ----------------------------
DROP TABLE IF EXISTS `auction_article`;
CREATE TABLE `auction_article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ref_id` int(0) NOT NULL COMMENT '物品id',
  `type` int(0) NULL DEFAULT NULL COMMENT '物品类型(1物品2符文)',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '上架用户id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态（1上架-1下架2已购买）',
  `purchase_user_id` int(0) NULL DEFAULT NULL COMMENT '购买者用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `purchase_time` datetime(0) NULL DEFAULT NULL COMMENT '购买时间',
  `currency` int(0) NULL DEFAULT NULL COMMENT '币种（1金币2钻石）',
  `cost` int(0) NULL DEFAULT NULL COMMENT '价格',
  `rune_level` int(0) NULL DEFAULT NULL COMMENT '符文等级',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_idx`(`user_id`) USING BTREE COMMENT 'user_id',
  INDEX `ref_idx`(`ref_id`) USING BTREE COMMENT 'ref_id'
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_article
-- ----------------------------


-- ----------------------------
-- Table structure for battle_array_detail
-- ----------------------------
DROP TABLE IF EXISTS `battle_array_detail`;
CREATE TABLE `battle_array_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型：TOWER斗神塔，CHEKCPOINT关卡',
  `ref_id` int(0) NULL DEFAULT NULL COMMENT '斗神塔层数',
  `hero_id` int(0) NULL DEFAULT NULL COMMENT '英雄id',
  `hero_star` int(0) NULL DEFAULT NULL COMMENT '英雄星级',
  `hero_lv` int(0) NULL DEFAULT NULL COMMENT '英雄等级',
  `battle_array_num` int(0) NULL DEFAULT NULL COMMENT '阵容位置',
  `attribute_addition` int(0) NULL DEFAULT NULL COMMENT '属性加成',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ref_idx`(`ref_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_array_detail
-- ----------------------------
INSERT INTO `battle_array_detail` VALUES (1, 'CHECKPOINT', 1, 1, 1, 1, 2, -50);
INSERT INTO `battle_array_detail` VALUES (2, 'CHECKPOINT', 2, 2, 1, 1, 2, 0);
INSERT INTO `battle_array_detail` VALUES (3, 'CHECKPOINT', 3, 1, 1, 2, 2, 0);
INSERT INTO `battle_array_detail` VALUES (4, 'CHECKPOINT', 4, 2, 1, 2, 2, 0);
INSERT INTO `battle_array_detail` VALUES (5, 'CHECKPOINT', 5, 1, 1, 2, 2, 0);
INSERT INTO `battle_array_detail` VALUES (6, 'CHECKPOINT', 5, 2, 1, 2, 1, 0);
INSERT INTO `battle_array_detail` VALUES (7, 'CHECKPOINT', 6, 3, 1, 3, 1, 0);
INSERT INTO `battle_array_detail` VALUES (8, 'CHECKPOINT', 6, 2, 1, 3, 2, 0);
INSERT INTO `battle_array_detail` VALUES (9, 'CHECKPOINT', 7, 3, 1, 3, 1, 0);
INSERT INTO `battle_array_detail` VALUES (10, 'CHECKPOINT', 7, 1, 1, 3, 2, 0);
INSERT INTO `battle_array_detail` VALUES (11, 'CHECKPOINT', 7, 2, 1, 3, 3, 0);
INSERT INTO `battle_array_detail` VALUES (12, 'CHECKPOINT', 8, 3, 1, 4, 1, 0);
INSERT INTO `battle_array_detail` VALUES (13, 'CHECKPOINT', 8, 1, 1, 4, 2, 0);
INSERT INTO `battle_array_detail` VALUES (14, 'CHECKPOINT', 8, 2, 1, 4, 3, 0);
INSERT INTO `battle_array_detail` VALUES (15, 'CHECKPOINT', 9, 24, 1, 4, 1, 0);
INSERT INTO `battle_array_detail` VALUES (16, 'CHECKPOINT', 9, 1, 1, 4, 2, 0);
INSERT INTO `battle_array_detail` VALUES (17, 'CHECKPOINT', 9, 2, 1, 4, 3, 0);
INSERT INTO `battle_array_detail` VALUES (18, 'CHECKPOINT', 10, 2, 1, 5, 0, 0);
INSERT INTO `battle_array_detail` VALUES (19, 'CHECKPOINT', 10, 3, 1, 5, 1, 0);
INSERT INTO `battle_array_detail` VALUES (20, 'CHECKPOINT', 10, 1, 1, 5, 2, 0);
INSERT INTO `battle_array_detail` VALUES (21, 'CHECKPOINT', 10, 24, 1, 5, 3, 0);
INSERT INTO `battle_array_detail` VALUES (22, 'CHECKPOINT', 11, 17, 1, 5, 1, 0);
INSERT INTO `battle_array_detail` VALUES (23, 'CHECKPOINT', 11, 5, 1, 5, 2, 0);
INSERT INTO `battle_array_detail` VALUES (24, 'CHECKPOINT', 11, 7, 1, 5, 3, 0);
INSERT INTO `battle_array_detail` VALUES (25, 'CHECKPOINT', 12, 13, 1, 5, 0, 0);
INSERT INTO `battle_array_detail` VALUES (26, 'CHECKPOINT', 12, 17, 1, 5, 1, 0);
INSERT INTO `battle_array_detail` VALUES (27, 'CHECKPOINT', 12, 4, 1, 5, 2, 0);
INSERT INTO `battle_array_detail` VALUES (28, 'CHECKPOINT', 12, 7, 1, 5, 3, 0);
INSERT INTO `battle_array_detail` VALUES (29, 'CHECKPOINT', 13, 32, 1, 6, 0, 0);
INSERT INTO `battle_array_detail` VALUES (30, 'CHECKPOINT', 13, 15, 1, 6, 1, 0);
INSERT INTO `battle_array_detail` VALUES (31, 'CHECKPOINT', 13, 5, 1, 6, 2, 0);
INSERT INTO `battle_array_detail` VALUES (32, 'CHECKPOINT', 13, 7, 1, 6, 3, 0);
INSERT INTO `battle_array_detail` VALUES (33, 'CHECKPOINT', 14, 30, 1, 6, 0, 0);
INSERT INTO `battle_array_detail` VALUES (34, 'CHECKPOINT', 14, 41, 1, 6, 1, 0);
INSERT INTO `battle_array_detail` VALUES (35, 'CHECKPOINT', 14, 4, 1, 6, 2, 0);
INSER INTO `battle_array_detail` VALUES (36, 'CHECKPOINT', 14, 7, 1, 6, 3, 0);
INSERT INTO `battle_array_detail` VALUES (37, 'CHECKPOINT', 15, 4, 1, 7, 0, 0);
INSERT INTO `battle_array_detail` VALUES (38, 'CHECKPOINT', 15, 7, 1, 7, 1, 0);
INSERT INTO `battle_array_detail` VALUES (39, 'CHECKPOINT', 15, 5, 1, 7, 2, 0);
INSERT INTO `battle_array_detail` VALUES (40, 'CHECKPOINT', 15, 11, 1, 7, 3, 0);
INSERT INTO `battle_array_detail` VALUES (41, 'CHECKPOINT', 15, 25, 1, 7, 4, 0);
INSERT INTO `battle_array_detail` VALUES (42, 'CHECKPOINT', 16, 9, 1, 7, 0, 0);
INSERT INTO `battle_array_detail` VALUES (43, 'CHECKPOINT', 16, 7, 1, 7, 1, 0);
INSERT INTO `battle_array_detail` VALUES (44, 'CHECKPOINT', 16, 4, 1, 7, 2, 0);
INSERT INTO `battle_array_detail` VALUES (45, 'CHECKPOINT', 16, 27, 1, 7, 3, 0);
INSERT INTO `battle_array_detail` VALUES (46, 'CHECKPOINT', 16, 29, 1, 7, 4, 0);
INSERT INTO `battle_array_detail` VALUES (47, 'CHECKPOINT', 17, 6, 1, 8, 0, 0);
INSERT INTO `battle_array_detail` VALUES (48, 'CHECKPOINT', 17, 17, 1, 8, 1, 0);
INSERT INTO `battle_array_detail` VALUES (49, 'CHECKPOINT', 17, 7, 1, 8, 2, 0);
INSERT INTO `battle_array_detail` VALUES (50, 'CHECKPOINT', 17, 12, 1, 8, 3, 0);
INSERT INTO `battle_array_detail` VALUES (51, 'CHECKPOINT', 17, 10, 1, 8, 4, 0);
INSERT INTO `battle_array_detail` VALUES (52, 'CHECKPOINT', 18, 13, 1, 8, 0, 0);
INSERT INTO `battle_array_detail` VALUES (53, 'CHECKPOINT', 18, 7, 1, 8, 1, 0);
INSERT INTO `battle_array_detail` VALUES (54, 'CHECKPOINT', 18, 25, 1, 8, 2, 0);
INSERT INTO `battle_array_detail` VALUES (55, 'CHECKPOINT', 18, 17, 1, 8, 3, 0);
INSERT INTO `battle_array_detail` VALUES (56, 'CHECKPOINT', 18, 21, 1, 8, 4, 0);
INSERT INTO `battle_array_detail` VALUES (64, 'CHECKPOINT', 19, 9, 1, 9, 0, 0);
INSERT INTO `battle_array_detail` VALUES (65, 'CHECKPOINT', 19, 7, 1, 9, 1, 0);
INSERT INTO `battle_array_detail` VALUES (66, 'CHECKPOINT', 19, 5, 1, 9, 2, 0);
INSERT INTO `battle_array_detail` VALUES (67, 'CHECKPOINT', 19, 12, 1, 9, 3, 0);
INSERT INTO `battle_array_detail` VALUES (68, 'CHECKPOINT', 19, 6, 1, 9, 4, 0);
INSERT INTO `battle_array_detail` VALUES (69, 'CHECKPOINT', 20, 6, 1, 9, 0, 0);
INSERT INTO `battle_array_detail` VALUES (70, 'CHECKPOINT', 20, 7, 1, 9, 1, 0);
INSERT INTO `battle_array_detail` VALUES (71, 'CHECKPOINT', 20, 4, 1, 9, 2, 0);
INSERT INTO `battle_array_detail` VALUES (72, 'CHECKPOINT', 20, 41, 1, 9, 3, 0);
INSERT INTO `battle_array_detail` VALUES (73, 'CHECKPOINT', 20, 5, 1, 9, 4, 0);
INSERT INTO `battle_array_detail` VALUES (74, 'TOWER', 1, 11, 1, 1, 2, 40);
INSERT INTO `battle_array_detail` VALUES (75, 'TOWER', 2, 35, 1, 2, 1, 40);
INSERT INTO `battle_array_detail` VALUES (76, 'TOWER', 2, 37, 1, 2, 2, 0);
INSERT INTO `battle_array_detail` VALUES (77, 'TOWER', 3, 34, 1, 3, 1, 0);
INSERT INTO `battle_array_detail` VALUES (78, 'TOWER', 3, 38, 1, 3, 2, 40);
INSERT INTO `battle_array_detail` VALUES (79, 'TOWER', 3, 35, 1, 3, 3, 0);
INSERT INTO `battle_array_detail` VALUES (80, 'TOWER', 4, 11, 1, 4, 0, 0);
INSERT INTO `battle_array_detail` VALUES (81, 'TOWER', 4, 27, 1, 4, 1, 0);
INSERT INTO `battle_array_detail` VALUES (82, 'TOWER', 4, 18, 1, 4, 2, 40);
INSERT INTO `battle_array_detail` VALUES (83, 'TOWER', 4, 43, 1, 4, 3, 0);
INSERT INTO `battle_array_detail` VALUES (84, 'TOWER', 5, 9, 1, 5, 0, 0);
INSERT INTO `battle_array_detail` VALUES (85, 'TOWER', 5, 7, 1, 5, 1, 0);
INSERT INTO `battle_array_detail` VALUES (86, 'TOWER', 5, 39, 1, 5, 2, 40);
INSERT INTO `battle_array_detail` VALUES (87, 'TOWER', 5, 36, 1, 5, 3, 0);
INSERT INTO `battle_array_detail` VALUES (88, 'TOWER', 5, 1, 1, 5, 4, 0);
INSERT INTO `battle_array_detail` VALUES (89, 'TOWER', 6, 6, 1, 6, 0, 0);
INSERT INTO `battle_array_detail` VALUES (90, 'TOWER', 6, 35, 1, 6, 1, 0);
INSERT INTO `battle_array_detail` VALUES (91, 'TOWER', 6, 16, 1, 6, 2, 40);
INSERT INTO `battle_array_detail` VALUES (92, 'TOWER', 6, 7, 1, 6, 3, 0);
INSERT INTO `battle_array_detail` VALUES (93, 'TOWER', 6, 13, 1, 6, 4, 0);
INSERT INTO `battle_array_detail` VALUES (94, 'TOWER', 7, 38, 1, 7, 0, 0);
INSERT INTO `battle_array_detail` VALUES (95, 'TOWER', 7, 12, 1, 7, 1, 0);
INSERT INTO `battle_array_detail` VALUES (96, 'TOWER', 7, 21, 1, 7, 2, 40);
INSERT INTO `battle_array_detail` VALUES (97, 'TOWER', 7, 41, 1, 7, 3, 0);
INSERT INTO `battle_array_detail` VALUES (98, 'TOWER', 7, 16, 1, 7, 4, 0);
INSERT INTO `battle_array_detail` VALUES (99, 'TOWER', 8, 11, 1, 8, 0, 0);
INSERT INTO `battle_array_detail` VALUES (100, 'TOWER', 8, 12, 1, 8, 1, 0);
INSERT INTO `battle_array_detail` VALUES (101, 'TOWER', 8, 28, 1, 8, 2, 40);
INSERT INTO `battle_array_detail` VALUES (102, 'TOWER', 8, 7, 1, 8, 3, 0);
INSERT INTO `battle_array_detail` VALUES (103, 'TOWER', 8, 18, 1, 8, 4, 0);
INSERT INTO `battle_array_detail` VALUES (104, 'TOWER', 9, 37, 1, 9, 0, 0);
INSERT INTO `battle_array_detail` VALUES (105, 'TOWER', 9, 3, 1, 9, 1, 0);
INSERT INTO `battle_array_detail` VALUES (106, 'TOWER', 9, 35, 1, 9, 2, 40);
INSERT INTO `battle_array_detail` VALUES (107, 'TOWER', 9, 23, 1, 9, 3, 0);
INSERT INTO `battle_array_detail` VALUES (108, 'TOWER', 9, 9, 1, 9, 4, 0);
INSERT INTO `battle_array_detail` VALUES (109, 'TOWER', 10, 25, 1, 10, 0, 15);
INSERT INTO `battle_array_detail` VALUES (110, 'TOWER', 10, 19, 1, 10, 1, 15);
INSERT INTO `battle_array_detail` VALUES (111, 'TOWER', 10, 40, 1, 10, 2, 40);
INSERT INTO `battle_array_detail` VALUES (112, 'TOWER', 10, 23, 1, 10, 3, 15);
INSERT INTO `battle_array_detail` VALUES (113, 'TOWER', 10, 13, 1, 10, 4, 15);
INSERT INTO `battle_array_detail` VALUES (114, 'TOWER', 11, 9, 1, 11, 0, 15);
INSERT INTO `battle_array_detail` VALUES (115, 'TOWER', 11, 35, 1, 11, 1, 15);
INSERT INTO `battle_array_detail` VALUES (116, 'TOWER', 11, 29, 1, 11, 2, 40);
INSERT INTO `battle_array_detail` VALUES (117, 'TOWER', 11, 11, 1, 11, 3, 15);
INSERT INTO `battle_array_detail` VALUES (118, 'TOWER', 11, 42, 1, 11, 4, 15);
INSERT INTO `battle_array_detail` VALUES (119, 'TOWER', 12, 35, 1, 12, 0, 15);
INSERT INTO `battle_array_detail` VALUES (120, 'TOWER', 12, 24, 1, 12, 1, 15);
INSERT INTO `battle_array_detail` VALUES (121, 'TOWER', 12, 1, 1, 12, 2, 40);
INSERT INTO `battle_array_detail` VALUES (122, 'TOWER', 12, 11, 1, 12, 3, 15);
INSERT INTO `battle_array_detail` VALUES (123, 'TOWER', 12, 16, 1, 12, 4, 15);
INSERT INTO `battle_array_detail` VALUES (124, 'TOWER', 13, 25, 1, 13, 0, 15);
INSERT INTO `battle_array_detail` VALUES (125, 'TOWER', 13, 35, 1, 13, 1, 15);
INSERT INTO `battle_array_detail` VALUES (126, 'TOWER', 13, 19, 1, 13, 2, 40);
INSERT INTO `battle_array_detail` VALUES (127, 'TOWER', 13, 11, 1, 13, 3, 15);
INSERT INTO `battle_array_detail` VALUES (128, 'TOWER', 13, 16, 1, 13, 4, 15);
INSERT INTO `battle_array_detail` VALUES (129, 'TOWER', 14, 37, 1, 14, 0, 15);
INSERT INTO `battle_array_detail` VALUES (130, 'TOWER', 14, 24, 1, 14, 1, 15);
INSERT INTO `battle_array_detail` VALUES (131, 'TOWER', 14, 1, 1, 14, 2, 40);
INSERT INTO `battle_array_detail` VALUES (132, 'TOWER', 14, 20, 1, 14, 3, 15);
INSERT INTO `battle_array_detail` VALUES (133, 'TOWER', 14, 18, 1, 14, 4, 15);
INSERT INTO `battle_array_detail` VALUES (134, 'TOWER', 15, 37, 1, 15, 0, 30);
INSERT INTO `battle_array_detail` VALUES (135, 'TOWER', 15, 17, 1, 15, 1, 30);
INSERT INTO `battle_array_detail` VALUES (136, 'TOWER', 15, 18, 1, 15, 2, 40);
INSERT INTO `battle_array_detail` VALUES (137, 'TOWER', 15, 34, 1, 15, 3, 30);
INSERT INTO `battle_array_detail` VALUES (138, 'TOWER', 15, 26, 1, 15, 4, 30);
INSERT INTO `battle_array_detail` VALUES (139, 'TOWER', 16, 26, 1, 16, 0, 30);
INSERT INTO `battle_array_detail` VALUES (140, 'TOWER', 16, 35, 1, 16, 1, 30);
INSERT INTO `battle_array_detail` VALUES (141, 'TOWER', 16, 11, 1, 16, 2, 40);
INSERT INTO `battle_array_detail` VALUES (142, 'TOWER', 16, 12, 1, 16, 3, 30);
INSERT INTO `battle_array_detail` VALUES (143, 'TOWER', 16, 29, 1, 16, 4, 30);
INSERT INTO `battle_array_detail` VALUES (144, 'TOWER', 17, 22, 1, 17, 0, 30);
INSERT INTO `battle_array_detail` VALUES (145, 'TOWER', 17, 36, 1, 17, 1, 30);
INSERT INTO `battle_array_detail` VALUES (146, 'TOWER', 17, 37, 1, 17, 2, 40);
INSERT INTO `battle_array_detail` VALUES (147, 'TOWER', 17, 23, 1, 17, 3, 30);
INSERT INTO `battle_array_detail` VALUES (148, 'TOWER', 17, 6, 1, 17, 4, 30);
INSERT INTO `battle_array_detail` VALUES (149, 'TOWER', 18, 10, 1, 18, 0, 30);
INSERT INTO `battle_array_detail` VALUES (150, 'TOWER', 18, 36, 1, 18, 1, 30);
INSERT INTO `battle_array_detail` VALUES (151, 'TOWER', 18, 31, 1, 18, 2, 40);
INSERT INTO `battle_array_detail` VALUES (152, 'TOWER', 18, 19, 1, 18, 3, 30);
INSERT INTO `battle_array_detail` VALUES (153, 'TOWER', 18, 5, 1, 18, 4, 30);
INSERT INTO `battle_array_detail` VALUES (154, 'TOWER', 19, 19, 1, 19, 0, 30);
INSERT INTO `battle_array_detail` VALUES (155, 'TOWER', 19, 43, 1, 19, 1, 30);
INSERT INTO `battle_array_detail` VALUES (156, 'TOWER', 19, 13, 1, 19, 2, 40);
INSERT INTO `battle_array_detail` VALUES (157, 'TOWER', 19, 12, 1, 19, 3, 30);
INSERT INTO `battle_array_detail` VALUES (158, 'TOWER', 19, 40, 1, 19, 4, 30);
INSERT INTO `battle_array_detail` VALUES (159, 'TOWER', 20, 6, 1, 20, 0, 40);
INSERT INTO `battle_array_detail` VALUES (160, 'TOWER', 20, 14, 1, 20, 1, 40);
INSERT INTO `battle_array_detail` VALUES (161, 'TOWER', 20, 21, 1, 20, 2, 50);
INSERT INTO `battle_array_detail` VALUES (162, 'TOWER', 20, 34, 1, 20, 3, 40);
INSERT INTO `battle_array_detail` VALUES (163, 'TOWER', 20, 1, 1, 20, 4, 50);

-- ----------------------------
-- Table structure for battle_record
-- ----------------------------
DROP TABLE IF EXISTS `battle_record`;
CREATE TABLE `battle_record`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userId` int(0) NOT NULL,
  `friendId` int(0) NOT NULL,
  `type` tinyint(0) NOT NULL,
  `result` tinyint(0) NOT NULL,
  `battleMsg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for boss
-- ----------------------------
DROP TABLE IF EXISTS `boss`;
CREATE TABLE `boss`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `boss_type_id` int(0) NOT NULL COMMENT 'boss类型id',
  `max_hp` int(0) NULL DEFAULT NULL COMMENT '生命值',
  `current_total_hp` int(0) NULL DEFAULT NULL COMMENT '当前生命值',
  `total_hp` int(0) NULL DEFAULT NULL COMMENT '最大总生命值',
  `total_hp_num` int(0) NULL DEFAULT NULL COMMENT '最大生命值血条数量',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '生成时间',
  `is_death` int(0) NULL DEFAULT NULL COMMENT '是否死亡',
  `defeat_user_id` int(0) NULL DEFAULT NULL COMMENT '终结者id',
  `defeat_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '终结者名称',
  `lv` int(0) NULL DEFAULT NULL COMMENT '等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 241 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boss
-- ----------------------------


-- ----------------------------
-- Table structure for boss_injury
-- ----------------------------
DROP TABLE IF EXISTS `boss_injury`;
CREATE TABLE `boss_injury`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `boss_id` int(0) NULL DEFAULT NULL COMMENT 'bossId',
  `injury` int(0) NULL DEFAULT NULL COMMENT '伤害',
  `previous_hp` int(0) NULL DEFAULT NULL COMMENT 'boss之前血量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `boss_idx`(`boss_id`) USING BTREE COMMENT 'boss_id',
  INDEX `user_idx`(`user_id`) USING BTREE COMMENT 'user_id',
  INDEX `idx`(`id`) USING BTREE COMMENT 'id'
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boss_injury
-- ----------------------------


-- ----------------------------
-- Table structure for boss_reward
-- ----------------------------
DROP TABLE IF EXISTS `boss_reward`;
CREATE TABLE `boss_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `source` int(0) NULL DEFAULT NULL COMMENT '1击败奖励2伤害排行3绝杀奖励',
  `boss_type_id` int(0) NULL DEFAULT NULL COMMENT 'boss类型id',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '关联奖励id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '伤害排行顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boss_reward
-- ----------------------------
INSERT INTO `boss_reward` VALUES (1, 1, 1, 2, NULL, 500, NULL);
INSERT INTO `boss_reward` VALUES (2, 1, 2, 2, NULL, 700, NULL);
INSERT INTO `boss_reward` VALUES (3, 1, 3, 2, NULL, 1000, NULL);
INSERT INTO `boss_reward` VALUES (4, 1, 4, 2, NULL, 1500, NULL);
INSERT INTO `boss_reward` VALUES (5, 1, 1, 4, 500, 2, NULL);
INSERT INTO `boss_reward` VALUES (6, 1, 2, 4, 500, 3, NULL);
INSERT INTO `boss_reward` VALUES (7, 1, 3, 4, 500, 4, NULL);
INSERT INTO `boss_reward` VALUES (8, 1, 4, 4, 500, 5, NULL);
INSERT INTO `boss_reward` VALUES (9, 3, 1, 4, 500, 5, NULL);
INSERT INTO `boss_reward` VALUES (10, 3, 2, 4, 500, 7, NULL);
INSERT INTO `boss_reward` VALUES (11, 3, 3, 4, 500, 10, NULL);
INSERT INTO `boss_reward` VALUES (12, 3, 4, 4, 500, 15, NULL);
INSERT INTO `boss_reward` VALUES (13, 3, 1, 2, NULL, 1000, NULL);
INSERT INTO `boss_reward` VALUES (14, 3, 2, 2, NULL, 1500, NULL);
INSERT INTO `boss_reward` VALUES (15, 3, 3, 2, NULL, 2000, NULL);
INSERT INTO `boss_reward` VALUES (16, 3, 4, 2, NULL, 3000, NULL);
INSERT INTO `boss_reward` VALUES (17, 2, 1, 2, NULL, 800, 1);
INSERT INTO `boss_reward` VALUES (18, 2, 1, 4, 500, 3, 1);
INSERT INTO `boss_reward` VALUES (19, 2, 1, 2, NULL, 600, 2);
INSERT INTO `boss_reward` VALUES (20, 2, 1, 4, 500, 2, 2);
INSERT INTO `boss_reward` VALUES (21, 2, 1, 2, NULL, 500, 3);
INSERT INTO `boss_reward` VALUES (22, 2, 1, 4, 500, 1, 3);
INSERT INTO `boss_reward` VALUES (23, 2, 1, 2, NULL, 300, 4);
INSERT INTO `boss_reward` VALUES (24, 2, 1, 2, NULL, 300, 5);
INSERT INTO `boss_reward` VALUES (25, 2, 1, 2, NULL, 300, 6);
INSERT INTO `boss_reward` VALUES (26, 2, 1, 2, NULL, 300, 7);
INSERT INTO `boss_reward` VALUES (27, 2, 1, 2, NULL, 300, 8);
INSERT INTO `boss_reward` VALUES (28, 2, 1, 2, NULL, 300, 9);
INSERT INTO `boss_reward` VALUES (29, 2, 1, 2, NULL, 300, 10);
INSERT INTO `boss_reward` VALUES (30, 2, 2, 2, NULL, 1200, 1);
INSERT INTO `boss_reward` VALUES (31, 2, 2, 4, 500, 5, 1);
INSERT INTO `boss_reward` VALUES (32, 2, 2, 2, NULL, 1000, 2);
INSERT INTO `boss_reward` VALUES (33, 2, 2, 4, 500, 4, 2);
INSERT INTO `boss_reward` VALUES (34, 2, 2, 2, NULL, 800, 3);
INSERT INTO `boss_reward` VALUES (35, 2, 2, 4, 500, 3, 3);
INSERT INTO `boss_reward` VALUES (36, 2, 2, 2, NULL, 500, 4);
INSERT INTO `boss_reward` VALUES (37, 2, 2, 2, NULL, 500, 5);
INSERT INTO `boss_reward` VALUES (38, 2, 2, 2, NULL, 500, 6);
INSERT INTO `boss_reward` VALUES (39, 2, 2, 2, NULL, 500, 7);
INSERT INTO `boss_reward` VALUES (40, 2, 2, 2, NULL, 500, 8);
INSERT INTO `boss_reward` VALUES (41, 2, 2, 2, NULL, 500, 9);
INSERT INTO `boss_reward` VALUES (42, 2, 2, 2, NULL, 500, 10);
INSERT INTO `boss_reward` VALUES (43, 2, 3, 2, NULL, 1600, 1);
INSERT INTO `boss_reward` VALUES (44, 2, 3, 4, 500, 8, 1);
INSERT INTO `boss_reward` VALUES (45, 2, 3, 2, NULL, 1400, 2);
INSERT INTO `boss_reward` VALUES (46, 2, 3, 4, 500, 6, 2);
INSERT INTO `boss_reward` VALUES (47, 2, 3, 2, NULL, 1200, 3);
INSERT INTO `boss_reward` VALUES (48, 2, 3, 4, 500, 4, 3);
INSERT INTO `boss_reward` VALUES (49, 2, 3, 2, NULL, 800, 4);
INSERT INTO `boss_reward` VALUES (50, 2, 3, 2, NULL, 800, 5);
INSERT INTO `boss_reward` VALUES (51, 2, 3, 2, NULL, 800, 6);
INSERT INTO `boss_reward` VALUES (52, 2, 3, 2, NULL, 800, 7);
INSERT INTO `boss_reward` VALUES (53, 2, 3, 2, NULL, 800, 8);
INSERT INTO `boss_reward` VALUES (54, 2, 3, 2, NULL, 800, 9);
INSERT INTO `boss_reward` VALUES (55, 2, 3, 2, NULL, 800, 10);
INSERT INTO `boss_reward` VALUES (56, 2, 4, 2, NULL, 2400, 1);
INSERT INTO `boss_reward` VALUES (57, 2, 4, 4, 500, 12, 1);
INSERT INTO `boss_reward` VALUES (58, 2, 4, 2, NULL, 2100, 2);
INSERT INTO `boss_reward` VALUES (59, 2, 4, 4, 500, 10, 2);
INSERT INTO `boss_reward` VALUES (60, 2, 4, 2, NULL, 1500, 3);
INSERT INTO `boss_reward` VALUES (61, 2, 4, 4, 500, 8, 3);
INSERT INTO `boss_reward` VALUES (62, 2, 4, 2, NULL, 1000, 4);
INSERT INTO `boss_reward` VALUES (63, 2, 4, 2, NULL, 1000, 5);
INSERT INTO `boss_reward` VALUES (64, 2, 4, 2, NULL, 1000, 6);
INSERT INTO `boss_reward` VALUES (65, 2, 4, 2, NULL, 1000, 7);
INSERT INTO `boss_reward` VALUES (66, 2, 4, 2, NULL, 1000, 8);
INSERT INTO `boss_reward` VALUES (67, 2, 4, 2, NULL, 1000, 9);
INSERT INTO `boss_reward` VALUES (68, 2, 4, 2, NULL, 1000, 10);

-- ----------------------------
-- Table structure for boss_type
-- ----------------------------
DROP TABLE IF EXISTS `boss_type`;
CREATE TABLE `boss_type`  (
  `id` int(0) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'boss名称',
  `level` int(0) NULL DEFAULT NULL COMMENT 'boss难度级别（1简单，2中等，3困难，4地狱）',
  `type` int(0) NULL DEFAULT NULL COMMENT 'boss类型（1邪神）',
  `hp` int(0) NULL DEFAULT NULL COMMENT 'boss血量',
  `max_hp_num` int(0) NULL DEFAULT NULL COMMENT 'boss血条总数',
  `lv` int(0) NULL DEFAULT NULL COMMENT 'boss等级',
  `attribute_gain` int(0) NULL DEFAULT NULL COMMENT 'boss属性增益（百分比）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boss_type
-- ----------------------------
INSERT INTO `boss_type` VALUES (1, '邪神', 1, 1, 2000, 3, 5, 50);
INSERT INTO `boss_type` VALUES (2, '邪神', 2, 1, 2500, 5, 10, 100);
INSERT INTO `boss_type` VALUES (3, '邪神', 3, 1, 3000, 7, 15, 200);
INSERT INTO `boss_type` VALUES (4, '邪神', 4, 1, 5000, 10, 20, 400);

-- ----------------------------
-- Table structure for canteen_log
-- ----------------------------
DROP TABLE IF EXISTS `canteen_log`;
CREATE TABLE `canteen_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型：NOON中午 NIGHT晚上',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canteen_log
-- ----------------------------


-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `chapter` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '章节名称',
  `chapter_index` int(0) NULL DEFAULT NULL COMMENT '章节顺序',
  `chapter_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '章节名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES (1, '第一章', 1, '剑之初试');
INSERT INTO `chapter` VALUES (2, '第二章', 2, '冰与火');

-- ----------------------------
-- Table structure for chapter_reward
-- ----------------------------
DROP TABLE IF EXISTS `chapter_reward`;
CREATE TABLE `chapter_reward`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `chapter_id` int(0) NOT NULL COMMENT '关卡id',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖励id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `reward_index` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapter_reward
-- ----------------------------
INSERT INTO `chapter_reward` VALUES (1, 1, 2, NULL, 500, 1);
INSERT INTO `chapter_reward` VALUES (2, 1, 2, NULL, 1000, 2);
INSERT INTO `chapter_reward` VALUES (3, 1, 2, NULL, 2000, 3);
INSERT INTO `chapter_reward` VALUES (4, 2, 2, NULL, 1000, 1);
INSERT INTO `chapter_reward` VALUES (5, 2, 2, NULL, 2000, 2);
INSERT INTO `chapter_reward` VALUES (6, 2, 2, NULL, 5000, 3);
INSERT INTO `chapter_reward` VALUES (7, 1, 4, 1009, 5, 2);
INSERT INTO `chapter_reward` VALUES (8, 1, 4, 1009, 10, 3);
INSERT INTO `chapter_reward` VALUES (9, 2, 4, 1009, 15, 2);
INSERT INTO `chapter_reward` VALUES (10, 2, 4, 1009, 20, 3);

-- ----------------------------
-- Table structure for chapter_reward_log
-- ----------------------------
DROP TABLE IF EXISTS `chapter_reward_log`;
CREATE TABLE `chapter_reward_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '领取时间',
  `chapter_id` int(0) NULL DEFAULT NULL COMMENT '关卡id',
  `reward_index` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapter_reward_log
-- ----------------------------


-- ----------------------------
-- Table structure for chat_message
-- ----------------------------
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `friend_id` int(0) NOT NULL COMMENT '好友id',
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息内容',
  `message_type` int(0) NOT NULL COMMENT '消息类型（1普通消息2表情）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `timestamp` bigint(0) NULL DEFAULT NULL COMMENT '创建时间戳',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '状态（1已读）',
  `faction_id` int(0) NULL DEFAULT NULL COMMENT '帮派id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_idx`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 679 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_message
-- ----------------------------
INSERT INTO `chat_message` VALUES (2, 2, 10, '你好', 1, '2020-10-29 21:49:03', 1603979342550, 1, NULL);
INSERT INTO `chat_message` VALUES (3, 2, 10, '你好', 1, '2020-10-29 23:06:03', 1603983963118, 1, NULL);
INSERT INTO `chat_message` VALUES (4, 2, 10, '你好', 1, '2020-10-29 23:59:16', 1603987156272, 1, NULL);
INSERT INTO `chat_message` VALUES (5, 2, 10, '你好', 1, '2020-10-29 23:59:45', 1603987185461, 1, NULL);
INSERT INTO `chat_message` VALUES (6, 2, 10, '哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或或或或或哈哈哈哈哈哈哈', 1, '2020-10-30 00:01:25', 1603987285397, 1, NULL);
INSERT INTO `chat_message` VALUES (7, 2, 10, '你好啊', 1, '2020-10-30 00:01:33', 1603987293114, 1, NULL);
INSERT INTO `chat_message` VALUES (8, 2, 10, '我是你爹', 1, '2020-10-30 00:02:38', 1603987357605, 1, NULL);
INSERT INTO `chat_message` VALUES (9, 2, 10, '草', 1, '2020-10-30 00:02:41', 1603987361285, 1, NULL);
INSERT INTO `chat_message` VALUES (10, 2, 10, '你个栽种', 1, '2020-10-30 00:02:47', 1603987366823, 1, NULL);
INSERT INTO `chat_message` VALUES (11, 2, 10, '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或或或或或', 1, '2020-10-30 00:10:08', 1603987808150, 1, NULL);
INSERT INTO `chat_message` VALUES (12, 2, 10, '我是你爹你是谁啊我就是你爹 你轻点的旧爱打的到擦', 1, '2020-10-30 00:10:30', 1603987830330, 1, NULL);
INSERT INTO `chat_message` VALUES (13, 2, 10, '123456789123456789123456789123456789123456789123456789', 1, '2020-10-30 00:10:47', 1603987846552, 1, NULL);
INSERT INTO `chat_message` VALUES (14, 2, 10, '打撒所大所多', 1, '2020-10-30 00:11:50', 1603987909937, 1, NULL);
INSERT INTO `chat_message` VALUES (15, 2, 10, '额', 1, '2020-10-30 00:13:02', 1603987982233, 1, NULL);
INSERT INTO `chat_message` VALUES (16, 2, 10, '我佛了', 1, '2020-10-30 00:13:08', 1603987987557, 1, NULL);
INSERT INTO `chat_message` VALUES (17, 2, 10, '额', 1, '2020-10-30 00:19:30', 1603988370440, 1, NULL);
INSERT INTO `chat_message` VALUES (18, 2, 10, '我无语了', 1, '2020-10-30 00:25:50', 1603988749862, 1, NULL);
INSERT INTO `chat_message` VALUES (19, 2, 10, '你呢', 1, '2020-10-30 00:26:00', 1603988760408, 1, NULL);
INSERT INTO `chat_message` VALUES (20, 2, 10, '一天晚上小明带着妈妈出去吃便是，发现没带钱，然后没有了', 1, '2020-10-30 00:31:20', 1603989080352, 1, NULL);
INSERT INTO `chat_message` VALUES (21, 2, 10, '1 2 3写', 1, '2020-10-30 00:46:02', 1603989962413, 1, NULL);
INSERT INTO `chat_message` VALUES (22, 2, 10, '一天晚上小明带着妈妈出去吃便是，发现没带钱，然后没有了 但是今天有没有了 你说奇怪', 1, '2020-10-30 00:53:53', 1603990433062, 1, NULL);
INSERT INTO `chat_message` VALUES (23, 2, 10, '一天晚上小明带着妈妈出去吃便是，发现没带钱，然后没有了 但是今天有没有了 你说奇怪不奇怪打死', 1, '2020-10-30 00:54:27', 1603990467141, 1, NULL);
INSERT INTO `chat_message` VALUES (24, 10, 2, 'yihuier', 1, '2020-10-30 00:55:55', 1603990554626, 1, NULL);
INSERT INTO `chat_message` VALUES (25, 2, 15, '哈哈哈哈', 1, '2020-10-30 00:57:30', 1603990649716, NULL, NULL);
INSERT INTO `chat_message` VALUES (26, 2, 10, '额', 1, '2020-10-30 01:05:23', 1603991122580, 1, NULL);
INSERT INTO `chat_message` VALUES (27, 2, 10, '你好啊', 1, '2020-10-30 01:08:47', 1603991327353, 1, NULL);
INSERT INTO `chat_message` VALUES (28, 2, 10, 'yihuier', 1, '2020-10-30 01:13:49', 1603991629105, 1, NULL);
INSERT INTO `chat_message` VALUES (29, 2, 10, '哈哈哈', 1, '2020-10-30 01:15:01', 1603991701447, 1, NULL);
INSERT INTO `chat_message` VALUES (30, 2, 10, '你好啊', 1, '2020-10-30 01:15:08', 1603991707509, 1, NULL);
INSERT INTO `chat_message` VALUES (31, 2, 10, '哈哈哈哈哈哈哈', 1, '2020-10-30 09:30:41', 1604021440795, 1, NULL);
INSERT INTO `chat_message` VALUES (32, 2, 10, '哈哈哈哈哈哈', 1, '2020-10-30 09:30:43', 1604021442816, 1, NULL);
INSERT INTO `chat_message` VALUES (33, 2, 10, '哈哈哈哈哈哈哈', 1, '2020-10-30 09:30:45', 1604021444708, 1, NULL);
INSERT INTO `chat_message` VALUES (34, 2, 10, '哈哈哈哈哈哈哈', 1, '2020-10-30 09:32:10', 1604021529590, 1, NULL);
INSERT INTO `chat_message` VALUES (35, 2, 10, '京东卡数据量', 1, '2020-10-30 09:32:11', 1604021531298, 1, NULL);
INSERT INTO `chat_message` VALUES (36, 2, 15, '你是谁啊', 1, '2020-11-01 20:17:56', 1604233075659, NULL, NULL);
INSERT INTO `chat_message` VALUES (37, 15, 2, '111', 1, '2020-11-07 13:20:30', 1604726429758, 1, NULL);
INSERT INTO `chat_message` VALUES (38, 2, 10, '哈哈哈哈', 1, '2020-11-07 15:07:00', 1604732819701, 1, NULL);
INSERT INTO `chat_message` VALUES (39, 10, 2, '表情能用吗', 1, '2020-11-07 15:07:42', 1604732862342, 1, NULL);
INSERT INTO `chat_message` VALUES (40, 10, 2, 'v', 1, '2020-11-07 15:08:06', 1604732885904, 1, NULL);
INSERT INTO `chat_message` VALUES (41, 2, 10, '没有表情', 1, '2020-11-07 16:53:02', 1604739181748, 1, NULL);
INSERT INTO `chat_message` VALUES (42, 2, 16, '你好', 1, '2020-11-14 19:53:07', 1605354786509, 1, NULL);
INSERT INTO `chat_message` VALUES (43, 16, 2, '你好', 1, '2020-11-14 19:53:24', 1605354804493, 1, NULL);
INSERT INTO `chat_message` VALUES (44, 2, 16, '哈哈哈哈', 1, '2020-11-14 19:53:28', 1605354807524, 1, NULL);
INSERT INTO `chat_message` VALUES (45, 2, 16, '你可以上传一下', 1, '2020-11-14 19:53:32', 1605354811759, 1, NULL);
INSERT INTO `chat_message` VALUES (46, 2, 16, '头像', 1, '2020-11-14 19:53:33', 1605354812774, 1, NULL);
INSERT INTO `chat_message` VALUES (47, 16, 2, '危机覅哦几千万oe', 1, '2020-11-14 19:53:35', 1605354815040, 1, NULL);
INSERT INTO `chat_message` VALUES (48, 16, 2, '违法i崛起为甲方', 1, '2020-11-14 19:53:36', 1605354816384, 1, NULL);
INSERT INTO `chat_message` VALUES (49, 16, 2, '怎么上传', 1, '2020-11-14 19:53:42', 1605354822368, 1, NULL);
INSERT INTO `chat_message` VALUES (50, 16, 2, '1212', 1, '2020-11-14 19:54:41', 1605354880758, 1, NULL);
INSERT INTO `chat_message` VALUES (51, 2, 16, '可以', 1, '2020-11-14 19:54:55', 1605354894696, 1, NULL);
INSERT INTO `chat_message` VALUES (52, 2, 16, '很色情', 1, '2020-11-14 19:54:57', 1605354896977, 1, NULL);
INSERT INTO `chat_message` VALUES (53, 2, 16, '没我的好看', 1, '2020-11-14 19:55:13', 1605354913290, 1, NULL);
INSERT INTO `chat_message` VALUES (54, 16, 2, '来一把', 1, '2020-11-14 19:55:13', 1605354913336, 1, NULL);
INSERT INTO `chat_message` VALUES (55, 16, 2, '怎么对战', 1, '2020-11-14 19:55:16', 1605354916477, 1, NULL);
INSERT INTO `chat_message` VALUES (56, 2, 16, '你好', 1, '2020-11-14 19:58:04', 1605355083821, 1, NULL);
INSERT INTO `chat_message` VALUES (57, 10, 2, '1', 1, '2020-11-14 20:57:51', 1605358671148, 1, NULL);
INSERT INTO `chat_message` VALUES (58, 2, 10, '哈哈哈哈', 1, '2020-11-14 21:04:49', 1605359088586, 1, NULL);
INSERT INTO `chat_message` VALUES (59, 2, 10, '我赶紧', 1, '2020-11-14 21:06:08', 1605359168180, 1, NULL);
INSERT INTO `chat_message` VALUES (60, 2, 10, '整个进程', 1, '2020-11-14 21:06:13', 1605359172586, 1, NULL);
INSERT INTO `chat_message` VALUES (61, 2, 10, '过程', 1, '2020-11-14 21:06:19', 1605359179024, 1, NULL);
INSERT INTO `chat_message` VALUES (62, 2, 10, '还要一个很漫长的过程', 1, '2020-11-14 21:06:36', 1605359196493, 1, NULL);
INSERT INTO `chat_message` VALUES (63, 2, 10, '哈哈哈', 1, '2020-11-18 18:42:01', 1605696121164, 1, NULL);
INSERT INTO `chat_message` VALUES (64, 2, 15, '111', 1, '2020-11-20 17:44:16', 1605865456377, NULL, NULL);
INSERT INTO `chat_message` VALUES (65, 2, 16, '来', 1, '2020-11-20 22:22:11', 1605882130922, 1, NULL);
INSERT INTO `chat_message` VALUES (66, 10, 2, '11111', 1, '2020-12-02 17:35:34', 1606901733865, 1, NULL);
INSERT INTO `chat_message` VALUES (67, 10, 2, '2222', 1, '2020-12-02 17:36:02', 1606901762131, 1, NULL);
INSERT INTO `chat_message` VALUES (68, 2, 10, '哈哈哈', 1, '2020-12-02 21:09:44', 1606914584861, 1, NULL);
INSERT INTO `chat_message` VALUES (69, 2, 10, '你怎么还没有头像', 1, '2020-12-02 21:09:53', 1606914593493, 1, NULL);
INSERT INTO `chat_message` VALUES (70, 2, 17, '你好', 1, '2020-12-17 22:05:00', 1608213900122, 1, NULL);
INSERT INTO `chat_message` VALUES (71, 2, 17, '你好', 1, '2020-12-17 22:10:59', 1608214259745, 1, NULL);
INSERT INTO `chat_message` VALUES (72, 2, 17, '号', 1, '2020-12-17 22:11:04', 1608214264368, 1, NULL);
INSERT INTO `chat_message` VALUES (73, 2, 17, '腐蚀毒粉', 1, '2020-12-17 22:11:12', 1608214272673, 1, NULL);
INSERT INTO `chat_message` VALUES (74, 2, 17, '打算大货时间的话', 1, '2020-12-17 22:11:16', 1608214276244, 1, NULL);
INSERT INTO `chat_message` VALUES (75, 2, 17, '等哈塑胶的哈卡加斯', 1, '2020-12-17 22:11:19', 1608214279986, 1, NULL);
INSERT INTO `chat_message` VALUES (76, 2, 17, 'dahsjdkas', 1, '2020-12-17 22:11:26', 1608214286926, 1, NULL);
INSERT INTO `chat_message` VALUES (77, 2, 17, 'dhkjashdka', 1, '2020-12-17 22:11:29', 1608214289194, 1, NULL);
INSERT INTO `chat_message` VALUES (78, 2, 17, '的哈苏的哈对', 1, '2020-12-17 22:11:33', 1608214293793, 1, NULL);
INSERT INTO `chat_message` VALUES (79, 2, 17, 'dasduhasdiuas', 1, '2020-12-17 22:11:35', 1608214295192, 1, NULL);
INSERT INTO `chat_message` VALUES (80, 2, 17, 'hduashdkahd', 1, '2020-12-17 22:11:37', 1608214297432, 1, NULL);
INSERT INTO `chat_message` VALUES (81, 2, 17, 'dhjashdkja', 1, '2020-12-17 22:11:38', 1608214298651, 1, NULL);
INSERT INTO `chat_message` VALUES (82, 2, 17, '打算打怪升级扩大化', 1, '2020-12-17 22:11:57', 1608214317633, 1, NULL);
INSERT INTO `chat_message` VALUES (83, 2, 17, '的哈稍等哈稍等', 1, '2020-12-17 22:11:58', 1608214318945, 1, NULL);
INSERT INTO `chat_message` VALUES (84, 16, 2, '?', 1, '2020-12-19 21:30:02', 1608384602228, 1, NULL);
INSERT INTO `chat_message` VALUES (85, 17, 2, '你好', 1, '2020-12-26 11:50:30', 1608954630349, 1, NULL);
INSERT INTO `chat_message` VALUES (86, 17, 2, '你好', 1, '2020-12-26 11:50:35', 1608954635866, 1, NULL);
INSERT INTO `chat_message` VALUES (87, 2, 17, 'ni1', 1, '2020-12-26 11:59:36', 1608955176820, 1, NULL);
INSERT INTO `chat_message` VALUES (88, 2, 17, 'ni1', 1, '2020-12-26 11:59:45', 1608955185532, 1, NULL);
INSERT INTO `chat_message` VALUES (89, 2, 17, 'ooo1', 1, '2020-12-26 12:11:52', 1608955912456, 1, NULL);
INSERT INTO `chat_message` VALUES (90, 2, 17, '1', 1, '2020-12-26 12:12:41', 1608955961788, 1, NULL);
INSERT INTO `chat_message` VALUES (91, 2, 17, 'hhh', 1, '2020-12-26 12:18:19', 1608956299771, 1, NULL);
INSERT INTO `chat_message` VALUES (92, 17, 2, '你好', 1, '2020-12-26 12:18:40', 1608956320659, 1, NULL);
INSERT INTO `chat_message` VALUES (93, 2, 17, 'nishi', 1, '2020-12-26 12:18:48', 1608956328671, 1, NULL);
INSERT INTO `chat_message` VALUES (94, 17, 2, 'hhh', 1, '2020-12-26 12:18:53', 1608956333090, 1, NULL);
INSERT INTO `chat_message` VALUES (95, 17, 2, '打', 1, '2020-12-26 12:19:04', 1608956344661, 1, NULL);
INSERT INTO `chat_message` VALUES (96, 17, 2, '你哈', 1, '2020-12-26 12:21:25', 1608956485525, 1, NULL);
INSERT INTO `chat_message` VALUES (97, 2, 17, '哈哈', 1, '2020-12-26 12:21:32', 1608956492730, 1, NULL);
INSERT INTO `chat_message` VALUES (98, 2, 17, '哈哈', 1, '2020-12-26 12:23:00', 1608956580554, 1, NULL);
INSERT INTO `chat_message` VALUES (99, 17, 2, '你是谁', 1, '2020-12-26 12:23:06', 1608956586678, 1, NULL);
INSERT INTO `chat_message` VALUES (100, 17, 2, '是', 1, '2020-12-26 12:23:16', 1608956596363, 1, NULL);
INSERT INTO `chat_message` VALUES (101, 2, 17, '额', 1, '2020-12-26 12:23:29', 1608956609861, 1, NULL);
INSERT INTO `chat_message` VALUES (102, 17, 2, '1', 1, '2020-12-26 12:23:34', 1608956614594, 1, NULL);
INSERT INTO `chat_message` VALUES (103, 2, 17, '啊', 1, '2020-12-26 12:23:38', 1608956618689, 1, NULL);
INSERT INTO `chat_message` VALUES (104, 17, 2, '1', 1, '2020-12-26 12:23:46', 1608956626728, 1, NULL);
INSERT INTO `chat_message` VALUES (105, 2, 17, '1', 1, '2020-12-26 12:23:50', 1608956630363, 1, NULL);
INSERT INTO `chat_message` VALUES (106, 2, 17, '1', 1, '2020-12-26 12:23:53', 1608956633054, 1, NULL);
INSERT INTO `chat_message` VALUES (107, 2, 17, '1', 1, '2020-12-26 12:23:54', 1608956634625, 1, NULL);
INSERT INTO `chat_message` VALUES (108, 2, 17, '1', 1, '2020-12-26 12:23:59', 1608956639365, 1, NULL);
INSERT INTO `chat_message` VALUES (109, 2, 17, '额', 1, '2020-12-26 12:24:34', 1608956674511, 1, NULL);
INSERT INTO `chat_message` VALUES (110, 2, 17, '不是', 1, '2020-12-26 12:24:37', 1608956677110, 1, NULL);
INSERT INTO `chat_message` VALUES (111, 2, 17, '把', 1, '2020-12-26 12:24:38', 1608956678898, 1, NULL);
INSERT INTO `chat_message` VALUES (112, 17, 2, '你好', 1, '2020-12-26 14:18:15', 1608963495568, 1, NULL);
INSERT INTO `chat_message` VALUES (113, 2, 17, '你好', 1, '2020-12-26 14:19:55', 1608963595246, 1, NULL);
INSERT INTO `chat_message` VALUES (114, 2, 17, '额', 1, '2020-12-26 14:20:11', 1608963611174, 1, NULL);
INSERT INTO `chat_message` VALUES (115, 17, 2, '你好', 1, '2020-12-26 14:22:11', 1608963731375, 1, NULL);
INSERT INTO `chat_message` VALUES (116, 17, 2, '额', 1, '2020-12-26 14:22:19', 1608963739464, 1, NULL);
INSERT INTO `chat_message` VALUES (117, 2, 17, '你', 1, '2020-12-26 14:22:24', 1608963744687, 1, NULL);
INSERT INTO `chat_message` VALUES (118, 2, 17, '1', 1, '2020-12-26 14:22:29', 1608963749199, 1, NULL);
INSERT INTO `chat_message` VALUES (119, 2, 17, '1', 1, '2020-12-26 14:22:32', 1608963752510, 1, NULL);
INSERT INTO `chat_message` VALUES (120, 2, 17, '1', 1, '2020-12-26 14:22:35', 1608963755943, 1, NULL);
INSERT INTO `chat_message` VALUES (121, 2, 17, '1', 1, '2020-12-26 14:23:03', 1608963783575, 1, NULL);
INSERT INTO `chat_message` VALUES (122, 2, 17, '你好', 1, '2020-12-26 14:24:02', 1608963842071, 1, NULL);
INSERT INTO `chat_message` VALUES (123, 2, 17, 'd', 1, '2020-12-26 14:24:04', 1608963844143, 1, NULL);
INSERT INTO `chat_message` VALUES (124, 2, 17, '1', 1, '2020-12-26 14:24:06', 1608963846559, 1, NULL);
INSERT INTO `chat_message` VALUES (125, 2, 17, 'w', 1, '2020-12-26 14:24:12', 1608963852239, 1, NULL);
INSERT INTO `chat_message` VALUES (126, 2, 17, '1', 1, '2020-12-26 14:24:15', 1608963855502, 1, NULL);
INSERT INTO `chat_message` VALUES (127, 2, 17, '1', 1, '2020-12-26 14:24:18', 1608963858279, 1, NULL);
INSERT INTO `chat_message` VALUES (128, 2, 17, '1', 1, '2020-12-26 14:24:20', 1608963860567, 1, NULL);
INSERT INTO `chat_message` VALUES (129, 17, 2, '额', 1, '2020-12-26 14:24:24', 1608963864735, 1, NULL);
INSERT INTO `chat_message` VALUES (130, 17, 2, '额', 1, '2020-12-26 14:24:29', 1608963869006, 1, NULL);
INSERT INTO `chat_message` VALUES (131, 2, 17, '额', 1, '2020-12-26 14:24:33', 1608963873358, 1, NULL);
INSERT INTO `chat_message` VALUES (132, 2, 17, '额', 1, '2020-12-26 14:24:35', 1608963875998, 1, NULL);
INSERT INTO `chat_message` VALUES (133, 17, 2, '1', 1, '2020-12-26 14:25:00', 1608963900686, 1, NULL);
INSERT INTO `chat_message` VALUES (134, 17, 2, '1', 1, '2020-12-26 14:25:04', 1608963904806, 1, NULL);
INSERT INTO `chat_message` VALUES (135, 2, 17, 'e', 1, '2020-12-26 14:31:54', 1608964314599, 1, NULL);
INSERT INTO `chat_message` VALUES (136, 2, 17, '1', 1, '2020-12-26 14:32:38', 1608964358142, 1, NULL);
INSERT INTO `chat_message` VALUES (137, 2, 17, '1', 1, '2020-12-26 14:32:45', 1608964365479, 1, NULL);
INSERT INTO `chat_message` VALUES (138, 2, 17, '4', 1, '2020-12-26 14:32:48', 1608964368997, 1, NULL);
INSERT INTO `chat_message` VALUES (139, 2, 17, '1', 1, '2020-12-26 14:32:57', 1608964377542, 1, NULL);
INSERT INTO `chat_message` VALUES (140, 2, 17, '1', 1, '2020-12-26 14:35:17', 1608964517487, 1, NULL);
INSERT INTO `chat_message` VALUES (141, 2, 17, '哈哈', 1, '2020-12-26 14:35:25', 1608964525871, 1, NULL);
INSERT INTO `chat_message` VALUES (142, 2, 17, '1', 1, '2020-12-26 14:35:36', 1608964536719, 1, NULL);
INSERT INTO `chat_message` VALUES (143, 17, 2, '额', 1, '2020-12-26 14:36:48', 1608964608904, 1, NULL);
INSERT INTO `chat_message` VALUES (144, 2, 17, '额', 1, '2020-12-26 14:37:08', 1608964628191, 1, NULL);
INSERT INTO `chat_message` VALUES (145, 2, 17, '你好', 1, '2020-12-26 14:37:19', 1608964639342, 1, NULL);
INSERT INTO `chat_message` VALUES (146, 2, 17, '2', 1, '2020-12-26 14:37:22', 1608964642406, 1, NULL);
INSERT INTO `chat_message` VALUES (147, 2, 17, '1', 1, '2020-12-26 14:44:42', 1608965082143, 1, NULL);
INSERT INTO `chat_message` VALUES (148, 2, 17, '2', 1, '2020-12-26 14:46:26', 1608965186454, 1, NULL);
INSERT INTO `chat_message` VALUES (149, 2, 17, '你好', 1, '2020-12-26 14:48:03', 1608965283878, 1, NULL);
INSERT INTO `chat_message` VALUES (150, 2, 17, '你好', 1, '2020-12-26 14:48:08', 1608965288918, 1, NULL);
INSERT INTO `chat_message` VALUES (151, 2, 17, '你好', 1, '2020-12-26 14:48:18', 1608965298382, 1, NULL);
INSERT INTO `chat_message` VALUES (152, 2, 17, '你好', 1, '2020-12-26 14:48:33', 1608965313350, 1, NULL);
INSERT INTO `chat_message` VALUES (153, 17, 2, '1、', 1, '2020-12-26 14:48:43', 1608965323901, 1, NULL);
INSERT INTO `chat_message` VALUES (154, 2, 17, '1', 1, '2020-12-26 16:46:07', 1608972367635, 1, NULL);
INSERT INTO `chat_message` VALUES (155, 2, 17, '1', 1, '2020-12-26 16:46:43', 1608972403446, 1, NULL);
INSERT INTO `chat_message` VALUES (156, 2, 17, '1', 1, '2020-12-26 16:47:54', 1608972474838, 1, NULL);
INSERT INTO `chat_message` VALUES (157, 17, 2, '1', 1, '2020-12-26 16:48:52', 1608972532235, 1, NULL);
INSERT INTO `chat_message` VALUES (158, 17, 2, '2', 1, '2020-12-26 16:48:55', 1608972535730, 1, NULL);
INSERT INTO `chat_message` VALUES (159, 17, 2, '3', 1, '2020-12-26 16:49:03', 1608972543859, 1, NULL);
INSERT INTO `chat_message` VALUES (160, 17, 2, '1', 1, '2020-12-26 16:54:20', 1608972860412, 1, NULL);
INSERT INTO `chat_message` VALUES (161, 17, 2, '1', 1, '2020-12-26 16:56:18', 1608972978386, 1, NULL);
INSERT INTO `chat_message` VALUES (162, 17, 2, '1', 1, '2020-12-26 16:58:52', 1608973132275, 1, NULL);
INSERT INTO `chat_message` VALUES (163, 17, 2, '2', 1, '2020-12-26 16:58:58', 1608973138414, 1, NULL);
INSERT INTO `chat_message` VALUES (164, 2, 17, '1', 1, '2020-12-26 16:59:24', 1608973164851, 1, NULL);
INSERT INTO `chat_message` VALUES (165, 2, 17, '1', 1, '2020-12-26 17:02:11', 1608973331846, 1, NULL);
INSERT INTO `chat_message` VALUES (166, 2, 17, 'dahdfjasdasjdlkasjdjaksldjklasjkdljlasjdkas', 1, '2020-12-26 17:02:26', 1608973346539, 1, NULL);
INSERT INTO `chat_message` VALUES (167, 2, 17, '1', 1, '2020-12-26 17:06:15', 1608973575211, 1, NULL);
INSERT INTO `chat_message` VALUES (168, 2, 17, '1', 1, '2020-12-26 17:07:05', 1608973625282, 1, NULL);
INSERT INTO `chat_message` VALUES (169, 2, 17, '1', 1, '2020-12-26 17:07:09', 1608973629028, 1, NULL);
INSERT INTO `chat_message` VALUES (170, 2, 17, '1', 1, '2020-12-26 17:07:36', 1608973656346, 1, NULL);
INSERT INTO `chat_message` VALUES (171, 2, 17, '1', 1, '2020-12-26 17:07:39', 1608973659738, 1, NULL);
INSERT INTO `chat_message` VALUES (172, 2, 17, '1', 1, '2020-12-26 17:07:43', 1608973663354, 1, NULL);
INSERT INTO `chat_message` VALUES (173, 17, 2, '1', 1, '2020-12-26 17:09:09', 1608973749219, 1, NULL);
INSERT INTO `chat_message` VALUES (174, 17, 2, '2', 1, '2020-12-26 17:09:16', 1608973756250, 1, NULL);
INSERT INTO `chat_message` VALUES (175, 17, 2, '1', 1, '2020-12-26 17:10:07', 1608973807762, 1, NULL);
INSERT INTO `chat_message` VALUES (176, 2, 17, '1', 1, '2020-12-26 17:10:19', 1608973819434, 1, NULL);
INSERT INTO `chat_message` VALUES (177, 2, 17, '1', 1, '2020-12-26 17:10:35', 1608973835613, 1, NULL);
INSERT INTO `chat_message` VALUES (178, 17, 2, '3', 1, '2020-12-26 17:12:39', 1608973959298, 1, NULL);
INSERT INTO `chat_message` VALUES (179, 17, 2, '1', 1, '2020-12-26 17:13:31', 1608974011610, 1, NULL);
INSERT INTO `chat_message` VALUES (180, 17, 2, '354345', 1, '2020-12-26 17:13:34', 1608974014657, 1, NULL);
INSERT INTO `chat_message` VALUES (181, 17, 2, '4456', 1, '2020-12-26 17:13:35', 1608974015242, 1, NULL);
INSERT INTO `chat_message` VALUES (182, 17, 2, '456', 1, '2020-12-26 17:13:35', 1608974015986, 1, NULL);
INSERT INTO `chat_message` VALUES (183, 17, 2, '45665', 1, '2020-12-26 17:13:37', 1608974017153, 1, NULL);
INSERT INTO `chat_message` VALUES (184, 17, 2, '123', 1, '2020-12-26 17:13:37', 1608974017913, 1, NULL);
INSERT INTO `chat_message` VALUES (185, 17, 2, '123', 1, '2020-12-26 17:13:38', 1608974018730, 1, NULL);
INSERT INTO `chat_message` VALUES (186, 17, 2, '456', 1, '2020-12-26 17:13:39', 1608974019426, 1, NULL);
INSERT INTO `chat_message` VALUES (187, 17, 2, '5', 1, '2020-12-26 17:13:40', 1608974020362, 1, NULL);
INSERT INTO `chat_message` VALUES (188, 17, 2, '45', 1, '2020-12-26 17:13:41', 1608974021114, 1, NULL);
INSERT INTO `chat_message` VALUES (189, 17, 2, '52', 1, '2020-12-26 17:13:41', 1608974021865, 1, NULL);
INSERT INTO `chat_message` VALUES (190, 17, 2, '465', 1, '2020-12-26 17:13:42', 1608974022633, 1, NULL);
INSERT INTO `chat_message` VALUES (191, 17, 2, '546', 1, '2020-12-26 17:13:43', 1608974023425, 1, NULL);
INSERT INTO `chat_message` VALUES (192, 17, 2, '465', 1, '2020-12-26 17:13:44', 1608974024146, 1, NULL);
INSERT INTO `chat_message` VALUES (193, 17, 2, '465', 1, '2020-12-26 17:13:44', 1608974024897, 1, NULL);
INSERT INTO `chat_message` VALUES (194, 17, 2, '465', 1, '2020-12-26 17:13:45', 1608974025674, 1, NULL);
INSERT INTO `chat_message` VALUES (195, 17, 2, '456', 1, '2020-12-26 17:13:46', 1608974026449, 1, NULL);
INSERT INTO `chat_message` VALUES (196, 17, 2, '456', 1, '2020-12-26 17:13:47', 1608974027409, 1, NULL);
INSERT INTO `chat_message` VALUES (197, 17, 2, '1', 1, '2020-12-26 17:17:25', 1608974245427, 1, NULL);
INSERT INTO `chat_message` VALUES (198, 17, 2, '1', 1, '2020-12-26 17:18:01', 1608974281346, 1, NULL);
INSERT INTO `chat_message` VALUES (199, 17, 2, '245', 1, '2020-12-26 17:18:04', 1608974284901, 1, NULL);
INSERT INTO `chat_message` VALUES (200, 17, 2, '1', 1, '2020-12-26 17:18:10', 1608974290830, 1, NULL);
INSERT INTO `chat_message` VALUES (201, 17, 2, '45', 1, '2020-12-26 17:18:18', 1608974298547, 1, NULL);
INSERT INTO `chat_message` VALUES (202, 17, 2, '1', 1, '2020-12-26 17:20:05', 1608974405322, 1, NULL);
INSERT INTO `chat_message` VALUES (203, 2, 17, '132', 1, '2020-12-26 17:22:11', 1608974531042, 1, NULL);
INSERT INTO `chat_message` VALUES (204, 2, 17, '1', 1, '2020-12-26 17:22:46', 1608974566055, 1, NULL);
INSERT INTO `chat_message` VALUES (205, 17, 2, '1', 1, '2020-12-26 17:23:18', 1608974598938, 1, NULL);
INSERT INTO `chat_message` VALUES (206, 17, 2, '1', 1, '2020-12-26 17:24:18', 1608974658642, 1, NULL);
INSERT INTO `chat_message` VALUES (207, 17, 2, '5', 1, '2020-12-26 17:24:25', 1608974665625, 1, NULL);
INSERT INTO `chat_message` VALUES (208, 17, 2, '你哈', 1, '2020-12-26 17:24:31', 1608974671746, 1, NULL);
INSERT INTO `chat_message` VALUES (209, 17, 2, '哈哈哈哈', 1, '2020-12-26 17:24:36', 1608974676361, 1, NULL);
INSERT INTO `chat_message` VALUES (210, 17, 2, '额', 1, '2020-12-26 17:25:09', 1608974709537, 1, NULL);
INSERT INTO `chat_message` VALUES (211, 2, 17, '额', 1, '2020-12-26 17:26:38', 1608974798098, 1, NULL);
INSERT INTO `chat_message` VALUES (212, 2, 17, '1', 1, '2020-12-26 17:27:24', 1608974844814, 1, NULL);
INSERT INTO `chat_message` VALUES (213, 2, 17, '额', 1, '2020-12-26 17:27:28', 1608974848815, 1, NULL);
INSERT INTO `chat_message` VALUES (214, 2, 17, '额', 1, '2020-12-26 17:27:43', 1608974863259, 1, NULL);
INSERT INTO `chat_message` VALUES (215, 2, 17, '哈哈', 1, '2020-12-26 17:27:48', 1608974868838, 1, NULL);
INSERT INTO `chat_message` VALUES (216, 2, 17, '1', 1, '2020-12-26 17:28:10', 1608974890866, 1, NULL);
INSERT INTO `chat_message` VALUES (217, 2, 17, '你', 1, '2020-12-26 19:13:17', 1608981197377, 1, NULL);
INSERT INTO `chat_message` VALUES (218, 17, 2, '你在干嘛', 1, '2020-12-26 19:13:58', 1608981238704, 1, NULL);
INSERT INTO `chat_message` VALUES (219, 2, 17, '没干嘛', 1, '2020-12-26 19:14:03', 1608981243535, 1, NULL);
INSERT INTO `chat_message` VALUES (220, 17, 2, '你好', 1, '2020-12-26 19:38:31', 1608982711096, 1, NULL);
INSERT INTO `chat_message` VALUES (221, 17, 2, '额', 1, '2020-12-26 19:38:46', 1608982726831, 1, NULL);
INSERT INTO `chat_message` VALUES (222, 2, 17, '你好', 1, '2020-12-26 19:41:32', 1608982892664, 1, NULL);
INSERT INTO `chat_message` VALUES (223, 2, 17, '你是', 1, '2020-12-26 19:41:48', 1608982908998, 1, NULL);
INSERT INTO `chat_message` VALUES (224, 2, 17, '哈哈哈', 1, '2020-12-26 19:41:54', 1608982914471, 1, NULL);
INSERT INTO `chat_message` VALUES (225, 2, 17, '你在干嘛', 1, '2020-12-26 19:41:59', 1608982919599, 1, NULL);
INSERT INTO `chat_message` VALUES (226, 17, 2, '没干嘛', 1, '2020-12-26 19:43:45', 1608983025592, 1, NULL);
INSERT INTO `chat_message` VALUES (227, 17, 2, '你', 1, '2020-12-26 19:44:17', 1608983057799, 1, NULL);
INSERT INTO `chat_message` VALUES (228, 17, 2, '可以啊', 1, '2020-12-26 19:44:20', 1608983060406, 1, NULL);
INSERT INTO `chat_message` VALUES (229, 17, 2, '哈哈哈', 1, '2020-12-26 19:44:32', 1608983072134, 1, NULL);
INSERT INTO `chat_message` VALUES (230, 17, 2, '哈哈哈', 1, '2020-12-26 19:45:35', 1608983135384, 1, NULL);
INSERT INTO `chat_message` VALUES (231, 2, 17, '没事吗', 1, '2020-12-26 19:45:43', 1608983143632, 1, NULL);
INSERT INTO `chat_message` VALUES (232, 2, 17, '你有毒啊', 1, '2020-12-26 19:45:46', 1608983146031, 1, NULL);
INSERT INTO `chat_message` VALUES (233, 17, 2, '草泥马', 1, '2020-12-26 19:45:50', 1608983150087, 1, NULL);
INSERT INTO `chat_message` VALUES (234, 17, 2, '哈哈哈', 1, '2020-12-26 19:45:55', 1608983155719, 1, NULL);
INSERT INTO `chat_message` VALUES (235, 17, 2, '大苏打', 1, '2020-12-26 19:45:57', 1608983157567, 1, NULL);
INSERT INTO `chat_message` VALUES (236, 17, 2, '开', 1, '2020-12-26 19:46:02', 1608983162119, 1, NULL);
INSERT INTO `chat_message` VALUES (237, 17, 2, '的', 1, '2020-12-26 19:46:09', 1608983169007, 1, NULL);
INSERT INTO `chat_message` VALUES (238, 17, 2, '你是', 1, '2020-12-26 19:46:47', 1608983207502, 1, NULL);
INSERT INTO `chat_message` VALUES (239, 17, 2, '你还', 1, '2020-12-26 19:49:19', 1608983359703, 1, NULL);
INSERT INTO `chat_message` VALUES (240, 17, 2, '1', 1, '2020-12-26 19:49:44', 1608983384702, 1, NULL);
INSERT INTO `chat_message` VALUES (241, 17, 2, '额', 1, '2020-12-26 19:49:53', 1608983393975, 1, NULL);
INSERT INTO `chat_message` VALUES (242, 2, 17, '操', 1, '2020-12-26 19:50:15', 1608983415999, 1, NULL);
INSERT INTO `chat_message` VALUES (243, 2, 17, '傻逼吧你', 1, '2020-12-26 19:50:22', 1608983422271, 1, NULL);
INSERT INTO `chat_message` VALUES (244, 2, 18, '1', 1, '2020-12-26 21:00:45', 1608987645789, NULL, NULL);
INSERT INTO `chat_message` VALUES (245, 2, 10, '1', 1, '2020-12-26 21:05:45', 1608987945882, 1, NULL);
INSERT INTO `chat_message` VALUES (246, 2, 16, '1', 1, '2020-12-26 21:49:33', 1608990573483, NULL, NULL);
INSERT INTO `chat_message` VALUES (247, 10, 2, '11', 1, '2020-12-26 23:26:12', 1608996372353, 1, NULL);
INSERT INTO `chat_message` VALUES (248, 10, 2, '222', 1, '2020-12-26 23:26:14', 1608996374587, 1, NULL);
INSERT INTO `chat_message` VALUES (249, 10, 2, 'sajkhdjakdh', 1, '2020-12-26 23:29:28', 1608996568182, 1, NULL);
INSERT INTO `chat_message` VALUES (250, 10, 2, 'sdkasjdak', 1, '2020-12-26 23:29:30', 1608996570260, 1, NULL);
INSERT INTO `chat_message` VALUES (251, 10, 2, 'dasdjkhasdj', 1, '2020-12-26 23:29:31', 1608996571713, 1, NULL);
INSERT INTO `chat_message` VALUES (252, 10, 2, 'dnasjkdhca c', 1, '2020-12-26 23:29:33', 1608996573057, 1, NULL);
INSERT INTO `chat_message` VALUES (253, 10, 2, 'ashdalscja ca', 1, '2020-12-26 23:29:34', 1608996574525, 1, NULL);
INSERT INTO `chat_message` VALUES (254, 10, 2, '1', 1, '2020-12-26 23:29:34', 1608996574916, 1, NULL);
INSERT INTO `chat_message` VALUES (255, 10, 2, '1', 1, '2020-12-26 23:29:35', 1608996575260, 1, NULL);
INSERT INTO `chat_message` VALUES (256, 10, 2, '1', 1, '2020-12-26 23:29:35', 1608996575432, 1, NULL);
INSERT INTO `chat_message` VALUES (257, 10, 2, '1', 1, '2020-12-26 23:29:35', 1608996575635, 1, NULL);
INSERT INTO `chat_message` VALUES (258, 10, 2, '1', 1, '2020-12-26 23:29:35', 1608996575807, 1, NULL);
INSERT INTO `chat_message` VALUES (259, 10, 2, '1', 1, '2020-12-26 23:29:35', 1608996575994, 1, NULL);
INSERT INTO `chat_message` VALUES (260, 10, 2, '1', 1, '2020-12-26 23:29:36', 1608996576354, 1, NULL);
INSERT INTO `chat_message` VALUES (261, 10, 2, '1', 1, '2020-12-26 23:29:36', 1608996576525, 1, NULL);
INSERT INTO `chat_message` VALUES (262, 10, 2, '1', 1, '2020-12-26 23:29:36', 1608996576713, 1, NULL);
INSERT INTO `chat_message` VALUES (263, 10, 2, '1', 1, '2020-12-26 23:29:37', 1608996577072, 1, NULL);
INSERT INTO `chat_message` VALUES (264, 10, 2, '1', 1, '2020-12-26 23:29:37', 1608996577260, 1, NULL);
INSERT INTO `chat_message` VALUES (265, 10, 2, '1', 1, '2020-12-26 23:29:37', 1608996577463, 1, NULL);
INSERT INTO `chat_message` VALUES (266, 10, 2, '1', 1, '2020-12-26 23:29:37', 1608996577650, 1, NULL);
INSERT INTO `chat_message` VALUES (267, 10, 2, '1', 1, '2020-12-26 23:29:37', 1608996577838, 1, NULL);
INSERT INTO `chat_message` VALUES (268, 10, 2, '1', 1, '2020-12-26 23:29:38', 1608996578025, 1, NULL);
INSERT INTO `chat_message` VALUES (269, 10, 2, '1', 1, '2020-12-26 23:29:38', 1608996578213, 1, NULL);
INSERT INTO `chat_message` VALUES (270, 10, 2, '1', 1, '2020-12-26 23:29:38', 1608996578385, 1, NULL);
INSERT INTO `chat_message` VALUES (271, 10, 2, '1', 1, '2020-12-26 23:29:38', 1608996578572, 1, NULL);
INSERT INTO `chat_message` VALUES (272, 10, 2, '1', 1, '2020-12-26 23:29:38', 1608996578760, 1, NULL);
INSERT INTO `chat_message` VALUES (273, 10, 2, '1', 1, '2020-12-26 23:29:38', 1608996578947, 1, NULL);
INSERT INTO `chat_message` VALUES (274, 10, 2, '2', 1, '2020-12-26 23:29:39', 1608996579307, 1, NULL);
INSERT INTO `chat_message` VALUES (275, 10, 2, '2', 1, '2020-12-26 23:29:39', 1608996579510, 1, NULL);
INSERT INTO `chat_message` VALUES (276, 10, 2, '2', 1, '2020-12-26 23:29:39', 1608996579697, 1, NULL);
INSERT INTO `chat_message` VALUES (277, 10, 2, '2', 1, '2020-12-26 23:29:39', 1608996579900, 1, NULL);
INSERT INTO `chat_message` VALUES (278, 10, 2, '2', 1, '2020-12-26 23:29:40', 1608996580088, 1, NULL);
INSERT INTO `chat_message` VALUES (279, 10, 2, '2', 1, '2020-12-26 23:29:40', 1608996580307, 1, NULL);
INSERT INTO `chat_message` VALUES (280, 10, 2, '2', 1, '2020-12-26 23:29:40', 1608996580510, 1, NULL);
INSERT INTO `chat_message` VALUES (281, 10, 2, '2', 1, '2020-12-26 23:29:40', 1608996580697, 1, NULL);
INSERT INTO `chat_message` VALUES (282, 10, 2, '2', 1, '2020-12-26 23:29:40', 1608996580885, 1, NULL);
INSERT INTO `chat_message` VALUES (283, 10, 2, '2', 1, '2020-12-26 23:29:41', 1608996581072, 1, NULL);
INSERT INTO `chat_message` VALUES (284, 10, 2, '2', 1, '2020-12-26 23:29:41', 1608996581275, 1, NULL);
INSERT INTO `chat_message` VALUES (285, 10, 2, '2', 1, '2020-12-26 23:29:41', 1608996581463, 1, NULL);
INSERT INTO `chat_message` VALUES (286, 10, 2, '3', 1, '2020-12-26 23:29:41', 1608996581650, 1, NULL);
INSERT INTO `chat_message` VALUES (287, 10, 2, '3', 1, '2020-12-26 23:29:41', 1608996581854, 1, NULL);
INSERT INTO `chat_message` VALUES (288, 10, 2, '3', 1, '2020-12-26 23:29:42', 1608996582057, 1, NULL);
INSERT INTO `chat_message` VALUES (289, 10, 2, '3', 1, '2020-12-26 23:29:42', 1608996582260, 1, NULL);
INSERT INTO `chat_message` VALUES (290, 10, 2, '3', 1, '2020-12-26 23:29:42', 1608996582463, 1, NULL);
INSERT INTO `chat_message` VALUES (291, 10, 2, '3', 1, '2020-12-26 23:29:42', 1608996582666, 1, NULL);
INSERT INTO `chat_message` VALUES (292, 10, 2, '3', 1, '2020-12-26 23:29:42', 1608996582854, 1, NULL);
INSERT INTO `chat_message` VALUES (293, 10, 2, '3', 1, '2020-12-26 23:29:43', 1608996583057, 1, NULL);
INSERT INTO `chat_message` VALUES (294, 10, 2, '3', 1, '2020-12-26 23:29:43', 1608996583260, 1, NULL);
INSERT INTO `chat_message` VALUES (295, 10, 2, '3', 1, '2020-12-26 23:29:43', 1608996583447, 1, NULL);
INSERT INTO `chat_message` VALUES (296, 10, 2, '3', 1, '2020-12-26 23:29:43', 1608996583682, 1, NULL);
INSERT INTO `chat_message` VALUES (297, 10, 2, '3', 1, '2020-12-26 23:29:43', 1608996583869, 1, NULL);
INSERT INTO `chat_message` VALUES (298, 10, 2, '3', 1, '2020-12-26 23:29:44', 1608996584057, 1, NULL);
INSERT INTO `chat_message` VALUES (299, 10, 2, '3', 1, '2020-12-26 23:29:44', 1608996584260, 1, NULL);
INSERT INTO `chat_message` VALUES (300, 10, 2, '4', 1, '2020-12-26 23:29:45', 1608996585760, 1, NULL);
INSERT INTO `chat_message` VALUES (301, 10, 2, '3', 1, '2020-12-26 23:29:46', 1608996586494, 1, NULL);
INSERT INTO `chat_message` VALUES (302, 10, 2, '3', 1, '2020-12-26 23:29:46', 1608996586697, 1, NULL);
INSERT INTO `chat_message` VALUES (303, 10, 2, '3', 1, '2020-12-26 23:29:46', 1608996586900, 1, NULL);
INSERT INTO `chat_message` VALUES (304, 10, 2, '3', 1, '2020-12-26 23:29:47', 1608996587072, 1, NULL);
INSERT INTO `chat_message` VALUES (305, 10, 2, '3', 1, '2020-12-26 23:29:47', 1608996587260, 1, NULL);
INSERT INTO `chat_message` VALUES (306, 10, 2, '3', 1, '2020-12-26 23:29:47', 1608996587463, 1, NULL);
INSERT INTO `chat_message` VALUES (307, 10, 2, '3', 1, '2020-12-26 23:29:47', 1608996587650, 1, NULL);
INSERT INTO `chat_message` VALUES (308, 10, 2, '4', 1, '2020-12-26 23:29:47', 1608996587838, 1, NULL);
INSERT INTO `chat_message` VALUES (309, 10, 2, '54', 1, '2020-12-26 23:29:48', 1608996588057, 1, NULL);
INSERT INTO `chat_message` VALUES (310, 10, 2, '5', 1, '2020-12-26 23:29:48', 1608996588244, 1, NULL);
INSERT INTO `chat_message` VALUES (311, 10, 2, '5', 1, '2020-12-26 23:29:48', 1608996588416, 1, NULL);
INSERT INTO `chat_message` VALUES (312, 10, 2, 't', 1, '2020-12-26 23:29:48', 1608996588604, 1, NULL);
INSERT INTO `chat_message` VALUES (313, 10, 2, 'rt', 1, '2020-12-26 23:29:48', 1608996588807, 1, NULL);
INSERT INTO `chat_message` VALUES (314, 10, 2, 't', 1, '2020-12-26 23:29:49', 1608996589025, 1, NULL);
INSERT INTO `chat_message` VALUES (315, 10, 2, 't', 1, '2020-12-26 23:29:49', 1608996589229, 1, NULL);
INSERT INTO `chat_message` VALUES (316, 10, 2, 'y', 1, '2020-12-26 23:29:49', 1608996589400, 1, NULL);
INSERT INTO `chat_message` VALUES (317, 10, 2, 'u', 1, '2020-12-26 23:29:49', 1608996589604, 1, NULL);
INSERT INTO `chat_message` VALUES (318, 10, 2, 'u', 1, '2020-12-26 23:29:49', 1608996589807, 1, NULL);
INSERT INTO `chat_message` VALUES (319, 10, 2, 'uy', 1, '2020-12-26 23:29:50', 1608996590010, 1, NULL);
INSERT INTO `chat_message` VALUES (320, 10, 2, 'y', 1, '2020-12-26 23:29:50', 1608996590213, 1, NULL);
INSERT INTO `chat_message` VALUES (321, 10, 2, 'y', 1, '2020-12-26 23:29:50', 1608996590416, 1, NULL);
INSERT INTO `chat_message` VALUES (322, 10, 2, 'y', 1, '2020-12-26 23:29:50', 1608996590604, 1, NULL);
INSERT INTO `chat_message` VALUES (323, 10, 2, 'r', 1, '2020-12-26 23:29:50', 1608996590807, 1, NULL);
INSERT INTO `chat_message` VALUES (324, 10, 2, 'r', 1, '2020-12-26 23:29:51', 1608996591197, 1, NULL);
INSERT INTO `chat_message` VALUES (325, 10, 2, 'r', 1, '2020-12-26 23:29:51', 1608996591400, 1, NULL);
INSERT INTO `chat_message` VALUES (326, 10, 2, 'r', 1, '2020-12-26 23:29:51', 1608996591619, 1, NULL);
INSERT INTO `chat_message` VALUES (327, 10, 2, 'e', 1, '2020-12-26 23:29:51', 1608996591838, 1, NULL);
INSERT INTO `chat_message` VALUES (328, 10, 2, 'e', 1, '2020-12-26 23:29:52', 1608996592057, 1, NULL);
INSERT INTO `chat_message` VALUES (329, 10, 2, 'e', 1, '2020-12-26 23:29:52', 1608996592260, 1, NULL);
INSERT INTO `chat_message` VALUES (330, 10, 2, 'e', 1, '2020-12-26 23:29:52', 1608996592432, 1, NULL);
INSERT INTO `chat_message` VALUES (331, 10, 2, 'q', 1, '2020-12-26 23:29:52', 1608996592807, 1, NULL);
INSERT INTO `chat_message` VALUES (332, 10, 2, 'q', 1, '2020-12-26 23:29:52', 1608996592994, 1, NULL);
INSERT INTO `chat_message` VALUES (333, 10, 2, 'q', 1, '2020-12-26 23:29:53', 1608996593166, 1, NULL);
INSERT INTO `chat_message` VALUES (334, 10, 2, 'w', 1, '2020-12-26 23:29:53', 1608996593541, 1, NULL);
INSERT INTO `chat_message` VALUES (335, 10, 2, 'd', 1, '2020-12-26 23:29:53', 1608996593744, 1, NULL);
INSERT INTO `chat_message` VALUES (336, 10, 2, 'd', 1, '2020-12-26 23:29:54', 1608996594119, 1, NULL);
INSERT INTO `chat_message` VALUES (337, 10, 2, 'd', 1, '2020-12-26 23:29:54', 1608996594307, 1, NULL);
INSERT INTO `chat_message` VALUES (338, 10, 2, 'd', 1, '2020-12-26 23:29:54', 1608996594510, 1, NULL);
INSERT INTO `chat_message` VALUES (339, 10, 2, 'q', 1, '2020-12-26 23:29:55', 1608996595432, 1, NULL);
INSERT INTO `chat_message` VALUES (340, 10, 2, 'f', 1, '2020-12-26 23:29:57', 1608996597166, 1, NULL);
INSERT INTO `chat_message` VALUES (341, 10, 2, 'weg', 1, '2020-12-26 23:29:57', 1608996597979, 1, NULL);
INSERT INTO `chat_message` VALUES (342, 10, 2, 'w', 1, '2020-12-26 23:29:58', 1608996598197, 1, NULL);
INSERT INTO `chat_message` VALUES (343, 10, 2, 'g', 1, '2020-12-26 23:29:58', 1608996598432, 1, NULL);
INSERT INTO `chat_message` VALUES (344, 10, 2, 'qwr', 1, '2020-12-26 23:29:58', 1608996598838, 1, NULL);
INSERT INTO `chat_message` VALUES (345, 10, 2, 'q', 1, '2020-12-26 23:29:59', 1608996599104, 1, NULL);
INSERT INTO `chat_message` VALUES (346, 10, 2, 'e', 1, '2020-12-26 23:29:59', 1608996599322, 1, NULL);
INSERT INTO `chat_message` VALUES (347, 10, 2, 'qw', 1, '2020-12-26 23:29:59', 1608996599541, 1, NULL);
INSERT INTO `chat_message` VALUES (348, 10, 2, 'edq', 1, '2020-12-26 23:29:59', 1608996599776, 1, NULL);
INSERT INTO `chat_message` VALUES (349, 10, 2, 'sd', 1, '2020-12-26 23:29:59', 1608996599994, 1, NULL);
INSERT INTO `chat_message` VALUES (350, 10, 2, 'qw', 1, '2020-12-26 23:30:00', 1608996600244, 1, NULL);
INSERT INTO `chat_message` VALUES (351, 10, 2, 'e', 1, '2020-12-26 23:30:00', 1608996600432, 1, NULL);
INSERT INTO `chat_message` VALUES (352, 10, 2, 'rdqw', 1, '2020-12-26 23:30:00', 1608996600666, 1, NULL);
INSERT INTO `chat_message` VALUES (353, 10, 2, 'd', 1, '2020-12-26 23:30:00', 1608996600885, 1, NULL);
INSERT INTO `chat_message` VALUES (354, 10, 2, 'qw', 1, '2020-12-26 23:30:01', 1608996601151, 1, NULL);
INSERT INTO `chat_message` VALUES (355, 10, 2, 'd', 1, '2020-12-26 23:30:01', 1608996601401, 1, NULL);
INSERT INTO `chat_message` VALUES (356, 10, 2, 'q', 1, '2020-12-26 23:30:01', 1608996601651, 1, NULL);
INSERT INTO `chat_message` VALUES (357, 10, 2, 'wd', 1, '2020-12-26 23:30:01', 1608996601885, 1, NULL);
INSERT INTO `chat_message` VALUES (358, 10, 2, 'qw', 1, '2020-12-26 23:30:02', 1608996602154, 1, NULL);
INSERT INTO `chat_message` VALUES (359, 10, 2, 'fq', 1, '2020-12-26 23:30:02', 1608996602354, 1, NULL);
INSERT INTO `chat_message` VALUES (360, 10, 2, 'wf', 1, '2020-12-26 23:30:02', 1608996602572, 1, NULL);
INSERT INTO `chat_message` VALUES (361, 10, 2, 'q', 1, '2020-12-26 23:30:02', 1608996602822, 1, NULL);
INSERT INTO `chat_message` VALUES (362, 10, 2, 'eg', 1, '2020-12-26 23:30:03', 1608996603072, 1, NULL);
INSERT INTO `chat_message` VALUES (363, 10, 2, 'wreef', 1, '2020-12-26 23:30:03', 1608996603338, 1, NULL);
INSERT INTO `chat_message` VALUES (364, 10, 2, 'qwesd', 1, '2020-12-26 23:30:03', 1608996603822, 1, NULL);
INSERT INTO `chat_message` VALUES (365, 10, 2, 'c', 1, '2020-12-26 23:30:04', 1608996604057, 1, NULL);
INSERT INTO `chat_message` VALUES (366, 10, 2, 'wqf', 1, '2020-12-26 23:30:04', 1608996604307, 1, NULL);
INSERT INTO `chat_message` VALUES (367, 10, 2, 'q', 1, '2020-12-26 23:30:04', 1608996604526, 1, NULL);
INSERT INTO `chat_message` VALUES (368, 10, 2, 'f', 1, '2020-12-26 23:30:04', 1608996604729, 1, NULL);
INSERT INTO `chat_message` VALUES (369, 10, 2, 'qw', 1, '2020-12-26 23:30:05', 1608996605010, 1, NULL);
INSERT INTO `chat_message` VALUES (370, 10, 2, 'e', 1, '2020-12-26 23:30:05', 1608996605276, 1, NULL);
INSERT INTO `chat_message` VALUES (371, 10, 2, 'wq', 1, '2020-12-26 23:30:05', 1608996605557, 1, NULL);
INSERT INTO `chat_message` VALUES (372, 10, 2, 'df', 1, '2020-12-26 23:30:05', 1608996605807, 1, NULL);
INSERT INTO `chat_message` VALUES (373, 10, 2, 'wq', 1, '2020-12-26 23:30:06', 1608996606057, 1, NULL);
INSERT INTO `chat_message` VALUES (374, 10, 2, 'rf', 1, '2020-12-26 23:30:06', 1608996606291, 1, NULL);
INSERT INTO `chat_message` VALUES (375, 10, 2, 'e', 1, '2020-12-26 23:30:06', 1608996606541, 1, NULL);
INSERT INTO `chat_message` VALUES (376, 10, 2, 'g', 1, '2020-12-26 23:30:06', 1608996606776, 1, NULL);
INSERT INTO `chat_message` VALUES (377, 10, 2, 'rg', 1, '2020-12-26 23:30:06', 1608996606994, 1, NULL);
INSERT INTO `chat_message` VALUES (378, 10, 2, 'rte', 1, '2020-12-26 23:30:07', 1608996607244, 1, NULL);
INSERT INTO `chat_message` VALUES (379, 10, 2, 'gyh', 1, '2020-12-26 23:30:07', 1608996607479, 1, NULL);
INSERT INTO `chat_message` VALUES (380, 10, 2, 't6yh54', 1, '2020-12-26 23:30:08', 1608996608135, 1, NULL);
INSERT INTO `chat_message` VALUES (381, 10, 2, 'tg', 1, '2020-12-26 23:30:08', 1608996608416, 1, NULL);
INSERT INTO `chat_message` VALUES (382, 10, 2, 'we', 1, '2020-12-26 23:30:08', 1608996608901, 1, NULL);
INSERT INTO `chat_message` VALUES (383, 10, 2, 'f', 1, '2020-12-26 23:30:09', 1608996609151, 1, NULL);
INSERT INTO `chat_message` VALUES (384, 10, 2, 'qwe', 1, '2020-12-26 23:30:09', 1608996609401, 1, NULL);
INSERT INTO `chat_message` VALUES (385, 10, 2, 'f', 1, '2020-12-26 23:30:09', 1608996609666, 1, NULL);
INSERT INTO `chat_message` VALUES (386, 10, 2, 'sa', 1, '2020-12-26 23:30:09', 1608996609979, 1, NULL);
INSERT INTO `chat_message` VALUES (387, 10, 2, 'dq', 1, '2020-12-26 23:30:10', 1608996610276, 1, NULL);
INSERT INTO `chat_message` VALUES (388, 10, 2, 'we', 1, '2020-12-26 23:30:10', 1608996610526, 1, NULL);
INSERT INTO `chat_message` VALUES (389, 10, 2, '123', 1, '2020-12-26 23:30:10', 1608996610713, 1, NULL);
INSERT INTO `chat_message` VALUES (390, 10, 2, 'r', 1, '2020-12-26 23:30:10', 1608996610932, 1, NULL);
INSERT INTO `chat_message` VALUES (391, 10, 2, 'ew', 1, '2020-12-26 23:30:11', 1608996611119, 1, NULL);
INSERT INTO `chat_message` VALUES (392, 10, 2, 'rf', 1, '2020-12-26 23:30:11', 1608996611369, 1, NULL);
INSERT INTO `chat_message` VALUES (393, 10, 2, 'edf', 1, '2020-12-26 23:30:11', 1608996611635, 1, NULL);
INSERT INTO `chat_message` VALUES (394, 10, 2, 'v', 1, '2020-12-26 23:30:11', 1608996611854, 1, NULL);
INSERT INTO `chat_message` VALUES (395, 10, 2, '11', 1, '2020-12-26 23:30:25', 1608996625572, 1, NULL);
INSERT INTO `chat_message` VALUES (396, 10, 2, '11', 1, '2020-12-26 23:30:25', 1608996625760, 1, NULL);
INSERT INTO `chat_message` VALUES (397, 10, 2, '1', 1, '2020-12-26 23:30:26', 1608996626119, 1, NULL);
INSERT INTO `chat_message` VALUES (398, 10, 2, '1', 1, '2020-12-26 23:30:26', 1608996626291, 1, NULL);
INSERT INTO `chat_message` VALUES (399, 10, 2, '1', 1, '2020-12-26 23:30:26', 1608996626479, 1, NULL);
INSERT INTO `chat_message` VALUES (400, 10, 2, '1', 1, '2020-12-26 23:30:26', 1608996626650, 1, NULL);
INSERT INTO `chat_message` VALUES (401, 10, 2, '1', 1, '2020-12-26 23:30:26', 1608996626854, 1, NULL);
INSERT INTO `chat_message` VALUES (402, 10, 2, '1', 1, '2020-12-26 23:30:27', 1608996627025, 1, NULL);
INSERT INTO `chat_message` VALUES (403, 10, 2, '1', 1, '2020-12-26 23:30:27', 1608996627244, 1, NULL);
INSERT INTO `chat_message` VALUES (404, 10, 2, '1', 1, '2020-12-26 23:30:27', 1608996627432, 1, NULL);
INSERT INTO `chat_message` VALUES (405, 10, 2, '21', 1, '2020-12-26 23:30:27', 1608996627635, 1, NULL);
INSERT INTO `chat_message` VALUES (406, 10, 2, '3', 1, '2020-12-26 23:30:27', 1608996627838, 1, NULL);
INSERT INTO `chat_message` VALUES (407, 10, 2, 'w', 1, '2020-12-26 23:30:28', 1608996628057, 1, NULL);
INSERT INTO `chat_message` VALUES (408, 10, 2, 'd', 1, '2020-12-26 23:30:28', 1608996628244, 1, NULL);
INSERT INTO `chat_message` VALUES (409, 10, 2, 'sa', 1, '2020-12-26 23:30:28', 1608996628447, 1, NULL);
INSERT INTO `chat_message` VALUES (410, 10, 2, 'd', 1, '2020-12-26 23:30:28', 1608996628650, 1, NULL);
INSERT INTO `chat_message` VALUES (411, 10, 2, 'as', 1, '2020-12-26 23:30:28', 1608996628838, 1, NULL);
INSERT INTO `chat_message` VALUES (412, 10, 2, 'fas', 1, '2020-12-26 23:30:29', 1608996629057, 1, NULL);
INSERT INTO `chat_message` VALUES (413, 10, 2, 'f', 1, '2020-12-26 23:30:29', 1608996629244, 1, NULL);
INSERT INTO `chat_message` VALUES (414, 10, 2, 'as', 1, '2020-12-26 23:30:29', 1608996629432, 1, NULL);
INSERT INTO `chat_message` VALUES (415, 10, 2, 'fda', 1, '2020-12-26 23:30:29', 1608996629650, 1, NULL);
INSERT INTO `chat_message` VALUES (416, 10, 2, 'sd', 1, '2020-12-26 23:30:29', 1608996629822, 1, NULL);
INSERT INTO `chat_message` VALUES (417, 10, 2, 'as', 1, '2020-12-26 23:30:30', 1608996630025, 1, NULL);
INSERT INTO `chat_message` VALUES (418, 10, 2, 'fa', 1, '2020-12-26 23:30:30', 1608996630244, 1, NULL);
INSERT INTO `chat_message` VALUES (419, 10, 2, 'sfd', 1, '2020-12-26 23:30:30', 1608996630400, 1, NULL);
INSERT INTO `chat_message` VALUES (420, 10, 2, 'as', 1, '2020-12-26 23:30:30', 1608996630619, 1, NULL);
INSERT INTO `chat_message` VALUES (421, 10, 2, 'fs', 1, '2020-12-26 23:30:30', 1608996630822, 1, NULL);
INSERT INTO `chat_message` VALUES (422, 10, 2, 'df', 1, '2020-12-26 23:30:31', 1608996631010, 1, NULL);
INSERT INTO `chat_message` VALUES (423, 10, 2, 'sd', 1, '2020-12-26 23:30:31', 1608996631213, 1, NULL);
INSERT INTO `chat_message` VALUES (424, 10, 2, 'gfs', 1, '2020-12-26 23:30:31', 1608996631416, 1, NULL);
INSERT INTO `chat_message` VALUES (425, 10, 2, 'df', 1, '2020-12-26 23:30:31', 1608996631604, 1, NULL);
INSERT INTO `chat_message` VALUES (426, 10, 2, 'sad', 1, '2020-12-26 23:30:31', 1608996631807, 1, NULL);
INSERT INTO `chat_message` VALUES (427, 10, 2, 'fa', 1, '2020-12-26 23:30:32', 1608996632025, 1, NULL);
INSERT INTO `chat_message` VALUES (428, 10, 2, 'f', 1, '2020-12-26 23:30:32', 1608996632244, 1, NULL);
INSERT INTO `chat_message` VALUES (429, 10, 2, 'assf', 1, '2020-12-26 23:30:32', 1608996632432, 1, NULL);
INSERT INTO `chat_message` VALUES (430, 10, 2, 'af', 1, '2020-12-26 23:30:32', 1608996632650, 1, NULL);
INSERT INTO `chat_message` VALUES (431, 10, 2, 'as', 1, '2020-12-26 23:30:32', 1608996632838, 1, NULL);
INSERT INTO `chat_message` VALUES (432, 10, 2, 'fa', 1, '2020-12-26 23:30:33', 1608996633041, 1, NULL);
INSERT INTO `chat_message` VALUES (433, 10, 2, 'f', 1, '2020-12-26 23:30:33', 1608996633260, 1, NULL);
INSERT INTO `chat_message` VALUES (434, 10, 2, 'af', 1, '2020-12-26 23:30:33', 1608996633447, 1, NULL);
INSERT INTO `chat_message` VALUES (435, 10, 2, 'af', 1, '2020-12-26 23:30:33', 1608996633682, 1, NULL);
INSERT INTO `chat_message` VALUES (436, 10, 2, 'as', 1, '2020-12-26 23:30:33', 1608996633869, 1, NULL);
INSERT INTO `chat_message` VALUES (437, 10, 2, 'fa', 1, '2020-12-26 23:30:34', 1608996634057, 1, NULL);
INSERT INTO `chat_message` VALUES (438, 10, 2, 'f', 1, '2020-12-26 23:30:34', 1608996634275, 1, NULL);
INSERT INTO `chat_message` VALUES (439, 10, 2, 'af', 1, '2020-12-26 23:30:34', 1608996634479, 1, NULL);
INSERT INTO `chat_message` VALUES (440, 10, 2, 'af', 1, '2020-12-26 23:30:34', 1608996634682, 1, NULL);
INSERT INTO `chat_message` VALUES (441, 10, 2, 'af', 1, '2020-12-26 23:30:34', 1608996634869, 1, NULL);
INSERT INTO `chat_message` VALUES (442, 10, 2, 'as', 1, '2020-12-26 23:30:35', 1608996635057, 1, NULL);
INSERT INTO `chat_message` VALUES (443, 10, 2, 'fasf', 1, '2020-12-26 23:30:35', 1608996635307, 1, NULL);
INSERT INTO `chat_message` VALUES (444, 10, 2, 'a', 1, '2020-12-26 23:30:35', 1608996635400, 1, NULL);
INSERT INTO `chat_message` VALUES (445, 17, 2, '123', 1, '2021-02-07 16:32:07', 1612686727435, 1, NULL);
INSERT INTO `chat_message` VALUES (446, 2, 17, '1111', 1, '2021-02-07 16:32:17', 1612686737600, 1, NULL);
INSERT INTO `chat_message` VALUES (447, 2, 17, '123', 1, '2021-02-07 16:32:25', 1612686745744, 1, NULL);
INSERT INTO `chat_message` VALUES (448, 2, 15, '123', 1, '2021-04-06 22:22:10', 1617718930255, NULL, NULL);
INSERT INTO `chat_message` VALUES (449, 2, 15, '1234', 1, '2021-04-06 22:23:19', 1617718999497, NULL, NULL);
INSERT INTO `chat_message` VALUES (450, 2, 15, '456', 1, '2021-04-06 22:30:50', 1617719450596, NULL, NULL);
INSERT INTO `chat_message` VALUES (451, 2, 15, '456', 1, '2021-04-06 22:30:54', 1617719454639, NULL, NULL);
INSERT INTO `chat_message` VALUES (452, 2, 15, '123', 1, '2021-04-06 22:30:58', 1617719458841, NULL, NULL);
INSERT INTO `chat_message` VALUES (453, 2, 15, '123', 1, '2021-04-18 10:16:51', 1618712211339, NULL, NULL);
INSERT INTO `chat_message` VALUES (454, 2, 10, '你好', 1, '2021-05-02 01:04:25', 1619888665682, 1, NULL);
INSERT INTO `chat_message` VALUES (455, 2, 22, '哈哈哈哈', 1, '2021-05-03 20:08:55', 1620043735468, 1, NULL);
INSERT INTO `chat_message` VALUES (456, 2, 22, '你好a1', 1, '2021-05-03 20:08:58', 1620043738794, 1, NULL);
INSERT INTO `chat_message` VALUES (457, 22, 2, '不好', 1, '2021-05-03 20:09:18', 1620043758180, 1, NULL);
INSERT INTO `chat_message` VALUES (458, 2, 15, '哈哈哈哈', 1, '2021-05-10 19:51:53', 1620647513544, NULL, NULL);
INSERT INTO `chat_message` VALUES (459, 2, 15, '不是吧你', 1, '2021-05-10 19:52:06', 1620647526455, NULL, NULL);
INSERT INTO `chat_message` VALUES (460, 2, 22, '123', 1, '2021-05-10 22:23:41', 1620656621470, NULL, NULL);
INSERT INTO `chat_message` VALUES (461, 2, 17, '哈哈哈', 1, '2021-05-16 16:38:17', 1621154297879, 1, NULL);
INSERT INTO `chat_message` VALUES (462, 2, 15, '30', 2, '2021-05-16 17:07:29', 1621156049125, NULL, NULL);
INSERT INTO `chat_message` VALUES (463, 2, 15, '3', 2, '2021-05-16 17:16:16', 1621156576697, NULL, NULL);
INSERT INTO `chat_message` VALUES (464, 2, 15, '1', 2, '2021-05-16 17:17:37', 1621156657486, NULL, NULL);
INSERT INTO `chat_message` VALUES (465, 2, 15, '16', 2, '2021-05-16 17:17:39', 1621156659894, NULL, NULL);
INSERT INTO `chat_message` VALUES (466, 2, 10, '3', 2, '2021-05-17 20:29:19', 1621254559287, 1, NULL);
INSERT INTO `chat_message` VALUES (467, 2, 15, '16', 2, '2021-05-22 17:40:12', 1621676412780, NULL, NULL);
INSERT INTO `chat_message` VALUES (468, 2, 15, '27', 2, '2021-05-22 17:40:18', 1621676418792, NULL, NULL);
INSERT INTO `chat_message` VALUES (469, 2, 21, '123', 1, '2021-05-22 17:41:24', 1621676484062, 1, NULL);
INSERT INTO `chat_message` VALUES (470, 2, 21, '123', 1, '2021-05-22 17:44:02', 1621676642360, 1, NULL);
INSERT INTO `chat_message` VALUES (471, 21, 2, '123', 1, '2021-05-22 18:00:16', 1621677616681, 1, NULL);
INSERT INTO `chat_message` VALUES (472, 21, 2, '11', 1, '2021-05-22 18:00:41', 1621677641974, 1, NULL);
INSERT INTO `chat_message` VALUES (473, 2, 21, '1', 1, '2021-05-22 18:02:39', 1621677759549, 1, NULL);
INSERT INTO `chat_message` VALUES (474, 21, 2, '你哈', 1, '2021-05-22 18:37:22', 1621679842540, 1, NULL);
INSERT INTO `chat_message` VALUES (475, 21, 2, '你', 1, '2021-05-22 18:37:45', 1621679865044, 1, NULL);
INSERT INTO `chat_message` VALUES (476, 21, 2, 'ni', 1, '2021-05-22 18:41:31', 1621680091804, 1, NULL);
INSERT INTO `chat_message` VALUES (477, 21, 2, '你', 1, '2021-05-22 18:43:53', 1621680233731, 1, NULL);
INSERT INTO `chat_message` VALUES (478, 21, 2, '你', 1, '2021-05-22 18:44:03', 1621680243754, 1, NULL);
INSERT INTO `chat_message` VALUES (479, 2, 21, '你', 1, '2021-05-22 18:44:34', 1621680274412, 1, NULL);
INSERT INTO `chat_message` VALUES (480, 21, 2, '你', 1, '2021-05-22 18:44:56', 1621680296139, 1, NULL);
INSERT INTO `chat_message` VALUES (481, 21, 2, '花海', 1, '2021-05-22 18:45:03', 1621680303012, 1, NULL);
INSERT INTO `chat_message` VALUES (482, 2, 21, '你', 1, '2021-05-22 18:45:16', 1621680316108, 1, NULL);
INSERT INTO `chat_message` VALUES (483, 2, 21, '额', 1, '2021-05-22 18:45:24', 1621680324772, 1, NULL);
INSERT INTO `chat_message` VALUES (484, 21, 2, '你是你咩', 1, '2021-05-22 18:50:39', 1621680639253, 1, NULL);
INSERT INTO `chat_message` VALUES (485, 21, 2, '5', 2, '2021-05-23 10:40:28', 1621737628557, 1, NULL);
INSERT INTO `chat_message` VALUES (486, 21, 2, '20', 2, '2021-05-23 10:40:38', 1621737638373, 1, NULL);
INSERT INTO `chat_message` VALUES (487, 2, 21, '22', 2, '2021-05-23 10:40:50', 1621737650760, 1, NULL);
INSERT INTO `chat_message` VALUES (488, 10, 2, 'nihao', 1, '2021-05-26 22:12:25', 1622038345805, 1, NULL);
INSERT INTO `chat_message` VALUES (489, 2, 10, '哈哈哈哈', 1, '2021-05-26 22:33:58', 1622039638650, 1, NULL);
INSERT INTO `chat_message` VALUES (490, 2, 10, '10', 2, '2021-05-26 22:34:01', 1622039641271, 1, NULL);
INSERT INTO `chat_message` VALUES (491, 2, 10, '无敌', 1, '2021-05-26 22:34:26', 1622039666561, 1, NULL);
INSERT INTO `chat_message` VALUES (492, 10, 2, '无敌', 1, '2021-05-26 22:34:39', 1622039679703, 1, NULL);
INSERT INTO `chat_message` VALUES (493, 2, 10, '36', 2, '2021-05-26 22:35:09', 1622039709765, 1, NULL);
INSERT INTO `chat_message` VALUES (494, 2, 10, '39', 2, '2021-05-26 22:35:12', 1622039712364, 1, NULL);
INSERT INTO `chat_message` VALUES (495, 2, 10, '1', 2, '2021-05-26 22:35:14', 1622039714633, 1, NULL);
INSERT INTO `chat_message` VALUES (496, 2, 10, '9', 2, '2021-05-26 22:35:18', 1622039718105, 1, NULL);
INSERT INTO `chat_message` VALUES (497, 2, 10, '3', 2, '2021-05-26 22:35:21', 1622039721990, 1, NULL);
INSERT INTO `chat_message` VALUES (498, 2, 10, '2', 2, '2021-05-26 22:35:23', 1622039723800, 1, NULL);
INSERT INTO `chat_message` VALUES (499, 2, 10, '11', 2, '2021-05-26 22:35:25', 1622039725775, 1, NULL);
INSERT INTO `chat_message` VALUES (500, 2, 10, '8', 2, '2021-05-26 22:35:27', 1622039727856, 1, NULL);
INSERT INTO `chat_message` VALUES (501, 2, 10, '10', 2, '2021-05-26 22:35:29', 1622039729831, 1, NULL);
INSERT INTO `chat_message` VALUES (502, 10, 2, '1', 1, '2021-05-26 22:36:04', 1622039764376, 1, NULL);
INSERT INTO `chat_message` VALUES (503, 10, 2, '2', 1, '2021-05-26 22:36:04', 1622039764968, 1, NULL);
INSERT INTO `chat_message` VALUES (504, 10, 2, '3', 1, '2021-05-26 22:36:05', 1622039765447, 1, NULL);
INSERT INTO `chat_message` VALUES (505, 10, 2, '4', 1, '2021-05-26 22:36:05', 1622039765880, 1, NULL);
INSERT INTO `chat_message` VALUES (506, 10, 2, '56', 1, '2021-05-26 22:36:06', 1622039766343, 1, NULL);
INSERT INTO `chat_message` VALUES (507, 10, 2, '7', 1, '2021-05-26 22:36:06', 1622039766760, 1, NULL);
INSERT INTO `chat_message` VALUES (508, 10, 2, '8', 1, '2021-05-26 22:36:07', 1622039767529, 1, NULL);
INSERT INTO `chat_message` VALUES (509, 10, 2, '90', 1, '2021-05-26 22:36:07', 1622039767909, 1, NULL);
INSERT INTO `chat_message` VALUES (510, 10, 2, '13', 1, '2021-05-26 22:36:09', 1622039769447, 1, NULL);
INSERT INTO `chat_message` VALUES (511, 10, 2, '1', 1, '2021-05-26 22:36:09', 1622039769655, 1, NULL);
INSERT INTO `chat_message` VALUES (512, 10, 2, '3', 1, '2021-05-26 22:36:09', 1622039769877, 1, NULL);
INSERT INTO `chat_message` VALUES (513, 10, 2, '1', 1, '2021-05-26 22:36:10', 1622039770086, 1, NULL);
INSERT INTO `chat_message` VALUES (514, 10, 2, '312', 1, '2021-05-26 22:36:10', 1622039770302, 1, NULL);
INSERT INTO `chat_message` VALUES (515, 10, 2, '3', 1, '2021-05-26 22:36:10', 1622039770517, 1, NULL);
INSERT INTO `chat_message` VALUES (516, 10, 2, '12', 1, '2021-05-26 22:36:10', 1622039770731, 1, NULL);
INSERT INTO `chat_message` VALUES (517, 10, 2, '31', 1, '2021-05-26 22:36:10', 1622039770981, 1, NULL);
INSERT INTO `chat_message` VALUES (518, 10, 2, '231', 1, '2021-05-26 22:36:11', 1622039771206, 1, NULL);
INSERT INTO `chat_message` VALUES (519, 10, 2, '信息发快了，有点卡这个页面', 1, '2021-05-26 22:36:48', 1622039808863, 1, NULL);
INSERT INTO `chat_message` VALUES (520, 2, 10, '哈哈哈哈', 1, '2021-05-26 22:53:43', 1622040823762, 1, NULL);
INSERT INTO `chat_message` VALUES (521, 2, 10, '大撒大撒dsad', 1, '2021-05-26 22:53:50', 1622040830578, 1, NULL);
INSERT INTO `chat_message` VALUES (522, 2, 10, 'sad', 1, '2021-05-26 22:53:50', 1622040830754, 1, NULL);
INSERT INTO `chat_message` VALUES (523, 2, 10, 'adasdasd', 1, '2021-05-26 22:53:51', 1622040831595, 1, NULL);
INSERT INTO `chat_message` VALUES (524, 2, 10, 'dasd', 1, '2021-05-26 22:53:51', 1622040831770, 1, NULL);
INSERT INTO `chat_message` VALUES (525, 2, 10, 'da\'s', 1, '2021-05-26 22:53:51', 1622040831937, 1, NULL);
INSERT INTO `chat_message` VALUES (526, 2, 10, 'asda\'s', 1, '2021-05-26 22:53:52', 1622040832118, 1, NULL);
INSERT INTO `chat_message` VALUES (527, 2, 10, 'asd', 1, '2021-05-26 22:53:52', 1622040832266, 1, NULL);
INSERT INTO `chat_message` VALUES (528, 2, 10, 'asd', 1, '2021-05-26 22:53:52', 1622040832427, 1, NULL);
INSERT INTO `chat_message` VALUES (529, 2, 10, 'da\'s', 1, '2021-05-26 22:53:52', 1622040832586, 1, NULL);
INSERT INTO `chat_message` VALUES (530, 2, 10, '而且好像有问题', 1, '2021-05-26 22:54:09', 1622040849209, 1, NULL);
INSERT INTO `chat_message` VALUES (531, 2, 21, '4', 2, '2021-07-04 20:18:49', 1625401129472, NULL, NULL);
INSERT INTO `chat_message` VALUES (532, 2, 21, '27', 2, '2021-07-04 20:18:51', 1625401131909, NULL, NULL);
INSERT INTO `chat_message` VALUES (533, 2, 21, 'dadaadada', 1, '2021-07-04 20:18:56', 1625401136015, NULL, NULL);
INSERT INTO `chat_message` VALUES (534, 24, 2, 'nihao1', 1, '2021-07-24 12:05:14', 1627099514569, 1, NULL);
INSERT INTO `chat_message` VALUES (535, 2, 24, 'ganma1', 1, '2021-07-24 12:05:18', 1627099518687, 1, NULL);
INSERT INTO `chat_message` VALUES (536, 2, 24, '7', 2, '2021-07-24 12:05:25', 1627099525499, 1, NULL);
INSERT INTO `chat_message` VALUES (537, 24, 2, '10', 2, '2021-07-24 12:05:40', 1627099540999, 1, NULL);
INSERT INTO `chat_message` VALUES (538, 2, 24, 'nihao1a1', 1, '2021-08-01 22:42:22', 1627828942801, 1, NULL);
INSERT INTO `chat_message` VALUES (539, 2, 24, 'dahduah1', 1, '2021-08-01 22:42:24', 1627828944182, 1, NULL);
INSERT INTO `chat_message` VALUES (540, 2, 24, 'dahjdak1', 1, '2021-08-01 22:42:25', 1627828945336, 1, NULL);
INSERT INTO `chat_message` VALUES (541, 2, 24, 'dasgdha1', 1, '2021-08-01 22:42:26', 1627828946431, 1, NULL);
INSERT INTO `chat_message` VALUES (542, 2, 24, 'dagshdja1', 1, '2021-08-01 22:42:27', 1627828947568, 1, NULL);
INSERT INTO `chat_message` VALUES (543, 2, 24, 'dasdgah1', 1, '2021-08-01 22:42:28', 1627828948759, 1, NULL);
INSERT INTO `chat_message` VALUES (544, 2, 24, '39', 2, '2021-08-22 19:52:11', 1629633131755, NULL, NULL);
INSERT INTO `chat_message` VALUES (545, 2, 16, '你', 1, '2021-09-19 19:44:27', 1632051867120, NULL, NULL);
INSERT INTO `chat_message` VALUES (546, 2, 24, '我', 1, '2021-09-19 19:46:11', 1632051971635, NULL, NULL);
INSERT INTO `chat_message` VALUES (547, 2, 16, '你', 1, '2021-09-19 19:46:22', 1632051982288, NULL, NULL);
INSERT INTO `chat_message` VALUES (548, 2, 24, '额', 1, '2021-09-19 19:48:40', 1632052120456, NULL, NULL);
INSERT INTO `chat_message` VALUES (549, 2, 24, '啊', 1, '2021-09-19 19:50:10', 1632052210332, NULL, NULL);
INSERT INTO `chat_message` VALUES (550, 2, 24, '啊', 1, '2021-09-19 20:14:34', 1632053674357, NULL, NULL);
INSERT INTO `chat_message` VALUES (551, 2, 16, '1', 1, '2021-09-19 20:14:42', 1632053682371, NULL, NULL);
INSERT INTO `chat_message` VALUES (552, 2, 10, '打', 1, '2021-09-19 20:15:15', 1632053715838, NULL, NULL);
INSERT INTO `chat_message` VALUES (553, 17, 2, '哈哈哈', 1, '2021-09-19 22:20:42', 1632061242862, 1, NULL);
INSERT INTO `chat_message` VALUES (554, 2, 17, '你好', 1, '2021-09-19 22:21:29', 1632061289371, 1, NULL);
INSERT INTO `chat_message` VALUES (555, 17, 2, '1', 1, '2021-09-19 22:24:44', 1632061484274, 1, NULL);
INSERT INTO `chat_message` VALUES (556, 2, 17, '你好', 1, '2021-10-23 15:32:16', 1634974336404, 1, NULL);
INSERT INTO `chat_message` VALUES (557, 2, 17, '啊', 1, '2021-10-23 15:32:26', 1634974346453, 1, NULL);
INSERT INTO `chat_message` VALUES (558, 2, 17, '你好', 1, '2021-10-23 15:32:57', 1634974377315, 1, NULL);
INSERT INTO `chat_message` VALUES (559, 2, 17, '你好', 1, '2021-10-23 15:36:08', 1634974568812, 1, NULL);
INSERT INTO `chat_message` VALUES (560, 17, 2, '10', 2, '2021-10-23 15:37:58', 1634974678491, 1, NULL);
INSERT INTO `chat_message` VALUES (561, 17, 2, '10', 2, '2021-10-23 15:38:12', 1634974692902, 1, NULL);
INSERT INTO `chat_message` VALUES (562, 17, 2, '你好', 1, '2021-10-23 15:41:20', 1634974880117, 1, NULL);
INSERT INTO `chat_message` VALUES (563, 2, 16, '大点哈圣诞节卡刷道具卡是多久啊回调接口', 1, '2021-10-28 22:08:03', 1635430083486, 0, NULL);
INSERT INTO `chat_message` VALUES (564, 2, 16, '短视的哈师大寄卡升级的哈师大卡刷道具卡大家ask大家还是考虑的', 1, '2021-10-28 22:10:27', 1635430226886, 0, NULL);
INSERT INTO `chat_message` VALUES (565, 2, 16, '阿', 1, '2021-10-28 22:12:27', 1635430346950, 0, NULL);
INSERT INTO `chat_message` VALUES (566, 2, 24, '1', 1, '2021-10-28 22:20:56', 1635430855758, 0, NULL);
INSERT INTO `chat_message` VALUES (567, 2, 16, '阿', 1, '2021-10-28 22:22:37', 1635430956984, 0, NULL);
INSERT INTO `chat_message` VALUES (568, 2, 16, '阿', 1, '2021-10-28 22:22:42', 1635430961541, 0, NULL);
INSERT INTO `chat_message` VALUES (569, 2, 16, '回合', 1, '2021-10-28 22:22:44', 1635430963807, 0, NULL);
INSERT INTO `chat_message` VALUES (570, 2, 16, '阿', 1, '2021-10-28 22:22:47', 1635430967068, 0, NULL);
INSERT INTO `chat_message` VALUES (571, 2, 24, '你是你是你是你是你是你是你是', 1, '2021-10-28 22:24:19', 1635431058731, 0, NULL);
INSERT INTO `chat_message` VALUES (572, 2, 10, '阿', 1, '2021-10-28 22:34:47', 1635431686693, 0, NULL);
INSERT INTO `chat_message` VALUES (573, 2, 17, '5', 2, '2021-11-29 20:12:21', 1638187940668, 0, NULL);
INSERT INTO `chat_message` VALUES (574, 55, 2, '你', 1, '2021-12-05 18:41:07', 1638700867405, 1, NULL);
INSERT INTO `chat_message` VALUES (575, 55, 2, '1', 1, '2021-12-05 18:41:15', 1638700875120, 1, NULL);
INSERT INTO `chat_message` VALUES (576, 55, 2, '123', 1, '2021-12-05 19:49:21', 1638704960819, 1, NULL);
INSERT INTO `chat_message` VALUES (577, 55, 2, '1', 1, '2021-12-05 19:55:21', 1638705321009, 1, NULL);
INSERT INTO `chat_message` VALUES (578, 55, 2, '1', 1, '2021-12-05 20:08:25', 1638706104706, 1, NULL);
INSERT INTO `chat_message` VALUES (579, 55, 2, '1', 1, '2021-12-05 20:08:49', 1638706128906, 1, NULL);
INSERT INTO `chat_message` VALUES (580, 55, 2, '123', 1, '2021-12-05 20:08:55', 1638706134670, 1, NULL);
INSERT INTO `chat_message` VALUES (581, 55, 2, '1', 1, '2021-12-05 20:10:23', 1638706222881, 1, NULL);
INSERT INTO `chat_message` VALUES (582, 55, 2, '1', 1, '2021-12-05 20:10:47', 1638706246726, 1, NULL);
INSERT INTO `chat_message` VALUES (583, 2, 55, '132', 1, '2021-12-05 20:21:06', 1638706866247, 1, NULL);
INSERT INTO `chat_message` VALUES (584, 2, 55, '1', 1, '2021-12-05 20:21:20', 1638706879586, 1, NULL);
INSERT INTO `chat_message` VALUES (585, 2, 55, '1', 1, '2021-12-05 20:21:34', 1638706894470, 1, NULL);
INSERT INTO `chat_message` VALUES (586, 2, 55, '1', 1, '2021-12-05 20:22:44', 1638706964055, 1, NULL);
INSERT INTO `chat_message` VALUES (587, 2, 55, '1', 1, '2021-12-05 20:23:18', 1638706998087, 1, NULL);
INSERT INTO `chat_message` VALUES (588, 55, 2, '1', 1, '2021-12-11 12:05:10', 1639195509634, 1, NULL);
INSERT INTO `chat_message` VALUES (589, 55, 2, '1', 1, '2021-12-11 12:05:19', 1639195519280, 1, NULL);
INSERT INTO `chat_message` VALUES (590, 2, 55, '1', 1, '2021-12-11 12:05:38', 1639195537681, 1, NULL);
INSERT INTO `chat_message` VALUES (591, 2, 55, '123', 1, '2021-12-11 12:05:39', 1639195539388, 1, NULL);
INSERT INTO `chat_message` VALUES (592, 55, 2, '10', 2, '2021-12-11 13:40:15', 1639201215453, 1, NULL);
INSERT INTO `chat_message` VALUES (593, 2, 55, '37', 2, '2021-12-11 13:40:21', 1639201221400, 1, NULL);
INSERT INTO `chat_message` VALUES (594, 55, 2, '20', 2, '2021-12-11 13:40:29', 1639201229142, 1, NULL);
INSERT INTO `chat_message` VALUES (595, 2, 55, '1', 1, '2021-12-11 13:40:38', 1639201237569, 1, NULL);
INSERT INTO `chat_message` VALUES (596, 55, 2, '你好', 1, '2021-12-11 17:01:22', 1639213282411, 1, NULL);
INSERT INTO `chat_message` VALUES (597, 55, 2, '啊哈哈哈', 1, '2021-12-11 17:01:30', 1639213290018, 1, NULL);
INSERT INTO `chat_message` VALUES (598, 55, 2, '啊', 1, '2021-12-11 17:01:35', 1639213295403, 1, NULL);
INSERT INTO `chat_message` VALUES (599, 55, 2, '1', 1, '2021-12-11 17:51:49', 1639216309411, 1, NULL);
INSERT INTO `chat_message` VALUES (600, 2, 55, '456', 1, '2021-12-11 17:51:57', 1639216317031, 1, NULL);
INSERT INTO `chat_message` VALUES (601, 55, 2, '1', 1, '2021-12-11 17:57:27', 1639216647177, 1, NULL);
INSERT INTO `chat_message` VALUES (602, 55, 2, '12', 1, '2021-12-11 17:58:45', 1639216724782, 1, NULL);
INSERT INTO `chat_message` VALUES (603, 55, 2, '1', 1, '2021-12-11 17:58:52', 1639216732133, 1, NULL);
INSERT INTO `chat_message` VALUES (604, 55, 2, '1', 1, '2021-12-11 18:00:04', 1639216804390, 1, NULL);
INSERT INTO `chat_message` VALUES (605, 55, 2, '1', 1, '2021-12-11 18:00:17', 1639216816766, 1, NULL);
INSERT INTO `chat_message` VALUES (606, 55, 2, '1', 1, '2021-12-11 18:00:44', 1639216844304, 1, NULL);
INSERT INTO `chat_message` VALUES (607, 55, 2, '1', 1, '2021-12-11 18:01:34', 1639216893517, 1, NULL);
INSERT INTO `chat_message` VALUES (608, 2, 55, '1', 1, '2021-12-11 18:01:38', 1639216898326, 1, NULL);
INSERT INTO `chat_message` VALUES (609, 55, 2, '7', 1, '2021-12-11 18:01:53', 1639216912779, 1, NULL);
INSERT INTO `chat_message` VALUES (610, 55, 2, '1', 1, '2021-12-11 18:02:22', 1639216942094, 1, NULL);
INSERT INTO `chat_message` VALUES (611, 55, 2, '1', 1, '2021-12-11 18:03:03', 1639216982755, 1, NULL);
INSERT INTO `chat_message` VALUES (612, 55, 2, '1', 1, '2021-12-15 20:02:57', 1639569777325, 1, NULL);
INSERT INTO `chat_message` VALUES (613, 55, 2, '1', 1, '2021-12-15 20:03:48', 1639569828097, 1, NULL);
INSERT INTO `chat_message` VALUES (614, 55, 2, '1', 1, '2021-12-15 20:05:30', 1639569930334, 1, NULL);
INSERT INTO `chat_message` VALUES (615, 55, 2, '8', 1, '2021-12-15 20:05:40', 1639569939719, 1, NULL);
INSERT INTO `chat_message` VALUES (616, 55, 2, '9', 1, '2021-12-15 20:05:43', 1639569943401, 1, NULL);
INSERT INTO `chat_message` VALUES (617, 55, 2, '1', 1, '2021-12-15 20:05:52', 1639569951652, 1, NULL);
INSERT INTO `chat_message` VALUES (618, 55, 2, '1', 1, '2022-01-15 15:56:09', 1642233369023, 1, NULL);
INSERT INTO `chat_message` VALUES (619, 2, 51, '你好啊', 1, '2022-02-13 15:22:05', 1644736924749, 1, NULL);
INSERT INTO `chat_message` VALUES (620, 2, 51, '我靠', 1, '2022-02-13 15:22:20', 1644736940383, 1, NULL);
INSERT INTO `chat_message` VALUES (621, 2, 51, '不回是吧', 1, '2022-02-13 15:22:27', 1644736946673, 1, NULL);
INSERT INTO `chat_message` VALUES (622, 51, 2, '？', 1, '2022-02-13 15:22:56', 1644736975825, 1, NULL);
INSERT INTO `chat_message` VALUES (623, 51, 2, '？', 1, '2022-02-13 15:22:57', 1644736977068, 1, NULL);
INSERT INTO `chat_message` VALUES (624, 51, 2, '？', 1, '2022-02-13 15:22:58', 1644736977602, 1, NULL);
INSERT INTO `chat_message` VALUES (625, 51, 2, '、、', 1, '2022-02-13 15:22:58', 1644736978194, 1, NULL);
INSERT INTO `chat_message` VALUES (626, 51, 2, '、/', 1, '2022-02-13 15:22:59', 1644736978702, 1, NULL);
INSERT INTO `chat_message` VALUES (627, 51, 2, '/、', 1, '2022-02-13 15:22:59', 1644736979207, 1, NULL);
INSERT INTO `chat_message` VALUES (628, 51, 2, '、？、', 1, '2022-02-13 15:23:00', 1644736979753, 1, NULL);
INSERT INTO `chat_message` VALUES (629, 51, 2, '？？？', 1, '2022-02-13 15:23:01', 1644736980978, 1, NULL);
INSERT INTO `chat_message` VALUES (630, 51, 2, '？', 1, '2022-02-13 15:23:02', 1644736981909, 1, NULL);
INSERT INTO `chat_message` VALUES (631, 51, 2, '表情包是装饰是吧', 1, '2022-02-13 15:23:18', 1644736997696, 1, NULL);
INSERT INTO `chat_message` VALUES (632, 51, 2, '发不出去啊', 1, '2022-02-13 15:23:21', 1644737001273, 1, NULL);
INSERT INTO `chat_message` VALUES (633, 51, 2, '发不出去啊', 1, '2022-02-13 15:23:27', 1644737007123, 1, NULL);
INSERT INTO `chat_message` VALUES (634, 2, 51, '我也发现这个bug了', 1, '2022-02-13 15:23:35', 1644737015449, 1, NULL);
INSERT INTO `chat_message` VALUES (635, 2, 51, '问题不大', 1, '2022-02-13 15:23:40', 1644737020113, 1, NULL);
INSERT INTO `chat_message` VALUES (636, 2, 51, '下个版本再来修', 1, '2022-02-13 15:23:45', 1644737025472, 1, NULL);
INSERT INTO `chat_message` VALUES (637, 51, 2, '聊天界面能不能独立一个小窗', 1, '2022-02-13 15:24:01', 1644737040854, 1, NULL);
INSERT INTO `chat_message` VALUES (638, 51, 2, '跟你聊天我怎么打游侠', 1, '2022-02-13 15:24:21', 1644737060706, 1, NULL);
INSERT INTO `chat_message` VALUES (639, 51, 2, '还不能发两行以上的子吗', 1, '2022-02-13 15:24:35', 1644737075037, 1, NULL);
INSERT INTO `chat_message` VALUES (640, 51, 2, '字', 1, '2022-02-13 15:24:41', 1644737080845, 1, NULL);
INSERT INTO `chat_message` VALUES (641, 2, 51, '顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', 1, '2022-02-13 15:24:44', 1644737084162, 1, NULL);
INSERT INTO `chat_message` VALUES (642, 2, 51, '你看我的就可以', 1, '2022-02-13 15:24:50', 1644737089536, 1, NULL);
INSERT INTO `chat_message` VALUES (643, 2, 51, '你会不会玩啊', 1, '2022-02-13 15:24:57', 1644737097233, 1, NULL);
INSERT INTO `chat_message` VALUES (644, 51, 2, '怎么我的就不行', 1, '2022-02-13 15:25:03', 1644737103210, 1, NULL);
INSERT INTO `chat_message` VALUES (645, 2, 51, '连打两行字都不会', 1, '2022-02-13 15:25:08', 1644737108274, 1, NULL);
INSERT INTO `chat_message` VALUES (646, 51, 2, '怎么玩', 1, '2022-02-13 15:25:14', 1644737113882, 1, NULL);
INSERT INTO `chat_message` VALUES (647, 51, 2, '王', 1, '2022-02-13 15:25:21', 1644737120682, 1, NULL);
INSERT INTO `chat_message` VALUES (648, 2, 51, '我也不知道', 1, '2022-02-13 15:25:21', 1644737120810, 1, NULL);
INSERT INTO `chat_message` VALUES (649, 2, 51, '到时候修一下', 1, '2022-02-13 15:25:31', 1644737131195, 1, NULL);
INSERT INTO `chat_message` VALUES (650, 2, 51, '有bug很正常的', 1, '2022-02-13 15:25:35', 1644737135482, 1, NULL);
INSERT INTO `chat_message` VALUES (651, 51, 2, '顶', 1, '2022-02-13 15:25:44', 1644737144428, 1, NULL);
INSERT INTO `chat_message` VALUES (652, 2, 51, '一个游戏没bug 那才不正常呢', 1, '2022-02-13 15:25:52', 1644737151982, 1, NULL);
INSERT INTO `chat_message` VALUES (653, 51, 2, '说的是', 1, '2022-02-13 15:26:01', 1644737160882, 1, NULL);
INSERT INTO `chat_message` VALUES (654, 51, 2, '聊天界面能不能独立一个小窗', 1, '2022-02-13 15:26:33', 1644737193241, 1, NULL);
INSERT INTO `chat_message` VALUES (655, 2, 51, '肯定可以啊', 1, '2022-02-13 15:26:53', 1644737213074, 1, NULL);
INSERT INTO `chat_message` VALUES (656, 2, 51, '看我要不要做了', 1, '2022-02-13 15:26:57', 1644737217145, 1, NULL);
INSERT INTO `chat_message` VALUES (657, 2, 51, '你是觉得整个都是弹窗比较好', 1, '2022-02-13 15:27:10', 1644737229917, 1, NULL);
INSERT INTO `chat_message` VALUES (658, 2, 51, '还是说只要单独聊天的界面一个弹窗', 1, '2022-02-13 15:27:28', 1644737248061, 1, NULL);
INSERT INTO `chat_message` VALUES (659, 51, 2, '神马', 1, '2022-02-13 15:27:32', 1644737252110, 1, NULL);
INSERT INTO `chat_message` VALUES (660, 51, 2, '有就可以了', 1, '2022-02-13 15:27:53', 1644737273233, 1, NULL);
INSERT INTO `chat_message` VALUES (661, 2, 51, '就是包含不包含左边的好友列表', 1, '2022-02-13 15:27:59', 1644737278715, 1, NULL);
INSERT INTO `chat_message` VALUES (662, 2, 51, '我觉得这个还是保留', 1, '2022-02-13 15:28:07', 1644737286580, 1, NULL);
INSERT INTO `chat_message` VALUES (663, 51, 2, '没有很纠结', 1, '2022-02-13 15:28:14', 1644737294393, 1, NULL);
INSERT INTO `chat_message` VALUES (664, 2, 51, '但是多加一个 就是在其他页面点击那个好友消息的时候', 1, '2022-02-13 15:28:24', 1644737304188, 1, NULL);
INSERT INTO `chat_message` VALUES (665, 2, 51, '弹窗', 1, '2022-02-13 15:28:32', 1644737311605, 1, NULL);
INSERT INTO `chat_message` VALUES (666, 2, 51, '1', 2, '2022-02-13 18:43:10', 1644748989986, 1, NULL);
INSERT INTO `chat_message` VALUES (667, 55, 2, '11', 1, '2022-02-18 21:36:11', 1645191370595, 1, 0);
INSERT INTO `chat_message` VALUES (668, 2, 55, '你好啊', 1, '2022-02-18 21:36:20', 1645191379724, 1, 0);
INSERT INTO `chat_message` VALUES (669, 55, 2, '我不好', 1, '2022-02-18 21:36:39', 1645191398501, 1, 0);
INSERT INTO `chat_message` VALUES (670, 55, 2, '444', 1, '2022-02-18 21:37:01', 1645191421091, 1, 0);
INSERT INTO `chat_message` VALUES (671, 55, 2, '888', 1, '2022-02-18 21:37:15', 1645191434834, 1, 0);
INSERT INTO `chat_message` VALUES (672, 2, 51, '10', 2, '2022-02-19 13:17:29', 1645247848874, 1, 0);
INSERT INTO `chat_message` VALUES (673, 2, 51, '7', 2, '2022-02-19 13:19:46', 1645247985691, 1, 0);
INSERT INTO `chat_message` VALUES (674, 2, 51, '1', 1, '2022-02-19 18:50:31', 1645267831018, 1, 0);
INSERT INTO `chat_message` VALUES (675, 2, 55, '你好啊', 1, '2022-02-19 19:09:33', 1645268972853, 1, 0);
INSERT INTO `chat_message` VALUES (676, 55, 2, '1', 1, '2022-02-19 19:10:20', 1645269020254, 1, 0);
INSERT INTO `chat_message` VALUES (677, 55, 2, '12', 1, '2022-02-19 19:10:39', 1645269038990, 1, 0);
INSERT INTO `chat_message` VALUES (678, 55, 2, '3', 2, '2022-03-03 21:47:25', 1646315245290, 1, 0);

-- ----------------------------
-- Table structure for checkpoint
-- ----------------------------
DROP TABLE IF EXISTS `checkpoint`;
CREATE TABLE `checkpoint`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关卡名称',
  `chapter` int(0) NOT NULL COMMENT '章节id',
  `orderNum` int(0) NOT NULL COMMENT '关卡顺序',
  `battleArray` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '阵容（已废弃）',
  `chapterName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '章节名称',
  `lv` int(0) NULL DEFAULT NULL COMMENT '关卡阵容等级（已废弃）'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkpoint
-- ----------------------------
INSERT INTO `checkpoint` VALUES (1, '第一关', 1, 1, '0,0,1,0,0', '剑之初试', 1);
INSERT INTO `checkpoint` VALUES (2, '第二关', 1, 2, '0,0,2,0,0', '剑之初试', 1);
INSERT INTO `checkpoint` VALUES (3, '第三关', 1, 3, '0,0,1,0,0', '剑之初试', 2);
INSERT INTO `checkpoint` VALUES (4, '第四关', 1, 4, '0,0,2,0,0', '剑之初试', 2);
INSERT INTO `checkpoint` VALUES (5, '第五关', 1, 5, '0,2,1,0,0', '剑之初试', 2);
INSERT INTO `checkpoint` VALUES (6, '第六关', 1, 6, '0,3,2,0,0', '剑之初试', 3);
INSERT INTO `checkpoint` VALUES (7, '第七关', 1, 7, '0,3,1,2,0', '剑之初试', 3);
INSERT INTO `checkpoint` VALUES (8, '第八关', 1, 8, '0,3,1,2,0', '剑之初试', 4);
INSERT INTO `checkpoint` VALUES (9, '第九关', 1, 9, '0,24,1,2,0', '剑之初试', 4);
INSERT INTO `checkpoint` VALUES (10, '第十关', 1, 10, '2,3,1,24,0', '剑之初试', 5);
INSERT INTO `checkpoint` VALUES (11, '第一关', 2, 11, '0,17,5,7,0', '冰与火', 5);
INSERT INTO `checkpoint` VALUES (12, '第二关', 2, 12, '13,17,4,7,0', '冰与火', 5);
INSERT INTO `checkpoint` VALUES (13, '第三关', 2, 13, '32,12,5,7,0', '冰与火', 6);
INSERT INTO `checkpoint` VALUES (14, '第四关', 2, 14, '30,41,4,7,0', '冰与火', 6);
INSERT INTO `checkpoint` VALUES (15, '第五关', 2, 15, '4,7,5,11,25', '冰与火', 7);
INSERT INTO `checkpoint` VALUES (16, '第六关', 2, 16, '9,7,4,27,29', '冰与火', 7);
INSERT INTO `checkpoint` VALUES (17, '第七关', 2, 17, '6,17,7,12,10', '冰与火', 8);
INSERT INTO `checkpoint` VALUES (18, '第八关', 2, 18, '13,7,25,17,21', '冰与火', 8);
INSERT INTO `checkpoint` VALUES (19, '第九关', 2, 19, '9,7,5,12,6', '冰与火', 9);
INSERT INTO `checkpoint` VALUES (20, '第十关', 2, 20, '6,7,4,41,5', '冰与火', 9);

-- ----------------------------
-- Table structure for checkpoint_detail
-- ----------------------------
DROP TABLE IF EXISTS `checkpoint_detail`;
CREATE TABLE `checkpoint_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `checkpoint_id` int(0) NULL DEFAULT NULL COMMENT '关卡id',
  `hero_id` int(0) NULL DEFAULT NULL COMMENT '英雄id',
  `hero_lv` int(0) NULL DEFAULT NULL COMMENT '英雄等级',
  `battle_array_num` int(0) NULL DEFAULT NULL COMMENT '阵容位置',
  `hero_star` int(0) NULL DEFAULT NULL COMMENT '英雄星级',
  `attribute_addition` int(0) NULL DEFAULT NULL COMMENT '属性加成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkpoint_detail
-- ----------------------------
INSERT INTO `checkpoint_detail` VALUES (1, 1, 1, 1, 2, 1, -50);
INSERT INTO `checkpoint_detail` VALUES (2, 2, 2, 1, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (3, 3, 1, 2, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (4, 4, 2, 2, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (5, 5, 1, 2, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (6, 5, 2, 2, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (7, 6, 3, 3, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (8, 6, 2, 3, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (9, 7, 3, 3, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (10, 7, 1, 3, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (11, 7, 2, 3, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (12, 8, 3, 4, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (13, 8, 1, 4, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (14, 8, 2, 4, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (15, 9, 24, 4, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (16, 9, 1, 4, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (17, 9, 2, 4, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (18, 10, 2, 5, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (19, 10, 3, 5, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (20, 10, 1, 5, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (21, 10, 24, 5, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (22, 11, 17, 5, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (23, 11, 5, 5, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (24, 11, 7, 5, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (25, 12, 13, 5, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (26, 12, 17, 5, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (27, 12, 4, 5, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (28, 12, 7, 5, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (29, 13, 32, 6, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (30, 13, 15, 6, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (31, 13, 5, 6, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (32, 13, 7, 6, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (33, 14, 30, 6, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (34, 14, 41, 6, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (35, 14, 4, 6, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (36, 14, 7, 6, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (37, 15, 4, 7, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (38, 15, 7, 7, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (39, 15, 5, 7, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (40, 15, 11, 7, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (41, 15, 25, 7, 4, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (42, 16, 9, 7, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (43, 16, 7, 7, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (44, 16, 4, 7, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (45, 16, 27, 7, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (46, 16, 29, 7, 4, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (47, 17, 6, 8, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (48, 17, 17, 8, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (49, 17, 7, 8, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (50, 17, 12, 8, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (51, 17, 10, 8, 4, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (52, 18, 13, 8, 0, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (53, 18, 7, 8, 1, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (54, 18, 25, 8, 2, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (55, 18, 17, 8, 3, 1, 0);
INSERT INTO `checkpoint_detail` VALUES (56, 18, 21, 8, 4, 1, 0);

-- ----------------------------
-- Table structure for checkpoint_reward
-- ----------------------------
DROP TABLE IF EXISTS `checkpoint_reward`;
CREATE TABLE `checkpoint_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `checkpoint_id` int(0) NOT NULL COMMENT '关卡id',
  `type` int(0) NOT NULL COMMENT '奖励类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '物品id',
  `num` int(0) NOT NULL COMMENT '物品数量',
  `random` double NULL DEFAULT NULL COMMENT '获取概率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkpoint_reward
-- ----------------------------
INSERT INTO `checkpoint_reward` VALUES (1, 1, 1, NULL, 5, 1);
INSERT INTO `checkpoint_reward` VALUES (2, 2, 1, NULL, 10, 1);
INSERT INTO `checkpoint_reward` VALUES (3, 3, 1, NULL, 15, 1);
INSERT INTO `checkpoint_reward` VALUES (4, 4, 1, NULL, 20, 1);
INSERT INTO `checkpoint_reward` VALUES (5, 5, 1, NULL, 25, 1);
INSERT INTO `checkpoint_reward` VALUES (6, 6, 1, NULL, 30, 1);
INSERT INTO `checkpoint_reward` VALUES (7, 7, 1, NULL, 35, 1);
INSERT INTO `checkpoint_reward` VALUES (8, 8, 1, NULL, 40, 1);
INSERT INTO `checkpoint_reward` VALUES (9, 9, 1, NULL, 45, 1);
INSERT INTO `checkpoint_reward` VALUES (10, 10, 1, NULL, 50, 1);
INSERT INTO `checkpoint_reward` VALUES (11, 1, 3, NULL, 100, 1);
INSERT INTO `checkpoint_reward` VALUES (12, 2, 3, NULL, 100, 1);
INSERT INTO `checkpoint_reward` VALUES (13, 3, 3, NULL, 120, 1);
INSERT INTO `checkpoint_reward` VALUES (14, 4, 3, NULL, 120, 1);
INSERT INTO `checkpoint_reward` VALUES (15, 5, 3, NULL, 150, 1);
INSERT INTO `checkpoint_reward` VALUES (16, 6, 3, NULL, 160, 1);
INSERT INTO `checkpoint_reward` VALUES (17, 7, 3, NULL, 160, 1);
INSERT INTO `checkpoint_reward` VALUES (18, 8, 3, NULL, 180, 1);
INSERT INTO `checkpoint_reward` VALUES (19, 9, 3, NULL, 180, 1);
INSERT INTO `checkpoint_reward` VALUES (20, 10, 3, NULL, 180, 1);
INSERT INTO `checkpoint_reward` VALUES (21, 5, 2, NULL, 10, 0.5);
INSERT INTO `checkpoint_reward` VALUES (22, 10, 2, NULL, 20, 0.5);
INSERT INTO `checkpoint_reward` VALUES (23, 11, 1, NULL, 55, 1);
INSERT INTO `checkpoint_reward` VALUES (24, 12, 1, NULL, 60, 1);
INSERT INTO `checkpoint_reward` VALUES (25, 13, 1, NULL, 65, 1);
INSERT INTO `checkpoint_reward` VALUES (26, 14, 1, NULL, 70, 1);
INSERT INTO `checkpoint_reward` VALUES (27, 15, 1, NULL, 75, 1);
INSERT INTO `checkpoint_reward` VALUES (28, 16, 1, NULL, 80, 1);
INSERT INTO `checkpoint_reward` VALUES (29, 17, 1, NULL, 85, 1);
INSERT INTO `checkpoint_reward` VALUES (30, 18, 1, NULL, 90, 1);
INSERT INTO `checkpoint_reward` VALUES (31, 19, 1, NULL, 95, 1);
INSERT INTO `checkpoint_reward` VALUES (32, 20, 1, NULL, 100, 1);
INSERT INTO `checkpoint_reward` VALUES (33, 11, 3, NULL, 200, 1);
INSERT INTO `checkpoint_reward` VALUES (34, 12, 3, NULL, 200, 1);
INSERT INTO `checkpoint_reward` VALUES (35, 13, 3, NULL, 220, 1);
INSERT INTO `checkpoint_reward` VALUES (36, 14, 3, NULL, 220, 1);
INSERT INTO `checkpoint_reward` VALUES (37, 15, 3, NULL, 240, 1);
INSERT INTO `checkpoint_reward` VALUES (38, 16, 3, NULL, 240, 1);
INSERT INTO `checkpoint_reward` VALUES (39, 17, 3, NULL, 260, 1);
INSERT INTO `checkpoint_reward` VALUES (40, 18, 3, NULL, 260, 1);
INSERT INTO `checkpoint_reward` VALUES (41, 19, 3, NULL, 280, 1);
INSERT INTO `checkpoint_reward` VALUES (42, 20, 3, NULL, 300, 1);
INSERT INTO `checkpoint_reward` VALUES (43, 15, 2, NULL, 30, 0.6);
INSERT INTO `checkpoint_reward` VALUES (44, 20, 2, NULL, 30, 0.6);

-- ----------------------------
-- Table structure for combat_record
-- ----------------------------
DROP TABLE IF EXISTS `combat_record`;
CREATE TABLE `combat_record`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) NOT NULL COMMENT '挑战者id',
  `challenged_id` int(0) NOT NULL COMMENT '被挑战者id',
  `combat_result` int(0) NOT NULL COMMENT '战斗结局  1 胜利 2 失败 3 平局',
  `record_time` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `score` int(0) NULL DEFAULT 0,
  `season_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of combat_record
-- ----------------------------


-- ----------------------------
-- Table structure for combat_record_detail
-- ----------------------------
DROP TABLE IF EXISTS `combat_record_detail`;
CREATE TABLE `combat_record_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `combat_record_id` int(0) NOT NULL COMMENT '战斗记录主键',
  `user_id` int(0) NOT NULL COMMENT '用户主键',
  `hero_id` int(0) NOT NULL COMMENT '英雄id',
  `hero_lv` int(0) NOT NULL COMMENT '英雄等级',
  `hero_star` int(0) NOT NULL COMMENT '英雄星级',
  `battle_num` int(0) NULL DEFAULT NULL COMMENT '阵容位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1782 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of combat_record_detail
-- ----------------------------
INSERT INTO `combat_record_detail` VALUES (1, 4, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (2, 4, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (3, 4, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (4, 4, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (5, 4, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (6, 4, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (7, 4, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (8, 4, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (9, 4, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (10, 4, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (11, 5, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (12, 5, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (13, 5, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (14, 5, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (15, 5, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (16, 5, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (17, 5, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (18, 5, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (19, 5, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (20, 5, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (21, 6, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (22, 6, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (23, 6, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (24, 6, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (25, 6, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (26, 6, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (27, 6, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (28, 7, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (29, 7, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (30, 7, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (31, 7, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (32, 7, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (33, 7, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (34, 7, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (35, 7, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (36, 7, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (37, 7, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (38, 8, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (39, 8, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (40, 8, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (41, 8, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (42, 8, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (43, 8, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (44, 8, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (45, 8, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (46, 8, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (47, 8, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (48, 9, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (49, 9, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (50, 9, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (51, 9, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (52, 9, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (53, 9, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (54, 9, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (55, 9, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (56, 9, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (57, 9, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (58, 10, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (59, 10, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (60, 10, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (61, 10, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (62, 10, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (63, 10, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (64, 10, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (65, 11, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (66, 11, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (67, 11, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (68, 11, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (69, 11, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (70, 11, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (71, 11, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (72, 11, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (73, 11, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (74, 11, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (75, 12, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (76, 12, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (77, 12, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (78, 12, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (79, 12, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (80, 12, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (81, 12, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (82, 12, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (83, 12, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (84, 12, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (85, 13, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (86, 13, 2, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (87, 13, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (88, 13, 2, 36, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (89, 13, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (90, 13, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (91, 13, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (92, 13, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (93, 13, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (94, 13, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (95, 14, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (96, 14, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (97, 14, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (98, 14, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (99, 14, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (100, 14, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (101, 14, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (102, 14, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (103, 14, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (104, 14, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (105, 15, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (106, 15, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (107, 15, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (108, 15, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (109, 15, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (110, 15, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (111, 15, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (112, 15, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (113, 15, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (114, 15, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (115, 16, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (116, 16, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (117, 16, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (118, 16, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (119, 16, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (120, 16, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (121, 16, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (122, 16, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (123, 16, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (124, 16, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (125, 17, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (126, 17, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (127, 17, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (128, 17, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (129, 17, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (130, 17, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (131, 17, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (132, 17, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (133, 17, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (134, 17, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (135, 18, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (136, 18, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (137, 18, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (138, 18, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (139, 18, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (140, 18, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (141, 18, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (142, 19, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (143, 19, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (144, 19, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (145, 19, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (146, 19, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (147, 19, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (148, 19, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (149, 19, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (150, 19, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (151, 19, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (152, 20, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (153, 20, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (154, 20, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (155, 20, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (156, 20, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (157, 20, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (158, 20, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (159, 20, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (160, 20, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (161, 20, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (162, 21, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (163, 21, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (164, 21, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (165, 21, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (166, 21, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (167, 21, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (168, 21, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (169, 21, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (170, 21, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (171, 21, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (172, 22, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (173, 22, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (174, 22, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (175, 22, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (176, 22, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (177, 22, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (178, 22, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (179, 22, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (180, 23, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (181, 23, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (182, 23, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (183, 23, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (184, 23, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (185, 23, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (186, 23, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (187, 24, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (188, 24, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (189, 24, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (190, 24, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (191, 24, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (192, 24, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (193, 24, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (194, 24, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (195, 24, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (196, 24, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (197, 25, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (198, 25, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (199, 25, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (200, 25, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (201, 25, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (202, 25, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (203, 25, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (204, 25, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (205, 26, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (206, 26, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (207, 26, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (208, 26, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (209, 26, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (210, 26, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (211, 26, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (212, 27, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (213, 27, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (214, 27, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (215, 27, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (216, 27, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (217, 27, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (218, 27, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (219, 27, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (220, 28, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (221, 28, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (222, 28, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (223, 28, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (224, 28, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (225, 28, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (226, 28, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (227, 28, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (228, 29, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (229, 29, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (230, 29, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (231, 29, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (232, 29, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (233, 29, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (234, 29, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (235, 29, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (236, 29, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (237, 29, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (238, 30, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (239, 30, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (240, 30, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (241, 30, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (242, 30, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (243, 30, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (244, 30, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (245, 30, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (246, 30, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (247, 30, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (248, 31, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (249, 31, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (250, 31, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (251, 31, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (252, 31, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (253, 31, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (254, 31, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (255, 31, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (256, 31, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (257, 31, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (258, 32, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (259, 32, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (260, 32, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (261, 32, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (262, 32, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (263, 32, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (264, 32, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (265, 32, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (266, 32, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (267, 32, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (268, 33, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (269, 33, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (270, 33, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (271, 33, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (272, 33, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (273, 33, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (274, 33, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (275, 33, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (276, 33, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (277, 33, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (278, 34, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (279, 34, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (280, 34, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (281, 34, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (282, 34, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (283, 34, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (284, 34, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (285, 34, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (286, 34, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (287, 34, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (288, 35, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (289, 35, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (290, 35, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (291, 35, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (292, 35, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (293, 35, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (294, 35, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (295, 35, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (296, 35, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (297, 35, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (298, 36, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (299, 36, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (300, 36, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (301, 36, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (302, 36, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (303, 36, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (304, 36, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (305, 36, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (306, 37, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (307, 37, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (308, 37, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (309, 37, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (310, 37, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (311, 37, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (312, 37, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (313, 37, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (314, 37, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (315, 37, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (316, 38, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (317, 38, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (318, 38, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (319, 38, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (320, 38, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (321, 38, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (322, 38, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (323, 38, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (324, 38, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (325, 38, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (326, 39, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (327, 39, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (328, 39, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (329, 39, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (330, 39, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (331, 39, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (332, 39, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (333, 39, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (334, 39, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (335, 39, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (336, 40, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (337, 40, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (338, 40, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (339, 40, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (340, 40, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (341, 40, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (342, 40, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (343, 40, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (344, 40, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (345, 40, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (346, 41, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (347, 41, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (348, 41, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (349, 41, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (350, 41, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (351, 41, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (352, 41, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (353, 41, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (354, 41, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (355, 41, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (356, 42, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (357, 42, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (358, 42, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (359, 42, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (360, 42, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (361, 42, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (362, 42, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (363, 42, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (364, 42, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (365, 42, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (366, 43, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (367, 43, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (368, 43, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (369, 43, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (370, 43, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (371, 43, 2, 6, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (372, 43, 2, 17, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (373, 43, 2, 4, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (374, 43, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (375, 43, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (376, 44, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (377, 44, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (378, 44, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (379, 44, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (380, 44, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (381, 44, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (382, 44, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (383, 44, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (384, 44, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (385, 44, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (386, 45, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (387, 45, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (388, 45, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (389, 45, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (390, 45, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (391, 45, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (392, 45, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (393, 46, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (394, 46, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (395, 46, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (396, 46, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (397, 46, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (398, 46, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (399, 46, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (400, 47, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (401, 47, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (402, 47, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (403, 47, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (404, 47, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (405, 47, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (406, 47, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (407, 48, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (408, 48, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (409, 48, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (410, 48, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (411, 48, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (412, 48, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (413, 48, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (414, 49, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (415, 49, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (416, 49, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (417, 49, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (418, 49, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (419, 49, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (420, 49, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (421, 49, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (422, 49, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (423, 49, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (424, 50, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (425, 50, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (426, 50, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (427, 50, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (428, 50, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (429, 50, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (430, 50, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (431, 50, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (432, 50, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (433, 50, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (434, 51, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (435, 51, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (436, 51, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (437, 51, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (438, 51, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (439, 51, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (440, 51, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (441, 51, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (442, 52, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (443, 52, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (444, 52, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (445, 52, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (446, 52, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (447, 52, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (448, 52, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (449, 52, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (450, 52, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (451, 52, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (452, 53, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (453, 53, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (454, 53, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (455, 53, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (456, 53, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (457, 53, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (458, 53, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (459, 53, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (460, 54, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (461, 54, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (462, 54, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (463, 54, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (464, 54, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (465, 54, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (466, 54, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (467, 54, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (468, 54, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (469, 54, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (470, 55, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (471, 55, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (472, 55, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (473, 55, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (474, 55, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (475, 55, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (476, 55, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (477, 55, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (478, 55, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (479, 55, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (480, 56, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (481, 56, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (482, 56, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (483, 56, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (484, 56, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (485, 56, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (486, 56, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (487, 56, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (488, 56, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (489, 56, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (490, 57, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (491, 57, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (492, 57, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (493, 57, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (494, 57, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (495, 57, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (496, 57, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (497, 57, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (498, 57, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (499, 57, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (500, 58, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (501, 58, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (502, 58, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (503, 58, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (504, 58, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (505, 58, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (506, 58, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (507, 58, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (508, 58, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (509, 58, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (510, 59, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (511, 59, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (512, 59, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (513, 59, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (514, 59, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (515, 59, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (516, 59, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (517, 59, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (518, 59, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (519, 59, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (520, 60, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (521, 60, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (522, 60, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (523, 60, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (524, 60, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (525, 60, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (526, 60, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (527, 60, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (528, 60, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (529, 60, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (530, 61, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (531, 61, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (532, 61, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (533, 61, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (534, 61, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (535, 61, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (536, 61, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (537, 61, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (538, 61, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (539, 61, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (540, 62, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (541, 62, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (542, 62, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (543, 62, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (544, 62, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (545, 62, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (546, 62, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (547, 62, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (548, 62, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (549, 62, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (550, 63, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (551, 63, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (552, 63, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (553, 63, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (554, 63, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (555, 63, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (556, 63, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (557, 63, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (558, 63, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (559, 63, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (560, 64, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (561, 64, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (562, 64, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (563, 64, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (564, 64, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (565, 64, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (566, 64, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (567, 64, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (568, 64, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (569, 64, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (570, 65, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (571, 65, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (572, 65, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (573, 65, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (574, 65, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (575, 65, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (576, 65, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (577, 65, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (578, 65, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (579, 65, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (580, 66, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (581, 66, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (582, 66, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (583, 66, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (584, 66, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (585, 66, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (586, 66, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (587, 66, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (588, 66, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (589, 66, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (590, 67, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (591, 67, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (592, 67, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (593, 67, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (594, 67, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (595, 67, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (596, 67, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (597, 67, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (598, 68, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (599, 68, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (600, 68, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (601, 68, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (602, 68, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (603, 68, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (604, 68, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (605, 68, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (606, 68, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (607, 68, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (608, 69, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (609, 69, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (610, 69, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (611, 69, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (612, 69, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (613, 69, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (614, 69, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (615, 69, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (616, 69, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (617, 69, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (618, 70, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (619, 70, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (620, 70, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (621, 70, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (622, 70, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (623, 70, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (624, 70, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (625, 70, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (626, 70, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (627, 70, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (628, 71, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (629, 71, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (630, 71, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (631, 71, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (632, 71, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (633, 71, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (634, 71, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (635, 71, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (636, 71, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (637, 71, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (638, 72, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (639, 72, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (640, 72, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (641, 72, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (642, 72, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (643, 72, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (644, 72, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (645, 73, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (646, 73, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (647, 73, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (648, 73, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (649, 73, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (650, 73, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (651, 73, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (652, 73, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (653, 73, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (654, 73, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (655, 74, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (656, 74, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (657, 74, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (658, 74, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (659, 74, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (660, 74, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (661, 74, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (662, 74, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (663, 74, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (664, 74, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (665, 75, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (666, 75, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (667, 75, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (668, 75, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (669, 75, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (670, 75, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (671, 75, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (672, 75, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (673, 75, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (674, 75, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (675, 76, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (676, 76, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (677, 76, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (678, 76, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (679, 76, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (680, 76, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (681, 76, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (682, 76, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (683, 76, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (684, 76, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (685, 77, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (686, 77, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (687, 77, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (688, 77, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (689, 77, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (690, 77, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (691, 77, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (692, 77, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (693, 78, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (694, 78, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (695, 78, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (696, 78, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (697, 78, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (698, 78, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (699, 78, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (700, 78, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (701, 78, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (702, 78, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (703, 79, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (704, 79, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (705, 79, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (706, 79, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (707, 79, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (708, 79, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (709, 79, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (710, 79, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (711, 79, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (712, 79, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (713, 80, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (714, 80, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (715, 80, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (716, 80, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (717, 80, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (718, 80, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (719, 80, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (720, 80, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (721, 81, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (722, 81, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (723, 81, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (724, 81, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (725, 81, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (726, 81, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (727, 81, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (728, 81, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (729, 81, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (730, 81, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (731, 82, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (732, 82, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (733, 82, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (734, 82, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (735, 82, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (736, 82, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (737, 82, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (738, 82, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (739, 82, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (740, 82, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (741, 83, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (742, 83, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (743, 83, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (744, 83, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (745, 83, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (746, 83, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (747, 83, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (748, 83, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (749, 83, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (750, 83, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (751, 84, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (752, 84, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (753, 84, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (754, 84, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (755, 84, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (756, 84, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (757, 84, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (758, 84, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (759, 84, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (760, 84, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (761, 85, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (762, 85, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (763, 85, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (764, 85, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (765, 85, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (766, 85, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (767, 85, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (768, 85, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (769, 85, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (770, 85, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (771, 86, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (772, 86, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (773, 86, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (774, 86, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (775, 86, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (776, 86, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (777, 86, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (778, 87, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (779, 87, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (780, 87, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (781, 87, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (782, 87, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (783, 87, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (784, 87, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (785, 87, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (786, 87, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (787, 87, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (788, 88, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (789, 88, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (790, 88, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (791, 88, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (792, 88, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (793, 88, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (794, 88, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (795, 88, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (796, 88, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (797, 88, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (798, 89, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (799, 89, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (800, 89, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (801, 89, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (802, 89, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (803, 89, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (804, 89, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (805, 89, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (806, 90, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (807, 90, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (808, 90, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (809, 90, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (810, 90, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (811, 90, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (812, 90, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (813, 90, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (814, 91, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (815, 91, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (816, 91, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (817, 91, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (818, 91, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (819, 91, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (820, 91, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (821, 91, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (822, 91, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (823, 91, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (824, 92, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (825, 92, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (826, 92, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (827, 92, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (828, 92, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (829, 92, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (830, 92, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (831, 93, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (832, 93, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (833, 93, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (834, 93, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (835, 93, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (836, 93, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (837, 93, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (838, 93, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (839, 93, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (840, 93, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (841, 94, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (842, 94, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (843, 94, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (844, 94, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (845, 94, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (846, 94, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (847, 94, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (848, 94, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (849, 94, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (850, 94, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (851, 95, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (852, 95, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (853, 95, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (854, 95, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (855, 95, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (856, 95, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (857, 95, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (858, 95, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (859, 95, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (860, 95, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (861, 96, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (862, 96, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (863, 96, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (864, 96, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (865, 96, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (866, 96, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (867, 96, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (868, 97, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (869, 97, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (870, 97, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (871, 97, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (872, 97, 2, 1, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (873, 97, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (874, 97, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (875, 97, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (876, 97, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (877, 97, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (878, 98, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (879, 98, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (880, 98, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (881, 98, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (882, 98, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (883, 98, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (884, 98, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (885, 98, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (886, 98, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (887, 98, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (888, 99, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (889, 99, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (890, 99, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (891, 99, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (892, 99, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (893, 99, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (894, 99, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (895, 100, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (896, 100, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (897, 100, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (898, 100, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (899, 100, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (900, 100, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (901, 100, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (902, 100, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (903, 101, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (904, 101, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (905, 101, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (906, 101, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (907, 101, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (908, 101, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (909, 101, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (910, 101, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (911, 101, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (912, 101, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (913, 102, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (914, 102, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (915, 102, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (916, 102, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (917, 102, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (918, 102, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (919, 102, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (920, 103, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (921, 103, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (922, 103, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (923, 103, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (924, 103, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (925, 103, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (926, 103, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (927, 103, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (928, 103, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (929, 103, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (930, 104, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (931, 104, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (932, 104, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (933, 104, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (934, 104, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (935, 104, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (936, 104, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (937, 104, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (938, 104, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (939, 104, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (940, 105, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (941, 105, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (942, 105, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (943, 105, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (944, 105, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (945, 105, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (946, 105, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (947, 105, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (948, 106, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (949, 106, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (950, 106, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (951, 106, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (952, 106, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (953, 106, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (954, 106, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (955, 106, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (956, 107, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (957, 107, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (958, 107, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (959, 107, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (960, 107, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (961, 107, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (962, 107, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (963, 107, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (964, 108, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (965, 108, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (966, 108, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (967, 108, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (968, 108, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (969, 108, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (970, 108, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (971, 108, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (972, 108, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (973, 108, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (974, 109, 10, 1, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (975, 109, 10, 17, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (976, 109, 10, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (977, 109, 10, 33, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (978, 109, 10, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (979, 109, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (980, 109, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (981, 109, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (982, 109, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (983, 109, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (984, 110, 10, 1, 12, 2, 0);
INSERT INTO `combat_record_detail` VALUES (985, 110, 10, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (986, 110, 10, 28, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (987, 110, 10, 33, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (988, 110, 10, 38, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (989, 110, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (990, 110, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (991, 110, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (992, 110, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (993, 110, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (994, 111, 10, 1, 12, 2, 0);
INSERT INTO `combat_record_detail` VALUES (995, 111, 10, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (996, 111, 10, 28, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (997, 111, 10, 33, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (998, 111, 10, 38, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (999, 111, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1000, 111, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1001, 111, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1002, 112, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1003, 112, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1004, 112, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1005, 112, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1006, 112, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1007, 112, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1008, 112, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1009, 113, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1010, 113, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1011, 113, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1012, 113, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1013, 113, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1014, 113, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1015, 113, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1016, 113, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1017, 113, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1018, 113, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1019, 114, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1020, 114, 2, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1021, 114, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1022, 114, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1023, 114, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1024, 114, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1025, 114, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1026, 114, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1027, 114, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1028, 114, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1029, 115, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1030, 115, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1031, 115, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1032, 115, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1033, 115, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1034, 115, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1035, 116, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1036, 116, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1037, 116, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1038, 116, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1039, 116, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1040, 116, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1041, 117, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1042, 117, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1043, 117, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1044, 117, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1045, 117, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1046, 117, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1047, 118, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1048, 118, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1049, 118, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1050, 118, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1051, 118, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1052, 118, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1053, 119, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1054, 119, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1055, 119, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1056, 119, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1057, 119, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1058, 119, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1059, 120, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1060, 120, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1061, 120, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1062, 120, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1063, 120, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1064, 120, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1065, 121, 16, 6, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1066, 121, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1067, 121, 16, 8, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1068, 121, 16, 23, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1069, 121, 16, 39, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1070, 121, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1071, 122, 16, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1072, 122, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1073, 123, 16, 29, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1074, 123, 2, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1075, 124, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1076, 124, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1077, 124, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1078, 124, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1079, 124, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1080, 124, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1081, 124, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1082, 124, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1083, 124, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1084, 124, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1085, 125, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1086, 125, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1087, 125, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1088, 125, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1089, 125, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1090, 125, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1091, 125, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1092, 126, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1093, 126, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1094, 126, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1095, 126, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1096, 126, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1097, 126, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1098, 126, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1099, 126, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1100, 126, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1101, 126, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1102, 127, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1103, 127, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1104, 127, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1105, 127, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1106, 127, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1107, 127, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1108, 127, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1109, 127, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1110, 128, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1111, 128, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1112, 128, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1113, 128, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1114, 128, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1115, 128, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1116, 128, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1117, 128, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1118, 128, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1119, 128, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1120, 129, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1121, 129, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1122, 129, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1123, 129, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1124, 129, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1125, 129, 16, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1126, 130, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1127, 130, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1128, 130, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1129, 130, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1130, 130, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1131, 130, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1132, 130, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1133, 130, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1134, 130, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1135, 130, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1136, 131, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1137, 131, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1138, 131, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1139, 131, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1140, 131, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1141, 131, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1142, 131, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1143, 132, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1144, 132, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1145, 132, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1146, 132, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1147, 132, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1148, 132, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1149, 132, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1150, 132, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1151, 132, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1152, 132, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1153, 133, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1154, 133, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1155, 133, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1156, 133, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1157, 133, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1158, 133, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1159, 133, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1160, 133, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1161, 133, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1162, 133, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1163, 134, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1164, 134, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1165, 134, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1166, 134, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1167, 134, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1168, 134, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1169, 134, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1170, 135, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1171, 135, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1172, 135, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1173, 135, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1174, 135, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1175, 135, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1176, 135, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1177, 135, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1178, 135, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1179, 135, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1180, 136, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1181, 136, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1182, 136, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1183, 136, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1184, 136, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1185, 136, 10, 1, 12, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1186, 136, 10, 17, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1187, 136, 10, 28, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1188, 136, 10, 33, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1189, 136, 10, 38, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1190, 137, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1191, 137, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1192, 137, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1193, 137, 2, 41, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1194, 137, 2, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1195, 137, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1196, 138, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1197, 138, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1198, 138, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1199, 138, 2, 41, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1200, 138, 2, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1201, 138, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1202, 138, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1203, 138, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1204, 138, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1205, 138, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1206, 139, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1207, 139, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1208, 139, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1209, 139, 2, 41, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1210, 139, 2, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1211, 139, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1212, 140, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1213, 140, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1214, 140, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1215, 140, 2, 29, 3, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1216, 140, 2, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1217, 140, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1218, 141, 2, 7, 7, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1219, 141, 2, 5, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1220, 141, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1221, 141, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1222, 141, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1223, 142, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1224, 142, 2, 17, 10, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1225, 142, 2, 4, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1226, 142, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1227, 142, 2, 6, 13, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1228, 142, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1229, 142, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1230, 142, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1231, 142, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1232, 142, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1233, 143, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1234, 143, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1235, 143, 2, 20, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1236, 143, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1237, 143, 2, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1238, 143, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1239, 143, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1240, 144, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1241, 144, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1242, 144, 2, 20, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1243, 144, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1244, 144, 2, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1245, 144, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1246, 144, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1247, 144, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1248, 144, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1249, 144, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1250, 145, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1251, 145, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1252, 145, 2, 20, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1253, 145, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1254, 145, 2, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1255, 145, 22, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1256, 145, 22, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1257, 145, 22, 4, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1258, 145, 22, 35, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1259, 145, 22, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1260, 146, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1261, 146, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1262, 146, 2, 20, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1263, 146, 2, 36, 11, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1264, 146, 2, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1265, 146, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1266, 146, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1267, 146, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1268, 146, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1269, 146, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1270, 147, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1271, 147, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1272, 147, 2, 20, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1273, 147, 2, 27, 5, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1274, 147, 2, 21, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1275, 147, 30, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1276, 147, 30, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1277, 148, 2, 1, 18, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1278, 148, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1279, 148, 2, 20, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1280, 148, 2, 27, 5, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1281, 148, 2, 21, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1282, 148, 25, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1283, 149, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1284, 149, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1285, 149, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1286, 149, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1287, 149, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1288, 149, 10, 1, 14, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1289, 149, 10, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1290, 149, 10, 7, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1291, 149, 10, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1292, 149, 10, 38, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1293, 150, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1294, 150, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1295, 150, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1296, 150, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1297, 150, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1298, 150, 27, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1299, 151, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1300, 151, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1301, 151, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1302, 151, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1303, 151, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1304, 151, 30, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1305, 151, 30, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1306, 152, 17, 23, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1307, 152, 17, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1308, 152, 17, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1309, 152, 17, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1310, 152, 17, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1311, 152, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1312, 153, 48, 31, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1313, 153, 48, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1314, 153, 48, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1315, 153, 48, 13, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1316, 153, 48, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1317, 153, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1318, 153, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1319, 154, 2, 1, 19, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1320, 154, 2, 27, 6, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1321, 154, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1322, 154, 2, 7, 7, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1323, 154, 2, 21, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1324, 154, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1325, 154, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1326, 154, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1327, 154, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1328, 154, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1329, 155, 2, 1, 19, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1330, 155, 2, 27, 6, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1331, 155, 2, 34, 1, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1332, 155, 2, 7, 7, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1333, 155, 2, 21, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1334, 155, 25, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1335, 156, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1336, 156, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1337, 156, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1338, 156, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1339, 156, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1340, 157, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1341, 157, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1342, 157, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1343, 157, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1344, 157, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1345, 157, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1346, 158, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1347, 158, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1348, 158, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1349, 158, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1350, 158, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1351, 158, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1352, 159, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1353, 159, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1354, 159, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1355, 159, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1356, 159, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1357, 159, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1358, 160, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1359, 160, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1360, 160, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1361, 160, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1362, 160, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1363, 160, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1364, 161, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1365, 161, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1366, 161, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1367, 161, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1368, 161, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1369, 161, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1370, 162, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1371, 162, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1372, 162, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1373, 162, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1374, 162, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1375, 162, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1376, 163, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1377, 163, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1378, 163, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1379, 163, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1380, 163, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1381, 163, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1382, 164, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1383, 164, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1384, 164, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1385, 164, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1386, 164, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1387, 164, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1388, 165, 2, 1, 19, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1389, 165, 2, 27, 6, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1390, 165, 2, 34, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1391, 165, 2, 7, 7, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1392, 165, 2, 21, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1393, 165, 39, 26, 1, 0, 0);
INSERT INTO `combat_record_detail` VALUES (1394, 166, 2, 1, 19, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1395, 166, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1396, 166, 2, 2, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1397, 166, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1398, 166, 2, 6, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1399, 166, 18, 28, 22, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1400, 166, 18, 25, 14, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1401, 166, 18, 18, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1402, 166, 18, 36, 8, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1403, 166, 18, 37, 9, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1404, 167, 2, 1, 19, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1405, 167, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1406, 167, 2, 2, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1407, 167, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1408, 167, 2, 6, 13, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1409, 167, 22, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1410, 167, 22, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1411, 167, 22, 4, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1412, 167, 22, 35, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1413, 167, 22, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1414, 168, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1415, 168, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1416, 168, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1417, 168, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1418, 168, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1419, 168, 21, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1420, 168, 21, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1421, 168, 21, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1422, 168, 21, 39, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1423, 168, 21, 3, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1424, 169, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1425, 169, 2, 7, 8, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1426, 169, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1427, 169, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1428, 169, 2, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1429, 169, 21, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1430, 169, 21, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1431, 169, 21, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1432, 169, 21, 39, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1433, 169, 21, 3, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1434, 170, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1435, 170, 2, 7, 8, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1436, 170, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1437, 170, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1438, 170, 2, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1439, 170, 24, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1440, 170, 24, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1441, 170, 24, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1442, 170, 24, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1443, 170, 24, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1444, 171, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1445, 171, 2, 7, 8, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1446, 171, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1447, 171, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1448, 171, 2, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1449, 171, 26, 15, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1450, 172, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1451, 172, 2, 7, 8, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1452, 172, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1453, 172, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1454, 172, 2, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1455, 172, 15, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1456, 172, 15, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1457, 172, 15, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1458, 173, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1459, 173, 2, 7, 8, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1460, 173, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1461, 173, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1462, 173, 2, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1463, 173, 50, 39, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1464, 173, 50, 11, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1465, 173, 50, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1466, 174, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1467, 174, 2, 7, 8, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1468, 174, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1469, 174, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1470, 174, 2, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1471, 174, 51, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1472, 174, 51, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1473, 174, 51, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1474, 174, 51, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1475, 174, 51, 38, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1476, 175, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1477, 175, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1478, 175, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1479, 175, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1480, 175, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1481, 175, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1482, 175, 2, 7, 8, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1483, 175, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1484, 175, 2, 33, 2, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1485, 175, 2, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1486, 176, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1487, 176, 2, 7, 16, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1488, 176, 2, 1, 19, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1489, 176, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1490, 176, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1491, 176, 22, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1492, 176, 22, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1493, 176, 22, 4, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1494, 176, 22, 35, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1495, 176, 22, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1496, 177, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1497, 177, 2, 7, 16, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1498, 177, 2, 1, 19, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1499, 177, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1500, 177, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1501, 177, 24, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1502, 177, 24, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1503, 177, 24, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1504, 177, 24, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1505, 177, 24, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1506, 178, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1507, 178, 2, 7, 16, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1508, 178, 2, 1, 19, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1509, 178, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1510, 178, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1511, 178, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1512, 178, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1513, 179, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1514, 179, 2, 7, 16, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1515, 179, 2, 1, 19, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1516, 179, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1517, 179, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1518, 179, 26, 15, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1519, 180, 2, 4, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1520, 180, 2, 7, 16, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1521, 180, 2, 1, 19, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1522, 180, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1523, 180, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1524, 180, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1525, 180, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1526, 180, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1527, 180, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1528, 180, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1529, 181, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1530, 181, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1531, 181, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1532, 181, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1533, 181, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1534, 181, 30, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1535, 181, 30, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1536, 182, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1537, 182, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1538, 182, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1539, 182, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1540, 182, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1541, 182, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1542, 182, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1543, 182, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1544, 182, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1545, 182, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1546, 183, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1547, 183, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1548, 183, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1549, 183, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1550, 183, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1551, 183, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1552, 183, 6, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1553, 183, 6, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1554, 183, 6, 18, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1555, 183, 6, 6, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1556, 184, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1557, 184, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1558, 184, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1559, 184, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1560, 184, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1561, 184, 48, 31, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1562, 184, 48, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1563, 184, 48, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1564, 184, 48, 13, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1565, 184, 48, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1566, 185, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1567, 185, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1568, 185, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1569, 185, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1570, 185, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1571, 185, 22, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1572, 185, 22, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1573, 185, 22, 4, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1574, 185, 22, 35, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1575, 185, 22, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1576, 186, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1577, 186, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1578, 186, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1579, 186, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1580, 186, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1581, 186, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1582, 186, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1583, 186, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1584, 186, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1585, 186, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1586, 187, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1587, 187, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1588, 187, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1589, 187, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1590, 187, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1591, 187, 30, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1592, 187, 30, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1593, 188, 51, 21, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1594, 188, 51, 8, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1595, 188, 51, 6, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1596, 188, 51, 20, 6, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1597, 188, 51, 13, 5, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1598, 188, 30, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1599, 188, 30, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1600, 189, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1601, 189, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1602, 189, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1603, 189, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1604, 189, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1605, 189, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1606, 189, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1607, 189, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1608, 189, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1609, 189, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1610, 190, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1611, 190, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1612, 190, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1613, 190, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1614, 190, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1615, 190, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1616, 191, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1617, 191, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1618, 191, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1619, 191, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1620, 191, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1621, 191, 30, 34, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1622, 191, 30, 27, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1623, 192, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1624, 192, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1625, 192, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1626, 192, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1627, 192, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1628, 192, 16, 12, 10, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1629, 193, 55, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1630, 193, 55, 8, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1631, 193, 55, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1632, 193, 55, 24, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1633, 193, 55, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1634, 193, 24, 28, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1635, 193, 24, 36, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1636, 193, 24, 22, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1637, 193, 24, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1638, 193, 24, 40, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1639, 194, 57, 13, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1640, 194, 57, 16, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1641, 194, 57, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1642, 194, 57, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1643, 194, 10, 1, 14, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1644, 194, 10, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1645, 194, 10, 7, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1646, 194, 10, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1647, 194, 10, 38, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1648, 195, 57, 13, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1649, 195, 57, 16, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1650, 195, 57, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1651, 195, 57, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1652, 195, 51, 21, 14, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1653, 195, 51, 8, 15, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1654, 195, 51, 6, 14, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1655, 195, 51, 20, 15, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1656, 195, 51, 13, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1657, 196, 2, 13, 20, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1658, 196, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1659, 196, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1660, 196, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1661, 196, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1662, 196, 27, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1663, 197, 2, 13, 20, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1664, 197, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1665, 197, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1666, 197, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1667, 197, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1668, 197, 51, 21, 14, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1669, 197, 51, 8, 15, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1670, 197, 51, 6, 14, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1671, 197, 51, 20, 15, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1672, 197, 51, 13, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1673, 198, 2, 13, 20, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1674, 198, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1675, 198, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1676, 198, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1677, 198, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1678, 198, 39, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1679, 199, 2, 13, 20, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1680, 199, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1681, 199, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1682, 199, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1683, 199, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1684, 199, 10, 1, 14, 2, 0);
INSERT INTO `combat_record_detail` VALUES (1685, 199, 10, 2, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1686, 199, 10, 7, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1687, 199, 10, 5, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1688, 199, 10, 38, 10, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1689, 200, 2, 13, 20, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1690, 200, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1691, 200, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1692, 200, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1693, 200, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1694, 200, 11, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1695, 200, 11, 41, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1696, 201, 2, 13, 20, 4, 0);
INSERT INTO `combat_record_detail` VALUES (1697, 201, 2, 36, 11, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1698, 201, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1699, 201, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1700, 201, 2, 22, 1, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1701, 201, 1, 32, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1702, 201, 1, 10, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1703, 202, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1704, 202, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1705, 202, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1706, 202, 39, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1707, 203, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1708, 203, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1709, 203, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1710, 203, 21, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1711, 203, 21, 21, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1712, 203, 21, 25, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1713, 203, 21, 39, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1714, 203, 21, 3, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1715, 204, 2, 17, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1716, 204, 2, 1, 20, 5, 0);
INSERT INTO `combat_record_detail` VALUES (1717, 204, 2, 6, 20, 3, 0);
INSERT INTO `combat_record_detail` VALUES (1718, 204, 50, 39, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1719, 204, 50, 11, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1720, 204, 50, 26, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1721, 205, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1722, 205, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1723, 205, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1724, 205, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1725, 205, 55, 10, 1, 1, 2);
INSERT INTO `combat_record_detail` VALUES (1726, 206, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1727, 206, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1728, 206, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1729, 206, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1730, 206, 27, 5, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1731, 207, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1732, 207, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1733, 207, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1734, 207, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1735, 207, 6, 12, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1736, 207, 6, 28, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1737, 207, 6, 5, 1, 1, 2);
INSERT INTO `combat_record_detail` VALUES (1738, 207, 6, 18, 1, 1, 3);
INSERT INTO `combat_record_detail` VALUES (1739, 207, 6, 6, 1, 1, 4);
INSERT INTO `combat_record_detail` VALUES (1740, 208, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1741, 208, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1742, 208, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1743, 208, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1744, 208, 21, 30, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1745, 208, 21, 21, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1746, 208, 21, 25, 1, 1, 2);
INSERT INTO `combat_record_detail` VALUES (1747, 208, 21, 39, 1, 1, 3);
INSERT INTO `combat_record_detail` VALUES (1748, 208, 21, 3, 1, 1, 4);
INSERT INTO `combat_record_detail` VALUES (1749, 209, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1750, 209, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1751, 209, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1752, 209, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1753, 209, 27, 5, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1754, 210, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1755, 210, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1756, 210, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1757, 210, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1758, 210, 50, 39, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1759, 210, 50, 11, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1760, 210, 50, 26, 1, 1, 2);
INSERT INTO `combat_record_detail` VALUES (1761, 211, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1762, 211, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1763, 211, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1764, 211, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1765, 211, 54, 13, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1766, 211, 54, 24, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1767, 211, 54, 12, 1, 1, 2);
INSERT INTO `combat_record_detail` VALUES (1768, 212, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1769, 212, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1770, 212, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1771, 212, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1772, 212, 39, 26, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1773, 213, 2, 32, 1, 4, 1);
INSERT INTO `combat_record_detail` VALUES (1774, 213, 2, 1, 20, 5, 2);
INSERT INTO `combat_record_detail` VALUES (1775, 213, 2, 17, 20, 3, 3);
INSERT INTO `combat_record_detail` VALUES (1776, 213, 2, 6, 20, 3, 4);
INSERT INTO `combat_record_detail` VALUES (1777, 213, 48, 31, 1, 1, 0);
INSERT INTO `combat_record_detail` VALUES (1778, 213, 48, 36, 1, 1, 1);
INSERT INTO `combat_record_detail` VALUES (1779, 213, 48, 10, 1, 1, 2);
INSERT INTO `combat_record_detail` VALUES (1780, 213, 48, 13, 1, 1, 3);
INSERT INTO `combat_record_detail` VALUES (1781, 213, 48, 21, 1, 1, 4);

-- ----------------------------
-- Table structure for competition_season
-- ----------------------------
DROP TABLE IF EXISTS `competition_season`;
CREATE TABLE `competition_season`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `season_index` int(0) NULL DEFAULT NULL,
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '1有效 0无效',
  `month` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of competition_season
-- ----------------------------
INSERT INTO `competition_season` VALUES (1, '第一赛季', 1, 1, '2021-01', '2021-01-01 00:00:00', '2021-01-31 00:00:00', '2021-01-23 20:57:37');
INSERT INTO `competition_season` VALUES (2, '第2赛季', 2, 1, '2021-09', '2021-09-30 00:00:00', NULL, '2021-09-30 23:59:59');
INSERT INTO `competition_season` VALUES (3, '第3赛季', 3, 1, '2021-11', '2021-11-01 00:00:00', NULL, '2021-11-01 00:00:00');
INSERT INTO `competition_season` VALUES (4, '第4赛季', 4, 1, '2021-11', '2021-11-01 00:00:00', NULL, '2021-11-01 00:00:33');
INSERT INTO `competition_season` VALUES (5, '第4赛季', 4, 1, '2021-12', '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00');
INSERT INTO `competition_season` VALUES (6, '第5赛季', 5, 1, '2022-01', '2022-01-01 00:00:00', NULL, '2022-01-01 00:00:00');
INSERT INTO `competition_season` VALUES (7, '第6赛季', 6, 1, '2022-02', '2022-02-01 00:00:00', NULL, '2022-02-01 00:00:10');
INSERT INTO `competition_season` VALUES (8, '第7赛季', 7, 1, '2022-03', '2022-03-01 00:00:00', NULL, '2022-03-01 00:00:11');
INSERT INTO `competition_season` VALUES (9, '第8赛季', 8, 1, '2022-03', '2022-03-01 00:00:00', NULL, '2022-03-01 00:01:00');
INSERT INTO `competition_season` VALUES (10, '第9赛季', 9, 1, '2022-04', '2022-04-01 00:00:00', NULL, '2022-04-01 00:00:12');

-- ----------------------------
-- Table structure for daily_attendance
-- ----------------------------
DROP TABLE IF EXISTS `daily_attendance`;
CREATE TABLE `daily_attendance`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL,
  `daily_attendance_reward_id` int(0) NOT NULL,
  `week_no` int(0) NULL DEFAULT NULL,
  `day` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_attendance
-- ----------------------------
INSERT INTO `daily_attendance` VALUES (3, 2, 1, 1, 1, '2021-07-03 12:46:44');
INSERT INTO `daily_attendance` VALUES (4, 2, 2, 1, 2, '2021-07-03 16:43:48');
INSERT INTO `daily_attendance` VALUES (6, 2, 3, 1, 3, '2021-07-04 09:59:40');
INSERT INTO `daily_attendance` VALUES (7, 24, 1, 1, 1, '2021-07-10 09:45:50');
INSERT INTO `daily_attendance` VALUES (8, 24, 1, 2, 1, '2021-07-10 09:55:03');
INSERT INTO `daily_attendance` VALUES (9, 2, 1, 2, 1, '2021-07-10 10:07:44');
INSERT INTO `daily_attendance` VALUES (10, 2, 2, 2, 2, '2021-07-19 20:59:19');
INSERT INTO `daily_attendance` VALUES (11, 2, 3, 2, 3, '2021-07-20 21:27:22');
INSERT INTO `daily_attendance` VALUES (12, 2, 4, 2, 4, '2021-07-24 23:33:48');
INSERT INTO `daily_attendance` VALUES (13, 2, 5, 2, 5, '2021-07-25 00:19:09');
INSERT INTO `daily_attendance` VALUES (14, 2, 1, 4, 1, '2021-07-28 22:58:48');
INSERT INTO `daily_attendance` VALUES (15, 27, 1, 5, 1, '2021-08-08 15:36:58');
INSERT INTO `daily_attendance` VALUES (16, 30, 1, 10, 1, '2021-09-05 13:33:25');
INSERT INTO `daily_attendance` VALUES (17, 2, 1, 11, 1, '2021-09-08 23:17:30');
INSERT INTO `daily_attendance` VALUES (18, 2, 2, 11, 2, '2021-09-09 21:55:40');
INSERT INTO `daily_attendance` VALUES (19, 2, 1, 12, 1, '2021-09-19 16:16:14');
INSERT INTO `daily_attendance` VALUES (20, 17, 1, 14, 1, '2021-09-20 00:20:19');
INSERT INTO `daily_attendance` VALUES (21, 2, 1, 16, 1, '2021-09-27 00:23:43');
INSERT INTO `daily_attendance` VALUES (22, 2, 1, 19, 1, '2021-10-20 21:00:47');
INSERT INTO `daily_attendance` VALUES (23, 51, 1, 19, 1, '2021-10-24 18:58:22');
INSERT INTO `daily_attendance` VALUES (24, 51, 1, 20, 1, '2021-10-26 23:15:29');
INSERT INTO `daily_attendance` VALUES (25, 54, 1, 27, 1, '2021-12-04 12:26:06');
INSERT INTO `daily_attendance` VALUES (26, 55, 1, 30, 1, '2021-12-26 13:07:13');
INSERT INTO `daily_attendance` VALUES (27, 2, 1, 32, 1, '2022-01-09 11:40:58');
INSERT INTO `daily_attendance` VALUES (28, 2, 1, 35, 1, '2022-01-27 21:35:50');
INSERT INTO `daily_attendance` VALUES (29, 2, 2, 35, 2, '2022-01-30 13:04:24');
INSERT INTO `daily_attendance` VALUES (30, 51, 1, 38, 1, '2022-02-13 14:58:04');
INSERT INTO `daily_attendance` VALUES (31, 55, 1, 40, 1, '2022-02-23 21:02:21');
INSERT INTO `daily_attendance` VALUES (32, 56, 1, 40, 1, '2022-02-26 12:03:47');
INSERT INTO `daily_attendance` VALUES (33, 2, 1, 42, 1, '2022-03-07 21:45:46');
INSERT INTO `daily_attendance` VALUES (34, 2, 2, 42, 2, '2022-03-13 22:26:34');
INSERT INTO `daily_attendance` VALUES (35, 55, 1, 43, 1, '2022-03-15 21:49:06');
INSERT INTO `daily_attendance` VALUES (36, 55, 2, 43, 2, '2022-03-16 20:19:42');
INSERT INTO `daily_attendance` VALUES (37, 2, 1, 44, 1, '2022-03-24 20:03:04');
INSERT INTO `daily_attendance` VALUES (38, 60, 1, 47, 1, '2022-04-10 23:01:01');

-- ----------------------------
-- Table structure for daily_attendance_reward
-- ----------------------------
DROP TABLE IF EXISTS `daily_attendance_reward`;
CREATE TABLE `daily_attendance_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖励关联id',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型（1经验2钻石3金币4物品5符文）',
  `day` int(0) NULL DEFAULT NULL COMMENT '天数',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_attendance_reward
-- ----------------------------
INSERT INTO `daily_attendance_reward` VALUES (1, NULL, 3, 1, 10000, 1);
INSERT INTO `daily_attendance_reward` VALUES (2, NULL, 2, 2, 150, 1);
INSERT INTO `daily_attendance_reward` VALUES (3, NULL, 3, 3, 25000, 1);
INSERT INTO `daily_attendance_reward` VALUES (4, 1003, 4, 6, 3, 1);
INSERT INTO `daily_attendance_reward` VALUES (5, 1009, 4, 4, 4, 1);
INSERT INTO `daily_attendance_reward` VALUES (6, NULL, 2, 5, 500, 1);
INSERT INTO `daily_attendance_reward` VALUES (7, NULL, 2, 7, 1000, 1);

-- ----------------------------
-- Table structure for designation
-- ----------------------------
DROP TABLE IF EXISTS `designation`;
CREATE TABLE `designation`  (
  `id` int(0) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '称号名称',
  `attribute_addition` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性加成',
  `is_valid` int(0) NOT NULL COMMENT '是否有效',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '称号code',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for faction
-- ----------------------------
DROP TABLE IF EXISTS `faction`;
CREATE TABLE `faction`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `faction_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '帮派名称',
  `faction_lv` int(0) NULL DEFAULT NULL COMMENT '帮派等级',
  `current_contribution` int(0) NULL DEFAULT NULL COMMENT '当前贡献值',
  `total_contribution` int(0) NULL DEFAULT NULL COMMENT '总贡献值',
  `logo` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标地址',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` int(0) NULL DEFAULT NULL COMMENT '创建人id',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` int(0) NULL DEFAULT NULL COMMENT '更新时间',
  `faction_announcement` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '帮派公告',
  `ranking` int(0) NULL DEFAULT NULL COMMENT '排名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帮派表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction
-- ----------------------------
INSERT INTO `faction` VALUES (1, '测试', 1, 1, 1, '1', 1, '2022-02-15 10:49:29', NULL, NULL, NULL, NULL, 3);
INSERT INTO `faction` VALUES (2, '新帮派123', 1, 850, 850, '123', 1, '2022-02-15 11:04:53', 55, NULL, 2, '新帮派123天下无敌！！！！', 1);
INSERT INTO `faction` VALUES (3, '兴荣帮', 1, 350, 350, NULL, 1, '2022-02-24 23:34:16', 55, NULL, NULL, NULL, 2);

-- ----------------------------
-- Table structure for faction_apply
-- ----------------------------
DROP TABLE IF EXISTS `faction_apply`;
CREATE TABLE `faction_apply`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `faction_id` int(0) NOT NULL COMMENT '帮派id',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态（1.申请中 2通过 3不通过）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` int(0) NULL DEFAULT NULL COMMENT '创建人id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `update_user_id` int(0) NULL DEFAULT NULL COMMENT '更新人id',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `faction_idx`(`faction_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_apply
-- ----------------------------
INSERT INTO `faction_apply` VALUES (1, 2, 1, 1, NULL, NULL, NULL, 2, '2022-02-14 17:31:13');
INSERT INTO `faction_apply` VALUES (2, 10, 2, 2, '2022-02-22 21:57:56', 55, 'yihuier', 55, '2022-02-22 23:38:41');
INSERT INTO `faction_apply` VALUES (3, 55, 2, 2, '2022-02-24 22:24:38', 55, 'ceshi1001', 2, '2022-02-24 22:25:00');
INSERT INTO `faction_apply` VALUES (4, 55, 1, 1, '2022-02-24 22:24:41', 55, 'ceshi1001', NULL, NULL);
INSERT INTO `faction_apply` VALUES (5, 55, 2, 2, '2022-02-24 23:05:32', 55, 'ceshi1001', 2, '2022-02-24 23:05:34');
INSERT INTO `faction_apply` VALUES (6, 57, 2, 1, '2022-03-19 23:36:21', 57, '1234', NULL, NULL);

-- ----------------------------
-- Table structure for faction_member
-- ----------------------------
DROP TABLE IF EXISTS `faction_member`;
CREATE TABLE `faction_member`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `member_lv` int(0) NULL DEFAULT NULL COMMENT '帮派成员等级(1帮主2副帮主3护法4长老5堂主6成员)',
  `contribution` int(0) NULL DEFAULT NULL COMMENT '贡献值',
  `join_way` int(0) NULL DEFAULT NULL COMMENT '加入方式（1申请，2邀请）',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` int(0) NULL DEFAULT NULL COMMENT '创建人id',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` int(0) NULL DEFAULT NULL COMMENT '更新人id',
  `faction_id` int(0) NOT NULL COMMENT '帮派id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `faction_idx`(`faction_id`) USING BTREE,
  INDEX `user_idx`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_member
-- ----------------------------
INSERT INTO `faction_member` VALUES (1, 55, 6, 0, 0, 0, 2, '2022-02-15 11:04:53', 55, '2022-02-23 21:06:35', 55, 2);
INSERT INTO `faction_member` VALUES (2, 2, 1, 0, 0, 1, 1, '2022-02-20 21:46:24', 55, '2022-02-23 20:54:03', 3, 2);
INSERT INTO `faction_member` VALUES (3, 3, 6, 0, 0, 0, 2, '2022-02-20 21:55:41', 55, '2022-02-23 20:54:53', 2, 2);
INSERT INTO `faction_member` VALUES (4, 10, 6, 0, 1, 1, 1, '2022-02-22 23:38:41', 55, NULL, NULL, 2);
INSERT INTO `faction_member` VALUES (5, 55, 6, 0, 1, 0, 2, '2022-02-24 22:25:00', 2, '2022-02-24 23:05:24', 2, 2);
INSERT INTO `faction_member` VALUES (6, 55, 6, 0, 1, 0, 2, '2022-02-24 23:05:34', 2, '2022-02-24 23:25:04', 55, 2);
INSERT INTO `faction_member` VALUES (7, 55, 1, 0, 0, 1, 1, '2022-02-24 23:34:16', 55, NULL, NULL, 3);

-- ----------------------------
-- Table structure for faction_member_limit
-- ----------------------------
DROP TABLE IF EXISTS `faction_member_limit`;
CREATE TABLE `faction_member_limit`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `faction_lv` int(0) NULL DEFAULT NULL COMMENT '帮派等级',
  `member_lv` int(0) NULL DEFAULT NULL COMMENT '成员等级',
  `max_limit_num` int(0) NULL DEFAULT NULL COMMENT '最大限制数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_member_limit
-- ----------------------------
INSERT INTO `faction_member_limit` VALUES (1, 1, 1, 1);
INSERT INTO `faction_member_limit` VALUES (2, 1, 2, 1);
INSERT INTO `faction_member_limit` VALUES (3, 1, 3, 2);
INSERT INTO `faction_member_limit` VALUES (4, 1, 4, 4);
INSERT INTO `faction_member_limit` VALUES (5, 1, 5, 8);
INSERT INTO `faction_member_limit` VALUES (6, 2, 1, 1);
INSERT INTO `faction_member_limit` VALUES (7, 2, 2, 1);
INSERT INTO `faction_member_limit` VALUES (8, 2, 3, 2);
INSERT INTO `faction_member_limit` VALUES (9, 2, 4, 4);
INSERT INTO `faction_member_limit` VALUES (10, 2, 5, 10);
INSERT INTO `faction_member_limit` VALUES (11, 3, 1, 1);
INSERT INTO `faction_member_limit` VALUES (12, 3, 2, 1);
INSERT INTO `faction_member_limit` VALUES (13, 3, 3, 2);
INSERT INTO `faction_member_limit` VALUES (14, 3, 4, 6);
INSERT INTO `faction_member_limit` VALUES (15, 3, 5, 12);
INSERT INTO `faction_member_limit` VALUES (16, 4, 1, 1);
INSERT INTO `faction_member_limit` VALUES (17, 4, 2, 1);
INSERT INTO `faction_member_limit` VALUES (18, 4, 3, 4);
INSERT INTO `faction_member_limit` VALUES (19, 4, 4, 8);
INSERT INTO `faction_member_limit` VALUES (20, 4, 5, 16);
INSERT INTO `faction_member_limit` VALUES (21, 5, 1, 1);
INSERT INTO `faction_member_limit` VALUES (22, 5, 2, 2);
INSERT INTO `faction_member_limit` VALUES (23, 5, 3, 4);
INSERT INTO `faction_member_limit` VALUES (24, 5, 4, 8);
INSERT INTO `faction_member_limit` VALUES (25, 5, 5, 20);

-- ----------------------------
-- Table structure for faction_member_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `faction_member_operation_log`;
CREATE TABLE `faction_member_operation_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `faction_member_id` int(0) NOT NULL COMMENT '成员id',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型（1贡献）',
  `contribution` int(0) NULL DEFAULT NULL COMMENT '贡献值',
  `remark` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` int(0) NULL DEFAULT NULL COMMENT '创建人id',
  `faction_id` int(0) NULL DEFAULT NULL COMMENT '帮派id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `faction_idx`(`faction_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_member_operation_log
-- ----------------------------
INSERT INTO `faction_member_operation_log` VALUES (1, 1, 1, NULL, NULL, '2022-02-20 16:55:29', 55, 2);
INSERT INTO `faction_member_operation_log` VALUES (2, 1, 1, NULL, NULL, '2022-02-20 16:55:43', 55, 2);
INSERT INTO `faction_member_operation_log` VALUES (3, 1, 1, NULL, NULL, '2022-02-20 16:55:57', 55, 2);
INSERT INTO `faction_member_operation_log` VALUES (4, 1, 1, NULL, NULL, '2022-02-20 16:56:43', 55, 2);
INSERT INTO `faction_member_operation_log` VALUES (5, 1, 1, NULL, NULL, '2022-02-20 16:56:48', 55, 2);
INSERT INTO `faction_member_operation_log` VALUES (6, 2, 1, 50, NULL, '2022-02-23 20:54:31', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (7, 2, 1, 50, NULL, '2022-02-23 20:54:33', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (8, 2, 1, 50, NULL, '2022-02-23 20:54:35', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (9, 2, 1, 50, NULL, '2022-02-23 20:54:37', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (10, 2, 1, 50, NULL, '2022-02-23 20:54:38', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (11, 2, 1, 50, NULL, '2022-02-24 23:05:48', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (12, 2, 1, 50, NULL, '2022-02-24 23:05:49', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (13, 2, 1, 50, NULL, '2022-02-24 23:05:51', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (14, 2, 1, 50, NULL, '2022-02-24 23:05:52', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (15, 2, 1, 50, NULL, '2022-02-24 23:05:54', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (16, 7, 1, 50, NULL, '2022-02-26 11:30:09', 55, 3);
INSERT INTO `faction_member_operation_log` VALUES (17, 7, 1, 50, NULL, '2022-02-26 11:30:11', 55, 3);
INSERT INTO `faction_member_operation_log` VALUES (18, 7, 1, 50, NULL, '2022-03-16 20:19:00', 55, 3);
INSERT INTO `faction_member_operation_log` VALUES (19, 7, 1, 50, NULL, '2022-03-16 20:19:01', 55, 3);
INSERT INTO `faction_member_operation_log` VALUES (20, 7, 1, 50, NULL, '2022-03-16 20:19:02', 55, 3);
INSERT INTO `faction_member_operation_log` VALUES (21, 7, 1, 50, NULL, '2022-03-16 20:19:03', 55, 3);
INSERT INTO `faction_member_operation_log` VALUES (22, 7, 1, 50, NULL, '2022-03-16 20:19:05', 55, 3);
INSERT INTO `faction_member_operation_log` VALUES (23, 2, 1, 50, NULL, '2022-04-16 10:52:12', 2, 2);
INSERT INTO `faction_member_operation_log` VALUES (24, 2, 1, 50, NULL, '2022-04-16 10:52:14', 2, 2);

-- ----------------------------
-- Table structure for formation
-- ----------------------------
DROP TABLE IF EXISTS `formation`;
CREATE TABLE `formation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型（1青龙2白虎3朱雀4玄武）',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `level` int(0) NULL DEFAULT NULL COMMENT '等级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `current_exp` int(0) NULL DEFAULT NULL COMMENT '当前经验',
  `is_use` int(0) NULL DEFAULT NULL COMMENT '是否使用（1是0否）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of formation
-- ----------------------------
INSERT INTO `formation` VALUES (1, '青龙', 1, 2, 10, NULL, '2022-02-06 19:10:30', 0, 0);
INSERT INTO `formation` VALUES (4, '白虎', 2, 2, 10, '2021-12-22 23:24:34', '2022-04-10 15:31:56', 0, 0);
INSERT INTO `formation` VALUES (5, '朱雀', 3, 2, 10, '2021-12-23 20:50:26', '2022-04-10 15:32:06', 0, 1);
INSERT INTO `formation` VALUES (6, '玄武', 4, 2, 2, '2021-12-23 20:50:28', '2022-03-20 20:05:59', 0, 0);
INSERT INTO `formation` VALUES (7, '青龙', 1, 55, 1, '2021-12-27 21:17:32', NULL, 0, 1);
INSERT INTO `formation` VALUES (8, '白虎', 2, 55, 1, '2021-12-27 21:17:33', NULL, 0, 0);
INSERT INTO `formation` VALUES (9, '青龙', 1, 51, 1, '2022-02-13 15:05:12', NULL, 0, 1);

-- ----------------------------
-- Table structure for fragment
-- ----------------------------
DROP TABLE IF EXISTS `fragment`;
CREATE TABLE `fragment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `hero_id` int(0) NOT NULL COMMENT '英雄id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `cost` int(0) NULL DEFAULT NULL COMMENT '花费',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态（1有效0无效）',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `exchange` tinyint(0) NULL DEFAULT 0 COMMENT '是否交换',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179329 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fragment
-- ----------------------------

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `friend_id` int(0) NOT NULL COMMENT '好友id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for friend_request
-- ----------------------------
DROP TABLE IF EXISTS `friend_request`;
CREATE TABLE `friend_request`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `friend_id` int(0) NOT NULL COMMENT '好友id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(0) NOT NULL COMMENT '状态（1申请2通过3不通过）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for gain_addition
-- ----------------------------
DROP TABLE IF EXISTS `gain_addition`;
CREATE TABLE `gain_addition`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id，为空，则全部用户',
  `addition` int(0) NOT NULL COMMENT '加成',
  `start_time` datetime(0) NOT NULL COMMENT '开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '结束时间',
  `is_valid` int(0) NOT NULL COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型：EXP经验',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `hero_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '英雄名称',
  `physical_attack` int(0) NULL DEFAULT NULL COMMENT '物理攻击',
  `physical_defense` int(0) NULL DEFAULT NULL COMMENT '物理防御',
  `magical_attack` int(0) NULL DEFAULT NULL COMMENT '魔法攻击',
  `magical_defense` int(0) NULL DEFAULT NULL COMMENT '魔法防御',
  `speed` int(0) NULL DEFAULT NULL COMMENT '速度',
  `hp` int(0) NULL DEFAULT NULL COMMENT '生命值',
  `is_valid` int(0) NOT NULL DEFAULT 1,
  `physical_attack_addition` double NULL DEFAULT NULL COMMENT '物理攻击成长值',
  `physical_defense_addition` double NULL DEFAULT NULL COMMENT '物理防御成长值',
  `magical_attack_addition` double NULL DEFAULT NULL COMMENT '魔法攻击成长值',
  `magical_defense_addition` double NULL DEFAULT NULL COMMENT '魔法防御成长值',
  `speed_addition` double NULL DEFAULT NULL COMMENT '速度成长值',
  `hp_addition` double NULL DEFAULT NULL COMMENT '生命值成长值',
  `physical_CRIT_probability` double NULL DEFAULT NULL COMMENT '物理暴击几率',
  `physical_CRIT_addition` double NULL DEFAULT NULL COMMENT '物理暴伤',
  `magical_CRIT_probability` double NULL DEFAULT NULL COMMENT '魔法暴击几率',
  `magical_CRIT_addition` double NULL DEFAULT NULL COMMENT '魔法暴伤',
  `physical_bloodthirsty` double NULL DEFAULT NULL COMMENT '物理吸血',
  `magical_bloodthirsty` double NULL DEFAULT NULL COMMENT '魔法吸血',
  `physical_penetrate` double NULL DEFAULT NULL COMMENT '物理穿透',
  `magical_penetrate` double NULL DEFAULT NULL COMMENT '魔法穿透',
  `treatment_effect` double NULL DEFAULT NULL COMMENT '治疗效果',
  `is_sell` tinyint(0) NULL DEFAULT NULL COMMENT '是否出售',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES (1, '剑圣', 90, 60, 0, 50, 90, 700, 1, 10, 6, 0, 5, 9, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (2, '狱血魔神', 85, 60, 70, 60, 82, 700, 1, 9, 6, 7, 6, 8, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (3, '狮王', 85, 82, 0, 60, 72, 850, 1, 9, 9, 0, 6, 7, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (4, '炽焰之魂', 50, 50, 100, 70, 78, 550, 1, 5, 5, 10, 7, 8, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (5, '冰冻之心', 70, 60, 90, 70, 78, 700, 1, 7, 6, 9, 7, 8, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (6, '医仙', 50, 50, 85, 65, 75, 620, 1, 5, 5, 8, 6, 7, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (7, '冰龙', 75, 70, 80, 80, 60, 950, 1, 7, 7, 8, 8, 6, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (8, '暗裔剑魔', 85, 60, 85, 60, 82, 700, 1, 8.5, 6, 8.5, 6, 8, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (9, '暗夜使者', 87, 55, 70, 60, 90, 630, 1, 8.5, 5, 7, 5, 9, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (10, '武魂', 90, 65, 0, 55, 80, 670, 1, 9, 6, 0, 6, 8, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (11, '战神', 88, 70, 0, 60, 75, 850, 1, 8.5, 7, 0, 6, 8, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (12, '圣骑士', 60, 80, 80, 90, 68, 900, 1, 6, 8, 8, 9, 6, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (13, '弹药专家', 70, 50, 90, 60, 70, 600, 1, 6, 5, 8, 6, 7, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (14, '狂战士', 85, 70, 0, 70, 75, 900, 1, 8, 7, 0, 7, 7, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (15, '死神', 50, 60, 100, 85, 70, 680, 1, 5, 6, 10, 8, 7, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (16, '赌侠', 78, 60, 85, 68, 80, 700, 1, 8, 6, 8.5, 6, 8, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (17, '巨神兵', 80, 90, 50, 70, 60, 1000, 1, 7.5, 10, 5, 7, 5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (18, '逐日之弓', 90, 50, 70, 55, 80, 600, 1, 9.5, 5, 7.5, 5, 8, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (19, '幻化师', 60, 60, 80, 60, 70, 700, 1, 6, 5, 8, 6, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (20, '嗜血猎手', 85, 70, 60, 60, 80, 850, 1, 8, 7, 6, 6, 8, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (21, '雷神', 60, 50, 100, 60, 75, 600, 1, 6, 5, 10, 6, 8, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (22, '鹿灵', 50, 48, 85, 68, 85, 550, 1, 5, 4, 8, 6, 8, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (23, '炼金术师', 50, 65, 80, 80, 70, 900, 1, 5, 6, 7.5, 8, 5, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (24, '无极剑尊', 90, 70, 0, 60, 75, 900, 1, 9, 7, 0, 6, 7, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (25, '火凤', 60, 50, 90, 60, 80, 600, 1, 6, 5, 8.5, 6, 8, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (26, '漫游枪神', 90, 50, 70, 50, 80, 600, 1, 9.5, 5, 7, 5, 8, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (27, '暗黑龙骑士', 80, 60, 70, 60, 80, 500, 1, 7.5, 6, 7, 6, 7, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (28, '神圣天使', 85, 50, 95, 50, 80, 600, 1, 8, 5, 9.5, 6, 8, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (29, '堕落天使', 60, 60, 90, 70, 80, 650, 1, 6, 6, 9, 7, 8, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (30, '九尾妖狐', 60, 50, 90, 60, 78, 630, 1, 6, 5, 9, 6.5, 7, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (31, '狙神', 100, 55, 0, 60, 78, 650, 1, 10, 5, 0, 6, 8, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (32, '禁魔猎人', 80, 60, 60, 70, 75, 700, 1, 8, 6, 6, 7, 7, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (33, '暗影之主', 90, 60, 70, 50, 100, 630, 1, 9.5, 6, 7, 5, 10, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (34, '复仇亡魂', 92, 65, 80, 70, 70, 850, 1, 8.5, 7, 8, 7, 7, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (35, '吸血鬼伯爵', 60, 60, 90, 70, 75, 850, 1, 6, 6, 9, 7, 7, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (36, '荆棘甲士', 82, 100, 0, 65, 60, 900, 1, 8, 10, 0, 6, 5, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (37, '星灵', 50, 50, 88, 70, 75, 600, 1, 5, 5, 8.5, 6, 7, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (38, '鬼泣', 80, 60, 92, 70, 80, 720, 1, 8, 6, 9, 7, 8, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (39, '暗裔枪骑', 92, 60, 70, 60, 80, 700, 1, 9.5, 6, 7, 6, 8, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (40, '封魔之刃', 92, 60, 0, 60, 85, 650, 1, 10, 6, 0, 6, 8, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (41, '远古树精', 60, 65, 80, 95, 55, 950, 1, 6, 7, 8, 10, 5, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (42, '时光贤者', 50, 48, 88, 70, 65, 500, 1, 5, 5, 8.5, 6.5, 7, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (43, '兽灵行者', 85, 66, 80, 66, 78, 850, 1, 8, 7, 8, 7, 7, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `hero` VALUES (500, '邪神', 75, 55, 100, 70, 85, 720, 1, 7, 6, 10, 7, 8, 70, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for hero_text
-- ----------------------------
DROP TABLE IF EXISTS `hero_text`;
CREATE TABLE `hero_text`  (
  `hero_id` int(0) NOT NULL,
  `attack_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attack` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unique_skill_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unique_skill` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `passive_skill_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `passive_skill` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `breach1` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `breach2` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `breach3` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `breach4` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hero_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hero_text
-- ----------------------------
INSERT INTO `hero_text` VALUES (1, '剑闪', '对单一目标造成（+110%物理攻击）的物理伤害，无视对面40%物理防御', '万剑归宗', '四段斩击，优先攻击血量百分比最低和不同目标，每段斩击造成（+170%物理攻击）的物理伤害，对同一目标造成多段斩击时，后续斩击只造成第一段斩击50%的伤害（可多次触发剑魂）', '剑魂', '每次伤害额外造成对面最大生命值6%的真实伤害', '剑闪伤害增加10%，额外无视20%物理防御', '+10%物理攻击 +10%速度', '剑魂真实伤害从6%增加到8%', '万剑归宗会比血量越低的目标造成额外伤害，额外伤害为 目标每损失3%血量，伤害加1%（该伤害不包括剑魂的伤害）');
INSERT INTO `hero_text` VALUES (2, '血刃', '造成两段伤害，第一段对目标造成（+80%物理攻击）的物理伤害，第二段对目标及相邻单位造成（+50%魔法攻击）的魔法伤害', '魔狱血刹', '对三排目标造成（+120%物理攻击）（+70%魔法攻击）的真实伤害，自身回复该伤害25%的生命值', '血之狂暴', '每次伤害会使目标叠加一层流血效果，持续两回合（最多叠加三层，每层每回合使目标损失1%最大生命值,自身回复该伤害的50%）', '血刃第二段伤害增加10%，并30%概率额外叠加一层流血', '+10%物理攻击 +15%生命值', '自身因流血效果回复生命值从50%增加到100%', '目标每有一层流血效果，魔狱血刹的伤害额外增加10%');
INSERT INTO `hero_text` VALUES (3, '怒吼', '对三排目标造成（+65%物理攻击）的物理伤害，并降低目标10%物理攻击，持续一回合', '兽王百裂拳', '对单一目标造成10次伤害，每段伤害造成（+50%物理攻击）的物理伤害，并撕裂对方物防5%，持续两回合（撕裂效果在造成伤害后立即生效）', '不屈', '受到致命伤害时，免疫该次伤害，并无敌和免控一回合', '狮吼伤害增加10%，降低对方15%物理攻击', '+10%物理防御 +15%生命值', '不屈触发后，增加自身50%物理攻击，持续两回合', '每段伤害增加至（+60%物理攻击），撕裂6%物防');
INSERT INTO `hero_text` VALUES (4, '炽焰', '对单一目标造成（+150%魔法攻击）的魔法伤害', '狱火天焰', '对全体敌方造成（+190%魔法攻击）的魔法伤害，并对血量绝对值最高的目标造成2倍伤害', '圣炎', '技能攻击会灼烧对方（被灼烧的目标，每回合受到4%自身最大生命值的魔法伤害），持续三回合', '炽焰伤害额外增加20%', '+20%魔法攻击', '圣炎会对烧伤目标造成目标最大生命值6%的魔法伤害', '狱火天焰无视目标30%魔抗');
INSERT INTO `hero_text` VALUES (5, '冰魄枪', '对单一目标造成（+100%物理攻击）（+80%魔法攻击）的魔法伤害', '绝对零度', '对全体敌方造成（+160%魔法攻击）的魔法伤害，自身获得一个可抵挡（+120%魔法攻击）的护盾', '极寒', '攻击20%冰冻对面一回合（受到一定伤害后会直接解除冰冻效果）', '冰魄枪如果上一次未触发极寒冰冻效果，则下一次触发的概率增加一倍，触发后，该增益清0', '+10%魔法攻击 +10%魔法防御', '极寒的冰冻概率增加到25%', '绝对零度伤害增加到（200%魔法攻击加成），护盾值增加到（150%魔法攻击）');
INSERT INTO `hero_text` VALUES (6, '治疗', '回复一名血量最低的队友回复（+115%魔法攻击）的生命值', '妙手回春', '全体友军回复（+110%魔法攻击）的生命值，血量每损失1%，治疗量增加1%，并使友军受到治疗效果增加20%', '起死回生', '当一名友军阵亡了，可以立即复活该名友军回复其27%生命值，并清除所有状态', '治疗加成增加到（130%魔法攻击）', '+10%魔法攻击 +15%生命值', '起死回生回复的生命值增加到35%', '妙手回春净化友军所有减益效果（不包括控制效果）');
INSERT INTO `hero_text` VALUES (7, '玄冰弹', ' 对三排目标造成（+50%魔法攻击）的魔法伤害，20%概率使其减速20%一回合', '极寒风暴', '对全体敌方造成（+130%魔法攻击）的魔法伤害，风暴停留两回合，下两回合每回合开始，再造成（+100%魔法攻击）的魔法伤害', '冰霜护甲', '每受到一次近战攻击20%概率冰冻对面一回合（受到一定伤害后会直接解除冰冻效果）', '玄冰弹减速概率增加到30%', '+10%魔法防御 +15%生命值', '冰冻概率增加到25%', '极寒风暴将造成10%的减速效果');
INSERT INTO `hero_text` VALUES (8, '暗裔利刃', '对单一目标造成（+70%物理攻击）（+70%魔法攻击）的物理伤害\r\n魔神：对三排目标造成（+80%物理攻击）（+80%魔法攻击）的物理伤害', '魔神降临/大灭', '魔神降临：汲取敌方百分比血量最多的三个目标12%最大生命值，并化身魔神，增加自身20%伤害\r\n大灭（魔神形态）：跃向对方，对最多三排目标造成（+130%物理攻击）（+100%魔法攻击）的物理伤害，对中间目标造成30%额外伤害', '复仇之血', '剑魔拥有一个自身最大生命值1/3的血池，自身造成的伤害30%转化为血池，当剑魔阵亡时，可立即复活解除自身魔神状态,并恢复自身血池里的血量，在魔神状态下，参与击杀敌方目标时，回复自身20%已损失生命值', '暗裔利刃伤害增加（+10%物理攻击）（+10%魔法攻击）', '+10%物理攻击 +10%魔法攻击', '血池血量增加至40%，自身造成的伤害40%转化为血池血量，击杀敌方目标时，回复自身25%已损失生命值', '魔神增加自身25%伤害，大灭伤害增加至（+150%物理攻击）（+120%魔法攻击），对中间目标造成的额外伤害增加至40%');
INSERT INTO `hero_text` VALUES (9, '暗影穿刺', '对单一目标造成（+120%物理攻击）（+60%魔法攻击）的物理伤害，并减少目标治疗效果30%，持续二回合', '暗影猎杀', '对单一目标造成（+250%物理攻击）（+150%魔法攻击）的物理伤害，\r\n如果对方血量低于50%时，额外附加对方已损失生命值的30%魔法伤害', '暗夜', '自身攻击会优先攻击敌方后排，且对后排目标额外造成25%真实伤害\r\n', '暗影穿刺伤害增加到（135%物理攻击）（75%魔法攻击）', '+10%物理攻击 +10%魔法攻击', '黑夜对后排造成伤害增加到30%真实伤害', '暗影猎杀伤害加成增加至（280%物理攻击）（175%魔法攻击）');
INSERT INTO `hero_text` VALUES (10, '刀卷云/刀乱雷', '轮流使用\r\n刀卷云：对最多三排目标造成（+70%物理攻击）的物理伤害，并额外造成对方6%当前生命值的物理伤害\r\n刀乱雷：对单一目标造成（+100%物理攻击）的物理伤害，并额外造成对方已损失生命12%的物理伤害', '金色天际线', '二段攻击，\r\n第一段对单个目标造成（+150%物理攻击）的物理伤害\r\n第二段对该目标和相邻单位造成第一段目标25%最大生命值的物理伤害', '破鞘/暴足', '破鞘：自身造成的伤害无视对方30%物理防御\r\n暴足：开场前三回合，增加自身速度10%', '刀卷云伤害提升至（+80%物理攻击）刀乱雷伤害提升至（+120%物理攻击）', '+20%物理攻击', '破鞘无视40%物理防御，暴走效果增加到15%', '金色天际线第二段伤害提升至目标32%最大生命值的物理伤害');
INSERT INTO `hero_text` VALUES (11, '猛击', '对单一目标造成（+125%物理攻击）的物理伤害，当对方血量低于50%时，造成1.5倍伤害', '横扫千军', '对最多三排造成（+200%物理伤害）的物理伤害，并附加对方15%当前生命值，同时使目标对他的伤害降低20%，持续两回合', '战争意志/盾反', '战争意志：每回合叠加一层战争意志，最多叠加4层（每层增加自身10%物理攻击和10%物理防御）\r\n盾反：受到近战攻击，可以格挡50%伤害（最多只能格挡自身物理防御数值的伤害），并对目标造成（+80%物理攻击）的物理伤害，触发后，冷却1回合', '猛击伤害增加10%，猛击对血量低于25%的目标，造成2倍伤害', '+10%物理攻击 +10%物理防御', '战争意志上限提升至6层，盾反伤害提升至（+100%物理攻击）', '横扫千军伤害加成增加到（+240%物理伤害），减伤提升至30%');
INSERT INTO `hero_text` VALUES (12, '暮光', '对单一目标造成（+85%魔法攻击）的魔法伤害，并额外造成自身6%最大生命值的魔法伤害', '神圣庇护', '对全体友军提供一层护盾，可抵挡（+100%魔法攻击）（+25%圣骑士自身最大生命值）的伤害，护盾存在时，友军增加30%双抗（护盾最多存在两回合）', '圣愈', '自身每回合回复自身4%最大生命值，血量低于50%时，回复效果增加50%，血量低于25%时，回复效果增加100%', '暮光额外伤害增加到8%自身最大生命值', '+10%生命值 +10%魔法防御', '圣愈回复增加到6%', '护盾时增加至（+120%魔法攻击）（+30%圣骑士自身最大生命值），护盾存在时，友军增加40%双抗');
INSERT INTO `hero_text` VALUES (13, '手榴弹', '对单一目标造成（+100%魔法攻击）的物理伤害，并对周围目标造成70%的伤害', '核能爆破', '对血量最低的目标造成（+125%物理攻击）（+200%魔法攻击）的物理伤害，对目标相邻单位造成（+100%物理攻击）（+125%魔法攻击）的物理伤害，降低目标伤害15%，持续1回合', '定时炸弹', '每次行动完，在一个敌方血量最少的目标上放置一枚定时炸弹，两回合引爆，对目标及目标相邻单位造成（+50%魔法攻击）（+6%目标最大生命值）的物理伤害，自身其他攻击会立即引爆定时炸弹', '手榴弹造成（120%魔法攻击）的物理伤害', '+10%物理攻击 +10%魔法攻击', '定时炸弹伤害增加到（+65%魔法攻击）（+8%目标最大生命值）', '核能爆破主要目标伤害增加至（150%物理攻击）（240%魔法攻击），伤害降低增加到20%');
INSERT INTO `hero_text` VALUES (14, '致残打击', '对单一目标造成（+120%物理攻击）的物理伤害，并减少其双防20%，持续二回合', '诸神黄昏', '对单一目标造成（+250%物理攻击）的真实伤害，同时增加自身30%攻击，30%双抗，持续二回合，诸神黄昏持续期间中，致残打击额外造成30%真实伤害，并回复自身该真实伤害100%的生命值', '狂战之怒', '毎损失1%的生命值，自身攻击增加1%', '致残打击减少25%双防', '+10%物理攻击 +10%物理防御', '狂战之怒 毎损失1%的生命值，自身攻击增加1.5%', '诸神黄昏伤害增加至（+280%物理攻击），诸神黄昏持续期间，致残打击额外伤害增加到40%');
INSERT INTO `hero_text` VALUES (15, '灵魂收割', '对血量最低的目标造成（+125%魔法攻击）的魔法伤害，若目标生命值低于5%最大生命值时，立即斩杀对方，斩杀成功增加自身20%魔攻持续到战斗结束', '死神降临', '对全部敌方单位造成（+175%魔法攻击）的魔法伤害，对方毎损失1%生命值，该伤害增加1%', '死亡契约', '当自己死亡时，化为灵体，持续两回合（灵体仍可行动，不受任何效果影响）', '灵魂收割伤害增加至（+135%魔法攻击），斩杀线增加到6%', '+20%魔法攻击', '死亡契约触发时，自身造成伤害增加20%', '死神降临伤害增加至（+200%魔法攻击），并减少目标30%治疗效果，持续两回合');
INSERT INTO `hero_text` VALUES (16, '万能牌', '随机丢出一张牌\r\n黄牌：对单一目标造成（+50%物理攻击）（+70%魔法攻击）的魔法伤害，并增加自身2点怒气\r\n蓝牌：对单一目标造成（+80%物理攻击）（+100%魔法攻击）的魔法伤害\r\n红牌：对三排目标造成（+50%物理攻击）（+60%魔法攻击）的魔法伤害，40%概率减少对方15%速度一回合', '孤注一掷', '随机掷出一个骰子\r\n1点：自身和一名随机敌方单位受到（+100%魔法攻击）的真实伤害，并增加自身4点怒气\r\n2点：给自己增加一个可以抵抗（+270%魔法攻击）的护盾，持续三回合\r\n3点：对血量最低的目标造成（+100%物理攻击）（+200%魔法攻击）的魔法伤害，并无视50%魔抗\r\n4点：对单一目标造成（+100%物理攻击）（+250%魔法攻击）的魔法伤害，并眩晕对方一回合\r\n5点：对三排目标造成（+120%物理攻击）（+200%魔法攻击）魔法伤害，并减少其40%双抗，持续2回合\r\n6点：对全部敌方单位造成（+100%物理攻击）（+300%魔法攻击）的魔法伤害', '命运', '自身攻击50%概率额外造成（+100%魔法攻击）的魔法伤害，\r\n自身受到伤害时，50%概率自身额外受到（+40%魔法攻击）魔法伤害，50%概率自身减少受到（+50%魔法攻击）魔法伤害', '万能牌伤害加成（+10%物理攻击）（+10%魔法攻击），红牌50%概率减速', '+10%物理攻击 +10%魔法攻击', '命运自身受到伤害时60%减少伤害，40%增加伤害，自身攻击造成的额外伤害增加到（110%魔法攻击）', '孤注一掷 1点不再对自身造成伤害\r\n2点护盾值增加到（300%魔法攻击）\r\n3-6点伤害加成增加（+20%物理攻击）（+20%魔法攻击）');
INSERT INTO `hero_text` VALUES (17, '地震', '对三排目标造成（+60%物理攻击）的物理伤害', '山崩地裂', '对全体目标造成（+100%物理攻击）（+80%魔法攻击）的物理伤害，并对血量最高的一个目标造成眩晕效果，持续一回合', '势不可挡', '开局获得一个自身最大生命值20%的护盾', '地震会减少目标5%伤害', '+10%物理防御 +10%最大生命值', '势不可挡 开场巨神兵获取不受任何控制效果影响buff，持续三回合', '山崩地裂 伤害增加至（+115%物理攻击）（+100%魔法攻击）');
INSERT INTO `hero_text` VALUES (18, '多重箭矢', '对三排目标造成（+55%物理攻击）的物理伤害，并对血量最高的目标额外造成一次攻击，造成（+30%物理攻击）的物理伤害（该攻击可触发惩戒之箭被动）', '火翼穿云', '对三排目标造成（+115%物理攻击）（+80%魔法攻击）的物理伤害，并引爆目标身上的惩戒印记，每层印记额外造成5%目标最大生命值的魔法伤害，当印记层数大于3时，造成眩晕效果一回合', '惩戒之箭', '自身普通攻击会造成（+8%物理攻击）的真实伤害，并使目标叠加一层惩戒印记，持续两回合（再次受到惩戒印记效果时，刷新持续时间，可叠加多层）', '多重箭矢每段伤害增加8%', '+20%物理攻击', '惩戒之箭伤害增加至（+12%物理攻击）的真实伤害', '火翼穿云伤害增加至（+140%物理攻击）（+80%魔法攻击），每层惩戒印记额外造成2%最大生命值伤害');
INSERT INTO `hero_text` VALUES (19, '幻化攻击', '使用幻化目标的普通技能。', '偷天换日', '使用幻化目标的大招，并对幻化的目标造成(+15%最大生命值)的真实伤害，然后解除幻化状态。', '千人千面', '自身受到伤害时，幻化成攻击者，如果受到伤害时自身处于幻化的状态，被幻化的目标也会受到45%的伤害（该伤害无视抗性）。\r\n如果处于未幻化状态，则随机幻化一个目标（不会幻化敌方的幻化师）。', '使用幻化攻击时自身攻击额外增加20%', '+10%魔法攻击 +10%生命值', '千人千面的伤害增加到55%', '使用偷天幻日时，自身攻击额外增加20%，追加伤害从（+15%最大生命值）真实伤害增加到（+20%最大生命值）真实伤害');
INSERT INTO `hero_text` VALUES (20, '野兽怒咬', '对单一目标造成（+70%物理攻击）的物理伤害，并附加对方最大生命值6%的魔法伤害，自身回复该攻击30%的生命值', '嗜杀追猎', '对单一目标造成4段攻击，每段造成（+80%物理攻击）（+60%魔法攻击）的物理伤害，并增加自身免伤20%，持续两回合', '嗜血本性', '自身每段攻击会额外造成目标最大生命值3%的魔法伤害，并回复自身该伤害一半的生命值，当目标血量低于50%时，该伤害增加50%，当自身血量低于30%时，回复量翻倍', '野兽怒咬加成增加至（+85%物理攻击），回复生命值增加至40%该伤害', '+10%物理攻击 +10%生命值', '嗜血本性伤害从3%最大生命值增加到4%最大生命值', '嗜杀追猎每段伤害增加至（+100%物理攻击）（+75%魔法攻击），免伤增加至25%');
INSERT INTO `hero_text` VALUES (21, '雷切', '对单一目标造成（+110%魔法攻击）的魔法伤害，并无视目标35%魔抗', '雷霆万钧', '对敌方全体目标造成（+150%魔法攻击）的物理伤害，无视目标20%魔抗', '天雷', '每回合结束阶段，对敌方血量百分比最低的目标造成（+50%魔法攻击）（+6%目标已损失生命值）的魔法伤害', '雷切伤害加成增加至（+125%魔法攻击），并无视目标45%魔抗', '+20%魔法攻击', '天雷伤害增加至（+65%魔法攻击）（+8%目标已损失生命值）', '雷霆万钧伤害增加至（+170%魔法攻击），无视目标30%魔抗');
INSERT INTO `hero_text` VALUES (22, '标枪投掷', '对单一目标造成（+80%物理攻击）（+60%魔法攻击）的魔法伤害，并标记目标2回合，友军攻击被标记的目标时，回复友军（+80%魔法攻击）的生命值', '自然之力', '给友军血量最低的目标回复（+250%魔法攻击）（+25%目标最大生命值）的生命值，并增加目标20%伤害加成和20%伤害减免，持续两回合', '森林庇护', '每次行动完后，给自身提供一个自身最大生命值10%的护盾', '标枪投掷标记生命回复增加至（+100%魔法攻击）', '+10%魔法攻击 +10%生命值', '森林庇护护盾提升2%，并使自身施加的治疗效果增加20%', '自然之力生命值回复增加至（+300%魔法攻击）（+30%目标最大生命值）,伤害加成和伤害减免提升至30%');
INSERT INTO `hero_text` VALUES (23, '毒雾', '对三排目标造成（+50%魔法攻击）的魔法伤害，并叠加一层中毒效果，持续两回合', '枯萎之地', '对全体目标造成（+120%魔法攻击）的魔法伤害，并叠加一层中毒效果，并减少40%治疗效果，持续两回合', '炼金术', '自身生命值低于30%时触发，每回合回合开始时，回复自身最大生命值10%的生命值<br>每层中毒效果会让目标受到（+25%魔法攻击）的魔法伤害', '毒雾伤害增加至（65%魔法攻击）魔法伤害', '10%魔法攻击 +10%生命值', '炼金术每回合回复值增加至12%最大生命值，每层中毒效果伤害增加（30%魔法攻击）', '枯萎之地伤害增加至（+140%魔法攻击），减少60%治疗效果');
INSERT INTO `hero_text` VALUES (24, '无极剑刃', '对一列目标造成（+90%物理攻击）的物理伤害，每少一个目标，增加30%伤害（优先攻击前排那列）', '无限剑制', ' 对全体敌方目标造成（+120%物理攻击）的真实伤害，并使下两次无极剑刃额外造成（+50%物理攻击）的真实伤害', '无极之道/冥想', '无极之道：增加10%物理攻击\r\n冥想：生命值低于30%时，立即回复自身30%最大生命值，休息一回合，并增加自身40%双抗，持续两回合', '无极剑刃伤害增加至（+105%物理攻击）', '+10%物理攻击 +10%生命值', '无极之道增加12%物理攻击，冥想回复生命值提升至40%，双抗提升至50%', '无限剑制真实伤害提升至（+135%物理攻击），下两次无极剑刃额外伤害提升至（+60%物理攻击）');
INSERT INTO `hero_text` VALUES (25, '凤之烈焰', '对三排目标造成（+65%魔法攻击）的魔法伤害，并减少目标魔抗12%一回合', '凤舞九天', '召唤九颗火球从天而降，每颗火球对单一目标造成（+85%魔法攻击）的魔法伤害，同一个目标最多受到3次伤害', '浴火重生', '当受到致死伤害时，化身成蛋，蛋继承自身80%生命值和60%双抗，并在三回合后浴火重生，回复自身蛋所剩的生命值，并对敌方所有目标造成（+100%魔法攻击）的魔法伤害（只能使用一次）', '凤之烈焰伤害增加至（+72%魔法攻击），减少15%魔抗', '+20%魔法攻击', '浴火重生蛋继承自身双防提升至75%，复活后对所有目标造成伤害增加至（+125%魔法攻击）', '凤舞九天火球数量增加到十一颗，同一个目标最多受到4次伤害');
INSERT INTO `hero_text` VALUES (26, '圣枪连击', '对单一目标造成二次攻击，第一段造成（+100%物理攻击）的物理伤害，第二段造成（+50%魔法攻击）的魔法伤害', '圣枪洗礼', '对敌方全体目标造成4次攻击，每段攻击造成（+30%物理攻击）（+20%魔法攻击）的物理伤害', '圣光银弹', '对目标造成一次伤害时，会叠加一层圣光银弹，持续两回合，当叠加到4层时，则使目标易伤，受到伤害增加24%，持续两回合', '圣枪连击第一段伤害增加至（+115%物理攻击），第二段伤害增加至（+60%魔法攻击）', '+10%物理攻击 +10%速度', '圣光银弹叠满四层时易伤效果增加至30%', '圣枪洗礼4次攻击增加至5次攻击');
INSERT INTO `hero_text` VALUES (27, '黑炎斩/黑火球', '黑火球（龙骑形态）：对最多三个目标造成（+60%魔法攻击）的魔法伤害，并附加对面3%最大生命值的魔法伤害\r\n黑炎斩（人形态）：对单一目标造成（+120%物理攻击）的物理伤害，并附加对面3%最大生命值的魔法伤害', '暗龙强袭/暗龙召唤', '暗龙强袭（龙骑形态）：对目标及相邻造成（+200%物理攻击）的物理伤害，中间目标额外造成30%伤害，并造成眩晕效果一回合\r\n暗龙召唤（人形态）：召唤暗龙一起作战，暗龙生命值只有80%生命值，变成龙骑形态', '龙骑形态', '与暗龙一起并肩作战，暗龙拥有自身120%最大生命值；龙骑形态时，双抗额外增加20%；暗龙牺牲时，变成人形态', '黑炎斩伤害增加至（130%物理攻击），附加对方4.5%最大生命值伤害；黑火球伤害增加至（+80%魔法攻击）', '+10%物理防御 10%魔法抗性', '龙骑形态 暗龙拥有自身140%最大生命值；龙骑形态增加30%双防', '暗龙强袭伤害增加至（+240%物理攻击），中间目标额外伤害增加至40%；暗龙召唤 暗龙拥有100%最大生命值');
INSERT INTO `hero_text` VALUES (28, '审判', '对单一目标造成（+65%物理攻击）（+65%魔法攻击）的魔法伤害\r\n二层神圣之翼：对目标相邻单位造成50%的伤害\r\n四层神圣之翼：回复自身（+50%魔法攻击）的生命值\r\n六层神圣之翼：对目标额外造成已损失生命值10%的伤害', '圣之裁决', '对所有敌方目标造成（+130%魔法攻击）的魔法伤害，并使自身无敌一回合', '神圣之翼', '每次行动完后叠加一层神圣之翼效果，每层神圣之翼增加自身8%双攻，一定层数时审判获得额外效果（最多叠加六层）', '审判伤害增加至（+75%物理攻击）（+75%魔法攻击），二层溅射伤害增加至65%，四层回复生命值至（+65%魔法攻击），六层附带已损失生命值12%', '+10%物理攻击 +10%魔法攻击', '每层神圣之翼增加自身10%双攻', '圣之裁决伤害增加至（+150%魔法攻击），并额外叠加一层神圣之翼');
INSERT INTO `hero_text` VALUES (29, '暗之禁锢', '对最多三排目标造成（+60%魔法攻击）的魔法伤害，15%概率禁锢目标一回合，每次暗之禁锢最多禁锢一个目标', '无尽深渊', '对所有敌方目标造成（+100%魔法攻击）（+10%目标最大生命值）的魔法伤害，并获得一个可抵抗（+120%魔法攻击）的魔法护盾，护盾存在时，自身免疫控制，护盾最多持续两回合', '堕落之翼', '自身造成的魔法伤害会减少目标12%双攻，持续一回合', '暗之禁锢伤害增加至（+72%魔法攻击），20%概率禁锢目标', '+10%魔法攻击 +10%魔法防御', '堕落之翼自身造成魔法伤害减少目标15%双攻', '无尽深渊伤害增加到（+120%魔法攻击）（+12%目标最大生命值），护盾值增加到（+150%魔法攻击）');
INSERT INTO `hero_text` VALUES (30, '欺诈宝珠', '对单一目标造成两段伤害，第一段造成（+70%魔法攻击）的魔法伤害，第二段造成（+70%魔法攻击）的真实伤害', '摄魂夺魄', '5团狐火，每团狐火造成（+150%魔法攻击）的魔法伤害，20%概率魅惑对方一回合（优先攻击不同目标）', '魅惑妖术', '自身被近身攻击时，20%概率魅惑目标一回合\r\n对男性目标额外造成20%伤害', '欺诈宝珠第一段伤害增加至（+80%魔法攻击），第二段伤害转化为真实伤害', '+10%魔法攻击 +10%魔法抗性', '魅惑妖术近身魅惑概率增加至25%，对男性英雄伤害增加至25%', '摄魂夺魄每团狐火伤害增加至（+180%魔法攻击）,25%概率魅惑');
INSERT INTO `hero_text` VALUES (31, '穿甲弹', '对单一目标造成（+140%物理攻击）的物理伤害，减少目标27%物理防御，持续一回合', '精准狙击', '对敌方血量最低的目标造成（+360%物理攻击）的物理伤害，目标毎损失1%生命值增加1%的伤害，该攻击无视目标25%物防', '专注', '开局获得一层专注效果，每次行动完叠加一层专注效果（每一层专注增加自身8%的伤害，最多叠加5层）', '瞬狙伤害增加至（+150%物理攻击），减少目标32%物理防御', '+20%物理攻击', '专注每层伤害加成增加至12%', '精准狙击物理伤害增加至（+425%物理攻击），无视物防增加至30%，击杀目标则叠加一层专注效果并增加两点怒气');
INSERT INTO `hero_text` VALUES (32, '对魔突刺', '对目标造成（+110%物理攻击）的物理伤害，若目标原始魔法攻击高于自身，则额外造成50%真实伤害', '禁魔法阵', '对敌方全部目标造成（+120%魔法攻击）（+150%目标基础魔法攻击）的魔法伤害，30%概率封印目标一回合（不可释放必杀技能）', '封魔咒印', '自身攻击可减少目标20%魔法攻击，持续一回合', '对魔突刺伤害增加至（+120%物理攻击），额外造成的真实伤害增加至60%', '+10%物理攻击 +10%魔法抗性', '封魔咒印减少目标30%魔法攻击', '禁魔法阵伤害增加至（+140%魔法攻击）（+175%目标基础魔法攻击），40%概率封印');
INSERT INTO `hero_text` VALUES (33, '忍术·影刃', '对单一目标造成（+90%物理攻击）（+60%魔法攻击）的物理伤害，若速度高于目标，则造成1.5倍速度差额的真实伤害', '禁奥义·瞬影杀', '将自身分身数提升至上限，对单一目标造成（+225%物理攻击）（+100%魔法攻击）的物理伤害，并标记目标，一回合后引爆，造成该期间目标受到的总伤害50%的物理伤害', '忍奥义·影分身', '自身行动时，会制造一个分身，分身会模仿自身技能，但仅造成40%的伤害。受到伤害时，消耗一个分身，该伤害减少自身5%最大生命值的数值（分身上限2个）', '忍术·影刃伤害增加至（+100%物理攻击）（+70%魔法攻击），额外的真实伤害增加至1.7倍速度差值', '+10%物理攻击 +10%速度', '忍奥义·影分身造成的伤害增加至50%，分身抵挡的伤害增加至自身7%最大生命值', '禁奥义·瞬影杀伤害增加至（+270%物理攻击）（+130%魔法攻击）,引爆伤害增加至60%');
INSERT INTO `hero_text` VALUES (34, '暴走', '对单一目标造成（+100%物理攻击）的物理伤害和（+50%魔法攻击）的魔法伤害，同时叠加一层暴走，每一层可以使暴走伤害增加30%，最多3层', '复仇魂噬', '对敌方三排目标造成（+150%物理攻击）（+100%魔法攻击）的魔法伤害，并附加目标20%最大生命值的魔法伤害，自身获得45%该伤害值的护盾，持续两回合', '灵魂汲取', '自身造成伤害40%转化为灵魂值，受到伤害50%转化为灵魂值（灵魂值上限为35%最大生命值），当灵魂值满时，自身获得一个等额的护盾', '暴走每层伤害加成增加至40%', '+10%物理攻击 +10%生命值', '灵魂汲取自身造成伤害50%转化为灵魂值，受到伤害60%转化为灵魂值（灵魂值上限为45%最大生命值）', '复仇魂噬伤害增加至（+175%物理攻击）（+120%魔法攻击），护盾转化率增加至55%，每少一个目标伤害增加30%');
INSERT INTO `hero_text` VALUES (35, '鲜血汲取', '对单一目标造成（+120%魔法攻击）的魔法伤害，同时回复自身该伤害70%的生命值', '血之潮汐', '对敌方三排目标造成（+100%魔法攻击）的魔法伤害，并标记目标，使目标受到的伤害增加20%，并在一回合后引爆印记，造成（+225%魔法攻击）的魔法伤害，并回复自身该伤害50%的生命值', '血色契约', '自身生命值上限上升自身原始魔法攻击，受到的治疗效果增加30%', '鲜血汲取伤害加成增加至（+130%魔法攻击），生命值回复增加至80%', '+10%魔法攻击 +10%生命值', '血色契约受到的治疗效果增加至40%', '血之潮汐使目标易伤增加至25%，引爆伤害增加至（+275%魔法攻击）');
INSERT INTO `hero_text` VALUES (36, '盾击', '对单一目标造成（+100%物理攻击）（+60%物理防御）的物理伤害', '坚不可摧', '获得一个可抵抗（+40%自身最大生命值）的护盾，增加自身40%物理防御和30%伤害减免，并使荆棘之甲反伤增加50%，持续两回合', '荆棘之甲', '自身受到近身攻击时，反弹攻击者（+100%物理防御）的真实伤害', '盾击额外增加自身物理防御20%，持续一回合', '+10%物理防御 +10%生命值', '荆棘之甲 反弹伤害增加至自身物理防御125%', '坚不可摧护盾值增加至（+50%自身最大生命值），增加自身60%物理防御和40%伤害减免');
INSERT INTO `hero_text` VALUES (37, '祝福', '回复自身和守护目标（+95%魔法攻击）的生命值', '璀璨繁星', '自身和链接目标获得一个可抵挡（+375%魔法攻击）的护盾，并使星灵守护效果增加80%，持续两回合', '星灵守护', '守护输出伤害最高的己方英雄，增加目标和自身30%双攻和30%双防', '祝福生命值回复量增加至（+110%魔法攻击）', '+10%魔法攻击 +10%生命值', '星灵守护增加40%双攻和40%双防', '璀璨繁星护盾值增加至（+425%魔法攻击），并使星灵守护效果增加100%');
INSERT INTO `hero_text` VALUES (38, '鬼斩', '对单一目标造成（+60%物理攻击）（+90%魔法攻击）的魔法伤害，并附加目标已损失生命值12%的魔法伤害', '鬼神噬灵', '对最多三排目标造成（+120%物理攻击）（+200%魔法攻击）的魔法伤害，并减少目标25%魔抗，持续两回合，如果受到伤害后，目标生命值低于10%，则立即阵亡', '鬼影步', '增加自身10%速度，并减少自身受到的物理伤害15%', '鬼斩伤害增加至（+70%物理攻击）（+100%魔法攻击），额外伤害增加至目标已损失生命值15%', '+10%物理攻击 +10%魔法攻击', '鬼影步增加12%速度，物伤减免增加至20%', '鬼神噬灵伤害增加至（+140%物理攻击）（+240%魔法攻击），减少目标魔抗增加至35%');
INSERT INTO `hero_text` VALUES (39, '三连击', '对单一目标造成3段伤害，每段造成（+60%物理攻击）的物理伤害，每段伤害递增20%', '暗雷贯穿', '对单一目标造成（+300%物理攻击）（+125%魔法攻击）的物理伤害，无视目标40%物理防御', '魔枪', '自身攻击会偷取目标20%双攻，持续一回合', '三连击每段伤害加成增加至(+67%物理攻击)', '+10%物理攻击 +10%生命值', '魔枪会偷取25%目标双攻', '暗雷贯穿伤害增加至（+350%物理攻击）（+150%魔法攻击），并破除对方所有护盾效果');
INSERT INTO `hero_text` VALUES (40, '十字斩', '对目标造成两段伤害，第一段造成（+65%物理攻击）的物理伤害，第二段造成（+65%物理攻击）的魔法伤害', '绝息封魔斩', '对目标和相邻单位造成（+110%物理攻击）的物理伤害和（+110%物理攻击）的魔法伤害，并封印目标一回合', '二刀流', '自身造成的物理伤害无视30%物理防御，魔法伤害减少目标魔攻和魔抗20%，持续一回合', '十字斩第一段伤害增加至（+75%物理攻击），第二段伤害增加至（+75%物理攻击）', '+10%物理攻击 +10%速度', '二刀流物理伤害无视40%物理防御，魔法伤害减少目标25%魔攻和魔抗', '绝息封魔斩伤害增加至（+130%物理攻击）的物理伤害和（+130%物理攻击）的魔法伤害');
INSERT INTO `hero_text` VALUES (41, '法术脉冲', '发出一道冲击波，对最多三排目标造成（+70%魔法攻击）的魔法伤害，并增加自身一层魔法充能', '荆棘藤蔓', '对全体敌方目标造成（+100%魔法攻击）（+6%目标最大生命值）的魔法伤害，并对一个目标造成一回合禁锢效果（优先禁锢伤害最高的目标）', '魔法吸收/魔法充能', '魔法吸收：自身受到的魔法伤害减少20%<br>魔法充能：受到一次魔法伤害时，增加一层充能，达到4层时，消耗4层充能回复自身8%最大生命值', '法术脉冲造成（+85%魔法攻击）的物理伤害', '+10%魔法抗性 +10%生命值', '魔法吸收减免增加至25%，魔法充能回复值增加至10%最大生命值', '荆棘藤蔓伤害增加至（+110%魔法攻击）（+8%目标最大生命值）,禁锢目标数量增加至最多两个');
INSERT INTO `hero_text` VALUES (42, '时间急速', '随机使一名友军目标行动一次，并增加目标（+8%魔法攻击）双攻', '时光倒流', '恢复全体友军在这两回合受到总伤害的22%生命值，并移除所有异常状态', '时间静止', '自身行动一次会充能一次时间宝石，当时间宝石达到四层充能，随机对一名敌方目标造成（+80%魔法攻击）的伤害，并眩晕敌方一回合', '时间急速增加的双攻提升到（+12%魔法攻击）', '+10%魔法攻击 +10%魔法抗性', '时间静止3层充能就可触发，伤害增加至（+100%魔法攻击）', '时光倒流恢复生命值百分比增加至27%');
INSERT INTO `hero_text` VALUES (43, '猛虎撕裂/灵龟汲取/巨熊重击/火凤烈焰', '猛虎撕裂：对单一目标造成（+100%物理攻击）的物理伤害，并撕裂目标两回合（每回合受到（+35%物理攻击）的物理伤害）\r\n灵龟汲取：对单一目标造成（+80%物理攻击）（+4%自身最大生命值）的物理攻击，并回复自身40%该伤害的生命值\r\n巨熊重击：对单一目标造成（+90%物理攻击）的物理伤害，并眩晕目标一回合\r\n火凤烈焰：对最多三排目标造成（+70%魔法攻击）的魔法伤害', '兽灵觉醒', '同时触发四种兽灵buff，并增加自身5%物理攻击、物理防御、魔法攻击、魔法抗性和速度，持续两回合', '兽灵之力', '每次行动前，会切换自身形态并获得相应buff和相应攻击技能。\r\n猛虎：下一次物理攻击会减少目标15%物理防御，持续两回合\r\n灵龟：自身获得一个（+4%自身最大生命值）的护盾\r\n巨熊：自身当前回合增加12%物理攻击\r\n火凤：对敌方全体目标造成（+50%魔法攻击）的魔法伤害', '猛虎撕裂：伤害增加至（+110%物理攻击），撕裂伤害增加至（+42%物理攻击）；灵龟汲取：自身生命值回复量增加至50%巨熊重击：伤害增加至（+105%物理攻击）火凤烈焰：减少目标20%魔法抗性，持续一回合', '+10%物理攻击 +10%生命值', '兽灵之力。猛虎：下次物理攻击减少20%物理防御灵龟：护盾值增加至（+5%自身最大生命值）巨熊：自身当前回合增加15%物理攻击火凤：伤害增加至（+60%魔法攻击）', '兽灵觉醒增加自身8%物理攻击、物理防御、魔法攻击、魔法抗性和速度');
INSERT INTO `hero_text` VALUES (500, '湮灭', '对单一目标造成（+110%魔法攻击）的魔法伤害，目标每损失1%生命值，伤害增加1%', '大暗黑天', '对所有敌方目标造成（+160%魔法攻击）的魔法伤害，并降低所有目标5%伤害输出持续一回合', '邪灵主宰', '自身造成的魔法伤害30%转化为真实伤害', '湮灭伤害增加至（+125%魔法攻击）', '+20%魔法攻击', '真实伤害转化比增加至40%', '大暗黑天伤害增加至（+180%魔法攻击），减少伤害输出效果提升至10%');

-- ----------------------------
-- Table structure for instance
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标地址',
  `limited_lv` int(0) NULL DEFAULT NULL COMMENT '限制等级',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instance
-- ----------------------------
INSERT INTO `instance` VALUES (1, '剑之试炼', 'instance/1.png', 5, 1);

-- ----------------------------
-- Table structure for instance_detail
-- ----------------------------
DROP TABLE IF EXISTS `instance_detail`;
CREATE TABLE `instance_detail`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `instance_id` int(0) NOT NULL COMMENT '副本id',
  `instance_index` int(0) NULL DEFAULT NULL COMMENT '进度',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instance_detail
-- ----------------------------
INSERT INTO `instance_detail` VALUES (1, 1, 1, '第一关');
INSERT INTO `instance_detail` VALUES (2, 1, 2, '第二关');
INSERT INTO `instance_detail` VALUES (3, 1, 3, '第三关');

-- ----------------------------
-- Table structure for instance_detail_battle_array
-- ----------------------------
DROP TABLE IF EXISTS `instance_detail_battle_array`;
CREATE TABLE `instance_detail_battle_array`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `instance_id` int(0) NOT NULL COMMENT '副本id',
  `instance_detail_id` int(0) NULL DEFAULT NULL COMMENT '副本明细id',
  `hero_id` int(0) NULL DEFAULT NULL COMMENT '角色id',
  `hero_star` int(0) NULL DEFAULT NULL COMMENT '角色星级',
  `battle_array_num` int(0) NULL DEFAULT NULL COMMENT '阵容排序',
  `attribute_addition` int(0) NULL DEFAULT NULL COMMENT '属性加成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instance_detail_battle_array
-- ----------------------------
INSERT INTO `instance_detail_battle_array` VALUES (1, 1, 1, 1, 1, 2, 0);
INSERT INTO `instance_detail_battle_array` VALUES (2, 1, 1, 3, 1, 1, 0);
INSERT INTO `instance_detail_battle_array` VALUES (3, 1, 1, 24, 1, 3, 0);
INSERT INTO `instance_detail_battle_array` VALUES (4, 1, 1, 21, 1, 0, 0);
INSERT INTO `instance_detail_battle_array` VALUES (5, 1, 1, 8, 1, 4, 0);
INSERT INTO `instance_detail_battle_array` VALUES (6, 1, 2, 2, 3, 2, 20);
INSERT INTO `instance_detail_battle_array` VALUES (7, 1, 2, 24, 3, 1, 20);
INSERT INTO `instance_detail_battle_array` VALUES (8, 1, 2, 36, 3, 3, 20);
INSERT INTO `instance_detail_battle_array` VALUES (9, 1, 2, 6, 3, 0, 20);
INSERT INTO `instance_detail_battle_array` VALUES (10, 1, 2, 8, 3, 4, 20);
INSERT INTO `instance_detail_battle_array` VALUES (11, 1, 3, 1, 5, 2, 40);
INSERT INTO `instance_detail_battle_array` VALUES (12, 1, 3, 24, 5, 1, 40);
INSERT INTO `instance_detail_battle_array` VALUES (13, 1, 3, 36, 5, 3, 40);
INSERT INTO `instance_detail_battle_array` VALUES (14, 1, 3, 2, 5, 4, 40);
INSERT INTO `instance_detail_battle_array` VALUES (15, 1, 3, 6, 5, 0, 40);


-- ----------------------------
-- Table structure for instance_reward
-- ----------------------------
DROP TABLE IF EXISTS `instance_reward`;
CREATE TABLE `instance_reward`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `instance_id` int(0) NOT NULL COMMENT '副本id',
  `instance_level` int(0) NULL DEFAULT NULL COMMENT '副本难度等级（1简单2中单3困难）',
  `index` int(0) NULL DEFAULT NULL COMMENT '进度',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖励id',
  `num` int(0) NULL DEFAULT NULL COMMENT '奖励数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instance_reward
-- ----------------------------
INSERT INTO `instance_reward` VALUES (1, 1, 1, 3, '2', NULL, 500);
INSERT INTO `instance_reward` VALUES (2, 1, 2, 3, '2', NULL, 1000);
INSERT INTO `instance_reward` VALUES (3, 1, 3, 3, '2', NULL, 2000);
INSERT INTO `instance_reward` VALUES (10, 1, 1, 3, '4', 1008, 10);
INSERT INTO `instance_reward` VALUES (11, 1, 2, 3, '4', 1008, 15);
INSERT INTO `instance_reward` VALUES (12, 1, 3, 3, '4', 1008, 20);
INSERT INTO `instance_reward` VALUES (13, 1, 1, 3, '1', NULL, 50);
INSERT INTO `instance_reward` VALUES (14, 1, 2, 3, '1', NULL, 100);
INSERT INTO `instance_reward` VALUES (15, 1, 3, 3, '1', NULL, 200);

-- ----------------------------
-- Table structure for lottery
-- ----------------------------
DROP TABLE IF EXISTS `lottery`;
CREATE TABLE `lottery`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lottery
-- ----------------------------
INSERT INTO `lottery` VALUES (1, '第一期', 1, '2022-03-12 20:51:53');

-- ----------------------------
-- Table structure for lottery_log
-- ----------------------------
DROP TABLE IF EXISTS `lottery_log`;
CREATE TABLE `lottery_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `lottery_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `lottery_reward_id` int(0) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `cost_type` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lottery_reward
-- ----------------------------
DROP TABLE IF EXISTS `lottery_reward`;
CREATE TABLE `lottery_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `lottery_id` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `reward_id` int(0) NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT NULL,
  `random` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `rune_level` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lottery_reward
-- ----------------------------
INSERT INTO `lottery_reward` VALUES (1, 1, 3, NULL, 1000, 1, 20, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (2, 1, 2, NULL, 100, 1, 10, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (3, 1, 4, 999, 20, 1, 5, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (4, 1, 3, NULL, 10000, 1, 12, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (5, 1, 2, NULL, 1000, 1, 2, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (6, 1, 4, 1009, 15, 1, 8, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (7, 1, 4, 1008, 10, 1, 5, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (8, 1, 4, 2002, 5, 1, 5, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (9, 1, 4, 1000, 1, 1, 1, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (10, 1, 4, 500, 5, 1, 1, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (11, 1, 2, NULL, 2500, 1, 1, NULL, NULL);
INSERT INTO `lottery_reward` VALUES (12, 1, 4, 2003, 5, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) NOT NULL COMMENT '用户主键（接受者）',
  `user_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮件标题',
  `content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮件内容',
  `sender` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发送者',
  `sender_id` int(0) NULL DEFAULT NULL COMMENT '发送者id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '状态(0未读，1已读，2删除)',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型（1排位排名，2段位奖励）',
  `is_receive` int(0) NULL DEFAULT 0 COMMENT '是否领取（0未领取，1已领取）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for mail_reward
-- ----------------------------
DROP TABLE IF EXISTS `mail_reward`;
CREATE TABLE `mail_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mail_id` int(0) NOT NULL COMMENT '邮件id',
  `type` int(0) NULL DEFAULT NULL COMMENT '奖品类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖品id',
  `num` int(0) NULL DEFAULT NULL COMMENT '奖品数量',
  `rune_level` int(0) NULL DEFAULT NULL COMMENT '符文等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mysterious_shop_article
-- ----------------------------
DROP TABLE IF EXISTS `mysterious_shop_article`;
CREATE TABLE `mysterious_shop_article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型（1物品2符文）',
  `ref_id` int(0) NULL DEFAULT NULL COMMENT '关联商品id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `cost` int(0) NULL DEFAULT NULL COMMENT '价格',
  `currency` int(0) NULL DEFAULT NULL COMMENT '币种（1金币2钻石）',
  `rune_level` int(0) NULL DEFAULT NULL COMMENT '符文等级',
  `random` int(0) NULL DEFAULT NULL COMMENT '刷新占比',
  `is_valid` int(0) NULL DEFAULT 1 COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mysterious_shop_article
-- ----------------------------
INSERT INTO `mysterious_shop_article` VALUES (1, 2, 1, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (2, 2, 2, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (3, 2, 3, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (4, 2, 4, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (5, 2, 5, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (6, 2, 6, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (7, 2, 7, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (8, 2, 8, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (9, 2, 9, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (10, 2, 10, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (11, 2, 11, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (12, 2, 12, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (13, 2, 13, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (14, 2, 14, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (15, 2, 15, 1, 900, 2, 3, 2, 1);
INSERT INTO `mysterious_shop_article` VALUES (16, 2, 1, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (17, 2, 2, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (18, 2, 3, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (19, 2, 4, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (20, 2, 5, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (21, 2, 6, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (22, 2, 7, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (23, 2, 8, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (24, 2, 9, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (25, 2, 10, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (26, 2, 11, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (27, 2, 12, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (28, 2, 13, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (29, 2, 14, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (30, 2, 15, 1, 300, 2, 2, 5, 1);
INSERT INTO `mysterious_shop_article` VALUES (31, 2, 1, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (32, 2, 2, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (33, 2, 3, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (34, 2, 4, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (35, 2, 5, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (36, 2, 6, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (37, 2, 7, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (38, 2, 8, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (39, 2, 9, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (40, 2, 10, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (41, 2, 11, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (42, 2, 12, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (43, 2, 13, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (44, 2, 14, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (45, 2, 15, 1, 100, 2, 1, 10, 1);
INSERT INTO `mysterious_shop_article` VALUES (46, 2, 1, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (47, 2, 2, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (48, 2, 3, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (49, 2, 4, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (50, 2, 5, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (51, 2, 6, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (52, 2, 7, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (53, 2, 8, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (54, 2, 9, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (55, 2, 10, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (56, 2, 11, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (57, 2, 12, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (58, 2, 13, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (59, 2, 14, 3, 2700, 2, 3, 1, 1);
INSERT INTO `mysterious_shop_article` VALUES (60, 2, 15, 3, 2700, 2, 3, 1, 1);

-- ----------------------------
-- Table structure for new_user_reward
-- ----------------------------
DROP TABLE IF EXISTS `new_user_reward`;
CREATE TABLE `new_user_reward`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `type` int(0) NULL DEFAULT NULL COMMENT '奖品类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new_user_reward
-- ----------------------------
INSERT INTO `new_user_reward` VALUES (1, 3, NULL, 50000);
INSERT INTO `new_user_reward` VALUES (2, 4, 3003, 3);
INSERT INTO `new_user_reward` VALUES (3, 4, 1008, 300);
INSERT INTO `new_user_reward` VALUES (4, 4, 999, 150);
INSERT INTO `new_user_reward` VALUES (5, 2, NULL, 10000);
INSERT INTO `new_user_reward` VALUES (6, 4, 2003, 15);
INSERT INTO `new_user_reward` VALUES (7, 4, 1000, 3);

-- ----------------------------
-- Table structure for new_user_reward_record
-- ----------------------------
DROP TABLE IF EXISTS `new_user_reward_record`;
CREATE TABLE `new_user_reward_record`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `new_user_reward_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for purchase_history
-- ----------------------------
DROP TABLE IF EXISTS `purchase_history`;
CREATE TABLE `purchase_history`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `article_id` int(0) NOT NULL COMMENT '物品id',
  `num` int(0) NOT NULL COMMENT '数量',
  `currency` int(0) NOT NULL COMMENT '币种',
  `cost` int(0) NOT NULL COMMENT '花费',
  `purchase_time` datetime(0) NOT NULL COMMENT '购买时间',
  `article_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物品名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rank_reward
-- ----------------------------
DROP TABLE IF EXISTS `rank_reward`;
CREATE TABLE `rank_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `source` int(0) NOT NULL COMMENT '来源（1排名奖励，2段位奖励）',
  `rank_type` int(0) NULL DEFAULT NULL COMMENT '段位等级',
  `ranking_order` int(0) NULL DEFAULT NULL COMMENT '段位排名顺序',
  `type` int(0) NOT NULL COMMENT '奖品类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖品id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rank_reward
-- ----------------------------
INSERT INTO `rank_reward` VALUES (1, 1, NULL, 0, 2, NULL, 50000);
INSERT INTO `rank_reward` VALUES (2, 1, NULL, 1, 2, NULL, 40000);
INSERT INTO `rank_reward` VALUES (3, 1, NULL, 2, 2, NULL, 30000);
INSERT INTO `rank_reward` VALUES (4, 1, NULL, 3, 2, NULL, 25000);
INSERT INTO `rank_reward` VALUES (5, 1, NULL, 4, 2, NULL, 20000);
INSERT INTO `rank_reward` VALUES (6, 1, NULL, 5, 2, NULL, 15000);
INSERT INTO `rank_reward` VALUES (7, 1, NULL, 6, 2, NULL, 12000);
INSERT INTO `rank_reward` VALUES (8, 1, NULL, 7, 2, NULL, 10000);
INSERT INTO `rank_reward` VALUES (9, 1, NULL, 8, 2, NULL, 8000);
INSERT INTO `rank_reward` VALUES (10, 1, NULL, 9, 2, NULL, 6000);
INSERT INTO `rank_reward` VALUES (11, 2, 6, NULL, 2, NULL, 50000);
INSERT INTO `rank_reward` VALUES (12, 2, 5, NULL, 2, NULL, 40000);
INSERT INTO `rank_reward` VALUES (13, 2, 4, NULL, 2, NULL, 30000);
INSERT INTO `rank_reward` VALUES (14, 2, 3, NULL, 2, NULL, 20000);
INSERT INTO `rank_reward` VALUES (15, 2, 2, NULL, 2, NULL, 10000);


-- ----------------------------
-- Table structure for request_log
-- ----------------------------
DROP TABLE IF EXISTS `request_log`;
CREATE TABLE `request_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `method_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_data` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8289 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for reward
-- ----------------------------
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ref_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源类型',
  `ref_id` int(0) NULL DEFAULT NULL COMMENT '来源id',
  `type` int(0) NULL DEFAULT NULL COMMENT '奖励类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖励id',
  `num` int(0) NULL DEFAULT NULL COMMENT '奖励数量',
  `random` int(0) NULL DEFAULT NULL COMMENT '获得概率',
  `rune_level` int(0) NULL DEFAULT NULL COMMENT '符文等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rune
-- ----------------------------
DROP TABLE IF EXISTS `rune`;
CREATE TABLE `rune`  (
  `id` int(0) NOT NULL COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '符文名字',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型',
  `value` int(0) NULL DEFAULT NULL COMMENT '数值',
  `remark` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` bit(1) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rune
-- ----------------------------
INSERT INTO `rune` VALUES (1, '物理攻击', 1, 5, '增加百分比物理攻击', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (2, '物理防御', 2, 5, '增加百分比物理防御', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (3, '魔法攻击', 3, 5, '增加百分比魔法攻击', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (4, '魔法抗性', 4, 5, '增加百分比魔法抗性', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (5, '速度', 5, 5, '增加百分比速度', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (6, '生命值', 6, 8, '增加百分比生命值', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (7, '物理暴击', 7, 5, '增加百分比物理暴击', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (8, '物理暴伤', 8, 8, '增加百分比物理暴伤', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (9, '魔法暴击', 9, 5, '增加百分比魔法暴击', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (10, '魔法暴伤', 10, 8, '增加百分比魔法暴伤', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (11, '物理吸血', 11, 5, '增加百分比物理吸血', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (12, '魔法吸血', 12, 5, '增加百分比魔法吸血', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (13, '物理穿透', 13, 5, '增加百分比物理穿透', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (14, '魔法穿透', 14, 5, '增加百分比魔法穿透', '2021-05-26 19:30:16', b'1');
INSERT INTO `rune` VALUES (15, '治疗效果', 15, 5, '增加百分比治疗效果', '2021-05-26 19:30:16', b'1');

-- ----------------------------
-- Table structure for shop_article
-- ----------------------------
DROP TABLE IF EXISTS `shop_article`;
CREATE TABLE `shop_article`  (
  `id` int(0) NOT NULL,
  `article_id` int(0) NOT NULL COMMENT '物品id',
  `currency` int(0) NULL DEFAULT NULL COMMENT '币种（1金币，2钻石）',
  `cost` int(0) NULL DEFAULT NULL COMMENT '价格',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `sale_date_start` date NULL DEFAULT NULL COMMENT '开始销售日期',
  `sale_date_end` date NULL DEFAULT NULL COMMENT '截止销售日期',
  `is_date_limited` int(0) NULL DEFAULT NULL COMMENT '是否受日期限制（1是0否）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_article
-- ----------------------------
INSERT INTO `shop_article` VALUES (1, 1001, 2, 50, 1, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (2, 1002, 2, 98, 2, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (3, 1003, 2, 240, 3, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (4, 1007, 2, 100, 7, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (5, 1004, 1, 200, 4, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (6, 1005, 1, 400, 5, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (7, 1006, 1, 1000, 6, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (8, 1008, 2, 20, 8, NULL, NULL, 0);
INSERT INTO `shop_article` VALUES (9, 1009, 2, 10, 9, NULL, NULL, 0);

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `battle_bgm` tinyint(1) NULL DEFAULT NULL,
  `battle_speed` tinyint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for system_parameter
-- ----------------------------
DROP TABLE IF EXISTS `system_parameter`;
CREATE TABLE `system_parameter`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编号',
  `value` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '值',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_parameter
-- ----------------------------
INSERT INTO `system_parameter` VALUES (1, 'RUNE_MAX_LEVEL', '5', 1);
INSERT INTO `system_parameter` VALUES (2, 'HERO_MAX_LEVEL', '20', 1);
INSERT INTO `system_parameter` VALUES (3, 'TOWER_MAX_LEVEL', '20', 1);

-- ----------------------------
-- Table structure for system_week
-- ----------------------------
DROP TABLE IF EXISTS `system_week`;
CREATE TABLE `system_week`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `week_no` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


INSERT INTO `system_week` VALUES (1, 1, now(), date_format(now(), '%Y-%m-%d'));

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `type` int(0) NOT NULL COMMENT '1\"每日任务\", 2\"每周任务\", 3\"成就任务\"',
  `description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `finish_num` int(0) NOT NULL COMMENT '完成条件',
  `icon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务图标',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (1, '挑战斗神塔', 1, '挑战一次斗神塔', 1, 'tower.png', 3);
INSERT INTO `task` VALUES (2, '挑战关卡', 1, '挑战并战胜一次关卡', 1, 'checkpoint.png', 2);
INSERT INTO `task` VALUES (3, '登录游戏', 1, '每日登录', 1, NULL, 1);
INSERT INTO `task` VALUES (4, '招募英雄', 1, '招募一次英雄', 1, 'heroesRecruit.jpg', 4);
INSERT INTO `task` VALUES (5, '购买商品', 1, '商店中购买任何道具', 1, 'article.jpg', 5);
INSERT INTO `task` VALUES (6, '符文抽取', 1, '符文商店中抽取一次符文', 1, 'rune.png', 6);
INSERT INTO `task` VALUES (7, '等级成长1', 3, '玩家升至10级', 10, NULL, 1);
INSERT INTO `task` VALUES (8, '等级成长2', 3, '玩家升至20级', 20, NULL, 2);
INSERT INTO `task` VALUES (9, '等级成长3', 3, '玩家升至30级', 30, NULL, 3);
INSERT INTO `task` VALUES (10, '等级成长4', 3, '玩家升至40级', 40, NULL, 4);
INSERT INTO `task` VALUES (11, '等级成长5', 3, '玩家升至50级', 50, NULL, 5);

-- ----------------------------
-- Table structure for task_reward
-- ----------------------------
DROP TABLE IF EXISTS `task_reward`;
CREATE TABLE `task_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(0) NOT NULL COMMENT '任务id',
  `type` int(0) NOT NULL COMMENT '奖品类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '物品id',
  `num` int(0) NOT NULL COMMENT '奖励数量',
  `rune_level` int(0) NULL DEFAULT NULL COMMENT '符文等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_reward
-- ----------------------------
INSERT INTO `task_reward` VALUES (1, 1, 1, 0, 100, NULL);
INSERT INTO `task_reward` VALUES (2, 1, 3, 0, 10000, NULL);
INSERT INTO `task_reward` VALUES (3, 1, 2, 0, 50, NULL);
INSERT INTO `task_reward` VALUES (4, 3, 1, 0, 100, NULL);
INSERT INTO `task_reward` VALUES (5, 2, 1, 0, 100, NULL);
INSERT INTO `task_reward` VALUES (6, 2, 3, 0, 10000, NULL);
INSERT INTO `task_reward` VALUES (7, 2, 2, 0, 50, NULL);
INSERT INTO `task_reward` VALUES (8, 4, 1, 0, 200, NULL);
INSERT INTO `task_reward` VALUES (9, 5, 1, 0, 150, NULL);
INSERT INTO `task_reward` VALUES (10, 6, 1, 0, 200, NULL);
INSERT INTO `task_reward` VALUES (11, 4, 2, 0, 100, NULL);
INSERT INTO `task_reward` VALUES (12, 5, 2, 0, 50, NULL);
INSERT INTO `task_reward` VALUES (13, 6, 2, 0, 100, NULL);
INSERT INTO `task_reward` VALUES (14, 7, 2, 0, 10000, NULL);
INSERT INTO `task_reward` VALUES (15, 8, 2, NULL, 20000, NULL);
INSERT INTO `task_reward` VALUES (16, 9, 2, NULL, 50000, NULL);
INSERT INTO `task_reward` VALUES (17, 10, 2, NULL, 100000, NULL);
INSERT INTO `task_reward` VALUES (18, 11, 2, NULL, 200000, NULL);

-- ----------------------------
-- Table structure for tower
-- ----------------------------
DROP TABLE IF EXISTS `tower`;
CREATE TABLE `tower`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `state` int(0) NULL DEFAULT NULL COMMENT '斗神塔状态(0未开始 1 挑战中 2 挑战失败)',
  `challenge_num` int(0) NULL DEFAULT NULL COMMENT '斗神塔可挑战次数',
  `resurrection_num` int(0) NULL DEFAULT NULL COMMENT '斗神塔复活次数',
  `current_level` int(0) NULL DEFAULT NULL COMMENT '当前层数',
  `max_level` int(0) NULL DEFAULT NULL COMMENT '最高层数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for tower_challenge_log
-- ----------------------------
DROP TABLE IF EXISTS `tower_challenge_log`;
CREATE TABLE `tower_challenge_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `battle_result` int(0) NULL DEFAULT NULL COMMENT '战斗结果（1胜利2失败）',
  `level` int(0) NULL DEFAULT NULL COMMENT '层数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tower_reward
-- ----------------------------
DROP TABLE IF EXISTS `tower_reward`;
CREATE TABLE `tower_reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `level` int(0) NOT NULL COMMENT '斗神塔层数',
  `type` int(0) NULL DEFAULT NULL COMMENT '奖品类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖品id',
  `min_num` int(0) NULL DEFAULT NULL COMMENT '最小数量',
  `max_num` int(0) NULL DEFAULT NULL COMMENT '最大数量',
  `random` int(0) NULL DEFAULT NULL COMMENT '概率（100为必得）',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tower_reward
-- ----------------------------
INSERT INTO `tower_reward` VALUES (1, 5, 2, NULL, NULL, NULL, 100, 100);
INSERT INTO `tower_reward` VALUES (2, 10, 2, NULL, NULL, NULL, 100, 250);
INSERT INTO `tower_reward` VALUES (3, 15, 2, NULL, NULL, NULL, 100, 500);
INSERT INTO `tower_reward` VALUES (4, 20, 2, NULL, NULL, NULL, 100, 1000);
INSERT INTO `tower_reward` VALUES (5, 1, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (6, 2, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (7, 3, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (8, 4, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (9, 5, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (10, 6, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (11, 7, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (12, 8, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (13, 9, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (14, 10, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (15, 11, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (16, 12, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (17, 13, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (18, 14, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (19, 15, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (20, 16, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (21, 17, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (22, 18, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (23, 19, 1, NULL, NULL, NULL, 100, 10);
INSERT INTO `tower_reward` VALUES (24, 20, 1, NULL, NULL, NULL, 100, 10);

-- ----------------------------
-- Table structure for tower_reward_receive_log
-- ----------------------------
DROP TABLE IF EXISTS `tower_reward_receive_log`;
CREATE TABLE `tower_reward_receive_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '领取时间',
  `level` int(0) NULL DEFAULT NULL COMMENT '斗神塔层数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for treasure_chest
-- ----------------------------
DROP TABLE IF EXISTS `treasure_chest`;
CREATE TABLE `treasure_chest`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宝箱名称',
  `icon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标地址',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for treasure_chest_reward
-- ----------------------------
DROP TABLE IF EXISTS `treasure_chest_reward`;
CREATE TABLE `treasure_chest_reward`  (
  `id` int(0) NOT NULL COMMENT 'id',
  `treasure_chest_id` int(0) NOT NULL,
  `type` int(0) NULL DEFAULT NULL COMMENT '奖品类型（1经验2钻石3金币4物品5符文）',
  `reward_id` int(0) NULL DEFAULT NULL COMMENT '奖品id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `random` int(0) NULL DEFAULT NULL COMMENT '获得概率',
  `min_num` int(0) NULL DEFAULT NULL COMMENT '最少值',
  `max_num` int(0) NULL DEFAULT NULL COMMENT '最大值',
  `level` int(0) NULL DEFAULT NULL COMMENT '符文等级',
  `user_article_id` int(0) NULL DEFAULT NULL COMMENT '用户宝箱id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `lv` int(0) NOT NULL DEFAULT 1 COMMENT '等级',
  `current_exp` int(0) NOT NULL DEFAULT 0 COMMENT '当前经验',
  `gold` int(0) NOT NULL DEFAULT 0 COMMENT '金币',
  `diamond` int(0) NOT NULL DEFAULT 0 COMMENT '钻石',
  `account` int(0) NOT NULL COMMENT '账号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `physical_strength` int(0) NULL DEFAULT NULL COMMENT '体力值',
  `head_sculpture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像地址',
  `online` tinyint(0) NULL DEFAULT NULL COMMENT '是否在线',
  `fragmentary_essence` int(0) NULL DEFAULT NULL COMMENT '碎片精粹',
  `total_exp` int(0) NULL DEFAULT 0 COMMENT '总经验',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx`(`id`) USING BTREE COMMENT 'id'
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_article
-- ----------------------------
DROP TABLE IF EXISTS `user_article`;
CREATE TABLE `user_article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `article_id` int(0) NOT NULL COMMENT '物品id',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`user_id`) USING BTREE COMMENT 'userId'
) ENGINE = InnoDB AUTO_INCREMENT = 1108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_checkpoint
-- ----------------------------
DROP TABLE IF EXISTS `user_checkpoint`;
CREATE TABLE `user_checkpoint`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `checkpoint_id` int(0) NOT NULL COMMENT '关卡id',
  `win_num` int(0) NULL DEFAULT NULL COMMENT '总的战胜次数',
  `daily_win_num` int(0) NULL DEFAULT NULL COMMENT '今日战胜次数',
  `star` tinyint(0) NULL DEFAULT NULL COMMENT '星级评价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_designation
-- ----------------------------
DROP TABLE IF EXISTS `user_designation`;
CREATE TABLE `user_designation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `designation_id` int(0) NOT NULL COMMENT '称号id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `is_using` int(0) NULL DEFAULT NULL COMMENT '是否正在使用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `designation_idx`(`designation_id`) USING BTREE,
  INDEX `user_idx`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_hero
-- ----------------------------
DROP TABLE IF EXISTS `user_hero`;
CREATE TABLE `user_hero`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `hero_id` int(0) NOT NULL COMMENT '英雄id',
  `hero_lv` int(0) NOT NULL DEFAULT 1 COMMENT '等级',
  `battle_num` int(0) NULL DEFAULT NULL COMMENT '阵容位置',
  `hero_star` int(0) NOT NULL DEFAULT 1 COMMENT '星级',
  `exp` int(0) NULL DEFAULT 0 COMMENT '经验',
  `total_exp` int(0) NOT NULL DEFAULT 0 COMMENT '总经验',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE COMMENT 'userId',
  INDEX `hero_id`(`hero_id`) USING BTREE COMMENT 'heroId'
) ENGINE = InnoDB AUTO_INCREMENT = 358 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_instance
-- ----------------------------
DROP TABLE IF EXISTS `user_instance`;
CREATE TABLE `user_instance`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `instance_id` int(0) NOT NULL COMMENT '副本id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `instance_index` int(0) NULL DEFAULT NULL COMMENT '进度',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` int(0) NULL DEFAULT NULL COMMENT '创建用户id',
  `level` int(0) NULL DEFAULT NULL COMMENT '困难等级（1简单2中等3困难）',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态（1挑战中2挑战完成3领取奖励）',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_mysterious_shop_article
-- ----------------------------
DROP TABLE IF EXISTS `user_mysterious_shop_article`;
CREATE TABLE `user_mysterious_shop_article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `mysterious_shop_article_id` int(0) NULL DEFAULT NULL COMMENT '神秘商品id',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否有效',
  `is_buy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否购买',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `buy_time` datetime(0) NULL DEFAULT NULL COMMENT '购买时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_idx`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62593 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_rank
-- ----------------------------
DROP TABLE IF EXISTS `user_rank`;
CREATE TABLE `user_rank`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `rank_type` int(0) NULL DEFAULT NULL COMMENT '排位大段',
  `rank_level` int(0) NULL DEFAULT NULL COMMENT '排位等级',
  `rank_score` int(0) NULL DEFAULT NULL COMMENT '排位积分',
  `total_rank_score` int(0) NULL DEFAULT NULL COMMENT '总分',
  `season_id` int(0) NOT NULL COMMENT '赛季id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 405 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_rune
-- ----------------------------
DROP TABLE IF EXISTS `user_rune`;
CREATE TABLE `user_rune`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) NOT NULL COMMENT '用户主键',
  `rune_id` int(0) NULL DEFAULT NULL COMMENT '符文主键',
  `level` int(0) NULL DEFAULT NULL COMMENT '等级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `hero_id` int(0) NULL DEFAULT NULL COMMENT '使用英雄id',
  `serial_number` int(0) NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_idx`(`user_id`) USING BTREE COMMENT '用户id',
  INDEX `hero_idx`(`hero_id`) USING BTREE COMMENT '英雄id'
) ENGINE = InnoDB AUTO_INCREMENT = 964 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_task
-- ----------------------------
DROP TABLE IF EXISTS `user_task`;
CREATE TABLE `user_task`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL,
  `task_id` int(0) NOT NULL,
  `is_finished` tinyint(0) NULL DEFAULT 0,
  `current_num` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 741 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for version_token
-- ----------------------------
DROP TABLE IF EXISTS `version_token`;
CREATE TABLE `version_token`  (
  `id` int(0) NOT NULL,
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '版本号',
  `token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '授权token',
  `is_valid` int(0) NULL DEFAULT NULL COMMENT '是否生效',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of version_token
-- ----------------------------
INSERT INTO `version_token` VALUES (1, '2.9.0', '3F3716A1E5B8401F68F8A2B717FAA2C7', 0, '2022-03-28 21:30:27');
INSERT INTO `version_token` VALUES (2, '2.9.1', 'F045B2135DE0065D62CD05DF72A1F548', 1, '2022-04-06 23:49:32');
INSERT INTO `version_token` VALUES (3, '2.9.2', '410002B1CFACBEF18E3FC4F14640A56C', 1, '2022-04-10 18:14:58');

SET FOREIGN_KEY_CHECKS = 1;
