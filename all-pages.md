---
title: List of all the pages
---

## All Talks

<ul>
  {% assign pages_ordered = site.pages | where: "layout", "talk" | sort: "date" | reverse %}
  {% for post in pages_ordered %}
      <li>
        <a href="{{ site.baseurl }}{{ post.url }}"> {{ post.title }} </a> ({{ post.date | date: "%B %Y"" }}) <br/>
        <p> {{ post.description }} </p>
        {% if post.snippet %}
          <p> {{ post.snippet }} </p>
        {% endif %}
      </li>
  {% endfor %}
</ul>

## All Pages

<ul>
  {% assign pages_ordered = site.pages | sort: "date" | reverse %}
  {% for post in pages_ordered %}
      <li>
        <a href="{{ site.baseurl }}{{ post.url }}"> {{ post.title }} </a> ({{ post.date | date: "%B %Y"" }}) <br/>
        <p> {{ post.description }} </p>
        {% if post.snippet %}
          <p> {{ post.snippet }} </p>
        {% endif %}
      </li>
  {% endfor %}
</ul>

