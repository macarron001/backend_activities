create table lessons (
  id integer PRIMARY KEY,
  name character varying(255) not null,
  description text,
  front_end boolean default false,
  back_end boolean default false,
  price numeric(8,2) default 0.0,
  created_at timestamp without time zone not null,
  updated_at timestamp without time zone not null
);

insert into lessons (id, name, description, price, created_at, updated_at, back_end)
values (1, 'Ruby', 'Ruby is an interpreted, high-level, general-purpose programming language.', 199.99, current_timestamp, current_timestamp, true);

update lessons set description = 'Web framework' where id = '1';

create table students (
  id serial PRIMARY KEY,
  first_name text,
  middle_name text,
  last_name text,
  age integer,
  location text
);

insert into students (first_name, middle_name, last_name, age, location)
values('Finn', 'Blank', 'Lam', 25, 'Manila');