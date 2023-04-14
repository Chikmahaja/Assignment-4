{{config(materialized='table')}}

SELECT *
FROM {{ source('assigment_4_ae', 'taxi_trip') }}
WHERE trip_total >
  (SELECT AVG(trip_total)
   FROM {{ source('assigment_4_ae', 'taxi_trip') }})