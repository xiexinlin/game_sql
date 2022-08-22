CREATE TABLE `faction_war`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`name` varchar(32) NOT NULL comment '名称',
	`season_index` int(0) NOT NULL comment '赛季',
	`start_register_time` datetime comment '开始报名时间',
	`end_register_time` datetime comment '结束报名时间',
	`start_fight_time` datetime comment '开始战斗时间',
	`end_fight_time` datetime comment '结束战斗时间',
	`status` int(0) NOT NULL comment '状态0报名中，1战斗中，2已结束',
	`is_valid` tinyint(0) NOT NULL comment '是否有效',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;


CREATE TABLE `faction_war_combat_record`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`faction_war_id` int(0) NOT NULL COMMENT '帮战id',
	`user_id` int(0) NOT NULL COMMENT '用户id',
	`opposite_user_id` int(0) NOT NULL COMMENT '对方用户id',
	`opposite_faction_war_ref_faction_member_id` int(0) COMMENT '对方成员id',
	`combat_result` int(0) COMMENT '战斗结果',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
	KEY (`faction_war_id`) USING BTREE,
	KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;


CREATE TABLE `faction_war_ref_faction`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`faction_war_id` int(0) NOT NULL COMMENT '帮战id',
	`faction_id` int(0) NOT NULL COMMENT '帮派id',
	`opposite_faction_id` int(0) NULL COMMENT '对方帮派id',
	`register_user_id` int(0) NOT NULL COMMENT '报名用户id',
	`status` int(0) NOT NULL comment '状态0未结算，1胜利，2失败',
	`create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
	KEY (`faction_war_id`) USING BTREE,
	KEY (`faction_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;


CREATE TABLE `faction_war_ref_faction_member`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`faction_war_id` int(0) NOT NULL COMMENT '帮战id',
	`faction_id` int(0) NOT NULL COMMENT '帮派id',
	`faction_member_id` int(0) NOT NULL COMMENT '成员id',
	`faction_war_ref_faction_id` int(0) NOT NULL COMMENT '帮战帮派id',
	`user_id` int(0) NOT NULL COMMENT '用户id',
	`hp` int(0) NOT NULL COMMENT '生命值',
	`status` int(0) NOT NULL comment '状态1存活，0战败',
	`create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
	KEY (`faction_war_id`) USING BTREE,
	KEY (`faction_id`) USING BTREE,
	KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;


CREATE TABLE `faction_technology`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `attribute` varchar(20) NOT NULL COMMENT '属性',
  `per_level_value` int(0) NOT NULL COMMENT '每级提升',
  `base_exp` int(0) NOT NULL COMMENT '升级基础经验',
  `sort` int(0) NOT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

CREATE TABLE `faction_technology_ref_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `faction_technology_id` int(0) NOT NULL COMMENT '帮派科技id',
  `level` int(0) NOT NULL COMMENT '等级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY (`user_id`) USING BTREE,
  KEY (`faction_technology_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

alter table faction_member add column available_contribution int(0) NOT NULL default 0 COMMENT '可用贡献';
update faction_member set available_contribution = contribution;


insert into faction_technology(id, name, attribute, per_level_value, base_exp, sort, create_time) values (1, '物理攻击', '物理攻击', 2, 100, 1, now());
insert into faction_technology(id, name, attribute, per_level_value, base_exp, sort, create_time) values (2, '物理防御', '物理防御', 2, 100, 2, now());
insert into faction_technology(id, name, attribute, per_level_value, base_exp, sort, create_time) values (3, '魔法攻击', '魔法攻击', 2, 100, 3, now());
insert into faction_technology(id, name, attribute, per_level_value, base_exp, sort, create_time) values (4, '魔法抗性', '魔法抗性', 2, 100, 4, now());
insert into faction_technology(id, name, attribute, per_level_value, base_exp, sort, create_time) values (5, '身手敏捷', '速度', 2, 100, 5, now());
insert into faction_technology(id, name, attribute, per_level_value, base_exp, sort, create_time) values (6, '强健体魄', '生命值', 2, 100, 6, now());


update article set name = '7日双倍经验卡' where id = '3003' and name = '7日双倍经验书';

INSERT INTO `article`(`id`, `name`, `type`, `hero_id`, `description`) VALUES (1012, '贡献宝箱', 2, NULL, '可获得100帮派贡献度！');

-- 帮战奖励
insert into reward(source, source_id, type, reward_id, num) values ('FACTION_WAR_VICTORY', 1, 'ARTICLE', 1012, 5);
insert into reward(source, source_id, type, reward_id, num) values ('FACTION_WAR_VICTORY', 1, 'GOLD', null, 50000);
insert into reward(source, source_id, type, reward_id, num) values ('FACTION_WAR_VICTORY', 1, 'DIAMOND', null, 500);

insert into reward(source, source_id, type, reward_id, num) values ('FACTION_WAR_FAIL', 1, 'ARTICLE', 1012, 1);
insert into reward(source, source_id, type, reward_id, num) values ('FACTION_WAR_FAIL', 1, 'GOLD', null, 20000);

insert into reward(source, source_id, type, reward_id, num) values ('FACTION_WAR_DRAW', 1, 'ARTICLE', 1012, 3);
insert into reward(source, source_id, type, reward_id, num) values ('FACTION_WAR_DRAW', 1, 'GOLD', null, 30000);

alter table combat_record modify column combat_result int(0) null DEFAULT null comment '战斗结局：1胜利，2失败，3平局';