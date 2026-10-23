---
layout: null
permalink: /all-content.html
sitemap: false
---
# {{ site.title }}
{{ site.description }}
Source: {{ site.url }}

Generated: {{ site.time | date: "%Y-%m-%d" }}

{% comment %}
  Build a clean, structured text dump of all site content for LLM consumption.
  - Strips out utility pages (404, this page, assets, search indexes)
  - Groups content by type: Campaigns (sessions), Directory (world entries), then other pages
  - Surfaces front matter metadata (type, role, region, hooks, status, parent)
  - Uses page.content | strip_html to remove all HTML/CSS/JS noise
  - Outputs as .txt so there's no theme wrapper
{% endcomment %}

{% assign all = site.pages | sort: "nav_order" %}

{% comment %} ── CAMPAIGNS & SESSIONS ── {% endcomment %}
{% assign sessions = all | where: "type", "session" | sort: "nav_order" %}
{% assign session_count = sessions | size %}
{% if session_count > 0 %}
================================================================================
CAMPAIGNS — SESSION LOGS
================================================================================
{% for page in sessions %}
{% unless page.url == "/all-content.txt" %}
{% if page.title %}
--------------------------------------------------------------------------------
SESSION: {{ page.title }}
Path: {{ page.url }}
{% if page.parent %}Campaign: {{ page.parent }}{% endif %}
{% if page.region %}Region: {{ page.region }}{% endif %}
{% if page.nav_order %}Date (in-world): {{ page.nav_order | date: "%-d %B %Y" }}{% endif %}
{% if page.location %}Location: {{ page.location }}{% endif %}
{% if page.hooks %}Hooks: {% for hook in page.hooks %}- {{ hook }} {% endfor %}{% endif %}
--------------------------------------------------------------------------------

{{ page | raw_markdown }}

{% endif %}
{% endunless %}
{% endfor %}
{% endif %}

{% comment %} ── DIRECTORY — LOCATIONS ── {% endcomment %}
{% assign locations = all | where: "type", "location" | sort: "nav_order" %}
{% assign loc_count = locations | size %}
{% if loc_count > 0 %}
================================================================================
DIRECTORY — LOCATIONS
================================================================================
{% for page in locations %}
{% if page.title %}
--------------------------------------------------------------------------------
LOCATION: {{ page.title }}
Path: {{ page.url }}
{% if page.parent %}Parent: {{ page.parent }}{% endif %}
{% if page.role %}Role: {{ page.role }}{% endif %}
{% if page.status %}Status: {{ page.status }}{% endif %}
{% if page.hooks %}Hooks: {% for hook in page.hooks %}- {{ hook }} {% endfor %}{% endif %}
--------------------------------------------------------------------------------

{{ page | raw_markdown }}

{% endif %}
{% endfor %}
{% endif %}

{% comment %} ── DIRECTORY — FACTIONS / GROUPS ── {% endcomment %}
{% assign factions = all | where: "type", "faction" | sort: "nav_order" %}
{% assign fac_count = factions | size %}
{% if fac_count > 0 %}
================================================================================
DIRECTORY — FACTIONS & GROUPS
================================================================================
{% for page in factions %}
{% if page.title %}
--------------------------------------------------------------------------------
FACTION: {{ page.title }}
Path: {{ page.url }}
{% if page.parent %}Parent: {{ page.parent }}{% endif %}
{% if page.role %}Role: {{ page.role }}{% endif %}
{% if page.status %}Status: {{ page.status }}{% endif %}
{% if page.hooks %}Hooks: {% for hook in page.hooks %}- {{ hook }} {% endfor %}{% endif %}
--------------------------------------------------------------------------------

{{ page | raw_markdown }}

{% endif %}
{% endfor %}
{% endif %}

{% comment %} ── DIRECTORY — PEOPLE ── {% endcomment %}
{% assign people = all | where: "type", "people" | sort: "title" %}
{% assign ppl_count = people | size %}
{% if ppl_count > 0 %}
================================================================================
DIRECTORY — PEOPLE (CHARACTERS & NPCs)
================================================================================
{% for page in people %}
{% if page.title %}
--------------------------------------------------------------------------------
PERSON: {{ page.title }}
Path: {{ page.url }}
{% if page.parent %}Group: {{ page.parent }}{% endif %}
{% if page.role %}Role: {{ page.role }}{% endif %}
{% if page.status %}Status: {{ page.status }}{% endif %}
{% if page.hooks %}Hooks: {% for hook in page.hooks %}- {{ hook }} {% endfor %}{% endif %}
--------------------------------------------------------------------------------

{{ page | raw_markdown }}

{% endif %}
{% endfor %}
{% endif %}

{% comment %} ── DIRECTORY — CREATURES ── {% endcomment %}
{% assign creatures = all | where: "type", "creature" | sort: "title" %}
{% assign cre_count = creatures | size %}
{% if cre_count > 0 %}
================================================================================
DIRECTORY — CREATURES & FOLKLORE
================================================================================
{% for page in creatures %}
{% if page.title %}
--------------------------------------------------------------------------------
CREATURE: {{ page.title }}
Path: {{ page.url }}
{% if page.parent %}Location: {{ page.parent }}{% endif %}
{% if page.role %}Role: {{ page.role }}{% endif %}
{% if page.status %}Status: {{ page.status }}{% endif %}
{% if page.hooks %}Hooks: {% for hook in page.hooks %}- {{ hook }} {% endfor %}{% endif %}
--------------------------------------------------------------------------------

{{ page | raw_markdown }}

{% endif %}
{% endfor %}
{% endif %}

{% comment %} ── REMAINING PAGES (rules, indexes, misc) ── {% endcomment %}
{% assign typed_urls = "" | split: "" %}
{% for p in sessions %}{% assign typed_urls = typed_urls | push: p.url %}{% endfor %}
{% for p in locations %}{% assign typed_urls = typed_urls | push: p.url %}{% endfor %}
{% for p in factions %}{% assign typed_urls = typed_urls | push: p.url %}{% endfor %}
{% for p in people %}{% assign typed_urls = typed_urls | push: p.url %}{% endfor %}
{% for p in creatures %}{% assign typed_urls = typed_urls | push: p.url %}{% endfor %}

================================================================================
OTHER PAGES (RULES, INDEXES, MISC)
================================================================================
{% for page in all %}
{% unless typed_urls contains page.url %}
{% unless page.url == "/all-content.txt" or page.url == "/404" or page.url == "/404.html" %}
{% unless page.title == nil or page.title == "" %}
{% unless page.search_exclude == true %}
{% assign ext = page.url | split: "." | last %}
{% unless ext == "json" or ext == "xml" or ext == "js" or ext == "css" %}
{% assign content_stripped = page | raw_markdown %}
{% assign content_length = content_stripped | size %}
{% if content_length > 0 %}
--------------------------------------------------------------------------------
{{ page.title }}
Path: {{ page.url }}
{% if page.parent %}Parent: {{ page.parent }}{% endif %}
{% if page.role %}Role: {{ page.role }}{% endif %}
{% if page.type %}Type: {{ page.type }}{% endif %}
--------------------------------------------------------------------------------

{{ content_stripped | normalize_whitespace }}

{% endif %}
{% endunless %}
{% endunless %}
{% endunless %}
{% endunless %}
{% endunless %}
{% endfor %}

================================================================================
END OF SITE CONTENT
================================================================================