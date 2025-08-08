-- Marks Table
CREATE TABLE Marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    exam_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
*/

#Task 4: Aggregate Functions and Grouping

#INSERT INTO marks (student_id, subject_id, marks_obtained,exam_date ) VALUES (1,1,88,"08-08-25");
#SELECT * FROM marks;
#SELECT MIN(marks_obtained)FROM marks;
#SELECT MAX(marks_obtained)FROM marks;
#SELECT MIN(marks_obtained) AS Smallestmarks_obtained FROM marks;
#SELECT MIN(marks_obtained) AS Smallestmarks_obtained, student_id FROM marks GROUP BY student_id;
#SELECT COUNT(*) FROM marks;
#SELECT COUNT(student_id) FROM marks;
#SELECT COUNT(DISTINCT marks_obtained) FROM marks;
#SELECT SUM(marks_obtained) FROM marks;
#SELECT SUM(marks_obtained) FROM marks WHERE mark_id = 108;
SELECT AVG(marks_obtained) FROM marks;