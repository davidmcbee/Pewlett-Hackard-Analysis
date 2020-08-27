-- Number of retiring employees by title
select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO ret_titles2
FROM employees as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
and T.to_date = ('9999-01-01')
ORDER BY e.emp_no;

select * FROM ret_titles2;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles2
FROM ret_titles2 as rt
ORDER BY rt.emp_no,  rt.to_date DESC;

SELECT * FROM Unique_titles2;

-- Retrieve number of employeers by tittle who are about to retire
SELECT COUNT(ut.title), ut.title
INTO retiring_titles2
FROM unique_titles2 as ut
GROUP BY ut.title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles2;

-- Mentorship elibibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
--INTO mentorship_eligibility
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = ('9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;
