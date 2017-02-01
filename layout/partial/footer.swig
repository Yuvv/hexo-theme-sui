<div class="ui vertical footer segment">
<div class="ui section divider"></div>
<div class="ui center aligned container">
  <div class="ui horizontal large divided link list">
  {% for name, path in theme.social %}
    <a class="item" href="{{ url_for(path) }}" title="{{ theme.social_icons[name] }}" target="_blank">
      <i class="{{ theme.social_icons[name] }} icon"></i>
    </a>
  {% endfor %}
  </div>
  <p>Powered by <a title="Hexo" target="_blank" href="https://hexo.io">Hexo</a>.&nbsp;
  Theme by <a title="SUI" target="_blank" href="https://github.com/Yuvv/hexo-theme-sui">SUI</a>.&nbsp;
  Copyright &copy; {{ date(Date.now(), "YYYY")}} &nbsp; <i class="heartbeat icon"></i> {{ config.author }}</p>
</div>
</div>