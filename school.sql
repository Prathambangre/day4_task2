CREATE TABLE students (
    student_id SERIAL PRIMARY KEY, 
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,    
    course_name VARCHAR(100),
    instructor VARCHAR(100)
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (name, age, grade)
VALUES 
('Pratham ', 16, '10th Grade'),
('Gaurav ', 17, '11th Grade');

INSERT INTO courses (course_name, instructor)
VALUES 
('Math 101', 'Dr. Harshal'),
('History 101', 'Prof. Jayant');

INSERT INTO enrollments (student_id, course_id)
VALUES 
(1, 1),
(1, 2),
(2, 1);

SELECT s.name AS student_name, c.course_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;
