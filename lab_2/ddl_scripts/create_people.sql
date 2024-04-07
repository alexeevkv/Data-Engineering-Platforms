-- superstore.people definition

-- Drop table

-- DROP TABLE superstore.people;

CREATE TABLE superstore.people (
	person varchar(17) NOT NULL,
	region varchar(7) NOT NULL,
	CONSTRAINT people_pkey PRIMARY KEY (person)
);