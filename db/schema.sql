DROP TABLE IF EXISTS persons CASCADE;
DROP TABLE IF EXISTS licenses;

-- TODO: create "persons" and "licenses" tables


CREATE TABLE persons (
  id serial PRIMARY KEY,
  first_name text NOT NULL,
  last_name text NOT NULL
);

-- pk stands for Primary Key

CREATE TABLE licenses (
  id serial PRIMARY KEY,
  address text NOT NULL,
  eye_color text NOT NULL,
  date_of_birth date NOT NULL,
  person_id integer UNIQUE NOT NULL REFERENCES persons(id) ON DELETE CASCADE
)