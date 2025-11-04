with 

source as (

    select * from {{ source('raw', 'ship') }}

),

raw as (

    select
        orders_id,
       cast ( shipping_fee as int64) as shipping_fee
       logcost,
        ship_cost

    from source

)

select * from raw


