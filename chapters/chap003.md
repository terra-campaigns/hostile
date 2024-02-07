---
name: Defiance and Back
game_date: 2225-11-04
pcs: Olaf, Oni, Dirk, Sabaka, Oliver
levels: 5
heat: 1

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: '[Teegarden Star](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/EK7eZhRuSaUmzSTEwm7a) and [Perdurabo](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/PWrHAjd6P64k61Ga1PfQ)'
  world: "[Defiance](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/planet/UBzrpfVGWXxJZq6C9ndC) and Deep Space"
  region: "Defiance: The Terminator"
  location: "Defiance: Tharsis Estate"
tags: 
---

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in the faction game or notion file
> - [x] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [x] Review Abridged
> - [x] Evaluate Faction turn
> - [x] Review and organise Notions
> - [x] Detail strong start
> - [x] Prepare Owlbear, if applicable
> - [x] Outline potential scenes, drafting locations, NPCs and encounters as needed.
> - [x] Review and order/highlight information pool.
> - [x] Update random encounter tables
> - [ ] Print information pool (applicable parts)

> [!abstract] Doomborgs crewmembers motivation
> - [**Olaf**](../pcs/Olaf.md): Make money and find advanced life
> - [**Oni**](../pcs/Oni.md): Do something meaningful, that's helpful to societies that are underprivileged and exploited.
> - [**MadSpark**](../pcs/MadSpark.md): Make money and explode things
> - [**Sabaka**](../pcs/Sabaka.md): Find proof of Aliens similar to the one that attacked their family
> - [**Oliver**](../pcs/Oliver.md): Have a life outside earth

> [!warning] Intro
> - Abridged [link](https://github.com/efsalvarenga/terraCampaigns_published/blob/main/hostile/abridged.md#chapter-02-the-cold-tomb)
> - One final Mental Save for the mRNA
> - Ship rules: spike drive, scan, chase, combat
> - GM, remember that **Space is Hostile**.

> [!danger] Strong start

Spike drill to Teegarden and then...

**Arrival in Teegarden System (World: [Defiance](../locations/Defiance.md))**
- [tharsisMining](../factions/tharsisMining.md) expects the Doomborgs, they received the recording of the meeting one day before their arrival. They will be scanning the entrance of the system.
- [tharsisMining](../factions/tharsisMining.md) will organise a shuttle to take the corpse to a large transport to Earth (in secret). They will read the coordinates of the Cold Tomb from the [Frostbreaker](../objects/Frostbreaker.md) computer - and send [TheBoxer](../npcs/TheBoxer.md) from [TheSolomons](../locations/TheSolomons.md) directly to Perdurabo for the [ColdTomb](../locations/ColdTomb.md). **The crew will be paid well for the corpse and large sums of bonus for expediting the mining.**

> [!example] Situations 

**The Boxer in the Cold Tomb**
- [TheBoxer](../npcs/TheBoxer.md) and his crew arrive in the [ColdTomb](../locations/ColdTomb.md) 10 days after being notified by [JohnMcLeod](../npcs/JohnMcLeod.md).
- The Leadbelly could be docked to the tomb. [RanseHardlee](../npcs/RanseHardlee.md) [RandallBellows](../npcs/RandallBellows.md), [JaffaOkoye](../npcs/JaffaOkoye.md) and one security guard are extracting the corpses.
- They will loot the entire tomb, going in through one airlock of Leadbelly.
- The Boxer crew is composed of 5 l1b1 NPCs.
- They will not notify or go to [BrightsideStation](../locations/BrightsideStation.md) and will keep the Leadbelly crew as hostages until the Doomborgs arrive, to make sure everything is looted
- How to deal with the Leadbelly crew?

**Continue mining, but much faster now.**
- Need to map the ice and conclude the work **urgently** and **stealthily**.

**Encounter generator table**

| id| level|effect                                                                      | reaction| prep| size|
|--:|-----:|:---------------------------------------------------------------------------|--------:|----:|----:|
|  1|     7|Sensor operator may detect some type of wreckage                            |        4|    2|    9|
|  2|     9|Ship encounter (if starport up to D) Resource Exploration Vessel            |        4|    3|    5|
|  3|     7|Crewman is very ill, but the reason is a little mysterious                  |        6|    4|    4|
|  4|     9|Ship Malfunction - Hyperdrive calibration Electronics or Engineering        |        7|    9|    2|
|  5|     7|Ship computer is acting oddly                                               |        2|    5|    3|
|  6|     2|Ship Malfunction - Fusion plant sensor failure Electronics                  |        8|    7|    1|
|  7|     4|Ship Malfunction - Bridge instrument display glitch Electronics or Computer |        2|    3|    8|
|  8|     7|Ship encounter (all starports) Colonial Support Vessel                      |        6|    3|    5|
|  9|     8|Ship Malfunction - Sensor hardware failure Electronics and Comms            |        1|    1|    6|

> [!info]- Information pool
> ![_informationPool](../_informationPool.md)

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT file.folder ASC
> WHERE contains(file.folder, "hostile/")
> ```

