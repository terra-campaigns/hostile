---
layout: default
type: location
nav_exclude: false
has_children: true
has_toc: false

parent: Fomalhaut
title: The Bell
role: 
status: 
footer_content: <b>Fan Content</b> adapted from the <a href="https://www.tuesdayknightgames.com/" target="_blank">Gradient Descent</a> adventure. Copyright &copy; by Luke Gearing from Tuesday Knight Games. For private use only.

images: 
- ../../../imgs/gallery/Pasted%20image%2020261024173737.png

---

{% include header_directories.md %}
{% comment %}
`=map(this.images, (x) => "![im|200](" + x + ")")`
```dataview
LIST without ID "["+ title + "](" + regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "^[^\/]*\/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.path != this.file.path SORT file.folder DESC
```
---

{% endcomment %}
