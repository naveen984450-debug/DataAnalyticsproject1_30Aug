Create table Students
(Student_Id INT primary Key,
Name Varchar(50),
Age Integer,
Course_Id Integer,
Marks Decimal(10,2));

Insert into Students (Student_Id, Name, Age, Course_Id, Marks)
Values
(1, 'Alice', 20, 1, 88),
(2, 'Bob', 22, 1, 88),
(3, 'Charlie', 21, 1, 81),
(4, 'David', 23, 1, 91),
(5, 'Eva', 20, 2, 84),
(6, 'Frank', 22, 3, 79),
(7, 'Grace', 21, 1, 92),
(8, 'Hank', 23, 2, 68),
(9, 'Ivy', 20, 3, 81),
(10, 'Jack', 22, 1, 87),
(11, 'Steve', 23, 4, 74),
(12, 'Bob', 20, 5, 69);


Select * from students;

--------Module 1

--1)Show each student's name and their marks increased by 5 (bonus marks).

Select
Student_Id, Name,
Marks AS Total_Marks,
Marks + 5 As BONUS_Marks
FROM Students;


--2)Find all students whose names start with the letter 'B'.

Select 
Student_Id,
Name
From Students
Where Name like '%b%';

--3)Retrieve students whose names end with the letter 'e'.


Select 
Student_Id,
Name
From Students
Where Name like '%e%';



--4)List students who have scored more than 85 marks.

Select * from Students Where Marks > 85;


--5)Find students aged exactly 22.

Select * from Students Where Age = 22;


--6)Get students who are older than 21 and have scored less than 80.

Select * from Students Where age <= 21;

Select 
Name,
Marks,
Age
from Students
Where age <= 21 and Marks <=80;



--7)Find students who are either named 'Bob' or have marks greater than 90.

Select 
Name,
Marks
From students
Where Name = 'Bob' Or Marks >=90;


--8)Display all students sorted by age in ascending order and marks in descending order.

Select * from students 
order by Age ASC, Marks Desc;

Select * from Students
order by Marks desc;


--9)Find students whose marks plus 10 would exceed 90.

Select * from Students
Marks,
Marks + 10 as Bonus_Marks
Where marks >= 90
From Students;

Select * From students
Where Marks +10 >90;



--10)Display student name, marks, and percentage (assuming marks are out of 120).

Select
Name, 
Marks + 10 as Total_Marks
Where Marks / 120*100 as Percentage 
From Students;




---Module 2:

---1 Get student names along with their course names.

Create table Courses
(Course_Id Int Primary Key,
Course_Name Varchar (50),
instructor Varchar (50)
);

Insert into Courses
Values
(1, 'Mathematics', 'Dr. Smith'),
(2, 'Physics', 'Dr. Johnson'),
(3, 'Chemistry', 'Dr. Brown'),
(4, 'English', 'Dr. John');

Select * from Courses;

----2 List students and instructors for those enrolled in existing courses only.

select Student_id, name, Course_Id from
(
select
d.Courses_id,
d.Courses_name,
e.Student_id,
e.name,
e.age
from Courses d
right join Students e on e.Courses = d.Courses_name
);


---3Show student name, marks, and course name for students who scored more than 80.

Select Student_Name, Marks, Course_name
( 
Select)



--4List all students and their course names, even if the course is missing in the Courses table.
SELECT e.Student_id, name, Course_Id, d.Courses 
FROM Students e 
LEFT JOIN Course_id d ON Course_id = d.Courses
order by Student_id;

--5List course names and student names; include courses with no students.



--Module 3:

--1 List each student age and the total number of students of that age.
Select Count(*) from Students;

Select count (distinct age) from Students;

--2 Show the maximum and minimum marks scored in each course.

Select MAX (Marks) as Maximum_Marks
Group by Courses
from Students;


--3 Count the number of students enrolled in each course.
Select Course,	 
Count(*) From Students 
group by Couses;

--4 Find the average marks of students in each course.
Select 
Courses_id,
Count(*)
From Students
Group by Couses_id
Having count(*)>2;

--5 show course name and total marks scored by students in that course.

--Module 4: 

--Show course IDs where the average marks of students is greater than 80.


--List student ages where more than 2 students share the same age.


--show course names where total marks scored by students is less than 250.


--Find course IDs with a maximum mark greater than 90.


--Module 5:

--Show students whose marks are above the average marks of all students.



--Find course IDs where the average marks is higher than the average of all students.



--List all students who scored less than the average marks of all students.



--Show all ages where the average mark of students is below 75.



