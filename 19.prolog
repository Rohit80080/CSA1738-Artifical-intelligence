% Define the database with facts
% student(Student, Teacher, SubjectCode)

student('Alice', 'Mr. Smith', 'CS101').
student('Bob', 'Ms. Johnson', 'MA202').
student('Charlie', 'Mr. Smith', 'CS101').
student('David', 'Dr. Lee', 'PH303').
student('Eva', 'Ms. Johnson', 'MA202').
student('Frank', 'Dr. Lee', 'PH303').

% Query to find a student's teacher and subject code
student_info(Student, Teacher, SubjectCode) :- student(Student, Teacher, SubjectCode).

% Query to find all students taught by a specific teacher
students_of_teacher(Teacher, Student) :- student(Student, Teacher, _).

% Query to find all students studying a specific subject code
students_in_subject(SubjectCode, Student) :- student(Student, _, SubjectCode).

% Query to find the teacher of a specific student
teacher_of_student(Student, Teacher) :- student(Student, Teacher, _).

% Query to find the subject code of a specific student
subject_of_student(Student, SubjectCode) :- student(Student, _, SubjectCode).

% Query to find all teachers
all_teachers(Teacher) :- student(_, Teacher, _), !.

% Query to find all students
all_students(Student) :- student(Student, _, _), !.

% Query to find all subject codes
all_subjects(SubjectCode) :- student(_, _, SubjectCode), !.
