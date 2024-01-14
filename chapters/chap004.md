---
name: name
game_date: 2225-11-23
pcs: Olaf, Oni, Dirk, Sabaka, Oliver
levels: 5
heat: 4

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: "[Perdurabo](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/PWrHAjd6P64k61Ga1PfQ)"
  world: 
  realm: 
  region: 
  location: ""
tags: 
---

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Evaluate heat
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [ ] Update (battle)maps, if applicable
> - [ ] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in the faction game or notion file
> - [ ] Think about characters, write motivations & hooks
> - [ ] Evaluate new game date
> - [ ] Review Abridged
> - [ ] Evaluate Faction turn
> - [ ] Review and organise Notions
> - [ ] Detail strong start
> - [ ] Prepare Owlbear, if applicable
> - [ ] Outline potential scenes, drafting locations, NPCs and encounters as needed.
> - [ ] Review and order/highlight information pool.
> - [ ] Update random encounter tables
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



> [!example] Situations 

**Research on the alien language filmed.**
- Some lore from Hard Light
- The brain species (Traktorians) was enslaved by a belligerent species (Metalians)

**Continue mining, but much faster now.**
- Need to map the ice and conclude the work **urgently** and **stealthily**.

**Get info Dutta down** if the mRNA mapping is successful.

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

