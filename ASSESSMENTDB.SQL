
/* ASSESSMENT */
create database assessment;
USE assessment;
create table nobel_win(year int,subject varchar(50),winner varchar(50),country varchar(50),category varchar(50));
INSERT INTO Nobel_win (year, subject, winner, country, category)VALUES
  (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
  (1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
  (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
  (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
  (1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
  (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
  (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
  (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
  (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
  (1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
  (1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
  (1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
  (1971, 'Economics', 'Simon Kuznets', 'USA', 'Economist'),
  (1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
  (1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
  (1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
  (1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
  (1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
  (1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
  (1987, 'Literature', 'Joseph Brodsky', 'USA', 'Linguist'),
  (1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
  (1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
  (1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
  (1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');
 
 /*1. Write sql query to find the nobel prize winners of the year 1970. Return year, subject and winner*/
SELECT year, subject, winner
FROM Nobel_win
WHERE year = 1970;

/* 2. Write sql query to find the nobel prize winners in chemistry between the years 1965 and 1975. Begin and end values are included Return year, subject, winner and country*/
SELECT year, subject, winner, country
FROM Nobel_win
WHERE subject = 'Chemistry' AND year BETWEEN 1965 AND 1975;

/* 3. Write sql query to retrieve the details of the winners whose first name matches with the string 'Louis'. Return year, subject, winner,country*/
SELECT year, subject, winner, country
FROM Nobel_win
WHERE winner LIKE 'Louis%';

 /*Write SQL query to find the Nobel prize winners for the subject that begins with the letter 'P'. Order the result by year, ascending and winner in descending. Return year, subject, winner, country */
SELECT year, subject, winner, country
FROM Nobel_Prize_Winners
WHERE subject NOT LIKE 'P%'
ORDER BY year DESC, winner ASC;

/*Write SQL query to find the details of the Nobel prize winners who are from the 'USA'. Order the result by year, descending and subject, ascending. Return year, subject, winner, country*/
SELECT year, subject, winner, country, category
FROM Nobel_Prize_Winners
WHERE year = 1970
ORDER BY 
  CASE 
    WHEN subject IN ('Chemistry', 'Economics') THEN 1 
    ELSE 0 
  END, 
  subject ASC;