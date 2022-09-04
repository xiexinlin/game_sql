CREATE TABLE `user_hero_mapping`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) not null COMMENT '用户id',
  `hero_id` int(0) not null COMMENT '英雄id',
  `type` varchar(20) not null COMMENT '类型：BATTLE_ARRAY阵容',
  `serial_num` int(0) not null COMMENT '序号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY (`user_id`) USING BTREE,
  KEY (`hero_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

insert into user_hero_mapping (user_id, hero_id, type, serial_num) select user_id, hero_id, 'BATTLE_ARRAY', battle_num from user_hero where battle_num is not null;

alter table user_hero drop column battle_num;

INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (1, 1, 2, '剑之归途', '+10%物理攻击', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (2, 2, 1, '剑之归途', '+10%物理攻击', now());

-- 2.10.1 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (11, '2.10.1', '3AD0AE3C70B39D2450EC80FC6323022B', 1, now(), 0);
insert into reward(source, source_id, type, reward_id, num) values ('VERSION_UPGRADE', 11, 'DIAMOND', NULL, 10000);


INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (18, '2.10.1', '2022-09-04 2.10.1版本更新公告', '2022-09-04', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (18, '阵容界面布局优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (18, '首页红点提示代码优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (18, '战斗伤害详情结算界面ui优化', '1');
