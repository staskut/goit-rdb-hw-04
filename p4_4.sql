USE mydb;

SELECT 
	categories.name as category_name,
    count(orders.id) as total_orders_per_category_name,
    avg(order_details.quantity) as average_quantity_per_category_name
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
group by 
categories.name