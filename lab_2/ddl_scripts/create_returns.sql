-- superstore."returns" definition

-- Drop table

-- DROP TABLE superstore."returns";

CREATE TABLE superstore."returns" (
	returned varchar(17) NOT NULL,
	order_id varchar(17) NOT NULL
);