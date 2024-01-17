SELECT Matches.matchid, Matches.FK_playerOne, Matches.FK_playerTwo, Player.playerid, Player.last_name FROM Matches
JOIN Player ON Matches.FK_playerOne=Player.playerid 
