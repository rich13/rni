---
layout: default
---
<article class="post">
  <h2>{{ page.title }}</h2>
  <div class="post-meta">
    <time datetime="{{ page.date | date_to_xmlschema }}">{{ page.date | date: "%B %-d, %Y" }}</time>
    {% if page.status %}
    • <span class="status">{{ page.status }}</span>
    {% endif %}
    {% if page.categories %}
    • <span class="categories">
      {% for category in page.categories %}
        <a href="/things/categories/{{ category | downcase }}" class="category">{{ category }}</a>{% unless forloop.last %}, {% endunless %}
      {% endfor %}
    </span>
    {% endif %}
    {% if page.tags %}
    • <span class="tags">
      {% for tag in page.tags %}
        <a href="/things/tags/{{ tag | downcase }}" class="tag">#{{ tag }}</a>{% unless forloop.last %} {% endunless %}
      {% endfor %}
    </span>
    {% endif %}
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