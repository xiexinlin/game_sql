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