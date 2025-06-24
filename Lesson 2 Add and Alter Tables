-- The SQL below will create a custom database using SQL name 'pride_and_prejudice' the database will contain a total of four tables
-- I use this example multiple times so I may already have a Pride_and_Prejudice DB so I start with a drop statement if you are executing this code for the first time you won't need it. 
-- 1-character_demographics, 2- household_details, 3-income_or_dowry, and 4-narrative parts.--

-- Lesson 1-- Create and Populate Table
DROP DATABASE IF EXISTS `Pride_and_Prejudice`;
CREATE DATABASE `Pride_and_Prejudice`;
USE `Pride_and_Prejudice`;

-- Character details
CREATE TABLE character_demographics (
  story_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  birth_date DATE,
  PRIMARY KEY (story_id)
);

-- Household details
CREATE TABLE household_details (
  household_id INT NOT NULL AUTO_INCREMENT,
  household_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (household_id)
);

-- Income or dowry information
CREATE TABLE income_or_dowry (
  story_id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  income_or_dowry_amount INT,
  household_id INT NOT NULL,
  FOREIGN KEY (household_id) REFERENCES household_details(household_id),
  FOREIGN KEY (story_id) REFERENCES character_demographics(story_id)
);

-- Narrative parts
CREATE TABLE narrative_parts (
  narrative_id INT NOT NULL AUTO_INCREMENT,
  plot_point VARCHAR(100),
  PRIMARY KEY (narrative_id)
);
-- Now I've create the tables but there is no data in them so I'm going to detail the data below
-- Character demographics data
#Full disclosure AI was used to assign birthdays#
INSERT INTO character_demographics (story_id, first_name, last_name, age, gender, birth_date)
VALUES
(1, 'Elizabeth', 'Bennet', 20, 'Female', '1794-07-20'),
(2, 'Jane', 'Bennet', 22, 'Female', '1792-12-16'), 
(3, 'Mary', 'Bennet', 19, 'Female', '1795-03-04'),
(4, 'Katherine', 'Bennet', 17, 'Female', '1797-03-27'),
(5, 'Lydia', 'Bennet', 15, 'Female', '1799-08-28'),
(6, 'Thomas', 'Bennet', 45, 'Male', '1750-07-30'),
(7, 'Fanny', 'Bennet', 40, 'Female', '1755-12-01'),
(8, 'Charlotte', 'Lucas', 27, 'Female', '1773-11-11'),
(9, 'William', 'Collins', 25, 'Male', '1775-07-26'),
(10, 'William', 'Lucas', 50, 'Male', '1750-03-25'),
(11, 'Fitzwilliam', 'Darcy', 28, 'Male', '1776-06-14'),
(12, 'Charles', 'Bingley', 23, 'Male', '1781-07-27'), 
(13, 'Caroline', 'Bingley', 21, 'Female', '1783-09-10'), 
(14, 'Unknown', 'Hurst', 30, 'Male', '1774-01-10'),
(15, 'Louisa', 'Hurst', 26, 'Female', '1778-05-04'),
(16, 'George', 'Wickham', 26, 'Male', '1778-06-18'),
(17, 'Lady', 'Catherine de Bourgh', 55, 'Female', '1740-02-19'),
(18, 'Anne', 'de Bourgh', 20, 'Female', '1794-04-05'),
(19, 'Colonel', 'Fitzwilliam', 30, 'Male', '1774-12-02'),
(20, 'Georgiana', 'Darcy', 16, 'Female', '1798-10-23');

-- Household information
INSERT INTO household_details (household_name)
VALUES
('Longbourn'),       -- ID 1
('Lucas Lodge'),     -- ID 2
('Parsonage'),       -- ID 3
('Pemberley'),       -- ID 4
('Netherfield'),     -- ID 5
('Barracks'),        -- ID 6
('Rosings Park'),    -- ID 7
('Unknown');         -- ID 8

-- Income/Dowry information
INSERT INTO income_or_dowry (story_id, first_name, last_name, income_or_dowry_amount, household_id)
VALUES
(1, 'Elizabeth', 'Bennet', 1000, 1),
(2, 'Jane', 'Bennet', 1000, 1),
(3, 'Mary', 'Bennet', 1000, 1),
(4, 'Katherine', 'Bennet', 1000, 1),
(5, 'Lydia', 'Bennet', 1000, 1),
(6, 'Thomas', 'Bennet', 2000, 1),
(7, 'Fanny', 'Bennet', 4000, 1),
(8, 'Charlotte', 'Lucas', 1000, 2),
(9, 'William', 'Collins', 700, 3),
(10, 'William', 'Lucas', 1000, 2),
(11, 'Fitzwilliam', 'Darcy', 10000, 4),
(12, 'Charles', 'Bingley', 5000, 5),
(13, 'Caroline', 'Bingley', 20000, 5),
(14, 'Unknown', 'Hurst', 4000, 5),
(15, 'Louisa', 'Hurst', 20000, 5),
(16, 'George', 'Wickham', 0, 6),
(17, 'Lady', 'Catherine de Bourgh', 5000, 7),
(18, 'Anne', 'de Bourgh', 30000, 7),
(19, 'Colonel', 'Fitzwilliam', 2000, 8),
(20, 'Georgiana', 'Darcy', 30000, 4);

