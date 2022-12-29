create table `user_hero_custom_attribute` (
	`id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`user_id` int(0) NOT NULL COMMENT '用户id',
	`hero_id` int(0) NOT NULL COMMENT '英雄id',
	`attribute_name` varchar(20) NOT NULL COMMENT '属性名称',
	`attribute_value` int(0) NOT NULL COMMENT '属性值',
	PRIMARY KEY (`id`) USING BTREE,
	KEY (`user_id`) USING BTREE,
	KEY (`hero_id`) USING BTREE
)

alter table tower_challenge_log add column type varchar(20) null comment '类型';

create table `equipment` (
	`id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`name` varchar(20) NOT NULL COMMENT '名称',
	`description` varchar(20) NULL COMMENT '描述',
	`fragment_article_id` int(0) NULL COMMENT '碎片物品id',
	`is_valid` int(0) NOT NULL COMMENT '是否有效',
	`create_time` datetime NOT NULL COMMENT '创建时间'
	PRIMARY KEY (`id`) USING BTREE,
	KEY (`fragment_article_id`) USING BTREE
)

create table `equipment_attribute` (
	`id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`equipment_id` int(0) NOT NULL COMMENT '装备id',
	`attribute_name` varchar(20) NOT NULL COMMENT '属性名称',
	`attribute_value` int(0) NULL COMMENT '属性值',
	`per_level_value` int(0) NULL COMMENT '每级加成',
	`is_valid` int(0) NOT NULL COMMENT '是否有效',
	`create_time` datetime NOT NULL COMMENT '创建时间'
	PRIMARY KEY (`id`) USING BTREE,
	KEY (`equipment_id`) USING BTREE
)

create table `user_equipment` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id` int(0) NOT NULL COMMENT '用户id',
    `equipment_id` int(0) NOT NULL COMMENT '装备id',
    `level` int(0) NOT NULL COMMENT '等级',
    `create_time` datetime NOT NULL COMMENT '创建时间'
    PRIMARY KEY (`id`) USING BTREE,
	KEY (`user_id`) USING BTREE,
	KEY (`equipment_id`) USING BTREE
)

create table `user_equipment_mapping` (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_equipment_id` int(0) NOT NULL COMMENT '用户装备id',
    `hero_id` int(0) NOT NULL COMMENT '英雄id',
    `user_id` int(0) NOT NULL COMMENT '用户id',
    `serial_number` int(0) NOT NULL COMMENT '序号',
    PRIMARY KEY (`id`) USING BTREE,
	KEY (`user_equipment_id`) USING BTREE,
	KEY (`hero_id`) USING BTREE
)