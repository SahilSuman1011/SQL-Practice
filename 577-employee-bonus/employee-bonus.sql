# Write your MySQL query statement below

-- return only when bonus is less than or equal to 1000 and when it is null

SELECT e.name , b.bonus

FROM Employee e
LEFT JOIN BONUS b
ON e.empID = b.empID
WHERE b.bonus is NULL OR b.bonus < 1000 
