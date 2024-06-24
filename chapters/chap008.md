---
name: 
game_date: 2226-01-01
pcs: 
levels: 
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
> ![_tracker](../_tracker.md)

> [!abstract] Doomborgs crew members motivation & inspiration
> - **Olaf**: Make money and find advanced life. Don't lose another crewmember.
> - **Oni**: Do something meaningful, that's helpful to societies that are underprivileged and exploited. Learn if the alien corpse found poses any threat to humanity.
> - **Danny**: Lay low and avoid earth. Make some cash when possible.
> - **Sabaka**: Find proof of Aliens similar to the one that attacked their family
> - **Oliver**: Have a life outside earth

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
> - Book of the Sky Solomons: 2, Tharsis Mining American: 3, Haruna Biolabs Solomons: 2, ICO American Sector: 3
> 

> [!warning] Intro
> - Tom has +1 SS min.
> - How much ice did you mine?
> - GM: remember that **Space is Hostile**.
>  
> **Tarot cards**
> - Forgetfulness
> - Future

> [!danger] Strong start


New year!!

Before metadimensional travel: alarm that the change in mass centre and the hull breach might impact safety.

Metalian investigating the ship and learning from it.


> [!example] Situations 

**Massive hull repair, and expand the ship for a multi-purpose ship: check hostile ships!**




**New years party**
- PCs can mingle with people from the station during the evening.
- They can also meet the bank auditor [ElianaMurovec](../npcs/ElianaMurovec.md)
- During the party, [CassianVireo](../npcs/CassianVireo.md) will set up one bomb in the banker transport (that would carry the Novium ingots) and one in the fusion reactor of the station
	- TREMOR: One of the bombs will go off randomly 1-10 for each hour of the party, roll d6 to determine which bomb goes off
- The guy that cleaned the [Frostbreaker](../objects/Frostbreaker.md) becomes nuts (if there is ice mined in the ship). Eventually, others in the station will also become mad and violent. PCs may do a mental save or gain SS. GM adds tension die every time a PC fails on the save.

**Investigate Dutta's documents**
Purchase orders from **Recombination Group** ([logo](https://i.imgur.com/1ouPtfu.png)) and forecast demand of Novium to make **Nanites**.
MoU with [makita](../factions/makita.md)'s subsidiary for ice mining rights - although the two companies are competitors

**[RolandLomax](../npcs/RolandLomax.md) makes his move against [YashDutta](../npcs/YashDutta.md)**
Lomax wants the PCs to be on his side, to show force.
Let PCs interfere with the auditor, [RolandLomax](../npcs/RolandLomax.md) and [YashDutta](../npcs/YashDutta.md) if they want.

**Infirmary chat**
[SuyinIndrani](../npcs/SuyinIndrani.md) will ask PCs to spy on Lomax, and try to accompany him to the empty graves.

**Meeting update with [JohnMcLeod](../npcs/JohnMcLeod.md)**
What are the updates on the new contract?

**Someone that goes crazy sees the construction of Nibiru**

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
12. **Fusion reactor of Frostbreaker breaks** (Ship Malfunction)

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

