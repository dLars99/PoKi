SELECT g.Name, COUNT(a.Id)
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
GROUP BY g.Name
HAVING g.Name = '3rd Grade';