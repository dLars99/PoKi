SELECT COUNT(p.Id) AS EmotionlessPoems
FROM Poem p
LEFT JOIN PoemEmotion pe ON p.Id = pe.PoemId
WHERE pe.PoemId IS NULL;