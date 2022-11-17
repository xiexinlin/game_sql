alter table designation change combatPowerAddition combat_power_addition int(0) not null comment '战斗力加成';

update designation set combat_power_addition = 100 where id = 1;
update designation set combat_power_addition = 150 where id = 2;
update designation set combat_power_addition = 240 where id = 3;
update designation set combat_power_addition = 360 where id = 4;
update designation set combat_power_addition = 500 where id = 5;
update designation set combat_power_addition = 80 where id = 11;
update designation set combat_power_addition = 120 where id = 12;
update designation set combat_power_addition = 450 where id = 100;
update designation set combat_power_addition = 500 where id = 500;
update designation set combat_power_addition = 450 where id = 800;
update designation set combat_power_addition = 150 where id = 900;
update designation set combat_power_addition = 210 where id = 901;
update designation set combat_power_addition = 250 where id = 902;
update designation set combat_power_addition = 350 where id = 903;
update designation set combat_power_addition = 550 where id = 904;
update designation set combat_power_addition = 600 where id = 1000;

-- 阵容属性加成
create table battle_array_detail_attribute (
	 `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
	 `battle_array_detail_id` int(0) NOT NULL COMMENT '阵容明细id',
	 `type` varchar(20) not null comment '属性类型',
	 `addition` int(0) not null comment '加成',
	 `is_valid` int(0) not null comment '是否有效',
	 `create_time` datetime COMMENT '创建时间',
	 PRIMARY KEY (`id`) USING BTREE,
	 KEY (`battle_array_detail_id`) USING BTREE
)