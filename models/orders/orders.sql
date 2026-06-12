{{ config(
    materialized='table'
) }}


SELECT
    order_id,
    customer_id,
    order_date,
    product_name,
    quantity,
    unit_price,
    quantity * unit_price AS order_amount,
    order_status
FROM DBT_PRACTICE.RAW_SCHEMA.ORDERS