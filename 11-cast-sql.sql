SELECT FirstName, LastName, Title, CAST(BirthDate AS date) AS BirthDate
FROM employees
ORDER BY BirthDate
