--6. Display details of the project with the minimum expected duration. (8points)
SELECT * FROM PROJECT 
    WHERE BUDGET = (SELECT MIN(BUDGET)FROM PROJECT)
    ;
