---
layout: default
title: Jaffa Okoye
location: Brightside Station
parent: Brightside Station
type: people

statblock: yes
layout_deprecated: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Hard Ligth

name: Jaffa Okoye
concept: Technical Chief of Brightside Station
status: Dead

hp: '4'
hit_dice: 1d6
ac: '10'

debilitations: ~
resistances: ~
immunities: ~
senses: ~

stats:
- brawl: '+0'
- wit: '+1'
- will: '+0'
- move: '30'
- save: 16+
- effort: '0'

traits:
- name: ~
  desc: ~
main:
- name: Brawl attack
  desc: -1 x1, 2 (1d4) shock 1/13 (or by weapon+0)
on_turn:
- name: ~
  desc: ~
instant:
- name: ~
  desc: ~

personality:
- name: Description
  desc: She spends most of her time helping in the hydroponic deck, or in the artificial park when off-duty. 
- name: Desire
  desc: She wants to get off the station, but she’s too smitten to leave without Randall Bellows.
roleplay:
- name: Aspect
  desc: A young, trim woman with lapis lazuli eyes, very dark skin, and slender hands scarred by her tools.
- name: Idiosyncrasy
  desc: She’s faintly claustrophobic, and life on the station has aggravated it
- name: Languages
  desc: ''

npc_link: "[JaffaOkoye](JaffaOkoye.md)"
---

{% include header_directories.md %}
{% comment %}
`=map(this.images, (x) => "![im|200](" + x + ")")`
```dataview
LIST without ID "["+ title + "](" + regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "^[^\/]*\/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.path != this.file.path SORT file.folder DESC
```
---

[index](../../campaigns/mRNA-probe/index.md)

{% endcomment %}

> ***DECEASED*** Technical Chief of [Brightside Station](BrightsideStation.md).

![](https://i.imgur.com/pWh5JDL.png)

- She wants to get off the station, but she’s too smitten to leave without [Randall Bellows](RandallBellows.md).
