SELECT g.Name, COUNT(a.Id) AS AuthorsPerGrade
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
GROUP BY g.Name
ORDER BY g.Name;