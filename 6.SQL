-- 1. CREATE TABLE JOB
CREATE TABLE JOB (
  JOB_ID VARCHAR2(10),
  JOB_NAME VARCHAR2(30),
  MIN_SAL NUMBER,
  MAX_SAL NUMBER
);

--------------------------------------------------

-- 2. INSERT INTO JOB
INSERT INTO JOB VALUES ('IT_PROG','Programmer',4000,10000);
INSERT INTO JOB VALUES ('MK_MGR','Marketing manager',9000,15000);
INSERT INTO JOB VALUES ('FI_MGR','Finance manager',8200,12000);
INSERT INTO JOB VALUES ('FI_ACC','Account',4200,9000);
INSERT INTO JOB VALUES ('LEC','Lecturer',6000,17000);
INSERT INTO JOB VALUES ('COMP_OP','Computer Operator',1500,3000);

--------------------------------------------------

-- 3. CREATE TABLE EMPLOYEE
CREATE TABLE EMPLOYEE (
  EMP_NO NUMBER,
  EMP_NAME VARCHAR2(20),
  EMP_SAL NUMBER,
  EMP_COMM NUMBER,
  DEPT_NO NUMBER
);

--------------------------------------------------

-- 4. INSERT INTO EMPLOYEE
INSERT INTO EMPLOYEE VALUES (101,'Smith',800,NULL,20);
INSERT INTO EMPLOYEE VALUES (102,'Snehal',1600,300,25);
INSERT INTO EMPLOYEE VALUES (103,'Adama',1100,0,20);
INSERT INTO EMPLOYEE VALUES (104,'Aman',3000,NULL,15);
INSERT INTO EMPLOYEE VALUES (105,'Anita',5000,5000,10);
INSERT INTO EMPLOYEE VALUES (106,'Sneha',2450,2450,10);
INSERT INTO EMPLOYEE VALUES (107,'Anamika',2975,NULL,30);

--------------------------------------------------

-- 5. CREATE TABLE DEPOSIT
CREATE TABLE DEPOSIT (
  A_NO NUMBER,
  CNAME VARCHAR2(20),
  BNAME VARCHAR2(20),
  AMOUNT NUMBER,
  ADATE DATE
);

--------------------------------------------------

-- 6. INSERT INTO DEPOSIT
INSERT INTO DEPOSIT VALUES (101,'Anil','Andheri',7000,TO_DATE('01-JAN-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (102,'Sunil','Virar',5000,TO_DATE('15-JUL-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (103,'Jay','Villeparle',6500,TO_DATE('12-MAR-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (104,'Vijay','Andheri',8000,TO_DATE('17-SEP-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (105,'Keyur','Dadar',7500,TO_DATE('19-NOV-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (106,'Mayur','Borivali',5500,TO_DATE('21-DEC-2006','DD-MON-YYYY'));

--------------------------------------------------

-- 🔹 QUERIES

-- 1. Retrieve all data
SELECT * FROM EMPLOYEE;
SELECT * FROM JOB;
SELECT * FROM DEPOSIT;

--------------------------------------------------

-- 2. Account no & amount between dates
SELECT A_NO, AMOUNT
FROM DEPOSIT
WHERE ADATE BETWEEN TO_DATE('01-JAN-2006','DD-MON-YYYY')
AND TO_DATE('25-JUL-2006','DD-MON-YYYY');

--------------------------------------------------

-- 3. Jobs with min salary > 4000
SELECT * FROM JOB
WHERE MIN_SAL > 4000;

--------------------------------------------------

-- 4. Name & salary (dept 20 with alias)
SELECT EMP_NAME AS NAME, EMP_SAL
FROM EMPLOYEE
WHERE DEPT_NO = 20;

--------------------------------------------------

-- 5. Employee details (dept 10,20)
SELECT EMP_NO, EMP_NAME, DEPT_NO
FROM EMPLOYEE
WHERE DEPT_NO IN (10,20);

--------------------------------------------------

-- 6. Name starts with 'A'
SELECT * FROM EMPLOYEE
WHERE EMP_NAME LIKE 'A%';

--------------------------------------------------

-- 7. Third character is 'a'
SELECT * FROM EMPLOYEE
WHERE EMP_NAME LIKE '__a%';

--------------------------------------------------

-- 8. Starts with A and third char 'a'
SELECT * FROM EMPLOYEE
WHERE EMP_NAME LIKE 'A_a%';

--------------------------------------------------

-- 9. Name = 5 chars & starts 'Ani'
SELECT EMP_NAME, EMP_NO, EMP_SAL
FROM EMPLOYEE
WHERE LENGTH(EMP_NAME)=5
AND EMP_NAME LIKE 'Ani%';

--------------------------------------------------

-- 10. Sort customer names from deposit
SELECT CNAME
FROM DEPOSIT
ORDER BY CNAME;
