CREATE TABLE DEPT(
DID INT PRIMARY KEY,
DNAME VARCHAR(20) NOT NULL,
)

CREATE TABLE EMPLOYEE(
	EID INT PRIMARY KEY,
	ENAME VARCHAR(50) NOT NULL,
	SUPERID INT FOREIGN KEY REFERENCES EMPLOYEE(EID),
	DID INT  FOREIGN KEY REFERENCES DEPT(DID)
)

INSERT INTO DEPT 
VALUES(1,'CS'),(2,'IT'),(3,'CYBER'),(4,'SW');

INSERT INTO EMPLOYEE 
VALUES(100,'EBRAHIM',NULL,1),(101,'KHALED',100,3),(102,'SHERBINY',100,1),
	  (103,'SAEED',NULL,2),(104,'MOHAMED',101,NULL);

SELECT * FROM DEPT;

SELECT ENAME, DNAME FROM EMPLOYEE, DEPT WHERE DEPT.DID=EMPLOYEE.DID;
SELECT ENAME, DNAME FROM EMPLOYEE INNER JOIN DEPT ON DEPT.DID=EMPLOYEE.DID;
SELECT ENAME, DNAME FROM EMPLOYEE LEFT OUTER JOIN DEPT ON DEPT.DID=EMPLOYEE.DID;

SELECT * FROM EMPLOYEE;

SELECT X.ENAME AS EmpNAME , Y.ENAME AS MngNAME 
FROM EMPLOYEE X, EMPLOYEE Y
WHERE Y.EID=X.SUPERID
