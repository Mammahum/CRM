create table sales
(
customer_id integer constraint fk_sal_id references customers (customer_id),
first_name varchar(50),
product_id integer constraint nn_sal_pr_id not null,
sale_date date default sysdate,
seller_id integer constraint nn_sal_sel_id not null,
quantity integer default 0
);

alter table sales
modify product_id constraint fk_sal_pr_id references products (product_id);

alter table sales
modify seller_id constraint fk_sal_sel_id references sellers (seller_id);

alter table sales
modify quantity default 1;

insert into sales
values(1,'Humbat',234,to_date('15-AUG-23','dd-mm-yy'),50,1);

insert into sales
values(2,'Ali',235,to_date('02-sep-23','dd-mm-yy'),55,1);

insert into sales
values(3,'Olha',237,to_date('22-jaN-23','dd-mm-yy'),60,1);

insert into sales
values(4,'Mushfig',238,to_date('30-nov-23','dd-mm-yy'),50,1);

insert into sales
values(5,'Elvin',235,to_date('20-feb-21','dd-mm-yy'),60,2);

insert into sales
values(6,'Emil',240,to_date('07-mar-22','dd-mm-yy'),50,1);

insert into sales
values(8,'Tural',242,to_date('03-oct-20','dd-mm-yy'),50,1);

insert into sales
values(9,'Schamil',243,to_date('26-apr-20','dd-mm-yy'),55,1);

insert into sales
values(10,'David',244,to_date('18-aug-20','dd-mm-yy'),60,1);

insert into sales
values(4,'Mushfig',242,to_date('11-may-20','dd-mm-yy'),50,1);

insert into sales
values(8,'Tural',240,to_date('17-dec-23','dd-mm-yy'),60,1);

insert into sales
values(10,'David',238,to_date('03-apr-22','dd-mm-yy'),55,1);

insert into sales
values(1,'Humbat',237,to_date('30-sep-21','dd-mm-yy'),50,1);

commit;

select * from sales
order by customer_id;

drop table sales;