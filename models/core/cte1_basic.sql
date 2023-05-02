with _AIRBYTE_RAW_COINCAP as(
    select value:id::varchar, value:rank::integer, value:symbol::varchar, value:name::varchar, value:supply::integer, value:maxSupply::integer from {{source('cte1_source', '_AIRBYTE_RAW_COINCAP')}}, lateral flatten(input => _AIRBYTE_DATA:data)
)

select * from _AIRBYTE_RAW_COINCAP
