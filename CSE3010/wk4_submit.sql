CREATE TABLE order_details(
	order_detail_id integer PRIMARY KEY,
	order_id integer NOT NULL,
	order_date date,
	quantity integer,
	notes varchar(200)
);
\dt;
\d order_details;
alter table order_details alter column notes set default 'Standard shipping';
\d order_details;
alter table order_details add order_uuid uuid;
\d order_details;
alter table order_details add constraint quantitychk check (quantity > 0);
\d order_details;
alter table order_details rename column notes to memo;
\d order_details;
alter table order_details drop order_id;
\d order_details;
drop table order_details;
\dt;