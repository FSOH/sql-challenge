--Data Analysis

--List the employee number, last name, first name, sex, and salary of each employee.

select employees.emp_no,last_name,first_name, sex, salary
from employees, salaries
where employees.emp_no= salaries.emp_no;
 
 
--List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date LIKE '%1986%'


--List the manager of each department along with their department number, department name, employee number, last name, and first name.

select dept_manager.dept_no, dept_name, employees.emp_no, last_name, first_name
from dept_manager, employees, departments
where dept_manager.emp_no=employees.emp_no AND dept_manager.dept_no=departments.dept_no


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select dept_emp.dept_no,employees.emp_no, last_name, first_name, dept_name
from employees, departments, dept_emp
where employees.emp_no=dept_emp.emp_no AND dept_emp.dept_no =departments.dept_no;



--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like'B%'

--List each employee in the Sales department, including their employee number, last name, and first name.

select * from departments;

select dept_emp.emp_no, last_name, first_name
from employees, departments, dept_emp
where dept_emp.dept_no='d007' and employees.emp_no= dept_emp.emp_no and dept_emp.dept_no=departments.dept_no



--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select dept_emp.emp_no, last_name, first_name, dept_name
from employees, departments, dept_emp
where dept_emp.dept_no in ('d007','d005') and employees.emp_no= dept_emp.emp_no and dept_emp.dept_no=departments.dept_no


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select last_name,
	count(last_name) as "count"
from employees
group by last_name
order by "count" DESC