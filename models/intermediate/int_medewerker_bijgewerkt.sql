SELECT
  *,
  current_timestamp() AS bijgewerkt_op
FROM {{ ref('stg_medewerker') }}
