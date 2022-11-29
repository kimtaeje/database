select * from student;
select distinct dept_name from student;
select course_id,title from course where dept_name='Biology';
select * from course where dept_name='Biology' or credits=4;
select * from student where name like 'S%';
select * from instructor where salary between 70000 and 80000;
select * from instructor order by salary desc;