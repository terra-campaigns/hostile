---
name: The Box with The Boxer
game_date: 2225-12-07
pcs: "[Olaf](../pcs/Olaf.md), [Oni](../pcs/Oni.md), [Oliver](../pcs/Oliver.md), [Danny](../pcs/Danny.md)"
levels: 7
heat: 

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: "[Teegarden Star](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/EK7eZhRuSaUmzSTEwm7a)"
  world: "[Defiance](../locations/Defiance.md)"
  realm: 
  region: 
  location: ""
tags: 
---

> [!todo]- Planning checklist & tracker
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file
> - [ ] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [ ] Review Abridged
> - [x] Evaluate Faction turn (if 3 weeks after the previous)
> - [x] Review and organise Notions
> - [x] Detail strong start
> - [x] Outline situations:
> 	- [x] Draft locations 
> 	- [x] Draft NPCs
> 	- [ ] Prepare random encounters table
> 	- [ ] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
> - [x] Update graph view
> - [x] Update random encounter tables
> - [ ] Print information pool (applicable parts)
> 
>> [!done]- Tracker 
>> ```dataview
>> table without ID link(file.link, name) AS "Chapter", game_date AS "Date", pcs as "PCs", levels as "Rank", meta.sector as "Sector", meta.system as "System", meta.world as "World", meta.location as "Location"
>> from "hostile/chapters"
>> sort file.name asc
>> ```

> [!abstract] Doomborgs crew members motivation
> - **Olaf**: Make money and find advanced life
> - **Oni**: Do something meaningful, that's helpful to societies that are underprivileged and exploited. Learn if the alien corpse found poses any threat to humanity.
> - **Danny**: ...
> - **Sabaka**: Find proof of Aliens similar to the one that attacked their family
> - **Oliver**: Have a life outside earth

> [!quote]- Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", meta.die as "Die", stats[0].cunning as "C", stats[1].force as "F", stats[2].wealth as "W"
> from "hostile/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> 
> **No faction turn, less than 3 weeks since last.**

> [!warning] Intro
> - Previously: Abridged [link](https://github.com/efsalvarenga/terraCampaigns_published/blob/main/hostile/abridged.md#chapter-02-the-cold-tomb)
> - Is an **affliction** due, to the cold blood actions?
> - GM: remember that **Space is Hostile**.

> [!example] Situations 

- The Doomborgs took their time and evaluated all the options to unload [TheBoxer](../npcs/TheBoxer.md) into Defiance.
- They decide that putting The Boxer in a large box is the best alternative.
- They called flight control from [Defiance](../locations/Defiance.md) and requested to speak with [tharsisMining](../factions/tharsisMining.md).
- Lucas called back and agreed to find a maintenance bay for the [Frostbreaker](../objects/Frostbreaker.md) in two days.
- [Oni](../pcs/Oni.md) skilfully (again) landed the [Frostbreaker](../objects/Frostbreaker.md) through a light storm for Defiance's standards. 

![|400](https://i.imgur.com/xlfV2y5.png)

- Lucas spoke again with the crew, and was astonished to know that [JohnMcLeod](../npcs/JohnMcLeod.md) speaks with the crew through an AI version of himself - this is not allowed on Earth.
- Lucas also updates the crew that information leaked about the alien bodies, and the possible extraction of the mRNA - which is expensive in the market.
- [Olaf](../pcs/Olaf.md) becomes anxious, and postpone the next chat with [JohnMcLeod](../npcs/JohnMcLeod.md)
- [Danny](../pcs/Danny.md) and [Oliver](../pcs/Oliver.md) go to a local lowlife bar and meet the owner of a small and shady logistics company, Harry.
- Harry agrees to take the box and ask no questions.
- The crew meet again at the bay, prepare everything and load the box with The Boxer into Harry's company truckers' truck.
- The crew speaks with [JohnMcLeod](../npcs/JohnMcLeod.md) who confirms what Lucas has shared. John mentions that there is an inevitable gold rush about to start for Perdurabo. The crew is to be back there ASAP, and start mining as much as possible. A new contract will be sent to them.
- After the long day, Oliver goes take a nap, while the others decide to continue drinking into the small hours.
- In the same low life bar the crew meet a (very drunk) [CassianVireo](../npcs/CassianVireo.md)
- Cassian mentions she is an investigator, and she wants to get information on what is happening in [BrightsideStation](../locations/BrightsideStation.md) and the Perdurabo system. Cassian offers her skills in computing and communications in return to be brought to Brightside. The crew is undecided and were to speak with her again next day, before departing Defiance.

![|400](https://i.imgur.com/GfAeVZ7.png)

> [!info]- Information pool
> ![_hostileInformationPool](../_hostileInformationPool.md)

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT file.folder ASC
> WHERE contains(file.folder, "hostile/")
> ```

