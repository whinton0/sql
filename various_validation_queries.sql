-- (0) Employees in the 'Sales' department 
SELECT * FROM mydatabase.Employees WHERE department = 'Sales';

-- (1) Customer first and last name who own their home
SELECT 
    cc.first_name,
    cc.last_name
FROM 
    CustomerContact cc
JOIN Customers c ON cc.customer_id = c.customer_id
WHERE 
    c.home_ownership = 'Own';


-- (2) Products, total quantity sold, and total revenue for the year 2024
SELECT 
    p.product_name,
    SUM(od.quantity_ordered) AS units_sold,
    SUM(od.quantity_ordered * od.price_each) AS total_sales
FROM 
    OrderDetails od
JOIN Products p ON od.product_code = p.product_code
JOIN Orders o ON od.order_id = o.order_id
WHERE 
    YEAR(o.order_date) = 2024
GROUP BY 
    p.product_name;


-- (3) Join Orders with Customers and Employees
SELECT 
    o.order_id,
    cc.first_name AS customer_first,
    cc.last_name AS customer_last,
    e.first_name AS employee_first,
    e.last_name AS employee_last,
    o.order_date
FROM 
    Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN CustomerContact cc ON c.customer_id = cc.customer_id
JOIN Employees e ON o.employee_id = e.employee_id;


-- (4) Commission earned by each sales employee in December
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    SUM(od.quantity_ordered * od.price_each * (e.commission / 100)) AS december_commission
FROM 
    Employees e
JOIN Orders o ON e.employee_id = o.employee_id
JOIN OrderDetails od ON o.order_id = od.order_id
WHERE 
    e.department = 'Sales'
    AND MONTH(o.order_date) = 12
    AND YEAR(o.order_date) = 2024
GROUP BY 
    e.employee_id, e.first_name, e.last_name;


-- (5) Customers with name, email, and total dollar value of orders in 2024
SELECT 
    cc.first_name,
    cc.last_name,
    cc.email_address,
    SUM(od.quantity_ordered * od.price_each) AS total_order_value
FROM 
    CustomerContact cc
JOIN Customers c ON cc.customer_id = c.customer_id
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
WHERE 
    YEAR(o.order_date) = 2024
GROUP BY 
    cc.customer_id, cc.first_name, cc.last_name, cc.email_address;
