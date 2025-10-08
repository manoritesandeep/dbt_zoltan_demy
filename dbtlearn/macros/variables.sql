{% macro learn_variables() %}

    {% set your_name_jinja = "Sandeep"%}
    {{ log("Hello " ~ your_name_jinja, info=True)}}

{% endmacro %}