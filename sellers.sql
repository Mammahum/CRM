create table sellers
(
seller_id integer constraint pr_sal_sel_id primary key,
first_name varchar2(50)constraint nn_staff_name not null,
last_name varchar2(50),
phone_number varchar2(30) constraint un_staff_phone unique,
hire_date date default sysdate,
salary number (8,2) default 1000
);

create sequence seq_sellers
start with 50
increment by 5
maxvalue 100;

insert into sellers
values(seq_sellers.nextval, 'Kamil', 'Miller', '223.445.676', to_date('08-jan-21','dd-mm-yy'), 5000);

insert into sellers
values(seq_sellers.nextval, 'Alina', 'Smith', '223.435.276', to_date('01-feb-21','dd-mm-yy'), 3000);

insert into sellers
values(seq_sellers.nextval, 'Lucas', 'Davis', '563.485.266', to_date('21-jan-22','dd-mm-yy'), 2500);

commit;

select * from sellers;