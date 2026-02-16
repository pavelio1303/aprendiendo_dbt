with 

src_consumo as 
(
    select * from {{ source("src_consumo_electrico", "consumo_zonas")}}
)

select * from src_consumo