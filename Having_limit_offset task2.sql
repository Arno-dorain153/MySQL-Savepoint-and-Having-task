USE java_task;
SELECT * FROM java_task.having_task;
select Student_age ,COUNT(Student_age) as total_num_of  from   java_task.having_task   group by Student_age having COUNT(Student_age)<12;
select  * from java_task.having_task order by name desc limit 2;
select  * from java_task.having_task order by name desc limit 5 offset 2;
