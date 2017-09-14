---
layout: default
title: Categories
---

<h1>
  {{ page.title }}
</h1>

{% assign rawcategories = "" %}
{% for post in site.posts %}
  {% assign ccategories = post.categories | join: '|' | append: '|' %}
  {% assign rawcategories = rawcategories | append:ccategories %}
{% endfor %}
{% assign rawcategories = rawcategories | split: '|' | sort %}

{% assign categorys = "" %}
{% for category in rawcategories %}
  {% if category != "" %}
    {% if categorys == "" %}
	    {% assign categorys = category | split:'|' %}
	{% endif %}
	{% unless categorys contains category %}
	  {% assign categorys = categorys | join:'|' | append:'|' | append:category | split:'|' %}
  {% endunless %}
  {% endif %}
{% endfor %}

<div class="post-date">
{% for category in categorys %}
  &nbsp;<a class="tag-big" href="#{{ category | slugify }}"><i class="fa fa-folder"></i> {{ category | capitalize }}</a>&nbsp;
{% endfor %}
</div>

<hr>

{% for category in categorys %}
  <div class="related">
    <h2 id="{{ category | slugify }}">{{ category | capitalize }}</h2>
    <ul class="related-posts">
      {% for post in site.posts %}
        {% if post.categories contains category %}
          <li>
            <a href="{{ site.github.url }}{{ post.url }}">
              {{ post.title }}&nbsp;&nbsp;&nbsp;
              <small class="post-line"><i class="fa fa-calendar" aria-hidden="true"></i> {{ post.date | date_to_string }} - <i class="fa fa-clock-o" aria-hidden="true"></i> {% include read-time.html item=post %}</small>
            </a>
          </li>
        {% endif %}
      {% endfor %}
    </ul>
  </div>
{% endfor %}
