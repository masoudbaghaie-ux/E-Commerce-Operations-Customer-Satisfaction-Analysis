SELECT 
    CASE p.product_category_name
        WHEN 'cama_mesa_banho' THEN 'Bed Bath Table'
        WHEN 'beleza_saude' THEN 'Health Beauty'
        WHEN 'esporte_lazer' THEN 'Sports Leisure'
        WHEN 'informatica_acessorios' THEN 'Computers Accessories'
        WHEN 'utilidades_domesticas' THEN 'Housewares'
        WHEN 'moveis_decoracao' THEN 'Furniture Decor'
        WHEN 'relogios_presentes' THEN 'Watches Gifts'
        WHEN 'brinquedos' THEN 'Toys'
        WHEN 'automotivo' THEN 'Auto'
        WHEN 'telefonia' THEN 'Telephony'
        ELSE INITCAP(REPLACE(p.product_category_name, '_', ' '))
    END AS product_category,
    COUNT(DISTINCT o.order_id) AS orders,
    SUM(i.price) AS total_revenue,
    SUM(i.freight_value) AS freight_paid
FROM olist_orders o
JOIN olist_order_items i ON o.order_id = i.order_id
JOIN olist_products p ON i.product_id = p.product_id
WHERE o.order_status = 'delivered'
GROUP BY p.product_category_name;