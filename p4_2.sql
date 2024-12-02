USE mydb;

SELECT 
    count(orders.id)
FROM
    orders
        right JOIN
    order_details ON orders.id = order_details.order_id
        right JOIN
    employees ON orders.employee_id = employees.employee_id
        left JOIN
    customers ON orders.customer_id = customers.id
        right JOIN
    shippers ON orders.shipper_id = shippers.id
        right JOIN
    products ON products.id = order_details.product_id
        right JOIN
    suppliers ON suppliers.id = products.supplier_id
        inner JOIN
    categories ON categories.id = products.category_id
    -- still have 518 like with inner joins. it means that there are no missing keys in any table so it can be joined successfully