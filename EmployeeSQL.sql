
-- 1.List the following details of each employees: employee number, last name, first name, gender, and salary
select employees.emp_no, employees.last_name, employees.first_name,employees.gender, salaries.salary
from employees
left join salaries on employees.emp_no=salaries.emp_no;

-- 2. List employees who were hires in 1986
select emp_no, last_name, first_name, gender, hire_date
from employees
where (select extract(year from hire_date)=1986);

-- 3. List the manager of each employee withse the following information: employee number, last name, first name, and department name
select departments.dept_no,departments.dept_name, dept_manager.emp_no,employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
from dept_manager
Left join departments on dept_manager.dept_no = departments.dept_no
left join employees on dept_manager.emp_no=employees.emp_no
left join titles on dept_manager.emp_no=titles.emp_no
where titles.title='Manager';

--4. List the deparment of each employee with the following information: employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_name
from employees
left join dept_emp on employees.emp_no=dept_emp.emp_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."
select last_name, first_name
from employees
where first_name='Hercules'
and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_no, departments.dept_name
from employees
right join dept_emp on employees.emp_no=dept_emp.emp_no
right join departments on dept_emp.dept_name=departments.dept_no
where departments.dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_no, departments.dept_name
from employees
right join dept_emp on employees.emp_no=dept_emp.emp_no
right join departments on dept_emp.dept_name=departments.dept_no
where departments.dept_name='Development' or departments.dept_name='Sales';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count(last_name)
from employees;



















































