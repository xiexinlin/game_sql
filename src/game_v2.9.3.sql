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
