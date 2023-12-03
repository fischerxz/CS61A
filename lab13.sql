.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = "blue" AND pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest from students group by smallest having count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color 
    FROM students as a, students as b
      WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT seven
    FROM students, numbers
      WHERE numbers.'7' = 'True' AND smallest <= 7 AND numbers.time = students.time;

