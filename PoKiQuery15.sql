SELECT p.AuthorId, a.Name, COUNT(p.Id) AS PoemCount
FROM Poem p
LEFT JOIN Author a ON p.AuthorId = a.Id
GROUP BY p.AuthorId, a.Name
ORDER BY COUNT(p.Id) DESC;