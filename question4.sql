--- run all queries to get the desired result
--- first i created the tables

create table registration (
    id number(19) not null,
    Course_id number(19),
    student_id number(19),
    teacher_id number(19),
    semester_name varchar2(32) not null,
    start_date date not null,
    end_date date not null,
    marks number(19),
    primary key (ID),
    foreign key (course_id) references course (ID),
    foreign key (student_id) references student1 (ID),
    foreign key (teacher_id) references teacher (ID)
);

create table course (
    id number(19) not null,
    code varchar2(32) not null,
    name varchar2(32)not null,
    primary key (ID)
);
    
create table student1 (
    id number(19) not null,
    first_name varchar2(32) not null,
    last_name varchar2(32) not null,
    Address varchar2(255),
    contact_no varchar2(32) not null,
    admission_date timestamp,
    primary key (ID)
);


create table teacher (
    ID number(19) not null,
    first_name varchar2(32) not null,
    last_name varchar2(32) not null,
    address varchar2(255),
    title varchar2(100) not null,
    contact_no varchar2(32) not null,
    joining_date date,
    primary key (ID)
);

-- was facing issue adding clob data type so i did it separately
alter table course modify description_course CLOB;


alter table teacher add preferred_subject CLOB;

Alter table course drop column description_course;

alter table course add course_description CLOB;

desc teacher;
--i made sure the table was all set 

-- data for the tables were inserted using the insert row option after opeining the table to view so you might have to enter your own data
select * from teacher;

-- here is the query used to join and answer number 4


select 
student1.first_name || ', ' || student1.last_name as student_full_name,
to_char(cast(student1.admission_date as date), 'DD-MON-YYYY')  as admission_date,
registration.marks as marks, 
course.name as course_name
from registration

inner join student1
on registration.student_id = student1.ID

inner join course
on registration.course_id = course.id

inner join teacher
on registration.teacher_id = teacher.id

where registration.marks >50 and teacher.joining_date > to_date('01-Jan-2019', 'dd-mm-yyyy') order by student1.first_name desc ;



