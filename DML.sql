select * from customers;
select * from sales;
select * from customer_locations;
select * from products;
select * from sellers;

select *
from customers
where length(first_name)>6;

select phone, substr(phone,1,3)
from customers
where phone like '___.___.___';

select * 
from customers
where substr(first_name,-1)='l';

select *
from sales
where months_between(sysdate, sale_date)>12;

select first_name, phone, replace(phone,'.','-')
from customers;

select first_name||'- '||salary salary
from sellers;

select sale_date, round(sale_date,'mm'), trunc(sale_date,'mm')
from sales;

select sale_date, add_months(sale_date,6)after_six_months, last_day(sale_date) last_day
from sales;

select *
from customers
where instr(lower(first_name),'a',1)>0;

select *
from customers
where instr(address,' ')>0;

select first_name, to_char(sale_date, 'fmddth "of" Month "," yyyy') sale_date
from sales;

select first_name, salary, to_char(salary+salary*0.02,'$99,999.00')
from sellers;

select first_name, phone, nvl2(phone, 'Phone exist','No phone number')
from customers;

select product_name, product_model, price,
case
when price < 25000 then 'Cheap car'
when price between 25000 and 30000 then 'Middle price'
when price > 30000 then 'High price'
else 'Not found'
end price_level
from products;