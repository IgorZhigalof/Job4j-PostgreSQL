create table rules (
    id serial primary key,
    "name" varchar(255)
)

create table roles (
    id serial primary key,
    "name" varchar(255)
)

create table roles_rules (
    id serial primary key,
    rule int references rules(id),
    role int references roles(id)
)

create table users (
    id serial primary key,
    username varchar(255),
    role int references roles(id)
)

create table categories (
    id serial primary key,
    "name" varchar(255)
)

create table states (
    id serial primary key,
    state varchar(255)
)

create table items (
    id serial primary key,
    "name" varchar(255),
    "user" int references users(id),
    category int references categories(id),
    state int references states(id)
)

create table comments (
    id serial primary key,
    item int references items(id),
    comment varchar
)

create table attachs (
    id serial primary key,
    item int references items(id),
    cursor int8
)

