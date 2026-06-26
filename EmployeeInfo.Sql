

SELECT *
FROM [dbo].['Employee Info$']



----- QUESTION 2


--11	Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1995 and are grouped according to gender


----ANSWER

SELECT COUNT(*) AS [TotalEmployees]
FROM [dbo].['Employee Info$']
WHERE DOB BETWEEN '1970/05/02'AND '1995/12/31';       ----ANSWER=4



--12	Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.

----ANSWER


SELECT *
FROM [dbo].['Employee Info$']
ORDER BY EmpLname DESC;




--13	Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.

SELECT*
FROM [dbo].['Employee Info$']
WHERE EmpLname LIKE '%A';


--14	Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.



EmpID, 'EmpLname', 'Department', 'Project', 'Address', 'DOB', 'Gender';

select *
FROM [dbo].['Employee Info$']
where EmpFname not like '%Sanjay Sonia%'


--15	Write a query to fetch details of employees with the address as “DELHI(DEL)”

SELECT [Address]
FROM [dbo].['Employee Info$']
WHERE Address = 'Delhi(DEL)';


--16	Write a query to fetch all employees who also hold the managerial position.


SELECT E.*
FROM [dbo].['Employee Info$'] E
JOIN [dbo].['Employee position$'] P
ON E.EmpID =P.EmpID
WHERE P. EmpPosition= 'Manager':


--17	Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order

SELECT Count(DISTINCT Department)
 AS TOtolEmployees
FROM  [dbo].['Employee Info$']
ORDER BY Department ASC;													
 
----- OR       SELECT [Department]
COUNT(*) AS TOtolEmployees
FROM  [dbo].['Employee Info$']
GROUP BY Department
ORDER BY TotalEmployees DESC;




--18	Write a query to fecth Male employees in HR department

SELECT * 
FROM  [dbo].['Employee Info$']
WHERE Gender ='M'
AND Department = 'HR'


--19	Write a SQL query to retrieve employee details from EmployeeInfo table who have a date of joining in the EmployeePosition table



SELECT E.*
FROM [dbo].['Employee Info$'] E
JOIN [dbo].['Employee position$'] P
ON E.EmpID =P.EmpID


--20	Write a query to retrieve two minimum and maximum salaries from the EmployeePosition table

