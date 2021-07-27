USE codeup_test_db;
# Write SELECT statements for:
# Convert the SELECT statements to DELETE.
# Use the MySQL command line client to make sure your records really were removed.

# Albums released after 1991
SELECT *
FROM albums
WHERE release_date > 1991;

DELETE FROM albums
WHERE release_date > 1991;

SELECT * FROM albums;
#=========================================================================
# Albums with the genre 'disco'
SELECT *
FROM albums
WHERE genre LIKE '%disco%';

DELETE FROM albums
WHERE genre LIKE '%disco%';

SELECT * FROM albums;
#=========================================================================
# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT *
FROM albums
WHERE artist LIKE '%Meatloaf%';

DELETE FROM albums
WHERE artist LIKE '%Meatloaf%';

SELECT * FROM albums;
#=========================================================================
