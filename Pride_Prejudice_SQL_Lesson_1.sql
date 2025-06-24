-- Lesson 1 - Create and populate tables

-- The SQL below will create a custom database using SQL name 'pride_and_prejudice' the database will contain a total of four tables
-- Tables Crated are 1.character_demographics, 2.household_details, 3.income_or_dowry, and 4.narrative parts
-- Since I'll be walking though this excercise multiple times I start with a drop statement since you all are doing this for the first time you don't need that
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
-- This created the tables but they are currently blank so let's populate
-- Character demographics data
#Full disclosure AI was used to assign birthdays
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
('Happily Ever After'); -- speaks for itself# 