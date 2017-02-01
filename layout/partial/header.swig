<div class="ui borderless main menu">
  <div class="ui text container">
    <div class="item">
      <h2 class="ui header">
        {% if theme.logo %}
        <img src="{{ theme.logo }}">
        {% endif %}
        <div class="content">
          {{ config.title }}
          <div class="sub header">
            <small>{{ config.subtitle }}</small>
          </div>
        </div>
      </h2>
    </div>
    <div class="right menu">
      {% for name, path in theme.menu %}
      <a class="item" href="{{ url_for(path) }}">
        <i class="{{ theme.menu_icons[name] }} icon"></i>
        {{ __('menu.' + name) }}
      </a>
      {% endfor %}
    </div>
  </div>
</div>
