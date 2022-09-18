-- 2.10.3 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (13, '2.10.3', '1898D8B91EB219BEFB9D2BCBCC0CD24E', 1, now(), 0);
insert into reward(source, source_id, type, reward_id, num) values ('VERSION_UPGRADE', 13, 'DIAMOND', NULL, 10000);


INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (20, '2.10.3', '2022-09-18 2.10.3版本更新公告', '2022-09-18', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (20, '练功房功能', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (20, '登录界面增加版本更新公告', '1');