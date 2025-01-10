---
layout: default
title: https://richard.northover.info
description: Digital product consultant specializing in identity, privacy, and trust
---

<div class="duo boxes" markdown="1">
<div class="box" markdown="1">
## Hello

- I'm a **consultant digital product person**
- I used to be a **web developer**
- I used to be a **science journalist**
- I'm interested in **identity, privacy and trust** on the web
- If you'd like to **work with me**, [let me know](#contact)

</div>
<div class="box pic" markdown="1">

![me](assets/images/r.png)

</div>
</div>

---

## What do I do?

- I work with organisations to **find better ways to think about digital identity**
- I help them to have **simple, consistent and trusted** relationships with their users
- I speak **fluent human**

<div class="multi boxes" markdown="1">
<div class="box" markdown="1">
### Product Thinking

I'm good at **joining the dots** between the big picture and the details that matter.
</div>

<div class="box" markdown="1">
### Digital Strategy

Together, we can work out a direction based on clear thinking and principles... spoken in a **language people understand**.
</div>

<div class="box" markdown="1">
### Identity UX

Things can get pretty complicated sometimes. We can probably make those things **better for everyone**.
</div>

<div class="box" markdown="1">
### Privacy and trust by design

I have led thinking on **trusted digital identity** at some big organisations.
</div>

<div class="box" markdown="1">
### Presenting and explaining

I can digest complex ideas and present them to others so that everyone's on **the same page**.
</div>

<div class="box" markdown="1">
### Collaborative working

I can help you and your teams to **work together** with a shared understanding.
</div>
</div>

---

## What do I think?

**Identity** is the exchange of information about people in the real world with systems in the digital one. Sometimes it's important, sometimes it isn't... but it's always important to be able to tell the difference between those times.

**Privacy** is about being in control of the information you share with others. In the world of identity, being in control is about as important as you can get, because lack of control means lack of trust.

**Trust** is an important thing, because it's a measure of how confident you should feel when something happens. If something is clear and understandable, simple and consistent, transparent and verifiable, then you can trust it.

---

## Recently...

<div class="paired boxes" markdown="1">
{% assign projects = site.posts | where_exp: "post", "post.tags contains 'project'" | sort: "date" | reverse | limit: 3 %}
{% for project in projects %}
<div class="sbox" markdown="1">
[![{{ project.title }}]({{ project.image }})](/things/{{ project.slug }})
</div>
<div class="box" markdown="1">
### [{{ project.title }}](/things/{{ project.slug }})

{{ project.excerpt }}
</div>
{% endfor %}
</div>

---

## Previously...

<div class="paired boxes" markdown="1">
{% assign work_posts = site.posts | where_exp: "post", "post.tags contains 'work'" | sort: "date" | reverse %}
{% for post in work_posts %}
<div class="sbox" markdown="1">
[![{{ post.title }}]({{ post.image }})](/things/{{ post.slug }})
</div>
<div class="box" markdown="1">
### [{{ post.title }}](/things/{{ post.slug }})

{{ post.content }}
</div>
{% endfor %}
</div>

---

## People have said...

> Richard's positivity and wit make him a rare asset to any organisation, team or network.
>
> He has the uncanny ability to frame important problems in a way that is immediately accessible and compelling.
>
> He rolls up his sleeves and engages with the problem at every layer, whether that's business, strategy, architecture, code and testing, tenders, UX or analytics.
>
> We work in an industry that is very solutions-focused, but Richard is one of those rare individuals who makes you stop and think about any problem for a little longer.
>
> He's comfortable dealing with complex and abstract topics but able to crystallise and explain these to anyone.
>
> He always puts the user first and takes a principled stand to protecting privacy.

---

## Contact me {#contact}

- Please feel free to message me via [LinkedIn](https://www.linkedin.com/in/northover) {#linkedin}
- You can [request a meeting](/meeting) {#meeting} if you'd like an informal chat
- I hear email is also a popular way of communicating: [richard@northover.info](mailto:richard@northover.info) {#email}

![The sky](assets/images/w.png) 