CREATE TABLE phonebook(
	id numeric PRIMARY KEY,
	name varchar(10) NOT NULL,
	phone varchar(14) DEFAULT '010-0000-0000',
	regDate DATE
);
