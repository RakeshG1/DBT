{{ config(materialized='table') }}

with source_data as (

    SELECT Outlook, COUNT(DISTINCT Wind) AS Wind_Counts
    FROM Play_Tennis
    GROUP BY Outlook

)

select *
from source_data