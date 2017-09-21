---
layout: page
title: Archive
---
<ul class="posts">
  {% for post in site.posts %}

    {% unless post.next %}
      <h3>{{ post.date | date: '%Y' }}</h3>
    {% else %}
      {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
      {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
      {% if year != nyear %}
        <h3>{{ post.date | date: '%Y' }}</h3>
      {% endif %}
    {% endunless %}

    <li itemscope>
      <a href="{{ site.github.url }}{{ post.url }}">{{ post.title }}
        <span class="post-date">
          <i class="fa fa-calendar" aria-hidden="true"></i> {{ post.date | date_to_string }} - 
          <i class="fa fa-clock-o" aria-hidden="true"></i> {% include read-time.html %}
        </span>
      </a>
    </li>

  {% endfor %}
</ul>
