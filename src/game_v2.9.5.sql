-- 2.9.5 版本
INSERT INTO `game`.`version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (6, '2.9.5', '39D68C922DB293943825598BBB4BF23C', 1, now(), 0);

-- 2.9.5 版本更新补偿奖励
INSERT INTO `game`.`common_reward`(`id`, `ref_type`, `ref_id`, `type`, `reward_id`, `num`, `random`, `rune_level`) VALUES (3, 'VERSION_UPGRADE', 6, 2, NULL, 10000, NULL, NULL);


update chat_message set type = 'FRIEND' where type is null;