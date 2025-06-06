---
title: Posts
description: All posts
snippet: List of all posts by year
---

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
