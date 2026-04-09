---
layout: default
title: Roland Lomax
parent: Brightside Station
type: people

statblock: yes
layout_deprecated: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Hard Light

name: Roland Lomax
concept: Cargo Chief of Brightside Station

hp: '20'
hit_dice: 4d8
ac: '13'

debilitations: ~
resistances: ~
immunities: ~
senses: ~

stats:
- brawl: '+2'
- wit: '+1'
- will: '+1'
- move: '30'
- save: 16+
- effort: '1'

traits:
- name: ~
  desc: ~
main:
- name: Pistol
  desc: +2 x1, 6 (1d6 + 2)
- name: Shotgun
  desc: +0 x1, 8 (3d4 + 1)
on_turn:
- name: ~
  desc: ~
instant:
- name: ~
  desc: ~

personality:
- name: Description
  desc: In charge of storing and transporting the cargo that comes in and out of the station. He also serves as the unofficial quartermaster, and runs the gear shop known as “The Locker” on mid-deck. 
- name: Strength
  desc: He’s recently got his hands on proof of Dutta’s involvement with the embezzlement of GMI’s funds, and is waiting for the chance to spring it on a bank auditor.
- name: Desire
  desc: He wants to displace Yash Dutta as director of the station and is quite willing to kill anyone who gets in his way. 
roleplay:
- name: Aspect
  desc: A fat man with a wide grin, pasty complexion and steel-gray eyes. His hands are perpetually sweaty.
- name: Languages
  desc: ''

npc_link: "[RolandLomax](RolandLomax.md)"
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


> Cargo Chief of [Brightside Station](BrightsideStation.md)

![](https://i.imgur.com/0PTNdEm.png)

- He’s recently got his hands on proof of [Yash Dutta](YashDutta.md)’s involvement with the embezzlement of GMI’s funds, and is waiting for the chance to spring it on a bank auditor.
