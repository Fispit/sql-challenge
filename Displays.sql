-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaries.salary
FROM employees 
LEFT JOIN salaries 
ON employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name,last_name,hire_date from employees
where hire_date>='19860101'
and hire_date<'19870101';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no,d.dept_name,dm.emp_no,e.last_name,e.first_name
from departments d
left join dept_manager dm
on d.dept_no=dm.dept_no
left join employees e
on dm.emp_no=e.emp_no;
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.sex,d.dept_name
FROM employees 
LEFT JOIN dept_emp dm
ON employees.emp_no = dm.emp_no
left join departments d
on dm.dept_no=d.dept_no;
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name,e.last_name,e.sex
from employees e
where first_name='Hercules'
and last_name like 'B%';
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e
left join dept_emp dm
on dm.emp_no=e.emp_no
left join departments d
on d.dept_no=dm.dept_no
where dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e
left join dept_emp dm
on dm.emp_no=e.emp_no
left join departments d
on d.dept_no=dm.dept_no
where dept_name='Sales'
or dept_name='Development';
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(last_name) as Frequency
from Employees
group by last_name
order by Frequency desc;


