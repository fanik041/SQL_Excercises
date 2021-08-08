create table sample_data (
    house_no number(19) not null,
    road_no number(19) not null,
    area varchar2(32) not null,
    district varchar2(32) not null
);

select count(distinct (district)) as count from sample_data;

create table customer (
    first_name VARCHAR2(30),
    last_name VARCHAR2(30),
    middle_name VARCHAR2(30),
    account_open_date DATE
);

select
Trim(first_name) as trimmed_first_name,
trim(last_name) as trimmed_last_name, 
trim(middle_name) as trimmed_middle_name,
(sysdate-account_open_date)/365 as joining_period_in_years from CUSTOMER
where ((sysdate-account_open_date)/365> 5);

create table student (
    name varchar2(32),
    birth_date varchar2(32)
);