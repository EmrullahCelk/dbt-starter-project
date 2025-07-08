SELECT * ,
    CASE 
        WHEN datumuitdienst is null THEN 'heden'
        ELSE 'niet in dienst'
    END AS werkstatus
FROM {{ ref('model_medewerker') }}