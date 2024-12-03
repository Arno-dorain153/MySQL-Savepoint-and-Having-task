use java_task;
CREATE TABLE task ( EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT
);
 RENAME Table task TO savepoint_task;
INSERT into task (EmployeeID, Name, DepartmentID) values (101, " Alice", 1);
savepoint a; 
insert into task (EmployeeID, Name, DepartmentID) values (102, " liz", 2);
insert into task (EmployeeID, Name, DepartmentID) values (103, " dorin", 3);
insert into task (EmployeeID, Name, DepartmentID) values (104, " tom", 4);
rollback to a;
delete from task where EmployeeID=101;
SAVEPOINT b;
rollback to a;
