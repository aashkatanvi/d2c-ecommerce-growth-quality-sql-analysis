-- Aggregates revenue and order metrics at city level.
-- Evaluates geographic scale and operational efficiency patterns.


WITH order_level_revenue AS
(SELECT
      o.order_id,
      SUM(ot.price) order_revenue
FROM olist_project.order_item ot
JOIN olist_project.orders o
      ON ot.order_id= o.order_id
WHERE o.order_status = 'delivered'
GROUP BY o.order_id
)
, revenue_by_city AS
(
SELECT
      c.customer_city,
      olr.order_id,
      olr.order_revenue
FROM order_level_revenue olr
JOIN olist_project.orders o
      ON olr.order_id = o.order_id
JOIN olist_project.customers c
      ON o.customer_id = c.customer_id
)
SELECT
      customer_city,
      SUM(order_revenue) total_revenue,
      COUNT(order_id) total_orders,
      ROUND(SUM(order_revenue)/COUNT(order_id),2) average_order_value
FROM revenue_by_city
GROUP BY customer_city;

