{{config(materialized='table')}}

SELECT
    *
FROM
    {{ source('assigment_4_ae', 'taxi_trip') }}
WHERE
    pickup_community_area = 8