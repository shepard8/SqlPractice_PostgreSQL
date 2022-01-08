SELECT FirstName, LastName, Title, to_char(BirthDate, 'YYYY-mm-DD') AS BirthDate
FROM employees
ORDER BY BirthDate
