drop table `rune`;
CREATE TABLE `rune` (
  `id` int NOT NULL COMMENT '主键',
  `name` varchar(32) DEFAULT NULL COMMENT '名字',
  `type` int DEFAULT NULL COMMENT '类型',
  `value` int DEFAULT NULL COMMENT '数值',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `level` int DEFAULT NULL COMMENT '等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (1, '物理攻击', 1, 5, '增加百分比物理攻击', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (2, '物理防御', 2, 5, '增加百分比物理防御', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (3, '魔法攻击', 3, 5, '增加百分比魔法攻击', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (4, '魔法抗性', 4, 5, '增加百分比魔法抗性', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (5, '速度', 5, 5, '增加百分比速度', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (6, '生命值', 6, 8, '增加百分比生命值', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (7, '物理暴击', 7, 5, '增加百分比物理暴击', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (8, '物理暴伤', 8, 8, '增加百分比物理暴伤', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (9, '魔法暴击', 9, 5, '增加百分比魔法暴击', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (10, '魔法暴伤', 10, 8, '增加百分比魔法暴伤', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (11, '物理吸血', 11, 5, '增加百分比物理吸血', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (12, '魔法吸血', 12, 5, '增加百分比魔法吸血', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (13, '物理穿透', 13, 5, '增加百分比物理穿透', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (14, '魔法穿透', 14, 5, '增加百分比魔法穿透', now(), 1, 1);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (15, '治疗效果', 15, 5, '增加百分比治疗效果', now(), 1, 1);

INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (101, '物理攻击', 1, 10, '增加百分比物理攻击', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (102, '物理防御', 2, 10, '增加百分比物理防御', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (103, '魔法攻击', 3, 10, '增加百分比魔法攻击', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (104, '魔法抗性', 4, 10, '增加百分比魔法抗性', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (105, '速度', 5, 10, '增加百分比速度', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (106, '生命值', 6, 16, '增加百分比生命值', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (107, '物理暴击', 7, 10, '增加百分比物理暴击', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (108, '物理暴伤', 8, 16, '增加百分比物理暴伤', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (109, '魔法暴击', 9, 10, '增加百分比魔法暴击', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (110, '魔法暴伤', 10, 16, '增加百分比魔法暴伤', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (111, '物理吸血', 11, 10, '增加百分比物理吸血', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (112, '魔法吸血', 12, 10, '增加百分比魔法吸血', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (113, '物理穿透', 13, 10, '增加百分比物理穿透', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (114, '魔法穿透', 14, 10, '增加百分比魔法穿透', now(), 1, 2);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (115, '治疗效果', 15, 10, '增加百分比治疗效果', now(), 1, 2);

INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (201, '物理攻击', 1, 15, '增加百分比物理攻击', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (202, '物理防御', 2, 15, '增加百分比物理防御', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (203, '魔法攻击', 3, 15, '增加百分比魔法攻击', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (204, '魔法抗性', 4, 15, '增加百分比魔法抗性', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (205, '速度', 5, 15, '增加百分比速度', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (206, '生命值', 6, 24, '增加百分比生命值', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (207, '物理暴击', 7, 15, '增加百分比物理暴击', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (208, '物理暴伤', 8, 24, '增加百分比物理暴伤', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (209, '魔法暴击', 9, 15, '增加百分比魔法暴击', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (210, '魔法暴伤', 10, 24, '增加百分比魔法暴伤', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (211, '物理吸血', 11, 15, '增加百分比物理吸血', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (212, '魔法吸血', 12, 15, '增加百分比魔法吸血', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (213, '物理穿透', 13, 15, '增加百分比物理穿透', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (214, '魔法穿透', 14, 15, '增加百分比魔法穿透', now(), 1, 3);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (215, '治疗效果', 15, 15, '增加百分比治疗效果', now(), 1, 3);


INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (301, '物理攻击', 1, 20, '增加百分比物理攻击', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (302, '物理防御', 2, 20, '增加百分比物理防御', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (303, '魔法攻击', 3, 20, '增加百分比魔法攻击', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (304, '魔法抗性', 4, 20, '增加百分比魔法抗性', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (305, '速度', 5, 20, '增加百分比速度', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (306, '生命值', 6, 32, '增加百分比生命值', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (307, '物理暴击', 7, 20, '增加百分比物理暴击', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (308, '物理暴伤', 8, 32, '增加百分比物理暴伤', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (309, '魔法暴击', 9, 20, '增加百分比魔法暴击', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (310, '魔法暴伤', 10, 32, '增加百分比魔法暴伤', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (311, '物理吸血', 11, 20, '增加百分比物理吸血', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (312, '魔法吸血', 12, 20, '增加百分比魔法吸血', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (313, '物理穿透', 13, 20, '增加百分比物理穿透', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (314, '魔法穿透', 14, 20, '增加百分比魔法穿透', now(), 1, 4);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (315, '治疗效果', 15, 20, '增加百分比治疗效果', now(), 1, 4);

INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (401, '物理攻击', 1, 25, '增加百分比物理攻击', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (402, '物理防御', 2, 25, '增加百分比物理防御', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (403, '魔法攻击', 3, 25, '增加百分比魔法攻击', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (404, '魔法抗性', 4, 25, '增加百分比魔法抗性', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (405, '速度', 5, 25, '增加百分比速度', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (406, '生命值', 6, 40, '增加百分比生命值', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (407, '物理暴击', 7, 25, '增加百分比物理暴击', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (408, '物理暴伤', 8, 40, '增加百分比物理暴伤', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (409, '魔法暴击', 9, 25, '增加百分比魔法暴击', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (410, '魔法暴伤', 10, 40, '增加百分比魔法暴伤', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (411, '物理吸血', 11, 25, '增加百分比物理吸血', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (412, '魔法吸血', 12, 25, '增加百分比魔法吸血', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (413, '物理穿透', 13, 25, '增加百分比物理穿透', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (414, '魔法穿透', 14, 25, '增加百分比魔法穿透', now(), 1, 5);
INSERT INTO `rune`(`id`, `name`, `type`, `value`, `remark`, `create_time`, `status`, `level`) VALUES (415, '治疗效果', 15, 25, '增加百分比治疗效果', now(), 1, 5);


-- 奖励删除符文等级废弃字段
alter table mail_reward drop column rune_level;
alter table task_reward drop column rune_level;
alter table lottery_reward drop column rune_level;
alter table common_reward drop column rune_level;
alter table user_rune drop column level;

update task_reward set reward_id = 401 where id = 63;
update task_reward set reward_id = 403 where id = 64;