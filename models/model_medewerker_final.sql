SELECT 
    model_medewerker_final.*, 
    model_medewerker_dienstjaren.dienstjaren, 
    model_medewerker_werkstatus.werkstatus,
    model_medewerker_leeftijd.leeftijd
FROM {{ ref('model_medewerker') }} AS model_medewerker_final 

Left join   
    {{ ref('model_medewerker_dienstjaren') }}
    ON model_medewerker_final.medewerkerid = model_medewerker_dienstjaren.medewerkerid

Left join
    {{ ref('model_medewerker_werkstatus')}}
    ON model_medewerker_final.medewerkerid = model_medewerker_werkstatus.medewerkerid 

left join
    {{ref ('model_medewerker_leeftijd')}}
    ON model_medewerker_final.medewerkerid = model_medewerker_leeftijd.medewerkerid