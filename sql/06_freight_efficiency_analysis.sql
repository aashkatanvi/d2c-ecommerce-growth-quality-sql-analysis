-- Calculates freight cost as a percentage of revenue at city level.
-- Identifies potential logistics pressure and margin compression risk.


WITH order_level AS
(
SELECT
o.order_id,
SUM(ot.price) AS order_revenue,
SUM(ot.freight_value) AS order_freight
FROM olist_project.order_item AS ot
JOIN olist_project.orders AS o
ON o.order_id = ot.order_id
WHERE o.order_status = 'delivered'
GROUP BY o.order_id
)

SELECT
c.customer_city,
COUNT(ol.order_id) AS total_orders,
SUM(ol.order_revenue) AS total_revenue,
SUM(ol.order_freight) AS total_freight,
ROUND(
SUM(ol.order_freight) / NULLIF(SUM(ol.order_revenue), 0) * 100,
2
) AS freight_pct_of_revenue,
ROUND (SUM(ol.order_revenue)/  COUNT(ol.order_id),2) AS AOV

FROM order_level AS ol
JOIN olist_project.orders AS o
ON ol.order_id = o.order_id
JOIN olist_project.customers AS c
ON c.customer_id = o.customer_id
GROUP BY c.customer_city

ORDER BY freight_pct_of_revenue DESC;
