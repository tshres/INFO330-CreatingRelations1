CREATE TABLE IF NOT EXISTS student_courses (
  studentid INTEGER,
  course TEXT,
  grade FLOAT DEFAULT NULL,
  FOREIGN KEY (studentid) REFERENCES students(id),
  FOREIGN KEY (course) REFERENCES courses(code)
);

INSERT INTO student_courses (studentid, course) VALUES
  ('Fred Flintstone', 'INFO330A'),
  ('Fred Flintstone', 'INFO448A'),
  ('Fred Flintstone', 'INFO314');

INSERT INTO student_courses (studentid, course) VALUES
  ('Barney Rubble', 'INFO330A'),
  ('Barney Rubble', 'INFO449A');

INSERT INTO student_courses (studentid, course) VALUES
  ('Wilma Flintstone', 'BAW010'),
  ('Wilma Flintstone', 'BAW100');

INSERT INTO student_courses (studentid, course) VALUES
  ('Betty Rubble', 'BAW010');


