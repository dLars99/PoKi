SELECT DISTINCT TOP 76 a.Name, g.Name, xy.Name
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
LEFT JOIN Gender xy ON a.GenderId = xy.Id
ORDER BY a.Name;