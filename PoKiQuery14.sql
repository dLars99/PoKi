SELECT Title, WordCount
FROM Poem
WHERE WordCount = (SELECT MAX(WordCount) FROM Poem)