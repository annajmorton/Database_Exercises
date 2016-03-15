USE codeup_test_db;

SELECT '' AS 'Albums released after 1991'\G
DELETE FROM albums WHERE release_date > '1990-12-31';

SELECT '' AS 'Albums with genre disco'\G
DELETE FROM albums WHERE genre LIKE '%disco%';

SELECT '' AS 'Albums released by Whitney Houston'\G
DELETE FROM albums WHERE artist LIKE '%Whitney%' OR '%Houston%';