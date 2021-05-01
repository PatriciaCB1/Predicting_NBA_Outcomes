-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "rankings" (
    "TEAM_ID" int   NOT NULL,
    "LEAGUE_ID" int   NOT NULL,
    "SEASON_ID" int   NOT NULL,
    "STANDINGSDATE" date   NOT NULL,
    "CONFERENCE" varchar   NOT NULL,
    "TEAM" varchar   NOT NULL,
    "G" int   NOT NULL,
    "W" int   NOT NULL,
    "L" int   NOT NULL,
    "W_PCT" numeric   NOT NULL,
    "HOME_RECORD" varchar   NOT NULL,
    "ROAD_RECORD" varchar   NOT NULL,
    "RETURNTOPLAY" varchar   NOT NULL
);

