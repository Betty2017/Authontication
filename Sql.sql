
create schema db_auth;

use db_auth;

create user 'springuser'@'localhost' identified by 'ThePassword';
grant all on db_auth.* to 'springuser'@'localhost';

select * from user;
select * from role;
select * from user_roles;

INSERT INTO user (enabled, password, username)
VALUES (1, "123456", "beti");

INSERT INTO role (role)
VALUES ("user");
INSERT INTO role (role)
VALUES ("admin");

INSERT INTO role (user_id,role_id)
VALUES (1,1);