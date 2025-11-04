sql
-- raw

with 

source as (

    select * from {{ source('raw', 'sales') }}

),

raw named as (

    select
        date_date,
        orders_id,
        revenue,
        quantity

    from source

)

select * from raw