-- Analyzes category-level revenue split by customer type.
-- Identifies category dependency on one-time vs repeat buyers.


WITH customer_segmentation AS
(
SELECT
COUNT (o.order_id) delivered_order_count,	
c.customer_unique_id,
CASE
WHEN COUNT(o.order_id)=1 THEN 'one-time'
ELSE 'repeat'
END customer_type
FROM olist_project.customers c
JOIN olist_project.orders o
ON c.customer_id = o.customer_id
WHERE order_status = 'delivered'
GROUP BY c.customer_unique_id
)
, order_by_customer AS
(
SELECT
o.order_id,
cs.customer_unique_id,
cs.customer_type
FROM olist_project.orders o
JOIN olist_project.customers c
ON o.customer_id = c.customer_id
JOIN customer_segmentation cs
ON cs.customer_unique_id = c.customer_unique_id
WHERE o.order_status = 'delivered'
)
,order_per_product AS
(
SELECT
o.order_id,
ot.order_item_id,
p.product_category_name,
ot.price
FROM olist_project.order_item ot
LEFT JOIN olist_project.products p
ON ot.product_id = p.product_id
JOIN olist_project.orders o
ON o.order_id = ot.order_id
WHERE o.order_status = 'delivered'
)
, ordered_items AS
(SELECT
obc.order_id,
opp.price,
opp.product_category_name,
obc.customer_unique_id,
obc.customer_type,
opp.order_item_id
FROM order_per_product opp
JOIN order_by_customer obc
ON opp.order_id = obc.order_id
)
SELECT
product_category_name,
customer_type,
COUNT(DISTINCT customer_unique_id) unique_customers,
COUNT(order_item_id) order_item_count,
SUM(price) total_revenue
FROM ordered_items
GROUP BY product_category_name, customer_type;