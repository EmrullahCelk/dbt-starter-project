SELECT 
    *,
    FLOOR(DATEDIFF(current_date, geboortedatum) / 365) AS leeftijd 

FROM {{ ref('model_medewerker_dienstjaren') }} 