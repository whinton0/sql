-- 1. Monthly revenue trend analysis
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month, SUM(amount) AS total_revenue
FROM Payments
GROUP BY month
ORDER BY month;

-- 2. Total revenue by product line
SELECT pl.line_name, SUM(od.quantity * p.MSRP) AS total_revenue
FROM OrderDetails od
JOIN Products p ON od.product_code = p.product_code
JOIN ProductLines pl ON p.productline_id = pl.productline_id
GROUP BY pl.line_name
ORDER BY total_revenue DESC;

-- 3. Orders handled per employee
SELECT e.name AS employee_name, COUNT(o.order_id) AS total_orders
FROM Employees e
JOIN Orders o ON e.employee_id = o.employee_id
GROUP BY e.name
ORDER BY total_orders DESC;

-- 4. Count of customers per segment
SELECT cs.segment_name, COUNT(csm.customer_id) AS customer_count
FROM CustomerSegmentMap csm
JOIN CustomerSegments cs ON csm.segment_id = cs.segment_id
GROUP BY cs.segment_name
ORDER BY customer_count DESC;

-- 5. Customer average order value
SELECT c.name AS customer_name, ROUND(AVG(p.amount), 2) AS avg_order_value
FROM Customers c
JOIN Payments p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.name
ORDER BY avg_order_value DESC
LIMIT 10;