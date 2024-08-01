create table devices
(
    id     serial primary key,
    "name" varchar(255),
    price  real
)

create table people
(
    id     serial primary key,
    "name" varchar(255)
);

create table devices_people
(
    id        serial primary key,
    device_id int references devices (id),
    people_id int references people (id)
);

INSERT INTO devices ("name", price) VALUES
('Smartphone', 69999),
('Laptop', 110000),
('Tablet', 39999),
('Smartwatch', 19999),
('Headphones', 14999),
('Microphone', 4999);


INSERT INTO people ("name") VALUES
('Alice'),
('Bob'),
('Charlie'),
('Diana'),
('Eve'),
('Elly');


INSERT INTO devices_people (device_id, people_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 6);

select avg(d.price)
from devices as d

select p.name, avg(d.price)
from devices_people as dp
join people as p
    on dp.people_id = p.id
join devices as d
    on dp.device_id = d.id
group by p.name

select p.name, avg(d.price)
from devices_people as dp
join people as p
    on dp.people_id = p.id
join devices as d
    on dp.device_id = d.id
group by p.name
having avg(d.price) > 5000