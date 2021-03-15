create table X
(A  number(2),
 B  varchar2(2));
 
 create table Y
 (A number(2),
  C varchar2(2));
  
desc X;

insert into X values (1, 'a');
insert into X values (1, 'a');
insert into X values (1, 'a');
insert into X values (2, 'b');
insert into X values (3, 'b');
insert into X values (5, 'c');

select * from X;

insert into Y values (1, 'p');
insert into Y values (1, 'p');
insert into Y values (2, 'q');
insert into Y values (4, 'r');
insert into Y values (6, 's');

select * from Y;

commit;

select distinct A from X
union all
select A from Y;

