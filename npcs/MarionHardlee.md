---
layout: default
title: Marion Hardlee
parent: People

statblock: yes
layout_deprecated: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Hard Ligth

name: Marion Hardlee
concept: Owner of the Midnight Sun

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
  desc: Owns the only bar on Brightside and the only establishment licensed to sell liquor.   
- name: Desire
  desc: She wants to go back to civilization, but is afraid Ranse would leave her if she were to give him anywhere to go.
roleplay:
- name: Aspect
  desc: A lean woman fashioned of rawhide and sharp edges, her gray hair pulled back tightly into a bun.
- name: Idiosyncrasy
  desc: She is a hard, humorless woman who doesn’t think much of anyone on the station, least of all her no-good husband Ranse. She’ll point out his piloting services to strangers.
- name: Languages
  desc: ''

npc_link: "[MarionHardlee](MarionHardlee.md)"
---
# Marion Hardlee

> Owner of the Midnight Sun, on the [Brightside Station](../locations/BrightsideStation.md)

![](https://i.imgur.com/knPwkwz.png)

- She is a hard, humorless woman who doesn’t think much of anyone on the station, least of all her no-good husband [Ranse Hardlee](RanseHardlee.md). She’ll point out his piloting services to strangers.


---
#### Connected to

<!-- QueryToSerialize: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
<!-- SerializedQuery: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
- [Ranse Hardlee](https://terra-campaigns.github.io/hostile/npcs/RanseHardlee), from npcs
- [Brightside Station](https://terra-campaigns.github.io/hostile/locations/BrightsideStation), from locations
- [Chaos in Brigthside](https://terra-campaigns.github.io/hostile/chapters/chap007), from chapters
<!-- SerializedQuery END -->
