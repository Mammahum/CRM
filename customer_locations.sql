create table customer_locations
(
customer_id integer constraint fk_loc_cus_id references customers (customer_id),
address varchar2(50),
postal_code varchar2(50),
city varchar2(50) constraint nn_loc_city not null,
country_id char(2) constraint ch_loc_c_id check (upper(country_id)=country_id),
country_name varchar2(50),
location_id integer constraint pk_loc_loc_id primary key
);

create sequence seq_loc
start with 1900
increment by 100;

alter table customer_locations
modify city constraint ch_cu_loc_city check (initcap(city)=city);

insert into customer_locations (customer_id, address, city, country_id, country_name, location_id)
values(1,'Neapol','Baku','AZ','Azerbaijan',seq_loc.nextval);

insert into customer_locations (customer_id, address, postal_code, city, country_id, country_name, location_id)
values(4,'R?ow Rosas','33-453', 'Madrid','SP','Spain',seq_loc.nextvall);

update customer_locations
set address='R?os Rosas'
where customer_id=4;

update customer_locations
set postal_code='28001'
where location_id=1300;

insert into customer_locations 
values(&id,'&str_address','&pos_code','&city','&coun_id','&coun_name',seq_loc.nextval);

update customer_locations
set country_name='Poland'
where location_id=1200;

commit;

select * from customer_locations;


