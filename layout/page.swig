{% extends '_layout.swig' %}

{% block title %}
  {% if page.type === "tags" and not page.title  %}
  {{ __('title.tag') }}
  {% elif page.type === "categories" and not page.title  %}
  {{ __('title.category')  }}
  {% else %}
  {{ page.title }}
  {% endif %}
  | {{ config.title }}
{% endblock %}

{% block content %}
<div class="ui text container">
  {% if page.type === 'tags' %}
  <div id="tag-cloud">
    <div id="tag-cloud-title">
      <h1>{{ __('title.tag') }}</h1>
      <p>{{ _p('counter.tag_cloud', site.tags.length)}}</p>
    </div>
    <div id="tag-cloud-tags">
      {{ tagcloud({min_font: theme.tag_cloud.min_font,
             max_font: theme.tag_cloud.max_font,
             amount: 200,
             color: true,
             start_color: theme.tag_cloud.start_color,
             end_color: theme.tag_cloud.end_color}) }}
    </div>
  </div>
  {% elif page.type === 'categories' %}
  <div id="category-all-page">
    <div id="category-all-title">
      {{ _p('counter.categories', site.categories.length) }}
    </div>
    <div id="category-all">
      {{ list_categories() }}
    </div>
  </div>
  {% elif page.type === 'about' %}
  <div class="ui hidden divider"></div>
  <div class="ui piled segment">
  {% if theme.avatar %}
  <div id="about-me-header" style="text-align: center;">
    <img width="128" class="ui centered circular image" src="/avatar.jpg">
    <h2>{{ config.author }}</h2>
  </div>
  {% else %}
  <h2 class="ui center aligned icon header">
    <i class="circular spy icon"></i>
    {{ config.author }}
  </h2>
  {% endif %}
  <h5 class="ui horizontal divider header">
    <i class="tag icon"></i>
    About me
  </h5>
  <div id="about-me-content" style="text-align: center;">
    {{ page.content }}
  </div>
  <div class="ui hidden divider"></div>
  <div class="ui divider"></div>
  </div>
  {% else %}
  <div id="other-type-page">
    {{ page.content }}
  </div>
  {% endif %}
</div>
{% endblock %}