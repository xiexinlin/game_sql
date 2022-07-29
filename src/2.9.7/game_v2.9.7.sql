alter table user_rune add column is_valid tinyint(1) comment '是否有效';
alter table user_rune add column update_time datetime comment '更新时间';

update user_rune set is_valid = 1 where is_valid is null;

INSERT INTO `article`(`id`, `name`, `type`, `hero_id`, `description`) VALUES (998, '招募券', 2, NULL, '可招募一次英雄');
INSERT INTO `shop_article`(`id`, `article_id`, `currency`, `cost`, `sort`, `sale_date_start`, `sale_date_end`, `is_date_limited`, `daily_max_limit`) VALUES (10, 998, 2, 100, 10, NULL, NULL, 0, NULL);


CREATE TABLE `user_property`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `gold` int(0) NOT NULL COMMENT '金币',
  `diamond` int(0) NOT NULL COMMENT '钻石',
  `physical_strength` int(0) NOT NULL COMMENT '体力',
  `fragmentary_essence` int(0) NOT NULL COMMENT '碎片精粹',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
	KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;


insert into user_property (user_id, gold, diamond, physical_strength, fragmentary_essence, create_time) select id, gold, diamond, ifnull(physical_strength, 100), ifnull(fragmentary_essence, 0), create_time from user;
alter table user drop column gold;
alter table user drop column diamond;
alter table user drop column physical_strength;
alter table user drop column fragmentary_essence;