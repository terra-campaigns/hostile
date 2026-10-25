---
layout: default
type: faction
nav_exclude: false
has_children: true
has_toc: false

parent: Fomalhaut
title: Mergulhadores
role: 
status: 
footer_content: Image adapted from <a href="https://commons.wikimedia.org/wiki/File:Tritonia_Lusitania_1935.jpg" target="_blank">Tritonia Atmospheric Diving Suit (1935)</a>, SS Lusitania Salvage Expedition (Public Domain).

images: 
- ../../../imgs/gallery/mergulhadores.jpg

---

{% include header_directories.md %}
{% comment %}
`=map(this.images, (x) => "![im|200](" + x + ")")`
```dataview
LIST without ID "["+ title + "](" + regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "^[^\/]*\/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.path != this.file.path SORT file.folder DESC
```
---


{% endcomment %}