-- Narrative part information
INSERT INTO narrative_parts (plot_point)
VALUES
('Background/Introduction'),
('Crisis Point 1'), -- SPOILERS - Jane's Dissapointment
('Crisis Point 2'), -- Lydia Runs Away
('Plot Twist'), -- it was Darcy all along
('Happily Ever After'); -- speaks for itself# In order to tell the whole stories there is some additional information that I need, I'll add it by adding columns to exsisting tables. 
-- END Lesson 1 - Create and Populate Tables 

-- Lesson 2 - Alter Tables by Adding Columns and Adding Tables
-- I will start by looking at the table I want to work with 
SELECT * 
FROM character_demographics;

-- Now I will add the column I want to add, in this case I want to add ending marital status to the character demographic table. 

ALTER TABLE character_demographics
ADD marital_status_at_end VARCHAR(20);

#now the column is there but not populated so I'll populate it. 
#remember the when statements are looking and the character demographics table and referencing the story id so 1 = Elizabeth Bennet and so on. 
UPDATE character_demographics
SET marital_status_at_end = CASE story_id
    WHEN 1 THEN 'Married'
    WHEN 2 THEN 'Married'
    WHEN 3 THEN 'Single'
    WHEN 4 THEN 'Single'
    WHEN 5 THEN 'Married'
    WHEN 6 THEN 'Married'
    WHEN 7 THEN 'Married'
    WHEN 8 THEN 'Married'
    WHEN 9 THEN 'Married'
    WHEN 10 THEN 'Married'
    WHEN 11 THEN 'Married'
    WHEN 12 THEN 'Married'
    WHEN 13 THEN 'Single'
    WHEN 14 THEN 'Married'
    WHEN 15 THEN 'Married'
    WHEN 16 THEN 'Married'
    WHEN 17 THEN 'Widowed'
    WHEN 18 THEN 'Single'
    WHEN 19 THEN 'Unknown'
    WHEN 20 THEN 'Unknown'
    ELSE marital_status_at_end
END
WHERE story_id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
-- now I will check and ensure that the column is populated
SELECT *
FROM character_demographics;

-- that looks good now lets add some more infomation 
-- ALTER TABLE character_demographics
-- ADD spouse_name VARCHAR(100), # want to show spouses
-- ADD moved_household BOOLEAN; # want to see who moved 

-- on second thought it might make more sense to create a new table called life events
CREATE TABLE life_events (
  event_id INT AUTO_INCREMENT PRIMARY KEY, #genrates the id for the event unique to each
  story_id INT NOT NULL, # this is more of a best practice since we created this table but tells us to essentially only look at items in any table with a story_id
  spouse_name VARCHAR(100),
  moved_household BOOLEAN, #booleans are true false statements, if the character did move then will return true and if not false
  notes TEXT, #optional field if we leverage the database for visuals we may want to add some more character
  FOREIGN KEY (story_id) REFERENCES character_demographics(story_id) #This enforces the relationship between this new table and the character_demographics table. 

);
-- now the table is created lets add the data 
INSERT INTO life_events (story_id, spouse_name, moved_household, notes)
VALUES
(1, 'Fitzwilliam Darcy', TRUE, 'Moved to Pemberley after marriage.'),#remember Elizabeth Bennet is the character with a story_id of 1 and her evental spouse is Darcy
(2, 'Charles Bingley', TRUE, 'Relocated to a new estate.'),#Jane was character with story_id 2
(3, NULL, FALSE, 'Remained single.'),
(4, NULL, FALSE, 'Lived with family.'),
(5, 'George Wickham', TRUE, 'Eloped; moved to the North.'),
(6, 'Fanny Bennet', FALSE, 'Remained at Longbourn.'),
(7, 'Thomas Bennet', FALSE, 'Remains at Loungbourn.'),
(8, 'William Collins', TRUE, 'Moved to Parsonage'),
(11, 'Elizabeth Bennet', TRUE, 'Resides at Pemberley.');

-- END of Lesson 2 - Alter Tables by Adding Columns and Adding Tables
