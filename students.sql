CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    firstname TEXT(40),
    lastname TEXT(80),
    age INTEGER
);

INSERT INTO students(id, firstname, lastname, age) VALUES
    (1, 'Fred', 'Flintstone', 35),
    (2, 'Wilma', 'Flintstone', 29),
    (3, 'Barney', 'Rubble', 33),
    (4, 'Betty', 'Rubble', 29),
    (5, 'Pebbles', 'Flintstone', 1),
    (6, 'Bam-Bam', 'Rubble', 1),
    (7, 'Rick', 'Johnson', 43),
    (8, 'Alena', 'Anderson', 21),
    (9, 'Megan', 'Pham', 15);