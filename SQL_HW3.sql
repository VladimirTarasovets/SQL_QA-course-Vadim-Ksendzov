-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary
from employees 
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id;


-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2000 and employee_name is null;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Python developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA engineer%';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%AQA engineer%';

-- 12. ������� ����� � �������� Junior ������������
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employee_name, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select role_name, monthly_salary
from salary
join roles on salary.id = roles.id
where role_name like '%Java developer%';

-- 16. ������� �������� Python �������������
select role_name, monthly_salary
from salary
join roles on salary.id = roles.id
where role_name like '%Python developer%';

-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
join roles on employee_salary.salary_id = roles.id
where role_name like '%Junior Python developer%';

-- 18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
join roles on employee_salary.salary_id = roles.id
where role_name like '%Middle JavaScript developer%';

-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
join roles on employee_salary.salary_id = roles.id
where role_name like '%Senior Java developer%';

-- 20. ������� �������� Junior QA ���������
select role_name, monthly_salary
from salary
join roles on salary.id = roles.id
where role_name like '%Junior AQA engineer%';

-- 21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary)
from salary
join roles on salary.id = roles.id
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(monthly_salary)
from salary
join roles on salary.id = roles.id
where role_name like '%JavaScript developer%';

-- 23. ������� ����������� �� QA ���������
select min(monthly_salary)
from salary
join roles on salary.id = roles.id
where role_name like '%QA engineer%';

-- 24. ������� ������������ �� QA ���������
select max(monthly_salary)
from salary
join roles on salary.id = roles.id
where role_name like '%QA engineer%';

-- 25. ������� ���������� QA ���������
select count(role_name)
from roles
where role_name like '%QA engineer%';

-- 26. ������� ���������� Middle ������������.
select count(role_name)
from roles
where role_name like '%Middle%';

-- 27. ������� ���������� �������������
select count(role_name)
from roles
where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary)
from salary
join roles on salary.id = roles.id
where role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
join roles on employee_salary.salary_id = roles.id
order by monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
join roles on employee_salary.salary_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
join roles on employee_salary.salary_id = roles.id
where monthly_salary < 2300
order by monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
join roles on employee_salary.salary_id = roles.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
--where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;