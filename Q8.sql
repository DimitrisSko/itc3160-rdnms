--8
Select w.LASTNAME || ' ' || w.FIRSTNAME AS "FULLNAME", a.RATING FROM WORKER w, PROJECT p, ASSIGN a, DEPT d WHERE w.LASTNAME = 'Liu' AND W.FIRSTNAME = 'Jun-Min' AND p.PROJNO = a.PROJNO AND a.EMPID = w. EMPID ORDER BY w.LASTNAME;