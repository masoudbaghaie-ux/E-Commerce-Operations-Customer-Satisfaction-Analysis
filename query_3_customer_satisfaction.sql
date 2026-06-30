SELECT 
    CASE p.product_category_name
        WHEN 'seguros_e_servicos' THEN 'Security And Services'
        WHEN 'fraldas_e_higiene' THEN 'Diapers And Hygiene'
        WHEN 'casa_conforto_2' THEN 'Home Comfort 2'
        WHEN 'moveis_escritorio' THEN 'Office Furniture'
        WHEN 'telefonia_fixa' THEN 'Fixed Telephony'
        WHEN 'portateis_cozinha_e_preparadores_de_alimentos' THEN 'Kitchen Portables & Food Prep'
        WHEN 'audio' THEN 'Audio'
        WHEN 'fashion_roupa_feminina' THEN 'Fashion Female Clothing'
        WHEN 'utilidades_domesticas' THEN 'Kitchenware'
        WHEN 'pc_gamer' THEN 'Pc Gamer'
        ELSE INITCAP(REPLACE(p.product_category_name, '_', ' '))
    END AS product_category,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(AVG(EXTRACT(DAY FROM (o.order_delivered_customer_date::timestamp - o.order_purchase_timestamp::timestamp))), 2) AS avg_delivery_days,
    ROUND(AVG(r.review_score), 2) AS avg_review_score
FROM olist_orders o
JOIN olist_order_items i ON o.order_id = i.order_id
JOIN olist_products p ON i.product_id = p.product_id
JOIN olist_reviews r ON o.order_id = r.order_id
WHERE o.order_status = 'delivered' 
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY p.product_category_name;