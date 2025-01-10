---
layout: page
title: Blog
description: Thoughts and insights on digital identity, privacy, and trust
---

<div class="blog-posts">
  {% for post in site.posts %}
    <article class="post">
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      <div class="post-meta">
        <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %-d, %Y" }}</time>
      </div>
      <div class="post-excerpt">
        {{ post.excerpt }}
      </div>
      <a href="{{ post.url }}" class="read-more">Read More</a>
    </article>
  {% endfor %}
</div> 