COPY (
    SELECT c.name, SUM(p.price * oi.quantity) AS total_spent
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_items AS oi ON o.order_id = oi.order_id
JOIN products AS p ON p.product_id = oi.product_id
    WHERE c.country LIKE 'Japan'
GROUP BY c.name
    HAVING SUM(p.price * oi.quantity) > 500
    ORDER BY total_spent DESC
) TO STDOUT WITH CSV HEADER;