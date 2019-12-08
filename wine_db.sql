DROP TABLE IF EXISTS wine_info;
CREATE TABLE wine_info (
	title VARCHAR Not Null Primary Key,
	Variety VARCHAR);
SELECT * FROM wine_info;

DROP TABLE IF EXISTS designation;
CREATE TABLE designation (
	title VARCHAR Not Null,
	FOREIGN KEY(title) REFERENCES wine_info(title),
	designation VARCHAR,
	winery VARCHAR);
SELECT * FROM designation;

DROP TABLE IF EXISTS location;
CREATE TABLE location (
	title VARCHAR Not Null,
	FOREIGN KEY(title) REFERENCES wine_info(title),
	winery VARCHAR,
	region VARCHAR,
	province VARCHAR,
	country VARCHAR);
SELECT * FROM location;

DROP TABLE IF EXISTS taster_review;
CREATE TABLE taster_review (
	title VARCHAR Not Null,
	FOREIGN KEY(title) REFERENCES wine_info(title),
	taster_name VARCHAR,
	taster_twitter_handle VARCHAR,
	points INT,
	description VARCHAR,
	price numeric);
SELECT * FROM taster_review;

DROP TABLE IF EXISTS winemag_same_wine_review;
CREATE TABLE winemag_same_wine_review (
	title VARCHAR Not Null,
	FOREIGN KEY(title) REFERENCES wine_info(title),
	description VARCHAR,
	points INT,
	price VARCHAR);
SELECT * FROM winemag_same_wine_review;
