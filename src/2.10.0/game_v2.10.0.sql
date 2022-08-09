CREATE TABLE `faction_war`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`name` varchar(32) NOT NULL comment '名称',
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
	`combat_result` int(0) NOT NULL COMMENT 'combatResult',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
	KEY (`faction_war_id`) USING BTREE,
	KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;


CREATE TABLE `faction_war_ref_faction`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`faction_war_id` int(0) NOT NULL COMMENT '帮战id',
	`faction_id` int(0) NOT NULL COMMENT '帮派id',
	`opposite_faction_id` int(0) NOT NULL COMMENT '对方帮派id',
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