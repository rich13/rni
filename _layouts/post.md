---
layout: default
---
<article class="post">
  <h2>{{ page.title }}</h2>
  <div class="post-meta">
    <ul>
      <li><time datetime="{{ page.date | date_to_xmlschema }}">{{ page.date | date: "%B %-d, %Y" }}</time></li>
      {% if page.status %}
      <li><span class="status">{{ page.status }}</span></li>
      {% endif %}
      {% if page.categories %}
      {% for category in page.categories %}
      <li><a href="/things/categories/{{ category | downcase }}" class="category">{{ category | downcase }}</a></li>
      {% endfor %}
      {% endif %}
      {% if page.tags %}
      {% for tag in page.tags %}
      <li><a href="/things/tags/{{ tag | downcase }}" class="tag">#{{ tag | downcase }}</a></li>
      {% endfor %}
      {% endif %}
    </ul>
  </div>

  {{ content }}

  {% if page.links %}
  <div class="post-links">
    {% for link in page.links %}
    <a href="{{ link.url }}" class="post-link">{{ link.title }}</a>
    {% endfor %}
  </div>
  {% endif %}
</article> 