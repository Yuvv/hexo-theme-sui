{% extends '_layout.swig' %}

{% block title %} {{ __('title.tag') }}: {{ page.tag }} | {{ config.title }} {% endblock %}

{% block content %}
<div class="ui text container">
  <div id="tag-page-title">
    <h2>{{ page.tag }} <small>{{ __('title.tag') }}</small></h2>
  </div>
  <div id="tag-page-posts">
    <div class="ui list">
    {% for post in page.posts %}
      <div class="item">
        <i class="book icon"></i>
        <div class="content">
          <a href="{{ url_for(post.path) }}" class="header">{{ post.title |default(__('post.untitled'))}}</a>
          <div class="description">
            <small>{{ __('post.posted') }}</small>
            <time class="post-time" itemprop="dateCreated"
              datetime="{{ moment(post.date).format() }}"
              content="{{ date(post.date, config.date_format) }}">
              {{ date(post.date, 'MM-DD') }}
            </time>
            {% if post.description %}
            <p>
              {% set desp = post.description | striptags %}
              {{ desp.substring(0, theme.auto_excerpt.length) }}
              {% if desp.length > theme.auto_excerpt.length %}...{% endif %}
            </p>
            {% endif %}
          </div>
        </div>  
      </div>
    {% endfor %}
    </div>
  </div>
<div class="ui divider"></div>

{% include 'partial/pagination.swig' %}
</div>
{% endblock %}