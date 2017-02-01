{% extends '_layout.swig' %}

{% block title%} {{ config.title }} {% endblock %}

{% block content %}
<div class="ui text container">
{% for post in page.posts %}
  <div class="post-collapsed">
  <div class="post-collapsed-header">
    <h2 class="ui header">
    <div class="content">
    <a href="{{ url_for(post.path) }}">{{ post.title }}</a>&nbsp;&nbsp;&nbsp;&nbsp;
      {% if post.tags and post.tags.length %}
        {% for tag in post.tags %}
        <a href="{{ url_for(tag.path) }}" class="ui mini label">
        <i class="tag icon"></i>{{ tag.name }}</a>
        {% endfor %}
      {% endif %}
      <div class="sub header">
        <small>{{ __('post.posted') }}&nbsp;{{ date(post.date, config.date_format) }}</small>
      </div>
    </div>
    </h2>
  </div>
  <div class="post-collapsed-content"> 
  {% if post.description %}
    {{ post.description }}
  {% elif post.excerpt %}
      {{ post.excerpt }}
  {% elif theme.auto_excerpt.enabled %}
      {% set content = post.content | striptags %}
      {{ content.substring(0, theme.auto_excerpt.length) }}
      {% if content.length > theme.auto_excerpt.length %}...{% endif %}
  {% else %}
      {{ post.content }}
  {% endif %}
    <div class="post-collapsed-read-more">
      <a class="mini ui basic button" href="{{ url_for(post.path) }}">
      {{ __('post.read_more') }} &raquo;
      </a>
    </div>
  </div>
  </div>
  <div class="ui divider"></div>
{% endfor %}

{% include 'partial/pagination.swig' %}
</div>
{% endblock %}