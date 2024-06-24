---
name: MadSpark perishes
game_date: 2225-11-23
pcs: "Olaf, Oni, MadSpark, Oliver"
levels: 8
heat: 4

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: "[Perdurabo](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/PWrHAjd6P64k61Ga1PfQ)"
  world: Deep Space
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

> [!example] Situations 

- [TheBoxer](../npcs/TheBoxer.md) is **pissed off but also afraid**: *Were them send by the [ico](../factions/ico.md)? Are they here to kill us?! Who sent you? Who fucking sent you??!!*
- [TheBoxer](../npcs/TheBoxer.md) mentions he will kill [MadSpark](../pcs/MadSpark.md), but [Olaf](../pcs/Olaf.md) asks him not to take any actions

![](https://i.imgur.com/G8qPDTT.png)

- The Doomborgs count their numbers, after the explosion of the Brutomaker. It seems [Sabaka](../pcs/Sabaka.md) is missing in action.
- Most of [TheBoxer](../npcs/TheBoxer.md) 's crew has also perished.
- There is a high stakes discussion between [TheBoxer](../npcs/TheBoxer.md) and [Olaf](../pcs/Olaf.md), where the boxer agrees to stay in the Leadbelly while the Doomborgs discuss.
- [Oni](../pcs/Oni.md) communicates with [Oliver Bennet](../pcs/Oliver.md) and [MadSpark](../pcs/MadSpark.md) who are on the [Frostbreaker](../objects/Frostbreaker.md), and agree on a debris-free area to dock both ships.
- [MadSpark](../pcs/MadSpark.md) does a fearsome flyby with the [Frostbreaker](../objects/Frostbreaker.md), scaring Oliver Bennet.
- [Olaf](../pcs/Olaf.md) and [Oni](../pcs/Oni.md) try to convince [MadSpark](../pcs/MadSpark.md) to retire from the crew, after the unfortunate actions of [MadSpark](../pcs/MadSpark.md). They propose tying up the engineer to guarantee everyone's safety.
- Madspark does not agree, and runs and locks himself in the workshop.
- Olaf, afraid of what could happen in the workshop makes a tough decision and commands all crew to go to the bridge, while he flushes the air from the ship.
- [MadSpark](../pcs/MadSpark.md) perishes trying to escape though a ventilation shaft.
- [Oliver](../pcs/Oliver.md) questions the leadership of Olaf: "Sir, I don't think you are leading us for the successful completion of our contract. Now we don't have all required skills in the crew. We need those skills - I could't care less for the human lives lost."

![|400](https://i.imgur.com/ghsOnYr.png)

- Considering his remaining options, [TheBoxer](../npcs/TheBoxer.md) sees an opportunity to forge his own death and finally retire in a small farm in Defiance.
- This setup is agreed with everyone, but it requires erasing the proofs of Boxer being alive - which includes killing the hostages from the Leadbelly.
- The Boxer and Oliver coldly push [RanseHardlee](../npcs/RanseHardlee.md), [RandallBellows](../npcs/RandallBellows.md), [JaffaOkoye](../npcs/JaffaOkoye.md) from the airlock.

![](https://i.imgur.com/9GTszYL.png)

![](https://i.imgur.com/pWh5JDL.png)

![](https://i.imgur.com/Tsa2Km7.png)

- The Boxer parks the Leadbelly in a hidden coordinate in the asteroid field.
- The crew takes the Frostbreaker to [BrightsideStation](../locations/BrightsideStation.md). An afraid [YashDutta](../npcs/YashDutta.md) greets them, and allow them to refuel, but not to enter the station.
- [Oni](../pcs/Oni.md) skilfully uninstall the lead panels from the[Frostbreaker](../objects/Frostbreaker.md), so they can land the ship in [Defiance](../locations/Defiance.md) to drop the Boxer.

> [!bug] Random encounters


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

