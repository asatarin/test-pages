---
title: List of all the pages
---

## All Talks

<ul>
  {% assign pages_ordered = site.pages | where: "layout", "talk" | sort: "date" | reverse %}
  {% for post in pages_ordered %}
      <li>
        <a href="{{ site.baseurl }}{{ post.url }}"> {{ post.title }} </a> ({{ post.date | date: "%B %Y" }}) <br/>
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
    {% if post.url != page.url %}
      <li>
        <a href="{{ site.baseurl }}{{ post.url }}"> {{ post.title }} </a> ({{ post.date | date: "%B %Y" }}) <br/>
        <p> {{ post.description }} </p>
        {% if post.snippet %}
          <p> {{ post.snippet }} </p>
        {% endif %}
      </li>
    {% endif %}
  {% endfor %}
</ul>


## All Posts

All posts in reverse order:
<ul>
  {% assign all_posts = site.posts | where_exp: "post", "post.published != false" | sort: "date" | reverse %}
  {% for post in all_posts %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}"> {{ post.title }} </a> ({{ post.date | date: "%B %Y" }}) <br/>
      <p> {{ post.description }} </p>
      {% if post.snippet %}
        <p> {{ post.snippet }} </p>
      {% endif %}
    </li>
  {% endfor %}
</ul>


## All Posts by Year

{% assign all_years = "" -%}
{% for post in site.posts -%}
  {% assign year = post.date | date: "%Y" -%}
  {% assign all_years = all_years | append: year | append: "," -%}
{% endfor -%}

{% assign unique_years = all_years | split: "," | uniq | sort | reverse -%}
{% for cur_year in unique_years -%}
### {{ cur_year }}

{% for post in site.posts | where_exp: "post", "post.draft != true" | sort: "date" | reverse -%}
{% assign post_year = post.date | date: "%Y" -%}
{% if post_year == cur_year -%}
 * <a href="{{ post.url | relative_url }}"> {{ post.title }} </a> ({{ post.date | date: "%B %Y"" }}) <br/>
 * [{{ post.title }}]({{ post.url | relative_url }}) ({{ post.date | date: "%B %Y"" }})
{%- endif %}
{%- endfor %}


{%- endfor %}