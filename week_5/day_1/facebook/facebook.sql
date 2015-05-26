-- CREATE DATABASE facebook;

DROP TABLE people;

CREATE TABLE people
(
  id bigserial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL,
  dob date CHECK (dob < '1/16/2000'),
  relationship varchar(50),
  friends int2 default 0,
  city varchar(20)
);

INSERT INTO people (first, last) VALUES ('jeremy', 'marer');
INSERT INTO people (first, last) VALUES ('lauren', 'spencer');
INSERT INTO people (first, last) VALUES ('james', 'mcbennett');
INSERT INTO people (first, last, dob, relationship) VALUES ('jennifer', 'mah', '4/20/1989', 'in a relationship');
INSERT INTO people (first, last) VALUES ('sead', 'causevic');
INSERT INTO people (first, last, dob) VALUES ('jill', 'smith', '1/1/2000');