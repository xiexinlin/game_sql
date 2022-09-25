alter table checkpoint change orderNum order_num int(0) not null comment '关卡顺序';
alter table checkpoint drop column chapterName;

INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (3, 1, 24, '剑之传承', '+10%物理攻击', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (4, 24, 1, '剑之传承', '+10%生命值', now());

INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (5, 2, 24, '剑之决断', '+10%生命值', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (6, 24, 2, '剑之决断', '+10%物理攻击', now());

-- 炽焰之魂，冰魄之心
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (7, 4, 5, '炎魂冰魄', '+10%魔法攻击', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (8, 5, 4, '炎魂冰魄', '+10%魔法攻击', now());
-- 炽焰之魂，火凤
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (9, 4, 25, '圣炎之力', '+10%魔法攻击', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (10, 25, 4, '圣炎之力', '+10%魔法攻击', now());
-- 冰魄之心，冰龙
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (11, 5, 7, '极寒之力', '+10%生命值', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (12, 7, 5, '极寒之力', '+10%生命值', now());
-- 火凤，冰龙
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (13, 25, 7, '冰火九天', '+10%生命值', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (14, 7, 25, '冰火九天', '+10%魔法抗性', now());
-- 暗裔枪骑，暗裔剑魔
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (15, 8, 39, '暗裔Ⅰ', '+10%物理攻击', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (16, 39, 8, '暗裔Ⅰ', '+10%物理攻击', now());

-- 2.10.4 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (14, '2.10.4', 'E00245D108633BF1F88923C1AC9F18BB', 1, now(), 0);
insert into reward(source, source_id, type, reward_id, num) values ('VERSION_UPGRADE', 14, 'DIAMOND', NULL, 10000);

INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (21, '2.10.4', '2.10.4版本更新公告', '2022-09-25', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '新增剑之传承，剑之决断，炎魂冰魄，圣炎之力，极寒之力，冰火九天，暗裔Ⅰ英雄羁绊', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '用户金币栏刷新优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '阵容和助战位置增加等级限制', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '练功房界面优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '符文弹窗列表支持分页优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '批量合成符文优化，增加单次合成上限', '1');

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '修复关卡胜利未激活下一关bug', '2');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '修复排位记录英雄信息显示错误bug', '2');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '修复聊天记录显示bug', '2');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (21, '修复医仙频繁复活队友bug', '2');