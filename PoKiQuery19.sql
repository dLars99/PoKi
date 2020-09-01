SELECT TOP 1 g.Name, COUNT(e.Id)
FROM Poem p
LEFT JOIN PoemEmotion pe ON p.Id = pe.PoemId
LEFT JOIN Author a ON p.AuthorId = a.Id
LEFT JOIN Grade g ON a.GradeId = g.Id
RIGHT JOIN Emotion e ON pe.EmotionId = e.Id
WHERE e.Name = 'Joy'
GROUP BY g.Name
ORDER BY COUNT(e.Id) DESC;