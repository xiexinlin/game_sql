alter table designation change combatPowerAddition combat_power_addition int(0) not null comment '战斗力加成';

update designation set combat_power_addition = 100 where id = 1;
update designation set combat_power_addition = 150 where id = 2;
update designation set combat_power_addition = 240 where id = 3;
update designation set combat_power_addition = 360 where id = 4;
update designation set combat_power_addition = 500 where id = 5;
update designation set combat_power_addition = 80 where id = 11;
update designation set combat_power_addition = 120 where id = 12;
update designation set combat_power_addition = 450 where id = 100;
update designation set combat_power_addition = 500 where id = 500;
update designation set combat_power_addition = 450 where id = 800;
update designation set combat_power_addition = 150 where id = 900;
update designation set combat_power_addition = 210 where id = 901;
update designation set combat_power_addition = 250 where id = 902;
update designation set combat_power_addition = 350 where id = 903;
update designation set combat_power_addition = 550 where id = 904;
update designation set combat_power_addition = 600 where id = 1000;

-- 阵容属性加成
create table battle_array_detail_attribute (
	 `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	 `battle_array_detail_id` int(0) NOT NULL COMMENT '阵容明细id',
	 `type` varchar(20) not null comment '属性类型',
	 `addition` int(0) not null comment '加成',
	 `is_valid` int(0) not null comment '是否有效',
	 `create_time` datetime COMMENT '创建时间',
	 PRIMARY KEY (`id`) USING BTREE,
	 KEY (`battle_array_detail_id`) USING BTREE
)

-- 英雄天赋
create table hero_talent (
	 `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	 `user_id` int(0) NOT NULL COMMENT '用户id',
	 `hero_id` int(0) not null comment '英雄id',
	 `hero_talent_config_id` int(0) not null comment '天赋配置id',
	 `create_time` datetime COMMENT '创建时间',
	 PRIMARY KEY (`id`) USING BTREE,
	 KEY (`user_id`) USING BTREE,
	 KEY (`hero_id`) USING BTREE,
	 KEY (`hero_talent_config_id`) USING BTREE
)

create table hero_talent_config (
	 `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	 `parent_id` int(0) COMMENT '上级id',
	 `name` varchar(20) NOT NULL COMMENT '名称',
	 `level` int(0) NOT NULL COMMENT '级别',
	 `sort` int(0) NOT NULL COMMENT '同级别排序',
	 `description` varchar(255) COMMENT '文字描述',
	 `create_time` datetime COMMENT '创建时间',
	 `is_valid` int(0) NOT NULL COMMENT '是否有效',
	 PRIMARY KEY (`id`) USING BTREE,
	 KEY (`parent_id`) USING BTREE
)

create table hero_talent_config_attribute (
	 `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	 `hero_talent_config_id` int(0) NOT NULL COMMENT '配置id',
	 `attr_key` varchar(20) NOT NULL COMMENT '属性key',
	 `attr_value` varchar(20) NOT NULL COMMENT '属性值',
	 `create_time` datetime COMMENT '创建时间',
	 `is_valid` int(0) NOT NULL COMMENT '是否有效',
	 PRIMARY KEY (`id`) USING BTREE,
	 KEY (`hero_talent_config_id`) USING BTREE
)

INSERT INTO `article`(`id`, `name`, `type`, `hero_id`, `description`) VALUES (1013, '改名卡', 2, NULL, '可更改用户昵称！');

-- 帮派申请增加类型
alter table faction_apply add column type varchar(20) null comment 'INVITE：邀请，SELF_JOIN：加入';

-- 第三章
INSERT INTO `chapter`(`id`, `chapter`, `chapter_index`, `chapter_name`) VALUES (3, '第三章', 3, '禁魔森林');
-- 第三章奖励
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('CHAPTER', 3, 'DIAMOND', NULL, 1500, NULL, 1);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('CHAPTER', 3, 'ARTICLE', 1009, 20, NULL, 1);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('CHAPTER', 3, 'DIAMOND', NULL, 3000, NULL, 2);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('CHAPTER', 3, 'ARTICLE', 2002, 5, NULL, 2);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('CHAPTER', 3, 'DIAMOND', NULL, 7500, NULL, 3);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('CHAPTER', 3, 'ARTICLE', 998, 30, NULL, 3);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('CHAPTER', 3, 'ARTICLE', 2003, 5, NULL, 3);

