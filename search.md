---
layout: page
title: Search
---

<header>
  <div>
    <input id="search-input" placeholder="Search for posts..." class="search-input">
  </div>
</header>
<main>
  <div id="hits" class="search-hits"></div>
  <div id="pagination" class="search-pagination"></div>
</main>

{% include algolia.html %}
