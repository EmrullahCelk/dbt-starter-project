SELECT 
    *,
    FLOOR(DATEDIFF(current_date, geboortedatum) / 365) AS leeftijd 

FROM {{ ref('stg_medewerker') }} 