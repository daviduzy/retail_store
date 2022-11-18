-- top 5 customers based on points
-- output: first_name, last_name, phone, address, city, state, points
select first_name, last_name, phone, address, city, state, points
from customers
order by points desc
limit 5;

-- distribution of customers by state
-- output state and number of customers 
select state, count(*) as number_of_customers
from customers
group by state
order by number_of_customers desc;
-- Total sales for each product
-- output product_id, name, and total sales
-- step >> join products table with order_items table
-- step >> alias total_sale on sum (unitprice*quantity) 
select p. product_id, 
p. name, 
sum(o.quantity* o.unit_price) as total_sale
from order_items o
left join products p
using(product_id)
group by name;
-- most ordered product by quantity
-- output product_id, name, total_quantity_sold
-- step>> join products table with order_items table
-- step >>alias total_quantity_sold on sum(quantity) 
select p. product_id, 
p. name, 
sum(quantity) as total_quantity_sold
from order_items o
left join products p
using(product_id)
group by name
order by (total_quantity_sold) desc
limit 10;
-- products that have never been ordered
-- output product_id, name
-- step use subquery 
select product_id, name
from products
where product_id not in
(select product_id
from order_items)



