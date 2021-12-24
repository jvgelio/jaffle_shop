select row_number() over(order by Product_ID) as id, Product_ID, Product_Name, URL, Listing_Price, Sale_Price, Discount, Brand
from {{ source('products', 'products')}}
where Product_ID is not null
and Brand is not null