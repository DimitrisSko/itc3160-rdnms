--1
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME" 
  FROM WORKER w, DEPT d 
  WHERE w.DEPARTMENTID = d.DEPARTMENTID 
  and w.SALARY > 30000 
  and d.DEPARTMENTNAME = 'Development' 
  ;
