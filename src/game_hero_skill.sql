
delete from hero_text;
delete from hero_skill_attribute;



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (1,
'剑闪',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，无视对面{A_physicalPenetratePCT}%物理防御',
'万剑归宗',
'四段斩击，优先攻击血量百分比最低和不同目标，每段斩击造成（+{U_physicalAttackPCT}%物理攻击）的物理伤害，对同一目标造成多段斩击时，后续斩击只造成第一段斩击{U_injuryDecreasePCT}%的伤害（可多次触发剑魂）',
'剑魂',
'每次伤害额外造成对面最大生命值{P_hpMaxPCT}%的真实伤害',
'剑闪伤害增加至（+{A_physicalAttackPCT2}%物理攻击），无视物理防御增加至{A_physicalPenetratePCT2}%',
'+10%物理攻击 +10%速度',
'剑魂真实伤害增加至{P_hpMaxPCT2}%',
'万剑归宗会比血量越低的目标造成额外伤害，额外伤害为 目标每损失{U_hpLossPCT}%血量，伤害加{U_injuryAddition}%（该伤害不包括剑魂的伤害）');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (101, 1, 'A_physicalAttackPCT', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (102, 1, 'A_physicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (103, 1, 'A_physicalPenetratePCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (104, 1, 'A_physicalPenetratePCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (105, 1, 'U_physicalAttackPCT', '170', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (106, 1, 'U_injuryDecreasePCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (107, 1, 'P_hpMaxPCT', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (108, 1, 'P_hpMaxPCT2', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (109, 1, 'U_hpLossPCT', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (110, 1, 'U_injuryAddition', '1', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (2,
'血刃',
'造成两段伤害，第一段对目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，第二段对目标及相邻单位造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害',
'魔狱血刹',
'对三排目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的真实伤害，自身回复该伤害{U_treatmentPCT}%的生命值',
'血之狂暴',
'每次伤害会使目标叠加一层流血效果，持续{P_bleedRound}回合（最多叠加{P_bleedMaxLevel}层，每层每回合使目标损失{P_bleedHpMaxPCT}%最大生命值,自身回复该伤害的{P_treatmentPCT}%）',
'血刃第二段伤害增加至（+{A_magicalAttackPCT2}%魔法攻击）魔法伤害，并{A_bleedProbability2}%概率额外叠加一层流血',
'+10%物理攻击 +15%生命值',
'自身因流血效果回复生命值增加至{P_treatmentPCT2}%',
'目标每有一层流血效果，魔狱血刹的伤害额外增加{U_injuryAddition}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (201, 2, 'A_physicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (202, 2, 'A_magicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (203, 2, 'A_magicalAttackPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (204, 2, 'A_bleedProbability', '0', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (205, 2, 'A_bleedProbability2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (206, 2, 'U_physicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (207, 2, 'U_magicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (208, 2, 'U_treatmentPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (209, 2, 'U_injuryAddition', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (210, 2, 'P_bleedHpMaxPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (211, 2, 'P_treatmentPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (212, 2, 'P_treatmentPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (213, 2, 'P_bleedRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (214, 2, 'P_bleedMaxLevel', '3', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (3, '怒吼', '对三排目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，并降低目标{A_reducePhysicalAttackPCT}%物理攻击，持续{A_reducePhysicalAttackBuffRound}回合',
'兽王百裂拳',
'对单一目标造成{U_attackCount}次伤害，每段伤害造成（+{U_physicalAttackPCT}%物理攻击）的物理伤害，并撕裂对方物防{U_reducePhysicalDefensePCT}%，持续{U_reducePhysicalDefenseBuffRound}回合（撕裂效果在造成伤害后立即生效）',
'不屈',
'受到致命伤害时，免疫该次伤害，并无敌和免控一回合',
'狮吼伤害增加10%，降低对方15%物理攻击',
'+10%物理防御 +15%生命值',
'不屈触发后，增加自身{P_addPhysicalAttackPCT}%物理攻击，持续{P_addPhysicalAttackBuffRound}回合',
'每段伤害增加至（+{U_physicalAttackPCT2}%物理攻击），撕裂{U_reducePhysicalDefensePCT2}%物防');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (301, 3, 'A_physicalAttackPCT', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (302, 3, 'A_physicalAttackPCT2', '75', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (303, 3, 'A_reducePhysicalAttackPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (304, 3, 'A_reducePhysicalAttackPCT2', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (305, 3, 'A_reducePhysicalAttackBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (306, 3, 'U_attackCount', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (307, 3, 'U_physicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (308, 3, 'U_physicalAttackPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (309, 3, 'U_reducePhysicalDefensePCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (310, 3, 'U_reducePhysicalDefensePCT2', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (311, 3, 'U_reducePhysicalDefenseBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (312, 3, 'P_unyieldingBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (313, 3, 'P_addPhysicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (314, 3, 'P_addPhysicalAttackBuffRound', '2', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (4,
'炽焰',
'对单一目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害',
'狱火天焰',
'对全体敌方造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，并对血量绝对值最高的目标额外造成{U_injuryAddition}%伤害',
'圣炎',
'技能攻击会灼烧对方（被灼烧的目标，每回合受到{P_burnHpMaxPCT}%自身最大生命值的魔法伤害），持续{P_burnBuffRound}回合',
'炽焰伤害增加至（+{A_magicalAttackPCT2}%魔法攻击）',
'+20%魔法攻击',
'圣炎会对烧伤目标造成目标最大生命值{P_burnHpMaxPCT2}%的魔法伤害',
'狱火天焰无视目标{U_magicalPenetratePCT}%魔抗');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (401, 4, 'A_magicalAttackPCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (402, 4, 'A_magicalAttackPCT2', '170', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (403, 4, 'U_magicalAttackPCT', '190', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (404, 4, 'U_injuryAddition', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (405, 4, 'U_magicalPenetratePCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (406, 4, 'P_burnBuffRound', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (407, 4, 'P_burnHpMaxPCT', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (408, 4, 'P_burnHpMaxPCT2', '6', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (5,
'冰魄枪',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害',
'绝对零度',
'对全体敌方造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，自身获得一个可抵挡（+{U_shieldMagicalAttackPCT}%魔法攻击）的护盾',
'极寒',
'攻击{P_freezeProbability}%冰冻对面{P_freezeRound}回合（受到一定伤害后会直接解除冰冻效果）',
'冰魄枪如果上一次未触发极寒冰冻效果，则下一次触发的概率翻倍，触发后，该增益清0',
'+10%魔法攻击 +10%魔法防御',
'极寒的冰冻概率增加到{P_freezeProbability2}%',
'绝对零度伤害增加到（+{U_magicalAttackPCT2}%魔法攻击加成），护盾值增加到（+{U_shieldMagicalAttackPCT2}%魔法攻击）');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (501, 5, 'A_physicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (502, 5, 'A_magicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (503, 5, 'U_magicalAttackPCT', '160', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (504, 5, 'U_magicalAttackPCT2', '200', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (505, 5, 'U_shieldMagicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (506, 5, 'U_shieldMagicalAttackPCT2', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (507, 5, 'P_freezeProbability', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (508, 5, 'P_freezeProbability2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (509, 5, 'P_freezeRound', '1', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (6,
'治疗',
'回复一名血量最低的队友回复（+{A_magicalAttackPCT}%魔法攻击）的生命值',
'妙手回春',
'全体友军回复（+{U_magicalAttackPCT}%魔法攻击）的生命值，血量每损失{U_hpLossPCT}%，治疗量增加{U_treatmentAddition}%，并使友军受到治疗效果增加{U_addTreatmentPCT}%，持续{U_addTreatmentBuffRound}回合。',
'起死回生',
'当一名友军阵亡了，可以立即复活该名友军回复其{P_hpMaxPCT}%生命值，并清除所有状态',
'治疗加成增加到（+{A_magicalAttackPCT2}%魔法攻击）',
'+10%魔法攻击 +15%生命值',
'起死回生回复的生命值增加到{P_hpMaxPCT2}%',
'妙手回春净化友军所有减益效果（不包括控制效果）');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (601, 6, 'A_magicalAttackPCT', '115', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (602, 6, 'A_magicalAttackPCT2', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (603, 6, 'U_magicalAttackPCT', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (604, 6, 'U_hpLossPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (605, 6, 'U_treatmentAddition', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (606, 6, 'U_addTreatmentBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (607, 6, 'U_addTreatmentPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (608, 6, 'P_hpMaxPCT', '27', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (609, 6, 'P_hpMaxPCT2', '35', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (7,
'玄冰弹',
' 对三排目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，{A_reduceSpeedProbability}%概率使其减速{A_reduceSpeedPCT}%，持续{A_reduceSpeedBuffRound}回合',
'极寒风暴',
'对全体敌方造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，风暴停留{U_stormRound}回合，下{U_stormRound}回合每回合开始，对全体敌方目标造成（+{U_stormMagicalAttackPCT}%魔法攻击）的魔法伤害',
'冰霜护甲',
'每受到一次近战攻击{P_freezeProbability}%概率冰冻对面{P_freezeRound}回合（受到一定伤害后会直接解除冰冻效果）',
'玄冰弹减速概率增加到{A_reduceSpeedProbability2}%',
'+10%魔法防御 +15%生命值',
'冰冻概率增加到{P_freezeProbability2}%',
'极寒风暴将造成{U_reduceSpeedPCT}%的减速效果，持续{U_reduceSpeedRound}回合');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (701, 7, 'A_magicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (702, 7, 'A_reduceSpeedProbability', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (703, 7, 'A_reduceSpeedProbability2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (704, 7, 'A_reduceSpeedPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (705, 7, 'A_reduceSpeedBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (706, 7, 'U_magicalAttackPCT', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (707, 7, 'U_stormMagicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (708, 7, 'U_stormRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (709, 7, 'U_reduceSpeedPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (710, 7, 'U_reduceSpeedRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (711, 7, 'P_freezeProbability', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (712, 7, 'P_freezeProbability2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (713, 7, 'P_freezeRound', '1', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (8,
'暗裔利刃',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_magicalAttackPCT}%魔法攻击）的物理伤害\r\n魔神：对三排目标造成（+{A_demonPhysicalAttackPCT}%物理攻击）（+{A_demonMagicalAttackPCT}%魔法攻击）的物理伤害',
'魔神降临/大灭', '魔神降临：汲取敌方百分比血量最多的三个目标{U_absorbHpMaxPCT}%最大生命值，并化身魔神，增加自身{U_addInjuryPCT}%伤害\r\n大灭（魔神形态）：跃向对方，对最多三排目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，对中间目标造成{U_extraAdditionInjuryPCT}%额外伤害',
'复仇之血',
'剑魔拥有一个自身最大生命值{P_hpMaxPCT}%的血池，自身造成的伤害{P_injuryConversionPCT}%转化为血池，当剑魔阵亡时，可立即复活解除自身魔神状态,并恢复自身血池里的血量，在魔神状态下，参与击杀敌方目标时，回复自身{P_lossHpPCT}%已损失生命值',
'暗裔利刃伤害增加（+{A_physicalAttackPCT2}%物理攻击）（+{A_magicalAttackPCT2}%魔法攻击），魔神状态增加至（+{A_demonPhysicalAttackPCT2}%物理攻击）（+{A_demonMagicalAttackPCT2}%魔法攻击）',
'+10%物理攻击 +10%魔法攻击',
'血池血量增加至{P_hpMaxPCT2}%，自身造成的伤害{P_injuryConversionPCT2}%转化为血池血量，击杀敌方目标时，回复自身{P_lossHpPCT2}%已损失生命值',
'魔神增加自身{U_addInjuryPCT2}%伤害，大灭伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击），对中间目标造成的额外伤害增加至{U_extraAdditionInjuryPCT2}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (801, 8, 'A_physicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (802, 8, 'A_physicalAttackPCT2', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (803, 8, 'A_magicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (804, 8, 'A_magicalAttackPCT2', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (805, 8, 'A_demonPhysicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (806, 8, 'A_demonPhysicalAttackPCT2', '90', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (807, 8, 'A_demonMagicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (808, 8, 'A_demonMagicalAttackPCT2', '90', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (809, 8, 'U_absorbHpMaxPCT', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (810, 8, 'U_addInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (811, 8, 'U_addInjuryPCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (812, 8, 'U_physicalAttackPCT', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (813, 8, 'U_physicalAttackPCT2', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (814, 8, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (815, 8, 'U_magicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (816, 8, 'U_extraAdditionInjuryPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (817, 8, 'U_extraAdditionInjuryPCT2', '40', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (818, 8, 'P_hpMaxPCT', '35', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (819, 8, 'P_hpMaxPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (820, 8, 'P_injuryConversionPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (821, 8, 'P_injuryConversionPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (822, 8, 'P_lossHpPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (823, 8, 'P_lossHpPCT2', '25', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (9,
'暗影穿刺', '对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_magicalAttackPCT}%魔法攻击）的物理伤害，并减少目标治疗效果{A_reduceTreatmentPCT}%，持续{A_reduceTreatmentBuffRound}回合',
'暗影猎杀', '对单一目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，\r\n如果对方血量低于{U_triggerInjuryHpMaxPCT}%时，额外附加对方已损失生命值的{U_lossHpPCT}%魔法伤害',
'暗夜', '自身攻击会优先攻击敌方后排，且对后排目标额外造成{P_realInjuryPCT}%真实伤害\r\n',
'暗影穿刺伤害增加到（+{A_physicalAttackPCT2}%物理攻击）（+{A_magicalAttackPCT2}%魔法攻击）',
'+10%物理攻击 +10%魔法攻击',
'黑夜对后排造成伤害增加到{P_realInjuryPCT2}%真实伤害',
'暗影猎杀伤害加成增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击）');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (901, 9, 'A_physicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (902, 9, 'A_physicalAttackPCT2', '135', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (903, 9, 'A_magicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (904, 9, 'A_magicalAttackPCT2', '75', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (905, 9, 'A_reduceTreatmentPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (906, 9, 'A_reduceTreatmentBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (907, 9, 'U_physicalAttackPCT', '250', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (908, 9, 'U_physicalAttackPCT2', '280', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (909, 9, 'U_magicalAttackPCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (910, 9, 'U_magicalAttackPCT2', '175', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (911, 9, 'U_triggerInjuryHpMaxPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (912, 9, 'U_lossHpPCT', '30', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (913, 9, 'P_realInjuryPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (914, 9, 'P_realInjuryPCT2', '30', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (10,
'刀卷云/刀乱雷', '轮流使用\r\n刀卷云：对最多三排目标造成（+{A_cloudPhysicalAttackPCT}%物理攻击）的物理伤害，并额外造成对方{A_cloudHpPCT}%当前生命值的物理伤害\r\n刀乱雷：对单一目标造成（+{A_thunderPhysicalAttackPCT}%物理攻击）的物理伤害，并额外造成对方已损失生命{A_thunderLostHpPCT}%的物理伤害',
'金色天际线', '二段攻击，\r\n第一段对单个目标造成（+{U_physicalAttackPCT}%物理攻击）的物理伤害\r\n第二段对该目标和相邻单位造成第一段目标{U_hpMaxPCT}%最大生命值的物理伤害',
'破鞘/暴足', '破鞘：自身造成的伤害无视对方{P_physicalPenetratePCT}%物理防御\r\n暴足：开场前{P_addSpeedBuffRound}回合，增加自身速度{P_addSpeedPCT}%',
'刀卷云伤害提升至（+{A_cloudPhysicalAttackPCT2}%物理攻击）刀乱雷伤害提升至（+{A_thunderPhysicalAttackPCT2}%物理攻击）',
'+20%物理攻击',
'破鞘无视{P_physicalPenetratePCT2}%物理防御，暴走效果增加到{P_addSpeedPCT2}%',
'金色天际线第二段伤害提升至目标{U_hpMaxPCT2}%最大生命值的物理伤害');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1001, 10, 'A_cloudPhysicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1002, 10, 'A_cloudPhysicalAttackPCT2', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1003, 10, 'A_cloudHpPCT', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1004, 10, 'A_thunderPhysicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1005, 10, 'A_thunderPhysicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1006, 10, 'A_thunderLostHpPCT', '12', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1007, 10, 'U_physicalAttackPCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1008, 10, 'U_hpMaxPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1009, 10, 'U_hpMaxPCT2', '32', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1010, 10, 'P_physicalPenetratePCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1011, 10, 'P_physicalPenetratePCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1012, 10, 'P_addSpeedBuffRound', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1013, 10, 'P_addSpeedPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1014, 10, 'P_addSpeedPCT2', '15', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (11,
'猛击', '对单一目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，当对方血量低于{A_triggerAddInjuryHpMaxPCT}%时，额外造成{A_extraInjuryPCT}%伤害',
'横扫千军', '对最多三排造成（+{U_physicalAttackPCT}%物理伤害）的物理伤害，并附加对方{U_hpMaxPCT}%最大生命值，同时使目标对他的伤害降低{U_reduceInjuryPCT}%，持续{U_reduceInjuryBuffRound}回合',
'战争意志/盾反', '战争意志：每回合叠加一层战争意志，最多叠加{P_warWillMaxLevel}层（每层增加自身{P_addPhysicalAttackPCT}%物理攻击和{P_addPhysicalDefensePCT}%物理防御）\r\n盾反：受到近战攻击，可以格挡{P_withstandPCT}%伤害（最多只能格挡自身物理防御{P_maxWithstandPhysicalDefensePCT}%的伤害），并对目标造成（+{P_shieldCounterattackPCT}%物理攻击）的物理伤害，触发后，冷却{P_shieldCounterattackCD}回合',
'猛击伤害增加至（+{A_physicalAttackPCT2}%物理攻击），猛击对血量低于{A_triggerSecondAddInjuryHpMaxPCT}%的目标，额外造成{A_extraSecondInjuryPCT}%伤害',
'+10%物理攻击 +10%物理防御',
'战争意志上限提升至{P_warWillMaxLevel2}层，盾反伤害提升至（+{P_shieldCounterattackPCT2}%物理攻击）',
'横扫千军伤害加成增加到（+{U_physicalAttackPCT2}%物理伤害），附加最大生命值增加至{U_hpMaxPCT2}%，减伤效果提升至{U_reduceInjuryPCT2}%');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1101, 11, 'A_physicalAttackPCT', '125', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1102, 11, 'A_physicalAttackPCT2', '135', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1103, 11, 'A_triggerAddInjuryHpMaxPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1104, 11, 'A_triggerSecondAddInjuryHpMaxPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1105, 11, 'A_extraInjuryPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1106, 11, 'A_extraSecondInjuryPCT', '100', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1107, 11, 'U_physicalAttackPCT', '200', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1108, 11, 'U_physicalAttackPCT2', '240', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1109, 11, 'U_hpMaxPCT', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1110, 11, 'U_hpMaxPCT2', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1111, 11, 'U_reduceInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1112, 11, 'U_reduceInjuryPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1113, 11, 'U_reduceInjuryBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1114, 11, 'P_addPhysicalAttackPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1115, 11, 'P_addPhysicalDefensePCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1116, 11, 'P_warWillMaxLevel', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1117, 11, 'P_warWillMaxLevel2', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1118, 11, 'P_withstandPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1119, 11, 'P_maxWithstandPhysicalDefensePCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1120, 11, 'P_shieldCounterattackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1121, 11, 'P_shieldCounterattackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1122, 11, 'P_shieldCounterattackCD', '1', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (12,
'暮光', '对单一目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，并额外造成自身{A_hpMaxPCT}%最大生命值的魔法伤害',
'神圣庇护', '对全体友军提供一层护盾，可抵挡（+{U_magicalAttackPCT}%魔法攻击）（+{U_hpMaxPCT}%圣骑士自身最大生命值）的伤害，护盾存在时，友军增加{U_addDefensePCT}%双抗（护盾最多存在{U_shieldBuffRound}回合）',
'圣愈', '自身每回合回复自身{P_treatmentHpMaxPCT}%最大生命值，血量低于{P_triggerAddTreatmentHpMaxPCT}%时，回复效果增加{P_addTreatmentPCT}%，血量低于{P_triggerAddDoubleTreatmentHpMaxPCT}%时，回复效果增加{P_addSecondTreatmentPCT}%',
'暮光额外伤害增加到{A_hpMaxPCT2}%自身最大生命值',
'+10%生命值 +10%魔法防御',
'圣愈回复增加到{P_treatmentHpMaxPCT2}%',
'护盾时增加至（+{U_magicalAttackPCT2}%魔法攻击）（+{U_hpMaxPCT2}%圣骑士自身最大生命值），护盾存在时，友军增加{U_addDefensePCT2}%双抗');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1201, 12, 'A_magicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1202, 12, 'A_hpMaxPCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1203, 12, 'A_hpMaxPCT2', '7', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1204, 12, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1205, 12, 'U_magicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1206, 12, 'U_hpMaxPCT', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1207, 12, 'U_hpMaxPCT2', '16', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1208, 12, 'U_shieldBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1209, 12, 'U_addDefensePCT', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1210, 12, 'U_addDefensePCT2', '20', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1211, 12, 'P_treatmentHpMaxPCT', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1212, 12, 'P_treatmentHpMaxPCT2', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1213, 12, 'P_triggerAddTreatmentHpMaxPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1214, 12, 'P_addTreatmentPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1215, 12, 'P_triggerAddSecondTreatmentHpMaxPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1216, 12, 'P_addSecondTreatmentPCT', '50', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (13,
'手榴弹', '对单一目标造成（+{A_magicalAttackPCT}%魔法攻击）的物理伤害，并对周围目标造成{A_attackSputterPCT}%的伤害',
'核能爆破', '对血量最低的目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，对目标相邻单位造成{U_attackSputterPCT}%的物理伤害，降低目标伤害{U_reduceInjuryPCT}%，持续{U_reduceInjuryBuffRound}回合',
'定时炸弹', '每次行动完，在一个敌方血量最少的目标上放置一枚定时炸弹，{P_timeBombBuffRound}回合引爆，对目标及目标相邻单位造成（+{P_magicalAttackPCT}%魔法攻击）（+{P_hpMaxPCT}%目标最大生命值）的物理伤害，自身其他攻击会立即引爆定时炸弹',
'手榴弹造成（+{A_magicalAttackPCT2}%魔法攻击）的物理伤害',
'+10%物理攻击 +10%魔法攻击',
'定时炸弹伤害增加到（+{P_magicalAttackPCT2}%魔法攻击）（+{P_hpMaxPCT2}%目标最大生命值）',
'核能爆破主要目标伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击），伤害降低增加到20%');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1301, 13, 'A_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1302, 13, 'A_magicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1303, 13, 'A_attackSputterPCT', '70', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1304, 13, 'U_physicalAttackPCT', '125', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1305, 13, 'U_physicalAttackPCT2', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1306, 13, 'U_magicalAttackPCT', '200', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1307, 13, 'U_magicalAttackPCT2', '240', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1308, 13, 'U_attackSputterPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1309, 13, 'U_reduceInjuryPCT', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1310, 13, 'U_reduceInjuryBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1311, 13, 'P_timeBombBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1312, 13, 'P_magicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1313, 13, 'P_magicalAttackPCT2', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1314, 13, 'P_hpMaxPCT', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1315, 13, 'P_hpMaxPCT2', '8', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (14,
'致残打击', '对单一目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，并减少其双防{A_reducePhysicalDefensePCT}%，持续{A_reducePhysicalDefenseBuffRound}回合',
'诸神黄昏', '对单一目标造成（+{U_physicalAttackPCT}%物理攻击）的真实伤害，同时增加自身{U_addPhysicalAttackPCT}%攻击，{U_addDefensePCT}%双抗，持续{U_addPhysicalAttackBuffRound}回合，诸神黄昏持续期间中，致残打击额外造成{U_attackConversionRealInjuryPCT}%真实伤害，并回复自身该真实伤害{U_attackConversionRealInjuryTreatmenntPCT}%的生命值',
'狂战之怒', '毎损失{P_lossHpPCT}%的生命值，自身物理攻击增加{P_addPhysicalAttackPCT}%',
'致残打击减少{A_reducePhysicalDefensePCT2}%双防',
'+10%物理攻击 +10%物理防御',
'狂战之怒 毎损失{P_lossHpPCT}%的生命值，自身攻击增加{P_addPhysicalAttackPCT2}%',
'诸神黄昏伤害增加至（+{U_physicalAttackPCT2}%物理攻击），诸神黄昏持续期间，致残打击额外伤害增加到{U_attackConversionRealInjuryPCT2}%');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1401, 14, 'A_physicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1402, 14, 'A_reducePhysicalDefensePCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1403, 14, 'A_reducePhysicalDefensePCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1404, 14, 'A_reducePhysicalDefenseBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1405, 14, 'U_physicalAttackPCT', '250', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1406, 14, 'U_physicalAttackPCT2', '280', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1407, 14, 'U_addPhysicalAttackPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1408, 14, 'U_addDefensePCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1410, 14, 'U_addPhysicalAttackBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1411, 14, 'U_addDefenseBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1412, 14, 'U_attackConversionRealInjuryPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1413, 14, 'U_attackConversionRealInjuryPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1414, 14, 'U_attackConversionRealInjuryTreatmentPCT', '100', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1415, 14, 'P_lossHpPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1416, 14, 'P_addPhysicalAttackPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1417, 14, 'P_addPhysicalAttackPCT2', '1.5', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (15,
'灵魂收割', '对血量最低的目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，若目标生命值低于{A_triggerKillPCT}%最大生命值时，立即斩杀对方，斩杀成功增加自身{A_triggerKillAddMagicalAttackPCT}%魔攻持续到战斗结束',
'死神降临', '对全部敌方单位造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，对方毎损失{U_lossHpPCT}%生命值，该伤害增加{U_addInjuryPCT}%',
'死亡契约', '当自己死亡时，化为灵体，持续{P_spiritRound}回合（灵体仍可行动，不受任何效果影响）',
'灵魂收割伤害增加至（+{A_magicalAttackPCT2}%魔法攻击），斩杀线增加到{A_triggerKillPCT2}%',
'+20%魔法攻击',
'死亡契约触发时，自身造成伤害增加{P_addInjuryPCT}%',
'死神降临伤害增加至（+{U_magicalAttackPCT2}%魔法攻击），并减少目标{U_reduceTreatmentPCT}%治疗效果，持续{U_reduceTreatmentBuffRound}回合');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1501, 15, 'A_magicalAttackPCT', '125', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1502, 15, 'A_magicalAttackPCT2', '135', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1503, 15, 'A_triggerKillPCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1504, 15, 'A_triggerKillPCT2', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1505, 15, 'A_triggerKillAddMagicalAttackPCT', '20', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1506, 15, 'U_magicalAttackPCT', '175', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1507, 15, 'U_magicalAttackPCT2', '200', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1508, 15, 'U_lossHpPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1509, 15, 'U_addInjuryPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1510, 15, 'U_reduceTreatmentPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1511, 15, 'U_reduceTreatmentBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1512, 15, 'P_spiritRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1513, 15, 'P_addInjuryPCT', '20', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (16,
'万能牌',
'随机丢出一张牌\n
蓝牌：对单一目标造成（+{A_1_physicalAttackPCT}%物理攻击）（+{A_1_magicalAttackPCT}%魔法攻击）的魔法伤害，并增加自身{A_1_addRage}点怒气\n
黄牌：对单一目标造成（+{A_2_physicalAttackPCT}%物理攻击）（+{A_2_magicalAttackPCT}%魔法攻击）的魔法伤害\n
红牌：对三排目标造成（+50%物理攻击）（+60%魔法攻击）的魔法伤害，{A_3_reduceSpeedProbability}%概率减少对方{A_3_reduceSpeedPCT}%速度{A_3_reduceSpeedBuffRound}回合',
'孤注一掷',
'随机掷出一个骰子，对全部敌方单位造成（+{U_magicalAttackPCT}%魔法攻击）魔法伤害，并根据点数获取以下对应效果：
1点：无额外效果\n
2点：给自己增加一个可以抵抗（+{U_shieldMagicalAttackPCT}%魔法攻击）的护盾，持续{U_shieldBuffRound}回合\n
3点：对血量最低目标造成眩晕效果，持续{U_dizzinessRound}回合\n
4点：对血量低于{U_triggerExtraInjuryHpMaxPCT}%的目标额外造成{U_extraInjuryPCT}%伤害\n
5点：减少敌方全体目标{U_reduceDefensePCT}%双抗，持续{U_reduceDefenseBuffRound}回合\n
6点：同时触发2-5点效果',
'命运',
'自身攻击{P_addInjuryProbability}%概率额外造成（+{P_addInjuryMagicalAttackPCT}%魔法攻击）的魔法伤害，\n
自身受到伤害时，{P_addSufferInjuryProbability}%概率自身额外受到（+{P_addSufferInjuryMagicalAttackPCT}%魔法攻击）魔法伤害，{P_reduceSufferInjuryProbability}%概率自身减少受到（+{P_reduceSufferInjuryMagicalAttackPCT}%魔法攻击）魔法伤害',
'万能牌伤害额外加成（+10%物理攻击）（+10%魔法攻击），红牌{A_3_reduceSpeedProbability2}%概率减速',
'+20%魔法攻击',
'命运自身受到伤害时{P_reduceSufferInjuryProbability2}%减少伤害，{P_addSufferInjuryProbability2}%增加伤害，自身攻击造成的额外伤害增加到（+{P_addInjuryMagicalAttackPCT2}%魔法攻击）',
'孤注一掷 造成投掷点数*{U_pointInjuryPCT}%额外伤害');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1601, 16, 'A_1_physicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1602, 16, 'A_1_physicalAttackPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1603, 16, 'A_1_magicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1604, 16, 'A_1_magicalAttackPCT2', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1605, 16, 'A_1_addRage', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1606, 16, 'A_2_physicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1607, 16, 'A_2_physicalAttackPCT2', '90', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1608, 16, 'A_2_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1609, 16, 'A_2_magicalAttackPCT2', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1610, 16, 'A_3_physicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1611, 16, 'A_3_physicalAttackPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1612, 16, 'A_3_magicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1613, 16, 'A_3_magicalAttackPCT2', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1614, 16, 'A_3_reduceSpeedProbability', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1615, 16, 'A_3_reduceSpeedProbability2', '35', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1616, 16, 'A_3_reduceSpeedPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1617, 16, 'A_3_reduceSpeedBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1618, 16, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1619, 16, 'U_shieldMagicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1620, 16, 'U_shieldBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1621, 16, 'U_dizzinessRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1622, 16, 'U_triggerExtraInjuryHpMaxPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1623, 16, 'U_extraInjuryPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1624, 16, 'U_reduceDefensePCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1625, 16, 'U_reduceDefenseBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1626, 16, 'U_pointInjuryPCT', '5', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1627, 16, 'P_addInjuryProbability', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1628, 16, 'P_addInjuryMagicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1629, 16, 'P_addInjuryMagicalAttackPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1630, 16, 'P_addSufferInjuryProbability', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1631, 16, 'P_addSufferInjuryMagicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1632, 16, 'P_addSufferInjuryMagicalAttackPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1633, 16, 'P_reduceSufferInjuryProbability', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1634, 16, 'P_reduceSufferInjuryMagicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1635, 16, 'P_reduceSufferInjuryMagicalAttackPCT2', '60', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (17,
'地震',
'对三排目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害',
'山崩地裂',
'对全体目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，并对血量最高的{U_dizzinessNum}个目标造成眩晕效果，持续{U_dizzinessBuffRound}回合',
'势不可挡',
'开局获得一个自身最大生命值{P_ShieldHpMaxPCT}%的护盾',
'地震会减少目标{A_reduceInjuryPCT}%伤害，持续{A_reduceInjuryBuffRound}回合',
'+10%物理防御 +10%最大生命值',
'势不可挡 开场巨神兵获取不受任何控制效果影响buff，持续{P_immuneControlBuffRound}回合',
'山崩地裂 伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击）');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1701, 17, 'A_physicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1702, 17, 'A_reduceInjuryPCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1703, 17, 'A_reduceInjuryBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1704, 17, 'U_physicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1705, 17, 'U_physicalAttackPCT2', '115', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1706, 17, 'U_magicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1707, 17, 'U_magicalAttackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1708, 17, 'U_dizzinessBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1709, 17, 'U_dizzinessNum', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1710, 17, 'P_ShieldHpMaxPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1711, 17, 'P_immuneControlBuffRound', '3', 1);





INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (18,
'多重箭矢', '对三排目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，并对血量最高的目标额外造成一次攻击，造成（+{A_secondPhysicalAttackPCT}%物理攻击）的物理伤害（该攻击可触发惩戒之箭被动）',
'火翼穿云',
'对三排目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，并引爆目标身上的惩戒印记，每层印记额外造成{U_hpMaxPCT}%目标最大生命值的魔法伤害，当印记层数大于{U_disciplineMarkingLevel}时，造成眩晕效果{U_dizzinessBuffRound}回合',
'惩戒之箭',
'自身普通攻击会造成（+{P_physicalAttackPCT}%物理攻击）的真实伤害，并使目标叠加一层惩戒印记，持续{P_disciplineMarkingBuffRound}回合（再次受到惩戒印记效果时，刷新持续时间，可叠加多层）',
'多重箭矢第一段伤害增加至（+{A_physicalAttackPCT2}%物理攻击）的物理伤害，第二段伤害增加至（+{A_secondPhysicalAttackPCT2}%物理攻击）的物理伤害',
'+20%物理攻击',
'惩戒之箭伤害增加至（+{P_physicalAttackPCT2}%物理攻击）的真实伤害',
'火翼穿云伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击），每层惩戒印记额外伤害增加至{U_hpMaxPCT2}%目标最大生命值');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1801, 18, 'A_physicalAttackPCT', '55', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1802, 18, 'A_physicalAttackPCT2', '63', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1803, 18, 'A_secondPhysicalAttackPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1804, 18, 'A_secondPhysicalAttackPCT2', '38', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1805, 18, 'U_physicalAttackPCT', '115', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1806, 18, 'U_physicalAttackPCT2', '140', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1807, 18, 'U_magicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1808, 18, 'U_magicalAttackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1809, 18, 'U_hpMaxPCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1810, 18, 'U_hpMaxPCT2', '7', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1811, 18, 'U_disciplineMarkingLevel', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1812, 18, 'U_dizzinessBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1813, 18, 'P_physicalAttackPCT', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1814, 18, 'P_physicalAttackPCT2', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1815, 18, 'P_disciplineMarkingBuffRound', '2', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (19,
'幻化攻击',
'使用幻化目标的普通技能。',
'偷天换日',
'使用幻化目标的大招，并对幻化的目标造成(+{U_hpMaxPCT}%最大生命值)的真实伤害，然后解除幻化状态。',
'千人千面',
'自身受到伤害时，幻化成攻击者，如果受到伤害时自身处于幻化的状态，被幻化的目标也会受到{P_injuryPCT}%的真实伤害。\r\n如果处于未幻化状态，则随机幻化一个目标（不会幻化敌方的幻化师）。',
'使用幻化攻击时自身攻击额外增加{P_extraAttackPCT}%',
'+10%魔法攻击 +10%生命值',
'千人千面的伤害增加到{P_injuryPCT2}%',
'使用偷天幻日时，自身攻击额外增加{U_extraAttackPCT}%，追加真实伤害增加到（+{U_hpMaxPCT2}%最大生命值）真实伤害');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1901, 19, 'A_extraAttackPCT', '20', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1902, 19, 'U_extraAttackPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1903, 19, 'U_hpMaxPCT', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1904, 19, 'U_hpMaxPCT2', '20', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1905, 19, 'P_injuryPCT', '45', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (1906, 19, 'P_injuryPCT2', '55', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (20, '野兽怒咬', '对单一目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，并附加对方最大生命值{A_hpMaxPCT}%的魔法伤害，自身回复该攻击{A_treatmentPCT}%的生命值', '嗜杀追猎', '对单一目标造成4段攻击，每段造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，并增加自身免伤{U_addSufferInjuryPCT}%，持续{U_addSufferInjuryBuffRound}回合', '嗜血本性', '自身每段攻击会额外造成目标最大生命值{P_hpMaxPCT}%的魔法伤害，并回复自身该伤害{P_treatmentPCT}%的生命值，当目标血量低于{P_triggerAddInjuryHpMaxPCT}%时，该伤害增加{P_addInjuryPCT}%，当自身血量低于{P_triggerAddTreatmentHpMaxPCT}%时，回复量增加{P_addTreatmentPCT}%', '野兽怒咬加成增加至（+{A_physicalAttackPCT2}%物理攻击），回复生命值增加至{A_treatmentPCT2}%该伤害', '+10%物理攻击 +10%生命值', '嗜血本性伤害从{P_hpMaxPCT}%最大生命值增加到{P_hpMaxPCT2}%最大生命值', '嗜杀追猎每段伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击），免伤增加至{U_addSufferInjuryPCT2}%');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2001, 20, 'A_physicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2002, 20, 'A_physicalAttackPCT2', '85', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2003, 20, 'A_hpMaxPCT', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2004, 20, 'A_treatmentPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2005, 20, 'A_treatmentPCT2', '40', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2006, 20, 'U_physicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2007, 20, 'U_physicalAttackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2008, 20, 'U_magicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2009, 20, 'U_magicalAttackPCT2', '75', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2010, 20, 'U_addSufferInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2011, 20, 'U_addSufferInjuryPCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2012, 20, 'U_addSufferInjuryBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2013, 20, 'P_hpMaxPCT', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2014, 20, 'P_hpMaxPCT2', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2015, 20, 'P_treatmentPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2016, 20, 'P_triggerAddInjuryHpMaxPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2017, 20, 'P_addInjuryPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2018, 20, 'P_triggerAddTreatmentHpMaxPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2019, 20, 'P_addTreatmentPCT', '100', 1);





INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (21, '雷切', '对单一目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，并无视目标{A_ignoreMagicalDefensePCT}%魔抗', '雷霆万钧', '对敌方全体目标造成（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，无视目标{U_ignoreMagicalDefensePCT}%魔抗', '天雷', '每回合结束阶段，对敌方血量百分比最低的目标造成（+{P_magicalAttackPCT}%魔法攻击）（+{P_lossHpPCT}%目标已损失生命值）的魔法伤害', '雷切伤害加成增加至（+{A_magicalAttackPCT2}%魔法攻击），并无视目标{A_ignoreMagicalDefensePCT2}%魔抗', '+20%魔法攻击', '天雷伤害增加至（+{P_magicalAttackPCT2}%魔法攻击）（+{P_lossHpPCT2}%目标已损失生命值）', '雷霆万钧伤害增加至（+{U_magicalAttackPCT2}%魔法攻击），无视目标{U_ignoreMagicalDefensePCT2}%魔抗');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2101, 21, 'A_magicalAttackPCT', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2102, 21, 'A_magicalAttackPCT2', '125', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2103, 21, 'A_ignoreMagicalDefensePCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2104, 21, 'A_ignoreMagicalDefensePCT2', '45', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2105, 21, 'U_magicalAttackPCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2106, 21, 'U_magicalAttackPCT2', '170', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2107, 21, 'U_ignoreMagicalDefensePCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2108, 21, 'U_ignoreMagicalDefensePCT2', '30', 1);


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2109, 21, 'P_magicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2110, 21, 'P_magicalAttackPCT2', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2111, 21, 'P_lossHpPCT', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2112, 21, 'P_lossHpPCT2', '8', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (22,
'标枪投掷',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，并标记目标{A_forestMarkingBuffRound}回合，友军攻击被标记的目标时，回复友军（+{A_treatmentMagicalAttackPCT}%魔法攻击）的生命值（最多触发{A_treatmentCount}次）',
'自然之力',
'给友军血量最低的目标回复（+{U_magicalAttackPCT}%魔法攻击）（+{U_hpMaxPCT}%目标最大生命值）的生命值，并增加目标{U_addInjuryPCT}%伤害加成和{U_addSufferInjuryPCT}%伤害减免，持续{U_addInjuryBuffRound}回合',
'森林庇护',
'每次行动完后，给自身提供一个自身最大生命值{P_hpMaxPCT}%的护盾（不可叠加）',
'标枪投掷标记生命回复增加至（+{A_treatmentMagicalAttackPCT2}%魔法攻击）',
'+10%魔法攻击 +10%生命值',
'森林庇护护盾增加至{P_hpMaxPCT2}%自身最大生命值，并使自身施加的治疗效果增加{P_addTreatmentPCT}%',
'自然之力生命值回复增加至（+{U_magicalAttackPCT2}%魔法攻击）（+{U_hpMaxPCT2}%目标最大生命值）,伤害加成和伤害减免提升至{U_addInjuryPCT2}%');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2201, 22, 'A_physicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2202, 22, 'A_magicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2203, 22, 'A_forestMarkingBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2204, 22, 'A_treatmentMagicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2205, 22, 'A_treatmentMagicalAttackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2206, 22, 'A_treatmentCount', '3', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2207, 22, 'U_magicalAttackPCT', '250', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2208, 22, 'U_magicalAttackPCT2', '300', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2209, 22, 'U_hpMaxPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2210, 22, 'U_hpMaxPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2211, 22, 'U_addInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2212, 22, 'U_addInjuryPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2213, 22, 'U_addSufferInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2214, 22, 'U_addSufferInjuryPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2215, 22, 'U_addInjuryBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2216, 22, 'P_hpMaxPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2217, 22, 'P_hpMaxPCT2', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2218, 22, 'P_addTreatmentPCT', '20', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (23,
'毒雾',
'对三排目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，并叠加{A_poisonBuffLevel}层中毒效果，持续{A_poisonBuffRound}回合。',
'枯萎之地',
'对全体目标造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，并叠加{U_poisonBuffLevel}层中毒效果，并减少{U_reduceTreatmentPCT}%治疗效果，持续{U_reduceTreatmentBuffRound}回合。',
'炼金术',
'自身生命值低于{P_triggerTreatmentHpMaxPCT}%时触发，每回合回合开始时，回复自身最大生命值{P_treatmentHpMaxPCT}%的生命值，持续{P_alchemyRound}回合。<br>每层中毒效果会让目标受到（+{P_poisonMagicalAttackPCT}%魔法攻击）的魔法伤害。',
'毒雾伤害增加至（+{A_magicalAttackPCT2}%魔法攻击）魔法伤害。',
'+10%魔法攻击 +10%生命值',
'炼金术每回合回复值增加至{P_treatmentHpMaxPCT2}%最大生命值，每层中毒效果伤害增加至（+{P_poisonMagicalAttackPCT2}%魔法攻击）。', '枯萎之地伤害增加至（+{U_magicalAttackPCT2}%魔法攻击），减少{U_reduceTreatmentPCT2}%治疗效果。');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2301, 23, 'A_magicalAttackPCT', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2302, 23, 'A_magicalAttackPCT2', '75', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2303, 23, 'A_poisonBuffLevel', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2304, 23, 'A_poisonBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2305, 23, 'U_magicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2306, 23, 'U_magicalAttackPCT2', '140', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2307, 23, 'U_poisonBuffLevel', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2308, 23, 'U_reduceTreatmentPCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2309, 23, 'U_reduceTreatmentPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2310, 23, 'U_reduceTreatmentBuffRound', '2', 1);


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2311, 23, 'P_triggerTreatmentHpMaxPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2312, 23, 'P_treatmentHpMaxPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2313, 23, 'P_treatmentHpMaxPCT2', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2314, 23, 'P_alchemyRound', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2315, 23, 'P_poisonMagicalAttackPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2316, 23, 'P_poisonMagicalAttackPCT2', '30', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (24,
'无极剑刃',
'对一列目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，每少一个目标，增加{A_addInjuryPCT}%伤害（优先攻击前排那列）',
'无限剑制',
' 对全体敌方目标造成（+{U_physicalAttackPCT}%物理攻击）的真实伤害，并使下两次无极剑刃额外造成（+{U_extraPhysicalAttackPCT}%物理攻击）的真实伤害',
'无极之道/冥想', '无极之道：增加{P_addPhysicalAttackPCT}%物理攻击\r\n冥想：生命值低于{P_triggerTreatmentHpMaxPCT}%时，立即回复自身{P_treatmentHpMaxPCT}%最大生命值，休息{P_exhaustedBuffRound}回合，并增加自身{P_addDefensePCT}%双抗，持续{P_addDefenseBuffRound}回合',
'无极剑刃伤害增加至（+{A_physicalAttackPCT2}%物理攻击）',
'+10%物理攻击 +10%生命值',
'无极之道增加{P_addPhysicalAttackPCT2}%物理攻击，冥想回复生命值提升至{P_treatmentHpMaxPCT2}%，双抗提升至{P_addDefensePCT2}%',
'无限剑制真实伤害提升至（+{U_physicalAttackPCT2}%物理攻击），下两次无极剑刃额外伤害提升至（+{U_extraPhysicalAttackPCT2}%物理攻击）');



INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2401, 24, 'A_physicalAttackPCT', '90', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2402, 24, 'A_physicalAttackPCT2', '105', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2403, 24, 'A_addInjuryPCT', '30', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2404, 24, 'U_physicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2405, 24, 'U_physicalAttackPCT2', '135', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2406, 24, 'U_extraPhysicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2407, 24, 'U_extraPhysicalAttackPCT2', '60', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2408, 24, 'P_addPhysicalAttackPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2409, 24, 'P_addPhysicalAttackPCT2', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2410, 24, 'P_triggerTreatmentHpMaxPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2411, 24, 'P_treatmentHpMaxPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2412, 24, 'P_treatmentHpMaxPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2413, 24, 'P_exhaustedBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2414, 24, 'P_addDefensePCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2415, 24, 'P_addDefensePCT2', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2416, 24, 'P_addDefenseBuffRound', '2', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (25, '凤之烈焰', '对三排目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，并减少目标魔抗{A_reduceMagicalDefensePCT}%，持续{A_reduceMagicalDefenseBuffRound}回合',
'凤舞九天',
'召唤{U_attackCount}颗火球从天而降，每颗火球对单一目标造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，同一个目标最多受到{U_perMaxSufferAttackCount}次伤害',
'浴火重生',
'当受到致死伤害时，化身成蛋，蛋继承自身{P_hpMaxPCT}%生命值和{P_defensePCT}%双抗，并在{P_rebornRound}回合后浴火重生，回复自身蛋所剩的生命值，并对敌方所有目标造成（+{P_magicalAttackPCT}%魔法攻击）的魔法伤害（只能使用一次）', '凤之烈焰伤害增加至（+{A_magicalAttackPCT2}%魔法攻击），减少{A_reduceMagicalDefensePCT2}%魔抗',
'+20%魔法攻击',
'浴火重生蛋继承自身双防提升至{P_defensePCT2}%，复活后对所有目标造成伤害增加至（+{P_magicalAttackPCT2}%魔法攻击）',
'凤舞九天火球数量增加到{U_attackCount2}颗，同一个目标最多受到{U_perMaxSufferAttackCount2}次伤害');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2501, 25, 'A_magicalAttackPCT', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2502, 25, 'A_magicalAttackPCT2', '72', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2503, 25, 'A_reduceMagicalDefensePCT', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2504, 25, 'A_reduceMagicalDefensePCT2', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2505, 25, 'A_reduceMagicalDefenseBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2506, 25, 'U_magicalAttackPCT', '85', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2507, 25, 'U_attackCount', '9', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2508, 25, 'U_attackCount2', '11', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2509, 25, 'U_perMaxSufferAttackCount', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2510, 25, 'U_perMaxSufferAttackCount2', '4', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2511, 25, 'P_hpMaxPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2512, 25, 'P_defensePCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2513, 25, 'P_defensePCT2', '75', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2514, 25, 'P_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2515, 25, 'P_magicalAttackPCT2', '125', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2516, 25, 'P_rebornRound', '3', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (26,
'圣枪连击',
'对单一目标造成二次攻击，第一段造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，第二段造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害',
'圣枪洗礼',
'对敌方全体目标造成{U_attackCount}次攻击，每段攻击造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害',
'圣光银弹',
'对目标造成一次伤害时，会叠加一层圣光银弹，持续两回合，当叠加到{P_holyLightSilverBulletMaxLevel}层时，则使目标易伤，受到伤害增加{P_addInjuryPCT}%，持续{P_addInjuryBuffRound}回合',
'圣枪连击第一段伤害增加至（+{A_physicalAttackPCT2}%物理攻击），第二段伤害增加至（+{A_magicalAttackPCT2}%魔法攻击）',
'+10%物理攻击 +10%速度',
'圣光银弹叠满{P_holyLightSilverBulletMaxLevel}层时易伤效果增加至{P_addInjuryPCT2}%',
'圣枪洗礼{U_attackCount}次攻击增加至{U_attackCount2}次攻击');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2601, 26, 'A_physicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2602, 26, 'A_physicalAttackPCT2', '115', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2603, 26, 'A_magicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2604, 26, 'A_magicalAttackPCT2', '60', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2605, 26, 'U_physicalAttackPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2606, 26, 'U_magicalAttackPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2607, 26, 'U_attackCount', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2608, 26, 'U_attackCount2', '5', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2609, 26, 'P_holyLightSilverBulletMaxLevel', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2610, 26, 'P_addInjuryPCT', '24', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2611, 26, 'P_addInjuryPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2612, 26, 'P_addInjuryBuffRound', '2', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (27,
'黑炎斩/黑火球',
'黑火球（龙骑形态）：对最多三个目标造成（+{A_dragonMagicalAttackPCT}%魔法攻击）的魔法伤害，并附加对面{A_dragonHpMaxPCT}%最大生命值的魔法伤害\r\n黑炎斩（人形态）：对单一目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，并附加对面{A_hpMaxPCT}%最大生命值的魔法伤害',
'暗龙强袭/暗龙召唤',
'暗龙强袭（龙骑形态）：对目标及相邻造成（+{A_dragonPhysicalAttackPCT}%物理攻击）的物理伤害，中间目标额外造成{A_extraInjuryPCT}%伤害，并造成眩晕效果{U_dizzinessBuffRound}回合\r\n暗龙召唤（人形态）：召唤暗龙一起作战，暗龙生命值只有{U_dragonHpMaxPCT}%生命值，变成龙骑形态',
'龙骑形态',
'与暗龙一起并肩作战，暗龙拥有自身{P_dragonExtraHpMaxPCT}%最大生命值；龙骑形态时，双抗额外增加{P_dragonAddDefensePCT}%；暗龙牺牲时，变成人形态',
'黑炎斩伤害增加至（+{A_physicalAttackPCT2}%物理攻击），附加对方{A_hpMaxPCT2}%最大生命值伤害；黑火球伤害增加至（+{A_dragonMagicalAttackPCT2}%魔法攻击）',
'+10%物理防御 10%魔法抗性',
'龙骑形态 暗龙拥有自身{P_dragonExtraHpMaxPCT2}%最大生命值；龙骑形态增加{P_dragonAddDefensePCT2}%双防',
'暗龙强袭伤害增加至（+{U_dragonPhysicalAttackPCT2}%物理攻击），中间目标额外伤害增加至{U_extraInjuryPCT2}%；暗龙召唤 暗龙拥有{U_dragonHpMaxPCT2}%最大生命值');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2701, 27, 'A_dragonMagicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2702, 27, 'A_dragonMagicalAttackPCT2', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2703, 27, 'A_dragonHpMaxPCT', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2704, 27, 'A_physicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2705, 27, 'A_physicalAttackPCT2', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2706, 27, 'A_hpMaxPCT', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2707, 27, 'A_hpMaxPCT2', '4.5', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2708, 27, 'U_dragonPhysicalAttackPCT', '200', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2709, 27, 'U_dragonPhysicalAttackPCT2', '240', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2710, 27, 'U_extraInjuryPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2711, 27, 'U_extraInjuryPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2712, 27, 'U_dizzinessBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2713, 27, 'U_dragonHpMaxPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2714, 27, 'U_dragonHpMaxPCT2', '100', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2715, 27, 'P_dragonExtraHpMaxPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2716, 27, 'P_dragonExtraHpMaxPCT2', '140', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2717, 27, 'P_dragonAddDefensePCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2718, 27, 'P_dragonAddDefensePCT2', '30', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (28,
'审判',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害\r\n二层神圣之翼：对目标相邻单位造成{A_attackSputterPCT}%的伤害\r\n四层神圣之翼：回复自身（+{A_treatmentMagicalAttackPCT}%魔法攻击）的生命值\r\n六层神圣之翼：对目标额外造成已损失生命值{A_extraLoseHpPCT}%的伤害', '圣之裁决',
'对所有敌方目标造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，并使自身无敌{U_invincibleBuffRound}回合',
'神圣之翼',
'每次行动完后叠加一层神圣之翼效果，每层神圣之翼增加自身{P_holyWingAttackPCT}%双攻，一定层数时审判获得额外效果（最多叠加{P_holyWingMaxLevel}层）',
'审判伤害增加至（+{A_physicalAttackPCT2}%物理攻击）（+{A_magicalAttackPCT2}%魔法攻击），二层溅射伤害增加至{A_attackSputterPCT2}%，四层回复生命值至（+{A_treatmentMagicalAttackPCT2}%魔法攻击），六层附带已损失生命值{A_extraLoseHpPCT2}%',
'+10%物理攻击 +10%魔法攻击',
'每层神圣之翼增加自身{P_holyWingAttackPCT2}%双攻',
'圣之裁决伤害增加至（+{U_magicalAttackPCT2}%魔法攻击），并额外叠加{U_addHolyWingLevel}层神圣之翼');


INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2801, 28, 'A_physicalAttackPCT', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2802, 28, 'A_physicalAttackPCT2', '75', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2803, 28, 'A_magicalAttackPCT', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2804, 28, 'A_magicalAttackPCT2', '75', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2805, 28, 'A_attackSputterPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2806, 28, 'A_attackSputterPCT2', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2807, 28, 'A_treatmentMagicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2808, 28, 'A_treatmentMagicalAttackPCT2', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2809, 28, 'A_extraLoseHpPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2810, 28, 'A_extraLoseHpPCT2', '12', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2811, 28, 'U_magicalAttackPCT', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2812, 28, 'U_magicalAttackPCT2', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2813, 28, 'U_invincibleBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2814, 28, 'U_addHolyWingLevel', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2815, 28, 'P_holyWingAttackPCT', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2816, 28, 'P_holyWingAttackPCT2', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2817, 28, 'P_holyWingMaxLevel', '6', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (29,
'暗之禁锢',
'对最多三排目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，{A_imprisonProbability}%概率禁锢目标{A_imprisonBuffRound}回合，每次暗之禁锢最多禁锢{A_imprisonMax}个目标',
'无尽深渊',
'对所有敌方目标造成（+{U_magicalAttackPCT}%魔法攻击）（+{U_hpMaxPCT}%目标最大生命值）的魔法伤害，并获得一个可抵抗（+{U_shieldMagicalAttackPCT}%魔法攻击）的魔法护盾，护盾存在时，自身免疫控制，护盾最多持续{U_shieldBuffRound}回合',
 '堕落之翼',
 '自身造成的魔法伤害会减少目标{P_reduceAttackPCT}%双攻，持续{P_reduceAttackBuffRound}回合',
 '暗之禁锢伤害增加至（+{A_magicalAttackPCT2}%魔法攻击），{A_imprisonProbability2}%概率禁锢目标',
 '+10%魔法攻击 +10%魔法防御',
 '堕落之翼自身造成魔法伤害减少目标{P_reduceAttackPCT2}%双攻',
 '无尽深渊伤害增加到（+{U_magicalAttackPCT2}%魔法攻击）（+{U_hpMaxPCT2}%目标最大生命值），护盾值增加到（+{U_shieldMagicalAttackPCT2}%魔法攻击）');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2901, 29, 'A_magicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2902, 29, 'A_magicalAttackPCT2', '72', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2903, 29, 'A_imprisonProbability', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2904, 29, 'A_imprisonProbability2', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2905, 29, 'A_imprisonMax', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2906, 29, 'A_imprisonBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2907, 29, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2908, 29, 'U_magicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2909, 29, 'U_hpMaxPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2910, 29, 'U_hpMaxPCT2', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2911, 29, 'U_shieldMagicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2912, 29, 'U_shieldMagicalAttackPCT2', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2913, 29, 'U_shieldBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2914, 29, 'P_reduceAttackPCT', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2915, 29, 'P_reduceAttackPCT2', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (2916, 29, 'P_reduceAttackBuffRound', '1', 1);




INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (30,
 '欺诈宝珠',
 '对单一目标造成两段伤害，第一段造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，第二段造成（+{A_realMagicalAttackPCT}%魔法攻击）的真实伤害',
  '摄魂夺魄',
  '5团狐火，每团狐火造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，{U_charmProbability}%概率魅惑对方{U_charmBuffRound}回合（优先攻击不同目标）',
  '魅惑妖术',
  '自身被近身攻击时，{P_charmProbability}%概率魅惑目标{}回合\r\n对男性目标额外造成{P_addInjuryPCT}%伤害',
  '欺诈宝珠第一段伤害增加至（+{A_magicalAttackPCT2}%魔法攻击），第二段伤害转化为真实伤害',
  '+10%魔法攻击 +10%魔法抗性',
  '魅惑妖术近身魅惑概率增加至{P_charmProbability2}%，对男性英雄伤害增加至{P_addInjuryPCT2}%',
  '摄魂夺魄每团狐火伤害增加至（+{U_magicalAttackPCT2}%魔法攻击）,{U_charmProbability2}%概率魅惑');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3001, 30, 'A_magicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3002, 30, 'A_magicalAttackPCT2', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3003, 30, 'A_realMagicalAttackPCT', '70', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3004, 30, 'U_magicalAttackPCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3005, 30, 'U_magicalAttackPCT2', '180', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3006, 30, 'U_charmProbability', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3007, 30, 'U_charmProbability2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3008, 30, 'U_charmBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3009, 30, 'P_charmProbability', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3010, 30, 'P_charmProbability2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3011, 30, 'P_addInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3012, 30, 'P_addInjuryPCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3013, 30, 'P_charmBuffRound', '1', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (31,
'穿甲弹',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，减少目标{A_reducePhysicalDefensePCT}%物理防御，持续{A_reducePhysicalDefenseBuffRound}回合',
'精准狙击',
'对敌方血量最低的目标造成（+{U_physicalAttackPCT}%物理攻击）的物理伤害，目标毎损失{U_lossHpPCT}%生命值增加{U_addInjuryPCT}%的伤害，该攻击无视目标{U_physicalPenetratePCT}%物防',
'专注',
'开局获得一层专注效果，每次行动完叠加一层专注效果（每一层专注增加自身{P_addInjuryPCT}%的伤害，最多叠加{P_focusMaxLevel}层）',
'瞬狙伤害增加至（+{A_physicalAttackPCT2}%物理攻击），减少目标{A_reducePhysicalDefensePCT2}%物理防御',
'+20%物理攻击',
'专注每层伤害加成增加至{P_addInjuryPCT2}%',
'精准狙击物理伤害增加至（+{U_physicalAttackPCT2}%物理攻击），无视物防增加至{U_physicalPenetratePCT2}%，击杀目标则叠加一层专注效果并增加{U_addRage}点怒气');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3101, 31, 'A_physicalAttackPCT', '140', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3102, 31, 'A_physicalAttackPCT2', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3103, 31, 'A_reducePhysicalDefensePCT', '27', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3104, 31, 'A_reducePhysicalDefensePCT2', '32', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3105, 31, 'A_reducePhysicalDefenseBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3106, 31, 'U_physicalAttackPCT', '360', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3107, 31, 'U_physicalAttackPCT2', '425', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3108, 31, 'U_lossHpPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3109, 31, 'U_addInjuryPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3110, 31, 'U_physicalPenetratePCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3111, 31, 'U_physicalPenetratePCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3112, 31, 'U_addRage', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3113, 31, 'P_addInjuryPCT', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3114, 31, 'P_addInjuryPCT2', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3115, 31, 'P_focusMaxLevel', '5', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (32,
'对魔突刺',
'对目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，若目标原始魔法攻击高于自身，则额外造成{A_extraRealInjuryPCT}%真实伤害',
'禁魔法阵',
'对敌方全部目标造成（+{U_magicalAttackPCT}%魔法攻击）（+{U_enemyBaseMagicalAttackPCT}%目标基础魔法攻击）的魔法伤害，{U_sealProbability}%概率封印目标{U_sealBuffRound}回合（不可释放必杀技能）',
'封魔咒印',
'自身攻击可减少目标{P_reduceMagicalAttackPCT}%魔法攻击，持续{P_reduceMagicalAttackBuffRound}回合',
'对魔突刺伤害增加至（+{A_physicalAttackPCT2}%物理攻击），额外造成的真实伤害增加至{A_extraRealInjuryPCT2}%',
'+10%物理攻击 +10%魔法抗性',
'封魔咒印减少目标{P_reduceMagicalAttackPCT2}%魔法攻击',
'禁魔法阵伤害增加至（+{U_magicalAttackPCT2}%魔法攻击）（+{U_enemyBaseMagicalAttackPCT2}%目标基础魔法攻击），{U_sealProbability2}%概率封印');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3201, 32, 'A_physicalAttackPCT', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3202, 32, 'A_physicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3203, 32, 'A_extraRealInjuryPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3204, 32, 'A_extraRealInjuryPCT2', '60', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3205, 32, 'U_magicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3206, 32, 'U_magicalAttackPCT2', '140', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3207, 32, 'U_enemyBaseMagicalAttackPCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3208, 32, 'U_enemyBaseMagicalAttackPCT2', '175', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3209, 32, 'U_sealProbability', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3210, 32, 'U_sealProbability2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3211, 32, 'U_sealBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3212, 32, 'P_reduceMagicalAttackPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3213, 32, 'P_reduceMagicalAttackPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3214, 32, 'P_reduceMagicalAttackBuffRound', '1', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (33,
'忍术·影刃',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_magicalAttackPCT}%魔法攻击）的物理伤害，若速度高于目标，则造成{A_speedDValuePCT}%速度差额的真实伤害',
'禁奥义·瞬影杀',
'将自身分身数提升至上限，对单一目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，并标记目标，{U_detonateBuffRound}回合后引爆，造成该期间目标受到的总伤害{U_detonateInjuryPCT}%的物理伤害',
'忍奥义·影分身',
'自身行动时，会制造一个分身，分身会模仿自身技能，但仅造成{P_cloneExtraInjuryPCT}%的伤害。受到伤害时，消耗一个分身，该伤害减少自身{P_cloneWithstandHpMaxPCT}%最大生命值的数值（分身上限{P_cloneMax}个）',
 '忍术·影刃伤害增加至（+{A_physicalAttackPCT2}%物理攻击）（+{A_magicalAttackPCT2}%魔法攻击），额外的真实伤害增加至{A_speedDValuePCT2}%速度差值',
 '+10%物理攻击 +10%速度',
 '忍奥义·影分身造成的伤害增加至{P_cloneExtraInjuryPCT2}%，分身抵挡的伤害增加至自身{P_cloneWithstandHpMaxPCT2}%最大生命值',
 '禁奥义·瞬影杀伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击）,引爆伤害增加至{U_detonateInjuryPCT2}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3301, 33, 'A_physicalAttackPCT', '90', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3302, 33, 'A_physicalAttackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3303, 33, 'A_magicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3304, 33, 'A_magicalAttackPCT2', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3305, 33, 'A_speedDValuePCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3306, 33, 'A_speedDValuePCT2', '170', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3307, 33, 'U_physicalAttackPCT', '225', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3308, 33, 'U_physicalAttackPCT2', '270', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3309, 33, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3310, 33, 'U_magicalAttackPCT2', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3311, 33, 'U_detonateInjuryPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3312, 33, 'U_detonateInjuryPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3313, 33, 'U_detonateBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3314, 33, 'P_cloneExtraInjuryPCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3315, 33, 'P_cloneExtraInjuryPCT2', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3316, 33, 'P_cloneWithstandHpMaxPCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3317, 33, 'P_cloneWithstandHpMaxPCT2', '7', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3318, 33, 'P_cloneMax', '2', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (34,
'暴走',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害和（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，同时叠加一层暴走，每一层可以使暴走伤害增加{A_perRampageAddInjuryPCT}%，最多{A_rampageMaxLevel}层',
'复仇魂噬',
'对敌方三排目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，并附加目标{U_hpMaxPCT}%最大生命值的魔法伤害，自身获得{U_convertShieldPCT}%该伤害值的护盾，持续{U_shieldBuffRound}回合',
'灵魂汲取',
'自身造成伤害{P_causeInjuryConvertPCT}%转化为灵魂值，受到伤害{P_sufferInjuryConvertPCT}%转化为灵魂值（灵魂值上限为{P_soulHpMaxPCT}%最大生命值），当灵魂值满时，自身获得一个等额的护盾',
'暴走每层伤害加成增加至{A_perRampageAddInjuryPCT2}%',
'+10%物理攻击 +10%生命值',
 '灵魂汲取自身造成伤害{P_causeInjuryConvertPCT2}%转化为灵魂值，受到伤害{P_sufferInjuryConvertPCT2}%转化为灵魂值（灵魂值上限为{P_soulHpMaxPCT2}%最大生命值）',
 '复仇魂噬伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击），护盾转化率增加至{U_convertShieldPCT2}%，每少一个目标伤害增加{U_perAddInjuryPCT}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3401, 34, 'A_physicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3402, 34, 'A_magicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3403, 34, 'A_perRampageAddInjuryPCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3404, 34, 'A_perRampageAddInjuryPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3405, 34, 'A_rampageMaxLevel', '3', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3406, 34, 'U_physicalAttackPCT', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3407, 34, 'U_physicalAttackPCT2', '175', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3408, 34, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3409, 34, 'U_magicalAttackPCT2', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3410, 34, 'U_hpMaxPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3411, 34, 'U_convertShieldPCT', '35', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3412, 34, 'U_convertShieldPCT2', '45', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3413, 34, 'U_shieldBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3414, 34, 'U_perAddInjuryPCT', '30', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3415, 34, 'P_causeInjuryConvertPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3416, 34, 'P_causeInjuryConvertPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3417, 34, 'P_sufferInjuryConvertPCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3418, 34, 'P_sufferInjuryConvertPCT2', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3419, 34, 'P_soulHpMaxPCT', '35', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3420, 34, 'P_soulHpMaxPCT2', '45', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (35,
'鲜血汲取',
'对单一目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，同时回复自身该伤害{A_treatmentPCT}%的生命值',
'血之潮汐',
'对敌方三排目标造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，并标记目标，使目标受到的伤害增加{U_addSufferInjuryPCT}%，并在{U_detonateBuffRound}回合后引爆印记，造成（+{U_detonateMagicalAttackPCT}%魔法攻击）的魔法伤害，并回复自身该伤害{U_detonateTreatmentPCT}%的生命值',
'血色契约',
'自身生命值上限上升自身原始魔法攻击，受到的治疗效果增加{P_addTreatmentPCT}%',
'鲜血汲取伤害加成增加至（+{A_magicalAttackPCT2}%魔法攻击），生命值回复增加至{A_treatmentPCT2}%',
'+10%魔法攻击 +10%生命值',
'血色契约受到的治疗效果增加至{P_addTreatmentPCT2}%',
'血之潮汐使目标易伤增加至{U_addSufferInjuryPCT2}%，引爆伤害增加至（+{U_detonateMagicalAttackPCT2}%魔法攻击）');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3501, 35, 'A_magicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3502, 35, 'A_magicalAttackPCT2', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3503, 35, 'A_treatmentPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3504, 35, 'A_treatmentPCT2', '80', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3505, 35, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3506, 35, 'U_addSufferInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3507, 35, 'U_addSufferInjuryPCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3508, 35, 'U_detonateBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3509, 35, 'U_detonateMagicalAttackPCT', '225', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3510, 35, 'U_detonateMagicalAttackPCT2', '275', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3511, 35, 'U_detonateTreatmentPCT', '50', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3512, 35, 'P_addTreatmentPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3513, 35, 'P_addTreatmentPCT2', '40', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (36,
'盾击',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_physicalDefensePCT}%物理防御）的物理伤害',
'坚不可摧',
'获得一个可抵抗（+{U_shieldHpMaxPCT}%自身最大生命值）的护盾，增加自身{U_addPhysicalDefensePCT}%物理防御和30%伤害减免，并使荆棘之甲反伤增加{U_addCounterattackPCT}%，持续{U_buffRound}回合',
'荆棘之甲',
'自身受到近身攻击时，反弹攻击者（+{P_physicalDefensePCT}%物理防御）的真实伤害',
'盾击额外增加自身物理防御{A_addPhysicalDefensePCT}%，持续{A_addPhysicalDefenseBuffRound}回合',
'+10%物理防御 +10%生命值',
'荆棘之甲 反弹伤害增加至自身物理防御{P_physicalDefensePCT2}%',
'坚不可摧护盾值增加至（+{U_shieldHpMaxPCT2}%自身最大生命值），增加自身{U_addPhysicalDefensePCT2}%物理防御和{U_addInjuryReductionPCT2}%伤害减免');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3601, 36, 'A_physicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3602, 36, 'A_physicalDefensePCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3603, 36, 'A_addPhysicalDefensePCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3604, 36, 'A_addPhysicalDefenseBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3605, 36, 'U_shieldHpMaxPCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3606, 36, 'U_shieldHpMaxPCT2', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3607, 36, 'U_addPhysicalDefensePCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3608, 36, 'U_addPhysicalDefensePCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3609, 36, 'U_addInjuryReductionPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3610, 36, 'U_addInjuryReductionPCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3611, 36, 'U_addCounterattackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3612, 36, 'U_buffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3613, 36, 'P_physicalDefensePCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3614, 36, 'P_physicalDefensePCT2', '125', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (37,
'祝福',
'回复自身和守护目标（+{A_magicalAttackPCT}%魔法攻击）的生命值',
'璀璨繁星',
'自身和链接目标获得一个可抵挡（+{U_magicalAttackPCT}%魔法攻击）的护盾，并使星灵守护效果增加{U_addStarElfGuardianPCT}%，持续{U_addStarElfGuardianBuffRound}回合',
'星灵守护',
'守护输出伤害最高的己方英雄，增加目标和自身{P_addAttackPCT}%双攻和{P_addDefensePCT}%双防',
'祝福生命值回复量增加至（+{A_magicalAttackPCT2}%魔法攻击）',
'+10%魔法攻击 +10%生命值',
'星灵守护增加{P_addAttackPCT2}%双攻和{P_addDefensePCT2}%双防',
'璀璨繁星护盾值增加至（+{U_magicalAttackPCT2}%魔法攻击），并使星灵守护效果增加{U_addStarElfGuardianPCT2}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3701, 37, 'A_magicalAttackPCT', '90', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3702, 37, 'A_magicalAttackPCT2', '100', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3703, 37, 'U_magicalAttackPCT', '300', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3704, 37, 'U_magicalAttackPCT2', '350', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3705, 37, 'U_addStarElfGuardianPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3706, 37, 'U_addStarElfGuardianPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3707, 37, 'U_addStarElfGuardianBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3708, 37, 'P_addAttackPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3709, 37, 'P_addAttackPCT2', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3710, 37, 'P_addDefensePCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3711, 37, 'P_addDefensePCT2', '30', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (38,
'鬼斩',
'对单一目标造成（+{A_physicalAttackPCT}%物理攻击）（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，并附加目标已损失生命值{A_lossHpPCT}%的魔法伤害',
'鬼神噬灵',
'对最多三排目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，并减少目标{U_reduceMagicalDefensePCT}%魔抗，持续{U_reduceMagicalDefenseBuffRound}回合，如果受到伤害后，目标生命值低于{U_triggerKillHpMaxPCT}%，则立即阵亡',
'鬼影步',
'增加自身{P_addSpeedPCT}%速度，并减少自身受到的物理伤害{P_reduceSufferPhysicalInjuryPCT}%',
'鬼斩伤害增加至（+{A_physicalAttackPCT2}%物理攻击）（+{A_magicalAttackPCT2}%魔法攻击），额外伤害增加至目标已损失生命值{A_lossHpPCT2}%',
'+10%物理攻击 +10%魔法攻击',
'鬼影步增加{P_addSpeedPCT2}%速度，物伤减免增加至{P_reduceSufferPhysicalInjuryPCT2}%',
'鬼神噬灵伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击），减少目标魔抗增加至{U_reduceMagicalDefensePCT2}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3801, 38, 'A_physicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3802, 38, 'A_physicalAttackPCT2', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3803, 38, 'A_magicalAttackPCT', '90', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3804, 38, 'A_magicalAttackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3805, 38, 'A_lossHpPCT', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3806, 38, 'A_lossHpPCT2', '15', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3807, 38, 'U_physicalAttackPCT', '120', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3808, 38, 'U_physicalAttackPCT2', '140', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3809, 38, 'U_magicalAttackPCT', '200', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3810, 38, 'U_magicalAttackPCT2', '240', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3811, 38, 'U_reduceMagicalDefensePCT', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3812, 38, 'U_reduceMagicalDefensePCT2', '35', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3813, 38, 'U_reduceMagicalDefenseBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3814, 38, 'U_triggerKillHpMaxPCT', '10', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3815, 38, 'P_addSpeedPCT', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3816, 38, 'P_addSpeedPCT2', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3817, 38, 'P_reduceSufferPhysicalInjuryPCT', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3818, 38, 'P_reduceSufferPhysicalInjuryPCT2', '20', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (39,
'三连击',
'对单一目标造成3段伤害，每段造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，每段伤害递增{A_addInjuryPCT}%',
'暗雷贯穿',
'对单一目标造成（+{U_physicalAttackPCT}%物理攻击）（+{U_magicalAttackPCT}%魔法攻击）的物理伤害，无视目标{U_physicalPenetratePCT}%物理防御',
'魔枪',
'自身攻击会偷取目标{P_absorbAttackPCT}%双攻，持续{P_absorbAttackBuffRound}回合',
'三连击每段伤害加成增加至(+{A_physicalAttackPCT2}%物理攻击)',
'+10%物理攻击 +10%生命值',
'魔枪会偷取{P_absorbAttackPCT2}%目标双攻',
'暗雷贯穿伤害增加至（+{U_physicalAttackPCT2}%物理攻击）（+{U_magicalAttackPCT2}%魔法攻击），造成伤害前破除对方所有护盾效果，并使得目标受到伤害增加{U_addSufferInjuryPCT}%，持续{U_addSufferInjuryBuffRound}回合');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3901, 39, 'A_physicalAttackPCT', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3902, 39, 'A_physicalAttackPCT2', '67', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3903, 39, 'A_addInjuryPCT', '20', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3904, 39, 'U_physicalAttackPCT', '300', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3905, 39, 'U_physicalAttackPCT2', '350', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3906, 39, 'U_magicalAttackPCT', '125', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3907, 39, 'U_magicalAttackPCT2', '150', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3908, 39, 'U_physicalPenetratePCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3909, 39, 'U_addSufferInjuryPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3910, 39, 'U_addSufferInjuryBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3911, 39, 'P_absorbAttackPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3912, 39, 'P_absorbAttackPCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (3913, 39, 'P_absorbAttackBuffRound', '1', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (40,
'十字斩',
'对目标造成两段伤害，第一段造成（+{A_physicalAttackPCT}%物理攻击）的物理伤害，第二段造成（+{A_physicalAttackPCT}%物理攻击）的魔法伤害',
 '绝息封魔斩',
 '对目标和相邻单位造成（+{U_physicalAttackPCT}%物理攻击）的物理伤害和（+{U_physicalAttackPCT}%物理攻击）的魔法伤害，并封印目标{U_sealBuffRound}回合',
 '二刀流',
 '自身造成的物理伤害无视{P_physicalPenetratePCT}%物理防御，魔法伤害减少目标魔攻和魔抗{P_reduceMagicalPCT}%，持续{P_reduceMagicalBuffRound}回合',
 '十字斩第一段伤害增加至（+{A_physicalAttackPCT2}%物理攻击），第二段伤害增加至（+{A_physicalAttackPCT2}%物理攻击）',
 '+10%物理攻击 +10%速度',
 '二刀流物理伤害无视{P_physicalPenetratePCT2}%物理防御，魔法伤害减少目标{P_reduceMagicalPCT2}%魔攻和魔抗',
 '绝息封魔斩伤害增加至（+{U_physicalAttackPCT2}%物理攻击）的物理伤害和（+{U_physicalAttackPCT2}%物理攻击）的魔法伤害');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4001, 40, 'A_physicalAttackPCT', '65', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4002, 40, 'A_physicalAttackPCT2', '75', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4003, 40, 'U_physicalAttackPCT', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4004, 40, 'U_physicalAttackPCT2', '130', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4005, 40, 'U_sealBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4006, 40, 'P_physicalPenetratePCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4007, 40, 'P_physicalPenetratePCT2', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4008, 40, 'P_reduceMagicalPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4009, 40, 'P_reduceMagicalPCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4010, 40, 'P_reduceMagicalBuffRound', '1', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (41,
'法术脉冲',
'发出一道冲击波，对最多三排目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，并增加自身{A_addMagicRechargeLevel}层魔法充能',
'荆棘藤蔓',
'对全体敌方目标造成（+{U_magicalAttackPCT}%魔法攻击）（+{U_hpMaxPCT}%目标最大生命值）的魔法伤害，并对{U_imprisonCount}个目标造成{U_imprisonBuffRound}回合禁锢效果（优先伤害最高的目标）',
'魔法吸收/魔法充能',
'魔法吸收：自身受到的魔法伤害减少{P_reduceMagicalInjuryPCT}%<br>魔法充能：受到一次魔法伤害时，增加一层充能，达到{P_magicalRechargeNum}层时，消耗{P_magicalRechargeNum}层充能回复自身{P_treatmentHpMaxPCT}%最大生命值',
'法术脉冲造成（+{A_magicalAttackPCT2}%魔法攻击）的魔法伤害',
'+10%魔法抗性 +10%生命值',
'魔法吸收减免增加至{P_reduceMagicalInjuryPCT2}%，魔法充能回复值增加至{P_treatmentHpMaxPCT2}%最大生命值',
'荆棘藤蔓伤害增加至（+{U_magicalAttackPCT2}%魔法攻击）（+{U_hpMaxPCT2}%目标最大生命值）,禁锢目标数量增加至最多{U_imprisonCount2}个');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4101, 41, 'A_magicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4102, 41, 'A_magicalAttackPCT2', '85', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4103, 41, 'A_addMagicRechargeLevel', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4104, 41, 'U_magicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4105, 41, 'U_magicalAttackPCT2', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4106, 41, 'U_hpMaxPCT', '6', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4107, 41, 'U_hpMaxPCT2', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4108, 41, 'U_imprisonCount', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4109, 41, 'U_imprisonCount2', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4110, 41, 'U_imprisonBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4111, 41, 'P_reduceMagicalInjuryPCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4112, 41, 'P_reduceMagicalInjuryPCT2', '25', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4113, 41, 'P_treatmentHpMaxPCT', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4114, 41, 'P_treatmentHpMaxPCT2', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4115, 41, 'P_magicalRechargeNum', '4', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (42,
'时间急速',
'随机使一名友军目标行动一次，并增加目标（+{A_magicalAttackPCT}%魔法攻击）双攻',
'时光倒流',
'恢复全体友军在这两回合受到总伤害的{U_treatmentPCT}%生命值，并移除所有异常状态',
'时间静止',
'自身行动一次会充能一次时间宝石，当时间宝石达到{P_timeStopMaxLevel}层充能，随机对一名敌方目标造成（+{P_magicalAttackPCT}%魔法攻击）的伤害，并眩晕敌方{P_dizzinessBuffRound}回合',
'时间急速增加的双攻提升到（+{A_magicalAttackPCT2}%魔法攻击）',
'+10%魔法攻击 +10%魔法抗性',
'时间静止{P_timeStopMaxLevel2}层充能就可触发，伤害增加至（+{P_magicalAttackPCT2}%魔法攻击）',
'时光倒流恢复生命值百分比增加至{U_treatmentPCT2}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4201, 42, 'A_magicalAttackPCT', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4202, 42, 'A_magicalAttackPCT2', '12', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4203, 42, 'U_treatmentPCT', '22', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4204, 42, 'U_treatmentPCT2', '27', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4205, 42, 'P_timeStopMaxLevel', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4206, 42, 'P_timeStopMaxLevel2', '3', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4207, 42, 'P_magicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4208, 42, 'P_magicalAttackPCT2', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4209, 42, 'P_dizzinessBuffRound', '1', 1);


INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (43,
'猛虎撕裂/灵龟汲取/巨熊重击/火凤烈焰',
'猛虎撕裂：对单一目标造成（+{A_tigerAttackPhysicalAttackPCT}%物理攻击）的物理伤害，并撕裂目标{A_tigerTearBuffRound}回合（每回合受到（+{A_tigerTearPhysicalAttackPCT}%物理攻击）的物理伤害）\r\n灵龟汲取：对单一目标造成（+{A_tortoiseAttackPhysicalAttackPCT}%物理攻击）（+{A_tortoiseAttackHpMaxPCT}%自身最大生命值）的物理攻击，并回复自身{A_tortoiseAttackTreatmentPCT}%该伤害的生命值\r\n巨熊重击：对单一目标造成（+{A_bearAttackPhysicalAttackPCT}%物理攻击）的物理伤害，并眩晕目标{A_bearAttackDizzinessBuffRound}回合\r\n火凤烈焰：对最多三排目标造成（+{A_phoenixAttackMagicalAttackPCT}%魔法攻击）的魔法伤害',
'兽灵觉醒',
'同时触发四种兽灵buff，并增加自身{U_addAttributePCT}%物理攻击、物理防御、魔法攻击、魔法抗性和速度，持续{U_addAttributeBuffRound}回合',
'兽灵之力',
'每次行动前，会切换自身形态并获得相应buff和相应攻击技能。\r\n猛虎：下一次物理攻击会减少目标15%物理防御，持续两回合\r\n灵龟：自身获得一个（+{P_tortoiseShieldHpMaxPCT}%自身最大生命值）的护盾\r\n巨熊：自身当前回合增加{P_bearBuffAddPhysicalAttackPCT}%物理攻击\r\n火凤：对敌方全体目标造成（+{P_phoenixBuffMagicalAttackPCT}%魔法攻击）的魔法伤害',
'猛虎撕裂：伤害增加至（+{A_tigerAttackPhysicalAttackPCT2}%物理攻击），撕裂伤害增加至（+{A_tigerTearPhysicalAttackPCT2}%物理攻击）；灵龟汲取：自身生命值回复量增加至{A_tortoiseAttackTreatmentPCT2}%；巨熊重击：伤害增加至（+{A_bearAttackPhysicalAttackPCT2}%物理攻击）火凤烈焰：减少目标{A_phoenixAttackReduceMagicalDefensePCT}%魔法抗性，持续{A_phoenixAttackReduceMagicalDefenseBuffRound}回合',
'+10%物理攻击 +10%生命值',
'兽灵之力。猛虎：下次物理攻击减少{P_tigerTearReducePhysicalDefensePCT2}%物理防御；灵龟：护盾值增加至（+{P_tortoiseShieldHpMaxPCT2}%自身最大生命值）；巨熊：自身当前回合增加{P_bearBuffAddPhysicalAttackPCT2}%物理攻击；火凤：伤害增加至（+{P_phoenixBuffMagicalAttackPCT2}%魔法攻击）',
'兽灵觉醒增加自身{U_addAttributePCT2}%物理攻击、物理防御、魔法攻击、魔法抗性和速度');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4301, 43, 'A_tigerAttackPhysicalAttackPCT', '100', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4302, 43, 'A_tigerAttackPhysicalAttackPCT2', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4303, 43, 'A_tigerTearPhysicalAttackPCT', '35', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4304, 43, 'A_tigerTearPhysicalAttackPCT2', '42', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4305, 43, 'A_tigerTearBuffRound', '2', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4306, 43, 'A_tortoiseAttackPhysicalAttackPCT', '80', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4307, 43, 'A_tortoiseAttackHpMaxPCT', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4308, 43, 'A_tortoiseAttackTreatmentPCT', '40', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4309, 43, 'A_tortoiseAttackTreatmentPCT2', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4310, 43, 'A_bearAttackPhysicalAttackPCT', '90', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4311, 43, 'A_bearAttackPhysicalAttackPCT2', '105', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4312, 43, 'A_bearAttackDizzinessBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4313, 43, 'A_phoenixAttackMagicalAttackPCT', '70', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4314, 43, 'A_phoenixAttackReduceMagicalDefensePCT', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4315, 43, 'A_phoenixAttackReduceMagicalDefenseBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4316, 43, 'U_addAttributePCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4317, 43, 'U_addAttributePCT2', '8', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4318, 43, 'U_addAttributeBuffRound', '2', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4319, 43, 'P_tigerTearReducePhysicalDefensePCT', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4320, 43, 'P_tigerTearReducePhysicalDefensePCT2', '20', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4321, 43, 'P_tortoiseShieldHpMaxPCT', '4', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4322, 43, 'P_tortoiseShieldHpMaxPCT2', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4323, 43, 'P_bearBuffRound', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4324, 43, 'P_bearBuffAddPhysicalAttackPCT', '12', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4325, 43, 'P_bearBuffAddPhysicalAttackPCT2', '15', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4326, 43, 'P_phoenixBuffMagicalAttackPCT', '50', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4327, 43, 'P_phoenixBuffMagicalAttackPCT2', '60', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (4328, 43, 'P_triggerTortoiseTypePCT', '25', 1);



INSERT INTO `game`.`hero_text`(`hero_id`, `attack_name`, `attack`, `unique_skill_name`, `unique_skill`, `passive_skill_name`, `passive_skill`, `breach1`, `breach2`, `breach3`, `breach4`) VALUES (500,
'湮灭',
'对单一目标造成（+{A_magicalAttackPCT}%魔法攻击）的魔法伤害，目标每损失{A_lossHpPCT}%生命值，伤害增加{A_addInjuryPCT}%',
'大暗黑天',
'对所有敌方目标造成（+{U_magicalAttackPCT}%魔法攻击）的魔法伤害，并降低所有目标{U_reduceInjuryPCT}%伤害输出持续{U_reduceInjuryBuffRound}回合',
'邪灵主宰',
'自身造成的魔法伤害{P_realConvertPCT}%转化为真实伤害',
'湮灭伤害增加至（+{A_magicalAttackPCT2}%魔法攻击）',
'+20%魔法攻击',
'真实伤害转化比增加至{P_realConvertPCT2}%',
'大暗黑天伤害增加至（+{U_magicalAttackPCT2}%魔法攻击），减少伤害输出效果提升至{U_reduceInjuryPCT2}%');

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50001, 500, 'A_magicalAttackPCT', '110', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50002, 500, 'A_magicalAttackPCT2', '125', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50003, 500, 'A_lossHpPCT', '1', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50004, 500, 'A_addInjuryPCT', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50005, 500, 'U_magicalAttackPCT', '160', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50006, 500, 'U_magicalAttackPCT2', '180', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50007, 500, 'U_reduceInjuryPCT', '5', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50008, 500, 'U_reduceInjuryPCT2', '10', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50009, 500, 'U_reduceInjuryBuffRound', '1', 1);

INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50010, 500, 'P_realConvertPCT', '30', 1);
INSERT INTO `game`.`hero_skill_attribute`(`id`, `hero_id`, `code`, `value`, `is_valid`) VALUES (50011, 500, 'P_realConvertPCT2', '40', 1);
