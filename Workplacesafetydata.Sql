----1	How many incidents occurred at each plant?
----ANSWER


Select [Plant], COUNT(*)  AS [INCIDENT_COUNT]
FROM  [dbo].['Workplace Safety Data$']
GROUP BY [Plant]
ORDER BY [INCIDENT_COUNT] DESC





------2	What is the total incident cost per department?
---ANS
SELECT [Department], SUM([Incident Cost]) AS [TOTAL_COST]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Department]
ORDER BY [TOTAL_COST] DESC;




-----3	Which incident type resulted in the highest total days lost?

SELECT [Incident Type], COUNT(*) AS [TOTAL _DAYS_LOST]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Incident Type]
ORDER BY [TOTAL _DAYS_LOST] DESC;




------4	What is the distribution of incident types by shift?
----ANS
SELECT [Shift], [Incident Type],
COUNT(*) AS [INCIDENT_COUNT]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Shift], [Incident Type]
ORDER BY [INCIDENT_COUNT] DESC




-----5	What is the average incident cost for each injury location?
---ANS

SELECT[Injury Location],
AVG([Incident Cost]) AS [AVG_INCIDENT_COST]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Injury Location]
ORDER BY ([AVG_INCIDENT_COST]) DESC


-------6	Which age group has the highest number of incidents?
---ANS

SELECT [Age Group], 
COUNT(*) AS [INCIDENT_COUNT]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Age Group]
ORDER BY [INCIDENT_COUNT] DESC





----7	How many incidents were reported as 'Lost Time' by each plant?
---ANS

SELECT [Plant],
COUNT(*) AS [LOST OF TIME]
FROM [dbo].['Workplace Safety Data$']
WHERE [Report Type] = 'LOST TIME'
GROUP BY [Plant]
ORDER BY [LOST OF TIME] DESC

-----8	Which department had the highest number of 'Crush & Pinch' incidents?

---ANS

SELECT[Department],
COUNT(*)  AS [Crush_ Pinch _COUNT]
FROM [dbo].['Workplace Safety Data$']
WHERE [Incident Type] ='Crush & Pinch'
GROUP BY DEPARTMENT
ORDER BY [Crush_ Pinch _COUNT] DESC






----9	Which plants reported the most "Near Miss" incidents?

---ANS
SELECT [Plant],
COUNT(*) AS [NEAR_MISS_COUNT]
FROM [dbo].['Workplace Safety Data$']
WHERE [Report Type] ='Near Miss'
GROUP BY [Plant]
ORDER BY [NEAR_MISS_COUNT] DESC;


----10	What is the total number of incidents by year and month?
---ANS

SELECT [Month],[Year],
COUNT(*) AS [TOTAL_INCIDENTS]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Year],[Month]
ORDER BY [Year],[Month] 


-----11	Which gender has the most reported incidents?

---ANS
SELECT [Gender],
COUNT(*) AS [COUNT_INCIDENT]
FROM [dbo].['Workplace Safety Data$']
GROUP BY GENDER
ORDER BY [COUNT_INCIDENT] DESC

----12	What is the total cost of incidents per year?
---ANS
SELECT [Year],
SUM([Incident Cost]) AS [TOTAL_COST]
FROM[dbo].['Workplace Safety Data$']
GROUP BY [Year]
ORDER BY [Year]



----13	Which incident resulted in the highest cost?

---ANS
SELECT *
FROM [dbo].['Workplace Safety Data$']
ORDER BY [Incident Cost] DESC

----14	What is the total cost of incidents for each report type?
---ANS
SELECT [Report Type],
SUM([Incident Cost]) AS [TOTAL_COST]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Report Type]
ORDER BY ([TOTAL_COST]) DESC





----15	Which departments had incidents with more than 2 days lost?
---ANS
SELECT DISTINCT [Department]
FROM [dbo].['Workplace Safety Data$']
WHERE [Days Lost] >2
ORDER BY [Department] 

---OR
SELECT [Department],
COUNT(*) AS [INCIDENT_COUNT]
FROM [dbo].['Workplace Safety Data$']
WHERE [Days Lost] >2
GROUP BY [Department]
ORDER BY [INCIDENT_COUNT] DESC



----16	What is the average number of days lost per incident type?
---ANS

SELECT[Incident Type],
AVG([Days Lost]) AS [AVG_DAYS_LOST]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Incident Type]
ORDER BY [AVG_DAYS_LOST] DESC



-----17	What is the distribution of incidents by shift (Day, Afternoon, Night)?
----ANS
 SELECT [Shift],
 COUNT(*) AS [INCIDENT_COUNT]
FROM [dbo].['Workplace Safety Data$']
GROUP BY [Shift]
ORDER BY [INCIDENT_COUNT] DESC





-----18	Which months have the highest number of incidents?
SELECT [Month],
COUNT(*) AS [COUNT_OF_INCIDENT]
FROM[dbo].['Workplace Safety Data$']
GROUP BY [Month]
ORDER BY [COUNT_OF_INCIDENT]




----19	What is the total cost of "Vehicle" related incidents?
---ANS



 SELECT SUM([Incident Cost]) AS [TOTAL_VEHICLE_COST]
FROM [dbo].['Workplace Safety Data$']
WHERE [Incident Type] = 'vehicle'



----20	Which age group is most affected by "Falling Object" incidents?

SELECT [Age Group],
COUNT(*) AS [INCIDENT_COUNT]
FROM [dbo].['Workplace Safety Data$']
WHERE [Incident Type] ='Falling Object'
GROUP BY [Age Group]
ORDER BY [INCIDENT_COUNT] DESC
