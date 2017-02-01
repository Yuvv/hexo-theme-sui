{% if page.prev or page.next %}
<div class="page-pagination">
  <nav class="pagination">
    {{
      paginator({
        prev_text: '<i class="left chevron icon"></i>',
        next_text: '<i class="right chevron icon"></i>',
        mid_size: 1
      })
    }}
  </nav>
</div>
{% endif %}
