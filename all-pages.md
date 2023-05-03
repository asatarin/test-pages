---
title: List of all the pages
---

<ul>
  {% for post in site.pages %}
      <li>
        <a href="{{ post.url }}"> {{ post.title }} </a> ({{ post.date | date: "%B %Y"" }}) <br/>
        <p> {{ post.description }} </p>
        {% if post.snippet %}
          <p> {{ post.snippet }} </p>
        {% endif %}
      </li>
  {% endfor %}
</ul>
