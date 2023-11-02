--9
CREATE VIEW VIEW_1 AS 
SELECT P.PROJNO, P.PROJNAME, W.EMPID,  W.LASTNAME ||' '|| W.FIRSTNAME AS "FULLNAME"
FROM WORKER W , PROJECT P , ASSIGN A, DEPT D
WHERE P.PROJNO = A.PROJNO
AND A.EMPID = W.EMPID
;
SELECT * FROM  VIEW_1;