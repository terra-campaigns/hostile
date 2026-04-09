---
layout: default
title: The Solomons
parent: Directory
type: location

images:
- ../imgs/gallery/Pasted%20image%2020260409195958.png

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

