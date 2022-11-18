# Exploratory Data Analysis of online retail_store
## Table Description
### customers
*columns: customer_id; first_name; last_name; birth_date; phone; address; city; state; point*
### orders
*columns: order_id; customer_id, order_date; status; comments; shipped_date; shipper_id*
### order_items
*columns: order_id; product_id; quantity; unit_price*
### order_item_notes
*columns: note_id; order_id; product_id; note*
### products
*columns: product_id; name; quantity_in_stock; unit_price*
### shippers
*columns: shipper_id; name*
## Challenges
1. The management wants to reward their loyal customers.Find the top 5 customers based on point. output thier first_name, last_name and their points in descending order.
2. The management wants to know the state where their customers are mostly located in order to draw efficient shipping plan. output state and number of customer in that state in descending order
- The management will also want to know the performance of the products they have in store by checking 
3. The total sales for all the products. output product_id, name, and total sales.
4. The top 10 perfrming product by quantity sold. output product_id, name, quantity sold in descending order.
5. The product(s) that have sold the least
6. The products that have never been ordered
