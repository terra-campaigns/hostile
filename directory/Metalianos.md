---
layout: default
title: Metalianos
type: faction

nav_exclude: true
search_exclude: true

footer_content: Adapted from the <a href="https://pt.m.wikipedia.org/wiki/Espada_da_Gal%C3%A1xia">Espada da Galáxia</a> romance, for private use only.


status:

s: 2

scheme:
  goal: Finish Traktoriano consumption experiment
  progress: 1/6
  milestone: Engage with Traktoriano body

notes: race from alpha centauri
---

{% include header_directories.md %}
{% comment %}
`=map(this.images, (x) => "![im|200](" + x + ")")`
```dataview
LIST without ID "["+ title + "](" + regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "^[^\/]*\/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.path != this.file.path SORT file.folder DESC
```
---

[index](../campaigns/mRNA-probe/index.md)

{% endcomment %}