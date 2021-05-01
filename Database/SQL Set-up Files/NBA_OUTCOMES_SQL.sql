-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "games" (
    "GAME_DATE_EST" DATE   NOT NULL,
    "GAME_ID" VARCHAR   NOT NULL,
    "GAME_STATUS_TEXT" VARCHAR   NOT NULL,
    "HOME_TEAM_ID" VARCHAR   NOT NULL,
    "VISITOR_TEAM_ID" VARCHAR   NOT NULL,
    "SEASON" INT   NOT NULL,
    "TEAM_ID_home" VARCHAR   NOT NULL,
    "PTS_home" INT   NOT NULL,
    "FG_PCT_home" INT   NOT NULL,
    "FT_PCT_home" INT   NOT NULL,
    "FG3_PCT_home" INT   NOT NULL,
    "AST_home" INT   NOT NULL,
    "REB_home" INT   NOT NULL,
    "TEAM_ID_away" VARCHAR   NOT NULL,
    "PTS_away" INT   NOT NULL,
    "FG_PCT_away" INT   NOT NULL,
    "FT_PCT_away" INT   NOT NULL,
    "FG3_PCT_away" INT   NOT NULL,
    "AST_away" INT   NOT NULL,
    "REB_away" INT   NOT NULL,
    "HOME_TEAM_WINS" INT   NOT NULL,
    CONSTRAINT "pk_games" PRIMARY KEY (
        "GAME_ID"
     )
);

CREATE TABLE "games_details" (
    "GAME_ID" VARCHAR   NOT NULL,
    "TEAM_ID" VARCHAR   NOT NULL,
    "TEAM_ABBREVIATION" VARCHAR   NOT NULL,
    "TEAM_CITY" VARCHAR   NOT NULL,
    "PLAYER_ID" INT   NOT NULL,
    "PLAYER_NAME" VARCHAR   NOT NULL,
    "START_POSITION" VARCHAR   NOT NULL,
    "COMMENT" VARCHAR   NOT NULL,
    "MIN" DATE   NOT NULL,
    "FGM" INT   NOT NULL,
    "FGA" INT   NOT NULL,
    "FG_PCT" INT   NOT NULL,
    "FG3M" INT   NOT NULL,
    "FG3A" INT   NOT NULL,
    "FG3_PCT" INT   NOT NULL,
    "FTM" INT   NOT NULL,
    "FTA" INT   NOT NULL,
    "FT_PCT" INT   NOT NULL,
    "OREB" INT   NOT NULL,
    "DREB" INT   NOT NULL,
    "REB" INT   NOT NULL,
    "AST" INT   NOT NULL,
    "STL" INT   NOT NULL,
    "BLK" INT   NOT NULL,
    "TO" INT   NOT NULL,
    "PF" INT   NOT NULL,
    "PTS" INT   NOT NULL,
    "PLUS_MINUS" INT   NOT NULL,
    CONSTRAINT "pk_games_details" PRIMARY KEY (
        "GAME_ID"
     )
);

CREATE TABLE "players" (
    "PLAYER_NAME" VARCHAR   NOT NULL,
    "TEAM_ID" INT   NOT NULL,
    "PLAYER_ID" VARCHAR   NOT NULL,
    "SEASON" DATE   NOT NULL
);

ALTER TABLE "games" ADD CONSTRAINT "fk_games_HOME_TEAM_ID" FOREIGN KEY("HOME_TEAM_ID")
REFERENCES "games_details" ("");

ALTER TABLE "games" ADD CONSTRAINT "fk_games_VISITOR_TEAM_ID" FOREIGN KEY("VISITOR_TEAM_ID")
REFERENCES "games_details" ("");

ALTER TABLE "games" ADD CONSTRAINT "fk_games_TEAM_ID_home" FOREIGN KEY("TEAM_ID_home")
REFERENCES "games" ("");

ALTER TABLE "games" ADD CONSTRAINT "fk_games_TEAM_ID_away" FOREIGN KEY("TEAM_ID_away")
REFERENCES "games" ("");

ALTER TABLE "games_details" ADD CONSTRAINT "fk_games_details_TEAM_ID" FOREIGN KEY("TEAM_ID")
REFERENCES "games" ("");

ALTER TABLE "players" ADD CONSTRAINT "fk_players_PLAYER_ID" FOREIGN KEY("PLAYER_ID")
REFERENCES "games" ("");

