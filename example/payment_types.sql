{{config(materialized='table')}}

SELECT *
FROM {{ source('assigment_4_ae', 'taxi_trip') }}
WHERE payment_type IS NOT NULL or payment_type != "Unknown"