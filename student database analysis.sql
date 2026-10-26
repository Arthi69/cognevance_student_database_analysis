create database studentdb;
use studentdb;

create table student(
studentid int auto_increment primary key,
studentname varchar(30),
age int,
department varchar(20),
attendance int);

create table courses(
courseid int primary key,
coursename varchar(20)
);
CREATE TABLE marks (
    studentid INT,
    courseid INT,
    marks INT,
    PRIMARY KEY (studentid, courseid),
    FOREIGN KEY (studentid) REFERENCES student(studentid),
    FOREIGN KEY (courseid) REFERENCES courses(courseid)
);

insert into student
 (studentname,age,department,attendance)
values
('Arun', 21, 'CSE', 95),
('Priya', 20, 'IT', 88),
('Kumar', 21, 'ECE', 76),
('Divya', 20, 'CSE', 92),
('Ravi', 22, 'IT', 65),
('Karthik', 21, 'CSE', 85),
('Meena', 20, 'IT', 90),
('Suresh', 22, 'ECE', 78),
('Priya S', 21, 'CSE', 96),
('Vijay', 20, 'IT', 82),
('Anitha', 22, 'ECE', 88),
('Rahul', 21, 'CSE', 72),
('Sneha', 20, 'IT', 94),
('Bala', 22, 'ECE', 68),
('Nithya', 21, 'CSE', 91);

INSERT INTO courses (courseid, coursename)
VALUES
(101, 'SQL'),
(102, 'Python'),
(103, 'Excel'),
(104, 'Power BI'),
(105, 'Statistics');
INSERT INTO marks (studentid, courseid, marks)
VALUES
(1,101,90),(1,102,85),(1,103,95),(1,104,88),(1,105,92),
(2,101,80),(2,102,88),(2,103,90),(2,104,85),(2,105,87),
(3,101,75),(3,102,82),(3,103,78),(3,104,80),(3,105,84),
(4,101,95),(4,102,92),(4,103,89),(4,104,96),(4,105,91),
(5,101,85),(5,102,80),(5,103,87),(5,104,83),(5,105,86),
(6,101,78),(6,102,84),(6,103,81),(6,104,79),(6,105,88),
(7,101,92),(7,102,90),(7,103,94),(7,104,89),(7,105,93),
(8,101,70),(8,102,75),(8,103,80),(8,104,78),(8,105,82),
(9,101,88),(9,102,86),(9,103,90),(9,104,84),(9,105,87),
(10,101,82),(10,102,89),(10,103,85),(10,104,91),(10,105,88),
(11,101,76),(11,102,80),(11,103,79),(11,104,83),(11,105,81),
(12,101,94),(12,102,96),(12,103,91),(12,104,93),(12,105,95),
(13,101,84),(13,102,82),(13,103,86),(13,104,80),(13,105,85),
(14,101,90),(14,102,87),(14,103,92),(14,104,88),(14,105,91),
(15,101,86),(15,102,89),(15,103,84),(15,104,90),(15,105,88);
select*from marks;