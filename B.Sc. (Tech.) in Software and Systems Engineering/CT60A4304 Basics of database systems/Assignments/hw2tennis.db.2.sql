SELECT (select first_name||" "||last_name from Player where Matches.winnerid=playerid) as "Winner",
(select FK_playerid from Ranking where Matches.winnerid=Ranking.FK_playerid) As "Winner rank",
CASE 
 	WHEN Matches.winnerid==Matches.FK_playerOne
 		THEN (select first_name||" "||last_name from Player where Matches.FK_playerTwo=playerid)
 	ELSE
    	(select first_name||" "||last_name from Player where Matches.FK_playerOne=playerid)
	END as "Loser",
CASE 
 	WHEN Matches.winnerid==Matches.FK_playerOne
 		THEN (select FK_playerid from Ranking where Matches.FK_playerTwo=Ranking.FK_playerid)
 	ELSE
    	(select FK_playerid from Ranking where Matches.FK_playerOne=Ranking.FK_playerid)
	END as "Loser rank",
    matchdate as Matchdate
FROM Matches WHERE "Loser rank"<6
ORDER BY "Winner rank"