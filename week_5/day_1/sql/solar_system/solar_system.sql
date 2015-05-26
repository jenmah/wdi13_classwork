CREATE TABLE planets (
  id serial4 primary key,
  name varchar(20),
  year_length int4,
  day_length int4
);

CREATE TABLE satellites (
  id serial4 primary key,
  name varchar(20),
  year_length int4,
  day_length int4,
  planet_id int4
);

CREATE TABLE alien_species (
  id serial4 primary key,
  name varchar(20),
  average_age int4
);

CREATE TABLE solar_system (
  id serial4 primary key,
  planet_id int4 references planets(id),
  satellite_id int4 references satellites(id),
  alien_species_id int4 references alien_species(id)
);
