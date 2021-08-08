delete from employee;


INSERT INTO employee (name, dob) 
    select name, to_date(birth_date, 'DD-MM-YYYY') from student;

create table question3 (
    name varchar2(32) not null,
    date_of_birth date not null
);

INSERT INTO question3 (name, date_of_birth) 
    select name, to_date(birth_date, 'DD-MM-YYYY') from student;

select * from question3;