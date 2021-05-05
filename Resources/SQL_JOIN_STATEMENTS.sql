-- Remove duplicate GAME_IDs
DELETE FROM games WHERE "RECORD_ID" = 3455;
DELETE FROM games WHERE "RECORD_ID" = 3408;
DELETE FROM games WHERE "RECORD_ID" = 3433;

SELECT * FROM games;

CREATE TABLE

-- Join Home Team Data
SELECT *
FROM games
INNER JOIN teams ON teams."TEAM_ID"=games."HOME_TEAM_ID"
UNION
-- Join Away Team Data
SELECT *
FROM games
INNER JOIN teams ON teams."TEAM_ID"=games."AWAY_TEAM_ID";

-- Join Home Ranking Data
SELECT *, 'Home Team' AS TEAM_TYPE
FROM games
INNER JOIN rankings ON rankings."TEAM_ID"=games."HOME_TEAM_ID"
WHERE games."GAME_DATE" = rankings."STANDINGSDATE"
UNION
-- Join Away Ranking Data
SELECT *, 'Away Team' AS TEAM_TYPE
FROM games
INNER JOIN rankings ON rankings."TEAM_ID"=games."AWAY_TEAM_ID"
WHERE games."GAME_DATE" = rankings."STANDINGSDATE";