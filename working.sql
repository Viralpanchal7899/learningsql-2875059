
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

