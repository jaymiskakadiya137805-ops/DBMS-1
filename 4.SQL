-- 1. CREATE TABLE
CREATE TABLE PERSON (
  PERSON_ID NUMBER,
  FNAME VARCHAR2(20),
  LNAME VARCHAR2(20),
  CITY VARCHAR2(20),
  SALARY NUMBER
);

--------------------------------------------------

-- 2. INSERT DATA
INSERT INTO PERSON VALUES (1,'Sneha','Sheth','Rajkot',10000);
INSERT INTO PERSON VALUES (2,'Puja','Parmar','Ahmedabad',2000);
INSERT INTO PERSON VALUES (3,'Riya','Gajar','Pune',8000);
INSERT INTO PERSON VALUES (4,'Sandip','Jadeja','Pune',5000);
INSERT INTO PERSON VALUES (5,'Alpesh','Prajapati','Mumbai',20000);

--------------------------------------------------

-- 3. SELECT PERSON_ID, FNAME
SELECT PERSON_ID, FNAME FROM PERSON;

--------------------------------------------------

-- 4. DISPLAY ALL PERSON
SELECT * FROM PERSON;

--------------------------------------------------

-- 5. SORT BY SALARY
SELECT * FROM PERSON
ORDER BY SALARY;

--------------------------------------------------

-- 6. DISTINCT CITY
SELECT DISTINCT CITY FROM PERSON;

--------------------------------------------------

-- 7. UPDATE CITY (Sandip → Kolkata)
UPDATE PERSON
SET CITY = 'Kolkata'
WHERE FNAME = 'Sandip';

--------------------------------------------------

-- 8. DISPLAY LNAME = 'Prajapati'
SELECT * FROM PERSON
WHERE LNAME = 'Prajapati';

--------------------------------------------------

-- 9. ADD NEW COLUMNS
ALTER TABLE PERSON
ADD (
  STATE VARCHAR2(20),
  BIRTHDATE DATE,
  PINCODE NUMBER
);

--------------------------------------------------

-- 10. SALARY > 6000
SELECT * FROM PERSON
WHERE SALARY > 6000;

--------------------------------------------------

-- 11. DELETE SALARY < 3000
DELETE FROM PERSON
WHERE SALARY < 3000;

--------------------------------------------------

-- 12. RENAME TABLE
RENAME PERSON TO PERSON_MASTER;
