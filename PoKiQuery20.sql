SELECT TOP 1 xy.Name, COUNT(e.Id)
FROM Poem p
LEFT JOIN PoemEmotion pe ON p.Id = pe.PoemId
LEFT JOIN Author a ON p.AuthorId = a.Id
LEFT JOIN Gender xy ON a.GenderId = xy.Id
RIGHT JOIN Emotion e ON pe.EmotionId = e.Id
WHERE e.Name = 'Fear'
GROUP BY xy.Name
ORDER BY COUNT(e.Id);