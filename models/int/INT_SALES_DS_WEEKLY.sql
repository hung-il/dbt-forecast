select
    concat(store, '#', dept) store_dept_pk,
    store,
    Dept,
    to_date(date, 'DD/MM/YYYY')::timestamp week_date,
    weekly_Sales
from {{ref('STG_SALES_DS_ENHANCED')}} sde