-- 1. Customers who are depositors having same branch city as Mr. Sunil
SELECT C.CNAME
FROM CUSTOMERS C
JOIN DEPOSIT D ON C.CNAME = D.CNAME
WHERE C.CITY = (
    SELECT CITY
    FROM CUSTOMERS
    WHERE CNAME = 'SUNIL'
);

--------------------------------------------------

-- 2. Deposit and loan details of customers in the same city where Pramod is living
SELECT D.*, B.*
FROM DEPOSIT D
JOIN BORROW B ON D.CNAME = B.CNAME
WHERE D.CNAME IN (
    SELECT CNAME
    FROM CUSTOMERS
    WHERE CITY = (SELECT CITY FROM CUSTOMERS WHERE CNAME='PRAMOD')
);

--------------------------------------------------

-- 3. Employee numbers and last names of employees earning more than average salary
SELECT EMP_NO, EMP_NAME
FROM EMPLOYEE
WHERE EMP_SAL > (SELECT AVG(EMP_SAL) FROM EMPLOYEE)
ORDER BY EMP_SAL ASC;

--------------------------------------------------

-- 4. Last name and salary of employees who report to 'Ford'
-- Assuming there is a manager field in EMPLOYEE table, if not this is placeholder
SELECT EMP_NAME AS LAST_NAME, EMP_SAL
FROM EMPLOYEE
WHERE EMP_NAME IN (
    SELECT EMP_NAME 
    FROM EMPLOYEE 
    WHERE EMP_NO IN (
        SELECT EMP_NO
        FROM EMPLOYEE
        WHERE EMP_NAME = 'FORD'
    )
);

--------------------------------------------------

-- 5. Department number, employee name, and job for Accounting department
SELECT E.DEPT_NO, E.EMP_NAME, J.JOB_NAME
FROM EMPLOYEE E
JOIN JOB J ON E.JOB_NAME = J.JOB_NAME
WHERE J.JOB_NAME LIKE '%Account%';

--------------------------------------------------

-- 6. Name of customers who are borrowers and depositors and living in Nagpur
SELECT DISTINCT CNAME
FROM CUSTOMERS
WHERE CNAME IN (SELECT CNAME FROM DEPOSIT)
AND CNAME IN (SELECT CNAME FROM BORROW)
AND CITY = 'NAGPUR';

--------------------------------------------------

-- 7. City of customers having the same living branch
SELECT DISTINCT C.CITY
FROM CUSTOMERS C
JOIN BRANCH B ON C.CITY = B.CITY;

--------------------------------------------------

-- 8. Display last name, department number, and department name for all employees
SELECT E.EMP_NAME AS LAST_NAME, E.DEPT_NO, J.JOB_NAME AS JOB
FROM EMPLOYEE E
JOIN JOB J ON E.JOB_NAME = J.JOB_NAME;

--------------------------------------------------

-- 9. Unique listing of all jobs in department 30, include location
SELECT DISTINCT J.JOB_NAME, B.CITY AS LOCATION
FROM JOB J
JOIN EMPLOYEE E ON J.JOB_NAME = E.JOB_NAME
JOIN BRANCH B ON E.DEPT_NO = 30
WHERE E.DEPT_NO = 30;

--------------------------------------------------

-- 10. Employee name, department number, and department name for employees in CALCUTTA
SELECT E.EMP_NAME, E.DEPT_NO, J.JOB_NAME
FROM EMPLOYEE E
JOIN JOB J ON E.JOB_NAME = J.JOB_NAME
JOIN CUSTOMERS C ON E.DEPT_NO = C.CITY -- assuming dept_no mapped to city
WHERE C.CITY = 'CALCUTTA';
