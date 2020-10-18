CREATE TABLE netflix_titles (
show_id INT(11) PRIMARY KEY,
type1 VARCHAR(10),
title VARCHAR(70),
director VARCHAR(30),
cast1 VARCHAR(30),
country VARCHAR(30),
date_added DATE,
release_year YEAR,
rating VARCHAR(20),
duration VARCHAR(20),
listed_in VARCHAR(30),
description LONGTEXT
);

DESCRIBE netflix_titles


LOAD DATA INFILE 'D:/BKPSDM/netflix_titles.csv'
INTO TABLE netflix_titles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM netflix_titles

SELECT * FROM netflix_titles WHERE duration = '90 min';
SELECT * FROM netflix_titles WHERE country = 'Thailand';
SELECT * FROM netflix_titles WHERE release_year > 2015;
