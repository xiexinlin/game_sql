-- 2.9.4 版本
INSERT INTO `game`.`version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (5, '2.9.4', 'F83C6CB2F92B1250F2AFE71D0978608A', 1, now(), 0);


-- 2.9.4 版本更新补偿奖励
INSERT INTO `game`.`common_reward`(`id`, `ref_type`, `ref_id`, `type`, `reward_id`, `num`, `random`, `rune_level`) VALUES (2, 'VERSION_UPGRADE', 5, 2, NULL, 10000, NULL, NULL);

CREATE TABLE `hero_skill_attribute`  (
  `id` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `is_valid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

CREATE TABLE `hero_relation` (
  `id` int(11) NOT NULL,
  `hero_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `other_id` int(11) DEFAULT NULL COMMENT '关联羁绊英雄id',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '羁绊名称',
  `attribute` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '羁绊加成属性',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


INSERT INTO `game`.`announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (12, '2.9.4', '2022-06-19 2.9.4版本更新公告', '2022-06-19', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `game`.`announcement_detail`(`announcement_id`, `content`, `type`) VALUES (12, '排位匹配优化', '1');
INSERT INTO `game`.`announcement_detail`(`announcement_id`, `content`, `type`) VALUES (12, '英雄技能加成动态配置', '1');
INSERT INTO `game`.`announcement_detail`(`announcement_id`, `content`, `type`) VALUES (12, '称号功能', '1');
INSERT INTO `game`.`announcement_detail`(`announcement_id`, `content`, `type`) VALUES (12, '商品购买增加每日购买上限', '1');
INSERT INTO `game`.`announcement_detail`(`announcement_id`, `content`, `type`) VALUES (12, '抽卡优化，增加保底', '1');
INSERT INTO `game`.`announcement_detail`(`announcement_id`, `content`, `type`) VALUES (12, '新增成就任务和每周任务', '1');
