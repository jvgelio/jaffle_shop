with orders as (
    select * from {{ ref('orders') }}
),

products as (
   select * from {{ ref('stg_products') }}
)

select 
products.id,
products.Product_id,
products.Product_Name,
sum(orders.amount)
 from products

join orders
on orders.product_id = products.id