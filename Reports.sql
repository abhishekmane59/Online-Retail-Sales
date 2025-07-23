-- 1. Total Orders per Customer
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 2. Product-wise Sales Summary
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM Product p
JOIN OrderItem oi ON p.product_id = oi.product_id
GROUP BY p.name;

-- 3. Revenue by Category
SELECT cat.category_name, SUM(oi.unit_price * oi.quantity) AS total_revenue
FROM Category cat
JOIN Product p ON cat.category_id = p.category_id
JOIN OrderItem oi ON p.product_id = oi.product_id
GROUP BY cat.category_name;

-- 4. Daily Sales Report
SELECT o.order_date, SUM(oi.unit_price * oi.quantity) AS daily_sales
FROM Orders o
JOIN OrderItem oi ON o.order_id = oi.order_id
GROUP BY o.order_date;

