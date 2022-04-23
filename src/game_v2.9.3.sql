-- 版本token => 版本
rename table version_token to version;

-- 版本新增是否发送版本奖励字段
alter table version add column send_flag tinyint DEFAULT 0 comment '是否发送版本奖励：1是0否';

-- 奖励 => 公共奖励
rename table reward to common_reward;

-- 称号删除code字段
alter table designation drop column code;


-- 2.9.3 版本
INSERT INTO `game`.`version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (4, '2.9.3', '59E54A5D3830321358FC0305A349D240', 1, now(), 0);


-- 2.9.3 版本更新补偿奖励
INSERT INTO `game`.`common_reward`(`id`, `ref_type`, `ref_id`, `type`, `reward_id`, `num`, `random`, `rune_level`) VALUES (1, 'VERSION_UPGRADE', 4, 2, NULL, 10000, NULL, NULL);


-- 称号
insert into designation values (1, '初出茅庐', '+5%物理攻击 +5%魔法攻击', 1);
insert into designation values (2, '略有小成', '+5%物理攻击 +5%魔法攻击 +5%生命值', 1);
insert into designation values (3, '叱咤风云', '+8%物理攻击 +8%魔法攻击 +8%生命值', 1);
insert into designation values (4, '功成名就', '+12%物理攻击 +12%魔法攻击 +12%生命值', 1);
insert into designation values (5, '超凡之师', '+15%物理攻击 +15%魔法攻击 +20%生命值', 1);

insert into designation values (11, '剑之初试', '+8%物理攻击', 1);
insert into designation values (12, '冰与火', '+6%魔法攻击 +6%魔法抗性', 1);


insert into designation values (100, '斗神之证', '+15%物理攻击 +15%物理防御 +15%生命值', 1);
insert into designation values (500, '弑神者', '+20%物理攻击 +20%魔法攻击 +10%速度', 1);

insert into designation values (500, '英雄归来', '+10%物理攻击 +10%魔法攻击 +10%速度 +15%生命值', 1);

insert into designation values (900, '不屈白银', '+5%物理防御 +5%魔法抗性 +5%生命值', 1);
insert into designation values (901, '荣耀黄金', '+8%物理攻击 +8%魔法攻击 +5%生命值', 1);
insert into designation values (902, '华贵铂金', '+10%物理攻击 +10%魔法攻击 +5%速度', 1);
insert into designation values (903, '璀璨钻石', '+10%物理攻击 +10%魔法攻击 +5%速度 +10%生命值', 1);
insert into designation values (904, '最强王者', '+15%物理攻击 +15%魔法攻击 +10%速度 +15%生命值', 1);

insert into designation values (1000, '登峰造极', '+15%物理攻击 +15%魔法攻击 +10%速度 +20%生命值', 1);

---------------------------------- 任务 ----------------------------------------------------

delete from task_reward;
delete from task;
delete from user_task;

-- 每日任务
INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (1, '登录游戏', 1, '每日登录', 1, NULL, 1);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (1, 1, 0, 50, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (2, '挑战关卡', 1, '挑战并战胜一次关卡', 1, 'checkpoint.png', 2);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (2, 1, 0, 50, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (2, 3, 0, 10000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (2, 2, 0, 50, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (3, '挑战斗神塔', 1, '挑战一次斗神塔', 1, 'tower.png', 3);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (3, 1, 0, 50, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (3, 3, 0, 10000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (3, 2, 0, 50, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (4, '招募英雄', 1, '招募一次英雄', 1, 'heroesRecruit.jpg', 4);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (4, 1, 0, 100, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (4, 2, 0, 50, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (5, '购买商品', 1, '商店中购买任何道具', 1, 'article.jpg', 5);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (5, 1, 0, 100, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (5, 2, 0, 50, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (6, '符文抽取', 1, '符文商店中抽取一次符文', 1, 'rune.png', 6);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (6, 1, 0, 100, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (6, 2, 0, 50, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (7, '挑战副本', 1, '通关一次副本', 1, NULL, 7);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (7, 1, 0, 100, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (7, 4, 1008, 10, NULL);

-- 每周任务
INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (50, '连续登录', 2, '每日登录连续7天', 7, NULL, 1);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (50, 1, 0, 250, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (50, 2, 0, 500, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (51, '击败邪神', 2, '参与击败邪神一次', 1, NULL, 2);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (51, 1, 0, 200, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (51, 2, 0, 200, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (52, '排位对战', 2, '完成10场排位对战', 1, NULL, 3);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (52, 1, 0, 300, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (52, 4, 2002, 3, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (53, '排位胜利', 2, '完成10场排位对战胜利', 1, NULL, 3);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (53, 1, 0, 500, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (53, 4, 2003, 3, NULL);

-- 成就任务
INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (100, '等级成长1', 3, '玩家升至10级', 10, NULL, 1);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (100, 2, 0, 10000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (100, 6, 1, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (101, '等级成长2', 3, '玩家升至20级', 20, NULL, 2);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (101, 2, NULL, 15000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (101, 6, 2, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (102, '等级成长3', 3, '玩家升至30级', 30, NULL, 3);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (102, 2, NULL, 30000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (102, 6, 3, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (103, '等级成长4', 3, '玩家升至40级', 40, NULL, 4);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (103, 2, NULL, 60000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (103, 6, 4, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (104, '等级成长5', 3, '玩家升至50级', 50, NULL, 5);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (104, 2, NULL, 100000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (104, 6, 5, 1, NULL);


INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (200, '不屈白银', 3, '玩家段位达到不屈白银', 1, NULL, 200);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (200, 2, null, 10000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (200, 6, 900, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (201, '荣耀黄金', 3, '玩家段位达到荣耀黄金', 1, NULL, 201);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (201, 2, null, 15000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (201, 6, 901, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (202, '华贵铂金', 3, '玩家段位达到华贵铂金', 1, NULL, 202);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (202, 2, null, 30000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (202, 6, 902, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (203, '璀璨钻石', 3, '玩家段位达到璀璨钻石', 1, NULL, 203);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (203, 2, null, 60000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (203, 6, 903, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (204, '最强王者', 3, '玩家段位达到最强王者', 1, NULL, 204);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (204, 2, null, 100000, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (204, 6, 904, 1, NULL);

INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (205, '登峰造极', 3, '玩家段位达到最强王者，并在段位结算时处于第一名', 1, NULL, 205);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (205, 6, 1000, 1, NULL);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (205, 5, 1, 5, 5);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (205, 5, 3, 5, 5);


INSERT INTO `game`.`task`(`id`, `name`, `type`, `description`, `finish_num`, `icon`, `sort`) VALUES (301, '弑神者', 3, '击败困难模式邪神一次', 1, NULL, 301);
INSERT INTO `game`.`task_reward`(`task_id`, `type`, `reward_id`, `num`, `rune_level`) VALUES (301, 6, 500, 1, NULL);