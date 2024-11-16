CREATE TABLE courses (
         course_id INT, 
         course_name VARCHAR(100), 
         duration VARCHAR(20)
     );
     INSERT INTO courses VALUES 
         (1, 'Data Science', '6 months'), 
         (2, 'Web Development', '3 months'), 
         (3, 'Digital Marketing', '2 months'), 
         (4, 'AI & ML', '4 months'), 
         (5, 'Cloud Computing', '5 months');

/*
List all courses offered by a training institute.
*/

SELECT * FROM COURSES

SELECT COURSE_NAME
FROM COURSES