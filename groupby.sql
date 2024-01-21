select sel.seller_id, sel.first_name, count(*)total_sale
from sales s
join sellers sel
on s.seller_id=sel.seller_id
group by sel.first_name, sel.seller_id;

select country_id, count(*)
from customers
group by country_id
having count(*) > 1;

select to_char(sale_date,'yyyy'), sum(quantity)quantity_of_sales
from sales
group by to_char(sale_date,'yyyy');

select instr(lower(first_name),'a') name_with_a, count(*)
from customers
where phone is  not null
group by instr(lower(first_name), 'a')
having instr(lower(first_name),'a') > 2;



