
-- 精密系
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (1, null, '精密系', 0, 1, null, now(), 1);

-- 强袭
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (101, 1, '强袭', 1, 1, '+{add_physical_attack}%物理攻击', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (101, 'add_physical_attack', '5', now(), 1);

-- 迅捷步伐
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (102, 1, '迅捷步伐', 1, 2, '+{add_speed}%速度', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (102, 'add_speed', '5', now(), 1);

-- 致命一击
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (103, 1, '致命一击', 2, 1, '对血量低于{trigger_hp}%的目标，造成额外{add_injury}%的伤害', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (103, 'trigger_hp', '30', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (103, 'add_injury', '5', now(), 1);

-- 坚毅不倒
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (104, 1, '坚毅不倒', 2, 2, '每损失{loss_hp}%生命值增加{add_injury}%伤害，最多增加{max_add_injury}%伤害', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (104, 'loss_hp', '10', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (104, 'add_injury', '1', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (104, 'max_add_injury', '7', now(), 1);


-- 巨人杀手
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (105, 1, '巨人杀手', 2, 3, '目标血量每高于自身{excess_hp}%，伤害额外增加{add_injury}%，最高增加{max_add_injury}%', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (105, 'excess_hp', '10', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (105, 'add_injury', '1', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (105, 'max_add_injury', '7', now(), 1);


-- 征服者
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (106, 1, '征服者', 3, 1, '每回合增加{add_injury}%伤害，最多叠加{max_level}层', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (106, 'add_injury', '2', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (106, 'max_level', '6', now(), 1);

-- 强攻
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (107, 1, '强攻', 3, 2, '对目标造成{count}段伤害时，额外造成（+{physical_attack}%物理攻击）物理伤害，并使目标易伤6%', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (107, 'count', '3', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (107, 'physical_attack', '100', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (107, 'reduce_injury_reduction', '6', now(), 1);

-- 主宰系
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (2, null, '主宰系', 0, 2, null, now(), 1);

-- 利刃
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (201, 2, '利刃', 1, 1, '+{physical_penetrate}%物理穿透', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (201, 'physical_penetrate', '5', now(), 1);

-- 法术贯穿
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (202, 2, '法术贯穿', 1, 2, '+{magical_penetrate}%物理穿透', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (202, 'magical_penetrate', '5', now(), 1);


-- 双刃剑
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (203, 2, '双刃剑', 2, 1, '造成伤害增加{add_injury}%，收到伤害增加{reduce_injury_reduction}%', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (203, 'add_injury', '5', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (203, 'reduce_injury_reduction', '2.5', now(), 1);

-- 血之滋味
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (204, 2, '血之滋味', 2, 2, '参与击杀回复自身已损失{treatment_hp}%生命值', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (204, 'treatment_hp', '10', now(), 1);

-- 恶意中伤
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (205, 2, '恶意中伤', 2, 3, '对处于异常状态的目标，额外造成{add_injury}%伤害', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (205, 'add_injury', '5', now(), 1);


-- 黑暗收割
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (206, 2, '黑暗收割', 3, 1, '每击杀一名目标，伤害额外增加{add_injury}%', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (206, 'add_injury', '5', now(), 1);

-- 终极猎手
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (207, 2, '终极猎手', 3, 2, '自身攻击会标记目标（仅标记最后一个目标），后续对标记目标造成的伤害{injury_conversion_rate}%转化为真实伤害', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (207, 'injury_conversion_rate', '15', now(), 1);

-- 巫术系
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (3, null, '巫术系', 0, 3, null, now(), 1);

-- 魔法专精
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (301, 3, '魔法专精', 1, 1, '+{add_magical_attack}%魔法攻击', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (301, 'add_magical_attack', '5', now(), 1);

-- 魔力溢出
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (302, 3, '魔力溢出', 1, 2, '+{add_magical_defense}%魔法抗性', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (302, 'add_magical_defense', '5', now(), 1);

-- 魔法无效化
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (303, 3, '魔法无效化', 2, 1, '自身受到的魔法伤害减少{reduce_injury}%', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (303, 'reduce_injury', '5', now(), 1);

-- 绝对专注
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (304, 3, '绝对专注', 2, 2, '自身血量高于{trigger_hp}%时，造成的魔法伤害额外增加{add_magical_injury}%', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (304, 'trigger_hp', '50', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (304, 'add_magical_injury', '5', now(), 1);

-- 超然
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (305, 3, '超然', 2, 3, '自身魔法攻击会减少目标{reduce_magical_defense}%魔法抗性，持续{reduce_magical_defense_round}回合', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (305, 'reduce_magical_defense', '10', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (305, 'reduce_magical_defense_round', '1', now(), 1);

-- 电刑
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (306, 3, '电刑', 3, 1, '对目标首次伤害，额外造成（+{magical_attack}%魔法攻击）魔法伤害，每个目标冷却{round}回合', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (306, 'magical_attack', '100', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (306, 'round', '2', now(), 1);

-- 艾黎精灵
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (307, 3, '艾黎精灵', 3, 2, '自身造成伤害、护盾和治疗效果时，数值额外增加（+{magical_attack}%魔法攻击），每回合最多触发{max_count}次', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (307, 'magical_attack', '25', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (307, 'max_count', '1', now(), 1);

-- 坚决系
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (4, null, '坚决系', 0, 4, null, now(), 1);

-- 坚定
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (401, 4, '坚定', 1, 1, '+{physical_defense}%物理防御', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (401, 'physical_defense', '5', now(), 1);

-- 过度生长
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (402, 4, '过度生长', 1, 2, '+{physical_defense}%生命值', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (402, 'hp', '5', now(), 1);

-- 护盾猛击
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (403, 4, '护盾猛击', 2, 1, '自身存在护盾时，自身攻击额外造成自身最大生命值{hp}%自适应伤害，每回合最多触发{count}次', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (403, 'hp', '3', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (403, 'count', '1', now(), 1);

-- 复苏之风
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (404, 4, '复苏之风', 2, 2, '受到伤害后，回复自身{hp}%最大生命值，冷却{round}回合', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (404, 'hp', '2', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (404, 'round', '3', now(), 1);

-- 骸骨镀层
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (405, 4, '骸骨镀层', 2, 3, '受到伤害时，抵挡下{count}次攻击{hp}%最大生命值伤害', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (405, 'hp', '2', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (405, 'count', '3', now(), 1);


-- 余震
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (406, 4, '余震', 3, 1, '造成控制效果时，自身获得一个{add_injury_reduction}%伤害减免，持续{round}回合', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (406, 'add_injury_reduction', '2', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (406, 'round', '2', now(), 1);

-- 守护者
insert into hero_talent_config (id, parent_id, name, level, sort, description, create_time, is_valid) values (407, 4, '守护者', 3, 2, '自身相邻单位受到攻击时，该目标获得一个自身最大生命值{hp}%护盾，持续{round}回合，冷却{cd}回合', now(), 1);

insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (407, 'hp', '2', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (407, 'round', '2', now(), 1);
insert into hero_talent_config_attribute (hero_talent_config_id, attr_key, attr_value, create_time, is_valid) values (407, 'cd', '2', now(), 1);