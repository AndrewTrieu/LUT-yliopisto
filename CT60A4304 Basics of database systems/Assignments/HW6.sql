CREATE INDEX PlayerIndex ON Player(playerid);
CREATE INDEX MatchesIndex ON Matches(FK_playerOne,FK_playerTwo, winnerID);
CREATE INDEX RankingIndex ON Ranking(FK_playerid);
