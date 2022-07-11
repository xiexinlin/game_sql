CREATE TABLE `obtain_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `type` varchar(16) NOT NULL COMMENT '类型：HERO，ARTICLE，RUNE',
  `ref_id` int(0) NOT NULL COMMENT '关联id',
  `num` int(0) NULL COMMENT '数量',
  `status` int(0) NOT NULL COMMENT '状态：0新，1已读',
  `time_limit` int(0) NULL DEFAULT NULL COMMENT '是否有时限（1有0没有）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY (`user_id`) USING BTREE,
  KEY (`ref_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;