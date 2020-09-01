SELECT COUNT(pe.Id) AS SadnessPoems
FROM PoemEmotion pe
LEFT JOIN Emotion e ON pe.EmotionId = e.Id
WHERE e.Name = 'Sadness';
