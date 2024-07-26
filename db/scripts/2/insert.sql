insert into rules(name) values('Admin')
insert into rules(name) values('User')
insert into rules(name) values('Staff')

insert into roles(name) values('Admin')
insert into roles(name) values('User')
insert into roles(name) values('Moderator')
insert into roles(name) values('Helper')

insert into users(username, role, rule) values('AUser', 1, 1)
insert into users(username, role, rule) values('UUser', 2, 2)
insert into users(username, role, rule) values('HUser', 4, 2)
insert into users(username, role, rule) values('MUser', 3, 3)

insert into states("state") values('not reviewed')
insert into states("state") values('WIP')
insert into states("state") values('closed')

insert into categories(name) values('announcement')
insert into categories(name) values('report')
insert into categories(name) values('discussion')

insert into items(name, category, "user", state) values('something', 3, 2, 1)
insert into items(name, category, "user", state) values('New site', 1, 1, 3)
insert into items(name, category, "user", state) values('Found bug!', 2, 3, 2)
insert into items(name, category, "user", state) values('Loocking for new staff members', 1, 4, 3)

insert into comments(item, comment) values(1, 'smth')
insert into comments(item, comment) values(2, 'smth')

insert into attachs(item, "cursor") values(2, 13123)

select * from roles





