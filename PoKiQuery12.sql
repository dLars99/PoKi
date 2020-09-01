SELECT g.Name, COUNT(p.Id) AS PoemsPerGrade
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
RIGHT JOIN Poem p ON a.Id = p.AuthorId
GROUP BY g.Name;