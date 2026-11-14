USE dats_collection;

-- 1. Total profit
SELECT SUM((selling_price - cost_price) * quantity) AS total_profit
FROM sales;

-- 2. Profit by item
SELECT item, SUM((selling_price - cost_price) * quantity) AS profit
FROM sales
GROUP BY item;

-- 3. Profit by platform
SELECT platform, SUM((selling_price - cost_price) * quantity) AS profit
FROM sales
GROUP BY platform;

-- 4. Profit by month
SELECT MONTH(sale_date) AS sale_month, SUM((selling_price - cost_price) * quantity) AS profit
FROM sales
GROUP BY MONTH(sale_date);