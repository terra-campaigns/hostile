---
layout: default
title: Marius Rochambeau
parent: People

statblock: yes
layout_deprecated: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Hard Light

name: Marius Rochambeau
concept: Scientific representative for Makita

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
- name: Description or tag
  desc: Makita pays for sky tomb artifacts. The rates are not terribly good for most artifacts, but much of what they buy would be hard to move elsewhere.
- name: Desire
  desc: He finds his work demeaning to his ambitions as a xenoarchaeologist, and he wants to find something remarkable so he can get back to civilization
roleplay:
- name: Aspect
  desc: A shock-haired young man with a perpetually absent-minded attitude, dataslab in hand.
- name: Languages
  desc: ''

npc_link: "[MariusRochambeau](MariusRochambeau.md)"
---
# Marius Rochambeau

> Scientific representative for [Makita](../factions/makita.md). Visits [Brightside Station](../locations/BrightsideStation.md) often.

![](https://i.imgur.com/BWuv3Qe.png)

- In love with [Sabaka](../pcs/Sabaka.md)


---
#### Connected to

<!-- QueryToSerialize: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
<!-- SerializedQuery: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
- [Sabaka](https://terra-campaigns.github.io/hostile/pcs/Sabaka), from pcs
- [Brightside Station](https://terra-campaigns.github.io/hostile/locations/BrightsideStation), from locations
- [Makita Genetics Solomons](https://terra-campaigns.github.io/hostile/factions/makita), from factions
- [The Frostbreaker](https://terra-campaigns.github.io/hostile/chapters/chap001), from chapters
<!-- SerializedQuery END -->