-- 第三章第一关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (21, '第一关', 3, 21, 'avatar/41.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (209, 'CHECKPOINT', 21, 22, 1, 10, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (210, 'CHECKPOINT', 21, 41, 1, 10, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (210, '生命值', 30, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (211, 'CHECKPOINT', 21, 4, 1, 10, 2);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (212, 'CHECKPOINT', 21, 43, 1, 10, 3);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (213, 'CHECKPOINT', 21, 26, 1, 10, 4);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 21, 'EXP', NULL, 105, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 21, 'GOLD', NULL, 320, 100);


-- 第三章第二关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (22, '第二关', 3, 22, 'avatar/41.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (214, 'CHECKPOINT', 22, 22, 1, 11, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (215, 'CHECKPOINT', 22, 41, 1, 11, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (215, '生命值', 30, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (215, '魔法抗性', 30, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (216, 'CHECKPOINT', 22, 21, 1, 11, 2);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (217, 'CHECKPOINT', 22, 43, 1, 11, 3);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (218, 'CHECKPOINT', 22, 31, 1, 11, 4);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 22, 'EXP', NULL, 110, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 22, 'GOLD', NULL, 330, 100);

-- 第三章第三关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (23, '第三关', 3, 23, 'avatar/41.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (219, 'CHECKPOINT', 23, 22, 1, 11, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (220, 'CHECKPOINT', 23, 41, 1, 11, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (220, '生命值', 30, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (220, '魔法抗性', 30, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (221, 'CHECKPOINT', 23, 21, 1, 11, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (221, '魔法攻击', 30, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (222, 'CHECKPOINT', 23, 12, 1, 11, 3);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (223, 'CHECKPOINT', 23, 31, 1, 11, 4);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 23, 'EXP', NULL, 115, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 23, 'GOLD', NULL, 340, 100);

-- 第三章第四关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (24, '第四关', 3, 24, 'avatar/41.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (224, 'CHECKPOINT', 24, 22, 1, 12, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (225, 'CHECKPOINT', 24, 41, 1, 12, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (225, '生命值', 40, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (225, '魔法抗性', 40, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (226, 'CHECKPOINT', 24, 4, 1, 12, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (226, '魔法攻击', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (227, 'CHECKPOINT', 24, 12, 1, 12, 3);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (228, 'CHECKPOINT', 24, 35, 1, 12, 4);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 24, 'EXP', NULL, 120, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 24, 'GOLD', NULL, 350, 100);

-- 第三章第五关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (25, '第五关', 3, 25, 'avatar/32.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (229, 'CHECKPOINT', 25, 22, 1, 12, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (230, 'CHECKPOINT', 25, 41, 1, 12, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (225, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (225, '魔法抗性', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (231, 'CHECKPOINT', 25, 32, 1, 12, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (231, '魔法抗性', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (231, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (231, '物理攻击', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (232, 'CHECKPOINT', 25, 12, 1, 12, 3);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (232, '生命值', 40, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (233, 'CHECKPOINT', 25, 25, 1, 12, 4);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 25, 'EXP', NULL, 125, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 25, 'GOLD', NULL, 360, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 25, 'DIAMOND', NULL, 50, 50);

-- 第三章第六关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (26, '第六关', 3, 26, 'avatar/32.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (234, 'CHECKPOINT', 26, 42, 1, 13, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (235, 'CHECKPOINT', 26, 41, 1, 13, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (235, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (235, '魔法抗性', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (236, 'CHECKPOINT', 26, 32, 1, 13, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (236, '魔法抗性', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (236, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (236, '物理攻击', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (237, 'CHECKPOINT', 26, 12, 1, 13, 3);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (237, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (238, 'CHECKPOINT', 26, 29, 1, 13, 4);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 26, 'EXP', NULL, 130, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 26, 'GOLD', NULL, 370, 100);

-- 第三章第七关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (27, '第七关', 3, 27, 'avatar/32.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (239, 'CHECKPOINT', 27, 22, 1, 13, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (240, 'CHECKPOINT', 27, 41, 1, 13, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (240, '生命值', 60, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (240, '魔法抗性', 60, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (241, 'CHECKPOINT', 27, 32, 1, 13, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (241, '魔法抗性', 60, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (241, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (241, '物理攻击', 60, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (242, 'CHECKPOINT', 27, 12, 1, 13, 3);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (242, '生命值', 60, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (243, 'CHECKPOINT', 27, 21, 1, 13, 4);

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 27, 'EXP', NULL, 135, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 27, 'GOLD', NULL, 380, 100);

-- 第三章第八关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (28, '第八关', 3, 28, 'avatar/28.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (244, 'CHECKPOINT', 28, 22, 1, 14, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (245, 'CHECKPOINT', 28, 41, 1, 14, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (245, '生命值', 60, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (245, '魔法抗性', 60, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (246, 'CHECKPOINT', 28, 32, 1, 14, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (246, '魔法抗性', 60, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (246, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (246, '物理攻击', 60, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (247, 'CHECKPOINT', 28, 12, 1, 14, 3);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (247, '生命值', 60, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (248, 'CHECKPOINT', 28, 28, 1, 14, 4);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (248, '物理攻击', 60, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (248, '魔法攻击', 60, 1, now());

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 28, 'EXP', NULL, 140, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 28, 'GOLD', NULL, 390, 100);

-- 第三章第九关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (29, '第九关', 3, 29, 'avatar/32.jpg', NULL);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (249, 'CHECKPOINT', 29, 22, 1, 14, 0);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (250, 'CHECKPOINT', 29, 41, 1, 14, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (250, '生命值', 80, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (250, '魔法抗性', 80, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (251, 'CHECKPOINT', 29, 32, 1, 14, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (251, '魔法抗性', 80, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (251, '生命值', 60, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (251, '物理攻击', 80, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (252, 'CHECKPOINT', 29, 12, 1, 14, 3);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (252, '生命值', 80, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (252, '魔法抗性', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (253, 'CHECKPOINT', 29, 4, 1, 14, 4);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (253, '魔法攻击', 100, 1, now());

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 29, 'EXP', NULL, 145, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 29, 'GOLD', NULL, 390, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 29, 'ARTICLE', 1008, 1, 50);

-- 第三章第十关
INSERT INTO `checkpoint`(`id`, `name`, `chapter`, `order_num`, `icon`, `is_final_checkpoint`) VALUES (30, '第十关', 3, 30, 'avatar/4.jpg', 1);
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (254, 'CHECKPOINT', 30, 22, 1, 15, 0);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (254, '魔法攻击', 50, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (254, '生命值', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (255, 'CHECKPOINT', 30, 41, 1, 15, 1);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (255, '生命值', 100, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (255, '魔法抗性', 100, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (256, 'CHECKPOINT', 30, 32, 1, 15, 2);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (256, '魔法抗性', 100, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (256, '生命值', 100, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (256, '物理攻击', 100, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (257, 'CHECKPOINT', 30, 12, 1, 15, 3);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (257, '生命值', 100, 1, now());
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (257, '魔法抗性', 50, 1, now());
INSERT INTO `battle_array_detail`(`id`, `type`, `ref_id`, `hero_id`, `hero_star`, `hero_lv`, `battle_array_num`) VALUES (258, 'CHECKPOINT', 30, 4, 1, 15, 4);
INSERT INTO `battle_array_detail_attribute`(`battle_array_detail_id`, `type`, `addition`, `is_valid`, `create_time`) VALUES (258, '魔法攻击', 100, 1, now());

INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 30, 'EXP', NULL, 150, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 30, 'GOLD', NULL, 400, 100);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`) VALUES ('CHECKPOINT', 30, 'DIAMOND', NULL, 100, 50);