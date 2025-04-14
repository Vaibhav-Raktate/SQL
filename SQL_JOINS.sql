create database college1;

use college1;

create table student(
	id int primary key,
    name varchar(50)
);

insert into student (id , name)
values
	(101,"Adam"),
    (102,"bob"),
    (103,"casey");
    
create table course(
	id int primary key,
    course varchar(50)
);
    
insert into course (id,course)
values
	(102,"english"),
    (105,"math"),
    (103,"science"),
    (107,"computer sci");
    
select * from student;
    
select * from course; 
    
select * 
from student as s
inner join course as c
on s.id=c.id;
    
select * 
from student as s
left join course as c
on s.id=c.id;
    
select * 
from student as s
right join course as c
on s.id=c.id;


select * 
from student as s
left join course as c
on s.id=c.id
union
select * 
from student as s
right join course as c
on s.id=c.id;   
    
select * from student as s
left join course as c
on s.id=c.id
where c.id is null;
    
select * from student as s
right join course as c
on s.id=c.id
where s.id is null;
    
create table employee(
	id int primary key,
    name varchar(50),
    manager_id int
);
    
insert into employee(id ,name,manager_id)
values
	(101,"adam",103),
    (102,"adam",104),
    (103,"adam",null),
    (104,"adam",103);
    
select * from employee;
    
select b.name as manager_name , a.name
from employee as a
join employee as b
on a.id = b.manager_id;
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    