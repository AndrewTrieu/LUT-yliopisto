SELECT * FROM Player, Ranking
WHERE rank <= 10 AND playerid = rankingid;