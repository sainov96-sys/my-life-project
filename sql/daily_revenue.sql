SELECT
    DATE(order_created_at) AS order_date,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(order_amount) AS total_revenue
FROM orders
WHERE order_status = 'completed'
GROUP BY DATE(order_created_at)
ORDER BY order_date;

