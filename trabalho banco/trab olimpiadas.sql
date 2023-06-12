CREATE TABLE atletas (
Name_atletas Varchar(1000),
Noc_atletas Varchar(1000),
Discipline_atletas Varchar(1000)
);



CREATE TABLE coaches (
Name_coaches Varchar(1000),
Noc_coaches Varchar(1000),
Discipline_coaches Varchar(1000),
event_coaches Varchar(1000)
);



CREATE TABLE entriesGender (
disciplines_gender Varchar(1000),
female_gender INT NOT NULL,
male_gender INT NOT NULL,
total_gender INT NOT NULL
);




CREATE TABLE medals (
rank_medals INT NULL,
team_medals Varchar(1000),
gold_medals INT  NULL,
silver_medals INT  NULL,
bronze_medals INT  NULL,
total_medals INT NULL,
rank_by_total INT NULL
);


CREATE TABLE teams (
Name_teams Varchar(1000),
Discipline_teams Varchar(1000),
Noc_teams Varchar(1000),
event_teams Varchar(1000)
);

-- drops -- 

DROP TABLE atletas;

DROP TABLE coaches;

DROP TABLE entriesGender;  

drop table medals;

drop table teams;