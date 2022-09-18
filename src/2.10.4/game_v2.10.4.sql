alter table checkpoint change orderNum order_num int(0) not null comment '关卡顺序';
alter table checkpoint drop column chapterName;