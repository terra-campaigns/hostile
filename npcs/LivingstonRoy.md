---
layout: default
title: Livingston Roy
location: Brightside Station
parent: People

statblock: yes
layout_deprecated: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Hard Ligth

name: Livingston Roy
concept: Security Chief of Brightside Station

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
- name: Knife
  desc: +2 x1, 4 (1d4 + 2) shock 3/13
- name: Combat shotgun
  desc: +2 x1, 8 (3d4 + 1)
on_turn:
- name: ~
  desc: ~
instant:
- name: ~
  desc: ~

personality:
- name: Description
  desc: Second-in-command after Yash Dutta.
- name: Strength
  desc: The man is polite and cheerful, but otherwise distant to everyone else but his good friend Yash Dutta.
- name: Problem
  desc: He pines for Jaffa Okoye, but the tech chief only has eyes for Randall Bellows.
- name: Desire
  desc: He wants to win Jaffa Okoye’s affections and keep Dutta in charge of Brightside Station.
roleplay:
- name: Aspect
  desc: A slightly pudgy, dark skinned man of perpetual good cheer. He’s always toying idly with a knife.
- name: Languages
  desc: ''

npc_link: "[LivingstonRoy](LivingstonRoy.md)"  
---
# Livingston Roy

> Security Chief of [Brightside Station](../locations/BrightsideStation.md)

![](https://i.imgur.com/xMXC8Lz.png)

- The man is polite and cheerful, but otherwise distant to everyone else but his good friend [Yash Dutta](YashDutta.md).
- He pines for [Jaffa Okoye](JaffaOkoye.md), but the tech chief only has eyes for Randall Bellows.


---
#### Connected to

<!-- QueryToSerialize: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
<!-- SerializedQuery: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
- [Yash Dutta](https://terra-campaigns.github.io/hostile/npcs/YashDutta), from npcs
- [Jaffa Okoye](https://terra-campaigns.github.io/hostile/npcs/JaffaOkoye), from npcs
- [Brightside Station](https://terra-campaigns.github.io/hostile/locations/BrightsideStation), from locations
<!-- SerializedQuery END -->
