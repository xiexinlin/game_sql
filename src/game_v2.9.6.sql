CREATE TABLE `obtain_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `type` varchar(16) NOT NULL COMMENT '类型：HERO，ARTICLE，RUNE',
  `ref_id` int(0) NOT NULL COMMENT '关联id',
  `num` int(0) NULL COMMENT '数量',
  `status` int(0) NOT NULL COMMENT '状态：0新，1已读',
  `time_limit` int(0) NULL DEFAULT NULL COMMENT '是否有时限（1有0没有）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY (`user_id`) USING BTREE,
  KEY (`ref_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

-- 奖励删除符文等级废弃字段
alter table mail_reward drop column rune_level;
alter table task_reward drop column rune_level;
alter table lottery_reward drop column rune_level;
alter table common_reward drop column rune_level;


INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (1, '物理攻击', 1, 5, '增加百分比物理攻击', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (2, '物理防御', 2, 5, '增加百分比物理防御', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (3, '魔法攻击', 3, 5, '增加百分比魔法攻击', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (4, '魔法抗性', 4, 5, '增加百分比魔法抗性', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (5, '速度', 5, 5, '增加百分比速度', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (6, '生命值', 6, 8, '增加百分比生命值', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (7, '物理暴击', 7, 5, '增加百分比物理暴击', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (8, '物理暴伤', 8, 8, '增加百分比物理暴伤', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (9, '魔法暴击', 9, 5, '增加百分比魔法暴击', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (10, '魔法暴伤', 10, 8, '增加百分比魔法暴伤', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (11, '物理吸血', 11, 5, '增加百分比物理吸血', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (12, '魔法吸血', 12, 5, '增加百分比魔法吸血', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (13, '物理穿透', 13, 5, '增加百分比物理穿透', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (14, '魔法穿透', 14, 5, '增加百分比魔法穿透', '2021-05-26 19:30:16', b'1');
INSERT INTO `game_test`.`rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`) VALUES (15, '治疗效果', 15, 5, '增加百分比治疗效果', '2021-05-26 19:30:16', b'1');
