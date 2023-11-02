--9. Create a view that has the project number and name of each project, along with the IDs and names of all workers assigned to it. (12points)
CREATE VIEW PROJECT_WORKERS AS
    SELECT P.PROJNO, P.PROJNAME, W.EMPID, W.LASTNAME || ' ' || W.FIRSTNAME AS "FULL_NAME"
    FROM PROJECT P
    JOIN ASSIGN A ON P.PROJNO = A.PROJNO
    JOIN WORKER W ON A.EMPID = W.EMPID
    ;
SELECT * FROM PROJECT_WORKERS;
