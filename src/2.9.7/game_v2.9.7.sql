-- 符文表新增是否有效和更新时间字段
alter table user_rune add column is_valid tinyint(1) comment '是否有效';
alter table user_rune add column update_time datetime comment '更新时间';

-- 符文旧数据修复
update user_rune set is_valid = 1 where is_valid is null;

-- 新增道具和商品 招募券
INSERT INTO `article`(`id`, `name`, `type`, `hero_id`, `description`) VALUES (998, '招募券', 2, NULL, '可招募一次英雄');
INSERT INTO `shop_article`(`id`, `article_id`, `currency`, `cost`, `sort`, `sale_date_start`, `sale_date_end`, `is_date_limited`, `daily_max_limit`) VALUES (10, 998, 2, 100, 10, NULL, NULL, 0, NULL);

-- 招募券资源
INSERT INTO `game_resource`(`path`, `file_size`, `is_valid`, `create_time`) VALUES ('/images/article/998.png', 55895, 1, now());

-- 用户财产表
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

-- 用户财产旧数据修复
insert into user_property (user_id, gold, diamond, physical_strength, fragmentary_essence, create_time) select id, gold, diamond, ifnull(physical_strength, 100), ifnull(fragmentary_essence, 0), create_time from user;
alter table user drop column gold;
alter table user drop column diamond;
alter table user drop column physical_strength;
alter table user drop column fragmentary_essence;

-- 阵法之书调整成金币购买
update shop_article set currency = 1, cost = 2000 where article_id = 1008;


-- 奖励表
CREATE TABLE `reward`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `source` varchar(32) NOT NULL COMMENT '奖励来源',
  `source_id` int(0) NOT NULL COMMENT '来源id',
  `type` varchar(20) NOT NULL COMMENT '奖励类型（EXP经验,DIAMOND钻石,GOLD金币,ARTICLE物品,RUNE符文,DESIGNATION称号）',
  `reward_id` int(0) NULL COMMENT '奖励id',
  `num` int(0) NOT NULL COMMENT '数量',
	`random` int(0) NULL COMMENT '概率',
	`sort` int(0) NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
	KEY (`source_id`) USING BTREE,
	KEY (`reward_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

-- 版本更新奖励迁移
insert into reward(source, source_id, type, reward_id, num, random)
select 'VERSION_UPGRADE', ref_id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num, random from common_reward;

drop table common_reward;

-- boss奖励迁移
insert into reward(source, source_id, type, reward_id, num, sort)
select case source when 1 then 'BOSS_DEFEAT' when 2 then 'BOSS_INJURY_ORDER' when 3 then 'BOSS_FINAL_HIT' end, boss_type_id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num, order_num from boss_reward;

drop table boss_reward;

-- 章节奖励迁移
insert into reward(source, source_id, type, reward_id, num, sort)
select 'CHAPTER', chapter_id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num, reward_index from chapter_reward;

drop table chapter_reward;

-- 关卡奖励迁移
insert into reward(source, source_id, type, reward_id, num, random)
select 'CHECKPOINT', checkpoint_id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num, random * 100 from checkpoint_reward;

drop table checkpoint_reward;

-- 每日签到奖励迁移
insert into reward(source, source_id, type, reward_id, num)
select 'DAILY_ATTENDANCE', id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num from daily_attendance_reward;

drop table daily_attendance_reward;

-- 副本奖励迁移
insert into reward(source, source_id, type, reward_id, num, sort)
select case instance_level when 1 then 'INSTANCE_SIMPLE' when 2 then 'INSTANCE_MEDIUM' when 3 then 'INSTANCE_DIFFICULTY' end, instance_id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num, `index` from instance_reward;

drop table instance_reward;

-- 夺宝奇兵奖励迁移
insert into reward(source, source_id, type, reward_id, num, random)
select 'LOTTERY', lottery_id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num, random from lottery_reward;

drop table lottery_reward;

-- 新手礼包奖励迁移
insert into reward(source, source_id, type, reward_id, num)
select 'NEW_USER', id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num from new_user_reward;

drop table new_user_reward;

-- 排位奖励迁移
insert into reward(source, source_id, type, reward_id, num, sort)
select case source when 1 then 'RANK_ORDER' when 2 then 'RANK_TYPE' end, 12, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num, case source when 1 then ranking_order when 2 then rank_type end from rank_reward;

drop table rank_reward;

-- 任务奖励迁移
insert into reward(source, source_id, type, reward_id, num)
select 'TASK', task_id, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num from task_reward;

drop table task_reward;

-- 斗神塔奖励迁移
insert into reward(source, source_id, type, reward_id, num)
select 'TOWER', level, case type when 1 then 'EXP' when 2 then 'DIAMOND' when 3 then 'GOLD' when 4 then 'ARTICLE' when 5 then 'RUNE' when 6 then 'DESIGNATION' end, reward_id, num from tower_reward;

drop table tower_reward;



-- 世界通知
CREATE TABLE `world_notification`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`content` varchar(255) not null comment '内容',
	`create_time` datetime NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

