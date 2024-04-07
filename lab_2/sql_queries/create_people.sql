DROP TABLE IF EXISTS superstore.people;
CREATE TABLE superstore.people(
   Person VARCHAR(17) NOT NULL PRIMARY KEY
  ,Region VARCHAR(7) NOT NULL
);
INSERT INTO superstore.people(Person,Region) VALUES ('Anna Andreadi','West');
INSERT INTO superstore.people(Person,Region) VALUES ('Chuck Magee','East');
INSERT INTO superstore.people(Person,Region) VALUES ('Kelly Williams','Central');
INSERT INTO superstore.people(Person,Region) VALUES ('Cassandra Brandow','South');
