SELECT M1.resultSets, M1.matchdate, P1.first_name || ' ' || P1.last_name AS PlayerOne, P1.nationality, R1.rank, R1.points,
P2.first_name || ' ' || P2.last_name AS PlayerTwo, P2.nationality, R2.rank, R2.points
FROM Matches M1, Matches M2, Player P1, Player P2, Player P3, Ranking R1, Ranking R2, Ranking R3
WHERE P1.playerid = M1.FK_playerOne AND P2.playerid = M1.FK_playerTwo AND M1.winnerID = P3.playerid
AND P1.playerid = R1.FK_playerid AND  P2.playerid = R2.FK_playerid AND P3.playerid = R3.FK_playerid
AND P1.first_name != P2.first_name AND P1.nationality != P2.nationality 
AND M1.winnerID NOT IN (SELECT playerid FROM Player, Matches
WHERE playerid = FK_playerOne OR playerid = FK_playerTwo
GROUP BY playerid HAVING COUNT(*) < (SELECT MAX(count)-5 FROM 
(SELECT COUNT(*) AS count FROM Player, Matches
WHERE playerid = FK_playerOne OR playerid = FK_playerTwo
GROUP BY playerid) AS counts)
) AND M1.winnerID NOT IN (SELECT playerid FROM Player, Matches
WHERE playerid != winnerID AND (playerid = FK_playerOne OR playerid = FK_playerTwo)
GROUP BY playerid HAVING COUNT (*) = (SELECT MIN (count) FROM 
(SELECT COUNT(*) as count FROM Player, Matches
WHERE playerid != winnerID AND (playerid = FK_playerOne OR playerid = FK_playerTwo)
GROUP BY playerid) AS counts)) AND M1.winnerID IN (	SELECT winnerID FROM Matches GROUP BY winnerID HAVING COUNT(*) > 
(SELECT AVG (count) FROM (SELECT COUNT(*) AS count FROM Matches GROUP BY winnerID) AS counts)
) AND NOT ( NOT EXISTS	(SELECT M1.FK_playerOne	FROM Matches M3, Matches M4	WHERE M3.matchid != M4.matchid AND M3.matchdate = M4.matchdate 
AND (M3.FK_playerOne = M4.FK_playerOne OR M3.FK_playerTwo = M4.FK_playerOne OR M3.FK_playerTwo = M4.FK_playerOne OR M3.FK_playerTwo = M4.FK_playerTwo))
) AND length(M1.resultSets) > 17 GROUP BY M1.matchid;