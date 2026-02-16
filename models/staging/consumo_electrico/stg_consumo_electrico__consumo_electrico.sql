with src_consumo as (
    select *
    from {{ source("src_consumo_electrico", "consumo_zonas") }}
)

select
    CONSUMPTION_KWH,
    TEMPERATURE,
    TS,
    ZONE_ID,
    upper(replace(trim(ZONE_NAME), ' ', '_')) as ZONE_NAME
from src_consumo
