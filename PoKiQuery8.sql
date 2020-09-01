SELECT Title, CharCount
FROM Poem
WHERE CharCount = (SELECT MIN(CharCount) from Poem);