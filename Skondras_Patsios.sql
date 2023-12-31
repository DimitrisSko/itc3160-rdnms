--1
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME" FROM WORKER w, DEPT d WHERE w.DEPARTMENTID = d.DEPARTMENTID and w.SALARY > 30000 and d.DEPARTMENTNAME = 'Development' ;
--2
SELECT * FROM PROJECT WHERE BUDGET > 350000;
--4
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME" FROM WORKER w, PROJECT p, ASSIGN a WHERE p.PROJNO = a.PROJNO AND a.EMPID = w. EMPID AND p.PROJNO = 1040 ORDER BY w.LASTNAME;
--5
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME", w.SALARY FROM WORKER w, DEPT d WHERE w.DEPARTMENTID = d.DEPARTMENTID and w.SALARY > (SELECT AVG(SALARY) FROM WORKER) and d.DEPARTMENTNAME = 'Development' ;
--6
SELECT W.LASTNAME ||' '|| W.FIRSTNAME AS "FULLNAME" , P.EXPECTEDDURATIONWEEKS
FROM WORKER W , PROJECT P , ASSIGN A, DEPT D
WHERE P.PROJNO = A.PROJNO
AND A.EMPID = W.EMPID
AND MIN P.EXPECTEDDURATIONWEEKS;
--7
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME", d.DEPARTMENTNAME FROM WORKER w, PROJECT p, ASSIGN a, DEPT d WHERE p.PROJNO = a.PROJNO AND a.EMPID = w. EMPID AND p.PROJNO = 1019 ORDER BY w.LASTNAME;
--8
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME", a.RATING FROM WORKER w, PROJECT p, ASSIGN a, DEPT d WHERE w.LASTNAME = 'Liu' AND W.FIRSTNAME = 'Jun-Min' AND p.PROJNO = a.PROJNO AND a.EMPID = w. EMPID ORDER BY w.LASTNAME;
--9
CREATE VIEW VIEW_1 AS 
SELECT P.PROJNO, P.PROJNAME, W.EMPID,  W.LASTNAME ||' '|| W.FIRSTNAME AS "FULLNAME"
FROM WORKER W , PROJECT P , ASSIGN A, DEPT D
WHERE P.PROJNO = A.PROJNO
AND A.EMPID = W.EMPID
;
SELECT * FROM  VIEW_1;
--10
