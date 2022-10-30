alter table hero_rune_recommendation add column sort int(0) null comment '排序';

-- 剑圣
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (1, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (1, 413, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (1, 405, 1, now(), 3);

-- 狱血魔神
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (2, 401, 1, now(), 1);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (2, 406, 1, now(), 2);
insert into hero_rune_recommendation (hero_id, rune_id, is_valid, create_time, sort) values (2, 411, 1, now(), 3);