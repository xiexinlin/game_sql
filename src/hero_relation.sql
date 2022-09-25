-- 剑圣，狱血魔神
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (1, 1, 2, '剑之归途', '+10%物理攻击', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (2, 2, 1, '剑之归途', '+10%物理攻击', now());
-- 剑圣，无极剑尊
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (3, 1, 24, '剑之传承', '+10%物理攻击', now());
INSERT INTO `hero_relation`(`id`, `hero_id`, `other_id`, `name`, `attribute`, `create_time`) VALUES (4, 24, 1, '剑之传承', '+10%生命值', now());
-- 狱血魔神，无极剑尊
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