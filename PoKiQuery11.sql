SELECT COUNT(p.Id) AS PoemsInFourthGrade
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
RIGHT JOIN Poem p ON a.Id = p.AuthorId
WHERE g.Name IN ('4th Grade');