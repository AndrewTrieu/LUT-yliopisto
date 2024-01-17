SELECT 
(select first_name||" "||last_name from Player where Matches.FK_playerOne=playerid) as "Player one",
(select first_name||" "||last_name from Player where Matches.FK_playerTwo=playerid) as "Player two", 
Matches.matchdate as Matchdate,
(select first_name||" "||last_name from Player where Matches.winnerID=playerid) as Winner
From Matches
GROUP BY FK_playerOne,FK_playerTwo HAVING count(*)>1
ORDER BY Matches.matchdate
