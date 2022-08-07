-- 挑战书资源
INSERT INTO `game_resource`(`path`, `file_size`, `is_valid`, `create_time`) VALUES ('/images/article/1011.png', 104062, 1, now());

-- 新增道具和商品 挑战书
INSERT INTO `article`(`id`, `name`, `type`, `hero_id`, `description`) VALUES (1011, '挑战书', 2, NULL, '可额外挑战一次世界boss');
INSERT INTO `shop_article`(`id`, `article_id`, `currency`, `cost`, `sort`, `sale_date_start`, `sale_date_end`, `is_date_limited`, `daily_max_limit`) VALUES (11, 1011, 2, 100, 11, NULL, NULL, 0, NULL);

-- boss伤害记录表新增是否状态和更新时间字段
alter table boss_injury add column status tinyint(1) comment '状态，0开始战斗，1已结算';
alter table boss_injury add column update_time datetime comment '更新时间';

-- 2.9.8 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (9, '2.9.8', 'A3EE629A1658B35465D127806A9E91E5', 1, now(), 0);
insert into reward(source, source_id, type, reward_id, num) values ('VERSION_UPGRADE', 9, 'DIAMOND', NULL, 10000);

INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (16, '2.9.8', '2022-08-07 2.9.8版本更新公告', '2022-08-07', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (16, '英雄属性计算优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (16, '新增道具挑战书', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (16, 'boss挑战调整（消耗100钻石=》消耗1挑战书）', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (16, '关卡新增默认背景图', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (16, '本地报错日志记录', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (16, '弹窗交互优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (16, '解决部分已知bug', '1');

