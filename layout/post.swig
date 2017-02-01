{% extends '_layout.swig' %}

{% block title %}
{{ page.title }} | {{ config.title }}
{% endblock %}

{% block head %}
  {% if page.katex %}
  <link rel="stylesheet" type="text/css" href="{{ theme.statics.katex.css }}">
  {% endif %}
{% endblock %}

{% block content %}
<div class="ui text container">
<div id="post">
  <div id="post-header">
    {% if page.title %}
    <div id="post-title">
      <h1 class="ui header center aligned">{{ page.title }}</h1>
    </div>
    {% endif %}

    <div id="post-meta">
      <div class="ui center aligned container">
      {% if theme.post_meta.created_at %}
        <i class="add to calendar icon"></i>
        <span class="post-meta-item-text">{{ __('post.posted') }}</span>
        <time title="{{ __('post.created') }}" datetime="{{ moment(page.date).format() }}">{{ date(page.date, config.date_format) }}</time>
      {% endif %}

      {% if theme.post_meta.created_at and theme.post_meta.updated_at %}
        <span class="post-meta-divider">|</span>
      {% endif %}

      {% if theme.post_meta.updated_at %}
        <i class="checked calendar icon"></i>
        <span class="post-meta-item-text">{{ __('post.modified') }}</span>
        <time title="{{ __('post.modified') }}" datetime="{{ moment(page.updated).format() }}">{{ date(page.updated, config.date_format) }}</time>
      {% endif %}
      </div>
    </div>
  </div>

  {% if page.tags and page.tags.length and not is_index %}
  <div id="post-tags">
    <div class="ui tag labels">
    {% for tag in page.tags %}
      <a href="{{ url_for(tag.path) }}" class="ui label">{{ tag.name }}
      </a>
    {% endfor %}
    </div>
  </div>
  {% endif %}

  <article id="post-body">
    {{ page.content }}
  </article>

  <div id="post-footer">
    {% if page.prev or page.next %}
    <div class="ui divider"></div>
    <div id="post-nav">
      <div class="ui grid">
        <div class="eight wide column">
          <div class="ui left aligned container">
          {% if page.next %}
            <a href="{{ url_for(page.next.path) }}" title="{{ page.next.title }}">
              <i class="angle double left icon"></i>{{ page.next.title }}
            </a>
          {% endif %}
          </div>
        </div>
        <div class="eight wide column">
          <div class="ui right aligned container">
          {% if page.prev %}
            <a href="{{ url_for(page.prev.path) }}" title="{{ page.prev.title }}">
              {{ page.prev.title }}<i class="angle double right icon"></i>
            </a>
          {% endif %}
          </div>
        </div>
      </div>
    </div>
    {% endif %}
  </div>
</div>
</div>
{% endblock %}