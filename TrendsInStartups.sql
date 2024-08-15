/*
Howdy! It’s your first day as a TechCrunch reporter. Your first task is to write an article on the rising trends in the startup world.

To get you started with your research, your boss emailed you a project.sqlite file that contains a table called startups. It is a portfolio of some of the biggest names in the industry.

Write queries with aggregate functions to retrieve some interesting insights about these companies.
*/

-- Calculate the total number of companies in the table.

SELECT SUM(employees)
FROM startups;

-- We want to know the total value of all companies in this table. 

SELECT SUM(valuation)
FROM startups;

-- What is the highest amount raised by a startup?

SELECT MAX(raised)
FROM startups;
  
  -- Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.
  
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';
  
  -- In what year was the oldest company on the list founded?
  
SELECT MIN(founded)
FROM startups;
  
  -- Return the average valuation.
  
SELECT AVG(valuation)
FROM startups;

-- Return the average valuation.

  SELECT AVG(valuation)
  FROM startups;
  
-- Return the average valuation, in each category.

  SELECT category, AVG(valuation)
  FROM startups
  GROUP BY category;
  
-- Return the average valuation, in each category. Round the averages to two decimal places.

SELECT category, 
  ROUND(AVG(valuation), 2)
  FROM startups
  GROUP BY category;
  
-- Return the average valuation, in each category. Round the averages to two decimal places.Lastly, order the list from highest averages to lowest***.

  SELECT category, 
  ROUND(AVG(valuation), 2)
  FROM startups
  GROUP BY 1
  ORDER BY 3 DESC;
  
-- First, return the name of each category with the total number of companies that belong to it.

  SELECT category, COUNT(*)
  FROM startups
  GROUP BY CATEGORY;
  
-- Next, filter the result to only include categories that have more than three companies in them. What are the most competitive markets?

SELECT category, COUNT(*)
FROM startups
GROUP BY CATEGORY
HAVING COUNT(*) > 3;

-- What is the average size of a startup in each location?

SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- What is the average size of a startup in each location, with average sizes above 500?

SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
  
  

  
