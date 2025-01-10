---
layout: page
---

<div class="paired boxes">
{% for post in site.categories[page.category] %}
<div class="sbox">
{% if post.image %}
![{{ post.title }}]({{ post.image }})
{% endif %}
</div>
<div class="box">
## [{{ post.title }}]({{ post.url | relative_url }})

<time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %-d, %Y" }}</time>

{{ post.excerpt }}
</div>
{% endfor %}
</div> 