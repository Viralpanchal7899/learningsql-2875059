-- CRUD = "" -- 

-- -- "SELECT" --> Ability to read the data

-- SELECT * FROM people;   
-- SELECT first_name, state_code, quiz_points  FROM people;

-- -- "WHERE" --> get data with a particular condition

-- SELECT * FROM people WHERE state_code='CA';
-- SELECT * FROM people WHERE shirt_or_hat='shirt';

-- SELECT first_name,last_name,state_code, shirt_or_hat FROM people 
-- WHERE state_code='CA' AND shirt_or_hat='shirt';


-- -- "LIKE" --> broadening and limiting response
-- SELECT * FROM people
-- WHERE quiz_points LIKE '9%';
-- WHERE first_name LIKE 'B%N'
-- LIMIT 5 OFFSET 5;

-- -- "ORDER BY" --> sorting the data in a particular way

-- SELECT state_code,first_name, last_name
-- FROM people
-- ORDER BY first_name;
-- ORDER BY first_name ASC;
-- ORDER BY state_code, last_name DESC;

-- -- Getting the information about the data (Built-in functions)

-- SELECT first_name, LENGTH(first_name)
-- SELECT DISTINCT(first_name)
-- FROM people;


----------------------------------
-- Data from two or more tables --
----------------------------------

-- -- "JOIN" --> Ask for records across two tables that are associated with each other based on a common piece of information.

-- SELECT people.first_name, people.state_code, states.division
-- FROM people
-- JOIN states ON people.state_code=states.state_abbrev;

-- 'doing it without a JOIN keyword'

-- SELECT 
--   people.first_name,
--   states.state_name
-- FROM
-- people, --people ppl {alias for people. like 'import numpy as np'}
--   states
-- WHERE 
--   people.state_code=states.state_abbrev;

-- -- "GROUP BY" --> dividing results in various ways

-- SELECT first_name, COUNT(first_name)
-- FROM people
-- GROUP BY first_name;

------------------------------------------
-- Data types, math, and other features --
------------------------------------------

-- some built-in function available SUM(), AVG(), etc.
-- Accepts math and logic operations in select or where statements

-- -- Coumpound select {'Nested Select'}

-- SELECT first_name, last_name, quiz_points
-- FROM people
-- WHERE quiz_points=(SELECT MAX(quiz_points) FROM people);

-- -- Transformation of data

-- LOWER(), UPPER() --> Controls the case of a string
-- SUBSTR(X,Y,Z) --> short forming a string {eg; Timothy --> Tim; SUBSTR(name, 1,3)}
-- REPLACE(X,Y,Z) --> replacing the elements of a string with something else
-- CAST --> treat or change the data type {CAST(quiz_points[int] AS CHAR)}


------------------------
-- Add or Modify data --
------------------------

-- -- "INSERT" --> adding data to a table 
-- INSERT INTO people
-- (first_name, last_name)
-- VALUES
-- ('George', 'White'),
-- ('Max', 'White'),
-- ('George', 'Clooney');

-- -- "UPDATE" --> updating the data in a table

-- SELECT first_name, last_name
-- FROM people
-- UPDATE people SET last_name='Morrison' WHERE first_name='Carlos' AND city='Houston';

-- SELECT first_name, last_name
-- FROM people
-- WHERE first_name='Carlos';

-- -- "DELETE" --> remove a row of data from a table

-- DELETE FROM people WHERE id_number=1001;

