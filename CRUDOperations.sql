SELECT * FROM produce;

-- write a query that returns only the pink vegetables, citrus fruits and fruits
SELECT * 
FROM produce 
WHERE colour = 'pink'
AND (category = 'vegetable' OR category = 'citrus fruit' OR category = 'fruit');

-- white a query that returns only the green vegetables
SELECT *
FROM produce
WHERE colour = 'green'
AND category = 'vegetable';

-- Write a query that returns all apples that are NOT green
SELECT *
FROM produce
WHERE name = 'apple'
AND colour != 'green';

-- Write a query that returns all vegetables, citrus fruits, and fruits that have the letter ‘c’ in their name BUT do not start OR end with the letter ‘c’
SELECT *
FROM produce
WHERE (category = 'vegetable' OR category = 'citrus fruit' OR category = 'fruit')
AND name LIKE '%c%' 
AND name NOT LIKE 'c%' 
AND name NOT LIKE '%c';

-- Order all items in the produce by the most expensive. What is the most expensive item
SELECT * 
FROM produce
ORDER BY price DESC
LIMIT 1;

-- Write a query using GROUP BY to retrieve the COUNT of the different colours of produce, grouped by colour
SELECT colour, COUNT(*)
FROM produce
GROUP BY colour;

-- Write a query that returns the SUM of the price of all the red fruits and vegetables in the produce table
SELECT SUM(price)
FROM produce
WHERE colour = 'red'
AND (category = 'fruit' OR category = 'vegetable');

-- Using the COUNT operator, how many items cost more than 25p
SELECT COUNT(*)
FROM produce
WHERE price > 0.25;

-- Using the COUNT operator, how many items cost less than 22p
SELECT COUNT(*)
FROM produce
WHERE price < 0.22;