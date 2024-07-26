create table members (
    id serial primary key,
    "name" varchar(255)
)

create table brands (
    id serial primary key,
    "brand" varchar(255)
)

create table members_brands (
    id serial primary key,
    "name" int references members(id),
    "brand" int references brands(id)
)

delete from memebers_brands

insert into members(name) values('Peter')
insert into members(name) values('Joe')
insert into members(name) values('Sam')

insert into brands(brand) values('first')
insert into brands(brand) values('second')
insert into brands(brand) values('third')

insert into memebers_brands(name, brand) values(1, 1)
insert into memebers_brands(name, brand) values(3, 1)
insert into memebers_brands(name, brand) values(3, 2)
insert into memebers_brands(name, brand) values(1, 2)
insert into memebers_brands(name, brand) values(2, 2)
insert into memebers_brands(name, brand) values(2, 3)

select * from members_brands

