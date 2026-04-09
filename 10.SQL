-- 1. Add 15 days to the current date
SELECT SYSDATE + 15 AS NEW_DATE FROM DUAL;

-- 2. Add 5 months to current date
SELECT ADD_MONTHS(SYSDATE, 5) AS ADD_5_MONTHS FROM DUAL;

-- Subtract 5 months from current date
SELECT ADD_MONTHS(SYSDATE, -5) AS SUBTRACT_5_MONTHS FROM DUAL;

-- 3. Find ASCII equivalent of character 'M'
SELECT ASCII('M') AS ASCII_VALUE FROM DUAL;

-- 4. Find character equivalent of ASCII 67, 65, 84
SELECT CHR(67) AS CHAR_67, CHR(65) AS CHAR_65, CHR(84) AS CHAR_84 FROM DUAL;

-- 5. Find last day of the current month
SELECT LAST_DAY(SYSDATE) AS LAST_DAY_OF_MONTH FROM DUAL;

-- 6. Calculate date difference between current date and 20-MAY-2015
SELECT SYSDATE - TO_DATE('20-MAY-2015','DD-MON-YYYY') AS DATE_DIFF FROM DUAL;

-- 7. Calculate number of months between current date and 03-MAR-2016
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('03-MAR-2016','DD-MON-YYYY')) AS MONTH_DIFF FROM DUAL;

-- 8. Find the second occurrence of 'or' from third position in string 'corporate floor'
SELECT INSTR('corporate floor','or',3,2) AS SECOND_OCCURRENCE FROM DUAL;

-- 9. Convert string 'marwadi university' so first character of each word is capital
SELECT INITCAP('marwadi university') AS PROPER_CASE FROM DUAL;

-- 10. Find username and user id of currently logged-on user
SELECT USER AS USER_NAME, USERID AS USER_ID FROM DUAL;
