SELECT COUNT(a.Id) AS ThreeGradeCount
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
WHERE g.Name IN ('3rd Grade', '2nd Grade', '1st Grade');