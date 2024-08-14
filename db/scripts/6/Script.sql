create table type(
    id serial primary key,
    "name" varchar
)

create table product(
    id serial primary key,
    "name" varchar,
    type_id int references type(id),
    expired_date date,
    price real
)

insert into type (name) values
('СЫР'),
('МОЛОКО'),
('МОРОЖЕНОЕ');

INSERT INTO product (name, type_id, expired_date, price) VALUES
('Сыр Российский', 1, '2024-08-15', 450.00),
('Сыр Маасдам', 1, '2024-08-20', 500.00),
('Сыр Чеддер', 1, '2024-08-25', 550.00),
('Сыр Бри', 1, '2024-03-01', 600.00),
('Сыр Камамбер', 1, '2024-09-10', 620.00),
('Сыр Пармезан', 1, '2024-12-01', 700.00),
('Сыр Эдам', 1, '2024-04-05', 480.00),
('Сыр Горгонзола', 1, '2024-10-15', 750.00),
('Сыр Блю', 1, '2024-09-20', 800.00),
('Сыр Тильзитер', 1, '2024-10-01', 470.00),
('Молоко Пастеризованное', 2, '2024-08-05', 60.00),
('Молоко Ультрапастеризованное', 2, '2024-08-20', 80.00),
('Молоко Соевое', 2, '2024-09-01', 100.00),
('Молоко Миндальное', 2, '2024-09-15', 120.00),
('Молоко Овсяное', 2, '2024-09-25', 110.00),
('Молоко Козье', 2, '2024-08-18', 150.00),
('Молоко Лактозное', 2, '2024-09-10', 130.00),
('Молоко Шоколадное', 2, '2024-08-30', 90.00),
('Молоко Ванильное', 2, '2024-08-22', 95.00),
('Молоко Сгущенное', 2, '2024-12-31', 200.00),
('Свежее мороженое', 3, '2024-04-30', 50.00);

--1
select *
from product p
join type t on t.id = p.type_id
where t.name = 'СЫР'

--2
select *
from product
where product.name like '%мороженое%'

--3
select *
from product
where product.expired_date < current_date

--4
select *
from product as p
where p.price =
    (select max(p.price)
     from product as p)

--5
select p.type_id, count(p.id)
from product as p
group by p.type_id

--6
select p.*
from product as p
    join type as t
        on t.id = p.type_id
where t.name = 'СЫР'
    or t.name = 'МОЛОКО'

--7
select t.name
from type as t
    join product p
        on t.id = p.type_id
group by t.name
having count(p.id) < 10

--8
select p.*, t.name as type_name
from product as p
    join type as t
        on p.type_id = t.id


