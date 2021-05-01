-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "teams" (
    "LEAGUE_ID" int   NOT NULL,
    "TEAM_ID" int   NOT NULL,
    "MIN_YEAR" int   NOT NULL,
    "MAX_YEAR" int   NOT NULL,
    "ABBREVIATION" varchar   NOT NULL,
    "NICKNAME" varchar   NOT NULL,
    "YEARFOUNDED" int   NOT NULL,
    "CITY" varchar   NOT NULL,
    "ARENA" varchar   NOT NULL,
    "ARENACAPACITY" int   NOT NULL,
    "OWNER" varchar   NOT NULL,
    "GENERALMANAGER" varchar   NOT NULL,
    "HEADCOACH" varchar   NOT NULL,
    "DLEAGUEAFFILIATION" varchar   NOT NULL
);

