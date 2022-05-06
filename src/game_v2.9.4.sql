-- 2.9.4 版本
INSERT INTO `game`.`version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (5, '2.9.4', 'F83C6CB2F92B1250F2AFE71D0978608A', 1, now(), 0);


-- 2.9.4 版本更新补偿奖励
INSERT INTO `game`.`common_reward`(`id`, `ref_type`, `ref_id`, `type`, `reward_id`, `num`, `random`, `rune_level`) VALUES (2, 'VERSION_UPGRADE', 5, 2, NULL, 10000, NULL, NULL);