/*
Таблица employees
1) Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
2) Наполнить таблицу employee 70 строками.
*/
create table employees (
 id serial primary key,
 employee_name Varchar(50) not null);

select * from employees;

insert into employees (employee_name)
values ('Uladzimir 1'),('Uladzimir 2'),('Uladzimir 3'),('Uladzimir 4'),('Uladzimir 5'),
('Uladzimir 6'),('Uladzimir 7'),('Uladzimir 8'),('Uladzimir 9'),('Uladzimir 10'),
('Uladzimir 11'),('Uladzimir 12'),('Uladzimir 13'),('Uladzimir 14'),('Uladzimir 15'),
('Uladzimir 16'),('Uladzimir 17'),('Uladzimir 18'),('Uladzimir 19'),('Uladzimir 20'),
('Uladzimir 21'),('Uladzimir 22'),('Uladzimir 23'),('Uladzimir 24'),('Uladzimir 25'),
('Uladzimir 26'),('Uladzimir 27'),('Uladzimir 28'),('Uladzimir 29'),('Uladzimir 30'),
('Uladzimir 31'),('Uladzimir 32'),('Uladzimir 33'),('Uladzimir 34'),('Uladzimir 35'),
('Uladzimir 36'),('Uladzimir 37'),('Uladzimir 38'),('Uladzimir 39'),('Uladzimir 40'),
('Uladzimir 41'),('Uladzimir 42'),('Uladzimir 43'),('Uladzimir 44'),('Uladzimir 45'),
('Uladzimir 46'),('Uladzimir 47'),('Uladzimir 48'),('Uladzimir 49'),('Uladzimir 50'),
('Uladzimir 51'),('Uladzimir 52'),('Uladzimir 53'),('Uladzimir 54'),('Uladzimir 55'),
('Uladzimir 56'),('Uladzimir 57'),('Uladzimir 58'),('Uladzimir 59'),('Uladzimir 60'),
('Uladzimir 61'),('Uladzimir 62'),('Uladzimir 63'),('Uladzimir 64'),('Uladzimir 65'),
('Uladzimir 66'),('Uladzimir 67'),('Uladzimir 68'),('Uladzimir 69'),('Uladzimir 70');


/*
Таблица salary

3) Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
4) Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
*/
create table salary (
 id serial primary key,
 monthly_salary int not null);

select * from salary;

 insert into salary(monthly_salary)
 values (1000),(1100),(1200),(1300),(1400),
 (1500),(1600),(1700),(1800),(1900),(2000),
 (2100),(2200),(2300),(2400),(2500);

/*
Таблица employee_salary

5) Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
6) Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/
create table employee_salary (
 id serial primary key,
 employee_id int not null unique,
 salary_id int not null);

insert into employee_salary (employee_id, salary_id) 
values (1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10),(10,11),
(11,12),(12,13),(13,14),(14,15),(15,6),(16,7),(17,8),(18,9),(19,10),(20,11),
(63,2),(32,3),(36,4),(44,5),(67,6),(58,7),(51,8),(40,9),(62,10),(49,11),
(71,2),(82,3),(93,4),(104,5),(115,6),(116,7),(77,8),(83,9),(99,10),(101,11);

select * from employee_salary;



/*
Таблица roles

7) Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
8) Поменять тип столба role_name с int на varchar(30)
9) Наполнить таблицу roles 20 строками:

*/
create table roles (
 id serial primary key,
 role_name int not null unique);

select * from roles;

alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior QA engineer'),
('Middle QA engineer'),
('Senior QA engineer'),
('Junior AQA engineer'),
('Middle AQA engineer'),
('Senior AQA engineer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Team Lead QA'),
('DevOps Engineer'),
('iOS-developer'),
('Android-developer'),
('Product Manager');

/*
Таблица roles_employee

10) Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
11) Наполнить таблицу roles_employee 40 строками:
 */

create table roles_employee (
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id) references employees(id),
foreign key (role_id) references roles (id));

insert into roles_employee (employee_id, role_id) values (7,2),
(20,4),(3,9),(5,13),(23,4),(11,2),(10,9),(22,13),(21,3),(34,4),(6,7),
(35,14),(36,15),(37,16),(40,17),(38,18),(39,19),(9,20),(30,1),(31,2),
(32,3),(33,4),(41,5),(24,6),(25,7),(26,8),(45,9),(28,10),(29,11),(42,12),
(43,11),(44,12),(27,13),(46,14),(47,15),(1,16),(2,17),(4,18),(50,19),(8,20);

select * from roles_employee;

--drop table roles_employee;
