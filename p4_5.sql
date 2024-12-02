USE mydb;

SELECT 
    categories.name AS category_name,
    COUNT(orders.id) AS total_orders_per_category_name,
    AVG(order_details.quantity) AS average_quantity_per_category_name
FROM
    orders
        RIGHT JOIN
    order_details ON orders.id = order_details.order_id
        RIGHT JOIN
    employees ON orders.employee_id = employees.employee_id
        LEFT JOIN
    customers ON orders.customer_id = customers.id
        RIGHT JOIN
    shippers ON orders.shipper_id = shippers.id
        RIGHT JOIN
    products ON products.id = order_details.product_id
        RIGHT JOIN
    suppliers ON suppliers.id = products.supplier_id
        INNER JOIN
    categories ON categories.id = products.category_id
GROUP BY categories.name
HAVING average_quantity_per_category_name > 21