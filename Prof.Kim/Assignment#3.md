## Assignment#3 from Professor Kim
  


2. **Write the following queries in SQL, using the university schema. I suggest you actually run these queries on a database, using the sample data.**

~~~mysql
# search base

use university;

show table status;
show tables;
~~~



(1)  Find the titles of courses in the Comp. Sci. department that have 3 credits.

```mysql
select title from course
where dept_name = 'Comp. Sci.' and credits = 3;
```



(2)  Find the IDs of all students who were taught by an instructor named Einstein; make sure there are no duplicates in the result.

~~~mysql
select distinct student.ID
from (student join takes using(ID))
    join (instructor join teaches using(ID))
        using(course_id, sec_id, semester, year)
where instructor.name = 'Einstein';
~~~



(3)  Find the highest salary of any instructor.

~~~mysql
select * from instructor;

select max(salary)
from instructor;
~~~



(4)  Find all instructors earning the highest salary (there may be more than one with the same salary).

~~~mysql
select name
from instructor
where salary = (
  select max(salary)
  from instructor
);
~~~



(5)  Find the enrollment of each section that was offered in Autumn 2009.

~~~mysql
select course_id, sec_id, count(ID)
from section natural join takes
where semester = 'Fall' and year = 2009 group by course_id, sec_id;
~~~



(6)  Find the maximum enrollment, across all sections, in Autumn 2009.

~~~mysql
select max(enrollment) AS max_enroll
from(
    select course_id, sec_id, count(*) as enrollment from takes
    where semester = 'Fall' and year = '2009' group by course_id, sec_id
) as NEW_TABLE;
~~~



(7)  Find the sections that had the maximum enrollment in Autumn 2009.

~~~mysql
select course_id, sec_id
from(
    select course_id, sec_id, count(*) as enrollment from takes
    where Semester = 'Fall' and year = '2009' group by course_id, sec_id
    ) as NEW_TABLE
where enrollment >= all(
    select count(*) as EN from takes
    where semester = 'Fall' and year = '2009' group by course_id, sec_id
);
~~~





3. **Write the following inserts, deletes or updates in SQL, using the university schema.**

(1)  Increase the salary of each instructor in the Comp. Sci. department by 10%.

~~~mysql
update instructor
set salary = salary * 1.10
where dept_name = 'Comp. Sci.';
~~~



(2)  Delete all courses that have never been offered (that is, do not occur in the section relation).

~~~mysql
set foreign_key_checks = 0; # DBMS Exception

delete from course
where course_id not in(
    select course_id from section
    );

set foreign_key_checks = 1; # Reset
~~~



(3)  Insert every student whose tot cred attribute is greater than 100 as an instructor in the same department, with a salary of $10,000.

~~~mysql
ALTER TABLE instructor ALTER CHECK instructor_chk_1 NOT ENFORCED;
# Check constraint enforcement

insert into instructor
select ID, name, dept_name, 10000
from student
where tot_cred > 100;
~~~
