--10. Using the view created in Exercise 9, find the number of projects employee 103 is assigned to. (12points)
SELECT DISTINCT PROJNO, PROJNAME, EMPID
  FROM PROJECT_WORKERS WHERE EMPID = 103
  ;
