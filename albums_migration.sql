USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (

	id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	artist_name VARCHAR(80) NOT NULL,
	release_date YEAR(4),
	sales FLOAT UNSIGNED, 
	genre VARCHAR(20),
	PRIMARY KEY (id)

);
