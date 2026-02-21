-- Examines monthly revenue, order volume, and AOV trends over time.
-- Detects growth structure patterns and temporal anomalies.


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
SELECT
      DATE_TRUNC('month', o.order_purchased_at) order_month,
      SUM(olr.order_revenue) total_revenue,
      COUNT(o.order_id) total_orders,
      ROUND(SUM(olr.order_revenue)/COUNT(o.order_id), 2) average_order_value
FROM order_level_revenue olr
JOIN olist_project.orders o
      ON olr.order_id = o.order_id
GROUP BY DATE_TRUNC('month', o.order_purchased_at)
ORDER BY order_month;

