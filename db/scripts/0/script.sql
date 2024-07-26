create table cities (
	id serial PRIMARY KEY,
	"name" varchar(255),
	population int,
	area numeric
);

insert into cities(name, area, population) values('Moscow', 2.511, 13000000);

select * from cities;

update cities set name = 'Copenhagen', population =  602.481, area = 90.01

select * from cities;

delete from cities;
