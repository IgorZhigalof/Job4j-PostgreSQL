create table fauna (
    id             serial primary key,
    "name"         text,
    avg_age        int,
    discovery_date date
);

INSERT INTO fauna (name, avg_age, discovery_date) VALUES
('African Elephant', 21900, NULL),
('Bald Eagle', 9125, NULL),
('Blue Whale', 25550, NULL),
('Giant Panda', 7300, NULL),
('Gray Wolf', 2555, NULL),
('Green Sea Turtle', 29200, NULL),
('House Cat', 5475, NULL),
('Human', 28835, NULL),
('Peregrine Falcon', 5475, NULL),
('Red Fox', 1460, NULL),
('Siberian Tiger', 7300, NULL),
('Southern Cassowary', 18250, NULL),
('Western Gorilla', 12775, NULL),
('Swordfish', 3285, NULL),
('Komodo Dragon', 9125, '1910-01-01'),
('Okapi', 9131, '1901-01-01'),
('Coelacanth', 22018, '1938-01-01'),
('Tasmanian Devil', 1825, '1807-01-01'),
('Quokka', 4380, '1696-01-01'),
('Saola', 5110, '1992-01-01'),
('Aye-aye', 7300, '1780-01-01'),
('Kakapo', 10950, '1845-01-01'),
('Javan Rhino', 16425, '1868-01-01'),
('Vaquita', 7305, '1958-01-01'),
('Giant Squid', 2190, '1857-01-01'),
('Mountain Gorilla', 12775, '1902-01-01'),
('Laotian Rock Rat', 4380, '2005-01-01');

select * from fauna

select * from fauna where "name" like '%fish%'

select * from fauna where avg_age > 10000 and avg_age < 21000

select * from fauna where discovery_date is null

select * from fauna where discovery_date < '01.01.1950'