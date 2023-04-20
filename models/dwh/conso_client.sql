{{-
    config(
        materialized='incremental_stream',
        unique_key=['ID'],
        src_table='add_clients'
    )
-}}
select ID, FIRST_NAME, LAST_NAME, BIRTHDATE
from {{stream_ref('add_clients')}}