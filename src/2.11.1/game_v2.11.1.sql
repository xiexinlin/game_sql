alter table hero_rune_recommendation add column sort int(0) null comment '排序';

-- 称号战斗力加成字段
alter table designation add column combatPowerAddition int(0) not null comment '战斗力加成';

-- 英雄报表
CREATE TABLE `report_hero`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`user_id` int(0) NOT NULL COMMENT '用户id',
	`hero_id` int(0) NOT NULL COMMENT '英雄id',
	`hero_name` varchar(20) NOT NULL COMMENT '英雄名称',
	`hero_star` int(0) NOT NULL COMMENT '英雄星级',
	`lv` int(0) NOT NULL COMMENT '英雄等级',
	`exp` int(0) NOT NULL COMMENT '经验值',
	`physical_attack` int(0) NOT NULL COMMENT '物理攻击',
	`physical_defense` int(0) NOT NULL COMMENT '物理防御',
	`magical_attack` int(0) NOT NULL COMMENT '魔法攻击',
	`magical_defense` int(0) NOT NULL COMMENT '魔法防御',
	`speed` int(0) NOT NULL COMMENT '速度',
	`hp` int(0) NOT NULL COMMENT '生命值',
  `physical_CRIT_probability` double DEFAULT NULL COMMENT '物理暴击几率',
  `physical_CRIT_addition` double DEFAULT NULL COMMENT '物理暴伤',
  `magical_CRIT_probability` double DEFAULT NULL COMMENT '魔法暴击几率',
  `magical_CRIT_addition` double DEFAULT NULL COMMENT '魔法暴伤',
  `physical_bloodthirsty` double DEFAULT NULL COMMENT '物理吸血',
  `magical_bloodthirsty` double DEFAULT NULL COMMENT '魔法吸血',
  `physical_penetrate` double DEFAULT NULL COMMENT '物理穿透',
  `magical_penetrate` double DEFAULT NULL COMMENT '魔法穿透',
  `treatment_effect` double DEFAULT NULL COMMENT '治疗效果',
	`create_time` datetime COMMENT '创建时间',
	`update_time` datetime COMMENT '更新时间',
	`combat_power` int(0) NOT NULL COMMENT '战斗力',
   PRIMARY KEY (`id`) USING BTREE,
	 KEY (`user_id`) USING BTREE,
	KEY (`hero_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

-- 关卡挑战日志
CREATE TABLE `checkpoint_battle_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `checkpoint_id` int(0) NOT NULL COMMENT '关卡id',
  `chapter` int(0) NOT NULL COMMENT '章节',
  `battle_result` int(0) NULL COMMENT '战斗结果',
  `is_sweep` int(0) NULL COMMENT '是否扫荡',
	`create_time` datetime COMMENT '创建时间',
	`update_time` datetime COMMENT '更新时间',
   PRIMARY KEY (`id`) USING BTREE,
	 KEY (`user_id`) USING BTREE,
	 KEY (`checkpoint_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

-- 最后一关标识
alter table checkpoint add column is_final_checkpoint int(0) null comment '是否最后关卡';
update checkpoint set is_final_checkpoint = 1 where id in (10, 20);

-- 推荐符文
-- 剑圣
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (1, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (1, 413, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (1, 405, 1, now(), 3);

-- 狱血魔神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (2, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (2, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (2, 411, 1, now(), 3);

-- 狮王
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (3, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (3, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (3, 402, 1, now(), 3);

-- 炽焰之魂
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (4, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (4, 414, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (4, 405, 1, now(), 3);

-- 冰冻之心
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (5, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (5, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (5, 404, 1, now(), 3);

-- 医仙
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (6, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (6, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (6, 415, 1, now(), 3);

-- 冰龙
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (7, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (7, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (7, 404, 1, now(), 3);

-- 暗裔剑魔
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (8, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (8, 411, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (8, 406, 1, now(), 3);

-- 暗夜使者
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (9, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (9, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (9, 413, 1, now(), 3);

-- 武魂
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (10, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (10, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (10, 413, 1, now(), 3);

-- 战神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (11, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (11, 402, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (11, 406, 1, now(), 3);

-- 圣骑士
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (12, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (12, 404, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (12, 406, 1, now(), 3);

-- 弹药专家
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (13, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (13, 409, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (13, 410, 1, now(), 3);

-- 狂战士
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (14, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (14, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (14, 402, 1, now(), 3);

-- 死神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (15, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (15, 409, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (15, 410, 1, now(), 3);

-- 赌侠
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (16, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (16, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (16, 405, 1, now(), 3);

-- 巨神兵
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (17, 406, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (17, 402, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (17, 404, 1, now(), 3);

-- 逐日之弓
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (18, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (18, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (18, 407, 1, now(), 3);

-- 幻化师
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (19, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (19, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (19, 404, 1, now(), 3);

-- 嗜血猎手
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (20, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (20, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (20, 411, 1, now(), 3);

-- 雷神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (21, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (21, 409, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (21, 414, 1, now(), 3);

-- 鹿灵
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (22, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (22, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (22, 415, 1, now(), 3);

-- 炼金术师
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (23, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (23, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (23, 404, 1, now(), 3);

-- 无极剑尊
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (24, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (24, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (24, 402, 1, now(), 3);

-- 火凤
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (25, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (25, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (25, 405, 1, now(), 3);

-- 漫游枪神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (26, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (26, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (26, 413, 1, now(), 3);

-- 暗黑龙骑士
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (27, 406, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (27, 402, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (27, 404, 1, now(), 3);

-- 神圣天使
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (28, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (28, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (28, 401, 1, now(), 3);

-- 堕落天使
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (29, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (29, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (29, 404, 1, now(), 3);

-- 九尾妖狐
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (30, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (30, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (30, 406, 1, now(), 3);

-- 狙神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (31, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (31, 407, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (31, 413, 1, now(), 3);

-- 禁魔猎人
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (32, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (32, 404, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (32, 406, 1, now(), 3);

-- 暗影之主
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (33, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (33, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (33, 413, 1, now(), 3);

-- 复仇亡魂
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (34, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (34, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (34, 402, 1, now(), 3);

-- 吸血鬼伯爵
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (35, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (35, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (35, 415, 1, now(), 3);

-- 荆棘甲士
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (36, 406, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (36, 402, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (36, 404, 1, now(), 3);

-- 星灵
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (37, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (37, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (37, 404, 1, now(), 3);

-- 鬼泣
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (38, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (38, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (38, 404, 1, now(), 3);

-- 暗裔枪骑
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (39, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (39, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (39, 413, 1, now(), 3);

-- 封魔剑魂
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (40, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (40, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (40, 406, 1, now(), 3);

-- 远古树精
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (41, 406, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (41, 404, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (41, 402, 1, now(), 3);

-- 时光贤者
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (42, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (42, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (42, 404, 1, now(), 3);

-- 兽灵行者
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (43, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (43, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (43, 402, 1, now(), 3);

-- 邪神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (500, 403, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (500, 405, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (500, 409, 1, now(), 3);


-- 2.11.1 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (16, '2.11.1', '29EC3B616956CB61FFEAB0D47642420E', 1, now(), 0);
insert into reward(source, source_id, type, reward_id, num) values ('VERSION_UPGRADE', 16, 'DIAMOND', NULL, 10000);


INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (23, '2.11.1', '2.11.1版本更新公告', '2022-11-06', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (23, '英雄推荐符文', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (23, '英雄战力计算', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (23, '关卡挑战，战斗结算，扫荡代码重构', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (23, '符文抽取优化，奖池增加2级和3级符文', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (23, '用户登录状态定时刷新', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (23, '英雄属性报表', '1');