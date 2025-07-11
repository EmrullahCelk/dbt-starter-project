SELECT
    *,
    --  Aantal jaren werkzaam in het bedrijf
    FLOOR(DATEDIFF(current_date, Datum_in_dienst__ivm_dienstjaren_) / 365) AS dienstjaren

FROM {{ ref('stg_medewerker') }}
