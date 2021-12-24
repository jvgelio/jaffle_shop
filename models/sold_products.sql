with orders as (
    select * from {{ ref('orders') }}
),

products as (
   select * from {{ ref('stg_products') }}
)

select 
products.id,
sum(orders.amount) as value_sold
 from products

join orders
on orders.product_id = products.id
group by products.id
order by value_sold desc