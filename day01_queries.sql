Day 1: Filtering, sorting, and grouping

CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(30),
    amount DECIMAL(10, 2)
);

INSERT INTO sales VALUES
(1, 'Notebook', 'Stationery', 120),
(2, 'Pen', 'Stationery', 30),
(3, 'Headphones', 'Electronics', 1500),
(4, 'Keyboard', 'Electronics', 900),
(5, 'Planner', 'Stationery', 250);

-- View all sales
SELECT * FROM sales;

-- Find sales above 200
SELECT * FROM sales
WHERE amount > 200;

-- Sort from highest to lowest amount
SELECT * FROM sales
ORDER BY amount DESC;

-- Calculate total sales per category
SELECT category, SUM(amount) AS total_sales
FROM sales
GROUP BY category;
