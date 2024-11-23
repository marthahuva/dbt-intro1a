with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        quantity

    from source

)

select 
    product_id,
    SUM(quantity) AS quantity
from renamed
GROUP BY product_id
