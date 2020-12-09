{%- macro cents_to_dollars(column_name, digits_to_round=2) -%}
    round(1.0 * {{column_name}} / 100, {{digits_to_round}}) as amount,
{%- endmacro -%}