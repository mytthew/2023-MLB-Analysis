-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Ge3nsB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "HITTING" (
    "Name" VARCHAR   NOT NULL,
    "Age" INT   NOT NULL,
    "Team" VARCHAR   NOT NULL,
    "League" VARCHAR   NOT NULL,
    "G" INT   NOT NULL,
    "PA" INT   NOT NULL,
    "AB" INT   NOT NULL,
    "R" INT   NOT NULL,
    "H" INT   NOT NULL,
    "2B" INT   NOT NULL,
    "3B" INT   NOT NULL,
    "HR" INT   NOT NULL,
    "RBI" INT   NOT NULL,
    "SB" INT   NOT NULL,
    "CS" INT   NOT NULL,
    "BB" INT   NOT NULL,
    "SO" INT   NOT NULL,
    "BA" NUMERIC   NOT NULL,
    "OBP" NUMERIC   NOT NULL,
    "SLG" NUMERIC   NOT NULL,
    "OPS" NUMERIC   NOT NULL,
    "OPS+" INT   NOT NULL,
    "TB" INT   NOT NULL,
    "GDP" INT   NOT NULL,
    "HBP" INT   NOT NULL,
    "SH" INT   NOT NULL,
    "SF" INT   NOT NULL,
    "IBB" INT   NOT NULL,
    CONSTRAINT "pk_HITTING" PRIMARY KEY (
        "Name"
     )
);

CREATE TABLE "PITCHING" (
    "Name" VARCHAR   NOT NULL,
    "Age" INT   NOT NULL,
    "Team" VARCHAR   NOT NULL,
    "League" VARCHAR   NOT NULL,
    "W" INT   NOT NULL,
    "L" INT   NOT NULL,
    "W-L%" NUMERIC   NOT NULL,
    "ERA" NUMERIC   NOT NULL,
    "G" INT   NOT NULL,
    "GS" INT   NOT NULL,
    "GF" INT   NOT NULL,
    "CG" INT   NOT NULL,
    "SHO" INT   NOT NULL,
    "SV" INT   NOT NULL,
    "IP" NUMERIC   NOT NULL,
    "H" INT   NOT NULL,
    "R" INT   NOT NULL,
    "ER" INT   NOT NULL,
    "HR" INT   NOT NULL,
    "BB" INT   NOT NULL,
    "IBB" INT   NOT NULL,
    "SO" INT   NOT NULL,
    "HBP" INT   NOT NULL,
    "BK" INT   NOT NULL,
    "WP" INT   NOT NULL,
    "BF" INT   NOT NULL,
    "ERA+" INT   NOT NULL,
    "FIP" NUMERIC   NOT NULL,
    "WHIP" NUMERIC   NOT NULL,
    "H9" NUMERIC   NOT NULL,
    "HR9" NUMERIC   NOT NULL,
    "BB9" NUMERIC   NOT NULL,
    "SO9" NUMERIC   NOT NULL,
    "SO/W" NUMERIC   NOT NULL,
    CONSTRAINT "pk_PITCHING" PRIMARY KEY (
        "Name"
     )
);

ALTER TABLE "HITTING" ADD CONSTRAINT "fk_HITTING_Name_Team_League" FOREIGN KEY("Name", "Team", "League")
REFERENCES "PITCHING" ("Name", "Team", "League");

