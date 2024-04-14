---
name: 
game_date: 2225-12-29
pcs: "[Olaf](../pcs/Olaf.md), [Oni](../pcs/Oni.md), [Oliver](../pcs/Oliver.md), [Danny](../pcs/Danny.md), [Sabaka](../pcs/Sabaka.md)"
levels: 7
heat: 

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: "[Perdurabo](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/PWrHAjd6P64k61Ga1PfQ)"
  world: ""
  realm: 
  region: 
  location: "[BrightsideStation](../locations/BrightsideStation.md)"
tags: 
---

> [!todo]- Planning checklist & tracker
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Update oracle
> - [x] Draw two tarot cards to inform prep
> - [x] Evaluate Faction turn
> - [ ] Review Abridged
> - [ ] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file and change one faction's attribute (+/-)
> - [ ] Think about characters, write motivations & hooks
> - [ ] Evaluate new game date
> - [ ] Review and organise Notions
> - [ ] Detail strong start
> - [ ] Outline situations:
> 	- [ ] Draft locations 
> 	- [ ] Draft NPCs
> 	- [ ] Prepare random encounters table
> 	- [ ] Prepare Owlbear, if applicable
> - [ ] Review and order/highlight information pool.
> - [ ] Update random encounter tables
> - [ ] Print information pool (applicable parts)
> 
>> [!done]- Tracker 
>> ```dataview
>> table without ID link(file.link, name) AS "Chapter", game_date AS "Date", pcs as "PCs", levels as "Rank", meta.sector as "Sector", meta.system as "System", meta.world as "World", meta.location as "Location"
>> from "hostile/chapters"
>> sort file.name asc
>> ```

> [!abstract] Doomborgs crew members motivation & inspiration
> - **Olaf**: Make money and find advanced life
> - **Oni**: Do something meaningful, that's helpful to societies that are underprivileged and exploited. Learn if the alien corpse found poses any threat to humanity.
> - **Danny**: Lay low and avoid earth. Make some cash when possible.
> - **Sabaka**: Find proof of Aliens similar to the one that attacked their family
> - **Oliver**: Have a life outside earth
> 
> **Kult tarot**: Sathariel and 4 hourglass 

> [!quote] Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", meta.die as "Die", stats[0].cunning as "C", stats[1].force as "F", stats[2].wealth as "W"
> from "hostile/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> 
> **Turn: force**
> - Makita Genetics Solomons: 1, Lebkuchen Defiance: 3
> - Book of the Sky Solomons: 1
> - Book of the Sky Solomons: 2, Tharsis Mining American: 3, Haruna Biolabs Solomons: 2, ICO American Sector: 3
> 

> [!warning] Intro
> - Previously: Abridged [link](https://github.com/efsalvarenga/terraCampaigns_published/blob/main/hostile/abridged.md#chapter-02-the-cold-tomb)
> - Paid the 150 to the Terminator?
> - Tom has +1 SS min.
> - GM: remember that **Space is Hostile**.
>  
> **Tarot cards**
> - Forgetfulness
> - Future


> [!danger] Strong start

Machinations with the bank auditor in Brightside. Let PCs have time to interfere.



> [!example] Situations 

The exterminator cleans the ship. It was infested with [PopperSwarm](../statblocks/PopperSwarm.md) spores. He explains about this creatures.



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
	- Roll random encounters
- Work **urgently** and **stealthily**.
	- Known Ice chunks: Cold Tomb and Empty Graves

**If in Brightside now: Lebkuhen**
- [CassianVireo](../npcs/CassianVireo.md) carries a bomb.
- Dutta is sick, and Lomax is calling the shots. He is ok for the PCs to come onboard.
- Lomax: "Can I trust you to do the right thing, when time is right?"
	- In one week a Novium transport will come, and most likely a Haruna bank auditor.
- [SuyinIndrani](../npcs/SuyinIndrani.md) will ask PCs to spy on Lomax, and try to accompany him to the empty graves.

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
10. **Hyperspace encounter** (Non-Obvious Space Hostility): Repellent Hostile scenario.
11. **Oxygen Garden Sabotage** (Ship Malfunction): The ship's oxygen garden starts failing after a crew member discovers signs of sabotage, threatening life support.

|  id | prompt                  |
| --: | :---------------------- |
|   1 | `encounter: 3 l5h2e1w2` |
|   2 | `encounter: 2 l7h2e3w2` |
|   3 | `encounter: 4 l3h1e1w1` |
|   4 | `encounter: 5 l2h1e1w0` |
|   5 | `encounter: 5 l2h0e1w1` |
|   6 | `encounter: 2 l4h2e2w0` |
|   7 | `encounter: 4 l2h1e0w1` |
|   8 | Effect only             |
|   9 | `encounter: 6 l0h0e0w0` |
|  10 | `encounter: 4 l0h0e0w0` |

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

