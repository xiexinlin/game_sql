CREATE TABLE `hero_train_log`  (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id` int(0) NOT NULL COMMENT '用户id',
	`hero_id` int(0) NOT NULL COMMENT '英雄id',
	`train_hour` int(0) NOT NULL COMMENT '训练时长',
	`end_time` datetime NOT NULL COMMENT '结束时间',
	`is_valid` int(0) NOT NULL COMMENT '是否有效',
	`create_time` datetime COMMENT '创建时间',
	`update_time` datetime COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE,
	KEY (`user_id`) USING BTREE,
	KEY (`hero_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;