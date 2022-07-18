alter table user_rune add column is_valid tinyint(1) comment '是否有效';
alter table user_rune add column update_time datetime comment '更新时间';

update user_rune set is_valid = 1 where is_valid is null;