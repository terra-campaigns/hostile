---
name: The Boxer
game_date: 2225-11-23
pcs: "[Olaf](../pcs/Olaf.md), [Oni](../pcs/Oni.md), [MadSpark](../pcs/MadSpark.md), [Oliver](../pcs/Oliver.md)"
levels: 8
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

> [!todo]- Planning checklist & tracker
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
> - [x] Outline situations:
> 	- [x] Draft locations 
> 	- [x] Draft NPCs
> 	- [x] Prepare random encounters table
> 	- [x] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
> - [x] Update graph view
> - [x] Update random encounter tables
> - [ ] Print information pool (applicable parts)
> 
>> [!done] Tracker 
>> ```dataview
>> table without ID link(file.link, name) AS "Chapter", game_date AS "Date", pcs as "PCs", levels as "Rank", meta.sector as "Sector", meta.system as "System", meta.world as "World", meta.location as "Location"
>> from "hostile/chapters"
>> sort file.name asc
>> ```

> [!abstract] Doomborgs crew members motivation
> - **Olaf**: Make money and find advanced life
> - **Oni**: Do something meaningful, that's helpful to societies that are underprivileged and exploited. Learn if the alien corpse found poses any threat to humanity.
> - **MadSpark**: Make money and explode things
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
> ***Chain reaction from Tharsis to Haruna, then to Makita, then to ICO.***
> - [haruna](../factions/haruna.md) figured out that the Doomborgs are working for [tharsisMining](../factions/tharsisMining.md).
> - In the process, [makita](../factions/makita.md) is also made aware because of the scientist ([MariusRochambeau](../npcs/MariusRochambeau.md)) in Perdurabo [BrightsideStation](../locations/BrightsideStation.md) (information leaks)
> - The [ico](../factions/ico.md) traces the reason for the presence of the Doomborgs in [Defiance](../locations/Defiance.md) in Teegarden Star, and now are interested in the Doomborgs as well.

> [!warning] Intro
> - Previously: Abridged [link](https://github.com/efsalvarenga/terraCampaigns_published/blob/main/hostile/abridged.md#chapter-02-the-cold-tomb)
> - Cybereyes rule
> - Level up: what are the new powers of each character and how are they related to your experience so far?
> - MadSpark exploded a ship and killed several people. How does this affect him?
> - GM, remember that **Space is Hostile**.

> [!danger] Strong start

- [TheBoxer](../npcs/TheBoxer.md) is **pissed off but also afraid**: *Were them send by the [ico](../factions/ico.md)? Are they here to kill us?! Who sent you? Who fucking sent you??!!*
- The Boxer takes [Sabaka](../pcs/Sabaka.md) hostage. Sabaka faints and is unconscious.
- The Leadbelly is my ship for now.
- **You will steal me another ship!** There is one drifting for years around Sirius that probably none have captured the distress signal.

![](https://i.imgur.com/G8qPDTT.png)

> [!example] Situations 

**[PopperSwarm](../statblocks/PopperSwarm.md) continue to propagate through the Frostbreaker.**
- **Objective**: Fright and show that the ship is still inhabited (eggs lived the flushing)

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

![](https://i.imgur.com/8Q6BYmV.png)


**Continue mining, but much faster now.**
- **Objective**: complete the contract 
- Need to map the ice and conclude the work **urgently** and **stealthily**.
- How can mining checks be easier (i.e. one single roll)
- How will PCs continue to mine?

**Get info [YashDutta](../npcs/YashDutta.md) down** if the mRNA mapping is successful.
- **Objective**: Complete the contract

**The Boxer attempts to kill MadSpark** 
- **Objective**: Pay the price of actions.

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
> ![_informationPool](../_informationPool.md)

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT file.folder ASC
> WHERE contains(file.folder, "hostile/")
> ```

