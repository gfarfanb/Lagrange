---
layout: default
title: Tags
---

<h1>
  {{ page.title }}
</h1>

{% comment %}
=======================
The following part extracts all the tags from your posts and sort tags, so that you do not need to manually collect your tags to a place.
=======================
{% endcomment %}
{% assign rawtags = "" %}
{% for post in site.posts %}
  {% assign ttags = post.tags | join: '|' | append: '|' %}
  {% assign rawtags = rawtags | append:ttags %}
{% endfor %}
{% assign rawtags = rawtags | split: '|' | sort %}

{% comment %}
=======================
The following part removes dulpicated tags and invalid tags like blank tag.
=======================
{% endcomment %}
{% assign tags = "" %}
{% for tag in rawtags %}
  {% if tag != "" %}
    {% if tags == "" %}
	    {% assign tags = tag | split:'|' %}
	{% endif %}
	{% unless tags contains tag %}
	  {% assign tags = tags | join:'|' | append:'|' | append:tag | split:'|' %}
    {% endunless %}
  {% endif %}
{% endfor %}

{% comment %}
=======================
The purpose of this snippet is to list all the tags you have in your site.
=======================
{% endcomment %}
<div class="post-date">
{% for tag in tags %}
  &nbsp;<a class="tag-big" href="#{{ tag | slugify }}"><i class="fa fa-tag"></i> {{ tag }}</a>&nbsp;
{% endfor %}
</div>

<hr>

{% comment %}
=======================
The purpose of this snippet is to list all your posts posted with a certain tag.
=======================
{% endcomment %}
{% for tag in tags %}
  <div class="related">
    <h2 id="{{ tag | slugify }}">{{ tag }}</h2>
    <ul class="related-posts">
      {% for post in site.posts %}
        {% if post.tags contains tag %}
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
