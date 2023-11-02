--8. Display an alphabetical list of names and corresponding ratings of all workers on any project that is managed by Liu Jun-Min. Use ‘Liu’ and ‘Jun-Min’ as conditions. (10points)
SELECT W.LASTNAME || ' ' || W.FIRSTNAME AS "FULLNAME", a.rating
    FROM WORKER W
    JOIN ASSIGN  A ON W.EMPID = A.EMPID
    JOIN PROJECT P ON A.PROJNO = P.PROJNO
    JOIN WORKER  WRKR ON P.PROJMGRID = WRKR.EMPID
    WHERE WRKR.FIRSTNAME = 'Jun-Min'
    AND WRKR.LASTNAME = 'Liu'
    ;
