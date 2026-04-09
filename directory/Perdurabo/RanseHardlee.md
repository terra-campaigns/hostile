---
layout: default
title: Ranse Hardlee
parent: Brightside Station
type: people

statblock: yes
layout_deprecated: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Hard Light

name: Ranse Hardlee
concept: Pilot of the Leadbelly
status: Dead

hp: '14'
hit_dice: 3d8
ac: '12'

debilitations: ~
resistances: ~
immunities: ~
senses: ~

stats:
- brawl: '+1'
- wit: '+1'
- will: '+1'
- move: '30'
- save: 16+
- effort: '1'

traits:
- name: ~
  desc: ~
main:
- name: Laser rifle
  desc: +0 x1, 6 (1d10 + 1)
on_turn:
- name: ~
  desc: ~
instant:
- name: ~
  desc: ~

personality:
- name: Description
  desc: He hires his piloting services to sky tomb explorers. 
- name: Strength
  desc: Leadbelly, a system boat turned roughly brick-shaped by the layers of lead shielding on it. Nothing else on Brightside Station can handle the Beast’s radiation for so long, so Ranse gets most of the retrieval jobs on catcher drones that die in orbit.
- name: Desire
  desc: He wants to get away from his harridan wife but can’t bear to leave her for good.
roleplay:
- name: Aspect
  desc: A grizzled old system pilot with a squinty gaze and patches of melanoma on his face.
- name: Languages
  desc: ''

npc_link: "[RanseHardlee](RanseHardlee.md)"
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


> ***DECEASED*** Pilot of the Leadbelly, from [Brightside Station](BrightsideStation.md)

![](https://i.imgur.com/9GTszYL.png)
