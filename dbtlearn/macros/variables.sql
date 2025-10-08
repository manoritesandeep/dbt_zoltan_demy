{% macro learn_variables() %}

    {# Jinja Variable #}
    {% set your_name_jinja = "Sandeep"%}
    {{ log("Hello " ~ your_name_jinja, info=True)}}

    {# dbt Variable: used with --vars '{variable: value}' #}
    {{ log("Hello dbt user: " ~ var("user_name") ~ "!", info=True) }}
    {# {{ log("Hello dbt user: " ~ var("user_name", "DEFAULT USER HERE") ~ "!", info=True) }} #}
    {# dbtlearn % dbt run-operation learn_variables --vars '{user_name: SandeepSolanki}' #}

{% endmacro %}