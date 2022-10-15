CREATE TABLE `hero_rune_recommendation`  (
    `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`hero_id` int(0) NOT NULL COMMENT '英雄id',
	`rune_id` int(0) NOT NULL COMMENT '符文id',
	`is_valid` int(0) NOT NULL COMMENT '是否有效',
	`create_time` datetime COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE,
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

-- 关卡成就任务
INSERT INTO `task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (401, '剑之初试', 3, '通过剑之初试章节全部关卡', 1, NULL, 401);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('TASK', 401, 'DIAMOND', NULL, 1000, NULL, NULL);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('TASK', 401, 'DESIGNATION', 11, 1, NULL, NULL);
-- 关卡成就任务
INSERT INTO `task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (402, '冰与火', 3, '通过冰与火章节全部关卡', 1, NULL, 402);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('TASK', 402, 'DIAMOND', NULL, 2000, NULL, NULL);
INSERT INTO `reward`(`source`, `source_id`, `type`, `reward_id`, `num`, `random`, `sort`) VALUES ('TASK', 402, 'DESIGNATION', 12, 1, NULL, NULL);



-- 2.11.0 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (15, '2.11.0', 'D0E68CB2C611F546F8114C38E5A0C980', 1, now(), 0);
insert into reward(source, source_id, type, reward_id, num) values ('VERSION_UPGRADE', 15, 'DIAMOND', NULL, 10000);

INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (22, '2.11.0', '2.11.0版本更新公告', '2022-10-15', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (22, '聊天系统优化：1.支持表情包和文字一起显示；2.聊天内容缓存优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (22, '战斗代码优化整理', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (22, '阵型未学习界面优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (22, '关卡成就任务', '1');
