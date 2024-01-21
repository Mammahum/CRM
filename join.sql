select c.customer_id, c.first_name,s.sale_date, quantity, product_name, price
from customers c
join sales s
on c.customer_id=s.customer_id
join products p
on s.product_id=p.product_id
where price>40000;

select c.customer_id, c.first_name,s.sale_date, quantity, product_name, price
from customers c, sales s, products p
where c.customer_id=s.customer_id
and s.product_id=p.product_id
and price> 40000;


select c.first_name, email, sale_date, product_id 
from sales s
right outer join customers c
on s.customer_id=c.customer_id;

select c.first_name, email, sale_date, product_id 
from sales s, customers c
where s.customer_id(+)=c.customer_id;

select c.first_name, email, cl.country_id, c.address, city, sale_date, product_name, price, sel.first_name seller_first_name
from customers c
full outer join customer_locations cl 
on c.customer_id= cl.customer_id
full outer join sales s
on c.customer_id= s.customer_id
full outer join products p
on s.product_id= p.product_id
full outer join sellers sel
on s.seller_id= sel.seller_id;

select c.first_name, product_name, product_model, price, sale_date
from customers c
join sales s
on c.customer_id=s.customer_id
join products p
on s.product_id=p.product_id
where to_char(sale_date,'yyyy')=2023;

select *
from customers
natural join customer_locations;

select first_name, product_name
from customers
cross join products;






