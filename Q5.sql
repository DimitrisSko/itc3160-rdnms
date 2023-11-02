--5. Display the full name of all employees in the Development department with an above average salary. (10points)
Select W.LASTNAME || ' ' || W.FIRSTNAME AS "FULLNAME", W.SALARY 
    FROM WORKER W, DEPT D 
    WHERE W.DEPARTMENTID = D.DEPARTMENTID AND W.SALARY > (SELECT AVG(SALARY) FROM WORKER) AND d.DEPARTMENTNAME = 'Development' 
    ;
