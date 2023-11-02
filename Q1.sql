--1. Display the full names of all workers in the Development department whose salaries are above 30.000. Use the ‘Development’ as a condition and not the department id. (10points)
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME" 
  FROM WORKER w, DEPT d 
  WHERE w.DEPARTMENTID = d.DEPARTMENTID 
  and w.SALARY > 30000 
  and d.DEPARTMENTNAME = 'Development' 
  ;
