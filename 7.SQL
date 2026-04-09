-- 1. Total deposit from DEPOSIT
SELECT SUM(AMOUNT) AS TOTAL_DEPOSIT
FROM DEPOSIT;

--------------------------------------------------

-- 2. Total loan from Karolbagh branch
SELECT SUM(AMOUNT) AS TOTAL_LOAN
FROM BORROW
WHERE BNAME = 'KAROLBAGH';

--------------------------------------------------

-- 3. Maximum loan from VRCE branch
SELECT MAX(AMOUNT) AS MAX_LOAN
FROM BORROW
WHERE BNAME = 'VRCE';

--------------------------------------------------

-- 4. Count total number of customers
SELECT COUNT(*) AS TOTAL_CUSTOMERS
FROM CUSTOMERS;

--------------------------------------------------

-- 5. Count total number of customer cities (distinct)
SELECT COUNT(DISTINCT CITY) AS TOTAL_CITIES
FROM CUSTOMERS;

--------------------------------------------------

-- 6. Create table SUPPLIER from EMPLOYEE with all columns
CREATE TABLE SUPPLIER AS
SELECT * FROM EMPLOYEE;

--------------------------------------------------

-- 7. Create table SUP1 from EMPLOYEE with first two columns
CREATE TABLE SUP1 AS
SELECT EMP_NO, EMP_NAME
FROM EMPLOYEE;

--------------------------------------------------

-- 8. Create table SUP2 from EMPLOYEE with no data
CREATE TABLE SUP2 AS
SELECT * FROM EMPLOYEE
WHERE 1=0;

--------------------------------------------------

-- 9. Insert into SUP2: employee name second char = 'n' AND length = 5
INSERT INTO SUP2
SELECT *
FROM EMPLOYEE
WHERE SUBSTR(EMP_NAME,2,1) = 'n'
AND LENGTH(EMP_NAME) = 5;

--------------------------------------------------

-- 10. Delete all rows from SUP1
DELETE FROM SUP1;

--------------------------------------------------

-- 11. Delete supplier detail where emp_no = 103
DELETE FROM SUPPLIER
WHERE EMP_NO = 103;

--------------------------------------------------

-- 12. Rename SUP2 to SUPPLIER_TWO
ALTER TABLE SUP2 RENAME TO SUPPLIER_TWO;

--------------------------------------------------

-- 13. Drop SUP1 table completely
DROP TABLE SUP1;

--------------------------------------------------

-- 14. Update DEPT_NO = 10 where second char of EMP_NAME = 'm'
UPDATE EMPLOYEE
SET DEPT_NO = 10
WHERE SUBSTR(EMP_NAME,2,1) = 'm';

--------------------------------------------------

-- 15. Update EMP_NAME for employee number 103
UPDATE EMPLOYEE
SET EMP_NAME = 'UpdatedName'
WHERE EMP_NO = 103;
