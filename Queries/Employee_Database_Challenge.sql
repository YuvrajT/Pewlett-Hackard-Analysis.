select e.emp_no, 
		e.first_name,
		e.last_name, 
		t.title, 
		t.from_date,
		t.to_date
into retirement_titles
from employees as e
join titles as t
on e.emp_no = t.emp_no
where birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no

Select * 
from retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
Select Distinct ON (emp_no) emp_no, 
							first_name, 
							last_name, 
							title
INTO unique_titles
from retirement_titles
WHERE to_date = '9999-01-01'
order by emp_no, to_date 

-- Retiring Titles

select count(emp_no),
			title
INTO retiring_titles
from unique_titles
group by title
order by count DESC

--Deliverable 2: Mentorship Eligibility


Select Distinct ON(e.emp_no)
					e.emp_no,	
				    e.first_name, 
	   			  	e.last_name,
					e.birth_date,
					de.from_date,
					de.to_date,
					t.title
INTO mentorship_eligibility
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join titles as t
on e.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01') and (e.birth_date between '1965-01-01' and '1965-12-31')
Order by e.emp_no;

SELECT count(emp_no)
FROM mentorship_eligibility