CREATE TABLE student_courses (
  studentid INTEGER,
  course VARCHAR(10),
  grade FLOAT DEFAULT NULL,
  FOREIGN KEY (studentid) REFERENCES students(id),
  FOREIGN KEY (course) REFERENCES courses(code)
);

INSERT INTO student_courses (studentid, course) VALUES
  ((SELECT id FROM students WHERE name = 'Fred Flintstone'), 'INFO330A'),
  ((SELECT id FROM students WHERE name = 'Fred Flintstone'), 'INFO448A'),
  ((SELECT id FROM students WHERE name = 'Fred Flintstone'), 'INFO314');

INSERT INTO student_courses (studentid, course) VALUES
  ((SELECT id FROM students WHERE name = 'Barney Rubble'), 'INFO330A'),
  ((SELECT id FROM students WHERE name = 'Barney Rubble'), 'INFO449A');

INSERT INTO student_courses (studentid, course) VALUES
  ((SELECT id FROM students WHERE name = 'Wilma Flintstone'), 'BAW010'),
  ((SELECT id FROM students WHERE name = 'Wilma Flintstone'), 'BAW100');

INSERT INTO student_courses (studentid, course) VALUES
  ((SELECT id FROM students WHERE name = 'Betty Rubble'), 'BAW010');
