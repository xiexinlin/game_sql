alter table user_rune add column is_valid tinyint(1) comment '是否有效';
alter table user_rune add column update_time datetime comment '更新时间';

update user_rune set is_valid = 1 where is_valid is null;

INSERT INTO `article`(`id`, `name`, `type`, `hero_id`, `description`) VALUES (998, '招募券', 2, NULL, '可招募一次英雄');
INSERT INTO `shop_article`(`id`, `article_id`, `currency`, `cost`, `sort`, `sale_date_start`, `sale_date_end`, `is_date_limited`, `daily_max_limit`) VALUES (10, 998, 2, 100, 10, NULL, NULL, 0, NULL);