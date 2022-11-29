-- 1. usage of \echo meta-command
\echo '======'
\echo 'Task1'
\echo '======'
\echo '-------------------------------------------'
\echo 'Submission: Week 5 Hands-on Assignment'
\echo 'name: <kimtaeje>'
\echo 'name:<2018068431>'
\echo 'section:(23360)'
\echo '--------------------------------------------'

\echo '======'
\echo 'Task 2'
\echo '======'
\echo 'drop table phonebook;'
\i DROP_phonebook.sql
\set ECHO all
\i CREATE_phonebook.sql

\set ECHO none

\i DROP_phonebook.sql
\i CREATE_phonebook.sql

\echo '======'
\echo 'Task 3'
\echo '======'


insert into phonebook values (12,'bob','010-1111-2222','database@test.com',28,'','2018-08-02');
select * from phonebook;

insert into phonebook (id,name,phone,age,regdate) values (15,'alice','010-2222-1111',21,'2021-03-12');
select* from phonebook;

\echo '======'
\echo 'Task 4'
\echo '======'

insert into phonebook values (12,'bob','010-2222-3333','database@test.com',28,'','2018-08-02');
insert into phonebook(id,name,phone,email,age,memo,regdate) values(12,'bob','010-2222-3333','database@test.com',28,'','2018-08-02') on conflict (id) DO NOTHING;
insert into phonebook(id,name,phone,email,age,memo,regdate) values(12,'bob','010-2222-3333','database@test.com',28,'','2018-08-02') on conflict (id) DO UPDATE SET phone=EXCLUDED.phone;
select*from phonebook;

\echo '======'
\echo 'Task 5'
\echo '======'

update phonebook
set (phone,age) = ('010-1111-2222',34)
where id =12;

select * from phonebook;






