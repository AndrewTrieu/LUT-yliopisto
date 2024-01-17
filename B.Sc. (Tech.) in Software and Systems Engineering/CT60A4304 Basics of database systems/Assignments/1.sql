CREATE INDEX RankingIndex ON Ranking(FK_playerid);
CREATE INDEX PlayerIndex1 ON MatchesWithNames(PlayerOne);
CREATE INDEX PlayerIndex2 ON MatchesWithNames(PlayerTwo);
CREATE INDEX PlayerIndex3 ON MatchesWithNames(Winner);
CREATE INDEX PLayerIndex4 ON Player(playerid);

SELECT PlayerOne, PlayerTwo, resultSets, Winner, rank AS 'Winner rank', points AS 'Winner points', record AS 'Winner record' FROM MatchesWithNames 
INNER JOIN Player P1 ON (P1.first_name || ' ' || P1.last_name) = Winner
INNER JOIN Ranking ON P1.playerid = Ranking.FK_playerid
LIMIT 3500;