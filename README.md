# -Aggregate-Functions-and-Grouping

This project contains SQL scripts to create a `Marks` table and run **aggregate functions** with examples.

---

## 🗄 Database Table Structure

```sql
CREATE TABLE Marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    exam_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

📊 Aggregate Functions with Explanations
Query	Explanation
SELECT * FROM marks;	Shows all records from the marks table.
SELECT MIN(marks_obtained) FROM marks;	Finds the lowest marks in the table.
SELECT MAX(marks_obtained) FROM marks;	Finds the highest marks in the table.
SELECT MIN(marks_obtained) AS SmallestMarks FROM marks;	Finds the lowest marks and renames the column to SmallestMarks.
SELECT MIN(marks_obtained) AS SmallestMarks, student_id FROM marks GROUP BY student_id;	Finds the lowest marks per student.
SELECT COUNT(*) FROM marks;	Counts total number of records in the table.
SELECT COUNT(student_id) FROM marks;	Counts how many rows have a value for student_id.
SELECT COUNT(DISTINCT marks_obtained) FROM marks;	Counts unique marks obtained.
