-- 2.9.5 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (6, '2.9.5', '39D68C922DB293943825598BBB4BF23C', 1, now(), 0);

-- 2.9.5 版本更新补偿奖励
INSERT INTO common_reward(`id`, `ref_type`, `ref_id`, `type`, `reward_id`, `num`, `random`, `rune_level`) VALUES (3, 'VERSION_UPGRADE', 6, 2, NULL, 10000, NULL, NULL);


update chat_message set type = 'FRIEND' where type is null;

update shop_article set daily_max_limit = 5 where id = 1;
update shop_article set daily_max_limit = 5 where id = 2;
update shop_article set daily_max_limit = 5 where id = 3;
update shop_article set daily_max_limit = 1 where id = 4;

-- 删除废弃字段
alter table checkpoint drop column battleArray;
alter table checkpoint drop column lv;
alter table checkpoint add column icon varchar(32) null comment '图标';
update checkpoint c inner join battle_array_detail b on type = 'CHECKPOINT' and b.ref_id = c.id and b.battle_array_num = 2 set c.icon = concat('avatar/', b.hero_id, '.jpg') where c.icon is null;


INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (13, '2.9.5', '2022-07-10 2.9.5版本更新公告', '2022-07-10', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '排行榜界面（等级排行，金币排行，钻石排行，排位排行）', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '个人主页弹窗', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '世界通知', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '密码修改功能', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '打斗加载界面显示优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '商品购买增加上限', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '关卡阵容封面图调整', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '战斗新增伤害浮动', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (13, '好友聊天优化（文字自适应显示，缓存优化，解决部分已知bug）', '1');


