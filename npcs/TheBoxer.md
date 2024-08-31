---
layout: default
title: The Boxer
parent: People

statblock: yes
layout_deprecated: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Hostile NPC

name: The Boxer
concept: Reacher Mercenary

hp: '22'
hit_dice: 4d10
ac: '14'

debilitations: ~
resistances: ~
immunities: ~
senses: ~

stats:
- brawl: '+3'
- wit: '0'
- will: '+1'
- move: '25'
- save: 16+
- effort: d4

traits:
- name: ~
  desc: ~
main:
- name: Boxing
  desc: +4 x1, 9 (2d6 + 2) shock 4/15
- name: Ranged
  desc: +1 x1, 5 (1d6 + 1) (or by weapon)
on_turn:
- name: ~
  desc: ~
instant:
- name: ~
  desc: ~

personality:
  - name: Earnest idiot
    desc: They are a fool, unfortunately, and have one or more character traits that lead them into making terrible decisions with **regards to women**. Whenever the topic is involved or their motivation is sparked, they will immediately make a bad decision in service of their prejudices or desires.
  - name: Strength
    desc: Their folly leads them to **dare actions that no one else would imagine possible**, including feats of bravery and physical prowess in the harsh realm of space and mercenary work.
  - name: Flaw
    desc: Womanizer. Despite his tough exterior and professional capabilities, he often finds himself **entangled in romantic escapades** that compromise his missions and personal growth.
  - name: Problem
    desc: They’re actually trying to be helpful but in a totally unproductive way, especially in interpersonal relationships, due to his lack of understanding and misguided efforts.
  - name: Desire
    desc: They want to leave their current life as a mercenary for Tharsis Mining and start anew as a farmer, seeking peace and simplicity away from the chaos of space.

roleplay:
  - name: Aspect
    desc: Visible Mannerisms or Traits - Always **toying with worry beads**, a sign of his inner turmoil and the constant churn of his too-perfect memory.
  - name: Idiosyncrasy (mind)
    desc: Perfect **recall** and can peruse its memories like films or photographs, which serves as both a strength and a curse, haunting him with the vivid details of his past.

npc_link: '[TheBoxer](TheBoxer.md)'
---
# The Boxer

![](https://i.imgur.com/G8qPDTT.png)

Born in the cramped and unforgiving quarters of a mining asteroid under Tharsis Mining's dominion, The Boxer was christened with a name he would soon outgrow. The corridors and mining shafts of his youth did little to contain his spirit or his physique, which burgeoned beyond the confines of his origins into that of a formidable force. 

His earnest idiocy in matters of the heart made him **a fool in love and lust**, often compromising his professional relationships and missions. Despite his rugged exterior and formidable presence, his interactions with women revealed **a man struggling to navigate the complexities of intimacy and affection**, repeatedly ensnared by his desires and prejudices.

Yet, beneath this tumultuous surface, lay a singular, burning desire: to **escape the life of a mercenary and the endless cycle of violence and remorse**. The Boxer **dreams of a simpler existence**, one far removed from the cold metal corridors of mining asteroids and the vacuous expanse of space. He imagines a life as a **farmer**, tilling soil and nurturing life, a stark contrast to the destruction and chaos that have so far defined his existence.

---
#### Connected to

<!-- QueryToSerialize: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
<!-- SerializedQuery: LIST without ID "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ")" + ", from " + regexreplace(file.folder, "hostile/", "") FROM ([[]]) OR outgoing([[]]) WHERE file.name != this.file.name AND file.name != "directory" AND file.name != "campaigns" SORT file.folder DESC -->
- [Defiance and back](https://terra-campaigns.github.io/hostile/chapters/chap003), from chapters
- [MadSpark perishes](https://terra-campaigns.github.io/hostile/chapters/chap004), from chapters
- [The Boxer's box](https://terra-campaigns.github.io/hostile/chapters/chap005), from chapters
- [Clues](https://terra-campaigns.github.io/hostile/chapters/chap009), from chapters
<!-- SerializedQuery END -->
