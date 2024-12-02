USE mydb;

SELECT 
    *
FROM
    orders
        INNER JOIN
    order_details ON orders.id = order_details.order_id
        INNER JOIN
    employees ON orders.employee_id = employees.employee_id
        INNER JOIN
    customers ON orders.customer_id = customers.id
        INNER JOIN
    shippers ON orders.shipper_id = shippers.id
        INNER JOIN
    products ON products.id = order_details.product_id
        INNER JOIN
    suppliers ON suppliers.id = products.supplier_id
        INNER JOIN
    categories ON categories.id = products.category_id