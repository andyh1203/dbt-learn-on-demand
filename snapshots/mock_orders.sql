{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
        target_database='data-build-tool',
        target_schema=new_schema,
        unique_key='order_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT * FROM `data-build-tool`.analytics.mock_orders

{% endsnapshot %}