SELECT TOP 1 e.Name, COUNT(pe.Id) AS EmotionCounts
FROM PoemEmotion pe
LEFT JOIN Emotion e ON pe.EmotionId = e.Id
GROUP BY e.Name
ORDER BY COUNT(e.Id);