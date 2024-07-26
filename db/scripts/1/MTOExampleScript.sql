create table universities (
    id serial primary key,
    "name" varchar(255)
)

create table students (
    id serial PRIMARY KEY,
    "name" varchar(255),
    "university" int references universities(id),
    "year" int
);

insert into universities(name) values('MSU')

insert into students("name", "university", "year") values('Ivan', 1, 2);

select * from students

