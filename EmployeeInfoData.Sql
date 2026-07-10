--1	Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS

---ANS

SELECT UPPER('EmpFname') AS ALIAS
FROM [dbo].['Employee Info$']
WHERE EmpFname  LIKE '%ALIAS%'


--2	Write a query to fetch the number of employees working in the department ‘HR’.


---ANS

SELECT  COUNT(*) AS [TOTALEmployees]
FROM [dbo].['Employee Info$']
WHERE Department= 'HR'





--3	Write a query to get the current date.

---ANS

SELECT CURRENT_DATE


--4	Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.

---ANS

SELECT SUBSTRING('EmpLname',1,4)
FROM [dbo].['Employee Info$']




--5	Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.

--ANS

SELECT SUBSTRING(Address, 1, CHARINDEX('(', Address)-1) AS Place
FROM  [dbo].['Employee Info$']


--6	Write a query to create a new table that consists of data and structure copied from the other table.


---ANS

SELECT *
FROM  [dbo].['Employee Info$']
WHERE DEPARTMENT = 'HR'

-------OR


SELECT*
FROM[dbo].[TECH]


  

--7	Write q query to find all the employees whose salary is between 50000 to 100000.

---ANS

SELECT * 
FROM [dbo].['Employee position$']
WHERE Salary between 50000 and 100000



--8	Write a query to find the names of employees that begin with ‘S’

---ANS

SELECT* 
FROM [dbo].['Employee Info$']
WHERE EmpFname LIKE 'S%'


--9	Write a query to fetch top N records.

---ANS


SELECT TOP 3 *
FROM [dbo].['Employee Info$']


--10	Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated wit


---ANS

SELECT CONCAT(EmpFname, '  ', Emplname) AS [FULL_NAME]
FROM [dbo].['Employee Info$']


------11	Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1995 and are grouped according to gender

----ANSWERS

SELECT COUNT(*) AS [TotalEmployees]
FROM [dbo].['Employee Info$']
WHERE DOB BETWEEN '1970/05/02'AND '1995/12/31';   



----12	Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.


---ANS

SELECT *
FROM [dbo].['Employee Info$']
ORDER BY EmpLname DESC;







-----13	Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.


---ANS

SELECT *
FROM [dbo].['Employee Info$']
WHERE [EmpLname] LIKE '%A'




-----14	Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.


---ANS

SELECT *
FROM[dbo].['Employee Info$']
WHERE [EmpFname] NOT LIKE '%Sanjay Sonia%' 




------15	Write a query to fetch details of employees with the address as “DELHI(DEL)”

---ANS

SELECT*
FROM [dbo].['Employee Info$']
WHERE [Address] = 'DELHI(DEL)'


-----16	Write a query to fetch all employees who also hold the managerial position.



---ANS
SELECT E.*
FROM [dbo].['Employee Info$'] E
JOIN [dbo].['Employee position$'] P
ON E.EmpID =P.EmpID
WHERE P. EmpPosition= 'Manager';




-----17	Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order

---ANS

SELECT [Department],
COUNT(*)  AS [TotalEmployees]
FROM[dbo].['Employee Info$']
GROUP BY [Department]
ORDER BY [TotalEmployees] DESC



-----18	Write a query to fecth Male employees in HR department

-- ANS

SELECT *
FROM [dbo].['Employee Info$']
WHERE  [Gender] ='M'
AND [Department] = 'HR'



-----19	Write a SQL query to retrieve employee details from EmployeeInfo table who have a date of joining in the EmployeePosition table

---ANS

SELECT E.*
FROM [dbo].['Employee Info$'] E
JOIN [dbo].['Employee position$'] P
ON E.EmpID =P.EmpID







