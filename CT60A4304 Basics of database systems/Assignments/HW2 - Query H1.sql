SELECT *, count(*) as qty FROM Matches
GROUP BY FK_playerOne, FK_playerTwo HAVING count(*)>1
