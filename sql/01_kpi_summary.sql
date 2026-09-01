-- Executive KPI Summary
-- DataCo Supply Chain Analytics

SELECT
    COUNT(*) AS total_orders,
    SUM(is_late_delivery) AS late_orders,
    COUNT(*) - SUM(is_late_delivery) AS on_time_orders,
    ROUND(SUM(is_late_delivery) * 100.0 / COUNT(*), 2) AS late_delivery_rate_pct,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(order_profit_per_order), 2) AS total_profit,
    ROUND(AVG(days_for_shipping_real), 2) AS avg_actual_shipping_days,
    ROUND(AVG(days_for_shipment_scheduled), 2) AS avg_scheduled_shipping_days,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay
FROM dataco_orders;
