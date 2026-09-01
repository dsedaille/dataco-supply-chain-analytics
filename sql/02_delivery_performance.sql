-- Delivery Performance Analysis
-- DataCo Supply Chain Analytics

-- Late Delivery Rate by Shipping Mode

SELECT
    shipping_mode,
    COUNT(*) AS total_orders,
    SUM(is_late_delivery) AS late_orders,
    COUNT(*) - SUM(is_late_delivery) AS on_time_orders,
    ROUND(SUM(is_late_delivery) * 100.0 / COUNT(*), 2) AS late_delivery_rate_pct,
    ROUND(AVG(days_for_shipping_real), 2) AS avg_actual_shipping_days,
    ROUND(AVG(days_for_shipment_scheduled), 2) AS avg_scheduled_shipping_days,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit
FROM dataco_orders
GROUP BY shipping_mode
ORDER BY late_delivery_rate_pct DESC;


-- Late Delivery Rate by Customer Segment

SELECT
    customer_segment,
    COUNT(*) AS total_orders,
    SUM(is_late_delivery) AS late_orders,
    COUNT(*) - SUM(is_late_delivery) AS on_time_orders,
    ROUND(SUM(is_late_delivery) * 100.0 / COUNT(*), 2) AS late_delivery_rate_pct,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit
FROM dataco_orders
GROUP BY customer_segment
ORDER BY late_delivery_rate_pct DESC;


-- Late Delivery Rate by Market

SELECT
    market,
    COUNT(*) AS total_orders,
    SUM(is_late_delivery) AS late_orders,
    COUNT(*) - SUM(is_late_delivery) AS on_time_orders,
    ROUND(SUM(is_late_delivery) * 100.0 / COUNT(*), 2) AS late_delivery_rate_pct,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit
FROM dataco_orders
GROUP BY market
ORDER BY late_delivery_rate_pct DESC;


-- Top 10 Order Regions by Late Delivery Rate

SELECT
    order_region,
    COUNT(*) AS total_orders,
    SUM(is_late_delivery) AS late_orders,
    COUNT(*) - SUM(is_late_delivery) AS on_time_orders,
    ROUND(SUM(is_late_delivery) * 100.0 / COUNT(*), 2) AS late_delivery_rate_pct,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit
FROM dataco_orders
GROUP BY order_region
ORDER BY late_delivery_rate_pct DESC
LIMIT 10;
