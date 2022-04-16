-- Выведем таблицы (Output the tables):

select * from employees;
select * from salary1;
select * from employee_salary;
select * from roles1;
select * from roles_employee;

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
-- (Output all employees whose salaries are in the database, along with salaries):

select employees.employee_name, salary1.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on employee_salary.id_salary= salary1.id;

-- Вывести всех работников у которых ЗП меньше 2000 (Output all employees whose PO is less than 2000):

select employees.employee_name, salary1.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on employee_salary.id_salary= salary1.id
where monthly_salary < 2000;

-- Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает)
-- Output all salary positions, but the employee is not assigned to them (there is a salary, but it is unclear who receives it):

select monthly_salary  from employee_salary 
right join salary1  on salary1.id = employee_salary.id_salary
where employee_id >70;

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен (ЗП есть, но не понятно кто её получает)
-- (Withdraw all salary positions less than 2000, but the employee is not assigned to them (There is a salary, but it is unclear who receives it)):

select monthly_salary  from employee_salary 
right join salary1  on salary1.id = employee_salary.id_salary
where employee_id >70 and monthly_salary < 2000;

--Найти всех работников кому не начислена ЗП (Find all employees who have not been paid):

select * from employees full join salary1 
on employees.id = salary1.id
where monthly_salary is null;

-- Вывести всех работников с названиями их должности(Output all employees with their job titles):

select * from employees full join roles1 
on employees.id = roles1.id;

-- Вывести имена и должность только Java разработчиков (Output the names and position of Java developers only):

select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%Java_developer';

--Вывести имена и должность только Python разработчиков (Output the names and position of Python developers only):

select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%Python_developer';

-- Вывести имена и должность всех QA инженеров (Print the names and position of all QA engineers):
select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%QA%';

-- Вывести имена и должность ручных QA инженеров (Output the names and position of manual QA engineers):
select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%_Manual_QA%';

--Вывести имена и должность автоматизаторов QA (Output the names and position of QA automators):
select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%_Automation_QA%';

-- Вывести имена и зарплаты Junior специалистов (Output names and salaries of Junior specialists):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name  like '%Junior%';

-- Вывести имена и зарплаты Middle специалистов (Output the names and salaries of Middle specialists):
select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Middle%';

--Вывести имена и зарплаты Senior специалистов (Display the names and salaries of Senior specialists):
select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Senior%';

--Вывести зарплаты Java разработчиков (Output salaries of Java developers):
select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like '%Java_developer';

-- Вывести зарплаты Python разработчиков (Output Python developers' salaries):
select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like '%Python%';

-- Вывести имена и зарплаты Junior Python разработчиков (Output names and salaries of Junior Python developers):
select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Junior_Python_developer';

-- Вывести имена и зарплаты Middle JS разработчиков (Output the names and salaries of Middle JS developers):

select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Middle_JavaScript_developer';

-- Вывести имена и зарплаты Senior Java разработчиков (Output names and salaries of Senior Java developers):

select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Senior_Java_developer';

--Вывести зарплаты Junior QA инженеров (Withdraw salaries of Junior QA engineers):

select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Junior%_QA_engineer';

--Вывести среднюю зарплату всех Junior специалистов
select AVG(monthly_salary)  from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Junior%';

-- Вывести сумму зарплат JS разработчиков (Withdraw the amount of salaries of JS developers):
select SUM(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Java_developer';

-- Вывести минимальную ЗП QA инженеров (Withdraw the minimum salary of QA engineers):
select MIN(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%QA%';

-- Вывести максимальную ЗП QA инженеров (Output the maximum salary of QA engineers):

select MAX(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%QA%';

-- Вывести количество QA инженеров (Output the number of QA engineers):

select count (role_name) from roles_employee
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%QA%';

-- Вывести количество Middle специалистов (Output the number of Middle Specialists):

select count(role_name) from roles_employee  
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Middle%';

-- Вывести количество разработчиков (Output the number of developers):

select count(role_name) from roles_employee  
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%_developer%';

-- Вывести фонд (сумму) зарплаты разработчиков (Withdraw the developer salary fund (amount):

select SUM(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%_developer%';

-- Вывести имена, должности и ЗП всех специалистов по возрастанию 
-- (Display the names, positions and salaries of all specialists in ascending order):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
order by monthly_salary asc;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
-- (Print the names, positions and salaries of all specialists in ascending order from specialists whose salary ranges from 1700 to 2300):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
WHERE monthly_salary between 1700 and 2300 
order by monthly_salary asc;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
-- (Print the names, positions and salaries of all specialists in ascending order from specialists whose salary is less than 2300):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
WHERE monthly_salary < 2300 
order by monthly_salary asc;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
-- (Print the names, positions and salaries of all specialists in ascending order from specialists whose salary is 1100, 1500, 2000):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
WHERE monthly_salary in (1100, 1500, 2000) 
order by monthly_salary asc;