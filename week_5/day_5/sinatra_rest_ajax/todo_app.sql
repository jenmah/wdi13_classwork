DROP TABLE items;

CREATE TABLE items (
  id serial4 primary key,
  item varchar(255),
  done boolean
);


INSERT INTO items (item, done) VALUES ('go to the shops', true);
INSERT INTO items (item, done) VALUES ('go on a run', false);