create table `shop_generate_log` (
	`id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`user_id` int(0) NOT NULL COMMENT '用户id',
	`type` varchar(20) NOT NULL COMMENT '类型',
	`ref_id` int(0) NOT NULL COMMENT '关联id',
	`num` int(0) NOT NULL COMMENT '数量',
	`is_shard` tinyint(0) NOT NULL COMMENT '是否碎片',
	`is_valid` int(0) NOT NULL COMMENT '是否有效',
	`status` tinyint(0) NOT NULL COMMENT '保底状态',
	`create_time` datetime NOT NULL COMMENT '创建时间',
	`second_type` varchar(20) NULL COMMENT '第二类型',
	PRIMARY KEY (`id`) USING BTREE,
	KEY (`user_id`) USING BTREE,
	KEY (`ref_id`) USING BTREE
);

insert into shop_generate_log(user_id, type, ref_id, num, is_shard, is_valid, status, create_time, second_type) select user_id, 'HERO', hero_id, num, is_shard, 1, is_valid, create_time, hero_recruitment_type from hero_generate_log;

drop table hero_generate_log;

create table `rank_hero_ban` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `hero_id` int(0) NOT NULL COMMENT '英雄id',
    `is_valid` int(0) NOT NULL COMMENT '是否有效',
    `create_time` datetime NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE,
    KEY (`hero_id`) USING BTREE
);

create table `rank_hero_ban_vote_log` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id` int(0) NOT NULL COMMENT '用户id',
    `hero_id` int(0) NOT NULL COMMENT '英雄id',
    `is_valid` int(0) NOT NULL COMMENT '是否有效',
    `create_time` datetime NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE,
    KEY (`user_id`) USING BTREE,
    KEY (`hero_id`) USING BTREE
);

-- 新增禁用状态
alter table user_rank add column ban tinyint(0) default 0 COMMENT '';

-- 阵型使用关联表
create table `formation_used_mapping` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id` int(0) NOT NULL COMMENT '用户id',
    `formation_id` int(0) NOT NULL COMMENT '阵型id',
    `type` varchar(20) NOT NULL COMMENT '类型',
    `create_time` datetime NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE,
    KEY (`user_id`) USING BTREE,
    KEY (`formation_id`) USING BTREE
);

alter table formation drop column is_use;

-- 排位匹配表
create table `rank_match_record` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `defender_user_id` int(0) NOT NULL COMMENT '守擂方id',
    `challenger_user_id` int(0) NOT NULL COMMENT '挑战方id',
    `battle_result` int(0) NOT NULL COMMENT '战斗结果',
    `season_id` int(0) NOT NULL COMMENT '赛季id',
    `battle_record_json` text COMMENT '战斗json',
    `create_time` datetime NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE,
    KEY (`defender_user_id`) USING BTREE,
    KEY (`challenger_user_id`) USING BTREE
)

create table `rank_match_record_score` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `rank_match_record_id` int(0) NOT NULL COMMENT '排位匹配记录id',
    `user_id` int(0) NOT NULL COMMENT '用户id',
    `score` int(0) NOT NULL COMMENT '分数',
    PRIMARY KEY (`id`) USING BTREE,
    KEY (`rank_match_record_id`) USING BTREE,
    KEY (`user_id`) USING BTREE
)

create table `rank_match_record_detail` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `rank_match_record_id` int(0) NOT NULL COMMENT '排位匹配记录id',
    `user_id` int(0) NOT NULL COMMENT '用户id',
    `hero_id` int(0) NOT NULL COMMENT '英雄id',
    `hero_lv` int(0) NOT NULL COMMENT '英雄等级',
    `hero_star` int(0) NOT NULL COMMENT '英雄星级',
    `battle_num` int(0) NULL COMMENT '阵容序号',
    PRIMARY KEY (`id`) USING BTREE,
    KEY (`rank_match_record_id`) USING BTREE,
    KEY (`user_id`) USING BTREE,
    KEY (`hero_id`) USING BTREE
)