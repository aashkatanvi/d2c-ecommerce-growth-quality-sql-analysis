-- Ranks customers by total revenue and calculates cumulative revenue contribution.
-- Assesses whether revenue is concentrated among few customers or broadly distributed.


WITH revenue_per_customer AS
(
SELECT
SUM(ot.price) total_revenue,
c.customer_unique_id
FROM olist_project.customers c
JOIN olist_project.orders o
ON c.customer_id = o.customer_id
JOIN olist_project.order_item ot
ON o.order_id = ot.order_id
WHERE order_status = 'delivered'
GROUP BY c.customer_unique_id
)
, customer_rank AS
(
SELECT
ROW_NUMBER() OVER(ORDER BY total_revenue DESC) revenue_rank,
customer_unique_id,
total_revenue
FROM revenue_per_customer
)
, cumulative_rank AS
(SELECT
revenue_rank,
SUM(total_revenue) OVER(ORDER BY total_revenue DESC) cumulative_revenue,
customer_unique_id,
total_revenue
FROM customer_rank
)	
SELECT
cumulative_revenue,
customer_unique_id,
total_revenue,
cumulative_revenue / SUM(total_revenue) OVER () AS cumulative_revenue_PCT
FROM cumulative_rank;