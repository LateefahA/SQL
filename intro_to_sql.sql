show databases;
drop database sql_intro;
use sql_intro;
create database sql_intro;
show tables;
select * from city;

CREATE TABLE emp_details (Name VARCHAR(25), Age int,
sex CHAR(1), DOJ DATE, City varchar(15), salary float);

drop table emp_details;

describe emp_details;

insert into emp_details
values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
("Marry", 28, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "New York", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);

select * from emp_details;

select distinct city from emp_details;

select name, age, city from emp_details;

select count(name) from emp_details;

select sum(salary) from emp_details;

select * from emp_details where age > 30;

select name, sex, city from emp_details where sex = 'F';

select * from emp_details where city = 'Chicago' or city = 'Austin';

select * from emp_details where city in ('Chicago','Austin');

select * from emp_details where doj between '2000-01-01' and '2010-12-31';

select * from emp_details where age>30 and sex = 'M';

select * from emp_details;

select sex, sum(salary) as total_salary from emp_details group by sex;

select * from emp_details order by DOJ;

select (10 + 20) as addition;

select 30-50 as subtract;

select length('India') as total_len;

select upper('India');

select lower('India');

select curdate();

select day(curdate());

select now();

#string functions
select upper('India') as upper_case;

select lower('India') as lower_case;
select lcase('India') as lower_case;

select character_length('India') as total_length;

#applying in table
show databases;
use world;
show tables;
select * from emp_details;

select character_length(city) as total_len from emp_details;
select char_length(city) as total_len from emp_details;

select concat("India", " is", " in Asia") as merged;
select Name, Age, sex, concat(Name, " ", Age) as Name_age from emp_details;

select reverse ("India");
select reverse(Name) from emp_details;
select replace("Orange is a vegetable", "vegetable", "fruit");

select ltrim("       India         ");
select rtrim("       India         ");
select trim("       India         "); #delete both spaces
select position("fruit" in "orange is a fruit");
select ascii('a');


