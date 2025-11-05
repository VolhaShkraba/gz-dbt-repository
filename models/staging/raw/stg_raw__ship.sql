-- int_sales_margin.sql
with 
source as (raw

    select * from {{ source('raw', 'ship') }}

),

raw named as (

    select
    orders_id,
    cast ( shipping_fee as int64) as shipping_fee,
    logcost,
    ship_cost,
    marge

    from source

)

select * from raw


