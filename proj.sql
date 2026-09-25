create database employee;
use employee;
 create table employees(
    emp_id int primary key,
    emp_name varchar(30),
    manager_id int DEFAULT 1
 );
 insert into employees VALUES
 (1,'niyati',null),
 (2,'neha',1),
 (3,'aahana',1),
 (4,'anushri',2);
 select 
 e.emp_name as employees,
 m.emp_name as manager
 from employees e 
 LEFT join employees m 
 on e.manager_id=m.emp_id;