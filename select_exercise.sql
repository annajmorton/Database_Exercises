USE codeup_test_db;
SELECT'' AS 'The name of all albums by Pink Floyd'\G
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT'' AS 'The year Sgt. Pepper\'s Lonely Hearts Club Band was released'\G
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonley Hearts Club Band';

SELECT'' AS 'The genre for Nevermind is'\G
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT'' AS 'The following albums were released in the 90\'s'\G
SELECT artist, name, release_date FROM albums WHERE release_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT'' AS 'Albums with less than 20 million in sales'\G
SELECT artist, name, sales FROM albums WHERE sales < 20.0;

SELECT'' AS 'Albums in the \'Rock\' genre'\G
SELECT name, genre FROM albums WHERE genre LIKE '%rock%';