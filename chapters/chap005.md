---
name: xx
game_date: 2225-12-07
pcs: "[Olaf](../pcs/Olaf.md), [Oni](../pcs/Oni.md), [Oliver](../pcs/Oliver.md)"
levels: 6
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
> - **Brawn**: ...
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

> [!danger] Strong start

**Call from [JohnMcLeod](../npcs/JohnMcLeod.md)**
- You missed the status report for last Saturday
- What is the update on the contract?
- Why the ship transponder if off?
- If the ship is detected in the Teegarden Star system
	- they will be pushed to mine as much as possible and carry it back to Defiance. Other corporations are aware now.
	- the ship has to be maintained in contractual operable conditions. Please ask your engineers to fix some cameras and swap memory drives.

> [!example] Situations 

**Fly stealthy into [Defiance](../locations/Defiance.md)** 
- Takes 2 days (2 dice on tension pool)

**Land on Defiance**

![|400](https://i.imgur.com/xlfV2y5.png)

- d6 difficulty (to determine weather and region for landing)
- If they find it too difficult, and decide to wait, it takes 2d4 days for improving (add tension die), and then roll 2d4 and get the highest.
- If they fail on the check, bring in the Popper swarm during landing!!

**[PopperSwarm](../statblocks/PopperSwarm.md) continue to propagate through the Frostbreaker.**
- **Objective**: Fright and show that the ship is still inhabited (eggs lived the flushing)

**Boxing match and say farewell to the Boxer?**
- [EnochMarshfield](../npcs/EnochMarshfield.md) is the farmer they will meet

**Research on the alien language filmed.**
- **Objective**: Gain knowledge
- **3/5**: view of a space suit camera through icy water
- **2+**:
	- Bas relief is ritualistic in nature
	- some parts of the insectoids seem to had metal covering, but that has long rusted and is mostly gone
- **3x3**:
	- Brain ([TraktorianoHumanoid](../statblocks/TraktorianoHumanoid.md)) species can move between 2 bodies
	- Insectoid ([MetalianoXX121](../statblocks/MetalianoXX121.md)) carry swords. Sometimes only their contour is depicted
	- Insectoid were the slavers

![|400](https://i.imgur.com/8Q6BYmV.png)

**Continue mining, but much faster now.**
- There are 3 other mining ships from Tharsis now, mining the asteroid. The ICO is coming and shit will get messy.
- Need to map the ice and conclude the work **urgently** and **stealthily**.
- How can mining checks be easier
- How will PCs continue to mine?

**If in Brightside now: Lebkuhen**
- Lebkuchen is aware the PCs have stopped a initiative in French Guiana, and someone arrives in Brightside after 2225-12-01. From there, every session, another interested faction traces the PCs
- [CassianVireo](../npcs/CassianVireo.md)
- Carries a bomb.

**Get info [YashDutta](../npcs/YashDutta.md) down** if the mRNA mapping is successful.
- **Objective**: Complete the contract

> [!bug] Random encounters

1. **Malfunctioning Airlock** (Ship Malfunction): The ship's primary airlock randomly opens and closes due to a faulty circuit, risking decompression.
2. **Derelict Research Vessel** (Other Spaceships): A seemingly abandoned research vessel emits a distress signal, hiding secrets and potential danger.
3. **Black Market Deal Gone Wrong** (Humans in Starports): A routine supply run at a remote starport turns tense when a black market deal nearby goes south.
4. **Colony Under Siege** (Space Colony): A mining colony on a nearby moon sends out a distress call, under attack by unknown forces.
5. **Nest of Space Leeches** (Alien Creatures): While refueling near a gas giant, the ship becomes infested with space leeches that drain power from the hull.
6. **Meteor Shower** (Panic Events): A sudden meteor shower forces the crew to navigate through perilous debris or take significant hull damage.
7. **Solar Flare Surge** (Environment Effects): A powerful solar flare from the red giant star disrupts electronic systems and increases radiation levels.
8. **Emergency Drill Confusion** (Starship Training Drill Alarm): A routine emergency drill causes confusion and panic when it's mistakenly believed to be a real emergency.
9. **Ghost Ship Encounter** (Non-Obvious Space Hostility): The crew encounters a ship that appears and disappears erratically, hinting at possible cloaking technology or supernatural phenomena.
10. **Oxygen Garden Sabotage** (Ship Malfunction): The ship's oxygen garden starts failing after a crew member discovers signs of sabotage, threatening life support.

| id|prompt                  |
|--:|:-----------------------|
|  1|`encounter: 3 l5h2e1w2` |
|  2|`encounter: 2 l7h2e3w2` |
|  3|`encounter: 4 l3h1e1w1` |
|  4|`encounter: 5 l2h1e1w0` |
|  5|`encounter: 5 l2h0e1w1` |
|  6|`encounter: 2 l4h2e2w0` |
|  7|`encounter: 4 l2h1e0w1` |
|  8|Effect only             |
|  9|`encounter: 6 l0h0e0w0` |
| 10|`encounter: 4 l0h0e0w0` |

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

