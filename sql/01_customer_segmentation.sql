-- Segments customers into one-time and repeat buyers based on delivered orders.
-- Evaluates whether revenue growth is acquisition-driven or retention-led.


WITH customer_segmentation AS (
SELECT
         c.customer_unique_id,
         CASE
                 WHEN COUNT(o.order_id) = 1 THEN 'One-time'
                 ELSE 'Repeat'
                 END AS customer_type
FROM olist_project.orders o
JOIN olist_project.customers c
         ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_unique_id
)
, order_revenue AS (
SELECT
oi.order_id,
SUM(oi.price) AS order_revenue
FROM olist_project.order_item oi
JOIN olist_project.orders o
ON oi.order_id = o.order_id
WHERE order_status = 'delivered'
GROUP BY oi.order_id
)
, orders_with_type AS (
SELECT
o.order_id,
cs.customer_type
FROM olist_project.orders o
JOIN olist_project.customers c
ON o.customer_id = c.customer_id
JOIN customer_segmentation cs
ON c.customer_unique_id = cs.customer_unique_id
WHERE o.order_status = 'delivered'
)
SELECT
owt.customer_type,
COUNT(DISTINCT owt.order_id) AS total_orders,
SUM(orv.order_revenue) AS total_revenue,
Round(AVG(orv.order_revenue),2) AS avg_order_value
FROM orders_with_type owt
JOIN order_revenue orv
ON owt.order_id = orv.order_id
GROUP BY owt.customer_type;
