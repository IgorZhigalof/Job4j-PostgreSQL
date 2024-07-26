create table countries (
    id serial primary key,
    "name" varchar(255)
)

create table capitals(
    id serial primary key,
    "name" varchar(255)
)

create table countries_capitals(
    id serial primary key,
    "name" int references countries(id) unique,
    "capital" int references capitals(id) unique
)

insert into countries(name) values('Russia')
insert into countries(name) values('USA')

insert into capitals(name) values('Moscow')
insert into capitals(name) values('Washington')

insert into countries_capitals(name, capital) values (1, 1)
insert into countries_capitals(name, capital) values (2, 2)

select * from countries_capitals


