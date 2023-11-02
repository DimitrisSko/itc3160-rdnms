--7. Display the full names and departments of all workers on project 1019. (8points)
SELECT W.LASTNAME || ' ' || W.FIRSTNAME AS "FULLNAME", D.DEPARTMENTNAME, P.PROJNO 
    FROM WORKER W, PROJECT P, ASSIGN A, DEPT D 
    WHERE P.PROJNO = A.PROJNO 
    AND A.EMPID = W.EMPID 
    AND P.PROJNO = 1019 
    ORDER BY W.LASTNAME
    ;
