create table student (
    name varchar2(30) not null,
    birth_date varchar2(30)
);


insert into student
    values ('Ashik  ', '12-AUG-1991');


select * from student;

update student
    set name= 'Fahim', birth_date = '12-JAN-1995';