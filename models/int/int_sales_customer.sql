select
    s.turnover,
    s.purchase_cost,
    c.name as customer_name,
    s.turnover - s.purchase_cost as margin
from {{ ref('stg_raw_sales') }} as s
left join {{ ref('stg_raw_customers') }} as c
    on s.customers_id = c.id   