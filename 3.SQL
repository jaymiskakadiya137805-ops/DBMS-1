-- 1. CREATE TABLE
CREATE TABLE CUST_MASTER (
  CUST_NO VARCHAR2(5),
  CUST_NAME VARCHAR2(20),
  ADDRESS1 VARCHAR2(30),
  ADDRESS2 VARCHAR2(30),
  CITY VARCHAR2(20),
  STATE VARCHAR2(20),
  PH_NO NUMBER
);

--------------------------------------------------

-- 2. INSERT DATA
INSERT INTO CUST_MASTER VALUES 
('C1','Priya','RingRoad','Puja Park','Ahmedabad','Gujarat',8989878548);

INSERT INTO CUST_MASTER VALUES 
('C2','Puja','Lajpat Nagar','Shyamal colony','Banaras','UP',7898456213);

INSERT INTO CUST_MASTER VALUES 
('C3','Ankit','Borivali','Panchayat nager','Mumbai','Maharashtra',7885984251);

INSERT INTO CUST_MASTER VALUES 
('C4','Ravi','VajdiRoad','Nandbhoomi colony','Delhi','Delhi',7898452034);

INSERT INTO CUST_MASTER VALUES 
('C5','Alpa','Jamanager Road','Railway colony','Ahmedabad','Gujarat',7465241589);

--------------------------------------------------

-- 3. DISPLAY ALL CUSTOMERS
SELECT * FROM CUST_MASTER;

--------------------------------------------------

-- 4. CUSTOMERS FROM GUJARAT
SELECT * FROM CUST_MASTER
WHERE STATE = 'Gujarat';

--------------------------------------------------

-- 5. SORT BY CUSTOMER NAME
SELECT * FROM CUST_MASTER
ORDER BY CUST_NAME;

--------------------------------------------------

-- 6. DISTINCT CITY
SELECT DISTINCT CITY FROM CUST_MASTER;

--------------------------------------------------

-- 7. UPDATE ADDRESS (Priya)
UPDATE CUST_MASTER
SET ADDRESS1 = 'CG Road'
WHERE CUST_NAME = 'Priya';

--------------------------------------------------

-- 8. DISPLAY CITY OF GUJARAT CUSTOMERS
SELECT CITY FROM CUST_MASTER
WHERE STATE = 'Gujarat';

--------------------------------------------------

-- 9. ADD COLUMN PIN_CODE
ALTER TABLE CUST_MASTER
ADD PIN_CODE NUMBER;

--------------------------------------------------

-- 10. DROP COLUMN PIN_CODE
ALTER TABLE CUST_MASTER
DROP COLUMN PIN_CODE;

--------------------------------------------------

-- 11. DELETE CUSTOMER WITH GIVEN PHONE
DELETE FROM CUST_MASTER
WHERE PH_NO = 7898452034;

--------------------------------------------------

-- 12. RENAME TABLE
RENAME CUST_MASTER TO CUSTOMER_DETAIL;
