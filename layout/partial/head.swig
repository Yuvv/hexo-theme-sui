<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

{% if page.keywords %}
  <meta name="keywords" content="{{ page.keywords }}" />
{% elif page.tags and page.tags.length %}
  <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% elif theme.keywords %}
  <meta name="keywords" content="{{ theme.keywords }}" />
{% endif %}