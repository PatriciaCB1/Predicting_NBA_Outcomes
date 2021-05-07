-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "games" (
    "RECORD_ID" int   NOT NULL,
    "SEASON_ID" int   NOT NULL,
    "HOME_TEAM_ID" int   NOT NULL,
    "GAME_ID" numeric   NOT NULL,
    "GAME_DATE" date   NOT NULL,
    "HOME_PTS" int   NOT NULL,
    "HOME_FGM" int   NOT NULL,
    "HOME_FGA" int   NOT NULL,
    "HOME_FG_PCT" numeric   NOT NULL,
    "HOME_FG3M" int   NOT NULL,
    "HOME_FG3A" int   NOT NULL,
    "HOME_FG3_PCT" numeric   NOT NULL,
    "HOME_FTA" int   NOT NULL,
    "HOME_FT_PCT" numeric   NOT NULL,
    "HOME_OREB" int   NOT NULL,
    "HOME_DREB" int   NOT NULL,
    "HOME_REB" int   NOT NULL,
    "HOME_AST" int   NOT NULL,
    "HOME_STL" int   NOT NULL,
    "HOME_BLK" int   NOT NULL,
    "HOME_TOV" int   NOT NULL,
    "HOME_PF" int   NOT NULL,
    "HOME_PLUS_MINUS" numeric   NOT NULL,
    "HOME_WIN" int   NOT NULL,
    "AWAY_TEAM_ID" int   NOT NULL,
    "AWAY_PTS" int   NOT NULL,
    "AWAY_FGM" int   NOT NULL,
    "AWAY_FGA" int   NOT NULL,
    "AWAY_FG_PCT" numeric   NOT NULL,
    "AWAY_FG3M" int   NOT NULL,
    "AWAY_FG3A" int   NOT NULL,
    "AWAY_FG3_PCT" numeric   NOT NULL,
    "AWAY_FTA" int   NOT NULL,
    "AWAY_FT_PCT" numeric   NOT NULL,
    "AWAY_OREB" int   NOT NULL,
    "AWAY_DREB" int   NOT NULL,
    "AWAY_REB" int   NOT NULL,
    "AWAY_AST" int   NOT NULL,
    "AWAY_STL" int   NOT NULL,
    "WAY_BLK" int   NOT NULL,
    "AWAY_TOV" int   NOT NULL,
    "AWAY_PF" int   NOT NULL,
    "AWAY_PLUS_MINUS" numeric   NOT NULL,
    CONSTRAINT "pk_games" PRIMARY KEY (
        "GAME_ID"
     )
);

CREATE TABLE "player_data" (
    "player_record" int   NOT NULL,
    "id" int   NOT NULL,
    "full_name" VARCHAR   NOT NULL,
    "is_active" int   NOT NULL
);

CREATE TABLE "players" (
    "PLAYER_NAME" VARCHAR   NOT NULL,
    "TEAM_ID" int   NOT NULL,
    "PLAYER_ID" int   NOT NULL,
    "SEASON" int   NOT NULL,
    CONSTRAINT "pk_players" PRIMARY KEY (
        "PLAYER_ID"
     )
);

CREATE TABLE "rankings" (
    "TEAM_ID" int   NOT NULL,
    "LEAGUE_ID" int   NOT NULL,
    "SEASON_ID" int   NOT NULL,
    "STANDINGSDATE" date   NOT NULL,
    "CONFERENCE" VARCHAR   NOT NULL,
    "TEAM" VARCHAR   NOT NULL,
    "G" int   NOT NULL,
    "W" int   NOT NULL,
    "L" int   NOT NULL,
    "W_PCT" numeric   NOT NULL,
    "HOME_RECORD" VARCHAR   NOT NULL,
    "ROAD_RECORD" VARCHAR   NOT NULL,
    "RETURNTOPLAY" VARCHAR   NOT NULL
);

CREATE TABLE "teams" (
    "LEAGUE_ID" int   NOT NULL,
    "TEAM_ID" int   NOT NULL,
    "MIN_YEAR" int   NOT NULL,
    "ABBREVIATION" VARCHAR   NOT NULL,
    "NICKNAME" VARCHAR   NOT NULL,
    "YEARFOUNDED" int   NOT NULL,
    "CITY" VARCHAR   NOT NULL,
    "ARENA" VARCHAR   NOT NULL,
    "ARENACAPACITY" int   NOT NULL,
    "OWNER" VARCHAR   NOT NULL,
    "GENERALMANAGER" VARCHAR   NOT NULL,
    "HEADCOACH" VARCHAR   NOT NULL,
    "DLEAGUEAFFILIATION" VARCHAR   NOT NULL,
    CONSTRAINT "pk_teams" PRIMARY KEY (
        "TEAM_ID"
     )
);

ALTER TABLE "games" ADD CONSTRAINT "fk_games_HOME_TEAM_ID" FOREIGN KEY("HOME_TEAM_ID")
REFERENCES "teams" ("TEAM_ID");

ALTER TABLE "games" ADD CONSTRAINT "fk_games_AWAY_TEAM_ID" FOREIGN KEY("AWAY_TEAM_ID")
REFERENCES "teams" ("TEAM_ID");

ALTER TABLE "player_data" ADD CONSTRAINT "fk_player_data_id" FOREIGN KEY("id")
REFERENCES "players" ("PLAYER_ID");

ALTER TABLE "players" ADD CONSTRAINT "fk_players_TEAM_ID" FOREIGN KEY("TEAM_ID")
REFERENCES "teams" ("TEAM_ID");

ALTER TABLE "rankings" ADD CONSTRAINT "fk_rankings_TEAM_ID_LEAGUE_ID" FOREIGN KEY("TEAM_ID", "LEAGUE_ID")
REFERENCES "teams" ("TEAM_ID", "LEAGUE_ID");

