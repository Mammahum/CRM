create table customers
(
customer_id integer constraint pk_cu_id primary key,
first_name varchar2(50) constraint nn_cu_name not null,
last_name varchar2(50) constraint nn_cu_surname not null,
email varchar2(100)constraint un_cu_email unique,
phone varchar2(30) constraint un_cu_phone_number unique,
address varchar2(50),
country_id varchar2(3),
constraint ch_cu_ci CHECK (UPPER(country_id) = country_id)
);

alter table customers
modify email constraint ch_cu_email check (upper(email)=email);

alter table customers
modify email constraint nn_cu_email not null;

insert into customers
values(1,'Humbat','Mammadov','MAMMAHUM','234.43.89','Neapol','AZ');

insert into customers
values(2,'Ali','Ahmadov','AHMADALI','564.76.12','Sahib Zeynalov','AZ');

insert into customers
values(3,'Olha','Sherba','SHERBOL','503.337.260','Majora Jakuba','PL');

insert into customers
values(4,'Mushfig','Hasanov','HASANMU','919.431.058','R?os Rosas','SP');

insert into customers
values(5,'Elvin','Taghiyev','TAGHIEL','484.258.49.97','Hudson St','US');

insert into customers (customer_id, first_name, last_name, email, address, country_id)
values (6,'Emil','Baghiyev','BAGHIEM','Rustem Rustemov','AZ');

insert into customers (customer_id, first_name, last_name, email, phone)
values (7,'Patrycja','Pogoda','POGOPAT','344.556.123');

insert into customers (customer_id, first_name, last_name, email, address, country_id)
values (8,'Tural','Mammadov','MAMMATUR','KHATAI','AZ');

insert into customers (customer_id, first_name, last_name, email, address, country_id)
values (9,'Schamil','Bayramov','BAYRASCH','Nagelsweg','GE');

insert into customers (customer_id, first_name, last_name, email, address, country_id)
values (10,'David','Martinez','MARTIDA','Cra. 80C','CO');


select * from customers;
select * from employees;
drop table customers;
delete from customers
where customer_id in (1,2,3,4);