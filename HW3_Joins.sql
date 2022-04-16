-- ������� ������� (Output the tables):

select * from employees;
select * from salary1;
select * from employee_salary;
select * from roles1;
select * from roles_employee;

-- ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
-- (Output all employees whose salaries are in the database, along with salaries):

select employees.employee_name, salary1.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on employee_salary.id_salary= salary1.id;

-- ������� ���� ���������� � ������� �� ������ 2000 (Output all employees whose PO is less than 2000):

select employees.employee_name, salary1.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on employee_salary.id_salary= salary1.id
where monthly_salary < 2000;

-- ������� ��� ���������� �������, �� �������� �� ��� �� �������� (�� ����, �� �� ������� ��� � ��������)
-- Output all salary positions, but the employee is not assigned to them (there is a salary, but it is unclear who receives it):

select monthly_salary  from employee_salary 
right join salary1  on salary1.id = employee_salary.id_salary
where employee_id >70;

--������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� �������� (�� ����, �� �� ������� ��� � ��������)
-- (Withdraw all salary positions less than 2000, but the employee is not assigned to them (There is a salary, but it is unclear who receives it)):

select monthly_salary  from employee_salary 
right join salary1  on salary1.id = employee_salary.id_salary
where employee_id >70 and monthly_salary < 2000;

--����� ���� ���������� ���� �� ��������� �� (Find all employees who have not been paid):

select * from employees full join salary1 
on employees.id = salary1.id
where monthly_salary is null;

-- ������� ���� ���������� � ���������� �� ���������(Output all employees with their job titles):

select * from employees full join roles1 
on employees.id = roles1.id;

-- ������� ����� � ��������� ������ Java ������������� (Output the names and position of Java developers only):

select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%Java_developer';

--������� ����� � ��������� ������ Python ������������� (Output the names and position of Python developers only):

select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%Python_developer';

-- ������� ����� � ��������� ���� QA ��������� (Print the names and position of all QA engineers):
select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%QA%';

-- ������� ����� � ��������� ������ QA ��������� (Output the names and position of manual QA engineers):
select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%_Manual_QA%';

--������� ����� � ��������� ��������������� QA (Output the names and position of QA automators):
select employees.employee_name, roles1.role_name from employees 
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%_Automation_QA%';

-- ������� ����� � �������� Junior ������������ (Output names and salaries of Junior specialists):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name  like '%Junior%';

-- ������� ����� � �������� Middle ������������ (Output the names and salaries of Middle specialists):
select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Middle%';

--������� ����� � �������� Senior ������������ (Display the names and salaries of Senior specialists):
select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Senior%';

--������� �������� Java ������������� (Output salaries of Java developers):
select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like '%Java_developer';

-- ������� �������� Python ������������� (Output Python developers' salaries):
select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like '%Python%';

-- ������� ����� � �������� Junior Python ������������� (Output names and salaries of Junior Python developers):
select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Junior_Python_developer';

-- ������� ����� � �������� Middle JS ������������� (Output the names and salaries of Middle JS developers):

select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Middle_JavaScript_developer';

-- ������� ����� � �������� Senior Java ������������� (Output names and salaries of Senior Java developers):

select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Senior_Java_developer';

--������� �������� Junior QA ��������� (Withdraw salaries of Junior QA engineers):

select role_name, monthly_salary from roles_employee
join roles1 on roles1.id = roles_employee.employee_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary1 on salary1.id = employee_salary.id_salary
where role_name like 'Junior%_QA_engineer';

--������� ������� �������� ���� Junior ������������
select AVG(monthly_salary)  from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Junior%';

-- ������� ����� ������� JS ������������� (Withdraw the amount of salaries of JS developers):
select SUM(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Java_developer';

-- ������� ����������� �� QA ��������� (Withdraw the minimum salary of QA engineers):
select MIN(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%QA%';

-- ������� ������������ �� QA ��������� (Output the maximum salary of QA engineers):

select MAX(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%QA%';

-- ������� ���������� QA ��������� (Output the number of QA engineers):

select count (role_name) from roles_employee
join roles1 on roles1.id = roles_employee.role_id
where role_name like '%QA%';

-- ������� ���������� Middle ������������ (Output the number of Middle Specialists):

select count(role_name) from roles_employee  
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Middle%';

-- ������� ���������� ������������� (Output the number of developers):

select count(role_name) from roles_employee  
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%_developer%';

-- ������� ���� (�����) �������� ������������� (Withdraw the developer salary fund (amount):

select SUM(monthly_salary) from employee_salary
join salary1 on salary1.id = employee_salary.id_salary 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%_developer%';

-- ������� �����, ��������� � �� ���� ������������ �� ����������� 
-- (Display the names, positions and salaries of all specialists in ascending order):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
order by monthly_salary asc;

-- ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
-- (Print the names, positions and salaries of all specialists in ascending order from specialists whose salary ranges from 1700 to 2300):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
WHERE monthly_salary between 1700 and 2300 
order by monthly_salary asc;

-- ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
-- (Print the names, positions and salaries of all specialists in ascending order from specialists whose salary is less than 2300):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
WHERE monthly_salary < 2300 
order by monthly_salary asc;

-- ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
-- (Print the names, positions and salaries of all specialists in ascending order from specialists whose salary is 1100, 1500, 2000):

select employee_name, role_name, monthly_salary  from roles_employee 
join employees on employees.id = roles_employee.employee_id 
join roles1 on roles1.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary1 on salary1.id = employee_salary.id_salary
WHERE monthly_salary in (1100, 1500, 2000) 
order by monthly_salary asc;