--4. Display an alphabetical list of names of all workers assigned to project 1040 (‘Bruno’), sorted by last name. (10points)
Select W.LASTNAME || ' ' || W.FIRSTNAME AS "FULLNAME", P.PROJNO 
    FROM WORKER W, PROJECT P, ASSIGN A 
    WHERE P.PROJNO = A.PROJNO 
    AND A.EMPID = W. EMPID 
    AND P.PROJNO = 1040 
    ORDER BY W.LASTNAME
    ;
