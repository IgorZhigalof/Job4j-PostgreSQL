create table car_models (
    id serial primary key,
    model_name varchar,
    warranty_period int
)

create table car_numbers (
    id serial primary key,
    value int,
    car_model int references car_models(id)
)

INSERT INTO car_models (model_name, warranty_period) VALUES ('Toyota', 3650);
INSERT INTO car_models (model_name, warranty_period) VALUES ('Honda', 365);
INSERT INTO car_models (model_name, warranty_period) VALUES ('Ford', 1000);
INSERT INTO car_models (model_name, warranty_period) VALUES ('BMW', 1213);
INSERT INTO car_models (model_name) VALUES ('Audi');

INSERT INTO car_numbers (value, car_model) VALUES (1234, 1);
INSERT INTO car_numbers (value, car_model) VALUES (1235, 1);
INSERT INTO car_numbers (value, car_model) VALUES (5678, 2);
INSERT INTO car_numbers (value, car_model) VALUES (9101, 3);
INSERT INTO car_numbers (value, car_model) VALUES (1121, 4);
INSERT INTO car_numbers (value, car_model) VALUES (3141, 5);

select * from car_numbers as cn
join car_models as cm on cn.car_model = cm.id

select * from car_numbers cn
join car_models cm on cm.warranty_period > 1000 and cn.car_model = cm.id

select * from car_models cm
join car_numbers cn on cm.id = cn.car_model



