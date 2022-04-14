# create table lessons (
#   id integer PRIMARY KEY,
#   name character varying(255) not null,
#   description text,
#   front_end boolean default false,
#   back_end boolean default false,
#   price numeric(8,2) default 0.0,
#   created_at timestamp without time zone not null,
#   updated_at timestamp without time zone not null
# );

# insert into lessons (id, name, description, price, created_at, updated_at, back_end)
# values (1, 'Ruby', 'Ruby is an interpreted, high-level, general-purpose programming language.', 199.99, current_timestamp, current_timestamp, true);

# update lessons set description = 'Web framework' where id = '1';

# create table students (
#   id serial PRIMARY KEY,
#   first_name text,
#   middle_name text,
#   last_name text,
#   age integer,
#   location text
# );

# insert into students (first_name, middle_name, last_name, age, location)
# values('Finn', 'Blank', 'Lam', 25, 'Manila');

# select * from students order by age desc;
# select AVG(age) from students;
# select * from students where location = 'Manila';
# select count(id) from students;

# create table classrooms (
#   id serial PRIMARY KEY,
#   student_id integer,
#   section text
# );

# insert into classrooms (student_id, section)
# values (10, 'C');

# select c.section, s. first_name, s.last_name from students s inner join classrooms c on c.student_id = s.id;
# select c.section, s. first_name, s.last_name from students s left join classrooms c on c.student_id = s.id;
# select c.section, s. first_name, s.last_name from students s right join classrooms c on c.student_id = s.id;
# select c.section, s. first_name, s.last_name from students s full join classrooms c on c.student_id = s.id;

# select
#   c.section,
#   s.first_name,
#   s.last_name
# from students s
#   full join classrooms c on c.student_id = s.id;

# SELECT
#   c.section,
#   s.first_name,
#   s.last_name,
#   s.id
# FROM students s
#   FULL JOIN classrooms c on c.student_id = s.id
# WHERE
#   c.section = 'A'
#   AND s.id > 1
# ORDER BY
#   s.id DESC;