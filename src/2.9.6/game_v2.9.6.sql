CREATE TABLE `obtain_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `type` varchar(16) NOT NULL COMMENT '类型：HERO，ARTICLE，RUNE',
  `ref_id` int(0) NOT NULL COMMENT '关联id',
  `num` int(0) NULL COMMENT '数量',
  `status` int(0) NOT NULL COMMENT '状态：0新，1已读',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY (`user_id`) USING BTREE,
  KEY (`ref_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;


-- 2.9.6 版本
INSERT INTO `version`(`id`, `version`, `token`, `is_valid`, `create_time`, `send_flag`) VALUES (7, '2.9.6', '73BFC6FBB6B0FC1DD646DCE617794C96', 1, now(), 0);

-- 2.9.6 版本更新补偿奖励
INSERT INTO common_reward(`id`, `ref_type`, `ref_id`, `type`, `reward_id`, `num`, `random`) VALUES (4, 'VERSION_UPGRADE', 7, 2, NULL, 10000, NULL);


INSERT INTO `announcement`(`id`, `version`, `title`, `release_time`, `create_time`, `type`, `content`) VALUES (14, '2.9.5', '2022-07-17 2.9.6版本更新公告', '2022-07-17', now(), 'VERSION_UPGRADE', NULL);

INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (14, '本地资源动态加载优化', '1');
INSERT INTO `announcement_detail`(`announcement_id`, `content`, `type`) VALUES (14, '首页未读消息红点提示（邮件，任务完成，好友消息，新英雄，新物品提示）', '1');
