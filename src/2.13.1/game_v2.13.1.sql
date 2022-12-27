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