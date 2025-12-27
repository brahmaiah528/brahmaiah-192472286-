% Student facts
student(stu1).
student(stu2).
student(stu3).

% Teacher facts
teacher(tea1).
teacher(tea2).

% Date of Birth
dob(stu1, 12, 6, 2004).
dob(stu2, 25, 8, 2003).
dob(stu3, 10, 1, 2005).

dob(tea1, 5, 3, 1980).
dob(tea2, 18, 11, 1975).

% Teacher teaches student
teaches(tea1, stu1).
teaches(tea1, stu2).
teaches(tea2, stu3).

% Rules
student_dob(Student, D, M, Y) :-
    student(Student),
    dob(Student, D, M, Y).

teacher_dob(Teacher, D, M, Y) :-
    teacher(Teacher),
    dob(Teacher, D, M, Y).

teacher_of(Teacher, Student) :-
    teaches(Teacher, Student).
