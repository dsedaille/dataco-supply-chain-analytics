-- Product, Profitability, and Operations Analysis
-- DataCo Supply Chain Analytics

-- Top Product Categories by Total Sales

SELECT
    category_name,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit,
    ROUND(AVG(profit_margin_pct), 2) AS avg_profit_margin_pct,
    ROUND(AVG(order_item_discount_rate) * 100, 2) AS avg_discount_rate_pct,
    ROUND(AVG(is_late_delivery) * 100, 2) AS late_delivery_rate_pct
FROM dataco_orders
GROUP BY category_name
ORDER BY total_sales DESC
LIMIT 10;


-- Highest Average Profit Margin by Product Category

SELECT
    category_name,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit,
    ROUND(AVG(profit_margin_pct), 2) AS avg_profit_margin_pct,
    ROUND(AVG(order_item_discount_rate) * 100, 2) AS avg_discount_rate_pct,
    ROUND(AVG(is_late_delivery) * 100, 2) AS late_delivery_rate_pct
FROM dataco_orders
GROUP BY category_name
ORDER BY avg_profit_margin_pct DESC
LIMIT 10;


-- Order Status Summary

SELECT
    order_status,
    COUNT(*) AS total_orders,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dataco_orders), 2) AS order_share_pct,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit,
    ROUND(AVG(is_late_delivery) * 100, 2) AS late_delivery_rate_pct,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay
FROM dataco_orders
GROUP BY order_status
ORDER BY total_orders DESC;
