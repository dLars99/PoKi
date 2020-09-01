SELECT DISTINCT TOP 76 a.Name, g.Name
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
ORDER BY a.Name;