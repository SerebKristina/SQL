-- Вывести все поля и все строки (Output all fields and all lines):
select 
* from students;
-- Вывести всех студентов в таблице (Output all students in the table):
select students 
from students;
-- Вывести только Id пользователей (Output only User IDs):
select id 
from students;
-- Вывести только имя пользователей (Output only the user name):
select name 
from students;
-- Вывести только email пользователей (Output only users' email):
select email 
from students;
-- Вывести имя и email пользователей (Output the name and email of users):
select name, email 
from students;
-- Вывести id, имя, email и дату создания пользователей (Output the id, name, email and date of creation of users):
select id, name, email, created_on
from students;
-- Вывести пользователей где password 12333 (Output users where password is 12333):
select 
* from students
where password = '12333';
-- Вывести пользователей которые были созданы 2021-03-26 00:00:00 (Withdraw users who were created 2021-03-26 00:00:00):
select 
* from students
where created_on = '2021-03-26 00:00:00';
-- Вывести пользователей где в имени есть слово Анна (Display users where the word Anna is in the name):
select name 
from students
where name LIKE '%Anna%';
--Вывести пользователей где в имени в конце есть 8 (Output users where there are 8 in the name at the end):
select name 
from students 
where name like '%8';
--Вывести пользователей где в имени есть буква а (Output users where the letter a is in the name):
select name
from students
where name like '%a%'
or name like '%A%';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 (Withdraw users who were created 2021-07-12 00:00:00):
select 
*from students 
where created_on='2021-07-12 00:00:00';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313 
--(Withdraw users who were created on 2021-07-12 00:00:00 and have the password 1m313):
select password, created_on 
from students 
where created_on = '2021-07-12 00:00:00'
and password = '1m313';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
-- (Output users who were created on 2021-07-12 00:00:00 and who have the word Andrey in their name):
select name, created_on 
from students
where created_on = '2021-07-12 00:00:00'
and name like '%Andrey%';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
-- (Output users who were created on 2021-07-12 00:00:00 and who have the number 8 in their name):
select name, created_on 
from students
where created_on = '2021-07-12 00:00:00'
and name like '%8%';
-- Вывести пользователя у которых id равен 110 (Output users whose id is 110):
select 
* from students
where id = 110;
-- Вывести пользователя у которых id равен 153 (Output users whose id is equal to 153):
select 
* from students 
where id = 153;
-- Вывести пользователя у которых id больше 140 (Output users whose id is greater than 140):
select 
* from students 
where id > 140;
--Вывести пользователя у которых id меньше 130 (Output users whose id is less than 130):
select 
* from students 
where id < 130;
-- Вывести пользователя у которых id меньше 127 или больше 188 (Output users whose id is less than 127 or more than 188):
select 
* from students 
where id < 127 
or id > 188;
-- Вывести пользователя у которых id меньше либо равно 137 (Output users whose id is less than or equal to 137):
select 
* from students
where id <= 137
-- Вывести пользователя у которых id больше либо равно 137 (Output users whose id is greater than or equal to 137):
select 
* from students 
where id >= 137;
-- Вывести пользователя у которых id больше 180 но меньше 190 (Output users whose id is greater than 180 but less than 190):
select 
* from students 
where id > 180 
and id < 190;
--Вывести пользователя у которых id между 180 и 190 (Output a user whose id is between 180 and 190):
select 
* from students 
where id between 180 and 190;
-- Вывести пользователей где password равен 12333, 1m313, 123313 (Output users where password is 12333, 1m313, 123313):
SELECT password, name
FROM students
WHERE password IN ('12333', '1m313', '123313');
-- Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
--(Output users where created_on is equal to 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00):
select name, created_on 
from students
where created_on = '2020-10-03 00:00:00'
or created_on = '2021-05-19 00:00:00'
or created_on = '2021-03-26 00:00:00';
--Вывести минимальный id (Output the minimum id):
select min (id)
from students;
-- Вывести максимальный id (Output the maximum id):
select max (id) 
from students;
-- Вывести количество пользователей (Output the number of users):
select count (id)
from students;
-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
-- (Output the user id, name, date of creation of the user. Sort by ascending order of the date the user was added.):
select id, name,created_on 
from students
order by created_on asc; 
-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
-- (Output the user id, name, date of creation of the user. Sort by descending order of the date the user was added.):
select id, name,created_on 
from students
order by created_on desc;