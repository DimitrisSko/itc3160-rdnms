--6
SELECT W.LASTNAME ||' '|| W.FIRSTNAME AS "FULLNAME" , P.EXPECTEDDURATIONWEEKS
FROM WORKER W , PROJECT P , ASSIGN A, DEPT D
WHERE P.PROJNO = A.PROJNO
AND A.EMPID = W.EMPID
AND MIN P.EXPECTEDDURATIONWEEKS;