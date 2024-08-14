/*In this project, you will create your own friends table and add/delete data from it!

Create a table named friends with three columns:

id that stores INTEGER
name that stores TEXT
birthday that stores DATE
*/

CREATE TABLE friends (
  id INTEGER, 
  name TEXT, 
  birthday DATE
);

/*
Beneath your current code, add Ororo Munroe to friends.
Her birthday is May 30th, 1940.
*/

INSERT INTO friends (
  id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-5-30');

/*
Let’s make sure that Ororo has been added to the database:
*/

SELECT * FROM friends;

/*
Add two of your friends to the table.
Insert an id, name, and birthday for each of them.
*/

INSERT INTO friends (
  id, name, birthday)
VALUES (2, 'Naomi Ade', '1995-4-12');

INSERT INTO friends (
  id, name, birthday
)
VALUES (3, 'Amen Ogun', '2002-8-12');

/*
Ororo Munroe just realized that she can control the weather and decided to change her name. Her new name is “Storm”.
Update her record in friends.
*/

UPDATE friends 
SET name = 'Ororo Munroe'
WHERE id = 1;

/*
Add a new column named email.
*/

ALTER TABLE friends
ADD COLUMN email TEXT;

/*
Update the email address for everyone in your table.
Storm’s email is storm@codecademy.com.
*/

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'naomiade01@gmail.com'
WHERE id = 2;

UPDATE friends
SET email = 'amenogun1@gmail.com'
WHERE id = 3;

/*
Wait, Storm is fictional…
Remove her from friends.
*/

DELETE FROM friends
WHERE id = 1;

/*
Great job! Let’s take a look at the result one last time:
*/

SELECT * FROM friends;