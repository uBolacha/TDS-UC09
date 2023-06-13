CREATE TABLE atletas (
Name_atletas Varchar(150),
Noc_atletas Varchar(100),
Discipline_atletas Varchar(150)
);

CREATE TABLE coaches (
Name_coaches Varchar(100),
Noc_coaches Varchar(100),
Discipline_coaches Varchar(150),
event_coaches Varchar(50)
);

CREATE TABLE entriesGender (
disciplines_gender Varchar(100),
female_gender INT  NULL,
male_gender INT  NULL,
total_gender INT NOT NULL
);

CREATE TABLE medals (
rank_medals INT NULL,
team_medals Varchar(100),
gold_medals INT  NULL,
silver_medals INT  NULL,
bronze_medals INT  NULL,
total_medals INT NULL,
rank_by_total INT NULL
);

CREATE TABLE teams (
Name_teams Varchar(150),
Discipline_teams Varchar(150),
Noc_teams Varchar(100),
event_teams Varchar(50)
);

-- drops -- 

DROP TABLE atletas;

DROP TABLE coaches;

DROP TABLE entriesGender;  

drop table medals;

drop table teams;

-- consultas -- 

-- 1. Quem são os técnicos (coaches) e atletas das equipes de Handball? -- 

SELECT distinct coaches.Name_coaches, atletas.Name_atletas
FROM coaches
INNER JOIN teams ON coaches.Noc_coaches = teams.Noc_teams
INNER JOIN atletas ON teams.Noc_teams = atletas.Noc_atletas
WHERE teams.Discipline_teams = 'Handball';



-- 2. Quem são os técnicos (coaches) dos atletas da Austrália que receberam medalhas de Ouro? --
-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada

-- 3. Quais países tiveram mulheres conquistando medalhas de Ouro? --

-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada

-- 4. Quais atletas da Noruega receberam medalhas de Ouro ou Prata? --
-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada

 -- 5. Quais atletas Brasileiros não receberam medalhas? --
-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada
