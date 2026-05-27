COPY (
    SELECT p.category, SUM(p.price * oi.quantity) AS total_revenue
FROM products AS p
JOIN order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY total_revenue DESC
) TO STDOUT WITH CSV HEADER;