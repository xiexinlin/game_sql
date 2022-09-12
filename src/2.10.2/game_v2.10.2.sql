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

-- 2.10.2 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (12, '2.10.2', '3611C4A71F667AE1DFF83A37FD8636B7', 1, now(), 0);
insert into reward(source, source_id, type, reward_id, num) values ('VERSION_UPGRADE', 12, 'DIAMOND', NULL, 10000);


INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (19, '2.10.2', '2022-09-12 2.10.2版本更新公告', '2022-09-12', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (19, '英雄羁绊系统完善', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (19, '英雄助战系统', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (19, '阵容界面调整', '1');