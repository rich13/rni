---
layout: page
title: Things
permalink: /things/
---

<div class="paired boxes" markdown="1">
{% assign stuff_posts = site.posts | where_exp: "post", "post.categories contains 'Stuff'" %}
{% for post in stuff_posts %}
<div class="sbox" markdown="1">
{% if post.image %}
![{{ post.title }}]({{ post.image }})
{% else %}
<div style="width: 100%; height: 184px; background-color: #eee; border: 3px double #aaa; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px;"></div>
{% endif %}
</div>
<div class="box" markdown="1">
## [{{ post.title }}]({{ post.url | relative_url }})

<time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %-d, %Y" }}</time>

{{ post.excerpt }}
</div>
{% endfor %}
</div>