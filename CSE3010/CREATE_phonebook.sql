CREATE TABLE phonebook(
		id numeric PRIMARY KEY,
		name varchar(50) NOT NULL,
		phone varchar(100) DEFAULT '010-0000-0000',
		email varchar(100),
		age numeric DEFAULT 21,
		memo bytea,
		regDate date
);