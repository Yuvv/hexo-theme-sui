<!DOCTYPE html>
<html>
<head>
  {% include "partial/head.swig" %}

  <title>{% block title %}{% endblock %}</title>

  <script type="text/javascript" src="{{ theme.statics.jquery }}"></script>
  <script type="text/javascript" src="{{ theme.statics.semantic_ui.js }}"></script>
  <link rel="stylesheet" type="text/css" href="{{ theme.statics.semantic_ui.css }}">

  <link rel="stylesheet" type="text/css" href="{{ url_for('css/main.css') }}">
  <script type="text/javascript" src="{{ url_for('js/main.js') }}"></script>

  {% block head %}{% endblock %}
</head>
<body>
  <header id="page-header">
    {% include "partial/header.swig" %}
  </header>
  <section id="page-body">
    {% block content %}{% endblock %}
  </section>
  <footer id="page-footer">
    {% include "partial/footer.swig" %}
  </footer>

{% if theme.back_to_top %}
  {% include "partial/back2top.swig" %}
{% endif %}

{% if theme.carnival.enabled and page.comments %}
  {% include "partial/carnival_comment.swig" %}
{% endif %}

  {% block after_footer %}{% endblock %}
</body>
</html>