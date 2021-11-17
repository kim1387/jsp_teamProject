create schema if not exists theme_park;
create table if not exists post
(
    id           int auto_increment
        primary key,
    title        varchar(30)   null,
    user_id      varchar(20)   null,
    created_date datetime      null,
    updated_date datetime      null,
    content      varchar(2000) null,
    removed      tinyint(1)    null
);

create table if not exists user
(
    id        varchar(20) not null
        primary key,
    password  varchar(20) null,
    name      varchar(20) null,
    gender    varchar(20) null,
    email     varchar(30) null,
    authority varchar(10) null
);


