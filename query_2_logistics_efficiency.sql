SELECT 
    COALESCE(t.product_category_name_english, p.product_category_name) AS category_english,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(AVG(EXTRACT(DAY FROM (o.order_delivered_customer_date::timestamp - o.order_purchase_timestamp::timestamp)))) AS avg_delivery_days,
    ROUND(AVG(EXTRACT(DAY FROM (o.order_estimated_delivery_date::timestamp - o.order_delivered_customer_date::timestamp)))) AS avg_days_ahead_of_estimate,
    ROUND(AVG(EXTRACT(DAY FROM (o.order_delivered_customer_date::timestamp - o.order_purchase_timestamp::timestamp)))) + (COUNT(DISTINCT o.order_id) / 1000000.0) AS tie_breaker_metric
FROM olist_orders o
JOIN olist_order_items i ON o.order_id = i.order_id
JOIN olist_products p ON i.product_id = p.product_id
LEFT JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
WHERE o.order_status = 'delivered' 
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY p.product_category_name, t.product_category_name_english;