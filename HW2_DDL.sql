-- Создать таблицу employees (Create an employees table):
create table employees(
id serial primary key,
employee_name varchar(50) unique not null 
);

-- Наполнить таблицу employee 70 строками (Fill the employee table with 70 rows):

insert into employees (employee_name)
values ('Steven_King'),
 ('Lex_Haan'),
 ('Alexander_Hunold'),
 ('Bruce_Ernst'),
 ('David_Austin'),
 ('Valli_Pataballa'),
 ('Diana_Lorentz'),
 ('Ludo_Bagman'),
 ('Bathilda_Bagshot'),
 ('Katie_Bell'),
 ('Sirius_Black'),
 ('Bellatrix_Black'),
 ('Amelia_Bones'),
 ('Susan_Bones'),
 ('Terry_Boot'),
 ('Lavender_Brown'),
 ('Millicent_Bulstrode'),
 ('Charity_Burbage'),
 ('Frank_Bryce'),
 ('Alecto_Carrow'),
 ('Reginald_Cattermole'),
 ('Dennis_Creevey'),
 ('Dirk_Cresswell'),
 ('Cedric_Diggory'),
 ('Elphias_Doge'),
 ('Antonin_Dolohov'),
 ('Nicolas_Flamel'),
 ('Filius_Flitwick'),
 ('Marvolo_Gaunt'),
 ('Hermione_Granger'),
 ('Astoria_Greengrass'),
 ('Rolanda_Hooch'),
 ('Angelina_Johnson'),
 ('Lee_Jordan'),
 ('Viktor_Krum'),
 ('Alice_Longbottom'),
 ('Neville_Longbottom'),
 ('Remus_Lupin'),
 ('Draco_Malfoy'),
 ('Narcissa_Malfoy'),
 ('Eloise_Midgen'),
 ('Cormac_McLaggen'),
 ('Theodore_Nott'),
 ('Pansy_Parkinson'),
 ('Irma_Pince'),
 ('Poppy_Pomfrey'),
 ('Harry_Potter'),
 ('James_Sirius'),
 ('Lily_Potter'),
 ('Helena_Ravenclaw'),
 ('Delphi_Riddle'),
 ('Aurora_Sinistra'),
 ('Rita_Skeeter'),
 ('Salazar_Slytherin'),
 ('Severus_Snape'),
 ('Andromeda_Tonks'),
 ('Ted_Tonks'),
 ('Emmeline_Vance'),
 ('Benito_Medici'),
 ('Mia_Simone'),
 ('Axel_Nagel'),
 ('Harley_Quinn'),
 ('Hugo_Strange'),
 ('Thomas_Elliot'),
 ('Waylon_Jones'),
 ('Kirk_Langstrom'),
 ('Victor_Fries'),
 ('Pamela_Isley'),
 ('Edward_Nashton'),
 ('Jonathan_Crane');
 
-- Cоздать таблицу salary1 (Create a salary table):

create table salary1 (
id serial primary key,
monthly_salary int not null);

-- Наполнить таблицу salary 15 строками(Fill the salary table with 15 rows):

insert into salary1 (id, monthly_salary)
values (default, 1000),
 (default, 1100),
 (default, 1200),
 (default, 1300),
 (default, 1400),
 (default, 1500),
 (default, 1600),
 (default, 1700),
 (default, 1800),
 (default, 1900),
 (default, 2000),
 (default, 2100),
 (default, 2200),
 (default, 2300),
 (default, 2400),
 (default, 2500);

-- Создать таблицу employee_salary (Create an employee_salary table):

create table employee_salary(
id serial primary key,
employee_id int not NULL unique,
id_salary int not null);


-- Наполнить таблицу employee_salary 40 строками (Fill the employee_salary table with 40 rows):
a) в 10 строк из 40 вставить несуществующие employee_id
(insert non-existent employee_id in 10 lines out of 40):

insert into employee_salary (employee_id , id_salary)
values (3, 7),
 (1, 4),
 (5, 9),
 (40, 13),
 (23, 4),
 (11, 2),
 (51, 10),
 (15, 13),
 (26, 4),
 (16, 1),
 (33, 7), 
 (2, 7),
 (4, 4),
 (6, 9),
 (7, 13),
 (8, 4),
 (9, 2),
 (10, 10),
 (13, 13),
 (14, 4),
 (17, 1),
 (89, 7),
 (35, 15),
 (72, 9),
 (75, 13),
 (81, 4),
 (41, 11),
 (91, 10),
 (95, 13),
 (96, 4),
 (97, 1), 
 (100, 7),
 (120, 4),
 (47, 10),
 (52, 13),
 (27, 7),
 (28, 5),
 (34, 10),
 (37, 7),
 (55, 4);

-- Создать таблицу roles1 (Create a roles table):

create table roles1 (
id serial primary key,
role_name int not null unique);

-- Поменять тип столба role_name с int на varchar (30), (Change the column type role_name from int to varchar (30)):

alter table roles1 
alter column role_name type varchar (30) using role_name :: varchar (30);

-- Наполнить таблицу roles 20 строками(Fill the roles table with 20 rows):

insert into roles1 (role_name)
values ('Junior_Python_developer'),
 ('Middle_Python_developer'),
 ('Senior_Python_developer'),
 ('Junior_Java_developer'),
 ('Middle_Java_developer'),
 ('Senior_Java_developer'),
 ('Junior_JavaScript_developer'),
 ('Middle_JavaScript_developer'),
 ('Senior_JavaScript_developer'),
 ('Junior_Manual_QA_engineer'),
 ('Middle_Manual_QA_engineer'),
 ('Senior_Manual_QA_engineer'),
 ('Project_Manager'),
 ('Designer'),
 ('HR'),
 ('CEO'),
 ('Sales_manager'),
 ('Junior_Automation_QA_engineer'),
 ('Middle_Automation_QA_engineer'),
 ('Senior_Automation_QA_engineer');

-- Создать таблицу roles_employee (Create a roles_employee table):

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles1 (id)
);

-- Наполнить таблицу roles_employee 40 строками(Fill the roles_employee table with 40 rows):

insert into roles_employee (employee_id, role_id)
values (7,1),
 (20,4),
 (3,9),
 (5,13),
 (23,4),
 (11,2),
 (10,9),
 (22,13),
 (21,3),
 (34,4),
 (6,7),
 (1,5),
 (2,15),
 (4,16),
 (44,18),
 (8,3),
 (9,5),
 (12,7),
 (13,19),
 (14,20),
 (15,14),
 (17,16),
 (19,17),
 (24,1),
 (25,5),
 (27,2),
 (29,6),
 (31,7),
 (32,12),
 (35,17),
 (41,18),
 (42,14),
 (43,15),
 (45,5),
 (47,7),
 (59,3),
 (60,20),
 (61,18),
 (65,4),
 (67,7);